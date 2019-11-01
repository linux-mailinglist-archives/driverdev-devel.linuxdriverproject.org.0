Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E2AEC8AD
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 19:55:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE10D87E3C;
	Fri,  1 Nov 2019 18:55:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VsqHrn58aYFW; Fri,  1 Nov 2019 18:55:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F60887E25;
	Fri,  1 Nov 2019 18:55:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A9EAB1BF33C
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 18:55:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A5CD88855D
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 18:55:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VvBsU9LPdVZ7 for <devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 18:55:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4AB6C87E79
 for <devel@driverdev.osuosl.org>; Fri,  1 Nov 2019 18:55:26 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D61C8AB8F;
 Fri,  1 Nov 2019 18:55:23 +0000 (UTC)
From: Davidlohr Bueso <dave@stgolabs.net>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH] drivers/staging/exfat: Replace more binary semaphores with
 mutexes
Date: Fri,  1 Nov 2019 11:53:32 -0700
Message-Id: <20191101185332.31786-1-dave@stgolabs.net>
X-Mailer: git-send-email 2.16.4
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, dave@stgolabs.net, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

At a slight footprint cost (24 vs 32 bytes), mutexes are more optimal
than semaphores; it's also a nicer interface for mutual exclusion,
which is why they are encouraged over binary semaphores, when possible.
There is also lockdep support.

For both f_sem and b_sem, their semantics imply traditional lock
ownership; that is, the lock owner is the same for both lock/unlock
operations and not under irq contexts (ie for trylock/unlock scenarios).
Therefore it is safe to convert.

Signed-off-by: Davidlohr Bueso <dave@stgolabs.net>
---
This is part of further reducing semaphore users in the kernel.

This is a followup to the patch that converted the v and z sems, which
arguably could have been a single patch, but I just ran into these, and
it's probably easier to review, albeit trivial critical regions/lock usage.

 drivers/staging/exfat/exfat_cache.c | 48 ++++++++++++++++++-------------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/exfat/exfat_cache.c b/drivers/staging/exfat/exfat_cache.c
index 1565ce65d39f..546a08fb26cc 100644
--- a/drivers/staging/exfat/exfat_cache.c
+++ b/drivers/staging/exfat/exfat_cache.c
@@ -12,8 +12,8 @@
 #define DIRTYBIT	0x02
 
 /* Local variables */
-static DEFINE_SEMAPHORE(f_sem);
-static DEFINE_SEMAPHORE(b_sem);
+static DEFINE_MUTEX(f_mutex);
+static DEFINE_MUTEX(b_mutex);
 
 static struct buf_cache_t *FAT_cache_find(struct super_block *sb, sector_t sec)
 {
@@ -315,9 +315,9 @@ int FAT_read(struct super_block *sb, u32 loc, u32 *content)
 {
 	s32 ret;
 
-	down(&f_sem);
+	mutex_lock(&f_mutex);
 	ret = __FAT_read(sb, loc, content);
-	up(&f_sem);
+	mutex_unlock(&f_mutex);
 
 	return ret;
 }
@@ -434,9 +434,9 @@ int FAT_write(struct super_block *sb, u32 loc, u32 content)
 {
 	s32 ret;
 
-	down(&f_sem);
+	mutex_lock(&f_mutex);
 	ret = __FAT_write(sb, loc, content);
-	up(&f_sem);
+	mutex_unlock(&f_mutex);
 
 	return ret;
 }
@@ -490,7 +490,7 @@ void FAT_release_all(struct super_block *sb)
 	struct buf_cache_t *bp;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
-	down(&f_sem);
+	mutex_lock(&f_mutex);
 
 	bp = p_fs->FAT_cache_lru_list.next;
 	while (bp != &p_fs->FAT_cache_lru_list) {
@@ -507,7 +507,7 @@ void FAT_release_all(struct super_block *sb)
 		bp = bp->next;
 	}
 
-	up(&f_sem);
+	mutex_unlock(&f_mutex);
 }
 
 void FAT_sync(struct super_block *sb)
@@ -515,7 +515,7 @@ void FAT_sync(struct super_block *sb)
 	struct buf_cache_t *bp;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
-	down(&f_sem);
+	mutex_lock(&f_mutex);
 
 	bp = p_fs->FAT_cache_lru_list.next;
 	while (bp != &p_fs->FAT_cache_lru_list) {
@@ -526,7 +526,7 @@ void FAT_sync(struct super_block *sb)
 		bp = bp->next;
 	}
 
-	up(&f_sem);
+	mutex_unlock(&f_mutex);
 }
 
 static struct buf_cache_t *buf_cache_find(struct super_block *sb, sector_t sec)
@@ -600,9 +600,9 @@ u8 *buf_getblk(struct super_block *sb, sector_t sec)
 {
 	u8 *buf;
 
-	down(&b_sem);
+	mutex_lock(&b_mutex);
 	buf = __buf_getblk(sb, sec);
-	up(&b_sem);
+	mutex_unlock(&b_mutex);
 
 	return buf;
 }
@@ -611,7 +611,7 @@ void buf_modify(struct super_block *sb, sector_t sec)
 {
 	struct buf_cache_t *bp;
 
-	down(&b_sem);
+	mutex_lock(&b_mutex);
 
 	bp = buf_cache_find(sb, sec);
 	if (likely(bp))
@@ -620,14 +620,14 @@ void buf_modify(struct super_block *sb, sector_t sec)
 	WARN(!bp, "[EXFAT] failed to find buffer_cache(sector:%llu).\n",
 	     (unsigned long long)sec);
 
-	up(&b_sem);
+	mutex_unlock(&b_mutex);
 }
 
 void buf_lock(struct super_block *sb, sector_t sec)
 {
 	struct buf_cache_t *bp;
 
-	down(&b_sem);
+	mutex_lock(&b_mutex);
 
 	bp = buf_cache_find(sb, sec);
 	if (likely(bp))
@@ -636,14 +636,14 @@ void buf_lock(struct super_block *sb, sector_t sec)
 	WARN(!bp, "[EXFAT] failed to find buffer_cache(sector:%llu).\n",
 	     (unsigned long long)sec);
 
-	up(&b_sem);
+	mutex_unlock(&b_mutex);
 }
 
 void buf_unlock(struct super_block *sb, sector_t sec)
 {
 	struct buf_cache_t *bp;
 
-	down(&b_sem);
+	mutex_lock(&b_mutex);
 
 	bp = buf_cache_find(sb, sec);
 	if (likely(bp))
@@ -652,7 +652,7 @@ void buf_unlock(struct super_block *sb, sector_t sec)
 	WARN(!bp, "[EXFAT] failed to find buffer_cache(sector:%llu).\n",
 	     (unsigned long long)sec);
 
-	up(&b_sem);
+	mutex_unlock(&b_mutex);
 }
 
 void buf_release(struct super_block *sb, sector_t sec)
@@ -660,7 +660,7 @@ void buf_release(struct super_block *sb, sector_t sec)
 	struct buf_cache_t *bp;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
-	down(&b_sem);
+	mutex_lock(&b_mutex);
 
 	bp = buf_cache_find(sb, sec);
 	if (likely(bp)) {
@@ -676,7 +676,7 @@ void buf_release(struct super_block *sb, sector_t sec)
 		move_to_lru(bp, &p_fs->buf_cache_lru_list);
 	}
 
-	up(&b_sem);
+	mutex_unlock(&b_mutex);
 }
 
 void buf_release_all(struct super_block *sb)
@@ -684,7 +684,7 @@ void buf_release_all(struct super_block *sb)
 	struct buf_cache_t *bp;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
-	down(&b_sem);
+	mutex_lock(&b_mutex);
 
 	bp = p_fs->buf_cache_lru_list.next;
 	while (bp != &p_fs->buf_cache_lru_list) {
@@ -701,7 +701,7 @@ void buf_release_all(struct super_block *sb)
 		bp = bp->next;
 	}
 
-	up(&b_sem);
+	mutex_unlock(&b_mutex);
 }
 
 void buf_sync(struct super_block *sb)
@@ -709,7 +709,7 @@ void buf_sync(struct super_block *sb)
 	struct buf_cache_t *bp;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
-	down(&b_sem);
+	mutex_lock(&b_mutex);
 
 	bp = p_fs->buf_cache_lru_list.next;
 	while (bp != &p_fs->buf_cache_lru_list) {
@@ -720,5 +720,5 @@ void buf_sync(struct super_block *sb)
 		bp = bp->next;
 	}
 
-	up(&b_sem);
+	mutex_unlock(&b_mutex);
 }
-- 
2.16.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

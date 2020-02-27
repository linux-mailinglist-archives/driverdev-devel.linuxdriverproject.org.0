Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D70B17152E
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Feb 2020 11:40:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2112122C44;
	Thu, 27 Feb 2020 10:40:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y9ZdWya7gWPd; Thu, 27 Feb 2020 10:40:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3A44E203EA;
	Thu, 27 Feb 2020 10:40:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA39E1BF35B
 for <devel@linuxdriverproject.org>; Thu, 27 Feb 2020 10:40:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D7316864F2
 for <devel@linuxdriverproject.org>; Thu, 27 Feb 2020 10:40:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VIsHIHXqdUNt for <devel@linuxdriverproject.org>;
 Thu, 27 Feb 2020 10:40:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx04.melco.co.jp (mx04.melco.co.jp [192.218.140.144])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E5BEB864DA
 for <devel@driverdev.osuosl.org>; Thu, 27 Feb 2020 10:40:49 +0000 (UTC)
Received: from mr04.melco.co.jp (mr04 [133.141.98.166])
 by mx04.melco.co.jp (Postfix) with ESMTP id E9B943A4438;
 Thu, 27 Feb 2020 19:40:47 +0900 (JST)
Received: from mr04.melco.co.jp (unknown [127.0.0.1])
 by mr04.imss (Postfix) with ESMTP id 48Sq2R5xyrzRk3C;
 Thu, 27 Feb 2020 19:40:47 +0900 (JST)
Received: from mf03_second.melco.co.jp (unknown [192.168.20.183])
 by mr04.melco.co.jp (Postfix) with ESMTP id 48Sq2R5f58zRk2c;
 Thu, 27 Feb 2020 19:40:47 +0900 (JST)
Received: from mf03.melco.co.jp (unknown [133.141.98.183])
 by mf03_second.melco.co.jp (Postfix) with ESMTP id 48Sq2R5nCdzRk5y;
 Thu, 27 Feb 2020 19:40:47 +0900 (JST)
Received: from tux532.tad.melco.co.jp (unknown [133.141.243.226])
 by mf03.melco.co.jp (Postfix) with ESMTP id 48Sq2R5JSlzRkBN;
 Thu, 27 Feb 2020 19:40:47 +0900 (JST)
Received: from tux532.tad.melco.co.jp
 by tux532.tad.melco.co.jp (unknown) with ESMTP id 01RAel1o017859;
 Thu, 27 Feb 2020 19:40:47 +0900
Received: from tux390.tad.melco.co.jp (tux390.tad.melco.co.jp [127.0.0.1])
 by postfix.imss70 (Postfix) with ESMTP id 7358B17E075;
 Thu, 27 Feb 2020 19:40:47 +0900 (JST)
Received: from tux554.tad.melco.co.jp (mailgw1.tad.melco.co.jp [10.168.7.223])
 by tux390.tad.melco.co.jp (Postfix) with ESMTP id 670B817E073;
 Thu, 27 Feb 2020 19:40:47 +0900 (JST)
Received: from tux554.tad.melco.co.jp
 by tux554.tad.melco.co.jp (unknown) with ESMTP id 01RAelAs011251;
 Thu, 27 Feb 2020 19:40:47 +0900
From: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
To: Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp
Subject: [PATCH] staging: exfat: rename buf_cache_t's 'flag' to 'locked'
Date: Thu, 27 Feb 2020 19:40:43 +0900
Message-Id: <20200227104043.11503-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 motai.hirotaka@aj.mitsubishielectric.co.jp, linux-kernel@vger.kernel.org,
 Mori.Takahiro@ab.MitsubishiElectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

buf_cache_t.flag is used only for lock.
Change the variable name from 'flag' to 'locked' and remove unused definitions.

Reviewed-by: Takahiro Mori <Mori.Takahiro@ab.MitsubishiElectric.co.jp>
Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_cache.c | 27 ++++++++++++---------------
 2 files changed, 13 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index cd3479fc78ba..f588538c67a8 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -457,7 +457,7 @@ struct buf_cache_t {
 	struct buf_cache_t *hash_prev;
 	s32                drv;
 	sector_t          sec;
-	u32               flag;
+	bool              locked;
 	struct buffer_head   *buf_bh;
 };
 
diff --git a/drivers/staging/exfat/exfat_cache.c b/drivers/staging/exfat/exfat_cache.c
index 87d019972050..b15203d4e0ae 100644
--- a/drivers/staging/exfat/exfat_cache.c
+++ b/drivers/staging/exfat/exfat_cache.c
@@ -8,9 +8,6 @@
 #include <linux/mutex.h>
 #include "exfat.h"
 
-#define LOCKBIT		0x01
-#define DIRTYBIT	0x02
-
 /* Local variables */
 static DEFINE_MUTEX(f_mutex);
 static DEFINE_MUTEX(b_mutex);
@@ -141,7 +138,7 @@ void exfat_buf_init(struct super_block *sb)
 	for (i = 0; i < FAT_CACHE_SIZE; i++) {
 		p_fs->FAT_cache_array[i].drv = -1;
 		p_fs->FAT_cache_array[i].sec = ~0;
-		p_fs->FAT_cache_array[i].flag = 0;
+		p_fs->FAT_cache_array[i].locked = false;
 		p_fs->FAT_cache_array[i].buf_bh = NULL;
 		p_fs->FAT_cache_array[i].prev = NULL;
 		p_fs->FAT_cache_array[i].next = NULL;
@@ -155,7 +152,7 @@ void exfat_buf_init(struct super_block *sb)
 	for (i = 0; i < BUF_CACHE_SIZE; i++) {
 		p_fs->buf_cache_array[i].drv = -1;
 		p_fs->buf_cache_array[i].sec = ~0;
-		p_fs->buf_cache_array[i].flag = 0;
+		p_fs->buf_cache_array[i].locked = false;
 		p_fs->buf_cache_array[i].buf_bh = NULL;
 		p_fs->buf_cache_array[i].prev = NULL;
 		p_fs->buf_cache_array[i].next = NULL;
@@ -289,7 +286,7 @@ u8 *exfat_fat_getblk(struct super_block *sb, sector_t sec)
 
 	bp->drv = p_fs->drv;
 	bp->sec = sec;
-	bp->flag = 0;
+	bp->locked = false;
 
 	FAT_cache_insert_hash(sb, bp);
 
@@ -297,7 +294,7 @@ u8 *exfat_fat_getblk(struct super_block *sb, sector_t sec)
 		FAT_cache_remove_hash(bp);
 		bp->drv = -1;
 		bp->sec = ~0;
-		bp->flag = 0;
+		bp->locked = false;
 		bp->buf_bh = NULL;
 
 		move_to_lru(bp, &p_fs->FAT_cache_lru_list);
@@ -328,7 +325,7 @@ void exfat_fat_release_all(struct super_block *sb)
 		if (bp->drv == p_fs->drv) {
 			bp->drv = -1;
 			bp->sec = ~0;
-			bp->flag = 0;
+			bp->locked = false;
 
 			if (bp->buf_bh) {
 				__brelse(bp->buf_bh);
@@ -366,7 +363,7 @@ static struct buf_cache_t *buf_cache_get(struct super_block *sb, sector_t sec)
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
 	bp = p_fs->buf_cache_lru_list.prev;
-	while (bp->flag & LOCKBIT)
+	while (bp->locked)
 		bp = bp->prev;
 
 	move_to_mru(bp, &p_fs->buf_cache_lru_list);
@@ -390,7 +387,7 @@ static u8 *__exfat_buf_getblk(struct super_block *sb, sector_t sec)
 
 	bp->drv = p_fs->drv;
 	bp->sec = sec;
-	bp->flag = 0;
+	bp->locked = false;
 
 	buf_cache_insert_hash(sb, bp);
 
@@ -398,7 +395,7 @@ static u8 *__exfat_buf_getblk(struct super_block *sb, sector_t sec)
 		buf_cache_remove_hash(bp);
 		bp->drv = -1;
 		bp->sec = ~0;
-		bp->flag = 0;
+		bp->locked = false;
 		bp->buf_bh = NULL;
 
 		move_to_lru(bp, &p_fs->buf_cache_lru_list);
@@ -443,7 +440,7 @@ void exfat_buf_lock(struct super_block *sb, sector_t sec)
 
 	bp = buf_cache_find(sb, sec);
 	if (likely(bp))
-		bp->flag |= LOCKBIT;
+		bp->locked = true;
 
 	WARN(!bp, "[EXFAT] failed to find buffer_cache(sector:%llu).\n",
 	     (unsigned long long)sec);
@@ -459,7 +456,7 @@ void exfat_buf_unlock(struct super_block *sb, sector_t sec)
 
 	bp = buf_cache_find(sb, sec);
 	if (likely(bp))
-		bp->flag &= ~(LOCKBIT);
+		bp->locked = false;
 
 	WARN(!bp, "[EXFAT] failed to find buffer_cache(sector:%llu).\n",
 	     (unsigned long long)sec);
@@ -478,7 +475,7 @@ void exfat_buf_release(struct super_block *sb, sector_t sec)
 	if (likely(bp)) {
 		bp->drv = -1;
 		bp->sec = ~0;
-		bp->flag = 0;
+		bp->locked = false;
 
 		if (bp->buf_bh) {
 			__brelse(bp->buf_bh);
@@ -503,7 +500,7 @@ void exfat_buf_release_all(struct super_block *sb)
 		if (bp->drv == p_fs->drv) {
 			bp->drv = -1;
 			bp->sec = ~0;
-			bp->flag = 0;
+			bp->locked = false;
 
 			if (bp->buf_bh) {
 				__brelse(bp->buf_bh);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

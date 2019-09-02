Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B27DBA5C7E
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 21:03:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6FFF86777;
	Mon,  2 Sep 2019 19:03:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RaN-XmRhsQ1W; Mon,  2 Sep 2019 19:03:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87E05862C7;
	Mon,  2 Sep 2019 19:03:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED92E1BF3E9
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 19:03:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E456421552
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 19:03:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EONP-bc6QheX for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 19:03:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by silver.osuosl.org (Postfix) with ESMTPS id 18BA02052F
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 19:03:52 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 65E2A3A32A; Mon,  2 Sep 2019 21:03:45 +0200 (CEST)
From: Valentin Vidic <vvidic@valentin-vidic.from.hr>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: [PATCH] staging: exfat: cleanup blank line warnings
Date: Mon,  2 Sep 2019 21:03:29 +0200
Message-Id: <20190902190329.18685-1-vvidic@valentin-vidic.from.hr>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Valentin Vidic <vvidic@valentin-vidic.from.hr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes checkpatch.pl warnings:

  CHECK: Please don't use multiple blank lines
  CHECK: Blank lines aren't necessary after an open brace '{'
  CHECK: Please use a blank line after function/struct/union/enum
         declarations

Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
---
 drivers/staging/exfat/exfat.h       | 1 +
 drivers/staging/exfat/exfat_core.c  | 4 ----
 drivers/staging/exfat/exfat_super.c | 1 -
 3 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index bae180e10609..e41754bbdeab 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -170,6 +170,7 @@ static inline u16 get_col_index(u16 i)
 {
 	return i >> LOW_INDEX_BIT;
 }
+
 static inline u16 get_row_index(u16 i)
 {
 	return i & ~HIGH_INDEX_MASK;
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 9f76ca175c80..46b9f4455da1 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -11,7 +11,6 @@
 #include <linux/slab.h>
 #include "exfat.h"
 
-
 static void __set_sb_dirty(struct super_block *sb)
 {
 	struct exfat_sb_info *sbi = EXFAT_SB(sb);
@@ -1711,7 +1710,6 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 	if (ret != FFS_SUCCESS)
 		return NULL;
 
-
 	/* byte offset in cluster */
 	byte_offset &= p_fs->cluster_size - 1;
 
@@ -1726,7 +1724,6 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 	if (buf == NULL)
 		goto err_out;
 
-
 	ep = (struct dentry_t *)(buf + off);
 	entry_type = p_fs->fs_func->get_entry_type(ep);
 
@@ -1853,7 +1850,6 @@ void release_entry_set(struct entry_set_cache_t *es)
 	kfree(es);
 }
 
-
 static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
 						struct entry_set_cache_t *es,
 						sector_t sec, s32 off, u32 count)
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index d9787635a373..15970b34e38f 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -3017,7 +3017,6 @@ static void exfat_truncate(struct inode *inode, loff_t old_size)
 
 static int exfat_setattr(struct dentry *dentry, struct iattr *attr)
 {
-
 	struct exfat_sb_info *sbi = EXFAT_SB(dentry->d_sb);
 	struct inode *inode = dentry->d_inode;
 	unsigned int ia_valid;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

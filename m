Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1BC1710DA
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Feb 2020 07:16:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A668487E6F;
	Thu, 27 Feb 2020 06:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ALsprAb3XX1; Thu, 27 Feb 2020 06:16:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B100587E3D;
	Thu, 27 Feb 2020 06:16:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 88A2D1BF865
 for <devel@linuxdriverproject.org>; Thu, 27 Feb 2020 06:16:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6C78787E49
 for <devel@linuxdriverproject.org>; Thu, 27 Feb 2020 06:16:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id POAqRUjBebGI for <devel@linuxdriverproject.org>;
 Thu, 27 Feb 2020 06:16:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx04.melco.co.jp (mx04.melco.co.jp [192.218.140.144])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1363287E3D
 for <devel@driverdev.osuosl.org>; Thu, 27 Feb 2020 06:16:43 +0000 (UTC)
Received: from mr04.melco.co.jp (mr04 [133.141.98.166])
 by mx04.melco.co.jp (Postfix) with ESMTP id 057FA3A40BE;
 Thu, 27 Feb 2020 15:16:41 +0900 (JST)
Received: from mr04.melco.co.jp (unknown [127.0.0.1])
 by mr04.imss (Postfix) with ESMTP id 48Sj9h6sM1zRk6K;
 Thu, 27 Feb 2020 15:16:40 +0900 (JST)
Received: from mf03_second.melco.co.jp (unknown [192.168.20.183])
 by mr04.melco.co.jp (Postfix) with ESMTP id 48Sj9h6Y40zRk65;
 Thu, 27 Feb 2020 15:16:40 +0900 (JST)
Received: from mf03.melco.co.jp (unknown [133.141.98.183])
 by mf03_second.melco.co.jp (Postfix) with ESMTP id 48Sj9h61TgzRkGM;
 Thu, 27 Feb 2020 15:16:40 +0900 (JST)
Received: from tux532.tad.melco.co.jp (unknown [133.141.243.226])
 by mf03.melco.co.jp (Postfix) with ESMTP id 48Sj9h5XcfzRkBN;
 Thu, 27 Feb 2020 15:16:40 +0900 (JST)
Received: from tux532.tad.melco.co.jp
 by tux532.tad.melco.co.jp (unknown) with ESMTP id 01R6GetJ029538;
 Thu, 27 Feb 2020 15:16:40 +0900
Received: from tux390.tad.melco.co.jp (tux390.tad.melco.co.jp [127.0.0.1])
 by postfix.imss70 (Postfix) with ESMTP id 7FFAB17E075;
 Thu, 27 Feb 2020 15:16:40 +0900 (JST)
Received: from tux554.tad.melco.co.jp (tadpost1.tad.melco.co.jp [10.168.7.223])
 by tux390.tad.melco.co.jp (Postfix) with ESMTP id 6A44017E073;
 Thu, 27 Feb 2020 15:16:40 +0900 (JST)
Received: from tux554.tad.melco.co.jp
 by tux554.tad.melco.co.jp (unknown) with ESMTP id 01R6GeLj020248;
 Thu, 27 Feb 2020 15:16:40 +0900
From: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
To: Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp
Subject: [PATCH v3] staging: exfat: remove symlink feature
Date: Thu, 27 Feb 2020 15:15:59 +0900
Message-Id: <20200227061559.4481-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
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

Completely remove symlink codes and definitions.
In the previous patch, it was not completely removed.

Reviewed-by: Takahiro Mori <Mori.Takahiro@ab.MitsubishiElectric.co.jp>
Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
---
Changes in v3:
- fixed subject line
Changes in v2:
- previous patch didn't completely remove it

 drivers/staging/exfat/exfat.h       |  3 ---
 drivers/staging/exfat/exfat_core.c  |  3 ---
 drivers/staging/exfat/exfat_super.c | 27 ---------------------------
 3 files changed, 33 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 4a0a481fe010..cd3479fc78ba 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -63,7 +63,6 @@
 #define TYPE_VOLUME		0x0103
 #define TYPE_DIR		0x0104
 #define TYPE_FILE		0x011F
-#define TYPE_SYMLINK		0x015F
 #define TYPE_CRITICAL_SEC	0x0200
 #define TYPE_STREAM		0x0201
 #define TYPE_EXTEND		0x0202
@@ -198,13 +197,11 @@ static inline u16 get_row_index(u16 i)
 #define ATTR_VOLUME		0x0008
 #define ATTR_SUBDIR		0x0010
 #define ATTR_ARCHIVE		0x0020
-#define ATTR_SYMLINK		0x0040
 #define ATTR_EXTEND		0x000F
 #define ATTR_RWMASK		0x007E
 
 /* file creation modes */
 #define FM_REGULAR              0x00
-#define FM_SYMLINK              0x40
 
 #define NUM_UPCASE              2918
 
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index d30dc050411e..941094b08dd9 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -844,9 +844,6 @@ static void exfat_set_entry_type(struct dentry_t *p_entry, u32 type)
 	} else if (type == TYPE_FILE) {
 		ep->type = 0x85;
 		SET16_A(ep->attr, ATTR_ARCHIVE);
-	} else if (type == TYPE_SYMLINK) {
-		ep->type = 0x85;
-		SET16_A(ep->attr, ATTR_ARCHIVE | ATTR_SYMLINK);
 	}
 }
 
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index c7bc07e91c45..6f3b72eb999d 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -320,8 +320,6 @@ static inline mode_t exfat_make_mode(struct exfat_sb_info *sbi, u32 attr,
 
 	if (attr & ATTR_SUBDIR)
 		return (mode & ~sbi->options.fs_dmask) | S_IFDIR;
-	else if (attr & ATTR_SYMLINK)
-		return (mode & ~sbi->options.fs_dmask) | S_IFLNK;
 	else
 		return (mode & ~sbi->options.fs_fmask) | S_IFREG;
 }
@@ -2399,24 +2397,6 @@ static const struct inode_operations exfat_dir_inode_operations = {
 /*======================================================================*/
 /*  File Operations                                                     */
 /*======================================================================*/
-static const char *exfat_get_link(struct dentry *dentry, struct inode *inode,
-				  struct delayed_call *done)
-{
-	struct exfat_inode_info *ei = EXFAT_I(inode);
-
-	if (ei->target) {
-		char *cookie = ei->target;
-
-		if (cookie)
-			return (char *)(ei->target);
-	}
-	return NULL;
-}
-
-static const struct inode_operations exfat_symlink_inode_operations = {
-		.get_link = exfat_get_link,
-};
-
 static int exfat_file_release(struct inode *inode, struct file *filp)
 {
 	struct super_block *sb = inode->i_sb;
@@ -2688,13 +2668,6 @@ static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
 		i_size_write(inode, info.Size);
 		EXFAT_I(inode)->mmu_private = i_size_read(inode);
 		set_nlink(inode, info.num_subdirs);
-	} else if (info.attr & ATTR_SYMLINK) { /* symbolic link */
-		inode->i_generation |= 1;
-		inode->i_mode = exfat_make_mode(sbi, info.attr, 0777);
-		inode->i_op = &exfat_symlink_inode_operations;
-
-		i_size_write(inode, info.Size);
-		EXFAT_I(inode)->mmu_private = i_size_read(inode);
 	} else { /* regular file */
 		inode->i_generation |= 1;
 		inode->i_mode = exfat_make_mode(sbi, info.attr, 0777);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

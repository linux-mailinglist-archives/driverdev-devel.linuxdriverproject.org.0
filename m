Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBB7173319
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Feb 2020 09:41:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 83F018815C;
	Fri, 28 Feb 2020 08:41:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y4cML90p15fk; Fri, 28 Feb 2020 08:41:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACAD6880F4;
	Fri, 28 Feb 2020 08:41:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 471681BF362
 for <devel@linuxdriverproject.org>; Fri, 28 Feb 2020 08:41:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 43ED1880F4
 for <devel@linuxdriverproject.org>; Fri, 28 Feb 2020 08:41:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q1itBN75whBz for <devel@linuxdriverproject.org>;
 Fri, 28 Feb 2020 08:41:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx05.melco.co.jp (mx05.melco.co.jp [192.218.140.145])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1164A8808D
 for <devel@driverdev.osuosl.org>; Fri, 28 Feb 2020 08:41:26 +0000 (UTC)
Received: from mr05.melco.co.jp (mr05 [133.141.98.165])
 by mx05.melco.co.jp (Postfix) with ESMTP id E2A083A41FF;
 Fri, 28 Feb 2020 17:41:23 +0900 (JST)
Received: from mr05.melco.co.jp (unknown [127.0.0.1])
 by mr05.imss (Postfix) with ESMTP id 48TNLC5q0WzRk4f;
 Fri, 28 Feb 2020 17:41:23 +0900 (JST)
Received: from mf03_second.melco.co.jp (unknown [192.168.20.183])
 by mr05.melco.co.jp (Postfix) with ESMTP id 48TNLC5Vh2zRjtG;
 Fri, 28 Feb 2020 17:41:23 +0900 (JST)
Received: from mf03.melco.co.jp (unknown [133.141.98.183])
 by mf03_second.melco.co.jp (Postfix) with ESMTP id 48TNLC5by7zRkCy;
 Fri, 28 Feb 2020 17:41:23 +0900 (JST)
Received: from tux532.tad.melco.co.jp (unknown [133.141.243.226])
 by mf03.melco.co.jp (Postfix) with ESMTP id 48TNLC582czRkBN;
 Fri, 28 Feb 2020 17:41:23 +0900 (JST)
Received: from tux532.tad.melco.co.jp
 by tux532.tad.melco.co.jp (unknown) with ESMTP id 01S8fNiQ028362;
 Fri, 28 Feb 2020 17:41:23 +0900
Received: from tux390.tad.melco.co.jp (tux390.tad.melco.co.jp [127.0.0.1])
 by postfix.imss70 (Postfix) with ESMTP id 6A60A17E075;
 Fri, 28 Feb 2020 17:41:23 +0900 (JST)
Received: from tux554.tad.melco.co.jp (tux100.tad.melco.co.jp [10.168.7.223])
 by tux390.tad.melco.co.jp (Postfix) with ESMTP id 541E017E073;
 Fri, 28 Feb 2020 17:41:23 +0900 (JST)
Received: from tux554.tad.melco.co.jp
 by tux554.tad.melco.co.jp (unknown) with ESMTP id 01S8fNMF032359;
 Fri, 28 Feb 2020 17:41:23 +0900
From: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
To: Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp
Subject: [PATCH] staging: exfat: remove 'file creation modes'
Date: Fri, 28 Feb 2020 17:40:36 +0900
Message-Id: <20200228084037.15123-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
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

The mode parameter in ffsCreateFile() and create_file() is redundant.
Remove it and definition.

Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
---
 drivers/staging/exfat/exfat.h       | 5 +----
 drivers/staging/exfat/exfat_core.c  | 6 +++---
 drivers/staging/exfat/exfat_super.c | 7 +++----
 3 files changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index f588538c67a8..c863d7566b57 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -200,9 +200,6 @@ static inline u16 get_row_index(u16 i)
 #define ATTR_EXTEND		0x000F
 #define ATTR_RWMASK		0x007E
 
-/* file creation modes */
-#define FM_REGULAR              0x00
-
 #define NUM_UPCASE              2918
 
 #ifdef __LITTLE_ENDIAN
@@ -698,7 +695,7 @@ s32 exfat_mount(struct super_block *sb, struct pbr_sector_t *p_pbr);
 s32 create_dir(struct inode *inode, struct chain_t *p_dir,
 	       struct uni_name_t *p_uniname, struct file_id_t *fid);
 s32 create_file(struct inode *inode, struct chain_t *p_dir,
-		struct uni_name_t *p_uniname, u8 mode, struct file_id_t *fid);
+		struct uni_name_t *p_uniname, struct file_id_t *fid);
 void remove_file(struct inode *inode, struct chain_t *p_dir, s32 entry);
 s32 exfat_rename_file(struct inode *inode, struct chain_t *p_dir, s32 old_entry,
 		      struct uni_name_t *p_uniname, struct file_id_t *fid);
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 941094b08dd9..ceaea1ba1a83 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -2172,7 +2172,7 @@ s32 create_dir(struct inode *inode, struct chain_t *p_dir,
 }
 
 s32 create_file(struct inode *inode, struct chain_t *p_dir,
-		struct uni_name_t *p_uniname, u8 mode, struct file_id_t *fid)
+		struct uni_name_t *p_uniname, struct file_id_t *fid)
 {
 	s32 ret, dentry, num_entries;
 	struct super_block *sb = inode->i_sb;
@@ -2190,7 +2190,7 @@ s32 create_file(struct inode *inode, struct chain_t *p_dir,
 	/* fill the directory entry information of the created file.
 	 * the first cluster is not determined yet. (0)
 	 */
-	ret = exfat_init_dir_entry(sb, p_dir, dentry, TYPE_FILE | mode,
+	ret = exfat_init_dir_entry(sb, p_dir, dentry, TYPE_FILE,
 				   CLUSTER_32(0), 0);
 	if (ret != 0)
 		return ret;
@@ -2204,7 +2204,7 @@ s32 create_file(struct inode *inode, struct chain_t *p_dir,
 	fid->dir.flags = p_dir->flags;
 	fid->entry = dentry;
 
-	fid->attr = ATTR_ARCHIVE | mode;
+	fid->attr = ATTR_ARCHIVE;
 	fid->flags = 0x03;
 	fid->size = 0;
 	fid->start_clu = CLUSTER_32(~0);
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 6f3b72eb999d..708398265828 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -617,8 +617,7 @@ static int ffsLookupFile(struct inode *inode, char *path, struct file_id_t *fid)
 	return ret;
 }
 
-static int ffsCreateFile(struct inode *inode, char *path, u8 mode,
-			 struct file_id_t *fid)
+static int ffsCreateFile(struct inode *inode, char *path, struct file_id_t *fid)
 {
 	struct chain_t dir;
 	struct uni_name_t uni_name;
@@ -641,7 +640,7 @@ static int ffsCreateFile(struct inode *inode, char *path, u8 mode,
 	fs_set_vol_flags(sb, VOL_DIRTY);
 
 	/* create a new file */
-	ret = create_file(inode, &dir, &uni_name, mode, fid);
+	ret = create_file(inode, &dir, &uni_name, fid);
 
 #ifndef CONFIG_STAGING_EXFAT_DELAYED_SYNC
 	fs_sync(sb, true);
@@ -1834,7 +1833,7 @@ static int exfat_create(struct inode *dir, struct dentry *dentry, umode_t mode,
 
 	pr_debug("%s entered\n", __func__);
 
-	err = ffsCreateFile(dir, (u8 *)dentry->d_name.name, FM_REGULAR, &fid);
+	err = ffsCreateFile(dir, (u8 *)dentry->d_name.name, &fid);
 	if (err)
 		goto out;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

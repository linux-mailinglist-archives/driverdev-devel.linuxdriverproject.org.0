Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 381E814C953
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 12:12:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 730492152F;
	Wed, 29 Jan 2020 11:12:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wpQU-DIhFhQj; Wed, 29 Jan 2020 11:12:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 37C23203E3;
	Wed, 29 Jan 2020 11:12:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 743271BF589
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 11:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 70E1186DD6
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 11:12:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OtMcmIfbxibf for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 11:12:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx06.melco.co.jp (mx06.melco.co.jp [192.218.140.146])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F7FC81F20
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 11:12:37 +0000 (UTC)
Received: from mr06.melco.co.jp (mr06 [133.141.98.164])
 by mx06.melco.co.jp (Postfix) with ESMTP id 16C903A2B21;
 Wed, 29 Jan 2020 20:12:35 +0900 (JST)
Received: from mr06.melco.co.jp (unknown [127.0.0.1])
 by mr06.imss (Postfix) with ESMTP id 48716W0F82zRjyk;
 Wed, 29 Jan 2020 20:12:35 +0900 (JST)
Received: from mf03_second.melco.co.jp (unknown [192.168.20.183])
 by mr06.melco.co.jp (Postfix) with ESMTP id 48716V72Y4zRjlG;
 Wed, 29 Jan 2020 20:12:34 +0900 (JST)
Received: from mf03.melco.co.jp (unknown [133.141.98.183])
 by mf03_second.melco.co.jp (Postfix) with ESMTP id 48716V70K5zRk32;
 Wed, 29 Jan 2020 20:12:34 +0900 (JST)
Received: from tux532.tad.melco.co.jp (unknown [133.141.243.226])
 by mf03.melco.co.jp (Postfix) with ESMTP id 48716V6Td0zRjgf;
 Wed, 29 Jan 2020 20:12:34 +0900 (JST)
Received: from tux532.tad.melco.co.jp
 by tux532.tad.melco.co.jp (unknown) with ESMTP id 00TBCYk6031544;
 Wed, 29 Jan 2020 20:12:34 +0900
Received: from tux390.tad.melco.co.jp (tux390.tad.melco.co.jp [127.0.0.1])
 by postfix.imss70 (Postfix) with ESMTP id AB7B717E075;
 Wed, 29 Jan 2020 20:12:34 +0900 (JST)
Received: from tux554.tad.melco.co.jp (tadpost1.tad.melco.co.jp [10.168.7.223])
 by tux390.tad.melco.co.jp (Postfix) with ESMTP id 917B217E073;
 Wed, 29 Jan 2020 20:12:34 +0900 (JST)
Received: from tux554.tad.melco.co.jp
 by tux554.tad.melco.co.jp (unknown) with ESMTP id 00TBCYPb030054;
 Wed, 29 Jan 2020 20:12:34 +0900
From: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: exfat: remove 'vol_type' variable.
Date: Wed, 29 Jan 2020 20:12:32 +0900
Message-Id: <20200129111232.78539-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
X-Mailer: git-send-email 2.25.0
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
Cc: Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp,
 Mori.Takahiro@ab.MitsubishiElectric.co.jp,
 motai.hirotaka@aj.mitsubishielectric.co.jp
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove 'vol_type' variable.

The following issues are described in exfat's TODO.
> clean up the remaining vol_type checks, which are of two types:
> some are ?: operators with magic numbers, and the rest are places
> where we're doing stuff with '.' and '..'.

The vol_type variable is always set to 'EXFAT'.
The variable checks are unnessesary, so remove unused code.

Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
Reviewed-by: Mori Takahiro <Mori.Takahiro@ab.MitsubishiElectric.co.jp>
---
 drivers/staging/exfat/exfat.h       |  1 -
 drivers/staging/exfat/exfat_core.c  | 26 ++++++-------------------
 drivers/staging/exfat/exfat_super.c | 30 +++++++----------------------
 3 files changed, 13 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 4d87360fab35..28d245b10e82 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -518,7 +518,6 @@ struct buf_cache_t {
 
 struct fs_info_t {
 	u32      drv;                    /* drive ID */
-	u32      vol_type;               /* volume FAT type */
 	u32      vol_id;                 /* volume serial number */
 
 	u64      num_sectors;            /* num of sectors in volume */
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 07b460d01334..5a686289a1db 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -1560,11 +1560,7 @@ static s32 search_deleted_or_unused_entry(struct super_block *sb,
 			if (num_empty >= num_entries) {
 				p_fs->hint_uentry.dir = CLUSTER_32(~0);
 				p_fs->hint_uentry.entry = -1;
-
-				if (p_fs->vol_type == EXFAT)
-					return dentry - (num_entries - 1);
-				else
-					return dentry;
+				return dentry - (num_entries - 1);
 			}
 		}
 
@@ -1914,7 +1910,7 @@ s32 count_dos_name_entries(struct super_block *sb, struct chain_t *p_dir,
 
 bool is_dir_empty(struct super_block *sb, struct chain_t *p_dir)
 {
-	int i, count = 0;
+	int i;
 	s32 dentries_per_clu;
 	u32 type;
 	struct chain_t clu;
@@ -1943,15 +1939,7 @@ bool is_dir_empty(struct super_block *sb, struct chain_t *p_dir)
 
 			if (type == TYPE_UNUSED)
 				return true;
-			if ((type != TYPE_FILE) && (type != TYPE_DIR))
-				continue;
-
-			if (p_dir->dir == CLUSTER_32(0)) /* FAT16 root_dir */
-				return false;
-
-			if (p_fs->vol_type == EXFAT)
-				return false;
-			if ((p_dir->dir == p_fs->root_dir) || ((++count) > 2))
+			if ((type == TYPE_FILE) || (type == TYPE_DIR))
 				return false;
 		}
 
@@ -2128,7 +2116,6 @@ s32 exfat_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
 	p_fs->num_clusters = GET32(p_bpb->clu_count) + 2;
 	/* because the cluster index starts with 2 */
 
-	p_fs->vol_type = EXFAT;
 	p_fs->vol_id = GET32(p_bpb->vol_serial);
 
 	p_fs->root_dir = GET32(p_bpb->root_cluster);
@@ -2165,7 +2152,7 @@ s32 create_dir(struct inode *inode, struct chain_t *p_dir,
 
 	clu.dir = CLUSTER_32(~0);
 	clu.size = 0;
-	clu.flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
+	clu.flags = 0x03;
 
 	/* (1) allocate a cluster */
 	ret = exfat_alloc_cluster(sb, 1, &clu);
@@ -2198,7 +2185,7 @@ s32 create_dir(struct inode *inode, struct chain_t *p_dir,
 	fid->entry = dentry;
 
 	fid->attr = ATTR_SUBDIR;
-	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
+	fid->flags = 0x03;
 	fid->size = size;
 	fid->start_clu = clu.dir;
 
@@ -2215,7 +2202,6 @@ s32 create_file(struct inode *inode, struct chain_t *p_dir,
 	s32 ret, dentry, num_entries;
 	struct dos_name_t dos_name;
 	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
 	ret = get_num_entries_and_dos_name(sb, p_dir, p_uniname, &num_entries,
 					   &dos_name);
@@ -2247,7 +2233,7 @@ s32 create_file(struct inode *inode, struct chain_t *p_dir,
 	fid->entry = dentry;
 
 	fid->attr = ATTR_ARCHIVE | mode;
-	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
+	fid->flags = 0x03;
 	fid->size = 0;
 	fid->start_clu = CLUSTER_32(~0);
 
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index b81d2a87b82e..7759207986f9 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -494,7 +494,7 @@ static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
 	if (p_fs->used_clusters == UINT_MAX)
 		p_fs->used_clusters = exfat_count_used_clusters(sb);
 
-	info->FatType = p_fs->vol_type;
+	info->FatType = EXFAT;
 	info->ClusterSize = p_fs->cluster_size;
 	info->NumClusters = p_fs->num_clusters - 2; /* clu 0 & 1 */
 	info->UsedClusters = p_fs->used_clusters;
@@ -602,7 +602,7 @@ static int ffsLookupFile(struct inode *inode, char *path, struct file_id_t *fid)
 
 		fid->size = exfat_get_entry_size(ep2);
 		if ((fid->type == TYPE_FILE) && (fid->size == 0)) {
-			fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
+			fid->flags = 0x03;
 			fid->start_clu = CLUSTER_32(~0);
 		} else {
 			fid->flags = exfat_get_entry_flag(ep2);
@@ -1095,7 +1095,7 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
 	fid->size = new_size;
 	fid->attr |= ATTR_ARCHIVE;
 	if (new_size == 0) {
-		fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
+		fid->flags = 0x03;
 		fid->start_clu = CLUSTER_32(~0);
 	}
 
@@ -1203,14 +1203,6 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 
 	dentry = fid->entry;
 
-	/* check if the old file is "." or ".." */
-	if (p_fs->vol_type != EXFAT) {
-		if ((olddir.dir != p_fs->root_dir) && (dentry < 2)) {
-			ret = -EPERM;
-			goto out2;
-		}
-	}
-
 	ep = get_entry_in_dir(sb, &olddir, dentry, NULL);
 	if (!ep) {
 		ret = -ENOENT;
@@ -1342,7 +1334,7 @@ static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
 
 	fid->size = 0;
 	fid->start_clu = CLUSTER_32(~0);
-	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
+	fid->flags = 0x03;
 
 #ifndef CONFIG_STAGING_EXFAT_DELAYED_SYNC
 	fs_sync(sb, true);
@@ -2020,12 +2012,6 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
 
 	dentry = fid->entry;
 
-	/* check if the file is "." or ".." */
-	if (p_fs->vol_type != EXFAT) {
-		if ((dir.dir != p_fs->root_dir) && (dentry < 2))
-			return -EPERM;
-	}
-
 	/* acquire the lock for file system critical section */
 	mutex_lock(&p_fs->v_mutex);
 
@@ -2048,7 +2034,7 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
 
 	fid->size = 0;
 	fid->start_clu = CLUSTER_32(~0);
-	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
+	fid->flags = 0x03;
 
 #ifndef CONFIG_STAGING_EXFAT_DELAYED_SYNC
 	fs_sync(sb, true);
@@ -2073,8 +2059,6 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
 {
 	struct inode *inode = file_inode(filp);
 	struct super_block *sb = inode->i_sb;
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct fs_info_t *p_fs = &sbi->fs_info;
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 	struct dir_entry_t de;
 	unsigned long inum;
@@ -2085,7 +2069,7 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
 
 	cpos = ctx->pos;
 	/* Fake . and .. for the root directory. */
-	if ((p_fs->vol_type == EXFAT) || (inode->i_ino == EXFAT_ROOT_INO)) {
+	if (inode->i_ino == EXFAT_ROOT_INO) {
 		while (cpos < 2) {
 			if (inode->i_ino == EXFAT_ROOT_INO)
 				inum = EXFAT_ROOT_INO;
@@ -3345,7 +3329,7 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
 			return -EIO;
 
 	} else {
-		info.FatType = p_fs->vol_type;
+		info.FatType = EXFAT;
 		info.ClusterSize = p_fs->cluster_size;
 		info.NumClusters = p_fs->num_clusters - 2;
 		info.UsedClusters = p_fs->used_clusters;
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

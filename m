Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF817A72E5
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 20:56:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F18C18848F;
	Tue,  3 Sep 2019 18:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ehy5MxaqYprk; Tue,  3 Sep 2019 18:56:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7BF4488453;
	Tue,  3 Sep 2019 18:56:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B63F1BF5A6
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 18:56:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 01C8186364
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 18:56:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DWP9vs5bvk9b for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 18:56:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A60BD86113
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 18:56:00 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id DE9AF3A32A; Tue,  3 Sep 2019 20:55:48 +0200 (CEST)
From: Valentin Vidic <vvidic@valentin-vidic.from.hr>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: [PATCH] staging: exfat: drop local TRUE/FALSE defines
Date: Tue,  3 Sep 2019 20:55:37 +0200
Message-Id: <20190903185537.25099-1-vvidic@valentin-vidic.from.hr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903181946.GA14349@kroah.com>
References: <20190903181946.GA14349@kroah.com>
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
 linux-kernel@vger.kernel.org, Valentin Vidic <vvidic@valentin-vidic.from.hr>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace with bool where it makes sense. Also drop unused local
variable lossy in fat_find_dir_entry.

Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
---
 drivers/staging/exfat/exfat.h       |  3 --
 drivers/staging/exfat/exfat_core.c  | 81 +++++++++++++++--------------
 drivers/staging/exfat/exfat_nls.c   |  2 +-
 drivers/staging/exfat/exfat_super.c | 18 ++++---
 4 files changed, 53 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 816681d1103a..0aa14dea4e09 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -86,9 +86,6 @@
 #define CLUSTER_16(x)		((u16)(x))
 #define CLUSTER_32(x)		((u32)(x))
 
-#define FALSE			0
-#define TRUE			1
-
 #define START_SECTOR(x)							\
 	((((sector_t)((x) - 2)) << p_fs->sectors_per_clu_bits) +	\
 	 p_fs->data_start_sector)
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 1246afcffb8d..1630f16459a3 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -705,7 +705,7 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 	struct buffer_head *tmp_bh = NULL;
 	sector_t end_sector = num_sectors + sector;
 
-	u8	skip = FALSE;
+	bool	skip = false;
 	u32	index = 0;
 	u16	uni = 0;
 	u16 **upcase_table;
@@ -742,11 +742,11 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 				index += uni;
 				pr_debug("to 0x%X (amount of 0x%X)\n",
 					 index, uni);
-				skip = FALSE;
+				skip = false;
 			} else if (uni == index) {
 				index++;
 			} else if (uni == 0xFFFF) {
-				skip = TRUE;
+				skip = true;
 			} else { /* uni != index , uni != 0xFFFF */
 				u16 col_index = get_col_index(index);
 
@@ -787,7 +787,7 @@ static s32 __load_default_upcase_table(struct super_block *sb)
 	u32 j;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
-	u8	skip = FALSE;
+	bool	skip = false;
 	u32	index = 0;
 	u16	uni = 0;
 	u16 **upcase_table;
@@ -804,11 +804,11 @@ static s32 __load_default_upcase_table(struct super_block *sb)
 			pr_debug("skip from 0x%X ", index);
 			index += uni;
 			pr_debug("to 0x%X (amount of 0x%X)\n", index, uni);
-			skip = FALSE;
+			skip = false;
 		} else if (uni == index) {
 			index++;
 		} else if (uni == 0xFFFF) {
-			skip = TRUE;
+			skip = true;
 		} else { /* uni != index , uni != 0xFFFF */
 			u16 col_index = get_col_index(index);
 
@@ -1399,7 +1399,7 @@ void init_dos_entry(struct dos_dentry_t *ep, u32 type, u32 start_clu)
 void init_ext_entry(struct ext_dentry_t *ep, s32 order, u8 chksum, u16 *uniname)
 {
 	int i;
-	u8 end = FALSE;
+	bool end = false;
 
 	fat_set_entry_type((struct dentry_t *) ep, TYPE_EXTEND);
 	ep->order = (u8) order;
@@ -1411,7 +1411,7 @@ void init_ext_entry(struct ext_dentry_t *ep, s32 order, u8 chksum, u16 *uniname)
 		if (!end) {
 			SET16(ep->unicode_0_4+i, *uniname);
 			if (*uniname == 0x0)
-				end = TRUE;
+				end = true;
 			else
 				uniname++;
 		} else {
@@ -1423,7 +1423,7 @@ void init_ext_entry(struct ext_dentry_t *ep, s32 order, u8 chksum, u16 *uniname)
 		if (!end) {
 			SET16_A(ep->unicode_5_10 + i, *uniname);
 			if (*uniname == 0x0)
-				end = TRUE;
+				end = true;
 			else
 				uniname++;
 		} else {
@@ -1435,7 +1435,7 @@ void init_ext_entry(struct ext_dentry_t *ep, s32 order, u8 chksum, u16 *uniname)
 		if (!end) {
 			SET16_A(ep->unicode_11_12 + i, *uniname);
 			if (*uniname == 0x0)
-				end = TRUE;
+				end = true;
 			else
 				uniname++;
 		} else {
@@ -2146,8 +2146,9 @@ s32 fat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 		       struct uni_name_t *p_uniname, s32 num_entries,
 		       struct dos_name_t *p_dosname, u32 type)
 {
-	int i, dentry = 0, lossy = FALSE, len;
-	s32 order = 0, is_feasible_entry = TRUE, has_ext_entry = FALSE;
+	int i, dentry = 0, len;
+	s32 order = 0;
+	bool is_feasible_entry = true, has_ext_entry = false;
 	s32 dentries_per_clu;
 	u32 entry_type;
 	u16 entry_uniname[14], *uniname = NULL, unichar;
@@ -2190,11 +2191,11 @@ s32 fat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 						return dentry;
 
 					dos_ep = (struct dos_dentry_t *) ep;
-					if ((!lossy) && (!nls_dosname_cmp(sb, p_dosname->name, dos_ep->name)))
+					if (!nls_dosname_cmp(sb, p_dosname->name, dos_ep->name))
 						return dentry;
 				}
-				is_feasible_entry = TRUE;
-				has_ext_entry = FALSE;
+				is_feasible_entry = true;
+				has_ext_entry = false;
 			} else if (entry_type == TYPE_EXTEND) {
 				if (is_feasible_entry) {
 					ext_ep = (struct ext_dentry_t *) ep;
@@ -2212,16 +2213,16 @@ s32 fat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 					*(uniname+len) = 0x0;
 
 					if (nls_uniname_cmp(sb, uniname, entry_uniname))
-						is_feasible_entry = FALSE;
+						is_feasible_entry = false;
 
 					*(uniname+len) = unichar;
 				}
-				has_ext_entry = TRUE;
+				has_ext_entry = true;
 			} else if (entry_type == TYPE_UNUSED) {
 				return -2;
 			}
-			is_feasible_entry = TRUE;
-			has_ext_entry = FALSE;
+			is_feasible_entry = true;
+			has_ext_entry = false;
 		}
 
 		if (p_dir->dir == CLUSTER_32(0))
@@ -2244,7 +2245,8 @@ s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 			 struct dos_name_t *p_dosname, u32 type)
 {
 	int i = 0, dentry = 0, num_ext_entries = 0, len, step;
-	s32 order = 0, is_feasible_entry = FALSE;
+	s32 order = 0;
+	bool is_feasible_entry = false;
 	s32 dentries_per_clu, num_empty = 0;
 	u32 entry_type;
 	u16 entry_uniname[16], *uniname = NULL, unichar;
@@ -2288,7 +2290,7 @@ s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 			step = 1;
 
 			if ((entry_type == TYPE_UNUSED) || (entry_type == TYPE_DELETED)) {
-				is_feasible_entry = FALSE;
+				is_feasible_entry = false;
 
 				if (p_fs->hint_uentry.entry == -1) {
 					num_empty++;
@@ -2311,9 +2313,9 @@ s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 					file_ep = (struct file_dentry_t *) ep;
 					if ((type == TYPE_ALL) || (type == entry_type)) {
 						num_ext_entries = file_ep->num_ext;
-						is_feasible_entry = TRUE;
+						is_feasible_entry = true;
 					} else {
-						is_feasible_entry = FALSE;
+						is_feasible_entry = false;
 						step = file_ep->num_ext + 1;
 					}
 				} else if (entry_type == TYPE_STREAM) {
@@ -2323,7 +2325,7 @@ s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 						    p_uniname->name_len == strm_ep->name_len) {
 							order = 1;
 						} else {
-							is_feasible_entry = FALSE;
+							is_feasible_entry = false;
 							step = num_ext_entries;
 						}
 					}
@@ -2343,7 +2345,7 @@ s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 						*(uniname+len) = 0x0;
 
 						if (nls_uniname_cmp(sb, uniname, entry_uniname)) {
-							is_feasible_entry = FALSE;
+							is_feasible_entry = false;
 							step = num_ext_entries - order + 1;
 						} else if (order == num_ext_entries) {
 							p_fs->hint_uentry.dir = CLUSTER_32(~0);
@@ -2354,7 +2356,7 @@ s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 						*(uniname+len) = unichar;
 					}
 				} else {
-					is_feasible_entry = FALSE;
+					is_feasible_entry = false;
 				}
 			}
 
@@ -2522,17 +2524,17 @@ bool is_dir_empty(struct super_block *sb, struct chain_t *p_dir)
 			type = p_fs->fs_func->get_entry_type(ep);
 
 			if (type == TYPE_UNUSED)
-				return TRUE;
+				return true;
 			if ((type != TYPE_FILE) && (type != TYPE_DIR))
 				continue;
 
 			if (p_dir->dir == CLUSTER_32(0)) /* FAT16 root_dir */
-				return FALSE;
+				return false;
 
 			if (p_fs->vol_type == EXFAT)
-				return FALSE;
+				return false;
 			if ((p_dir->dir == p_fs->root_dir) || ((++count) > 2))
-				return FALSE;
+				return false;
 		}
 
 		if (p_dir->dir == CLUSTER_32(0))
@@ -2548,7 +2550,7 @@ bool is_dir_empty(struct super_block *sb, struct chain_t *p_dir)
 			break;
 	}
 
-	return TRUE;
+	return true;
 }
 
 /*
@@ -2741,7 +2743,8 @@ s32 extract_uni_name_from_name_entry(struct name_dentry_t *ep, u16 *uniname,
 s32 fat_generate_dos_name(struct super_block *sb, struct chain_t *p_dir,
 			  struct dos_name_t *p_dosname)
 {
-	int i, j, count = 0, count_begin = FALSE;
+	int i, j, count = 0;
+	bool count_begin = false;
 	s32 dentries_per_clu;
 	u32 type;
 	u8 bmap[128/* 1 ~ 1023 */];
@@ -2779,14 +2782,14 @@ s32 fat_generate_dos_name(struct super_block *sb, struct chain_t *p_dir,
 				continue;
 
 			count = 0;
-			count_begin = FALSE;
+			count_begin = false;
 
 			for (j = 0; j < 8; j++) {
 				if (ep->name[j] == ' ')
 					break;
 
 				if (ep->name[j] == '~') {
-					count_begin = TRUE;
+					count_begin = true;
 				} else if (count_begin) {
 					if ((ep->name[j] >= '0') &&
 					    (ep->name[j] <= '9')) {
@@ -2794,7 +2797,7 @@ s32 fat_generate_dos_name(struct super_block *sb, struct chain_t *p_dir,
 							(ep->name[j] - '0');
 					} else {
 						count = 0;
-						count_begin = FALSE;
+						count_begin = false;
 					}
 				}
 			}
@@ -3613,7 +3616,7 @@ int sector_read(struct super_block *sb, sector_t sec, struct buffer_head **bh,
 	if (!p_fs->dev_ejected) {
 		ret = bdev_read(sb, sec, bh, 1, read);
 		if (ret != FFS_SUCCESS)
-			p_fs->dev_ejected = TRUE;
+			p_fs->dev_ejected = 1;
 	}
 
 	return ret;
@@ -3642,7 +3645,7 @@ int sector_write(struct super_block *sb, sector_t sec, struct buffer_head *bh,
 	if (!p_fs->dev_ejected) {
 		ret = bdev_write(sb, sec, bh, 1, sync);
 		if (ret != FFS_SUCCESS)
-			p_fs->dev_ejected = TRUE;
+			p_fs->dev_ejected = 1;
 	}
 
 	return ret;
@@ -3665,7 +3668,7 @@ int multi_sector_read(struct super_block *sb, sector_t sec,
 	if (!p_fs->dev_ejected) {
 		ret = bdev_read(sb, sec, bh, num_secs, read);
 		if (ret != FFS_SUCCESS)
-			p_fs->dev_ejected = TRUE;
+			p_fs->dev_ejected = 1;
 	}
 
 	return ret;
@@ -3693,7 +3696,7 @@ int multi_sector_write(struct super_block *sb, sector_t sec,
 	if (!p_fs->dev_ejected) {
 		ret = bdev_write(sb, sec, bh, num_secs, sync);
 		if (ret != FFS_SUCCESS)
-			p_fs->dev_ejected = TRUE;
+			p_fs->dev_ejected = 1;
 	}
 
 	return ret;
diff --git a/drivers/staging/exfat/exfat_nls.c b/drivers/staging/exfat/exfat_nls.c
index 2ca58616159b..03cb8290b5d2 100644
--- a/drivers/staging/exfat/exfat_nls.c
+++ b/drivers/staging/exfat/exfat_nls.c
@@ -225,7 +225,7 @@ void nls_uniname_to_dosname(struct super_block *sb,
 		*dosname = 0x05;
 
 	if (*uniname != 0x0)
-		lossy = TRUE;
+		lossy = true;
 
 	if (upper & lower)
 		p_dosname->name_case = 0xFF;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index e44b860e35e8..03de872aaa1d 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -452,7 +452,7 @@ static int ffsMountVol(struct super_block *sb)
 	buf_init(sb);
 
 	sema_init(&p_fs->v_sem, 1);
-	p_fs->dev_ejected = FALSE;
+	p_fs->dev_ejected = 0;
 
 	/* open the block device */
 	bdev_open(sb);
@@ -903,7 +903,8 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 			void *buffer, u64 count, u64 *wcount)
 {
-	s32 modified = FALSE, offset, sec_offset, clu_offset;
+	bool modified = false;
+	s32 offset, sec_offset, clu_offset;
 	s32 num_clusters, num_alloc, num_alloced = (s32) ~0;
 	int ret = 0;
 	u32 clu, last_clu;
@@ -1011,14 +1012,14 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 				if (new_clu.flags == 0x01)
 					fid->flags = 0x01;
 				fid->start_clu = new_clu.dir;
-				modified = TRUE;
+				modified = true;
 			} else {
 				if (new_clu.flags != fid->flags) {
 					exfat_chain_cont_cluster(sb,
 								 fid->start_clu,
 								 num_clusters);
 					fid->flags = 0x01;
-					modified = TRUE;
+					modified = true;
 				}
 				if (new_clu.flags == 0x01)
 					FAT_write(sb, last_clu, new_clu.dir);
@@ -1088,7 +1089,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 
 		if (fid->size < fid->rwoffset) {
 			fid->size = fid->rwoffset;
-			modified = TRUE;
+			modified = true;
 		}
 	}
 
@@ -1828,7 +1829,8 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 
 static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
 {
-	s32 num_clusters, num_alloced, modified = FALSE;
+	s32 num_clusters, num_alloced;
+	bool modified = false;
 	u32 last_clu;
 	int ret = FFS_SUCCESS;
 	sector_t sector = 0;
@@ -1906,13 +1908,13 @@ static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
 			if (new_clu.flags == 0x01)
 				fid->flags = 0x01;
 			fid->start_clu = new_clu.dir;
-			modified = TRUE;
+			modified = true;
 		} else {
 			if (new_clu.flags != fid->flags) {
 				exfat_chain_cont_cluster(sb, fid->start_clu,
 							 num_clusters);
 				fid->flags = 0x01;
-				modified = TRUE;
+				modified = true;
 			}
 			if (new_clu.flags == 0x01)
 				FAT_write(sb, last_clu, new_clu.dir);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

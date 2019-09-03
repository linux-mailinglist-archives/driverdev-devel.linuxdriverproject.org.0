Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38287A75E6
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 23:04:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D4232884DE;
	Tue,  3 Sep 2019 21:04:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0fi2gwdcR-lz; Tue,  3 Sep 2019 21:04:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7EF42884CD;
	Tue,  3 Sep 2019 21:04:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0A8E31BF59D
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 21:04:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 066CA22902
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 21:04:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o8ebOupp4CkR for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 21:04:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by silver.osuosl.org (Postfix) with ESMTPS id 4BB7E228EF
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 21:04:46 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id D8C543A624; Tue,  3 Sep 2019 22:57:12 +0200 (CEST)
From: Valentin Vidic <vvidic@valentin-vidic.from.hr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: exfat: cleanup explicit comparisons to NULL
Date: Tue,  3 Sep 2019 22:56:59 +0200
Message-Id: <20190903205659.18856-1-vvidic@valentin-vidic.from.hr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903200937.GA18191@kroah.com>
References: <20190903200937.GA18191@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Valentin Vidic <vvidic@valentin-vidic.from.hr>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes checkpatch.pl warnings:

  CHECK: Comparison to NULL could be written "expr"
  CHECK: Comparison to NULL could be written "!expr"

Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
---
v2: fix gcc warning in strsep call

 drivers/staging/exfat/exfat_core.c  | 34 ++++++++---------
 drivers/staging/exfat/exfat_super.c | 58 ++++++++++++++---------------
 2 files changed, 46 insertions(+), 46 deletions(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index da8c58149c35..995358cc7c79 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -100,7 +100,7 @@ void fs_set_vol_flags(struct super_block *sb, u32 new_flag)
 	p_fs->vol_flag = new_flag;
 
 	if (p_fs->vol_type == EXFAT) {
-		if (p_fs->pbr_bh == NULL) {
+		if (!p_fs->pbr_bh) {
 			if (sector_read(sb, p_fs->PBR_sector,
 					&p_fs->pbr_bh, 1) != FFS_SUCCESS)
 				return;
@@ -543,7 +543,7 @@ s32 load_alloc_bitmap(struct super_block *sb)
 				p_fs->vol_amap = kmalloc_array(p_fs->map_sectors,
 							       sizeof(struct buffer_head *),
 							       GFP_KERNEL);
-				if (p_fs->vol_amap == NULL)
+				if (!p_fs->vol_amap)
 					return FFS_MEMORYERR;
 
 				sector = START_SECTOR(p_fs->map_clu);
@@ -685,7 +685,7 @@ void sync_alloc_bitmap(struct super_block *sb)
 	int i;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
-	if (p_fs->vol_amap == NULL)
+	if (!p_fs->vol_amap)
 		return;
 
 	for (i = 0; i < p_fs->map_sectors; i++)
@@ -714,7 +714,7 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 
 	upcase_table = p_fs->vol_utbl = kmalloc(UTBL_COL_COUNT * sizeof(u16 *),
 						GFP_KERNEL);
-	if (upcase_table == NULL)
+	if (!upcase_table)
 		return FFS_MEMORYERR;
 	memset(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));
 
@@ -750,11 +750,11 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 			} else { /* uni != index , uni != 0xFFFF */
 				u16 col_index = get_col_index(index);
 
-				if (upcase_table[col_index] == NULL) {
+				if (!upcase_table[col_index]) {
 					pr_debug("alloc = 0x%X\n", col_index);
 					upcase_table[col_index] = kmalloc_array(UTBL_ROW_COUNT,
 						sizeof(u16), GFP_KERNEL);
-					if (upcase_table[col_index] == NULL) {
+					if (!upcase_table[col_index]) {
 						ret = FFS_MEMORYERR;
 						goto error;
 					}
@@ -794,7 +794,7 @@ static s32 __load_default_upcase_table(struct super_block *sb)
 
 	upcase_table = p_fs->vol_utbl = kmalloc(UTBL_COL_COUNT * sizeof(u16 *),
 						GFP_KERNEL);
-	if (upcase_table == NULL)
+	if (!upcase_table)
 		return FFS_MEMORYERR;
 	memset(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));
 
@@ -812,12 +812,12 @@ static s32 __load_default_upcase_table(struct super_block *sb)
 		} else { /* uni != index , uni != 0xFFFF */
 			u16 col_index = get_col_index(index);
 
-			if (upcase_table[col_index] == NULL) {
+			if (!upcase_table[col_index]) {
 				pr_debug("alloc = 0x%X\n", col_index);
 				upcase_table[col_index] = kmalloc_array(UTBL_ROW_COUNT,
 									sizeof(u16),
 									GFP_KERNEL);
-				if (upcase_table[col_index] == NULL) {
+				if (!upcase_table[col_index]) {
 					ret = FFS_MEMORYERR;
 					goto error;
 				}
@@ -1640,7 +1640,7 @@ struct dentry_t *get_entry_with_sector(struct super_block *sb, sector_t sector,
 
 	buf = buf_getblk(sb, sector);
 
-	if (buf == NULL)
+	if (!buf)
 		return NULL;
 
 	return (struct dentry_t *)(buf + offset);
@@ -1658,10 +1658,10 @@ struct dentry_t *get_entry_in_dir(struct super_block *sb, struct chain_t *p_dir,
 
 	buf = buf_getblk(sb, sec);
 
-	if (buf == NULL)
+	if (!buf)
 		return NULL;
 
-	if (sector != NULL)
+	if (sector)
 		*sector = sec;
 	return (struct dentry_t *)(buf + off);
 }
@@ -1721,7 +1721,7 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 	sec += START_SECTOR(clu);
 
 	buf = buf_getblk(sb, sec);
-	if (buf == NULL)
+	if (!buf)
 		goto err_out;
 
 	ep = (struct dentry_t *)(buf + off);
@@ -1741,7 +1741,7 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 	pr_debug("%s: trying to kmalloc %zx bytes for %d entries\n", __func__,
 		 bufsize, num_entries);
 	es = kmalloc(bufsize, GFP_KERNEL);
-	if (es == NULL)
+	if (!es)
 		goto err_out;
 
 	es->num_entries = num_entries;
@@ -1820,7 +1820,7 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 				sec++;
 			}
 			buf = buf_getblk(sb, sec);
-			if (buf == NULL)
+			if (!buf)
 				goto err_out;
 			off = 0;
 			ep = (struct dentry_t *)(buf);
@@ -1872,7 +1872,7 @@ static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
 				     remaining_byte_in_sector >> DENTRY_SIZE_BITS,
 				     num_entries);
 		buf = buf_getblk(sb, sec);
-		if (buf == NULL)
+		if (!buf)
 			goto err_out;
 		pr_debug("es->buf %p buf_off %u\n", esbuf, buf_off);
 		pr_debug("copying %d entries from %p to sector %llu\n",
@@ -2651,7 +2651,7 @@ void exfat_get_uni_name_from_ext_entry(struct super_block *sb,
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
 	es = get_entry_set_in_dir(sb, p_dir, entry, ES_ALL_ENTRIES, &ep);
-	if (es == NULL || es->num_entries < 3) {
+	if (!es || es->num_entries < 3) {
 		if (es)
 			release_entry_set(es);
 		return;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 280bf0d1cf0b..0cd93b9742a6 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -341,7 +341,7 @@ static int exfat_cmpi(const struct dentry *dentry, unsigned int len,
 	alen = exfat_striptail_len(name);
 	blen = __exfat_striptail_len(len, str);
 	if (alen == blen) {
-		if (t == NULL) {
+		if (!t) {
 			if (strncasecmp(name->name, str, alen) == 0)
 				return 0;
 		} else {
@@ -589,7 +589,7 @@ static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
 	/* check the validity of pointer parameters */
-	if (info == NULL)
+	if (!info)
 		return FFS_ERROR;
 
 	/* acquire the lock for file system critical section */
@@ -652,7 +652,7 @@ static int ffsLookupFile(struct inode *inode, char *path, struct file_id_t *fid)
 	pr_debug("%s entered\n", __func__);
 
 	/* check the validity of pointer parameters */
-	if ((fid == NULL) || (path == NULL) || (*path == '\0'))
+	if (!fid || !path || (*path == '\0'))
 		return FFS_ERROR;
 
 	/* acquire the lock for file system critical section */
@@ -745,7 +745,7 @@ static int ffsCreateFile(struct inode *inode, char *path, u8 mode,
 	int ret;
 
 	/* check the validity of pointer parameters */
-	if ((fid == NULL) || (path == NULL) || (*path == '\0'))
+	if (!fid || !path || (*path == '\0'))
 		return FFS_ERROR;
 
 	/* acquire the lock for file system critical section */
@@ -790,11 +790,11 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 
 	/* check the validity of the given file id */
-	if (fid == NULL)
+	if (!fid)
 		return FFS_INVALIDFID;
 
 	/* check the validity of pointer parameters */
-	if (buffer == NULL)
+	if (!buffer)
 		return FFS_ERROR;
 
 	/* acquire the lock for file system critical section */
@@ -813,7 +813,7 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 		count = fid->size - fid->rwoffset;
 
 	if (count == 0) {
-		if (rcount != NULL)
+		if (rcount)
 			*rcount = 0;
 		ret = FFS_EOF;
 		goto out;
@@ -887,7 +887,7 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 /* How did this ever work and not leak a brlse()?? */
 err_out:
 	/* set the size of read bytes */
-	if (rcount != NULL)
+	if (rcount)
 		*rcount = read_bytes;
 
 	if (p_fs->dev_ejected)
@@ -920,11 +920,11 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 
 	/* check the validity of the given file id */
-	if (fid == NULL)
+	if (!fid)
 		return FFS_INVALIDFID;
 
 	/* check the validity of pointer parameters */
-	if (buffer == NULL)
+	if (!buffer)
 		return FFS_ERROR;
 
 	/* acquire the lock for file system critical section */
@@ -940,7 +940,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 		fid->rwoffset = fid->size;
 
 	if (count == 0) {
-		if (wcount != NULL)
+		if (wcount)
 			*wcount = 0;
 		ret = FFS_SUCCESS;
 		goto out;
@@ -1099,7 +1099,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 	if (p_fs->vol_type == EXFAT) {
 		es = get_entry_set_in_dir(sb, &(fid->dir), fid->entry,
 					  ES_ALL_ENTRIES, &ep);
-		if (es == NULL)
+		if (!es)
 			goto err_out;
 		ep2 = ep+1;
 	} else {
@@ -1141,7 +1141,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 
 err_out:
 	/* set the size of written bytes */
-	if (wcount != NULL)
+	if (wcount)
 		*wcount = write_bytes;
 
 	if (num_alloced == 0)
@@ -1228,7 +1228,7 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
 	if (p_fs->vol_type == EXFAT) {
 		es = get_entry_set_in_dir(sb, &fid->dir, fid->entry,
 					  ES_ALL_ENTRIES, &ep);
-		if (es == NULL) {
+		if (!es) {
 			ret = FFS_MEDIAERR;
 			goto out;
 			}
@@ -1323,11 +1323,11 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 	s32 new_entry = 0;
 
 	/* check the validity of the given file id */
-	if (fid == NULL)
+	if (!fid)
 		return FFS_INVALIDFID;
 
 	/* check the validity of pointer parameters */
-	if ((new_path == NULL) || (*new_path == '\0'))
+	if (!new_path || (*new_path == '\0'))
 		return FFS_ERROR;
 
 	/* acquire the lock for file system critical section */
@@ -1444,7 +1444,7 @@ static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
 	/* check the validity of the given file id */
-	if (fid == NULL)
+	if (!fid)
 		return FFS_INVALIDFID;
 
 	/* acquire the lock for file system critical section */
@@ -1532,7 +1532,7 @@ static int ffsSetAttr(struct inode *inode, u32 attr)
 	if (p_fs->vol_type == EXFAT) {
 		es = get_entry_set_in_dir(sb, &(fid->dir), fid->entry,
 					  ES_ALL_ENTRIES, &ep);
-		if (es == NULL) {
+		if (!es) {
 			ret = FFS_MEDIAERR;
 			goto out;
 		}
@@ -1648,7 +1648,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	if (p_fs->vol_type == EXFAT) {
 		es = get_entry_set_in_dir(sb, &(fid->dir), fid->entry,
 					  ES_2_ENTRIES, &ep);
-		if (es == NULL) {
+		if (!es) {
 			ret = FFS_MEDIAERR;
 			goto out;
 		}
@@ -1772,7 +1772,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 	if (p_fs->vol_type == EXFAT) {
 		es = get_entry_set_in_dir(sb, &(fid->dir), fid->entry,
 					  ES_ALL_ENTRIES, &ep);
-		if (es == NULL) {
+		if (!es) {
 			ret = FFS_MEDIAERR;
 			goto out;
 		}
@@ -1842,7 +1842,7 @@ static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
 	struct file_id_t *fid = &(EXFAT_I(inode)->fid);
 
 	/* check the validity of pointer parameters */
-	if (clu == NULL)
+	if (!clu)
 		return FFS_ERROR;
 
 	/* acquire the lock for file system critical section */
@@ -1926,7 +1926,7 @@ static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
 		if (p_fs->vol_type == EXFAT) {
 			es = get_entry_set_in_dir(sb, &fid->dir, fid->entry,
 						  ES_ALL_ENTRIES, &ep);
-			if (es == NULL) {
+			if (!es) {
 				ret = FFS_MEDIAERR;
 				goto out;
 			}
@@ -1994,7 +1994,7 @@ static int ffsCreateDir(struct inode *inode, char *path, struct file_id_t *fid)
 	pr_debug("%s entered\n", __func__);
 
 	/* check the validity of pointer parameters */
-	if ((fid == NULL) || (path == NULL) || (*path == '\0'))
+	if (!fid || !path || (*path == '\0'))
 		return FFS_ERROR;
 
 	/* acquire the lock for file system critical section */
@@ -2040,7 +2040,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 	struct file_id_t *fid = &(EXFAT_I(inode)->fid);
 
 	/* check the validity of pointer parameters */
-	if (dir_entry == NULL)
+	if (!dir_entry)
 		return FFS_ERROR;
 
 	/* check if the given file ID is opened */
@@ -2231,7 +2231,7 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
 	/* check the validity of the given file id */
-	if (fid == NULL)
+	if (!fid)
 		return FFS_INVALIDFID;
 
 	dir.dir = fid->dir.dir;
@@ -3119,10 +3119,10 @@ static const char *exfat_get_link(struct dentry *dentry, struct inode *inode,
 {
 	struct exfat_inode_info *ei = EXFAT_I(inode);
 
-	if (ei->target != NULL) {
+	if (ei->target) {
 		char *cookie = ei->target;
 
-		if (cookie != NULL)
+		if (cookie)
 			return (char *)(ei->target);
 	}
 	return NULL;
@@ -3784,7 +3784,7 @@ static int parse_options(char *options, int silent, int *debug,
 	if (!options)
 		goto out;
 
-	while ((p = strsep(&options, ",")) != NULL) {
+	while ((p = strsep(&options, ","))) {
 		int token;
 
 		if (!*p)
@@ -4048,7 +4048,7 @@ static int __init exfat_init_inodecache(void)
 					       (SLAB_RECLAIM_ACCOUNT |
 						SLAB_MEM_SPREAD),
 					       init_once);
-	if (exfat_inode_cachep == NULL)
+	if (!exfat_inode_cachep)
 		return -ENOMEM;
 	return 0;
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

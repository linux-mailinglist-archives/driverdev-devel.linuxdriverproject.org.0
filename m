Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAD7C15DE
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Sep 2019 16:52:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D73ED20511;
	Sun, 29 Sep 2019 14:52:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EWFIG2MliCVg; Sun, 29 Sep 2019 14:52:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52F1120429;
	Sun, 29 Sep 2019 14:52:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4647C1BF35F
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 14:52:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 42EEA2041F
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 14:52:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y0C2rfKfr2BT for <devel@linuxdriverproject.org>;
 Sun, 29 Sep 2019 14:52:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 319B4203AE
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 14:52:39 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id k9so8990248oib.7
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 07:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6O1PhWD20GYYr5YrXMpjy8V1bkxb1vSAyqk31w8VHqk=;
 b=MViSlH3vYdoaZ6HfYFv0V7ezu1xjH7GSnBVWYE/YCiJI4/elT/eQZxW2YGACJ4spMC
 t3fY31o3bt/a5oZk0FR675Sn4aaBFXjQjZaXiaL9dp94rPl3pv0Sp0ceAruzuUVqMj0U
 sUMqfwJuBLdtY9lO+P2zrP/ETf2JBZoFB751DNAMQvAqMc6kSXJ2cqovGKRumAzFicGb
 54T9szKqh5UsJTEZNd1dVQaEAnhppfkHZC05p88okTQt2FPSCyswRvIYr81bzMSD7KM9
 nAQEcMXpWe5z9h32T73kbslv1iobUWzmotu47u5mbVZrGqp8fePWos0yfNb2wag6o6jQ
 WlAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6O1PhWD20GYYr5YrXMpjy8V1bkxb1vSAyqk31w8VHqk=;
 b=RACBT1YwhwQMRuLRVNp9L1d+rjgKShJ/aE+uqxdA4uGpnTxbLUWEijcPqlJKJYehup
 gcqoQaKqNfh0c1NWGMC8U+dl10P5qF0xtwQXQtsbpevgNDYF3vCUc1AJ8NEBQary2sL+
 rS6wPLk61mG2p97uFGWTHxqFa8/R8nF+BmZbO39c/Q7+iy6EBTHhKIK9sQtrihyhpW+E
 SYtQ8C3Lt2iqfbUOaBZ/RITEvTNI/iLXFAOSiy1CzuFYKrarxeuJOamJpep/egALR2iy
 tKNFU1SufZMLJ9MMWLsjYX4URH09hDz1afiH+8ml3PARiHc8T159UYF4NpNkOxTtzHRx
 99xw==
X-Gm-Message-State: APjAAAU7xTqHt4gYr7dlbKHgxlToMqBAMyhmz3hAyQWArN67czznYj/R
 awGxIOUVwpGru1miJTMVBx4=
X-Google-Smtp-Source: APXvYqyV4gZaXf4BvhPnZ5e0g5RZYY261ThBazcomGKc4ws1TWbwyT5/fldIr7iHhLUAKouKpMsYgA==
X-Received: by 2002:aca:e186:: with SMTP id y128mr14863922oig.34.1569768758086; 
 Sun, 29 Sep 2019 07:52:38 -0700 (PDT)
Received: from localhost (ip72-210-101-152.tu.ok.cox.net. [72.210.101.152])
 by smtp.gmail.com with ESMTPSA id t82sm3456744oie.12.2019.09.29.07.52.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 07:52:37 -0700 (PDT)
From: Jesse Barton <jessebarton95@gmail.com>
To: valdis.kletnieks@vt.edu
Subject: [PATCH 2/3] Staging: exfat: exfat_super.c: fixed multiple coding
 style issues with camelcase and parentheses
Date: Sun, 29 Sep 2019 09:52:29 -0500
Message-Id: <20190929145229.38561-1-jessebarton95@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Jesse Barton <jessebarton95@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Changed Function Names:
ffsGetVolInfo -> ffs_get_vol_info
ffsLookupFile -> ffs_lookup_file
ffsCreateFile -> ffs_create_file
ffsReadFile -> ffs_read_file
ffsWriteFile -> ffs_write_file
ffsTruncateFile -> ffs_truncate_file
ffsRemoveFile -> ffs_remove_file
ffsMoveFile -> ffs_move_file
ffsSetAttr -> ffs_set_attr
ffsReadStat -> ffs_read_stat
ffsWriteStat -> ffs_write_stat
ffsMapCluster -> ffs_map_cluster

Removed BUG_ON() and added WARN_ON().
Removed unnecessary parentheses:
*(dir_entry->Name) - > *dir_entry->Name

Switched to lowercase o in these enums
Opt_uid
Opt_gid
Opt_umask
Opt_dmask
Opt_fmask
Opt_allow_utime
Opt_codepage
Opt_charset
Opt_namecase
Opt_debug
Opt_err_cont
Opt_err_panic
Opt_err_ro
Opt_utf8_hack
Opt_err

Signed-off-by: Jesse Barton <jessebarton95@gmail.com>
---
 drivers/staging/exfat/exfat_super.c | 210 ++++++++++++++--------------
 1 file changed, 105 insertions(+), 105 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 665eb25e318d..3c7e2b7c2195 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -488,7 +488,7 @@ static int ffs_umount_vol(struct super_block *sb)
 	return err;
 }
 
-static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
+static int ffs_get_vol_info(struct super_block *sb, struct vol_info_t *info)
 {
 	int err = FFS_SUCCESS;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
@@ -543,7 +543,7 @@ static int ffs_sync_vol(struct super_block *sb, bool do_sync)
 /*  File Operation Functions                                            */
 /*----------------------------------------------------------------------*/
 
-static int ffsLookupFile(struct inode *inode, char *path, struct file_id_t *fid)
+static int ffs_lookup_file(struct inode *inode, char *path, struct file_id_t *fid)
 {
 	int ret, dentry, num_entries;
 	struct chain_t dir;
@@ -640,7 +640,7 @@ static int ffsLookupFile(struct inode *inode, char *path, struct file_id_t *fid)
 	return ret;
 }
 
-static int ffsCreateFile(struct inode *inode, char *path, u8 mode,
+static int ffs_create_file(struct inode *inode, char *path, u8 mode,
 			 struct file_id_t *fid)
 {
 	struct chain_t dir;
@@ -681,7 +681,7 @@ static int ffsCreateFile(struct inode *inode, char *path, u8 mode,
 	return ret;
 }
 
-static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
+static int ffs_read_file(struct inode *inode, struct file_id_t *fid, void *buffer,
 		       u64 count, u64 *rcount)
 {
 	s32 offset, sec_offset, clu_offset;
@@ -805,7 +805,7 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 	return ret;
 }
 
-static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
+static int ffs_write_file(struct inode *inode, struct file_id_t *fid,
 			void *buffer, u64 count, u64 *wcount)
 {
 	bool modified = false;
@@ -1002,13 +1002,13 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 
 	/* (3) update the direcoty entry */
 	if (p_fs->vol_type == EXFAT) {
-		es = get_entry_set_in_dir(sb, &(fid->dir), fid->entry,
+		es = get_entry_set_in_dir(sb, &fid->dir, fid->entry,
 					  ES_ALL_ENTRIES, &ep);
 		if (!es)
 			goto err_out;
 		ep2 = ep + 1;
 	} else {
-		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
+		ep = get_entry_in_dir(sb, &fid->dir, fid->entry, &sector);
 		if (!ep)
 			goto err_out;
 		ep2 = ep;
@@ -1062,7 +1062,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 	return ret;
 }
 
-static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
+static int ffs_truncate_file(struct inode *inode, u64 old_size, u64 new_size)
 {
 	s32 num_clusters;
 	u32 last_clu = CLUSTER_32(0);
@@ -1141,7 +1141,7 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
 			}
 		ep2 = ep + 1;
 	} else {
-		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
+		ep = get_entry_in_dir(sb, &fid->dir, fid->entry, &sector);
 		if (!ep) {
 			ret = FFS_MEDIAERR;
 			goto out;
@@ -1212,7 +1212,7 @@ static void update_parent_info(struct file_id_t *fid,
 	}
 }
 
-static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
+static int ffs_move_file(struct inode *old_parent_inode, struct file_id_t *fid,
 		       struct inode *new_parent_inode, struct dentry *new_dentry)
 {
 	s32 ret;
@@ -1276,7 +1276,7 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 
 		update_parent_info(new_fid, new_parent_inode);
 
-		p_dir = &(new_fid->dir);
+		p_dir = &new_fid->dir;
 		new_entry = new_fid->entry;
 		ep = get_entry_in_dir(sb, p_dir, new_entry, NULL);
 		if (!ep)
@@ -1341,7 +1341,7 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 	return ret;
 }
 
-static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
+static int ffs_remove_file(struct inode *inode, struct file_id_t *fid)
 {
 	s32 dentry;
 	int ret = FFS_SUCCESS;
@@ -1405,7 +1405,7 @@ static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
 
 #if 0
 /* Not currently wired up */
-static int ffsSetAttr(struct inode *inode, u32 attr)
+static int ffs_set_attr(struct inode *inode, u32 attr)
 {
 	u32 type;
 	int ret = FFS_SUCCESS;
@@ -1437,14 +1437,14 @@ static int ffsSetAttr(struct inode *inode, u32 attr)
 
 	/* get the directory entry of given file */
 	if (p_fs->vol_type == EXFAT) {
-		es = get_entry_set_in_dir(sb, &(fid->dir), fid->entry,
+		es = get_entry_set_in_dir(sb, &fid->dir, fid->entry,
 					  ES_ALL_ENTRIES, &ep);
 		if (!es) {
 			ret = FFS_MEDIAERR;
 			goto out;
 		}
 	} else {
-		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
+		ep = get_entry_in_dir(sb, &fid->dir, fid->entry, &sector);
 		if (!ep) {
 			ret = FFS_MEDIAERR;
 			goto out;
@@ -1493,7 +1493,7 @@ static int ffsSetAttr(struct inode *inode, u32 attr)
 }
 #endif
 
-static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
+static int ffs_read_stat(struct inode *inode, struct dir_entry_t *info)
 {
 	sector_t sector = 0;
 	s32 count;
@@ -1553,7 +1553,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 
 	/* get the directory entry of given file or directory */
 	if (p_fs->vol_type == EXFAT) {
-		es = get_entry_set_in_dir(sb, &(fid->dir), fid->entry,
+		es = get_entry_set_in_dir(sb, &fid->dir, fid->entry,
 					  ES_2_ENTRIES, &ep);
 		if (!es) {
 			ret = FFS_MEDIAERR;
@@ -1561,7 +1561,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 		}
 		ep2 = ep + 1;
 	} else {
-		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
+		ep = get_entry_in_dir(sb, &fid->dir, fid->entry, &sector);
 		if (!ep) {
 			ret = FFS_MEDIAERR;
 			goto out;
@@ -1593,11 +1593,11 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 
 	memset((char *)&info->AccessTimestamp, 0, sizeof(struct date_time_t));
 
-	*(uni_name.name) = 0x0;
+	*uni_name.name = 0x0;
 	/* XXX this is very bad for exfat cuz name is already included in es.
 	 * API should be revised
 	 */
-	p_fs->fs_func->get_uni_name_from_ext_entry(sb, &(fid->dir), fid->entry,
+	p_fs->fs_func->get_uni_name_from_ext_entry(sb, &fid->dir, fid->entry,
 						   uni_name.name);
 	if (*uni_name.name == 0x0 && p_fs->vol_type != EXFAT)
 		get_uni_name_from_dos_entry(sb, (struct dos_dentry_t *)ep,
@@ -1646,7 +1646,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	return ret;
 }
 
-static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
+static int ffs_write_stat(struct inode *inode, struct dir_entry_t *info)
 {
 	sector_t sector = 0;
 	int ret = FFS_SUCCESS;
@@ -1677,7 +1677,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 
 	/* get the directory entry of given file or directory */
 	if (p_fs->vol_type == EXFAT) {
-		es = get_entry_set_in_dir(sb, &(fid->dir), fid->entry,
+		es = get_entry_set_in_dir(sb, &fid->dir, fid->entry,
 					  ES_ALL_ENTRIES, &ep);
 		if (!es) {
 			ret = FFS_MEDIAERR;
@@ -1686,7 +1686,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 		ep2 = ep + 1;
 	} else {
 		/* for other than exfat */
-		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
+		ep = get_entry_in_dir(sb, &fid->dir, fid->entry, &sector);
 		if (!ep) {
 			ret = FFS_MEDIAERR;
 			goto out;
@@ -1734,7 +1734,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 	return ret;
 }
 
-static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
+static int ffs_map_cluster(struct inode *inode, s32 clu_offset, u32 *clu)
 {
 	s32 num_clusters, num_alloced;
 	bool modified = false;
@@ -1844,7 +1844,7 @@ static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
 		/* (3) update directory entry */
 		if (modified) {
 			if (p_fs->vol_type != EXFAT) {
-				ep = get_entry_in_dir(sb, &(fid->dir),
+				ep = get_entry_in_dir(sb, &fid->dir,
 						      fid->entry, &sector);
 				if (!ep) {
 					ret = FFS_MEDIAERR;
@@ -1890,7 +1890,7 @@ static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
 /*  Directory Operation Functions                                       */
 /*----------------------------------------------------------------------*/
 
-static int ffsCreateDir(struct inode *inode, char *path, struct file_id_t *fid)
+static int ffs_create_dir(struct inode *inode, char *path, struct file_id_t *fid)
 {
 	int ret = FFS_SUCCESS;
 	struct chain_t dir;
@@ -1930,7 +1930,7 @@ static int ffsCreateDir(struct inode *inode, char *path, struct file_id_t *fid)
 	return ret;
 }
 
-static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
+static int ffs_read_dir(struct inode *inode, struct dir_entry_t *dir_entry)
 {
 	int i, dentry, clu_offset;
 	int ret = FFS_SUCCESS;
@@ -2057,7 +2057,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			memset((char *)&dir_entry->AccessTimestamp, 0,
 			       sizeof(struct date_time_t));
 
-			*(uni_name.name) = 0x0;
+			*uni_name.name = 0x0;
 			fs_func->get_uni_name_from_ext_entry(sb, &dir, dentry,
 							     uni_name.name);
 			if (*uni_name.name == 0x0 && p_fs->vol_type != EXFAT)
@@ -2115,7 +2115,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 		}
 	}
 
-	*(dir_entry->Name) = '\0';
+	*dir_entry->Name = '\0';
 
 	fid->rwoffset = (s64)(++dentry);
 
@@ -2129,7 +2129,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 	return ret;
 }
 
-static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
+static int ffs_remove_dir(struct inode *inode, struct file_id_t *fid)
 {
 	s32 dentry;
 	int ret = FFS_SUCCESS;
@@ -2201,7 +2201,7 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
 	struct inode *inode = file_inode(filp);
 	struct super_block *sb = inode->i_sb;
 	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
+	struct fs_info_t *p_fs = &sbi->fs_info;
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 	struct dir_entry_t de;
 	unsigned long inum;
@@ -2238,7 +2238,7 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
 	EXFAT_I(inode)->fid.size = i_size_read(inode);
 	EXFAT_I(inode)->fid.rwoffset = cpos >> DENTRY_SIZE_BITS;
 
-	err = ffsReadDir(inode, &de);
+	err = ffs_read_dir(inode, &de);
 	if (err) {
 		/* at least we tried to read a sector
 		 * move cpos to next sector position (should be aligned)
@@ -2292,7 +2292,7 @@ static int exfat_ioctl_volume_id(struct inode *dir)
 {
 	struct super_block *sb = dir->i_sb;
 	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
+	struct fs_info_t *p_fs = &sbi->fs_info;
 
 	return p_fs->vol_id;
 }
@@ -2359,7 +2359,7 @@ static int exfat_create(struct inode *dir, struct dentry *dentry, umode_t mode,
 
 	pr_debug("%s entered\n", __func__);
 
-	err = ffsCreateFile(dir, (u8 *)dentry->d_name.name, FM_REGULAR, &fid);
+	err = ffs_create_file(dir, (u8 *)dentry->d_name.name, FM_REGULAR, &fid);
 	if (err) {
 		if (err == FFS_INVALIDPATH)
 			err = -EINVAL;
@@ -2410,7 +2410,7 @@ static int exfat_find(struct inode *dir, struct qstr *qname,
 	if (qname->len == 0)
 		return -ENOENT;
 
-	err = ffsLookupFile(dir, (u8 *)qname->name, fid);
+	err = ffs_lookup_file(dir, (u8 *)qname->name, fid);
 	if (err)
 		return -ENOENT;
 
@@ -2460,14 +2460,14 @@ static struct dentry *exfat_lookup(struct inode *dir, struct dentry *dentry,
 			err = -ENOMEM;
 			goto error;
 		}
-		ffsReadFile(dir, &fid, EXFAT_I(inode)->target,
+		ffs_read_file(dir, &fid, EXFAT_I(inode)->target,
 			    i_size_read(inode), &ret);
 		*(EXFAT_I(inode)->target + i_size_read(inode)) = '\0';
 	}
 
 	alias = d_find_alias(inode);
 	if (alias && !exfat_d_anon_disconn(alias)) {
-		BUG_ON(d_unhashed(alias));
+		WARN_ON(d_unhashed(alias));
 		if (!S_ISDIR(i_mode))
 			d_move(alias, dentry);
 		iput(inode);
@@ -2529,7 +2529,7 @@ static int exfat_unlink(struct inode *dir, struct dentry *dentry)
 
 	EXFAT_I(inode)->fid.size = i_size_read(inode);
 
-	err = ffsRemoveFile(dir, &(EXFAT_I(inode)->fid));
+	err = ffs_remove_file(dir, &(EXFAT_I(inode)->fid));
 	if (err) {
 		if (err == FFS_PERMISSIONERR)
 			err = -EPERM;
@@ -2570,7 +2570,7 @@ static int exfat_symlink(struct inode *dir, struct dentry *dentry,
 
 	pr_debug("%s entered\n", __func__);
 
-	err = ffsCreateFile(dir, (u8 *)dentry->d_name.name, FM_SYMLINK, &fid);
+	err = ffs_create_file(dir, (u8 *)dentry->d_name.name, FM_SYMLINK, &fid);
 	if (err) {
 		if (err == FFS_INVALIDPATH)
 			err = -EINVAL;
@@ -2583,10 +2583,10 @@ static int exfat_symlink(struct inode *dir, struct dentry *dentry,
 		goto out;
 	}
 
-	err = ffsWriteFile(dir, &fid, (char *)target, len, &ret);
+	err = ffs_write_file(dir, &fid, (char *)target, len, &ret);
 
 	if (err) {
-		ffsRemoveFile(dir, &fid);
+		ffs_remove_file(dir, &fid);
 
 		if (err == FFS_FULL)
 			err = -ENOSPC;
@@ -2640,7 +2640,7 @@ static int exfat_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
 
 	pr_debug("%s entered\n", __func__);
 
-	err = ffsCreateDir(dir, (u8 *)dentry->d_name.name, &fid);
+	err = ffs_create_dir(dir, (u8 *)dentry->d_name.name, &fid);
 	if (err) {
 		if (err == FFS_INVALIDPATH)
 			err = -EINVAL;
@@ -2694,7 +2694,7 @@ static int exfat_rmdir(struct inode *dir, struct dentry *dentry)
 
 	EXFAT_I(inode)->fid.size = i_size_read(inode);
 
-	err = ffsRemoveDir(dir, &(EXFAT_I(inode)->fid));
+	err = ffs_remove_dir(dir, &(EXFAT_I(inode)->fid));
 	if (err) {
 		if (err == FFS_INVALIDPATH)
 			err = -EINVAL;
@@ -2748,7 +2748,7 @@ static int exfat_rename(struct inode *old_dir, struct dentry *old_dentry,
 
 	EXFAT_I(old_inode)->fid.size = i_size_read(old_inode);
 
-	err = ffsMoveFile(old_dir, &(EXFAT_I(old_inode)->fid), new_dir,
+	err = ffs_move_file(old_dir, &(EXFAT_I(old_inode)->fid), new_dir,
 			  new_dentry);
 	if (err) {
 		if (err == FFS_PERMISSIONERR)
@@ -2894,7 +2894,7 @@ static void exfat_truncate(struct inode *inode, loff_t old_size)
 {
 	struct super_block *sb = inode->i_sb;
 	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
+	struct fs_info_t *p_fs = &sbi->fs_info;
 	int err;
 
 	__lock_super(sb);
@@ -2909,7 +2909,7 @@ static void exfat_truncate(struct inode *inode, loff_t old_size)
 	if (EXFAT_I(inode)->fid.start_clu == 0)
 		goto out;
 
-	err = ffsTruncateFile(inode, old_size, i_size_read(inode));
+	err = ffs_truncate_file(inode, old_size, i_size_read(inode));
 	if (err)
 		goto out;
 
@@ -3072,8 +3072,8 @@ static int exfat_bmap(struct inode *inode, sector_t sector, sector_t *phys,
 {
 	struct super_block *sb = inode->i_sb;
 	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
-	struct bd_info_t *p_bd = &(sbi->bd_info);
+	struct fs_info_t *p_fs = &sbi->fs_info;
+	struct bd_info_t *p_bd = &sbi->bd_info;
 	const unsigned long blocksize = sb->s_blocksize;
 	const unsigned char blocksize_bits = sb->s_blocksize_bits;
 	sector_t last_block;
@@ -3111,7 +3111,7 @@ static int exfat_bmap(struct inode *inode, sector_t sector, sector_t *phys,
 
 	EXFAT_I(inode)->fid.size = i_size_read(inode);
 
-	err = ffsMapCluster(inode, clu_offset, &cluster);
+	err = ffs_map_cluster(inode, clu_offset, &cluster);
 
 	if (err) {
 		if (err == FFS_FULL)
@@ -3285,7 +3285,7 @@ static struct inode *exfat_iget(struct super_block *sb, loff_t i_pos)
 
 	spin_lock(&sbi->inode_hash_lock);
 	hlist_for_each_entry(info, head, i_hash_fat) {
-		BUG_ON(info->vfs_inode.i_sb != sb);
+		WARN_ON(info->vfs_inode.i_sb != sb);
 
 		if (i_pos != info->i_pos)
 			continue;
@@ -3301,12 +3301,12 @@ static struct inode *exfat_iget(struct super_block *sb, loff_t i_pos)
 static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
 {
 	struct exfat_sb_info *sbi = EXFAT_SB(inode->i_sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
+	struct fs_info_t *p_fs = &sbi->fs_info;
 	struct dir_entry_t info;
 
 	memcpy(&(EXFAT_I(inode)->fid), fid, sizeof(struct file_id_t));
 
-	ffsReadStat(inode, &info);
+	ffs_read_stat(inode, &info);
 
 	EXFAT_I(inode)->i_pos = 0;
 	EXFAT_I(inode)->target = NULL;
@@ -3422,7 +3422,7 @@ static int exfat_write_inode(struct inode *inode, struct writeback_control *wbc)
 	exfat_time_unix2fat(&inode->i_ctime, &info.CreateTimestamp);
 	exfat_time_unix2fat(&inode->i_atime, &info.AccessTimestamp);
 
-	ffsWriteStat(inode, &info);
+	ffs_write_stat(inode, &info);
 
 	return 0;
 }
@@ -3500,7 +3500,7 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
 	struct vol_info_t info;
 
 	if (p_fs->used_clusters == UINT_MAX) {
-		if (ffsGetVolInfo(sb, &info) == FFS_MEDIAERR)
+		if (ffs_get_vol_info(sb, &info) == FFS_MEDIAERR)
 			return -EIO;
 
 	} else {
@@ -3622,45 +3622,45 @@ static const struct export_operations exfat_export_ops = {
 /*======================================================================*/
 
 enum {
-	Opt_uid,
-	Opt_gid,
-	Opt_umask,
-	Opt_dmask,
-	Opt_fmask,
-	Opt_allow_utime,
-	Opt_codepage,
-	Opt_charset,
-	Opt_namecase,
-	Opt_debug,
-	Opt_err_cont,
-	Opt_err_panic,
-	Opt_err_ro,
-	Opt_utf8_hack,
-	Opt_err,
+	opt_uid,
+	opt_gid,
+	opt_umask,
+	opt_dmask,
+	opt_fmask,
+	opt_allow_utime,
+	opt_codepage,
+	opt_charset,
+	opt_namecase,
+	opt_debug,
+	opt_err_cont,
+	opt_err_panic,
+	opt_err_ro,
+	opt_utf8_hack,
+	opt_err,
 #ifdef CONFIG_EXFAT_DISCARD
-	Opt_discard,
+	opt_discard,
 #endif /* EXFAT_CONFIG_DISCARD */
 };
 
 static const match_table_t exfat_tokens = {
-	{Opt_uid, "uid=%u"},
-	{Opt_gid, "gid=%u"},
-	{Opt_umask, "umask=%o"},
-	{Opt_dmask, "dmask=%o"},
-	{Opt_fmask, "fmask=%o"},
-	{Opt_allow_utime, "allow_utime=%o"},
-	{Opt_codepage, "codepage=%u"},
-	{Opt_charset, "iocharset=%s"},
-	{Opt_namecase, "namecase=%u"},
-	{Opt_debug, "debug"},
-	{Opt_err_cont, "errors=continue"},
-	{Opt_err_panic, "errors=panic"},
-	{Opt_err_ro, "errors=remount-ro"},
-	{Opt_utf8_hack, "utf8"},
+	{opt_uid, "uid=%u"},
+	{opt_gid, "gid=%u"},
+	{opt_umask, "umask=%o"},
+	{opt_dmask, "dmask=%o"},
+	{opt_fmask, "fmask=%o"},
+	{opt_allow_utime, "allow_utime=%o"},
+	{opt_codepage, "codepage=%u"},
+	{opt_charset, "iocharset=%s"},
+	{opt_namecase, "namecase=%u"},
+	{opt_debug, "debug"},
+	{opt_err_cont, "errors=continue"},
+	{opt_err_panic, "errors=panic"},
+	{opt_err_ro, "errors=remount-ro"},
+	{opt_utf8_hack, "utf8"},
 #ifdef CONFIG_EXFAT_DISCARD
-	{Opt_discard, "discard"},
+	{opt_discard, "discard"},
 #endif /* CONFIG_EXFAT_DISCARD */
-	{Opt_err, NULL}
+	{opt_err, NULL}
 };
 
 static int parse_options(char *options, int silent, int *debug,
@@ -3695,37 +3695,37 @@ static int parse_options(char *options, int silent, int *debug,
 
 		token = match_token(p, exfat_tokens, args);
 		switch (token) {
-		case Opt_uid:
+		case opt_uid:
 			if (match_int(&args[0], &option))
 				return 0;
 			opts->fs_uid = KUIDT_INIT(option);
 			break;
-		case Opt_gid:
+		case opt_gid:
 			if (match_int(&args[0], &option))
 				return 0;
 			opts->fs_gid = KGIDT_INIT(option);
 			break;
-		case Opt_umask:
-		case Opt_dmask:
-		case Opt_fmask:
+		case opt_umask:
+		case opt_dmask:
+		case opt_fmask:
 			if (match_octal(&args[0], &option))
 				return 0;
-			if (token != Opt_dmask)
+			if (token != opt_dmask)
 				opts->fs_fmask = option;
-			if (token != Opt_fmask)
+			if (token != opt_fmask)
 				opts->fs_dmask = option;
 			break;
-		case Opt_allow_utime:
+		case opt_allow_utime:
 			if (match_octal(&args[0], &option))
 				return 0;
 			opts->allow_utime = option & 0022;
 			break;
-		case Opt_codepage:
+		case opt_codepage:
 			if (match_int(&args[0], &option))
 				return 0;
 			opts->codepage = option;
 			break;
-		case Opt_charset:
+		case opt_charset:
 			if (opts->iocharset != exfat_default_iocharset)
 				kfree(opts->iocharset);
 			iocharset = match_strdup(&args[0]);
@@ -3733,29 +3733,29 @@ static int parse_options(char *options, int silent, int *debug,
 				return -ENOMEM;
 			opts->iocharset = iocharset;
 			break;
-		case Opt_namecase:
+		case opt_namecase:
 			if (match_int(&args[0], &option))
 				return 0;
 			opts->casesensitive = option;
 			break;
-		case Opt_err_cont:
+		case opt_err_cont:
 			opts->errors = EXFAT_ERRORS_CONT;
 			break;
-		case Opt_err_panic:
+		case opt_err_panic:
 			opts->errors = EXFAT_ERRORS_PANIC;
 			break;
-		case Opt_err_ro:
+		case opt_err_ro:
 			opts->errors = EXFAT_ERRORS_RO;
 			break;
-		case Opt_debug:
+		case opt_debug:
 			*debug = 1;
 			break;
 #ifdef CONFIG_EXFAT_DISCARD
-		case Opt_discard:
+		case opt_discard:
 			opts->discard = 1;
 			break;
 #endif /* CONFIG_EXFAT_DISCARD */
-		case Opt_utf8_hack:
+		case opt_utf8_hack:
 			break;
 		default:
 			if (!silent)
@@ -3786,7 +3786,7 @@ static int exfat_read_root(struct inode *inode)
 {
 	struct super_block *sb = inode->i_sb;
 	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
+	struct fs_info_t *p_fs = &sbi->fs_info;
 	struct dir_entry_t info;
 
 	EXFAT_I(inode)->fid.dir.dir = p_fs->root_dir;
@@ -3800,7 +3800,7 @@ static int exfat_read_root(struct inode *inode)
 
 	EXFAT_I(inode)->target = NULL;
 
-	ffsReadStat(inode, &info);
+	ffs_read_stat(inode, &info);
 
 	inode->i_uid = sbi->options.fs_uid;
 	inode->i_gid = sbi->options.fs_gid;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

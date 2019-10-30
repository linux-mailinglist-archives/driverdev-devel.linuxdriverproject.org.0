Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F01AE9460
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Oct 2019 02:04:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B2CD20519;
	Wed, 30 Oct 2019 01:04:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1zfKgCcm0kqk; Wed, 30 Oct 2019 01:04:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6540521FAD;
	Wed, 30 Oct 2019 01:04:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C1BFD1BF578
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 01:04:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE512828FA
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 01:04:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i-8r-pO3uIFx for <devel@linuxdriverproject.org>;
 Wed, 30 Oct 2019 01:04:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 66ED484854
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 01:04:45 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id t16so431102wrr.1
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 18:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=li8SYVVToKcm+GjqSDDEUh/SU9rEz3LNKXw3QLALBSo=;
 b=Gt2rZ0ZuHRTC11v4jrS0jDDFVvM49JObOsZwXYRRXHJ2lccEpTV1Db5NkC52LCYKJD
 JjpsEBSXx8H1U/7keajxiPAV63sjAGzBXpJzubhSmBfw/6AKwiiqS1WgqBJdxPqautm2
 /T/kOc9rAsRakBYN2LAN5VQOF2/qUsodpzYoC46Ch3C13HH1a1BseAwe5/5+CMVuAShK
 WFmHz9oVZM6wYqDrlAP+e2cRXa20xt5x/fllZd6uriwX1I2Ioa0OSd3SKgA8mWfobfej
 D97wYsfbAaZVVCLOPTBi1X4rgMAis8Xc79T0zRZEvSwCH4RoCYDKBi/R8w+x06saQWKF
 Qaaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=li8SYVVToKcm+GjqSDDEUh/SU9rEz3LNKXw3QLALBSo=;
 b=VlKNcJyF8xV1zNmzP8IQZrH5LLOnflqwWPWQvtP+NB/OU+IhzIxNjUqOSz3ioChUAq
 MOL7INAX/R4RggXPWVeu/7oDqBJLFpyhdCq7gg6Hdf0PAFoUk7FpR1F35XxoIRgTwpnf
 pYyB2ywYt3rR50BXaJMCciVcxgyN3YpeLrxIrBrEOnTT+GbJdteHBHjWdqa6D3wbLMDc
 UZlVy3xZhJ9W9y450MHrhH85zDMhv5+8zwlYYqgOnQKevZ7cBHu96n0J+wnR4yBkXLlE
 hFA9uEdgGtRN0tkIuCyB7I9CPrSXQWD8A2YH2Idraslqoyy9j4/JhUmvkMNowWkO3+zu
 l3HA==
X-Gm-Message-State: APjAAAXc5BKBWhyP3dp90wzS5juMKxwDOr5DXjpTKHfUlbDM4zz6Dzgi
 6nfou9Ine6y6mJm7bFcsFGY=
X-Google-Smtp-Source: APXvYqyQnFy4TkkmcYaw3ae4BHGKbcsZehMxLn7fLZS2Wjw1eoLt63kmMEBoIWWhxL78rQvVypgOnA==
X-Received: by 2002:adf:e28f:: with SMTP id v15mr6266169wri.130.1572397483621; 
 Tue, 29 Oct 2019 18:04:43 -0700 (PDT)
Received: from localhost ([92.177.95.83])
 by smtp.gmail.com with ESMTPSA id b66sm424565wmh.39.2019.10.29.18.04.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 18:04:43 -0700 (PDT)
From: Roi Martin <jroi.martin@gmail.com>
To: valdis.kletnieks@vt.edu
Subject: [PATCH 1/6] staging: exfat: remove unnecessary parentheses
Date: Wed, 30 Oct 2019 02:03:23 +0100
Message-Id: <20191030010328.10203-2-jroi.martin@gmail.com>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191030010328.10203-1-jroi.martin@gmail.com>
References: <20191030010328.10203-1-jroi.martin@gmail.com>
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
 linux-kernel@vger.kernel.org, Roi Martin <jroi.martin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch.pl warning:

	CHECK: Unnecessary parentheses around ...

Signed-off-by: Roi Martin <jroi.martin@gmail.com>
---
 drivers/staging/exfat/exfat_core.c  | 24 ++++++++--------
 drivers/staging/exfat/exfat_super.c | 44 ++++++++++++++---------------
 2 files changed, 34 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 79174e5c4145..d8f4fad732c4 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -550,7 +550,7 @@ s32 load_alloc_bitmap(struct super_block *sb)
 
 				for (j = 0; j < p_fs->map_sectors; j++) {
 					p_fs->vol_amap[j] = NULL;
-					ret = sector_read(sb, sector + j, &(p_fs->vol_amap[j]), 1);
+					ret = sector_read(sb, sector + j, &p_fs->vol_amap[j], 1);
 					if (ret != FFS_SUCCESS) {
 						/*  release all buffers and free vol_amap */
 						i = 0;
@@ -910,10 +910,10 @@ u32 fat_get_entry_type(struct dentry_t *p_entry)
 {
 	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
 
-	if (*(ep->name) == 0x0)
+	if (*ep->name == 0x0)
 		return TYPE_UNUSED;
 
-	else if (*(ep->name) == 0xE5)
+	else if (*ep->name == 0xE5)
 		return TYPE_DELETED;
 
 	else if (ep->attr == ATTR_EXTEND)
@@ -978,10 +978,10 @@ void fat_set_entry_type(struct dentry_t *p_entry, u32 type)
 	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
 
 	if (type == TYPE_UNUSED)
-		*(ep->name) = 0x0;
+		*ep->name = 0x0;
 
 	else if (type == TYPE_DELETED)
-		*(ep->name) = 0xE5;
+		*ep->name = 0xE5;
 
 	else if (type == TYPE_EXTEND)
 		ep->attr = ATTR_EXTEND;
@@ -1562,7 +1562,7 @@ void update_dir_checksum_with_entry_set(struct super_block *sb,
 	u16 chksum = 0;
 	s32 chksum_type = CS_DIR_ENTRY, i;
 
-	ep = (struct dentry_t *)&(es->__buf);
+	ep = (struct dentry_t *)&es->__buf;
 	for (i = 0; i < es->num_entries; i++) {
 		pr_debug("%s ep %p\n", __func__, ep);
 		chksum = calc_checksum_2byte((void *)ep, DENTRY_SIZE, chksum,
@@ -1571,7 +1571,7 @@ void update_dir_checksum_with_entry_set(struct super_block *sb,
 		chksum_type = CS_DEFAULT;
 	}
 
-	ep = (struct dentry_t *)&(es->__buf);
+	ep = (struct dentry_t *)&es->__buf;
 	SET16_A(((struct file_dentry_t *)ep)->checksum, chksum);
 	write_whole_entry_set(sb, es);
 }
@@ -1832,7 +1832,7 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 	}
 
 	if (file_ep)
-		*file_ep = (struct dentry_t *)&(es->__buf);
+		*file_ep = (struct dentry_t *)&es->__buf;
 
 	pr_debug("%s exiting es %p sec %llu offset %d flags %d, num_entries %u buf ptr %p\n",
 		   __func__, es, (unsigned long long)es->sector, es->offset,
@@ -1859,7 +1859,7 @@ static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 	u32 clu;
-	u8 *buf, *esbuf = (u8 *)&(es->__buf);
+	u8 *buf, *esbuf = (u8 *)&es->__buf;
 
 	pr_debug("%s entered es %p sec %llu off %d count %d\n",
 		__func__, es, (unsigned long long)sec, off, count);
@@ -1929,7 +1929,7 @@ s32 write_partial_entries_in_entry_set(struct super_block *sb,
 	struct chain_t dir;
 
 	/* vaidity check */
-	if (ep + count  > ((struct dentry_t *)&(es->__buf)) + es->num_entries)
+	if (ep + count  > ((struct dentry_t *)&es->__buf) + es->num_entries)
 		return FFS_ERROR;
 
 	dir.dir = GET_CLUSTER_FROM_SECTOR(es->sector);
@@ -1938,7 +1938,7 @@ s32 write_partial_entries_in_entry_set(struct super_block *sb,
 
 	byte_offset = (es->sector - START_SECTOR(dir.dir)) <<
 			p_bd->sector_size_bits;
-	byte_offset += ((void **)ep - &(es->__buf)) + es->offset;
+	byte_offset += ((void **)ep - &es->__buf) + es->offset;
 
 	ret = _walk_fat_chain(sb, &dir, byte_offset, &clu);
 	if (ret != FFS_SUCCESS)
@@ -2122,7 +2122,7 @@ s32 find_empty_entry(struct inode *inode, struct chain_t *p_dir, s32 num_entries
 				p_fs->fs_func->set_entry_flag(ep, p_dir->flags);
 				buf_modify(sb, sector);
 
-				update_dir_checksum(sb, &(fid->dir),
+				update_dir_checksum(sb, &fid->dir,
 						    fid->entry);
 			}
 		}
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 3b2b0ceb7297..aa0d492fc673 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1003,13 +1003,13 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 
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
@@ -1142,7 +1142,7 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
 			}
 		ep2 = ep + 1;
 	} else {
-		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
+		ep = get_entry_in_dir(sb, &fid->dir, fid->entry, &sector);
 		if (!ep) {
 			ret = FFS_MEDIAERR;
 			goto out;
@@ -1277,7 +1277,7 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 
 		update_parent_info(new_fid, new_parent_inode);
 
-		p_dir = &(new_fid->dir);
+		p_dir = &new_fid->dir;
 		new_entry = new_fid->entry;
 		ep = get_entry_in_dir(sb, p_dir, new_entry, NULL);
 		if (!ep)
@@ -1438,14 +1438,14 @@ static int ffsSetAttr(struct inode *inode, u32 attr)
 
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
@@ -1554,7 +1554,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 
 	/* get the directory entry of given file or directory */
 	if (p_fs->vol_type == EXFAT) {
-		es = get_entry_set_in_dir(sb, &(fid->dir), fid->entry,
+		es = get_entry_set_in_dir(sb, &fid->dir, fid->entry,
 					  ES_2_ENTRIES, &ep);
 		if (!es) {
 			ret = FFS_MEDIAERR;
@@ -1562,7 +1562,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 		}
 		ep2 = ep + 1;
 	} else {
-		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
+		ep = get_entry_in_dir(sb, &fid->dir, fid->entry, &sector);
 		if (!ep) {
 			ret = FFS_MEDIAERR;
 			goto out;
@@ -1594,11 +1594,11 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 
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
@@ -1678,7 +1678,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 
 	/* get the directory entry of given file or directory */
 	if (p_fs->vol_type == EXFAT) {
-		es = get_entry_set_in_dir(sb, &(fid->dir), fid->entry,
+		es = get_entry_set_in_dir(sb, &fid->dir, fid->entry,
 					  ES_ALL_ENTRIES, &ep);
 		if (!es) {
 			ret = FFS_MEDIAERR;
@@ -1687,7 +1687,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 		ep2 = ep + 1;
 	} else {
 		/* for other than exfat */
-		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
+		ep = get_entry_in_dir(sb, &fid->dir, fid->entry, &sector);
 		if (!ep) {
 			ret = FFS_MEDIAERR;
 			goto out;
@@ -1845,7 +1845,7 @@ static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
 		/* (3) update directory entry */
 		if (modified) {
 			if (p_fs->vol_type != EXFAT) {
-				ep = get_entry_in_dir(sb, &(fid->dir),
+				ep = get_entry_in_dir(sb, &fid->dir,
 						      fid->entry, &sector);
 				if (!ep) {
 					ret = FFS_MEDIAERR;
@@ -2058,7 +2058,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			memset((char *)&dir_entry->AccessTimestamp, 0,
 			       sizeof(struct date_time_t));
 
-			*(uni_name.name) = 0x0;
+			*uni_name.name = 0x0;
 			fs_func->get_uni_name_from_ext_entry(sb, &dir, dentry,
 							     uni_name.name);
 			if (*uni_name.name == 0x0 && p_fs->vol_type != EXFAT)
@@ -2116,7 +2116,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 		}
 	}
 
-	*(dir_entry->Name) = '\0';
+	*dir_entry->Name = '\0';
 
 	fid->rwoffset = (s64)(++dentry);
 
@@ -2202,7 +2202,7 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
 	struct inode *inode = file_inode(filp);
 	struct super_block *sb = inode->i_sb;
 	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
+	struct fs_info_t *p_fs = &sbi->fs_info;
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 	struct dir_entry_t de;
 	unsigned long inum;
@@ -2293,7 +2293,7 @@ static int exfat_ioctl_volume_id(struct inode *dir)
 {
 	struct super_block *sb = dir->i_sb;
 	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
+	struct fs_info_t *p_fs = &sbi->fs_info;
 
 	return p_fs->vol_id;
 }
@@ -2895,7 +2895,7 @@ static void exfat_truncate(struct inode *inode, loff_t old_size)
 {
 	struct super_block *sb = inode->i_sb;
 	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
+	struct fs_info_t *p_fs = &sbi->fs_info;
 	int err;
 
 	__lock_super(sb);
@@ -3073,8 +3073,8 @@ static int exfat_bmap(struct inode *inode, sector_t sector, sector_t *phys,
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
@@ -3302,7 +3302,7 @@ static struct inode *exfat_iget(struct super_block *sb, loff_t i_pos)
 static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
 {
 	struct exfat_sb_info *sbi = EXFAT_SB(inode->i_sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
+	struct fs_info_t *p_fs = &sbi->fs_info;
 	struct dir_entry_t info;
 
 	memcpy(&(EXFAT_I(inode)->fid), fid, sizeof(struct file_id_t));
@@ -3787,7 +3787,7 @@ static int exfat_read_root(struct inode *inode)
 {
 	struct super_block *sb = inode->i_sb;
 	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
+	struct fs_info_t *p_fs = &sbi->fs_info;
 	struct dir_entry_t info;
 
 	EXFAT_I(inode)->fid.dir.dir = p_fs->root_dir;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

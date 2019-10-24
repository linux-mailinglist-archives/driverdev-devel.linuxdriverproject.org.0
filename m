Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9CBE373A
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 17:55:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2481F8697C;
	Thu, 24 Oct 2019 15:55:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZcoNd_Fvndex; Thu, 24 Oct 2019 15:55:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADBDC86985;
	Thu, 24 Oct 2019 15:55:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E411B1BF297
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:55:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E139723042
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ufHc6mQUa0KI for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 15:55:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 08F9421567
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 15:55:11 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OFtBwb027420
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:55:11 -0400
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OFt6RX022580
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:55:11 -0400
Received: by mail-qk1-f200.google.com with SMTP id s14so23828709qkg.12
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 08:55:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=nb+zaH69rZ2vv6LW5V0ghKYRPCZfNpRd3twc+sLK+ck=;
 b=BDgFNeZ16nyvixmj/neMXs8sZNbMHtMbqc/RNei+9DoghGyuHD5fA9P9jXdHDmj39K
 BKmVOe+KkpEKCgkNrjsF1Sc9PmsyrTohDpRd6Nr1c3pNavYDjIBPIG1p9YYTIcR4Qbv5
 +nVY0scJuBSN2AoFlpcWTKZ1Gjv23HJVefm4eLMoDPVGhikA6MGuk4boMKltWvdMb290
 YOCIi2w6fQlAPm1FjBacI4qcvVIKqXMp6F0bDLZJbOeoTZJHgYQAC3qGI86/djWNBbaG
 EoP9jw8PGYY14Psj5a9hAaz4EhQh1/3M2cOFHx1j6ht/TOvrIldyJfsdhfgidvLzqomt
 ewQQ==
X-Gm-Message-State: APjAAAXD7eXVzer2biLcsQYUPs9KI7EMQJUYSFmtLZd5iVW23cfwhUJe
 ZzEXQiE2PdDvnz8Y4oYjkXzdsYU2vxectA6jbAhrZMox5ffZtO0mDlqR/VGY/JWZjydK+HutG7Y
 wJiQAtA4U/OrL86IJeFFO90KeByGQYhdH
X-Received: by 2002:ac8:29a5:: with SMTP id 34mr4810826qts.56.1571932505619;
 Thu, 24 Oct 2019 08:55:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwEI17TIk+snhmrmY1mMR3u8n5tf0u5Uf7fwT9JaMrJ9YXu47zb9Ab2Qy72vEyYO2069GBYRQ==
X-Received: by 2002:ac8:29a5:: with SMTP id 34mr4810752qts.56.1571932504851;
 Thu, 24 Oct 2019 08:55:04 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x133sm12693274qka.44.2019.10.24.08.55.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:55:03 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 15/15] staging: exfat: Clean up return codes - FFS_SUCCESS
Date: Thu, 24 Oct 2019 11:53:26 -0400
Message-Id: <20191024155327.1095907-16-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
References: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Just replace FFS_SUCCESS with a literal 0.

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       |  3 -
 drivers/staging/exfat/exfat_cache.c |  4 +-
 drivers/staging/exfat/exfat_core.c  | 90 ++++++++++++++---------------
 drivers/staging/exfat/exfat_super.c | 50 ++++++++--------
 4 files changed, 72 insertions(+), 75 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 819a21d72c67..3532879ca73e 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -208,9 +208,6 @@ static inline u16 get_row_index(u16 i)
 #define FM_REGULAR              0x00
 #define FM_SYMLINK              0x40
 
-/* return values */
-#define FFS_SUCCESS             0
-
 #define NUM_UPCASE              2918
 
 #define DOS_CUR_DIR_NAME        ".          "
diff --git a/drivers/staging/exfat/exfat_cache.c b/drivers/staging/exfat/exfat_cache.c
index e9ad0353b4e5..44383cc1c937 100644
--- a/drivers/staging/exfat/exfat_cache.c
+++ b/drivers/staging/exfat/exfat_cache.c
@@ -214,7 +214,7 @@ static u8 *FAT_getblk(struct super_block *sb, sector_t sec)
 
 	FAT_cache_insert_hash(sb, bp);
 
-	if (sector_read(sb, sec, &bp->buf_bh, 1) != FFS_SUCCESS) {
+	if (sector_read(sb, sec, &bp->buf_bh, 1) != 0) {
 		FAT_cache_remove_hash(bp);
 		bp->drv = -1;
 		bp->sec = ~0;
@@ -583,7 +583,7 @@ static u8 *__buf_getblk(struct super_block *sb, sector_t sec)
 
 	buf_cache_insert_hash(sb, bp);
 
-	if (sector_read(sb, sec, &bp->buf_bh, 1) != FFS_SUCCESS) {
+	if (sector_read(sb, sec, &bp->buf_bh, 1) != 0) {
 		buf_cache_remove_hash(bp);
 		bp->drv = -1;
 		bp->sec = ~0;
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 7efc5d08cada..3d01d0b9941b 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -102,7 +102,7 @@ void fs_set_vol_flags(struct super_block *sb, u32 new_flag)
 	if (p_fs->vol_type == EXFAT) {
 		if (!p_fs->pbr_bh) {
 			if (sector_read(sb, p_fs->PBR_sector,
-					&p_fs->pbr_bh, 1) != FFS_SUCCESS)
+					&p_fs->pbr_bh, 1) != 0)
 				return;
 		}
 
@@ -184,7 +184,7 @@ s32 load_alloc_bitmap(struct super_block *sb)
 				for (j = 0; j < p_fs->map_sectors; j++) {
 					p_fs->vol_amap[j] = NULL;
 					ret = sector_read(sb, sector + j, &(p_fs->vol_amap[j]), 1);
-					if (ret != FFS_SUCCESS) {
+					if (ret != 0) {
 						/*  release all buffers and free vol_amap */
 						i = 0;
 						while (i < j)
@@ -197,7 +197,7 @@ s32 load_alloc_bitmap(struct super_block *sb)
 				}
 
 				p_fs->pbr_bh = NULL;
-				return FFS_SUCCESS;
+				return 0;
 			}
 		}
 
@@ -332,7 +332,7 @@ static void sync_alloc_bitmap(struct super_block *sb)
 static s32 clear_cluster(struct super_block *sb, u32 clu)
 {
 	sector_t s, n;
-	s32 ret = FFS_SUCCESS;
+	s32 ret = 0;
 	struct buffer_head *tmp_bh = NULL;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
@@ -347,12 +347,12 @@ static s32 clear_cluster(struct super_block *sb, u32 clu)
 
 	for (; s < n; s++) {
 		ret = sector_read(sb, s, &tmp_bh, 0);
-		if (ret != FFS_SUCCESS)
+		if (ret != 0)
 			return ret;
 
 		memset((char *)tmp_bh->b_data, 0x0, p_bd->sector_size);
 		ret = sector_write(sb, s, tmp_bh, 0);
-		if (ret != FFS_SUCCESS)
+		if (ret != 0)
 			break;
 	}
 
@@ -390,7 +390,7 @@ static s32 exfat_alloc_cluster(struct super_block *sb, s32 num_alloc,
 			}
 		}
 
-		if (set_alloc_bitmap(sb, new_clu - 2) != FFS_SUCCESS)
+		if (set_alloc_bitmap(sb, new_clu - 2) != 0)
 			return -EIO;
 
 		num_clusters++;
@@ -468,7 +468,7 @@ static void exfat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
 					buf_release(sb, sector + i);
 			}
 
-			if (clr_alloc_bitmap(sb, clu - 2) != FFS_SUCCESS)
+			if (clr_alloc_bitmap(sb, clu - 2) != 0)
 				break;
 			clu++;
 
@@ -485,7 +485,7 @@ static void exfat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
 					buf_release(sb, sector + i);
 			}
 
-			if (clr_alloc_bitmap(sb, clu - 2) != FFS_SUCCESS)
+			if (clr_alloc_bitmap(sb, clu - 2) != 0)
 				break;
 
 			if (FAT_read(sb, clu, &clu) == -1)
@@ -609,7 +609,7 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 
 	while (sector < end_sector) {
 		ret = sector_read(sb, sector, &tmp_bh, 1);
-		if (ret != FFS_SUCCESS) {
+		if (ret != 0) {
 			pr_debug("sector read (0x%llX)fail\n",
 				 (unsigned long long)sector);
 			goto error;
@@ -660,7 +660,7 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 	if (index >= 0xFFFF && utbl_checksum == checksum) {
 		if (tmp_bh)
 			brelse(tmp_bh);
-		return FFS_SUCCESS;
+		return 0;
 	}
 	ret = -EINVAL;
 error:
@@ -721,7 +721,7 @@ static s32 __load_default_upcase_table(struct super_block *sb)
 	}
 
 	if (index >= 0xFFFF)
-		return FFS_SUCCESS;
+		return 0;
 
 error:
 	/* FATAL error: default upcase table has error */
@@ -766,9 +766,9 @@ s32 load_upcase_table(struct super_block *sb)
 			sector = START_SECTOR(tbl_clu);
 			num_sectors = ((tbl_size - 1) >> p_bd->sector_size_bits) + 1;
 			if (__load_upcase_table(sb, sector, num_sectors,
-						GET32_A(ep->checksum)) != FFS_SUCCESS)
+						GET32_A(ep->checksum)) != 0)
 				break;
-			return FFS_SUCCESS;
+			return 0;
 		}
 		if (FAT_read(sb, clu.dir, &clu.dir) != 0)
 			return -EIO;
@@ -844,7 +844,7 @@ static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
 	}
 
 	pr_debug("%s exited successfully\n", __func__);
-	return FFS_SUCCESS;
+	return 0;
 err_out:
 	pr_debug("%s failed\n", __func__);
 	return -EINVAL;
@@ -1266,7 +1266,7 @@ static s32 exfat_init_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 	init_strm_entry(strm_ep, flags, start_clu, size);
 	buf_modify(sb, sector);
 
-	return FFS_SUCCESS;
+	return 0;
 }
 
 static s32 exfat_init_ext_entry(struct super_block *sb, struct chain_t *p_dir,
@@ -1312,7 +1312,7 @@ static s32 exfat_init_ext_entry(struct super_block *sb, struct chain_t *p_dir,
 
 	update_dir_checksum(sb, p_dir, entry);
 
-	return FFS_SUCCESS;
+	return 0;
 }
 
 static void exfat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
@@ -1355,7 +1355,7 @@ static s32 _walk_fat_chain(struct super_block *sb, struct chain_t *p_dir,
 
 	if (clu)
 		*clu = cur_clu;
-	return FFS_SUCCESS;
+	return 0;
 }
 
 static s32 find_location(struct super_block *sb, struct chain_t *p_dir, s32 entry,
@@ -1374,7 +1374,7 @@ static s32 find_location(struct super_block *sb, struct chain_t *p_dir, s32 entr
 		*sector += p_fs->root_start_sector;
 	} else {
 		ret = _walk_fat_chain(sb, p_dir, off, &clu);
-		if (ret != FFS_SUCCESS)
+		if (ret != 0)
 			return ret;
 
 		/* byte offset in cluster */
@@ -1387,7 +1387,7 @@ static s32 find_location(struct super_block *sb, struct chain_t *p_dir, s32 entr
 		*sector = off >> p_bd->sector_size_bits;
 		*sector += START_SECTOR(clu);
 	}
-	return FFS_SUCCESS;
+	return 0;
 }
 
 struct dentry_t *get_entry_in_dir(struct super_block *sb, struct chain_t *p_dir,
@@ -1397,7 +1397,7 @@ struct dentry_t *get_entry_in_dir(struct super_block *sb, struct chain_t *p_dir,
 	sector_t sec;
 	u8 *buf;
 
-	if (find_location(sb, p_dir, entry, &sec, &off) != FFS_SUCCESS)
+	if (find_location(sb, p_dir, entry, &sec, &off) != 0)
 		return NULL;
 
 	buf = buf_getblk(sb, sec);
@@ -1451,7 +1451,7 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 
 	byte_offset = entry << DENTRY_SIZE_BITS;
 	ret = _walk_fat_chain(sb, p_dir, byte_offset, &clu);
-	if (ret != FFS_SUCCESS)
+	if (ret != 0)
 		return NULL;
 
 	/* byte offset in cluster */
@@ -1628,7 +1628,7 @@ static s32 find_empty_entry(struct inode *inode, struct chain_t *p_dir, s32 num_
 		if (ret < 1)
 			return -EIO;
 
-		if (clear_cluster(sb, clu.dir) != FFS_SUCCESS)
+		if (clear_cluster(sb, clu.dir) != 0)
 			return -EIO;
 
 		/* (2) append to the FAT chain */
@@ -2107,7 +2107,7 @@ static s32 fat_generate_dos_name(struct super_block *sb, struct chain_t *p_dir,
 	fat_attach_count_to_dos_name(p_dosname->name, count);
 
 	/* Now dos_name has DOS~????.EXT */
-	return FFS_SUCCESS;
+	return 0;
 }
 
 /* input  : dir, uni_name
@@ -2149,7 +2149,7 @@ s32 get_num_entries_and_dos_name(struct super_block *sb, struct chain_t *p_dir,
 
 	*entries = num_entries;
 
-	return FFS_SUCCESS;
+	return 0;
 }
 
 void get_uni_name_from_dos_entry(struct super_block *sb,
@@ -2269,7 +2269,7 @@ s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
 	p_dir->size = (s32)(fid->size >> p_fs->cluster_size_bits);
 	p_dir->flags = fid->flags;
 
-	return FFS_SUCCESS;
+	return 0;
 }
 
 /*
@@ -2347,7 +2347,7 @@ s32 exfat_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
 
 	p_fs->fs_func = &exfat_fs_func;
 
-	return FFS_SUCCESS;
+	return 0;
 }
 
 s32 create_dir(struct inode *inode, struct chain_t *p_dir,
@@ -2383,7 +2383,7 @@ s32 create_dir(struct inode *inode, struct chain_t *p_dir,
 		return -ENOSPC;
 
 	ret = clear_cluster(sb, clu.dir);
-	if (ret != FFS_SUCCESS)
+	if (ret != 0)
 		return ret;
 
 	if (p_fs->vol_type == EXFAT) {
@@ -2401,11 +2401,11 @@ s32 create_dir(struct inode *inode, struct chain_t *p_dir,
 
 		ret = fs_func->init_dir_entry(sb, &clu, 0, TYPE_DIR, clu.dir,
 					      0);
-		if (ret != FFS_SUCCESS)
+		if (ret != 0)
 			return ret;
 
 		ret = fs_func->init_ext_entry(sb, &clu, 0, 1, NULL, &dot_name);
-		if (ret != FFS_SUCCESS)
+		if (ret != 0)
 			return ret;
 
 		memcpy(dot_name.name, DOS_PAR_DIR_NAME, DOS_NAME_LENGTH);
@@ -2417,12 +2417,12 @@ s32 create_dir(struct inode *inode, struct chain_t *p_dir,
 			ret = fs_func->init_dir_entry(sb, &clu, 1, TYPE_DIR,
 						      p_dir->dir, 0);
 
-		if (ret != FFS_SUCCESS)
+		if (ret != 0)
 			return ret;
 
 		ret = p_fs->fs_func->init_ext_entry(sb, &clu, 1, 1, NULL,
 						    &dot_name);
-		if (ret != FFS_SUCCESS)
+		if (ret != 0)
 			return ret;
 	}
 
@@ -2430,12 +2430,12 @@ s32 create_dir(struct inode *inode, struct chain_t *p_dir,
 	/* make sub-dir entry in parent directory */
 	ret = fs_func->init_dir_entry(sb, p_dir, dentry, TYPE_DIR, clu.dir,
 				      size);
-	if (ret != FFS_SUCCESS)
+	if (ret != 0)
 		return ret;
 
 	ret = fs_func->init_ext_entry(sb, p_dir, dentry, num_entries, p_uniname,
 				      &dos_name);
-	if (ret != FFS_SUCCESS)
+	if (ret != 0)
 		return ret;
 
 	fid->dir.dir = p_dir->dir;
@@ -2452,7 +2452,7 @@ s32 create_dir(struct inode *inode, struct chain_t *p_dir,
 	fid->rwoffset = 0;
 	fid->hint_last_off = -1;
 
-	return FFS_SUCCESS;
+	return 0;
 }
 
 s32 create_file(struct inode *inode, struct chain_t *p_dir,
@@ -2480,12 +2480,12 @@ s32 create_file(struct inode *inode, struct chain_t *p_dir,
 	 */
 	ret = fs_func->init_dir_entry(sb, p_dir, dentry, TYPE_FILE | mode,
 				      CLUSTER_32(0), 0);
-	if (ret != FFS_SUCCESS)
+	if (ret != 0)
 		return ret;
 
 	ret = fs_func->init_ext_entry(sb, p_dir, dentry, num_entries, p_uniname,
 				      &dos_name);
-	if (ret != FFS_SUCCESS)
+	if (ret != 0)
 		return ret;
 
 	fid->dir.dir = p_dir->dir;
@@ -2502,7 +2502,7 @@ s32 create_file(struct inode *inode, struct chain_t *p_dir,
 	fid->rwoffset = 0;
 	fid->hint_last_off = -1;
 
-	return FFS_SUCCESS;
+	return 0;
 }
 
 void remove_file(struct inode *inode, struct chain_t *p_dir, s32 entry)
@@ -2610,7 +2610,7 @@ s32 rename_file(struct inode *inode, struct chain_t *p_dir, s32 oldentry,
 		ret = fs_func->init_ext_entry(sb, p_dir, newentry,
 					      num_new_entries, p_uniname,
 					      &dos_name);
-		if (ret != FFS_SUCCESS)
+		if (ret != 0)
 			return ret;
 
 		fs_func->delete_dir_entry(sb, p_dir, oldentry, 0,
@@ -2629,14 +2629,14 @@ s32 rename_file(struct inode *inode, struct chain_t *p_dir, s32 oldentry,
 		ret = fs_func->init_ext_entry(sb, p_dir, oldentry,
 					      num_new_entries, p_uniname,
 					      &dos_name);
-		if (ret != FFS_SUCCESS)
+		if (ret != 0)
 			return ret;
 
 		fs_func->delete_dir_entry(sb, p_dir, oldentry, num_new_entries,
 					  num_old_entries);
 	}
 
-	return FFS_SUCCESS;
+	return 0;
 }
 
 s32 move_file(struct inode *inode, struct chain_t *p_olddir, s32 oldentry,
@@ -2732,7 +2732,7 @@ s32 move_file(struct inode *inode, struct chain_t *p_olddir, s32 oldentry,
 
 	ret = fs_func->init_ext_entry(sb, p_newdir, newentry, num_new_entries,
 				      p_uniname, &dos_name);
-	if (ret != FFS_SUCCESS)
+	if (ret != 0)
 		return ret;
 
 	fs_func->delete_dir_entry(sb, p_olddir, oldentry, 0, num_old_entries);
@@ -2743,7 +2743,7 @@ s32 move_file(struct inode *inode, struct chain_t *p_olddir, s32 oldentry,
 
 	fid->entry = newentry;
 
-	return FFS_SUCCESS;
+	return 0;
 }
 
 /*
@@ -2766,7 +2766,7 @@ int sector_read(struct super_block *sb, sector_t sec, struct buffer_head **bh,
 
 	if (!p_fs->dev_ejected) {
 		ret = bdev_read(sb, sec, bh, 1, read);
-		if (ret != FFS_SUCCESS)
+		if (ret != 0)
 			p_fs->dev_ejected = 1;
 	}
 
@@ -2795,7 +2795,7 @@ int sector_write(struct super_block *sb, sector_t sec, struct buffer_head *bh,
 
 	if (!p_fs->dev_ejected) {
 		ret = bdev_write(sb, sec, bh, 1, sync);
-		if (ret != FFS_SUCCESS)
+		if (ret != 0)
 			p_fs->dev_ejected = 1;
 	}
 
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 0ce27a6babee..89462ac669c4 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -373,7 +373,7 @@ static int ffsMountVol(struct super_block *sb)
 		sb_set_blocksize(sb, p_bd->sector_size);
 
 	/* read Sector 0 */
-	if (sector_read(sb, 0, &tmp_bh, 1) != FFS_SUCCESS) {
+	if (sector_read(sb, 0, &tmp_bh, 1) != 0) {
 		ret = -EIO;
 		goto out;
 	}
@@ -446,7 +446,7 @@ static int ffsMountVol(struct super_block *sb)
 static int ffsUmountVol(struct super_block *sb)
 {
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	int err = FFS_SUCCESS;
+	int err = 0;
 
 	pr_info("[EXFAT] trying to unmount...\n");
 
@@ -487,7 +487,7 @@ static int ffsUmountVol(struct super_block *sb)
 
 static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
 {
-	int err = FFS_SUCCESS;
+	int err = 0;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
 	/* check the validity of pointer parameters */
@@ -517,7 +517,7 @@ static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
 
 static int ffsSyncVol(struct super_block *sb, bool do_sync)
 {
-	int err = FFS_SUCCESS;
+	int err = 0;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
 	/* acquire the lock for file system critical section */
@@ -768,13 +768,13 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 
 		if ((offset == 0) && (oneblkread == p_bd->sector_size)) {
 			if (sector_read(sb, LogSector, &tmp_bh, 1) !=
-			    FFS_SUCCESS)
+			    0)
 				goto err_out;
 			memcpy((char *)buffer + read_bytes,
 			       (char *)tmp_bh->b_data, (s32)oneblkread);
 		} else {
 			if (sector_read(sb, LogSector, &tmp_bh, 1) !=
-			    FFS_SUCCESS)
+			    0)
 				goto err_out;
 			memcpy((char *)buffer + read_bytes,
 			       (char *)tmp_bh->b_data + offset,
@@ -844,7 +844,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 	if (count == 0) {
 		if (wcount)
 			*wcount = 0;
-		ret = FFS_SUCCESS;
+		ret = 0;
 		goto out;
 	}
 
@@ -953,12 +953,12 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 
 		if ((offset == 0) && (oneblkwrite == p_bd->sector_size)) {
 			if (sector_read(sb, LogSector, &tmp_bh, 0) !=
-			    FFS_SUCCESS)
+			    0)
 				goto err_out;
 			memcpy((char *)tmp_bh->b_data,
 			       (char *)buffer + write_bytes, (s32)oneblkwrite);
 			if (sector_write(sb, LogSector, tmp_bh, 0) !=
-			    FFS_SUCCESS) {
+			    0) {
 				brelse(tmp_bh);
 				goto err_out;
 			}
@@ -966,18 +966,18 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 			if ((offset > 0) ||
 			    ((fid->rwoffset + oneblkwrite) < fid->size)) {
 				if (sector_read(sb, LogSector, &tmp_bh, 1) !=
-				    FFS_SUCCESS)
+				    0)
 					goto err_out;
 			} else {
 				if (sector_read(sb, LogSector, &tmp_bh, 0) !=
-				    FFS_SUCCESS)
+				    0)
 					goto err_out;
 			}
 
 			memcpy((char *)tmp_bh->b_data + offset,
 			       (char *)buffer + write_bytes, (s32)oneblkwrite);
 			if (sector_write(sb, LogSector, tmp_bh, 0) !=
-			    FFS_SUCCESS) {
+			    0) {
 				brelse(tmp_bh);
 				goto err_out;
 			}
@@ -1091,7 +1091,7 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
 	}
 
 	if (old_size <= new_size) {
-		ret = FFS_SUCCESS;
+		ret = 0;
 		goto out;
 	}
 
@@ -1310,7 +1310,7 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 		ret = move_file(new_parent_inode, &olddir, dentry, &newdir,
 				&uni_name, fid);
 
-	if ((ret == FFS_SUCCESS) && new_inode) {
+	if ((ret == 0) && new_inode) {
 		/* delete entries of new_dir */
 		ep = get_entry_in_dir(sb, p_dir, new_entry, NULL);
 		if (!ep)
@@ -1341,7 +1341,7 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
 {
 	s32 dentry;
-	int ret = FFS_SUCCESS;
+	int ret = 0;
 	struct chain_t dir, clu_to_free;
 	struct dentry_t *ep;
 	struct super_block *sb = inode->i_sb;
@@ -1405,7 +1405,7 @@ static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
 static int ffsSetAttr(struct inode *inode, u32 attr)
 {
 	u32 type;
-	int ret = FFS_SUCCESS;
+	int ret = 0;
 	sector_t sector = 0;
 	struct dentry_t *ep;
 	struct super_block *sb = inode->i_sb;
@@ -1417,7 +1417,7 @@ static int ffsSetAttr(struct inode *inode, u32 attr)
 	if (fid->attr == attr) {
 		if (p_fs->dev_ejected)
 			return -EIO;
-		return FFS_SUCCESS;
+		return 0;
 	}
 
 	if (is_dir) {
@@ -1425,7 +1425,7 @@ static int ffsSetAttr(struct inode *inode, u32 attr)
 		    (fid->entry == -1)) {
 			if (p_fs->dev_ejected)
 				return -EIO;
-			return FFS_SUCCESS;
+			return 0;
 		}
 	}
 
@@ -1494,7 +1494,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 {
 	sector_t sector = 0;
 	s32 count;
-	int ret = FFS_SUCCESS;
+	int ret = 0;
 	struct chain_t dir;
 	struct uni_name_t uni_name;
 	struct timestamp_t tm;
@@ -1646,7 +1646,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 {
 	sector_t sector = 0;
-	int ret = FFS_SUCCESS;
+	int ret = 0;
 	struct timestamp_t tm;
 	struct dentry_t *ep, *ep2;
 	struct entry_set_cache_t *es = NULL;
@@ -1665,7 +1665,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 		    (fid->entry == -1)) {
 			if (p_fs->dev_ejected)
 				ret = -EIO;
-			ret = FFS_SUCCESS;
+			ret = 0;
 			goto out;
 		}
 	}
@@ -1736,7 +1736,7 @@ static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
 	s32 num_clusters, num_alloced;
 	bool modified = false;
 	u32 last_clu;
-	int ret = FFS_SUCCESS;
+	int ret = 0;
 	sector_t sector = 0;
 	struct chain_t new_clu;
 	struct dentry_t *ep;
@@ -1889,7 +1889,7 @@ static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
 
 static int ffsCreateDir(struct inode *inode, char *path, struct file_id_t *fid)
 {
-	int ret = FFS_SUCCESS;
+	int ret = 0;
 	struct chain_t dir;
 	struct uni_name_t uni_name;
 	struct super_block *sb = inode->i_sb;
@@ -1930,7 +1930,7 @@ static int ffsCreateDir(struct inode *inode, char *path, struct file_id_t *fid)
 static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 {
 	int i, dentry, clu_offset;
-	int ret = FFS_SUCCESS;
+	int ret = 0;
 	s32 dentries_per_clu, dentries_per_clu_bits = 0;
 	u32 type;
 	sector_t sector;
@@ -2129,7 +2129,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
 {
 	s32 dentry;
-	int ret = FFS_SUCCESS;
+	int ret = 0;
 	struct chain_t dir, clu_to_free;
 	struct super_block *sb = inode->i_sb;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

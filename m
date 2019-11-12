Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C912FF9BA4
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 22:13:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 15D3085785;
	Tue, 12 Nov 2019 21:13:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nAl0rDsKNH81; Tue, 12 Nov 2019 21:13:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF20585775;
	Tue, 12 Nov 2019 21:13:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EF3AE1BF404
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D10C6203F2
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l7wWEYG2dbL1 for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 21:13:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 48C5920368
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 21:13:12 +0000 (UTC)
Received: from mr1.cc.vt.edu (mr1.cc.vt.edu
 [IPv6:2607:b400:92:8300:0:31:1732:8aa4])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xACLDBcT029466
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:11 -0500
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70])
 by mr1.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xACLD6si020694
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:11 -0500
Received: by mail-qv1-f70.google.com with SMTP id n10so6359030qvr.22
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 13:13:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=TMs8EqizOmcbL5afEJ4pYIbimEUxR6OYXves9AYPvSE=;
 b=KLxr6TN10C2dA4ErCbnb+Kvb0uBWINLnQKUeC8i6743P0e9yxfhLGbbIwfkf8k+ckg
 dmDtWDoOkehn5OY+Tt9JoHaWjeANmnw+xw1Du9/hSDE3PtKFv9y/DztOCfWiZKJbDmv9
 ERQk/AbhzZOYMhJ/WTfscbFBqO0aWRZ71SfBexfJyG0hItwbhZG+OG4OE2viNeVKwFYC
 2DHP/ZTP2pj31HdHeU7+QfdAJXGO0Xe4NTuKJS8u1Sn2Un0euGlO3xwa0tgLhyhD+1nO
 Sd4RziQYDxk4d9nf3RYmDFVd6QYYoa+XBNnFM5xLiMBlWf0a187oRqxUpmwb7S0zyweA
 qbBQ==
X-Gm-Message-State: APjAAAW/TaJSpSA3TRS2+/lmnKYbgo2qxMoq4FCplvsQSxl7EICFDXnY
 Vl4oGtpydXXy3mIUUtc7bUJp3tPWhin7joX3Feyy6ea2TH4uEMfT1QicZmVj1qbHEfmeLvt5Gt9
 04GM6ZtRoWYhws2VEWyTvgtQHHXSsGI45
X-Received: by 2002:aed:36a1:: with SMTP id f30mr33552682qtb.154.1573593185373; 
 Tue, 12 Nov 2019 13:13:05 -0800 (PST)
X-Google-Smtp-Source: APXvYqwMIzBc7/V6/Sa0fznfG8MW9/AqSpNPbu3O0+gx6/O116Gln8e/aT+JIJORaBahR9LjgiElOQ==
X-Received: by 2002:aed:36a1:: with SMTP id f30mr33552655qtb.154.1573593184966; 
 Tue, 12 Nov 2019 13:13:04 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 130sm9674214qkd.33.2019.11.12.13.13.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 13:13:03 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: 
Subject: [PATCH 01/12] staging: exfat: Remove FAT/VFAT mount support, part 1
Date: Tue, 12 Nov 2019 16:12:27 -0500
Message-Id: <20191112211238.156490-2-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112211238.156490-1-Valdis.Kletnieks@vt.edu>
References: <20191112211238.156490-1-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove the top-level mount functionality, to make this driver handle
only exfat file systems.

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/Kconfig       |   9 --
 drivers/staging/exfat/exfat.h       |   2 -
 drivers/staging/exfat/exfat_core.c  | 193 ----------------------------
 drivers/staging/exfat/exfat_super.c |   8 +-
 4 files changed, 1 insertion(+), 211 deletions(-)

diff --git a/drivers/staging/exfat/Kconfig b/drivers/staging/exfat/Kconfig
index ce32dfe33bec..0130019cbec2 100644
--- a/drivers/staging/exfat/Kconfig
+++ b/drivers/staging/exfat/Kconfig
@@ -6,15 +6,6 @@ config EXFAT_FS
 	help
 	  This adds support for the exFAT file system.
 
-config EXFAT_DONT_MOUNT_VFAT
-	bool "Prohibit mounting of fat/vfat filesystems by exFAT"
-	depends on EXFAT_FS
-	default y
-	help
-	  By default, the exFAT driver will only mount exFAT filesystems, and refuse
-	  to mount fat/vfat filesystems.  Set this to 'n' to allow the exFAT driver
-	  to mount these filesystems.
-
 config EXFAT_DISCARD
 	bool "enable discard support"
 	depends on EXFAT_FS
diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 72cf40e123de..68f79e13af2b 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -915,8 +915,6 @@ s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
 s32 resolve_name(u8 *name, u8 **arg);
 
 /* file operation functions */
-s32 fat16_mount(struct super_block *sb, struct pbr_sector_t *p_pbr);
-s32 fat32_mount(struct super_block *sb, struct pbr_sector_t *p_pbr);
 s32 exfat_mount(struct super_block *sb, struct pbr_sector_t *p_pbr);
 s32 create_dir(struct inode *inode, struct chain_t *p_dir,
 	       struct uni_name_t *p_uniname, struct file_id_t *fid);
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 1f0ef94bdd47..89bed7460162 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -1284,57 +1284,6 @@ s32 exfat_init_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 	return 0;
 }
 
-static s32 fat_init_ext_entry(struct super_block *sb, struct chain_t *p_dir,
-			      s32 entry, s32 num_entries,
-			      struct uni_name_t *p_uniname,
-			      struct dos_name_t *p_dosname)
-{
-	int i;
-	sector_t sector;
-	u8 chksum;
-	u16 *uniname = p_uniname->name;
-	struct dos_dentry_t *dos_ep;
-	struct ext_dentry_t *ext_ep;
-
-	dos_ep = (struct dos_dentry_t *)get_entry_in_dir(sb, p_dir, entry,
-							 &sector);
-	if (!dos_ep)
-		return -EIO;
-
-	dos_ep->lcase = p_dosname->name_case;
-	memcpy(dos_ep->name, p_dosname->name, DOS_NAME_LENGTH);
-	buf_modify(sb, sector);
-
-	if ((--num_entries) > 0) {
-		chksum = calc_checksum_1byte((void *)dos_ep->name,
-					     DOS_NAME_LENGTH, 0);
-
-		for (i = 1; i < num_entries; i++) {
-			ext_ep = (struct ext_dentry_t *)get_entry_in_dir(sb,
-									 p_dir,
-									 entry - i,
-									 &sector);
-			if (!ext_ep)
-				return -EIO;
-
-			init_ext_entry(ext_ep, i, chksum, uniname);
-			buf_modify(sb, sector);
-			uniname += 13;
-		}
-
-		ext_ep = (struct ext_dentry_t *)get_entry_in_dir(sb, p_dir,
-								 entry - i,
-								 &sector);
-		if (!ext_ep)
-			return -EIO;
-
-		init_ext_entry(ext_ep, i + 0x40, chksum, uniname);
-		buf_modify(sb, sector);
-	}
-
-	return 0;
-}
-
 static s32 exfat_init_ext_entry(struct super_block *sb, struct chain_t *p_dir,
 				s32 entry, s32 num_entries,
 				struct uni_name_t *p_uniname,
@@ -2981,148 +2930,6 @@ s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
 /*
  *  File Operation Functions
  */
-static struct fs_func fat_fs_func = {
-	.alloc_cluster = fat_alloc_cluster,
-	.free_cluster = fat_free_cluster,
-	.count_used_clusters = fat_count_used_clusters,
-
-	.init_dir_entry = fat_init_dir_entry,
-	.init_ext_entry = fat_init_ext_entry,
-	.find_dir_entry = fat_find_dir_entry,
-	.delete_dir_entry = fat_delete_dir_entry,
-	.get_uni_name_from_ext_entry = fat_get_uni_name_from_ext_entry,
-	.count_ext_entries = fat_count_ext_entries,
-	.calc_num_entries = fat_calc_num_entries,
-
-	.get_entry_type = fat_get_entry_type,
-	.set_entry_type = fat_set_entry_type,
-	.get_entry_attr = fat_get_entry_attr,
-	.set_entry_attr = fat_set_entry_attr,
-	.get_entry_flag = fat_get_entry_flag,
-	.set_entry_flag = fat_set_entry_flag,
-	.get_entry_clu0 = fat_get_entry_clu0,
-	.set_entry_clu0 = fat_set_entry_clu0,
-	.get_entry_size = fat_get_entry_size,
-	.set_entry_size = fat_set_entry_size,
-	.get_entry_time = fat_get_entry_time,
-	.set_entry_time = fat_set_entry_time,
-};
-
-s32 fat16_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
-{
-	s32 num_reserved, num_root_sectors;
-	struct bpb16_t *p_bpb = (struct bpb16_t *)p_pbr->bpb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	if (p_bpb->num_fats == 0)
-		return -EFSCORRUPTED;
-
-	num_root_sectors = GET16(p_bpb->num_root_entries) << DENTRY_SIZE_BITS;
-	num_root_sectors = ((num_root_sectors - 1) >>
-			    p_bd->sector_size_bits) + 1;
-
-	p_fs->sectors_per_clu = p_bpb->sectors_per_clu;
-	p_fs->sectors_per_clu_bits = ilog2(p_bpb->sectors_per_clu);
-	p_fs->cluster_size_bits = p_fs->sectors_per_clu_bits +
-				  p_bd->sector_size_bits;
-	p_fs->cluster_size = 1 << p_fs->cluster_size_bits;
-
-	p_fs->num_FAT_sectors = GET16(p_bpb->num_fat_sectors);
-
-	p_fs->FAT1_start_sector = p_fs->PBR_sector + GET16(p_bpb->num_reserved);
-	if (p_bpb->num_fats == 1)
-		p_fs->FAT2_start_sector = p_fs->FAT1_start_sector;
-	else
-		p_fs->FAT2_start_sector = p_fs->FAT1_start_sector +
-					  p_fs->num_FAT_sectors;
-
-	p_fs->root_start_sector = p_fs->FAT2_start_sector +
-				  p_fs->num_FAT_sectors;
-	p_fs->data_start_sector = p_fs->root_start_sector + num_root_sectors;
-
-	p_fs->num_sectors = GET16(p_bpb->num_sectors);
-	if (p_fs->num_sectors == 0)
-		p_fs->num_sectors = GET32(p_bpb->num_huge_sectors);
-
-	num_reserved = p_fs->data_start_sector - p_fs->PBR_sector;
-	p_fs->num_clusters = ((p_fs->num_sectors - num_reserved) >>
-			      p_fs->sectors_per_clu_bits) + 2;
-	/* because the cluster index starts with 2 */
-
-	if (p_fs->num_clusters < FAT12_THRESHOLD)
-		p_fs->vol_type = FAT12;
-	else
-		p_fs->vol_type = FAT16;
-	p_fs->vol_id = GET32(p_bpb->vol_serial);
-
-	p_fs->root_dir = 0;
-	p_fs->dentries_in_root = GET16(p_bpb->num_root_entries);
-	p_fs->dentries_per_clu = 1 << (p_fs->cluster_size_bits -
-				       DENTRY_SIZE_BITS);
-
-	p_fs->vol_flag = VOL_CLEAN;
-	p_fs->clu_srch_ptr = 2;
-	p_fs->used_clusters = UINT_MAX;
-
-	p_fs->fs_func = &fat_fs_func;
-
-	return 0;
-}
-
-s32 fat32_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
-{
-	s32 num_reserved;
-	struct bpb32_t *p_bpb = (struct bpb32_t *)p_pbr->bpb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	if (p_bpb->num_fats == 0)
-		return -EFSCORRUPTED;
-
-	p_fs->sectors_per_clu = p_bpb->sectors_per_clu;
-	p_fs->sectors_per_clu_bits = ilog2(p_bpb->sectors_per_clu);
-	p_fs->cluster_size_bits = p_fs->sectors_per_clu_bits +
-				  p_bd->sector_size_bits;
-	p_fs->cluster_size = 1 << p_fs->cluster_size_bits;
-
-	p_fs->num_FAT_sectors = GET32(p_bpb->num_fat32_sectors);
-
-	p_fs->FAT1_start_sector = p_fs->PBR_sector + GET16(p_bpb->num_reserved);
-	if (p_bpb->num_fats == 1)
-		p_fs->FAT2_start_sector = p_fs->FAT1_start_sector;
-	else
-		p_fs->FAT2_start_sector = p_fs->FAT1_start_sector +
-					  p_fs->num_FAT_sectors;
-
-	p_fs->root_start_sector = p_fs->FAT2_start_sector +
-				  p_fs->num_FAT_sectors;
-	p_fs->data_start_sector = p_fs->root_start_sector;
-
-	p_fs->num_sectors = GET32(p_bpb->num_huge_sectors);
-	num_reserved = p_fs->data_start_sector - p_fs->PBR_sector;
-
-	p_fs->num_clusters = ((p_fs->num_sectors - num_reserved) >>
-			      p_fs->sectors_per_clu_bits) + 2;
-	/* because the cluster index starts with 2 */
-
-	p_fs->vol_type = FAT32;
-	p_fs->vol_id = GET32(p_bpb->vol_serial);
-
-	p_fs->root_dir = GET32(p_bpb->root_cluster);
-	p_fs->dentries_in_root = 0;
-	p_fs->dentries_per_clu = 1 << (p_fs->cluster_size_bits -
-				       DENTRY_SIZE_BITS);
-
-	p_fs->vol_flag = VOL_CLEAN;
-	p_fs->clu_srch_ptr = 2;
-	p_fs->used_clusters = UINT_MAX;
-
-	p_fs->fs_func = &fat_fs_func;
-
-	return 0;
-}
-
 static struct fs_func exfat_fs_func = {
 	.alloc_cluster = exfat_alloc_cluster,
 	.free_cluster = exfat_free_cluster,
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index e2254d45ef6e..10e0a75765d9 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -396,16 +396,10 @@ static int ffsMountVol(struct super_block *sb)
 			break;
 
 	if (i < 53) {
-#ifdef CONFIG_EXFAT_DONT_MOUNT_VFAT
+		/* Not sure how we'd get here, but complain if it does */
 		ret = -EINVAL;
 		pr_info("EXFAT: Attempted to mount VFAT filesystem\n");
 		goto out;
-#else
-		if (GET16(p_pbr->bpb + 11)) /* num_fat_sectors */
-			ret = fat16_mount(sb, p_pbr);
-		else
-			ret = fat32_mount(sb, p_pbr);
-#endif
 	} else {
 		ret = exfat_mount(sb, p_pbr);
 	}
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

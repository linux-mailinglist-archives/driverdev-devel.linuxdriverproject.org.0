Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E32E4E1198
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 07:28:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77E4B8815F;
	Wed, 23 Oct 2019 05:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UL-3LyC10AqW; Wed, 23 Oct 2019 05:28:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C019288035;
	Wed, 23 Oct 2019 05:28:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A5F9A1BF863
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 05:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A2B872040C
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 05:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N-ytxGKwoirm for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 05:28:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 5480A20426
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 05:28:28 +0000 (UTC)
Received: from mr1.cc.vt.edu (mr1.cc.vt.edu
 [IPv6:2607:b400:92:8300:0:31:1732:8aa4])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9N5SRvk019985
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 01:28:27 -0400
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mr1.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9N5SMd3006844
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 01:28:27 -0400
Received: by mail-qt1-f198.google.com with SMTP id 44so13649735qtu.20
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 22:28:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=MqAbiLur5D+uHRypbIqnaB77RhB+Sc+h3HCzI8vBmBo=;
 b=rI9/J4hYcbKks9LEvE3y2lGuoq0vFFV9LiN2y1hGpjTeaviYDWkjr3+VlVOSF5S8n8
 ADkHVv5H7dOTjuX4lq7zahJ0Cx1YqsPu5dgdOyU0EBGRSvwe3QxABC26AVA/pxbSY9Dz
 QIuuXWwDewM114Md9zkEawpms/E9g/nD9zvZAKukHYX9DvHbjl7CX7iP2YNtCBQkJCjp
 +8cYEXEfhEljUug3A7zbl4UnZi3RrqIfKxwV/Cdb5bGli1RcXpanNqcRd8E1BE4j5Def
 H93zkWmivEkYEuvyi+FEBWVi0Qjn5PlO4hbDVKilIg7Xld0hN47ov1/o6D6+DwBUpsq9
 2uPA==
X-Gm-Message-State: APjAAAXvMVVdGEoX7hU0R3MRBRje02uCKEIRJ4O+Vpmb40pfjsJ8WuWY
 KWkVFmWpHHTDYwRKoMYh9tznLyveJ/UQM+QCDskWQBMh0NxdVHw19l8UyuoVnbY+IUefSYCvqpz
 QD9E0OZ58hV5D8vYHmzSvd5AS/sVSX7fX
X-Received: by 2002:ac8:4656:: with SMTP id f22mr7280159qto.154.1571808501482; 
 Tue, 22 Oct 2019 22:28:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxZvkG+dshyYHrPEOmZevnuiQhqYv0WRghnxRFA7+eghHmtEmvEoAeToM1QjGH3Vgj+KQqdng==
X-Received: by 2002:ac8:4656:: with SMTP id f22mr7280145qto.154.1571808501087; 
 Tue, 22 Oct 2019 22:28:21 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 14sm10397445qtb.54.2019.10.22.22.28.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 22:28:19 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Valdis.Kletnieks@vt.edu
Subject: [PATCH 2/8] staging: exfat: Remove FAT/VFAT mount support, part 1
Date: Wed, 23 Oct 2019 01:27:45 -0400
Message-Id: <20191023052752.693689-3-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191023052752.693689-1-Valdis.Kletnieks@vt.edu>
References: <20191023052752.693689-1-Valdis.Kletnieks@vt.edu>
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

Remove the top-level mount functionality, to make this driver handle
only exfat file systems.

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/Kconfig       |   9 --
 drivers/staging/exfat/exfat.h       |   2 -
 drivers/staging/exfat/exfat_core.c  | 142 ----------------------------
 drivers/staging/exfat/exfat_super.c |   8 +-
 4 files changed, 1 insertion(+), 160 deletions(-)

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
index 0c779c8dd858..c2db3e9e9785 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -935,8 +935,6 @@ s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
 static s32 resolve_name(u8 *name, u8 **arg);
 
 /* file operation functions */
-static s32 fat16_mount(struct super_block *sb, struct pbr_sector_t *p_pbr);
-static s32 fat32_mount(struct super_block *sb, struct pbr_sector_t *p_pbr);
 s32 exfat_mount(struct super_block *sb, struct pbr_sector_t *p_pbr);
 s32 create_dir(struct inode *inode, struct chain_t *p_dir,
 	       struct uni_name_t *p_uniname, struct file_id_t *fid);
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 0260e4fe3762..fd481b21f8b6 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -2980,148 +2980,6 @@ s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
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
-static s32 fat16_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
-{
-	s32 num_reserved, num_root_sectors;
-	struct bpb16_t *p_bpb = (struct bpb16_t *)p_pbr->bpb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	if (p_bpb->num_fats == 0)
-		return FFS_FORMATERR;
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
-	return FFS_SUCCESS;
-}
-
-static s32 fat32_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
-{
-	s32 num_reserved;
-	struct bpb32_t *p_bpb = (struct bpb32_t *)p_pbr->bpb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	if (p_bpb->num_fats == 0)
-		return FFS_FORMATERR;
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
-	return FFS_SUCCESS;
-}
-
 static struct fs_func exfat_fs_func = {
 	.alloc_cluster = exfat_alloc_cluster,
 	.free_cluster = exfat_free_cluster,
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 86ace780a60b..0264be92c2be 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -394,16 +394,10 @@ static int ffsMountVol(struct super_block *sb)
 			break;
 
 	if (i < 53) {
-#ifdef CONFIG_EXFAT_DONT_MOUNT_VFAT
+		/* Not sure how we'd get here, but complain if it does */
 		ret = -EINVAL;
 		printk(KERN_INFO "EXFAT: Attempted to mount VFAT filesystem\n");
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
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

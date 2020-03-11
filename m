Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A6C181635
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 11:53:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3131872B3;
	Wed, 11 Mar 2020 10:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 55GOqNwK7jmw; Wed, 11 Mar 2020 10:53:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1082A871F6;
	Wed, 11 Mar 2020 10:52:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AD8171BF313
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 10:52:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AAF5B871F6
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 10:52:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qHXhDM-gWMXK for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 10:52:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx06.melco.co.jp (mx06.melco.co.jp [192.218.140.146])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4E0A787184
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 10:52:51 +0000 (UTC)
Received: from mr06.melco.co.jp (mr06 [133.141.98.164])
 by mx06.melco.co.jp (Postfix) with ESMTP id 9C0353A4424;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from mr06.melco.co.jp (unknown [127.0.0.1])
 by mr06.imss (Postfix) with ESMTP id 48cphK3sl5zRk4t;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from mf03_second.melco.co.jp (unknown [192.168.20.183])
 by mr06.melco.co.jp (Postfix) with ESMTP id 48cphK3YxrzRjys;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from mf03.melco.co.jp (unknown [133.141.98.183])
 by mf03_second.melco.co.jp (Postfix) with ESMTP id 48cphK3Yn6zRkBS;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from tux532.tad.melco.co.jp (unknown [133.141.243.226])
 by mf03.melco.co.jp (Postfix) with ESMTP id 48cphK35pBzRk9Z;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from tux532.tad.melco.co.jp
 by tux532.tad.melco.co.jp (unknown) with ESMTP id 02BAqnIb028966;
 Wed, 11 Mar 2020 19:52:49 +0900
Received: from tux390.tad.melco.co.jp (tux390.tad.melco.co.jp [127.0.0.1])
 by postfix.imss70 (Postfix) with ESMTP id 2DD5917E075;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from tux554.tad.melco.co.jp (mailgw1.tad.melco.co.jp [10.168.7.223])
 by tux390.tad.melco.co.jp (Postfix) with ESMTP id 2155C17E073;
 Wed, 11 Mar 2020 19:52:49 +0900 (JST)
Received: from tux554.tad.melco.co.jp
 by tux554.tad.melco.co.jp (unknown) with ESMTP id 02BAqm0v017644;
 Wed, 11 Mar 2020 19:52:49 +0900
From: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
To: Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp
Subject: [PATCH 3/5] staging: exfat: consolidate boot sector analysis
Date: Wed, 11 Mar 2020 19:52:43 +0900
Message-Id: <20200311105245.125564-3-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311105245.125564-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
References: <20200311105245.125564-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
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

Consolidate boot sector analysis into read_boot_sector().

 - Move boot sector analysis from exfat_mount() to read_boot_sector().
 - Fix num_fats check in read_boot_sector().
 - Consolidate p_fs->boot_bh initialization/release into mount/umount.

This fixes vol_flags inconsistency at read failed in fs_set_vol_flags(),
and tmp_bh leak in exfat_mount(). :-)

Reviewed-by: Takahiro Mori <Mori.Takahiro@ab.MitsubishiElectric.co.jp>
Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
---
 drivers/staging/exfat/exfat_core.c | 106 ++++++++++++-----------------
 1 file changed, 45 insertions(+), 61 deletions(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 2d88ce85217c..3faa7f35c77c 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -89,11 +89,6 @@ void fs_set_vol_flags(struct super_block *sb, u32 new_flag)
 
 	p_fs->vol_flag = new_flag;
 
-	if (!p_fs->boot_bh) {
-		if (sector_read(sb, 0, &p_fs->boot_bh, 1) != 0)
-			return;
-	}
-
 	p_boot = (struct boot_sector_t *)p_fs->boot_bh->b_data;
 	p_boot->vol_flags = cpu_to_le16(new_flag);
 
@@ -531,8 +526,6 @@ static s32 load_alloc_bitmap(struct super_block *sb)
 						return ret;
 					}
 				}
-
-				p_fs->boot_bh = NULL;
 				return 0;
 			}
 		}
@@ -549,9 +542,7 @@ static void free_alloc_bitmap(struct super_block *sb)
 	int i;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
-	brelse(p_fs->boot_bh);
-
-	for (i = 0; i < p_fs->map_sectors; i++)
+	for (i = 0; i < p_fs->map_sectors && p_fs->vol_amap; i++)
 		__brelse(p_fs->vol_amap[i]);
 
 	kfree(p_fs->vol_amap);
@@ -763,7 +754,7 @@ static void free_upcase_table(struct super_block *sb)
 	u16 **upcase_table;
 
 	upcase_table = p_fs->vol_utbl;
-	for (i = 0; i < UTBL_COL_COUNT; i++)
+	for (i = 0; i < UTBL_COL_COUNT && upcase_table; i++)
 		kfree(upcase_table[i]);
 
 	kfree(p_fs->vol_utbl);
@@ -2062,15 +2053,31 @@ s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
 	return 0;
 }
 
-static s32 read_boot_sector(struct super_block *sb,
-			    struct boot_sector_t *p_boot)
+static int read_boot_sector(struct super_block *sb)
 {
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
+	struct boot_sector_t *p_boot;
+	int i;
+
+	p_boot = (struct boot_sector_t *)p_fs->boot_bh->b_data;
 
-	if (p_boot->num_fats == 0)
+	/* check the validity of BOOT sector */
+	if (le16_to_cpu(p_boot->boot_signature) != BOOT_SIGNATURE)
 		return -EFSCORRUPTED;
 
+	/* check the byte range consumed as BPB for FAT12/16/32 volumes */
+	for (i = 0; i < 53; i++) {
+		if (p_boot->must_be_zero[i]) {
+			pr_info("EXFAT: Attempted to mount VFAT filesystem\n");
+			return -EFSCORRUPTED;
+		}
+	}
+
+	if (p_boot->num_fats != 1 && p_boot->num_fats != 2)
+		return -EFSCORRUPTED;
+
+	/* fill fs_info */
 	p_fs->sectors_per_clu = 1 << p_boot->sectors_per_clu_shift;
 	p_fs->sectors_per_clu_bits = p_boot->sectors_per_clu_shift;
 	p_fs->cluster_size_bits = p_fs->sectors_per_clu_bits +
@@ -2080,11 +2087,9 @@ static s32 read_boot_sector(struct super_block *sb,
 	p_fs->num_FAT_sectors = le32_to_cpu(p_boot->fat_length);
 
 	p_fs->FAT1_start_sector = le32_to_cpu(p_boot->fat_offset);
-	if (p_boot->num_fats == 1)
-		p_fs->FAT2_start_sector = p_fs->FAT1_start_sector;
-	else
-		p_fs->FAT2_start_sector = p_fs->FAT1_start_sector +
-					  p_fs->num_FAT_sectors;
+	p_fs->FAT2_start_sector = p_fs->FAT1_start_sector;
+	if (p_boot->num_fats == 2)
+		p_fs->FAT2_start_sector += p_fs->num_FAT_sectors;
 
 	p_fs->root_start_sector = le32_to_cpu(p_boot->clu_offset);
 	p_fs->data_start_sector = p_fs->root_start_sector;
@@ -2109,71 +2114,50 @@ static s32 read_boot_sector(struct super_block *sb,
 
 s32 exfat_mount(struct super_block *sb)
 {
-	int i, ret;
-	struct boot_sector_t *p_boot;
-	struct buffer_head *tmp_bh = NULL;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
+	int ret;
 
-	/* read Sector 0 */
-	if (sector_read(sb, 0, &tmp_bh, 1) != 0) {
-		ret = -EIO;
-		goto out;
-	}
-
-	p_boot = (struct boot_sector_t *)tmp_bh->b_data;
-
-	/* check the validity of BOOT sector */
-	if (le16_to_cpu(p_boot->boot_signature) != BOOT_SIGNATURE) {
-		brelse(tmp_bh);
-		ret = -EFSCORRUPTED;
-		goto out;
-	}
-
-	/* fill fs_struct */
-	for (i = 0; i < 53; i++)
-		if (p_boot->must_be_zero[i])
-			break;
-
-	if (i < 53) {
-		/* Not sure how we'd get here, but complain if it does */
-		ret = -EINVAL;
-		pr_info("EXFAT: Attempted to mount VFAT filesystem\n");
-		goto out;
-	} else {
-		ret = read_boot_sector(sb, p_boot);
-	}
+	p_fs->vol_utbl = NULL;
+	p_fs->vol_amap = NULL;
 
-	brelse(tmp_bh);
+	/* read Sector 0 */
+	ret = sector_read(sb, 0, &p_fs->boot_bh, 1);
+	if (ret)
+		goto err_out;
 
+	ret = read_boot_sector(sb);
 	if (ret)
-		goto out;
+		goto err_out;
 
 	ret = load_alloc_bitmap(sb);
 	if (ret)
-		goto out;
+		goto err_out;
 
 	ret = load_upcase_table(sb);
-	if (ret) {
-		free_alloc_bitmap(sb);
-		goto out;
-	}
+	if (ret)
+		goto err_out;
 
 	if (p_fs->dev_ejected) {
-		free_upcase_table(sb);
-		free_alloc_bitmap(sb);
 		ret = -EIO;
-		goto out;
+		goto err_out;
 	}
 
 	pr_info("[EXFAT] mounted successfully\n");
-out:
+	return 0;
+
+err_out:
+	exfat_umount(sb);
 	return ret;
 }
 
 void exfat_umount(struct super_block *sb)
 {
+	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
+
 	free_upcase_table(sb);
 	free_alloc_bitmap(sb);
+	brelse(p_fs->boot_bh);
+	p_fs->boot_bh = NULL;
 }
 
 s32 create_dir(struct inode *inode, struct chain_t *p_dir,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

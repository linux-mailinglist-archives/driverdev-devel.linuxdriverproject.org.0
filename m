Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AADE11AA
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 07:29:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8742080BF7;
	Wed, 23 Oct 2019 05:29:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id weLwb1KBdFRM; Wed, 23 Oct 2019 05:29:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7576E87620;
	Wed, 23 Oct 2019 05:28:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C80B1BF863
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 05:28:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 74A3B86200
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 05:28:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qObMNHgSjgVA for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 05:28:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7E84D858FC
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 05:28:42 +0000 (UTC)
Received: from mr5.cc.vt.edu (mr5.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8400:0:72:232:758b])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9N5Sfw5003471
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 01:28:41 -0400
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mr5.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9N5SaN8025870
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 01:28:41 -0400
Received: by mail-qt1-f197.google.com with SMTP id c32so17670853qtb.14
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 22:28:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=9PwOaNGGQfQBttlauOR4COrHeb/BR1Y/sXHYC9tSwaE=;
 b=WUS6NgOFhLbTs4whSwbLp6KWrhizNTM5RMcqXHWXhgm3dpX4a1cNqdD0hz8VaM4s2y
 i0c9Nx4WFFMGMULwUSvXt5NRESJj7yYMEMd9lUNerxm/DUWwWMlA5Gsm6l9CoLetw1DP
 ocVCHaoLRzT0cKdR0YIGPRVxFxu2kj2jPcrSCAiKrUX2ZIWSv0GWTvCiOp5DVt7XF4ol
 1zktDEBL4c+BDpkbE4URGeKNRzWE1xqMBcHUStOCT505pIExTqse16YgYneOSHzXqHX/
 33hzYsV4yttKSzucJZnZn0u5PsggEJUurMHxG25Ri6Vc9o9rj2Tl/MjXaghf6cC+ZHpG
 iZlw==
X-Gm-Message-State: APjAAAU/4ZIP/ukU0q1q5rTUPHGTRNDYqPRfRRDW8xysVzh+PUtgEj5d
 i8m9CwLxFl4hBjmHJdr9DoaieAPmG6CNnRQedotIrlnIMvKS9+GzqdRr4oOayoRF5HbmCgFNiMl
 4bpzbEi6jqwzuqWE5+V/J+uwfqaz2oNyv
X-Received: by 2002:a37:9a8e:: with SMTP id c136mr6761998qke.0.1571808516219; 
 Tue, 22 Oct 2019 22:28:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzxwNT3/lKJQCNdyxfhDUh0PPMzcPfMhEPPCQL+opXtes9uZDZWIkLUHyr4z6dZHQqx15u9eA==
X-Received: by 2002:a37:9a8e:: with SMTP id c136mr6761965qke.0.1571808515544; 
 Tue, 22 Oct 2019 22:28:35 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 14sm10397445qtb.54.2019.10.22.22.28.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 22:28:34 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Valdis.Kletnieks@vt.edu
Subject: [PATCH 6/8] staging: exfat: More static cleanups for exfat_core.c
Date: Wed, 23 Oct 2019 01:27:49 -0400
Message-Id: <20191023052752.693689-7-Valdis.Kletnieks@vt.edu>
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

Move static function bodies before first use, remove the definition in exfat.h

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h      |   6 -
 drivers/staging/exfat/exfat_core.c | 500 ++++++++++++++---------------
 2 files changed, 250 insertions(+), 256 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 654a0c46c1a0..b93df526355b 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -786,10 +786,6 @@ void exfat_chain_cont_cluster(struct super_block *sb, u32 chain, s32 len);
 /* allocation bitmap management functions */
 s32 load_alloc_bitmap(struct super_block *sb);
 void free_alloc_bitmap(struct super_block *sb);
-static s32 set_alloc_bitmap(struct super_block *sb, u32 clu);
-static s32 clr_alloc_bitmap(struct super_block *sb, u32 clu);
-static u32 test_alloc_bitmap(struct super_block *sb, u32 clu);
-static void sync_alloc_bitmap(struct super_block *sb);
 
 /* upcase table management functions */
 s32 load_upcase_table(struct super_block *sb);
@@ -812,8 +808,6 @@ void release_entry_set(struct entry_set_cache_t *es);
 static s32 write_whole_entry_set(struct super_block *sb, struct entry_set_cache_t *es);
 s32 count_dos_name_entries(struct super_block *sb, struct chain_t *p_dir,
 			   u32 type);
-static void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
-			 s32 entry);
 void update_dir_checksum_with_entry_set(struct super_block *sb,
 					struct entry_set_cache_t *es);
 bool is_dir_empty(struct super_block *sb, struct chain_t *p_dir);
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index dd69a9a6dddc..1a49da231946 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -132,6 +132,199 @@ static void fs_error(struct super_block *sb)
 	}
 }
 
+/*
+ *  Allocation Bitmap Management Functions
+ */
+
+s32 load_alloc_bitmap(struct super_block *sb)
+{
+	int i, j, ret;
+	u32 map_size;
+	u32 type;
+	sector_t sector;
+	struct chain_t clu;
+	struct bmap_dentry_t *ep;
+	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
+	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
+
+	clu.dir = p_fs->root_dir;
+	clu.flags = 0x01;
+
+	while (clu.dir != CLUSTER_32(~0)) {
+		if (p_fs->dev_ejected)
+			break;
+
+		for (i = 0; i < p_fs->dentries_per_clu; i++) {
+			ep = (struct bmap_dentry_t *)get_entry_in_dir(sb, &clu,
+								      i, NULL);
+			if (!ep)
+				return FFS_MEDIAERR;
+
+			type = p_fs->fs_func->get_entry_type((struct dentry_t *)ep);
+
+			if (type == TYPE_UNUSED)
+				break;
+			if (type != TYPE_BITMAP)
+				continue;
+
+			if (ep->flags == 0x0) {
+				p_fs->map_clu  = GET32_A(ep->start_clu);
+				map_size = (u32)GET64_A(ep->size);
+
+				p_fs->map_sectors = ((map_size - 1) >> p_bd->sector_size_bits) + 1;
+
+				p_fs->vol_amap = kmalloc_array(p_fs->map_sectors,
+							       sizeof(struct buffer_head *),
+							       GFP_KERNEL);
+				if (!p_fs->vol_amap)
+					return FFS_MEMORYERR;
+
+				sector = START_SECTOR(p_fs->map_clu);
+
+				for (j = 0; j < p_fs->map_sectors; j++) {
+					p_fs->vol_amap[j] = NULL;
+					ret = sector_read(sb, sector + j, &(p_fs->vol_amap[j]), 1);
+					if (ret != FFS_SUCCESS) {
+						/*  release all buffers and free vol_amap */
+						i = 0;
+						while (i < j)
+							brelse(p_fs->vol_amap[i++]);
+
+						kfree(p_fs->vol_amap);
+						p_fs->vol_amap = NULL;
+						return ret;
+					}
+				}
+
+				p_fs->pbr_bh = NULL;
+				return FFS_SUCCESS;
+			}
+		}
+
+		if (FAT_read(sb, clu.dir, &clu.dir) != 0)
+			return FFS_MEDIAERR;
+	}
+
+	return FFS_FORMATERR;
+}
+
+void free_alloc_bitmap(struct super_block *sb)
+{
+	int i;
+	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
+
+	brelse(p_fs->pbr_bh);
+
+	for (i = 0; i < p_fs->map_sectors; i++)
+		__brelse(p_fs->vol_amap[i]);
+
+	kfree(p_fs->vol_amap);
+	p_fs->vol_amap = NULL;
+}
+
+static s32 set_alloc_bitmap(struct super_block *sb, u32 clu)
+{
+	int i, b;
+	sector_t sector;
+	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
+	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
+
+	i = clu >> (p_bd->sector_size_bits + 3);
+	b = clu & ((p_bd->sector_size << 3) - 1);
+
+	sector = START_SECTOR(p_fs->map_clu) + i;
+
+	exfat_bitmap_set((u8 *)p_fs->vol_amap[i]->b_data, b);
+
+	return sector_write(sb, sector, p_fs->vol_amap[i], 0);
+}
+
+static s32 clr_alloc_bitmap(struct super_block *sb, u32 clu)
+{
+	int i, b;
+	sector_t sector;
+#ifdef CONFIG_EXFAT_DISCARD
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	struct exfat_mount_options *opts = &sbi->options;
+	int ret;
+#endif /* CONFIG_EXFAT_DISCARD */
+	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
+	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
+
+	i = clu >> (p_bd->sector_size_bits + 3);
+	b = clu & ((p_bd->sector_size << 3) - 1);
+
+	sector = START_SECTOR(p_fs->map_clu) + i;
+
+	exfat_bitmap_clear((u8 *)p_fs->vol_amap[i]->b_data, b);
+
+	return sector_write(sb, sector, p_fs->vol_amap[i], 0);
+
+#ifdef CONFIG_EXFAT_DISCARD
+	if (opts->discard) {
+		ret = sb_issue_discard(sb, START_SECTOR(clu),
+				       (1 << p_fs->sectors_per_clu_bits),
+				       GFP_NOFS, 0);
+		if (ret == -EOPNOTSUPP) {
+			pr_warn("discard not supported by device, disabling");
+			opts->discard = 0;
+		}
+	}
+#endif /* CONFIG_EXFAT_DISCARD */
+}
+
+static u32 test_alloc_bitmap(struct super_block *sb, u32 clu)
+{
+	int i, map_i, map_b;
+	u32 clu_base, clu_free;
+	u8 k, clu_mask;
+	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
+	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
+
+	clu_base = (clu & ~(0x7)) + 2;
+	clu_mask = (1 << (clu - clu_base + 2)) - 1;
+
+	map_i = clu >> (p_bd->sector_size_bits + 3);
+	map_b = (clu >> 3) & p_bd->sector_size_mask;
+
+	for (i = 2; i < p_fs->num_clusters; i += 8) {
+		k = *(((u8 *)p_fs->vol_amap[map_i]->b_data) + map_b);
+		if (clu_mask > 0) {
+			k |= clu_mask;
+			clu_mask = 0;
+		}
+		if (k < 0xFF) {
+			clu_free = clu_base + free_bit[k];
+			if (clu_free < p_fs->num_clusters)
+				return clu_free;
+		}
+		clu_base += 8;
+
+		if (((++map_b) >= p_bd->sector_size) ||
+		    (clu_base >= p_fs->num_clusters)) {
+			if ((++map_i) >= p_fs->map_sectors) {
+				clu_base = 2;
+				map_i = 0;
+			}
+			map_b = 0;
+		}
+	}
+
+	return CLUSTER_32(~0);
+}
+
+static void sync_alloc_bitmap(struct super_block *sb)
+{
+	int i;
+	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
+
+	if (!p_fs->vol_amap)
+		return;
+
+	for (i = 0; i < p_fs->map_sectors; i++)
+		sync_dirty_buffer(p_fs->vol_amap[i]);
+}
+
 /*
  *  Cluster Management Functions
  */
@@ -388,199 +581,6 @@ void exfat_chain_cont_cluster(struct super_block *sb, u32 chain, s32 len)
 	FAT_write(sb, chain, CLUSTER_32(~0));
 }
 
-/*
- *  Allocation Bitmap Management Functions
- */
-
-s32 load_alloc_bitmap(struct super_block *sb)
-{
-	int i, j, ret;
-	u32 map_size;
-	u32 type;
-	sector_t sector;
-	struct chain_t clu;
-	struct bmap_dentry_t *ep;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	clu.dir = p_fs->root_dir;
-	clu.flags = 0x01;
-
-	while (clu.dir != CLUSTER_32(~0)) {
-		if (p_fs->dev_ejected)
-			break;
-
-		for (i = 0; i < p_fs->dentries_per_clu; i++) {
-			ep = (struct bmap_dentry_t *)get_entry_in_dir(sb, &clu,
-								      i, NULL);
-			if (!ep)
-				return FFS_MEDIAERR;
-
-			type = p_fs->fs_func->get_entry_type((struct dentry_t *)ep);
-
-			if (type == TYPE_UNUSED)
-				break;
-			if (type != TYPE_BITMAP)
-				continue;
-
-			if (ep->flags == 0x0) {
-				p_fs->map_clu  = GET32_A(ep->start_clu);
-				map_size = (u32)GET64_A(ep->size);
-
-				p_fs->map_sectors = ((map_size - 1) >> p_bd->sector_size_bits) + 1;
-
-				p_fs->vol_amap = kmalloc_array(p_fs->map_sectors,
-							       sizeof(struct buffer_head *),
-							       GFP_KERNEL);
-				if (!p_fs->vol_amap)
-					return FFS_MEMORYERR;
-
-				sector = START_SECTOR(p_fs->map_clu);
-
-				for (j = 0; j < p_fs->map_sectors; j++) {
-					p_fs->vol_amap[j] = NULL;
-					ret = sector_read(sb, sector + j, &(p_fs->vol_amap[j]), 1);
-					if (ret != FFS_SUCCESS) {
-						/*  release all buffers and free vol_amap */
-						i = 0;
-						while (i < j)
-							brelse(p_fs->vol_amap[i++]);
-
-						kfree(p_fs->vol_amap);
-						p_fs->vol_amap = NULL;
-						return ret;
-					}
-				}
-
-				p_fs->pbr_bh = NULL;
-				return FFS_SUCCESS;
-			}
-		}
-
-		if (FAT_read(sb, clu.dir, &clu.dir) != 0)
-			return FFS_MEDIAERR;
-	}
-
-	return FFS_FORMATERR;
-}
-
-void free_alloc_bitmap(struct super_block *sb)
-{
-	int i;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	brelse(p_fs->pbr_bh);
-
-	for (i = 0; i < p_fs->map_sectors; i++)
-		__brelse(p_fs->vol_amap[i]);
-
-	kfree(p_fs->vol_amap);
-	p_fs->vol_amap = NULL;
-}
-
-static s32 set_alloc_bitmap(struct super_block *sb, u32 clu)
-{
-	int i, b;
-	sector_t sector;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	i = clu >> (p_bd->sector_size_bits + 3);
-	b = clu & ((p_bd->sector_size << 3) - 1);
-
-	sector = START_SECTOR(p_fs->map_clu) + i;
-
-	exfat_bitmap_set((u8 *)p_fs->vol_amap[i]->b_data, b);
-
-	return sector_write(sb, sector, p_fs->vol_amap[i], 0);
-}
-
-static s32 clr_alloc_bitmap(struct super_block *sb, u32 clu)
-{
-	int i, b;
-	sector_t sector;
-#ifdef CONFIG_EXFAT_DISCARD
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct exfat_mount_options *opts = &sbi->options;
-	int ret;
-#endif /* CONFIG_EXFAT_DISCARD */
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	i = clu >> (p_bd->sector_size_bits + 3);
-	b = clu & ((p_bd->sector_size << 3) - 1);
-
-	sector = START_SECTOR(p_fs->map_clu) + i;
-
-	exfat_bitmap_clear((u8 *)p_fs->vol_amap[i]->b_data, b);
-
-	return sector_write(sb, sector, p_fs->vol_amap[i], 0);
-
-#ifdef CONFIG_EXFAT_DISCARD
-	if (opts->discard) {
-		ret = sb_issue_discard(sb, START_SECTOR(clu),
-				       (1 << p_fs->sectors_per_clu_bits),
-				       GFP_NOFS, 0);
-		if (ret == -EOPNOTSUPP) {
-			pr_warn("discard not supported by device, disabling");
-			opts->discard = 0;
-		}
-	}
-#endif /* CONFIG_EXFAT_DISCARD */
-}
-
-static u32 test_alloc_bitmap(struct super_block *sb, u32 clu)
-{
-	int i, map_i, map_b;
-	u32 clu_base, clu_free;
-	u8 k, clu_mask;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	clu_base = (clu & ~(0x7)) + 2;
-	clu_mask = (1 << (clu - clu_base + 2)) - 1;
-
-	map_i = clu >> (p_bd->sector_size_bits + 3);
-	map_b = (clu >> 3) & p_bd->sector_size_mask;
-
-	for (i = 2; i < p_fs->num_clusters; i += 8) {
-		k = *(((u8 *)p_fs->vol_amap[map_i]->b_data) + map_b);
-		if (clu_mask > 0) {
-			k |= clu_mask;
-			clu_mask = 0;
-		}
-		if (k < 0xFF) {
-			clu_free = clu_base + free_bit[k];
-			if (clu_free < p_fs->num_clusters)
-				return clu_free;
-		}
-		clu_base += 8;
-
-		if (((++map_b) >= p_bd->sector_size) ||
-		    (clu_base >= p_fs->num_clusters)) {
-			if ((++map_i) >= p_fs->map_sectors) {
-				clu_base = 2;
-				map_i = 0;
-			}
-			map_b = 0;
-		}
-	}
-
-	return CLUSTER_32(~0);
-}
-
-static void sync_alloc_bitmap(struct super_block *sb)
-{
-	int i;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	if (!p_fs->vol_amap)
-		return;
-
-	for (i = 0; i < p_fs->map_sectors; i++)
-		sync_dirty_buffer(p_fs->vol_amap[i]);
-}
-
 /*
  *  Upcase table Management Functions
  */
@@ -791,6 +791,63 @@ void free_upcase_table(struct super_block *sb)
 	p_fs->vol_utbl = NULL;
 }
 
+static void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
+			 s32 entry)
+{
+	int i, num_entries;
+	sector_t sector;
+	u16 chksum;
+	struct file_dentry_t *file_ep;
+	struct dentry_t *ep;
+
+	file_ep = (struct file_dentry_t *)get_entry_in_dir(sb, p_dir, entry,
+							   &sector);
+	if (!file_ep)
+		return;
+
+	buf_lock(sb, sector);
+
+	num_entries = (s32)file_ep->num_ext + 1;
+	chksum = calc_checksum_2byte((void *)file_ep, DENTRY_SIZE, 0,
+				     CS_DIR_ENTRY);
+
+	for (i = 1; i < num_entries; i++) {
+		ep = get_entry_in_dir(sb, p_dir, entry + i, NULL);
+		if (!ep) {
+			buf_unlock(sb, sector);
+			return;
+		}
+
+		chksum = calc_checksum_2byte((void *)ep, DENTRY_SIZE, chksum,
+					     CS_DEFAULT);
+	}
+
+	SET16_A(file_ep->checksum, chksum);
+	buf_modify(sb, sector);
+	buf_unlock(sb, sector);
+}
+
+void update_dir_checksum_with_entry_set(struct super_block *sb,
+					struct entry_set_cache_t *es)
+{
+	struct dentry_t *ep;
+	u16 chksum = 0;
+	s32 chksum_type = CS_DIR_ENTRY, i;
+
+	ep = (struct dentry_t *)&(es->__buf);
+	for (i = 0; i < es->num_entries; i++) {
+		pr_debug("%s ep %p\n", __func__, ep);
+		chksum = calc_checksum_2byte((void *)ep, DENTRY_SIZE, chksum,
+					     chksum_type);
+		ep++;
+		chksum_type = CS_DEFAULT;
+	}
+
+	ep = (struct dentry_t *)&(es->__buf);
+	SET16_A(((struct file_dentry_t *)ep)->checksum, chksum);
+	write_whole_entry_set(sb, es);
+}
+
 /*
  *  Directory Entry Management Functions
  */
@@ -1114,63 +1171,6 @@ static void exfat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir
 	}
 }
 
-static void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
-			 s32 entry)
-{
-	int i, num_entries;
-	sector_t sector;
-	u16 chksum;
-	struct file_dentry_t *file_ep;
-	struct dentry_t *ep;
-
-	file_ep = (struct file_dentry_t *)get_entry_in_dir(sb, p_dir, entry,
-							   &sector);
-	if (!file_ep)
-		return;
-
-	buf_lock(sb, sector);
-
-	num_entries = (s32)file_ep->num_ext + 1;
-	chksum = calc_checksum_2byte((void *)file_ep, DENTRY_SIZE, 0,
-				     CS_DIR_ENTRY);
-
-	for (i = 1; i < num_entries; i++) {
-		ep = get_entry_in_dir(sb, p_dir, entry + i, NULL);
-		if (!ep) {
-			buf_unlock(sb, sector);
-			return;
-		}
-
-		chksum = calc_checksum_2byte((void *)ep, DENTRY_SIZE, chksum,
-					     CS_DEFAULT);
-	}
-
-	SET16_A(file_ep->checksum, chksum);
-	buf_modify(sb, sector);
-	buf_unlock(sb, sector);
-}
-
-void update_dir_checksum_with_entry_set(struct super_block *sb,
-					struct entry_set_cache_t *es)
-{
-	struct dentry_t *ep;
-	u16 chksum = 0;
-	s32 chksum_type = CS_DIR_ENTRY, i;
-
-	ep = (struct dentry_t *)&(es->__buf);
-	for (i = 0; i < es->num_entries; i++) {
-		pr_debug("%s ep %p\n", __func__, ep);
-		chksum = calc_checksum_2byte((void *)ep, DENTRY_SIZE, chksum,
-					     chksum_type);
-		ep++;
-		chksum_type = CS_DEFAULT;
-	}
-
-	ep = (struct dentry_t *)&(es->__buf);
-	SET16_A(((struct file_dentry_t *)ep)->checksum, chksum);
-	write_whole_entry_set(sb, es);
-}
-
 static s32 _walk_fat_chain(struct super_block *sb, struct chain_t *p_dir,
 			   s32 byte_offset, u32 *clu)
 {
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

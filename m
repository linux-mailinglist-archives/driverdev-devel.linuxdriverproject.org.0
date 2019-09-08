Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F98ACF7C
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 17:26:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B0567854A7;
	Sun,  8 Sep 2019 15:26:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OzBMftz8ds4k; Sun,  8 Sep 2019 15:26:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D60685569;
	Sun,  8 Sep 2019 15:26:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7319A1BF2C9
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 15:26:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6FB9A86DAD
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 15:26:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id suz9AR5q-5yD for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 15:26:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6F37086D85
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 15:26:24 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 77E2E215; Sun,  8 Sep 2019 15:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1567956381;
 bh=XZs9rPhF4Zi8Ft3Bf27QpWz+jVpq3y46bv/kPPHQO7k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GpxOWKI9i101RQAapI9bzhm5wIZPJZzDDpxVnc6hqFt1mJa1Gvuu3FMTAUAH5NSMW
 uuBrcIL2EzwfCAf+iC+0mswtAMQT1pORXRZNURqfYFYCVpoM5DdhD3OhKuy04beL29
 7C30xHQtXreXDku7OAgAoU/vrRrid21R/ack6LMDAgvKvS/NWWJiCYC3Y9r5CYT5Hi
 52xscLw4pdL5PfjJ4gctpcQrHWXOA5dv5X0oXu3/s8pRjELuO/4i5pfh3Scuk5a1oq
 9iTkwJ1clhZuNfyU5BZYbtZEXcT6MWpZqgHEiAnT0T1ZuTIhxGJV6rHEku78tf2Dcs
 f1TZRSIvUA2uQ==
From: Valentin Vidic <vvidic@valentin-vidic.from.hr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 2/3] staging: exfat: cleanup spacing for casts
Date: Sun,  8 Sep 2019 15:26:15 +0000
Message-Id: <20190908152616.25459-2-vvidic@valentin-vidic.from.hr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190908152616.25459-1-vvidic@valentin-vidic.from.hr>
References: <20190908152616.25459-1-vvidic@valentin-vidic.from.hr>
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

Fix checkpatch.pl warnings:

  CHECK: No space is necessary after a cast

Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
---
v2: Use constants where possible
v3: Split up changes of constants

 drivers/staging/exfat/exfat_core.c  | 88 ++++++++++++++---------------
 drivers/staging/exfat/exfat_super.c | 66 +++++++++++-----------
 2 files changed, 77 insertions(+), 77 deletions(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 8fb4ce16010c..8965e8453fcb 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -204,7 +204,7 @@ s32 fat_alloc_cluster(struct super_block *sb, s32 num_alloc,
 
 			if ((--num_alloc) == 0) {
 				p_fs->clu_srch_ptr = new_clu;
-				if (p_fs->used_clusters != (u32) ~0)
+				if (p_fs->used_clusters != (u32)~0)
 					p_fs->used_clusters += num_clusters;
 
 				return num_clusters;
@@ -215,7 +215,7 @@ s32 fat_alloc_cluster(struct super_block *sb, s32 num_alloc,
 	}
 
 	p_fs->clu_srch_ptr = new_clu;
-	if (p_fs->used_clusters != (u32) ~0)
+	if (p_fs->used_clusters != (u32)~0)
 		p_fs->used_clusters += num_clusters;
 
 	return num_clusters;
@@ -273,7 +273,7 @@ s32 exfat_alloc_cluster(struct super_block *sb, s32 num_alloc,
 
 		if ((--num_alloc) == 0) {
 			p_fs->clu_srch_ptr = hint_clu;
-			if (p_fs->used_clusters != (u32) ~0)
+			if (p_fs->used_clusters != (u32)~0)
 				p_fs->used_clusters += num_clusters;
 
 			p_chain->size += num_clusters;
@@ -293,7 +293,7 @@ s32 exfat_alloc_cluster(struct super_block *sb, s32 num_alloc,
 	}
 
 	p_fs->clu_srch_ptr = hint_clu;
-	if (p_fs->used_clusters != (u32) ~0)
+	if (p_fs->used_clusters != (u32)~0)
 		p_fs->used_clusters += num_clusters;
 
 	p_chain->size += num_clusters;
@@ -337,7 +337,7 @@ void fat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
 
 	} while (clu != CLUSTER_32(~0));
 
-	if (p_fs->used_clusters != (u32) ~0)
+	if (p_fs->used_clusters != (u32)~0)
 		p_fs->used_clusters -= num_clusters;
 }
 
@@ -396,7 +396,7 @@ void exfat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
 		} while ((clu != CLUSTER_32(0)) && (clu != CLUSTER_32(~0)));
 	}
 
-	if (p_fs->used_clusters != (u32) ~0)
+	if (p_fs->used_clusters != (u32)~0)
 		p_fs->used_clusters -= num_clusters;
 }
 
@@ -473,7 +473,7 @@ s32 exfat_count_used_clusters(struct super_block *sb)
 	map_i = map_b = 0;
 
 	for (i = 2; i < p_fs->num_clusters; i += 8) {
-		k = *(((u8 *) p_fs->vol_amap[map_i]->b_data) + map_b);
+		k = *(((u8 *)p_fs->vol_amap[map_i]->b_data) + map_b);
 		count += used_bit[k];
 
 		if ((++map_b) >= p_bd->sector_size) {
@@ -536,7 +536,7 @@ s32 load_alloc_bitmap(struct super_block *sb)
 
 			if (ep->flags == 0x0) {
 				p_fs->map_clu  = GET32_A(ep->start_clu);
-				map_size = (u32) GET64_A(ep->size);
+				map_size = (u32)GET64_A(ep->size);
 
 				p_fs->map_sectors = ((map_size - 1) >> p_bd->sector_size_bits) + 1;
 
@@ -601,7 +601,7 @@ s32 set_alloc_bitmap(struct super_block *sb, u32 clu)
 
 	sector = START_SECTOR(p_fs->map_clu) + i;
 
-	exfat_bitmap_set((u8 *) p_fs->vol_amap[i]->b_data, b);
+	exfat_bitmap_set((u8 *)p_fs->vol_amap[i]->b_data, b);
 
 	return sector_write(sb, sector, p_fs->vol_amap[i], 0);
 }
@@ -623,7 +623,7 @@ s32 clr_alloc_bitmap(struct super_block *sb, u32 clu)
 
 	sector = START_SECTOR(p_fs->map_clu) + i;
 
-	exfat_bitmap_clear((u8 *) p_fs->vol_amap[i]->b_data, b);
+	exfat_bitmap_clear((u8 *)p_fs->vol_amap[i]->b_data, b);
 
 	return sector_write(sb, sector, p_fs->vol_amap[i], 0);
 
@@ -655,7 +655,7 @@ u32 test_alloc_bitmap(struct super_block *sb, u32 clu)
 	map_b = (clu >> 3) & p_bd->sector_size_mask;
 
 	for (i = 2; i < p_fs->num_clusters; i += 8) {
-		k = *(((u8 *) p_fs->vol_amap[map_i]->b_data) + map_b);
+		k = *(((u8 *)p_fs->vol_amap[map_i]->b_data) + map_b);
 		if (clu_mask > 0) {
 			k |= clu_mask;
 			clu_mask = 0;
@@ -728,7 +728,7 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 		sector++;
 
 		for (i = 0; i < p_bd->sector_size && index <= 0xFFFF; i += 2) {
-			uni = GET16(((u8 *) tmp_bh->b_data) + i);
+			uni = GET16(((u8 *)tmp_bh->b_data) + i);
 
 			checksum = ((checksum & 1) ? 0x80000000 : 0) +
 				   (checksum >> 1) + *(((u8 *)tmp_bh->b_data) +
@@ -872,7 +872,7 @@ s32 load_upcase_table(struct super_block *sb)
 				continue;
 
 			tbl_clu  = GET32_A(ep->start_clu);
-			tbl_size = (u32) GET64_A(ep->size);
+			tbl_size = (u32)GET64_A(ep->size);
 
 			sector = START_SECTOR(tbl_clu);
 			num_sectors = ((tbl_size - 1) >> p_bd->sector_size_bits) + 1;
@@ -908,7 +908,7 @@ void free_upcase_table(struct super_block *sb)
 
 u32 fat_get_entry_type(struct dentry_t *p_entry)
 {
-	struct dos_dentry_t *ep = (struct dos_dentry_t *) p_entry;
+	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
 
 	if (*(ep->name) == 0x0)
 		return TYPE_UNUSED;
@@ -930,7 +930,7 @@ u32 fat_get_entry_type(struct dentry_t *p_entry)
 
 u32 exfat_get_entry_type(struct dentry_t *p_entry)
 {
-	struct file_dentry_t *ep = (struct file_dentry_t *) p_entry;
+	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
 
 	if (ep->type == 0x0) {
 		return TYPE_UNUSED;
@@ -975,7 +975,7 @@ u32 exfat_get_entry_type(struct dentry_t *p_entry)
 
 void fat_set_entry_type(struct dentry_t *p_entry, u32 type)
 {
-	struct dos_dentry_t *ep = (struct dos_dentry_t *) p_entry;
+	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
 
 	if (type == TYPE_UNUSED)
 		*(ep->name) = 0x0;
@@ -998,7 +998,7 @@ void fat_set_entry_type(struct dentry_t *p_entry, u32 type)
 
 void exfat_set_entry_type(struct dentry_t *p_entry, u32 type)
 {
-	struct file_dentry_t *ep = (struct file_dentry_t *) p_entry;
+	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
 
 	if (type == TYPE_UNUSED) {
 		ep->type = 0x0;
@@ -1028,30 +1028,30 @@ void exfat_set_entry_type(struct dentry_t *p_entry, u32 type)
 
 u32 fat_get_entry_attr(struct dentry_t *p_entry)
 {
-	struct dos_dentry_t *ep = (struct dos_dentry_t *) p_entry;
+	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
 
-	return (u32) ep->attr;
+	return (u32)ep->attr;
 }
 
 u32 exfat_get_entry_attr(struct dentry_t *p_entry)
 {
-	struct file_dentry_t *ep = (struct file_dentry_t *) p_entry;
+	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
 
-	return (u32) GET16_A(ep->attr);
+	return (u32)GET16_A(ep->attr);
 }
 
 void fat_set_entry_attr(struct dentry_t *p_entry, u32 attr)
 {
-	struct dos_dentry_t *ep = (struct dos_dentry_t *) p_entry;
+	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
 
-	ep->attr = (u8) attr;
+	ep->attr = (u8)attr;
 }
 
 void exfat_set_entry_attr(struct dentry_t *p_entry, u32 attr)
 {
-	struct file_dentry_t *ep = (struct file_dentry_t *) p_entry;
+	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
 
-	SET16_A(ep->attr, (u16) attr);
+	SET16_A(ep->attr, (u16)attr);
 }
 
 u8 fat_get_entry_flag(struct dentry_t *p_entry)
@@ -1061,7 +1061,7 @@ u8 fat_get_entry_flag(struct dentry_t *p_entry)
 
 u8 exfat_get_entry_flag(struct dentry_t *p_entry)
 {
-	struct strm_dentry_t *ep = (struct strm_dentry_t *) p_entry;
+	struct strm_dentry_t *ep = (struct strm_dentry_t *)p_entry;
 
 	return ep->flags;
 }
@@ -1072,14 +1072,14 @@ void fat_set_entry_flag(struct dentry_t *p_entry, u8 flags)
 
 void exfat_set_entry_flag(struct dentry_t *p_entry, u8 flags)
 {
-	struct strm_dentry_t *ep = (struct strm_dentry_t *) p_entry;
+	struct strm_dentry_t *ep = (struct strm_dentry_t *)p_entry;
 
 	ep->flags = flags;
 }
 
 u32 fat_get_entry_clu0(struct dentry_t *p_entry)
 {
-	struct dos_dentry_t *ep = (struct dos_dentry_t *) p_entry;
+	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
 
 	return ((u32)GET16_A(ep->start_clu_hi) << 16) |
 		GET16_A(ep->start_clu_lo);
@@ -1087,7 +1087,7 @@ u32 fat_get_entry_clu0(struct dentry_t *p_entry)
 
 u32 exfat_get_entry_clu0(struct dentry_t *p_entry)
 {
-	struct strm_dentry_t *ep = (struct strm_dentry_t *) p_entry;
+	struct strm_dentry_t *ep = (struct strm_dentry_t *)p_entry;
 
 	return GET32_A(ep->start_clu);
 }
@@ -1111,7 +1111,7 @@ u64 fat_get_entry_size(struct dentry_t *p_entry)
 {
 	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
 
-	return (u64) GET32_A(ep->size);
+	return (u64)GET32_A(ep->size);
 }
 
 u64 exfat_get_entry_size(struct dentry_t *p_entry)
@@ -1125,7 +1125,7 @@ void fat_set_entry_size(struct dentry_t *p_entry, u64 size)
 {
 	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
 
-	SET32_A(ep->size, (u32) size);
+	SET32_A(ep->size, (u32)size);
 }
 
 void exfat_set_entry_size(struct dentry_t *p_entry, u64 size)
@@ -1384,14 +1384,14 @@ void init_dos_entry(struct dos_dentry_t *ep, u32 type, u32 start_clu)
 {
 	struct timestamp_t tm, *tp;
 
-	fat_set_entry_type((struct dentry_t *) ep, type);
+	fat_set_entry_type((struct dentry_t *)ep, type);
 	SET16_A(ep->start_clu_lo, CLUSTER_16(start_clu));
 	SET16_A(ep->start_clu_hi, CLUSTER_16(start_clu >> 16));
 	SET32_A(ep->size, 0);
 
 	tp = tm_current(&tm);
-	fat_set_entry_time((struct dentry_t *) ep, tp, TM_CREATE);
-	fat_set_entry_time((struct dentry_t *) ep, tp, TM_MODIFY);
+	fat_set_entry_time((struct dentry_t *)ep, tp, TM_CREATE);
+	fat_set_entry_time((struct dentry_t *)ep, tp, TM_MODIFY);
 	SET16_A(ep->access_date, 0);
 	ep->create_time_ms = 0;
 }
@@ -1401,8 +1401,8 @@ void init_ext_entry(struct ext_dentry_t *ep, s32 order, u8 chksum, u16 *uniname)
 	int i;
 	bool end = false;
 
-	fat_set_entry_type((struct dentry_t *) ep, TYPE_EXTEND);
-	ep->order = (u8) order;
+	fat_set_entry_type((struct dentry_t *)ep, TYPE_EXTEND);
+	ep->order = (u8)order;
 	ep->sysid = 0;
 	ep->checksum = chksum;
 	SET16_A(ep->start_clu, 0);
@@ -1535,7 +1535,7 @@ void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
 
 	buf_lock(sb, sector);
 
-	num_entries = (s32) file_ep->num_ext + 1;
+	num_entries = (s32)file_ep->num_ext + 1;
 	chksum = calc_checksum_2byte((void *)file_ep, DENTRY_SIZE, 0,
 				     CS_DIR_ENTRY);
 
@@ -1749,7 +1749,7 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 	es->offset = off;
 	es->alloc_flag = p_dir->flags;
 
-	pos = (struct dentry_t *) &(es->__buf);
+	pos = (struct dentry_t *)&es->__buf;
 
 	while (num_entries) {
 		/*
@@ -2190,7 +2190,7 @@ s32 fat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 					if (is_feasible_entry && has_ext_entry)
 						return dentry;
 
-					dos_ep = (struct dos_dentry_t *) ep;
+					dos_ep = (struct dos_dentry_t *)ep;
 					if (!nls_dosname_cmp(sb, p_dosname->name, dos_ep->name))
 						return dentry;
 				}
@@ -2198,12 +2198,12 @@ s32 fat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 				has_ext_entry = false;
 			} else if (entry_type == TYPE_EXTEND) {
 				if (is_feasible_entry) {
-					ext_ep = (struct ext_dentry_t *) ep;
+					ext_ep = (struct ext_dentry_t *)ep;
 					if (ext_ep->order > 0x40) {
 						order = (s32)(ext_ep->order - 0x40);
 						uniname = p_uniname->name + 13 * (order - 1);
 					} else {
-						order = (s32) ext_ep->order;
+						order = (s32)ext_ep->order;
 						uniname -= 13;
 					}
 
@@ -2310,7 +2310,7 @@ s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 				num_empty = 0;
 
 				if ((entry_type == TYPE_FILE) || (entry_type == TYPE_DIR)) {
-					file_ep = (struct file_dentry_t *) ep;
+					file_ep = (struct file_dentry_t *)ep;
 					if ((type == TYPE_ALL) || (type == entry_type)) {
 						num_ext_entries = file_ep->num_ext;
 						is_feasible_entry = true;
@@ -2388,11 +2388,11 @@ s32 fat_count_ext_entries(struct super_block *sb, struct chain_t *p_dir,
 {
 	s32 count = 0;
 	u8 chksum;
-	struct dos_dentry_t *dos_ep = (struct dos_dentry_t *) p_entry;
+	struct dos_dentry_t *dos_ep = (struct dos_dentry_t *)p_entry;
 	struct ext_dentry_t *ext_ep;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
-	chksum = calc_checksum_1byte((void *) dos_ep->name, DOS_NAME_LENGTH, 0);
+	chksum = calc_checksum_1byte((void *)dos_ep->name, DOS_NAME_LENGTH, 0);
 
 	for (entry--; entry >= 0; entry--) {
 		ext_ep = (struct ext_dentry_t *)get_entry_in_dir(sb, p_dir,
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 131f60a07bb9..1cb0ec06c54e 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -379,7 +379,7 @@ static int ffsMountVol(struct super_block *sb)
 
 	p_fs->PBR_sector = 0;
 
-	p_pbr = (struct pbr_sector_t *) tmp_bh->b_data;
+	p_pbr = (struct pbr_sector_t *)tmp_bh->b_data;
 
 	/* check the validity of PBR */
 	if (GET16_A(p_pbr->signature) != PBR_SIGNATURE) {
@@ -502,7 +502,7 @@ static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
 	/* acquire the lock for file system critical section */
 	down(&p_fs->v_sem);
 
-	if (p_fs->used_clusters == (u32) ~0)
+	if (p_fs->used_clusters == (u32)~0)
 		p_fs->used_clusters = p_fs->fs_func->count_used_clusters(sb);
 
 	info->FatType = p_fs->vol_type;
@@ -812,7 +812,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 {
 	bool modified = false;
 	s32 offset, sec_offset, clu_offset;
-	s32 num_clusters, num_alloc, num_alloced = (s32) ~0;
+	s32 num_clusters, num_alloc, num_alloced = (s32)~0;
 	int ret = 0;
 	u32 clu, last_clu;
 	sector_t LogSector, sector = 0;
@@ -1225,7 +1225,7 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 	struct dentry_t *ep;
 	struct super_block *sb = old_parent_inode->i_sb;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	u8 *new_path = (u8 *) new_dentry->d_name.name;
+	u8 *new_path = (u8 *)new_dentry->d_name.name;
 	struct inode *new_inode = new_dentry->d_inode;
 	int num_entries;
 	struct file_id_t *new_fid = NULL;
@@ -1593,7 +1593,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 	info->ModifyTimestamp.Second = tm.sec;
 	info->ModifyTimestamp.MilliSecond = 0;
 
-	memset((char *) &info->AccessTimestamp, 0, sizeof(struct date_time_t));
+	memset((char *)&info->AccessTimestamp, 0, sizeof(struct date_time_t));
 
 	*(uni_name.name) = 0x0;
 	/* XXX this is very bad for exfat cuz name is already included in es.
@@ -2093,7 +2093,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 				fid->hint_last_clu = clu.dir;
 			}
 
-			fid->rwoffset = (s64) ++dentry;
+			fid->rwoffset = (s64)(++dentry);
 
 			if (p_fs->dev_ejected)
 				ret = FFS_MEDIAERR;
@@ -2119,7 +2119,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 
 	*(dir_entry->Name) = '\0';
 
-	fid->rwoffset = (s64) ++dentry;
+	fid->rwoffset = (s64)(++dentry);
 
 	if (p_fs->dev_ejected)
 		ret = FFS_MEDIAERR;
@@ -2264,7 +2264,7 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
 	} else if (!memcmp(de.ShortName, DOS_PAR_DIR_NAME, DOS_NAME_LENGTH)) {
 		inum = parent_ino(filp->f_path.dentry);
 	} else {
-		loff_t i_pos = ((loff_t) EXFAT_I(inode)->fid.start_clu << 32) |
+		loff_t i_pos = ((loff_t)EXFAT_I(inode)->fid.start_clu << 32) |
 				((EXFAT_I(inode)->fid.rwoffset - 1) & 0xffffffff);
 		struct inode *tmp = exfat_iget(sb, i_pos);
 
@@ -2325,7 +2325,7 @@ struct inode *inode = filp->f_path.dentry->d_inode;
 		if (!capable(CAP_SYS_ADMIN))
 			return -EPERM;
 
-		if (get_user(flags, (int __user *) arg))
+		if (get_user(flags, (int __user *)arg))
 			return -EFAULT;
 
 		__lock_super(sb);
@@ -2361,7 +2361,7 @@ static int exfat_create(struct inode *dir, struct dentry *dentry, umode_t mode,
 
 	pr_debug("%s entered\n", __func__);
 
-	err = ffsCreateFile(dir, (u8 *) dentry->d_name.name, FM_REGULAR, &fid);
+	err = ffsCreateFile(dir, (u8 *)dentry->d_name.name, FM_REGULAR, &fid);
 	if (err) {
 		if (err == FFS_INVALIDPATH)
 			err = -EINVAL;
@@ -2378,11 +2378,11 @@ static int exfat_create(struct inode *dir, struct dentry *dentry, umode_t mode,
 	INC_IVERSION(dir);
 	dir->i_ctime = dir->i_mtime = dir->i_atime = current_time(dir);
 	if (IS_DIRSYNC(dir))
-		(void) exfat_sync_inode(dir);
+		(void)exfat_sync_inode(dir);
 	else
 		mark_inode_dirty(dir);
 
-	i_pos = ((loff_t) fid.dir.dir << 32) | (fid.entry & 0xffffffff);
+	i_pos = ((loff_t)fid.dir.dir << 32) | (fid.entry & 0xffffffff);
 
 	inode = exfat_build_inode(sb, &fid, i_pos);
 	if (IS_ERR(inode)) {
@@ -2412,7 +2412,7 @@ static int exfat_find(struct inode *dir, struct qstr *qname,
 	if (qname->len == 0)
 		return -ENOENT;
 
-	err = ffsLookupFile(dir, (u8 *) qname->name, fid);
+	err = ffsLookupFile(dir, (u8 *)qname->name, fid);
 	if (err)
 		return -ENOENT;
 
@@ -2447,7 +2447,7 @@ static struct dentry *exfat_lookup(struct inode *dir, struct dentry *dentry,
 		goto error;
 	}
 
-	i_pos = ((loff_t) fid.dir.dir << 32) | (fid.entry & 0xffffffff);
+	i_pos = ((loff_t)fid.dir.dir << 32) | (fid.entry & 0xffffffff);
 	inode = exfat_build_inode(sb, &fid, i_pos);
 	if (IS_ERR(inode)) {
 		err = PTR_ERR(inode);
@@ -2542,7 +2542,7 @@ static int exfat_unlink(struct inode *dir, struct dentry *dentry)
 	INC_IVERSION(dir);
 	dir->i_mtime = dir->i_atime = current_time(dir);
 	if (IS_DIRSYNC(dir))
-		(void) exfat_sync_inode(dir);
+		(void)exfat_sync_inode(dir);
 	else
 		mark_inode_dirty(dir);
 
@@ -2565,14 +2565,14 @@ static int exfat_symlink(struct inode *dir, struct dentry *dentry,
 	struct file_id_t fid;
 	loff_t i_pos;
 	int err;
-	u64 len = (u64) strlen(target);
+	u64 len = (u64)strlen(target);
 	u64 ret;
 
 	__lock_super(sb);
 
 	pr_debug("%s entered\n", __func__);
 
-	err = ffsCreateFile(dir, (u8 *) dentry->d_name.name, FM_SYMLINK, &fid);
+	err = ffsCreateFile(dir, (u8 *)dentry->d_name.name, FM_SYMLINK, &fid);
 	if (err) {
 		if (err == FFS_INVALIDPATH)
 			err = -EINVAL;
@@ -2585,7 +2585,7 @@ static int exfat_symlink(struct inode *dir, struct dentry *dentry,
 		goto out;
 	}
 
-	err = ffsWriteFile(dir, &fid, (char *) target, len, &ret);
+	err = ffsWriteFile(dir, &fid, (char *)target, len, &ret);
 
 	if (err) {
 		ffsRemoveFile(dir, &fid);
@@ -2600,11 +2600,11 @@ static int exfat_symlink(struct inode *dir, struct dentry *dentry,
 	INC_IVERSION(dir);
 	dir->i_ctime = dir->i_mtime = dir->i_atime = current_time(dir);
 	if (IS_DIRSYNC(dir))
-		(void) exfat_sync_inode(dir);
+		(void)exfat_sync_inode(dir);
 	else
 		mark_inode_dirty(dir);
 
-	i_pos = ((loff_t) fid.dir.dir << 32) | (fid.entry & 0xffffffff);
+	i_pos = ((loff_t)fid.dir.dir << 32) | (fid.entry & 0xffffffff);
 
 	inode = exfat_build_inode(sb, &fid, i_pos);
 	if (IS_ERR(inode)) {
@@ -2642,7 +2642,7 @@ static int exfat_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
 
 	pr_debug("%s entered\n", __func__);
 
-	err = ffsCreateDir(dir, (u8 *) dentry->d_name.name, &fid);
+	err = ffsCreateDir(dir, (u8 *)dentry->d_name.name, &fid);
 	if (err) {
 		if (err == FFS_INVALIDPATH)
 			err = -EINVAL;
@@ -2659,12 +2659,12 @@ static int exfat_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
 	INC_IVERSION(dir);
 	dir->i_ctime = dir->i_mtime = dir->i_atime = current_time(dir);
 	if (IS_DIRSYNC(dir))
-		(void) exfat_sync_inode(dir);
+		(void)exfat_sync_inode(dir);
 	else
 		mark_inode_dirty(dir);
 	inc_nlink(dir);
 
-	i_pos = ((loff_t) fid.dir.dir << 32) | (fid.entry & 0xffffffff);
+	i_pos = ((loff_t)fid.dir.dir << 32) | (fid.entry & 0xffffffff);
 
 	inode = exfat_build_inode(sb, &fid, i_pos);
 	if (IS_ERR(inode)) {
@@ -2713,7 +2713,7 @@ static int exfat_rmdir(struct inode *dir, struct dentry *dentry)
 	INC_IVERSION(dir);
 	dir->i_mtime = dir->i_atime = current_time(dir);
 	if (IS_DIRSYNC(dir))
-		(void) exfat_sync_inode(dir);
+		(void)exfat_sync_inode(dir);
 	else
 		mark_inode_dirty(dir);
 	drop_nlink(dir);
@@ -2771,17 +2771,17 @@ static int exfat_rename(struct inode *old_dir, struct dentry *old_dentry,
 	new_dir->i_ctime = new_dir->i_mtime = new_dir->i_atime =
 				current_time(new_dir);
 	if (IS_DIRSYNC(new_dir))
-		(void) exfat_sync_inode(new_dir);
+		(void)exfat_sync_inode(new_dir);
 	else
 		mark_inode_dirty(new_dir);
 
-	i_pos = ((loff_t) EXFAT_I(old_inode)->fid.dir.dir << 32) |
+	i_pos = ((loff_t)EXFAT_I(old_inode)->fid.dir.dir << 32) |
 			(EXFAT_I(old_inode)->fid.entry & 0xffffffff);
 
 	exfat_detach(old_inode);
 	exfat_attach(old_inode, i_pos);
 	if (IS_DIRSYNC(new_dir))
-		(void) exfat_sync_inode(old_inode);
+		(void)exfat_sync_inode(old_inode);
 	else
 		mark_inode_dirty(old_inode);
 
@@ -2793,7 +2793,7 @@ static int exfat_rename(struct inode *old_dir, struct dentry *old_dentry,
 	INC_IVERSION(old_dir);
 	old_dir->i_ctime = old_dir->i_mtime = current_time(old_dir);
 	if (IS_DIRSYNC(old_dir))
-		(void) exfat_sync_inode(old_dir);
+		(void)exfat_sync_inode(old_dir);
 	else
 		mark_inode_dirty(old_dir);
 
@@ -2917,7 +2917,7 @@ static void exfat_truncate(struct inode *inode, loff_t old_size)
 
 	inode->i_ctime = inode->i_mtime = current_time(inode);
 	if (IS_DIRSYNC(inode))
-		(void) exfat_sync_inode(inode);
+		(void)exfat_sync_inode(inode);
 	else
 		mark_inode_dirty(inode);
 
@@ -3503,7 +3503,7 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 	struct vol_info_t info;
 
-	if (p_fs->used_clusters == (u32) ~0) {
+	if (p_fs->used_clusters == (u32)~0) {
 		if (ffsGetVolInfo(sb, &info) == FFS_MEDIAERR)
 			return -EIO;
 
@@ -3678,7 +3678,7 @@ static int parse_options(char *options, int silent, int *debug,
 	opts->fs_uid = current_uid();
 	opts->fs_gid = current_gid();
 	opts->fs_fmask = opts->fs_dmask = current->fs->umask;
-	opts->allow_utime = (unsigned short) -1;
+	opts->allow_utime = (unsigned short)-1;
 	opts->codepage = exfat_default_codepage;
 	opts->iocharset = exfat_default_iocharset;
 	opts->casesensitive = 0;
@@ -3770,7 +3770,7 @@ static int parse_options(char *options, int silent, int *debug,
 	}
 
 out:
-	if (opts->allow_utime == (unsigned short) -1)
+	if (opts->allow_utime == (unsigned short)-1)
 		opts->allow_utime = ~opts->fs_dmask & 0022;
 
 	return 0;
@@ -3817,7 +3817,7 @@ static int exfat_read_root(struct inode *inode)
 	i_size_write(inode, info.Size);
 	inode->i_blocks = ((i_size_read(inode) + (p_fs->cluster_size - 1))
 				& ~((loff_t)p_fs->cluster_size - 1)) >> 9;
-	EXFAT_I(inode)->i_pos = ((loff_t) p_fs->root_dir << 32) | 0xffffffff;
+	EXFAT_I(inode)->i_pos = ((loff_t)p_fs->root_dir << 32) | 0xffffffff;
 	EXFAT_I(inode)->mmu_private = i_size_read(inode);
 
 	exfat_save_attr(inode, ATTR_SUBDIR);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F20AC8E3
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Sep 2019 20:59:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 88FBF86399;
	Sat,  7 Sep 2019 18:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 27XSJwUTSJ81; Sat,  7 Sep 2019 18:59:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 15FCA8639E;
	Sat,  7 Sep 2019 18:58:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C7DFB1BF36E
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 18:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C329685C4B
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 18:58:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ql56tqQ29WW for <devel@linuxdriverproject.org>;
 Sat,  7 Sep 2019 18:58:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 21F2085C47
 for <devel@driverdev.osuosl.org>; Sat,  7 Sep 2019 18:58:49 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 345DE1D1; Sat,  7 Sep 2019 18:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1567882721;
 bh=YBhVELgBzXiS0sYAfUFJjI6VDi4Hc+E5C0RQtud7DXA=;
 h=From:To:Cc:Subject:Date:From;
 b=h+lezdy18jsguEkNWLh6EO+oeg+NzSByN87IBjaqPN9uUa0AGF/mucpqXVe58JoF6
 07HfmZYd9TRWpjmeKreH1G9DBB4ApJIAm8RLQG6GfMKb4arHRpjBswNHq43bm0Y/DB
 K9WRrVqOsOU2moDFBBffOI/yLGEp6id6C5ufrMbaemwNxMj/iC6nFfQ5sD2Sw/YWCN
 L1vuZrRaPPLGb5KWChbULPiFLfqm8RpZsHqpyE3pw0mcSPgujXygdvFj+UXZCRL3Iz
 1nQnr2i0hqAg6gw+QxVa7gEcsH/OhtRVn4OzMRmcjO3bdbYiNHXMzgEF5BGFJOKa2i
 pso38lpyp+gEQ==
From: Valentin Vidic <vvidic@valentin-vidic.from.hr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: exfat: cleanup spacing for operators
Date: Sat,  7 Sep 2019 18:58:32 +0000
Message-Id: <20190907185833.11910-1-vvidic@valentin-vidic.from.hr>
X-Mailer: git-send-email 2.20.1
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

  CHECK: spaces preferred around that '-' (ctx:VxV)
  CHECK: spaces preferred around that '+' (ctx:VxV)
  CHECK: spaces preferred around that '*' (ctx:VxV)
  CHECK: spaces preferred around that '|' (ctx:VxV)

Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
---
 drivers/staging/exfat/exfat.h       |  2 +-
 drivers/staging/exfat/exfat_core.c  | 76 ++++++++++++++---------------
 drivers/staging/exfat/exfat_super.c | 44 ++++++++---------
 3 files changed, 61 insertions(+), 61 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 0aa14dea4e09..6c12f2d79f4d 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -159,7 +159,7 @@
 /* Upcase table macro */
 #define HIGH_INDEX_BIT	(8)
 #define HIGH_INDEX_MASK	(0xFF00)
-#define LOW_INDEX_BIT	(16-HIGH_INDEX_BIT)
+#define LOW_INDEX_BIT	(16 - HIGH_INDEX_BIT)
 #define UTBL_ROW_COUNT	BIT(LOW_INDEX_BIT)
 #define UTBL_COL_COUNT	BIT(HIGH_INDEX_BIT)
 
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 995358cc7c79..8fb4ce16010c 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -230,7 +230,7 @@ s32 exfat_alloc_cluster(struct super_block *sb, s32 num_alloc,
 
 	hint_clu = p_chain->dir;
 	if (hint_clu == CLUSTER_32(~0)) {
-		hint_clu = test_alloc_bitmap(sb, p_fs->clu_srch_ptr-2);
+		hint_clu = test_alloc_bitmap(sb, p_fs->clu_srch_ptr - 2);
 		if (hint_clu == CLUSTER_32(~0))
 			return 0;
 	} else if (hint_clu >= p_fs->num_clusters) {
@@ -242,7 +242,7 @@ s32 exfat_alloc_cluster(struct super_block *sb, s32 num_alloc,
 
 	p_chain->dir = CLUSTER_32(~0);
 
-	while ((new_clu = test_alloc_bitmap(sb, hint_clu-2)) != CLUSTER_32(~0)) {
+	while ((new_clu = test_alloc_bitmap(sb, hint_clu - 2)) != CLUSTER_32(~0)) {
 		if (new_clu != hint_clu) {
 			if (p_chain->flags == 0x03) {
 				exfat_chain_cont_cluster(sb, p_chain->dir,
@@ -251,7 +251,7 @@ s32 exfat_alloc_cluster(struct super_block *sb, s32 num_alloc,
 			}
 		}
 
-		if (set_alloc_bitmap(sb, new_clu-2) != FFS_SUCCESS)
+		if (set_alloc_bitmap(sb, new_clu - 2) != FFS_SUCCESS)
 			return -1;
 
 		num_clusters++;
@@ -324,7 +324,7 @@ void fat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
 		if (do_relse) {
 			sector = START_SECTOR(clu);
 			for (i = 0; i < p_fs->sectors_per_clu; i++)
-				buf_release(sb, sector+i);
+				buf_release(sb, sector + i);
 		}
 
 		prev = clu;
@@ -367,10 +367,10 @@ void exfat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
 			if (do_relse) {
 				sector = START_SECTOR(clu);
 				for (i = 0; i < p_fs->sectors_per_clu; i++)
-					buf_release(sb, sector+i);
+					buf_release(sb, sector + i);
 			}
 
-			if (clr_alloc_bitmap(sb, clu-2) != FFS_SUCCESS)
+			if (clr_alloc_bitmap(sb, clu - 2) != FFS_SUCCESS)
 				break;
 			clu++;
 
@@ -384,10 +384,10 @@ void exfat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
 			if (do_relse) {
 				sector = START_SECTOR(clu);
 				for (i = 0; i < p_fs->sectors_per_clu; i++)
-					buf_release(sb, sector+i);
+					buf_release(sb, sector + i);
 			}
 
-			if (clr_alloc_bitmap(sb, clu-2) != FFS_SUCCESS)
+			if (clr_alloc_bitmap(sb, clu - 2) != FFS_SUCCESS)
 				break;
 
 			if (FAT_read(sb, clu, &clu) == -1)
@@ -491,7 +491,7 @@ void exfat_chain_cont_cluster(struct super_block *sb, u32 chain, s32 len)
 		return;
 
 	while (len > 1) {
-		if (FAT_write(sb, chain, chain+1) < 0)
+		if (FAT_write(sb, chain, chain + 1) < 0)
 			break;
 		chain++;
 		len--;
@@ -538,7 +538,7 @@ s32 load_alloc_bitmap(struct super_block *sb)
 				p_fs->map_clu  = GET32_A(ep->start_clu);
 				map_size = (u32) GET64_A(ep->size);
 
-				p_fs->map_sectors = ((map_size-1) >> p_bd->sector_size_bits) + 1;
+				p_fs->map_sectors = ((map_size - 1) >> p_bd->sector_size_bits) + 1;
 
 				p_fs->vol_amap = kmalloc_array(p_fs->map_sectors,
 							       sizeof(struct buffer_head *),
@@ -550,7 +550,7 @@ s32 load_alloc_bitmap(struct super_block *sb)
 
 				for (j = 0; j < p_fs->map_sectors; j++) {
 					p_fs->vol_amap[j] = NULL;
-					ret = sector_read(sb, sector+j, &(p_fs->vol_amap[j]), 1);
+					ret = sector_read(sb, sector + j, &(p_fs->vol_amap[j]), 1);
 					if (ret != FFS_SUCCESS) {
 						/*  release all buffers and free vol_amap */
 						i = 0;
@@ -728,7 +728,7 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 		sector++;
 
 		for (i = 0; i < p_bd->sector_size && index <= 0xFFFF; i += 2) {
-			uni = GET16(((u8 *) tmp_bh->b_data)+i);
+			uni = GET16(((u8 *) tmp_bh->b_data) + i);
 
 			checksum = ((checksum & 1) ? 0x80000000 : 0) +
 				   (checksum >> 1) + *(((u8 *)tmp_bh->b_data) +
@@ -798,7 +798,7 @@ static s32 __load_default_upcase_table(struct super_block *sb)
 		return FFS_MEMORYERR;
 	memset(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));
 
-	for (i = 0; index <= 0xFFFF && i < NUM_UPCASE*2; i += 2) {
+	for (i = 0; index <= 0xFFFF && i < NUM_UPCASE * 2; i += 2) {
 		uni = GET16(uni_upcase + i);
 		if (skip) {
 			pr_debug("skip from 0x%X ", index);
@@ -875,7 +875,7 @@ s32 load_upcase_table(struct super_block *sb)
 			tbl_size = (u32) GET64_A(ep->size);
 
 			sector = START_SECTOR(tbl_clu);
-			num_sectors = ((tbl_size-1) >> p_bd->sector_size_bits) + 1;
+			num_sectors = ((tbl_size - 1) >> p_bd->sector_size_bits) + 1;
 			if (__load_upcase_table(sb, sector, num_sectors,
 						GET32_A(ep->checksum)) != FFS_SUCCESS)
 				break;
@@ -919,10 +919,10 @@ u32 fat_get_entry_type(struct dentry_t *p_entry)
 	else if (ep->attr == ATTR_EXTEND)
 		return TYPE_EXTEND;
 
-	else if ((ep->attr & (ATTR_SUBDIR|ATTR_VOLUME)) == ATTR_VOLUME)
+	else if ((ep->attr & (ATTR_SUBDIR | ATTR_VOLUME)) == ATTR_VOLUME)
 		return TYPE_VOLUME;
 
-	else if ((ep->attr & (ATTR_SUBDIR|ATTR_VOLUME)) == ATTR_SUBDIR)
+	else if ((ep->attr & (ATTR_SUBDIR | ATTR_VOLUME)) == ATTR_SUBDIR)
 		return TYPE_DIR;
 
 	return TYPE_FILE;
@@ -1269,7 +1269,7 @@ s32 exfat_init_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 	if (!file_ep)
 		return FFS_MEDIAERR;
 
-	strm_ep = (struct strm_dentry_t *)get_entry_in_dir(sb, p_dir, entry+1,
+	strm_ep = (struct strm_dentry_t *)get_entry_in_dir(sb, p_dir, entry + 1,
 							   &sector);
 	if (!strm_ep)
 		return FFS_MEDIAERR;
@@ -1327,7 +1327,7 @@ static s32 fat_init_ext_entry(struct super_block *sb, struct chain_t *p_dir,
 		if (!ext_ep)
 			return FFS_MEDIAERR;
 
-		init_ext_entry(ext_ep, i+0x40, chksum, uniname);
+		init_ext_entry(ext_ep, i + 0x40, chksum, uniname);
 		buf_modify(sb, sector);
 	}
 
@@ -1354,7 +1354,7 @@ static s32 exfat_init_ext_entry(struct super_block *sb, struct chain_t *p_dir,
 	file_ep->num_ext = (u8)(num_entries - 1);
 	buf_modify(sb, sector);
 
-	strm_ep = (struct strm_dentry_t *)get_entry_in_dir(sb, p_dir, entry+1,
+	strm_ep = (struct strm_dentry_t *)get_entry_in_dir(sb, p_dir, entry + 1,
 							   &sector);
 	if (!strm_ep)
 		return FFS_MEDIAERR;
@@ -1409,13 +1409,13 @@ void init_ext_entry(struct ext_dentry_t *ep, s32 order, u8 chksum, u16 *uniname)
 
 	for (i = 0; i < 10; i += 2) {
 		if (!end) {
-			SET16(ep->unicode_0_4+i, *uniname);
+			SET16(ep->unicode_0_4 + i, *uniname);
 			if (*uniname == 0x0)
 				end = true;
 			else
 				uniname++;
 		} else {
-			SET16(ep->unicode_0_4+i, 0xFFFF);
+			SET16(ep->unicode_0_4 + i, 0xFFFF);
 		}
 	}
 
@@ -1476,7 +1476,7 @@ void init_name_entry(struct name_dentry_t *ep, u16 *uniname)
 	ep->flags = 0x0;
 
 	for (i = 0; i < 30; i++, i++) {
-		SET16_A(ep->unicode_0_14+i, *uniname);
+		SET16_A(ep->unicode_0_14 + i, *uniname);
 		if (*uniname == 0x0)
 			break;
 		uniname++;
@@ -1491,8 +1491,8 @@ void fat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 	struct dentry_t *ep;
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
-	for (i = num_entries-1; i >= order; i--) {
-		ep = get_entry_in_dir(sb, p_dir, entry-i, &sector);
+	for (i = num_entries - 1; i >= order; i--) {
+		ep = get_entry_in_dir(sb, p_dir, entry - i, &sector);
 		if (!ep)
 			return;
 
@@ -1510,7 +1510,7 @@ void exfat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 
 	for (i = order; i < num_entries; i++) {
-		ep = get_entry_in_dir(sb, p_dir, entry+i, &sector);
+		ep = get_entry_in_dir(sb, p_dir, entry + i, &sector);
 		if (!ep)
 			return;
 
@@ -1540,7 +1540,7 @@ void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
 				     CS_DIR_ENTRY);
 
 	for (i = 1; i < num_entries; i++) {
-		ep = get_entry_in_dir(sb, p_dir, entry+i, NULL);
+		ep = get_entry_in_dir(sb, p_dir, entry + i, NULL);
 		if (!ep) {
 			buf_unlock(sb, sector);
 			return;
@@ -1732,7 +1732,7 @@ struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
 		goto err_out;
 
 	if (type == ES_ALL_ENTRIES)
-		num_entries = ((struct file_dentry_t *)ep)->num_ext+1;
+		num_entries = ((struct file_dentry_t *)ep)->num_ext + 1;
 	else
 		num_entries = type;
 
@@ -1998,7 +1998,7 @@ s32 search_deleted_or_unused_entry(struct super_block *sb,
 		if (p_dir->dir == CLUSTER_32(0)) /* FAT16 root_dir */
 			i = dentry % dentries_per_clu;
 		else
-			i = dentry & (dentries_per_clu-1);
+			i = dentry & (dentries_per_clu - 1);
 
 		for (; i < dentries_per_clu; i++, dentry++) {
 			ep = get_entry_in_dir(sb, &clu, i, NULL);
@@ -2028,7 +2028,7 @@ s32 search_deleted_or_unused_entry(struct super_block *sb,
 				p_fs->hint_uentry.entry = -1;
 
 				if (p_fs->vol_type == EXFAT)
-					return dentry - (num_entries-1);
+					return dentry - (num_entries - 1);
 				else
 					return dentry;
 			}
@@ -2127,7 +2127,7 @@ s32 find_empty_entry(struct inode *inode, struct chain_t *p_dir, s32 num_entries
 			}
 		}
 
-		i_size_write(inode, i_size_read(inode)+p_fs->cluster_size);
+		i_size_write(inode, i_size_read(inode) + p_fs->cluster_size);
 		EXFAT_I(inode)->mmu_private += p_fs->cluster_size;
 		EXFAT_I(inode)->fid.size += p_fs->cluster_size;
 		EXFAT_I(inode)->fid.flags = p_dir->flags;
@@ -2201,7 +2201,7 @@ s32 fat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 					ext_ep = (struct ext_dentry_t *) ep;
 					if (ext_ep->order > 0x40) {
 						order = (s32)(ext_ep->order - 0x40);
-						uniname = p_uniname->name + 13 * (order-1);
+						uniname = p_uniname->name + 13 * (order - 1);
 					} else {
 						order = (s32) ext_ep->order;
 						uniname -= 13;
@@ -2209,13 +2209,13 @@ s32 fat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 
 					len = extract_uni_name_from_ext_entry(ext_ep, entry_uniname, order);
 
-					unichar = *(uniname+len);
-					*(uniname+len) = 0x0;
+					unichar = *(uniname + len);
+					*(uniname + len) = 0x0;
 
 					if (nls_uniname_cmp(sb, uniname, entry_uniname))
 						is_feasible_entry = false;
 
-					*(uniname+len) = unichar;
+					*(uniname + len) = unichar;
 				}
 				has_ext_entry = true;
 			} else if (entry_type == TYPE_UNUSED) {
@@ -2301,7 +2301,7 @@ s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 						p_fs->hint_uentry.clu.flags = clu.flags;
 					}
 					if ((num_empty >= num_entries) || (entry_type == TYPE_UNUSED))
-						p_fs->hint_uentry.entry = dentry - (num_empty-1);
+						p_fs->hint_uentry.entry = dentry - (num_empty - 1);
 				}
 
 				if (entry_type == TYPE_UNUSED)
@@ -2341,8 +2341,8 @@ s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 						len = extract_uni_name_from_name_entry(name_ep,
 								entry_uniname, order);
 
-						unichar = *(uniname+len);
-						*(uniname+len) = 0x0;
+						unichar = *(uniname + len);
+						*(uniname + len) = 0x0;
 
 						if (nls_uniname_cmp(sb, uniname, entry_uniname)) {
 							is_feasible_entry = false;
@@ -2353,7 +2353,7 @@ s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 							return dentry - (num_ext_entries);
 						}
 
-						*(uniname+len) = unichar;
+						*(uniname + len) = unichar;
 					}
 				} else {
 					is_feasible_entry = false;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 60dfea73a7a4..131f60a07bb9 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -605,7 +605,7 @@ static int ffsLookupFile(struct inode *inode, char *path, struct file_id_t *fid)
 				ret =  FFS_MEDIAERR;
 				goto out;
 			}
-			ep2 = ep+1;
+			ep2 = ep + 1;
 		} else {
 			ep = get_entry_in_dir(sb, &dir, dentry, NULL);
 			if (!ep) {
@@ -757,7 +757,7 @@ static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
 		fid->hint_last_clu = clu;
 
 		/* byte offset in cluster */
-		offset = (s32)(fid->rwoffset & (p_fs->cluster_size-1));
+		offset = (s32)(fid->rwoffset & (p_fs->cluster_size - 1));
 
 		/* sector offset in cluster */
 		sec_offset = offset >> p_bd->sector_size_bits;
@@ -858,7 +858,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 	if (fid->size == 0)
 		num_clusters = 0;
 	else
-		num_clusters = (s32)((fid->size-1) >>
+		num_clusters = (s32)((fid->size - 1) >>
 				     p_fs->cluster_size_bits) + 1;
 
 	write_bytes = 0;
@@ -899,7 +899,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 			num_alloc = (s32)((count - 1) >>
 					  p_fs->cluster_size_bits) + 1;
 			new_clu.dir = (last_clu == CLUSTER_32(~0)) ?
-					CLUSTER_32(~0) : last_clu+1;
+					CLUSTER_32(~0) : last_clu + 1;
 			new_clu.size = 0;
 			new_clu.flags = fid->flags;
 
@@ -969,7 +969,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 			}
 		} else {
 			if ((offset > 0) ||
-			    ((fid->rwoffset+oneblkwrite) < fid->size)) {
+			    ((fid->rwoffset + oneblkwrite) < fid->size)) {
 				if (sector_read(sb, LogSector, &tmp_bh, 1) !=
 				    FFS_SUCCESS)
 					goto err_out;
@@ -1008,7 +1008,7 @@ static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
 					  ES_ALL_ENTRIES, &ep);
 		if (!es)
 			goto err_out;
-		ep2 = ep+1;
+		ep2 = ep + 1;
 	} else {
 		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
 		if (!ep)
@@ -1103,11 +1103,11 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
 	fs_set_vol_flags(sb, VOL_DIRTY);
 
 	clu.dir = fid->start_clu;
-	clu.size = (s32)((old_size-1) >> p_fs->cluster_size_bits) + 1;
+	clu.size = (s32)((old_size - 1) >> p_fs->cluster_size_bits) + 1;
 	clu.flags = fid->flags;
 
 	if (new_size > 0) {
-		num_clusters = (s32)((new_size-1) >>
+		num_clusters = (s32)((new_size - 1) >>
 				     p_fs->cluster_size_bits) + 1;
 
 		if (clu.flags == 0x03) {
@@ -1141,7 +1141,7 @@ static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
 			ret = FFS_MEDIAERR;
 			goto out;
 			}
-		ep2 = ep+1;
+		ep2 = ep + 1;
 	} else {
 		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
 		if (!ep) {
@@ -1209,7 +1209,7 @@ static void update_parent_info(struct file_id_t *fid,
 		     (parent_fid->start_clu != fid->dir.dir))) {
 		fid->dir.dir = parent_fid->start_clu;
 		fid->dir.flags = parent_fid->flags;
-		fid->dir.size = ((parent_fid->size + (p_fs->cluster_size-1))
+		fid->dir.size = ((parent_fid->size + (p_fs->cluster_size - 1))
 						>> p_fs->cluster_size_bits);
 	}
 }
@@ -1326,7 +1326,7 @@ static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
 		if (num_entries < 0)
 			goto out;
 		p_fs->fs_func->delete_dir_entry(sb, p_dir, new_entry, 0,
-						num_entries+1);
+						num_entries + 1);
 	}
 out:
 #ifdef CONFIG_EXFAT_DELAYED_SYNC
@@ -1381,7 +1381,7 @@ static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
 	remove_file(inode, &dir, dentry);
 
 	clu_to_free.dir = fid->start_clu;
-	clu_to_free.size = (s32)((fid->size-1) >> p_fs->cluster_size_bits) + 1;
+	clu_to_free.size = (s32)((fid->size - 1) >> p_fs->cluster_size_bits) + 1;
 	clu_to_free.flags = fid->flags;
 
 	/* (2) free the clusters */
@@ -1561,7 +1561,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 			ret = FFS_MEDIAERR;
 			goto out;
 		}
-		ep2 = ep+1;
+		ep2 = ep + 1;
 	} else {
 		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
 		if (!ep) {
@@ -1685,7 +1685,7 @@ static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
 			ret = FFS_MEDIAERR;
 			goto out;
 		}
-		ep2 = ep+1;
+		ep2 = ep + 1;
 	} else {
 		/* for other than exfat */
 		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
@@ -2019,7 +2019,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 		if (dir.dir == CLUSTER_32(0)) /* FAT16 root_dir */
 			i = dentry % dentries_per_clu;
 		else
-			i = dentry & (dentries_per_clu-1);
+			i = dentry & (dentries_per_clu - 1);
 
 		for ( ; i < dentries_per_clu; i++, dentry++) {
 			ep = get_entry_in_dir(sb, &clu, i, &sector);
@@ -2070,7 +2070,7 @@ static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
 			buf_unlock(sb, sector);
 
 			if (p_fs->vol_type == EXFAT) {
-				ep = get_entry_in_dir(sb, &clu, i+1, NULL);
+				ep = get_entry_in_dir(sb, &clu, i + 1, NULL);
 				if (!ep) {
 					ret = FFS_MEDIAERR;
 					goto out;
@@ -2159,7 +2159,7 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
 	down(&p_fs->v_sem);
 
 	clu_to_free.dir = fid->start_clu;
-	clu_to_free.size = (s32)((fid->size-1) >> p_fs->cluster_size_bits) + 1;
+	clu_to_free.size = (s32)((fid->size - 1) >> p_fs->cluster_size_bits) + 1;
 	clu_to_free.flags = fid->flags;
 
 	if (!is_dir_empty(sb, &clu_to_free)) {
@@ -2247,7 +2247,7 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
 		 */
 		if (err == FFS_MEDIAERR) {
 			cpos += 1 << p_bd->sector_size_bits;
-			cpos &= ~((1 << p_bd->sector_size_bits)-1);
+			cpos &= ~((1 << p_bd->sector_size_bits) - 1);
 		}
 
 		err = -EIO;
@@ -2265,7 +2265,7 @@ static int exfat_readdir(struct file *filp, struct dir_context *ctx)
 		inum = parent_ino(filp->f_path.dentry);
 	} else {
 		loff_t i_pos = ((loff_t) EXFAT_I(inode)->fid.start_clu << 32) |
-				((EXFAT_I(inode)->fid.rwoffset-1) & 0xffffffff);
+				((EXFAT_I(inode)->fid.rwoffset - 1) & 0xffffffff);
 		struct inode *tmp = exfat_iget(sb, i_pos);
 
 		if (tmp) {
@@ -3089,7 +3089,7 @@ static int exfat_bmap(struct inode *inode, sector_t sector, sector_t *phys,
 		if (inode->i_ino == EXFAT_ROOT_INO) {
 			if (sector <
 			    (p_fs->dentries_in_root >>
-			     (p_bd->sector_size_bits-DENTRY_SIZE_BITS))) {
+			     (p_bd->sector_size_bits - DENTRY_SIZE_BITS))) {
 				*phys = sector + p_fs->root_start_sector;
 				*mapped_blocks = 1;
 			}
@@ -3206,7 +3206,7 @@ static int exfat_write_begin(struct file *file, struct address_space *mapping,
 			       &EXFAT_I(mapping->host)->mmu_private);
 
 	if (ret < 0)
-		exfat_write_failed(mapping, pos+len);
+		exfat_write_failed(mapping, pos + len);
 	return ret;
 }
 
@@ -3221,7 +3221,7 @@ static int exfat_write_end(struct file *file, struct address_space *mapping,
 	err = generic_write_end(file, mapping, pos, len, copied, pagep, fsdata);
 
 	if (err < len)
-		exfat_write_failed(mapping, pos+len);
+		exfat_write_failed(mapping, pos + len);
 
 	if (!(err < 0) && !(fid->attr & ATTR_ARCHIVE)) {
 		inode->i_mtime = inode->i_ctime = current_time(inode);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

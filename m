Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA29FF9BB5
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 22:14:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A2B2D858BA;
	Tue, 12 Nov 2019 21:13:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pEXWDNtP8lot; Tue, 12 Nov 2019 21:13:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 95FA085775;
	Tue, 12 Nov 2019 21:13:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B10561BF404
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AE54685775
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 21:13:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cVhmJd1CDYI1 for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 21:13:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D2E598545B
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 21:13:53 +0000 (UTC)
Received: from mr1.cc.vt.edu (mr1.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8300:0:31:1732:8aa4])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xACLDqs6029752
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:52 -0500
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69])
 by mr1.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xACLDlFh021661
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 16:13:52 -0500
Received: by mail-qv1-f69.google.com with SMTP id i16so8888237qvm.14
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 13:13:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=wN3d2kdOZvUd019MrkFxf+wV1r/QbnQ8i3gbsIy65Ko=;
 b=V5y6WfIExIilq7iLJMJOsnwQoxl3CI2CTxpnwMBjCP/QLIjKCPvy6/FmPIMRojhA00
 TI1FFOgRtEkCaY5KINKifUWIgOvlDNfsuonbDxat4vjq8OBpJjjeuD04T1UWcSgai2AG
 Tr/hkkZJSowtFORZ6gnZjS5jJMlWBDVv74e7ITbXmeglcK9FnvI2NijlXr5RAyxnKCox
 v8nJ1E5k7RP0ZdB+Y/A0NHQt1tHU3q+YQjYodMoGuF6Q/jl+6jJGtmH3ublpeRSHWZI3
 79p+eOSycF3mzNSCKiNe8Voq5Qc+QtkzLsCp6EEBHGoAwwWxLehkQpRSzu6xbzj56yDO
 cbzQ==
X-Gm-Message-State: APjAAAWUv6MOa+r0FIPPMb8Od+/JhihQgmeIH9mp9GjBVm1Mx6wO/Y0v
 N9BTGPg1+bAWqJHxqDdZaPvbn3RTXdL/+EOO2jlR1WSMf9Lxt83v1ejmeCiMVQWEropadY4gYJr
 l6kMuTH9As73kfpU/FBNTpGf6CX6Btr41
X-Received: by 2002:ac8:7948:: with SMTP id r8mr30671911qtt.91.1573593227568; 
 Tue, 12 Nov 2019 13:13:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqwmCzOqCxP74DHU8hfkkqnBRILROjpy5RY655uzzcyNQR3UJouQiu943RxUjpFtf3PhN9woJQ==
X-Received: by 2002:ac8:7948:: with SMTP id r8mr30671872qtt.91.1573593227202; 
 Tue, 12 Nov 2019 13:13:47 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 130sm9674214qkd.33.2019.11.12.13.13.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 13:13:46 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: 
Subject: [PATCH 09/12] staging: exfat: Clean up the namespace pollution part 5
Date: Tue, 12 Nov 2019 16:12:35 -0500
Message-Id: <20191112211238.156490-10-Valdis.Kletnieks@vt.edu>
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

Some more functions that can be moved and made static

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h      |   3 -
 drivers/staging/exfat/exfat_core.c | 182 ++++++++++++++---------------
 2 files changed, 91 insertions(+), 94 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 48267dd11e9d..c41fc3ec9f29 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -764,9 +764,6 @@ void exfat_chain_cont_cluster(struct super_block *sb, u32 chain, s32 len);
 /* allocation bitmap management functions */
 s32 load_alloc_bitmap(struct super_block *sb);
 void free_alloc_bitmap(struct super_block *sb);
-s32 set_alloc_bitmap(struct super_block *sb, u32 clu);
-s32 clr_alloc_bitmap(struct super_block *sb, u32 clu);
-u32 test_alloc_bitmap(struct super_block *sb, u32 clu);
 void sync_alloc_bitmap(struct super_block *sb);
 
 /* upcase table management functions */
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 24700b251acb..8d38f70c9726 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -156,6 +156,97 @@ static s32 clear_cluster(struct super_block *sb, u32 clu)
 	return ret;
 }
 
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
 static s32 exfat_alloc_cluster(struct super_block *sb, s32 num_alloc,
 			struct chain_t *p_chain)
 {
@@ -468,97 +559,6 @@ void free_alloc_bitmap(struct super_block *sb)
 	p_fs->vol_amap = NULL;
 }
 
-s32 set_alloc_bitmap(struct super_block *sb, u32 clu)
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
-s32 clr_alloc_bitmap(struct super_block *sb, u32 clu)
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
-u32 test_alloc_bitmap(struct super_block *sb, u32 clu)
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
 void sync_alloc_bitmap(struct super_block *sb)
 {
 	int i;
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

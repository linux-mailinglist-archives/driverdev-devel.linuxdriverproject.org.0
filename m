Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF6EF86A3
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 03:10:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F2E7F86E21;
	Tue, 12 Nov 2019 02:10:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x6fpnxMoe-CL; Tue, 12 Nov 2019 02:10:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD37886B9E;
	Tue, 12 Nov 2019 02:10:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 24F551BF37A
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 02:10:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0F9C187FC9
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 02:10:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rohy3gQNiXi7 for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 02:10:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E9A2487F0C
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 02:10:24 +0000 (UTC)
Received: from mr1.cc.vt.edu (inbound.smtp.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xAC2ANQh011412
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 21:10:23 -0500
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mr1.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xAC2AIWd016294
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 21:10:23 -0500
Received: by mail-qt1-f198.google.com with SMTP id h39so19138277qth.13
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 18:10:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=nRpTki0gCidh58OgWjsjlNbtGeZKooZJJuOtnn09nxI=;
 b=U4mNV1youEco3tmpaSw1UI0ZcXbGTyPOqW+7qFy5aG4pd7PkDTJJfQeArihOnPo/25
 9tmf53Fq/ClZ9HYqJa1y/Rp++lKaWqQ0jyAFr9x9gH8EZmldQlftkEAT1bJWAr1He/cJ
 vUxxdiiau/Cr/loYaop6PlmC8JK5RIO05PPs2gki4EfN74l8Cd274tdL6y2GMQ5HePk2
 9zXsNh9GcLpOYbHw20thanqFvOpn+LK2gHh5fEqCsFqW/vmvKsEx3j/y8L1SeSJ8oxGH
 a5EUy+wwHEwmFY0szBIoEPyCix5/XV87LMic5Lfqm8pTlyUCMRyRKQdHSd3TZgsY/S6H
 4RQA==
X-Gm-Message-State: APjAAAXe7r1/oTyW7aA5hgct3ozxzyvoWoPqzMYGvKc1rKvHQZiw7MyN
 7QfxC0smjeFbT+Fapl3oStcZU1szikkA3Ut4pFqtx1m/LZnnFs+1ob6642sfklFLKFLE/DDM3Qk
 PpRw/Z4eberyUCF29FUbvkuG8PQFopZaL
X-Received: by 2002:a37:782:: with SMTP id 124mr13627260qkh.142.1573524618168; 
 Mon, 11 Nov 2019 18:10:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqyDZC46SpCJRfV6mpGZkD/E1Flbu1ayJdrNSgII1HY5pMVz/B6gXtJHLghNxKZhqlGG5vzC5Q==
X-Received: by 2002:a37:782:: with SMTP id 124mr13627238qkh.142.1573524617853; 
 Mon, 11 Nov 2019 18:10:17 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id o195sm8004767qke.35.2019.11.11.18.10.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 18:10:16 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 1/9] staging: exfat: Clean up return codes - FFS_FORMATERR
Date: Mon, 11 Nov 2019 21:09:49 -0500
Message-Id: <20191112021000.42091-2-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112021000.42091-1-Valdis.Kletnieks@vt.edu>
References: <20191112021000.42091-1-Valdis.Kletnieks@vt.edu>
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

Convert FFS_FORMATERR to -EFSCORRUPTED

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       | 3 ++-
 drivers/staging/exfat/exfat_core.c  | 8 ++++----
 drivers/staging/exfat/exfat_super.c | 2 +-
 3 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index acb73f47a253..4f9ba235d967 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -30,6 +30,8 @@
 #undef DEBUG
 #endif
 
+#define EFSCORRUPTED	EUCLEAN		/* Filesystem is corrupted */
+
 #define DENTRY_SIZE		32	/* dir entry size */
 #define DENTRY_SIZE_BITS	5
 
@@ -209,7 +211,6 @@ static inline u16 get_row_index(u16 i)
 /* return values */
 #define FFS_SUCCESS             0
 #define FFS_MEDIAERR            1
-#define FFS_FORMATERR           2
 #define FFS_MOUNTED             3
 #define FFS_NOTMOUNTED          4
 #define FFS_ALIGNMENTERR        5
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index b23fbf3ebaa5..e90b54a17150 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -573,7 +573,7 @@ s32 load_alloc_bitmap(struct super_block *sb)
 			return FFS_MEDIAERR;
 	}
 
-	return FFS_FORMATERR;
+	return -EFSCORRUPTED;
 }
 
 void free_alloc_bitmap(struct super_block *sb)
@@ -3016,7 +3016,7 @@ s32 fat16_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 
 	if (p_bpb->num_fats == 0)
-		return FFS_FORMATERR;
+		return -EFSCORRUPTED;
 
 	num_root_sectors = GET16(p_bpb->num_root_entries) << DENTRY_SIZE_BITS;
 	num_root_sectors = ((num_root_sectors - 1) >>
@@ -3078,7 +3078,7 @@ s32 fat32_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 
 	if (p_bpb->num_fats == 0)
-		return FFS_FORMATERR;
+		return -EFSCORRUPTED;
 
 	p_fs->sectors_per_clu = p_bpb->sectors_per_clu;
 	p_fs->sectors_per_clu_bits = ilog2(p_bpb->sectors_per_clu);
@@ -3157,7 +3157,7 @@ s32 exfat_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 
 	if (p_bpb->num_fats == 0)
-		return FFS_FORMATERR;
+		return -EFSCORRUPTED;
 
 	p_fs->sectors_per_clu = 1 << p_bpb->sectors_per_clu_bits;
 	p_fs->sectors_per_clu_bits = p_bpb->sectors_per_clu_bits;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 1ae5a7750348..e0c4a3ab8458 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -384,7 +384,7 @@ static int ffsMountVol(struct super_block *sb)
 	if (GET16_A(p_pbr->signature) != PBR_SIGNATURE) {
 		brelse(tmp_bh);
 		bdev_close(sb);
-		ret = FFS_FORMATERR;
+		ret = -EFSCORRUPTED;
 		goto out;
 	}
 
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

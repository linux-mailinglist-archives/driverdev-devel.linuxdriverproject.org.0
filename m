Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADF6E3720
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 17:54:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C5D7B230BD;
	Thu, 24 Oct 2019 15:54:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O041RX5Xn+7G; Thu, 24 Oct 2019 15:54:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7C52222E96;
	Thu, 24 Oct 2019 15:54:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EBC6D1BF297
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E91DF85735
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GDuim5gJJYOr for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 15:54:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 16B62806F5
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 15:54:41 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OFse2W027028
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:40 -0400
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OFsY05021837
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:39 -0400
Received: by mail-qt1-f198.google.com with SMTP id x12so21488qtq.3
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 08:54:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=D/1VhmAhD3zi1l2243w8fbyxsU10KIHq0czBUcE2Eo8=;
 b=ASRUc+h995pb17LiRIDv42hLkRHcRGWwDABfoHaoNmQCaj5KNbW64ASGKi0O4/369m
 fKmrV9BZ38O5LmaEaCzSRt5/r81v/KxP2qOUxEVXmyyePEb/9oLfw+rNvloe3An9bNmJ
 k8yDsFz4PvIhZyQ5vihrHPNzfVrJ/l50kYOFmRQ9OuO469IVBvIa19Wbty6dZ49zJWFO
 iWVTm3nwSzo7PydeWjbXD07iYWvFUnHmrUqpeHRb1sTmlJT7UYG5aIsO4whqATo08Tcz
 i/m8K5dCgzdqLYtqo9d3HtYz0INHFudgODtMfjmBuPUuJMu8g52vGxfvgye4ZF4XEfGF
 XbQg==
X-Gm-Message-State: APjAAAUNaNqXV7wKAjhQLLbfrqo8okIYJvoe/NXBrcUbPGDfus2iKTwa
 z1He7R1YV1lgYE5fGQzn0xxa+V5tx5Y2QVoooSMXCbJeEbq376Aos/wQcswgpzjVW8j7sOdgPe4
 spQ7nCRf3MCa9sDiWk/iaJQiDEuKhdm4L
X-Received: by 2002:a37:a50a:: with SMTP id o10mr14381381qke.115.1571932474701; 
 Thu, 24 Oct 2019 08:54:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy4esJktLLI4kSKiGMacw/otWmsfL+5VwGdnUH9R6Wajz3T1AOiruITnXjnTZAYbU4iCu4DWw==
X-Received: by 2002:a37:a50a:: with SMTP id o10mr14381364qke.115.1571932474401; 
 Thu, 24 Oct 2019 08:54:34 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x133sm12693274qka.44.2019.10.24.08.54.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:54:33 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 09/15] staging: exfat: Clean up return codes - FFS_FORMATERR
Date: Thu, 24 Oct 2019 11:53:20 -0400
Message-Id: <20191024155327.1095907-10-Valdis.Kletnieks@vt.edu>
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

Convert FFS_FORMATERR to -EFSCORRUPTED

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h       | 3 ++-
 drivers/staging/exfat/exfat_core.c  | 4 ++--
 drivers/staging/exfat/exfat_super.c | 2 +-
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 2588a6cbe552..7ca187e77cbe 100644
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
index fa2bf18b4a14..39c103e73b63 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -205,7 +205,7 @@ s32 load_alloc_bitmap(struct super_block *sb)
 			return FFS_MEDIAERR;
 	}
 
-	return FFS_FORMATERR;
+	return -EFSCORRUPTED;
 }
 
 void free_alloc_bitmap(struct super_block *sb)
@@ -2309,7 +2309,7 @@ s32 exfat_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 
 	if (p_bpb->num_fats == 0)
-		return FFS_FORMATERR;
+		return -EFSCORRUPTED;
 
 	p_fs->sectors_per_clu = 1 << p_bpb->sectors_per_clu_bits;
 	p_fs->sectors_per_clu_bits = p_bpb->sectors_per_clu_bits;
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 5b35e3683605..161971c80c02 100644
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
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B92E3723
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 17:54:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 05DC788330;
	Thu, 24 Oct 2019 15:54:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PZDgMoxnNiON; Thu, 24 Oct 2019 15:54:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5251B882F8;
	Thu, 24 Oct 2019 15:54:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 485DA1BF297
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 40DB22155D
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:54:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rEkxHu74Bg1v for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 15:54:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 6C19D22FEE
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 15:54:36 +0000 (UTC)
Received: from mr3.cc.vt.edu (mr3.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:7f:b804:6b0a])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OFsZAK026969
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:35 -0400
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mr3.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OFsUF5004009
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:54:35 -0400
Received: by mail-qt1-f198.google.com with SMTP id 59so25441381qtc.5
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 08:54:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=yKYfNMQHtrbDF/G3Fi58sG8HBu5LDL0Q3jnUUhO0N9U=;
 b=GmNWyKBDh3at5giKW8ffFNIHLMkfdqlkCMmokJj1TRD1W+LvmyCtVKvZy/lzbpnjr2
 kRVz34FW69PW5Lt4wEsMBiuZapzgfwsULG4EitmitBvWUJlYAGfZqB+HXgBp6F//ZoTX
 vKnYzFxEnfyUVb5lqXURtcRQCl1rc4LfgUEBtL9t/6wRDeOL1HhuTwlZyAYcVljW57RV
 M3sAcEbLY7HHL8hllBNq9cdo2vhZPS5jyeuxCQgt2JUA2MOKCSGwvIwH/xfQrz07dqpH
 Hbneq80HXs9BXQZgc/HYDBcibxpLlHUsFLifgbGQ6jo8LA8RWjizOyjce7ahc1BjNdP7
 JlsQ==
X-Gm-Message-State: APjAAAWyhXZJxmk8QwSvnUJjZSvEUYfzTHy/wcup4Yz+Uf8NgmAdtSIx
 Eos16MJhQC5/XsDFucnC7b9yMskAzYnXgOdHqqubBp9n/X6NFpCIh173vbPpzCCWRILWJZCJxns
 p0eH6opNFh1yoNiTZQYHhXnxBZTAVD5Cy
X-Received: by 2002:ac8:2225:: with SMTP id o34mr4928569qto.68.1571932470306; 
 Thu, 24 Oct 2019 08:54:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwBsKVtiz62Oia4u6IffqufPZzM7lHXCqrHFPfp50DFuDu8QE6bM/XoLuL+c9AKGg/jk/1cIQ==
X-Received: by 2002:ac8:2225:: with SMTP id o34mr4928544qto.68.1571932470041; 
 Thu, 24 Oct 2019 08:54:30 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x133sm12693274qka.44.2019.10.24.08.54.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:54:28 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 08/15] staging: exfat: Clean up return code - FFS_MEMORYERR
Date: Thu, 24 Oct 2019 11:53:19 -0400
Message-Id: <20191024155327.1095907-9-Valdis.Kletnieks@vt.edu>
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

Convert FFS_MEMORYERR to -ENOMEM

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h      |  1 -
 drivers/staging/exfat/exfat_core.c | 10 +++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 00e5e37100ce..2588a6cbe552 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -218,7 +218,6 @@ static inline u16 get_row_index(u16 i)
 #define FFS_NOTOPENED           12
 #define FFS_MAXOPENED           13
 #define FFS_EOF                 15
-#define FFS_MEMORYERR           17
 #define FFS_ERROR               19
 
 #define NUM_UPCASE              2918
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 23c369fb98e5..fa2bf18b4a14 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -177,7 +177,7 @@ s32 load_alloc_bitmap(struct super_block *sb)
 							       sizeof(struct buffer_head *),
 							       GFP_KERNEL);
 				if (!p_fs->vol_amap)
-					return FFS_MEMORYERR;
+					return -ENOMEM;
 
 				sector = START_SECTOR(p_fs->map_clu);
 
@@ -604,7 +604,7 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 	upcase_table = p_fs->vol_utbl = kmalloc(UTBL_COL_COUNT * sizeof(u16 *),
 						GFP_KERNEL);
 	if (!upcase_table)
-		return FFS_MEMORYERR;
+		return -ENOMEM;
 	memset(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));
 
 	while (sector < end_sector) {
@@ -644,7 +644,7 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
 					upcase_table[col_index] = kmalloc_array(UTBL_ROW_COUNT,
 						sizeof(u16), GFP_KERNEL);
 					if (!upcase_table[col_index]) {
-						ret = FFS_MEMORYERR;
+						ret = -ENOMEM;
 						goto error;
 					}
 
@@ -684,7 +684,7 @@ static s32 __load_default_upcase_table(struct super_block *sb)
 	upcase_table = p_fs->vol_utbl = kmalloc(UTBL_COL_COUNT * sizeof(u16 *),
 						GFP_KERNEL);
 	if (!upcase_table)
-		return FFS_MEMORYERR;
+		return -ENOMEM;
 	memset(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));
 
 	for (i = 0; index <= 0xFFFF && i < NUM_UPCASE * 2; i += 2) {
@@ -707,7 +707,7 @@ static s32 __load_default_upcase_table(struct super_block *sb)
 									sizeof(u16),
 									GFP_KERNEL);
 				if (!upcase_table[col_index]) {
-					ret = FFS_MEMORYERR;
+					ret = -ENOMEM;
 					goto error;
 				}
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

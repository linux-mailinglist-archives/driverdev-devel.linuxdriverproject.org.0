Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D43E6384E3
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 09:24:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BC0F78810B;
	Fri,  7 Jun 2019 07:24:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XZUCuWzJw3df; Fri,  7 Jun 2019 07:24:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0112688084;
	Fri,  7 Jun 2019 07:24:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 20A721BF333
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:24:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D9172037A
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:24:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yUvhCId1XqUb for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 07:24:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 660AA20024
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 07:24:09 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id a3so696350pgb.3
 for <devel@driverdev.osuosl.org>; Fri, 07 Jun 2019 00:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NXL/TO2ISYq8/butiqBjWgvY1wAMvzv3j7pmifqx/0U=;
 b=XqM8TSqQO2SWcPDZbf2pP51yoc8emUS7eL+s0yqXWjsY/IZUYPqZfc6ciu4i+DYIi0
 CNhoBxyX1rnE2GmUgeBZWdnohN/g/Oum/EFMv1jFSvqUdQ0Y1NXm8BGaIzAN+ZWs1rQb
 1ybw1eLPgGegVYSRZRQC/Db8WKtVZ0tzcAm7X7Fucaljp9H+xVp90WX+Q2oRMVS8kLq0
 PzDHRnI/eXFXd1QK9FQhVvGDlkOY33wiMCc3nkd5ItO8s+0Jh1GEMcV7o34ddhDA40Tz
 e1q8bs+r+4ZZjQPvqrM3Ff8ox8G++zzDjZ8+0mmh3IFqN4mnLydhbW4soibsA1SygsPJ
 myNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NXL/TO2ISYq8/butiqBjWgvY1wAMvzv3j7pmifqx/0U=;
 b=gtMSpNthOmNofwJXuTKP66MdUZsVds/VCDeV2ZfWQi4jnTifo8Fr1dPK9dtudruywa
 62zzjEujEY6Xw90Z7czcNTWfVxLRiZ28fyYe0JCGoTN3b+rK/3zxQUWXazD5q5zehUfy
 3Reg7YZl/xzV4Wt4R69rRUPLjt0inyAHSXNy7iW2lYINguFUrJls55TtvMTY9G6j/ni7
 pq+oh+THL90g2voI6BxChP04ipv33HAEjeysoXY2sbmZeDewJ/2ioQx39u28CHsUim9d
 ew1VfGlLP1K82IsVdyPhCAbWPeMf/clmcwvSbtF2zXNfyxhU8O4FUC2zq9KQP05E9fI0
 8y6Q==
X-Gm-Message-State: APjAAAVk9C7k0XKyPovH9ndddd9njUylOulS+FFvwiicrIXRFmsmnuRC
 KaCNwpEbVUtjfN/NpuOEy1k=
X-Google-Smtp-Source: APXvYqzp+jvAINFmyLt21EKAT/UJtK1F+tydde9f1RAarxBgk49baJ71b+AXQ9isNd0igYMhVZ791w==
X-Received: by 2002:a62:a509:: with SMTP id v9mr55646875pfm.82.1559892249125; 
 Fri, 07 Jun 2019 00:24:09 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id t7sm1032435pjq.20.2019.06.07.00.24.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 00:24:08 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: sdio_halinit.c: Remove variables
Date: Fri,  7 Jun 2019 12:53:57 +0530
Message-Id: <20190607072357.28551-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove the variables RegRATR and RegRRSR as they are never used after
initialisation and assignment.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 3c65a9c02bbd..55d21aa52e62 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -614,7 +614,6 @@ static void _InitOperationMode(struct adapter *padapter)
 	struct hal_com_data *pHalData;
 	struct mlme_ext_priv *pmlmeext;
 	u8 regBwOpMode = 0;
-	u32 regRATR = 0, regRRSR = 0;
 
 	pHalData = GET_HAL_DATA(padapter);
 	pmlmeext = &padapter->mlmeextpriv;
@@ -626,34 +625,24 @@ static void _InitOperationMode(struct adapter *padapter)
 	switch (pmlmeext->cur_wireless_mode) {
 	case WIRELESS_MODE_B:
 		regBwOpMode = BW_OPMODE_20MHZ;
-		regRATR = RATE_ALL_CCK;
-		regRRSR = RATE_ALL_CCK;
 		break;
 	case WIRELESS_MODE_A:
 /* 			RT_ASSERT(false, ("Error wireless a mode\n")); */
 		break;
 	case WIRELESS_MODE_G:
 		regBwOpMode = BW_OPMODE_20MHZ;
-		regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
-		regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
 		break;
 	case WIRELESS_MODE_AUTO:
 		regBwOpMode = BW_OPMODE_20MHZ;
-		regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG | RATE_ALL_OFDM_1SS | RATE_ALL_OFDM_2SS;
-		regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
 		break;
 	case WIRELESS_MODE_N_24G:
 		/*  It support CCK rate by default. */
 		/*  CCK rate will be filtered out only when associated AP does not support it. */
 		regBwOpMode = BW_OPMODE_20MHZ;
-		regRATR = RATE_ALL_CCK | RATE_ALL_OFDM_AG | RATE_ALL_OFDM_1SS | RATE_ALL_OFDM_2SS;
-		regRRSR = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
 		break;
 	case WIRELESS_MODE_N_5G:
 /* 			RT_ASSERT(false, ("Error wireless mode")); */
 		regBwOpMode = BW_OPMODE_5G;
-		regRATR = RATE_ALL_OFDM_AG | RATE_ALL_OFDM_1SS | RATE_ALL_OFDM_2SS;
-		regRRSR = RATE_ALL_OFDM_AG;
 		break;
 
 	default: /* for MacOSX compiler warning. */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

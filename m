Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 410143AFE3
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:47:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 95B0C203B7;
	Mon, 10 Jun 2019 07:47:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bbrBq2qNrrSt; Mon, 10 Jun 2019 07:47:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 72B61203CF;
	Mon, 10 Jun 2019 07:47:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 60DCD1BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5E22386EC0
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IQZx+r0CgoDD for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:47:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F07F686E48
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:47:28 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id f25so4572185pgv.10
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 00:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UTe9hY/3iBv9xCZ/7Vn6KCksfiacWA//uZ/qBAveG6Q=;
 b=OrI7NtSiK6RXyyV9rKcCVIh6bladyHWhYr5envWOS9QUE02IDN990wLRMJnuOJrox9
 Fzwka0mIN5YecTBP0co5RQvTH9WWZrgaUhCYuYf3LJTGgA1wnfFfSzh40rOxAOiFOgCN
 iNGHZKRwtRt0zvIrKve2QndRdV/ckAIDruRoV4i44VUcjntYpMQAvlR6ScI27y/qRnub
 lRJCOLKVubPKpHggenfA4PfCczkpWjM/sX9PN+M7MV88VObky93/SRL/F/KaHAaeapxW
 IhcfCKKvMvw2Vh3ggJ5UZLbZjNdJQdNxWtMMm9G+pmAWakze+LF99vIOTokSadxlfipK
 t/WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UTe9hY/3iBv9xCZ/7Vn6KCksfiacWA//uZ/qBAveG6Q=;
 b=B8CrC25VOPL0FN6XNpvTtTqXBZo6DchUlF+Uj5T9r89pZ92yuVpfa9ewBEppocMQlC
 KZCc+8osM8XFxM/plE8HUtKPMvfrf89+7rjGmE/LzZBLq6xtUAj21Qk0kegxRvgsH7ET
 TJLquuhefixmaQ8kEpApGaFtY1JOnwb0Ch3J7EnzhqoBCCC8TI69+Hq8K6exwIrgB2sB
 Uk9+DyiGeJtTQkYK7WMSs9j6Otjim/TsRdGSKjCii1qGIZK5WK+veWf2sPlLZVcYYUBc
 LmhLa7N/wRt6S9rIdZbDZ/Gn6otSbK8mrMwKw5Mvk4pmoPbBAu+pQJPZNTLvU4EXxUWT
 PxVg==
X-Gm-Message-State: APjAAAVisIZEnynFZqmsHQZ8glTDygh/fNhbABeCSXXOpfGkvaao/z3b
 vZrdpu3+wWXfOzg870bgXvYW2cGs
X-Google-Smtp-Source: APXvYqyK+CCo1ODBJfrYffI+3+h312CZ3ocxLczBpmPpajwi/lAU3lL/eLu7mh0c/2fCiUwvhFOk2w==
X-Received: by 2002:a17:90a:ad83:: with SMTP id
 s3mr19926422pjq.43.1560152848672; 
 Mon, 10 Jun 2019 00:47:28 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id f2sm8120965pgs.83.2019.06.10.00.47.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 00:47:28 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH v2 04/10] staging: rtl8723bs: hal: sdio_halinit.c: Remove
 variables
Date: Mon, 10 Jun 2019 13:17:04 +0530
Message-Id: <20190610074710.15677-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190610074710.15677-1-nishkadg.linux@gmail.com>
References: <20190610074710.15677-1-nishkadg.linux@gmail.com>
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
Changes in v2:
- Send as part of patch series.

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

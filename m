Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A753D33C3A5
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:10:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 30BB0430EF;
	Mon, 15 Mar 2021 17:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AtaVuFEmVWv8; Mon, 15 Mar 2021 17:10:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 877F040196;
	Mon, 15 Mar 2021 17:10:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2BCF91BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 61A4B47489
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y9r1XiEXpSuD for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8110047A73
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:29 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id h10so18186041edt.13
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=r6vukJiuDtWIkSdM2F77fNKw5phmr7qRtlZup5tI8ms=;
 b=J9zXCfE7uZw6z6KxixQEJ900MZU85ckgP6uDwpcX735ueMifSxA+uZFwsE4g/T7Uwh
 8CBzJ3lUrI44viX7zX8uWYkhrKkYRoD8h9qaXijqXRB6XzhLA6hhtLPgwGm6AFQP6Oex
 pVpYwfEzWyccKnUj4USDGGR7bkcrrLJ81OWkmJ2vy8qnmUKYs6ISr8ZZf8l6KmNd7W9f
 +88/2oXu4yu31KC2M+uJuIKQSVqgMpW5PVogwl5C/bYjUzrsBotl22Upq5JwyM/QN8Dy
 UNK2Q/4zGXa5E3FCu65fM+RQ85SAWA2z0MqhpJAzO+hAmj3yxaXr8DvFpuD1wNXkVgAn
 biLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r6vukJiuDtWIkSdM2F77fNKw5phmr7qRtlZup5tI8ms=;
 b=edkTpjT66GojNKB9aigDu5Ph2rXaGDNk6oOtWlzhbCPzM0oNBT5uizgx75D4rFkcXA
 8LCiV+qO/HNrx4XdBlya6V8SbD9hIMlRsnsygqePFFkOHwNGYxrXmBktwCdOg49SyJu3
 GRnk7iGN7u94iRs+7ZqvBUqf2P/GhwEWlju9TWGQwYMLiyX+0b46lCAAEklmRw8dRAOT
 99dRiaWTck+OQ9+ycn52SVuuHVADv3slxI/41oJkb0YqaSM9/tyIY4gB1S3LvDSUZaMQ
 fI8oE5lUrJNd8bwkSn9g+i/RLUzCj76VqJ0wYlAh4O+iFd0PVyb+UrEgPLGG0B8jQ3zW
 +6vw==
X-Gm-Message-State: AOAM531W7Wf8gW6jq4/BRgZigID91u/YFvMdq+IIzQc7NNLJJ165dOL+
 ifli41qWIisB8rp8NYNks2s=
X-Google-Smtp-Source: ABdhPJxPxrDhy+DDnM0tRo6IRAukGXOsu26Jb16eRcVQu7XLX+qJ+iX3kY8nesyCkXcvPCPc1c1CKg==
X-Received: by 2002:a05:6402:35d3:: with SMTP id
 z19mr30977674edc.143.1615827987696; 
 Mon, 15 Mar 2021 10:06:27 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:27 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 24/57] Staging: rtl8723bs: fix in odm_DynamicBBPowerSaving.c
Date: Mon, 15 Mar 2021 18:05:45 +0100
Message-Id: <20210315170618.2566-25-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #12: FILE: ./hal/odm_DynamicBBPowerSaving.c:12:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #25: FILE: ./hal/odm_DynamicBBPowerSaving.c:25:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c b/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c
index 2cc9518c4ae8..522f87fe69b2 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DynamicBBPowerSaving.c
@@ -9,7 +9,7 @@
 
 void odm_DynamicBBPowerSavingInit(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	struct PS_T *pDM_PSTable = &pDM_Odm->DM_PSTable;
 
 	pDM_PSTable->PreCCAState = CCA_MAX;
@@ -22,7 +22,7 @@ void odm_DynamicBBPowerSavingInit(void *pDM_VOID)
 
 void ODM_RF_Saving(void *pDM_VOID, u8 bForceInNormal)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 	struct PS_T *pDM_PSTable = &pDM_Odm->DM_PSTable;
 	u8 Rssi_Up_bound = 30;
 	u8 Rssi_Low_bound = 25;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

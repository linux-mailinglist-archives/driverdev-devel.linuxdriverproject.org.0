Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 106FA33C38C
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:09:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA0154E210;
	Mon, 15 Mar 2021 17:09:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IzQtfhgS-Lgw; Mon, 15 Mar 2021 17:09:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59CD743FF2;
	Mon, 15 Mar 2021 17:09:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F134F1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DFC27430C7
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7k2gz8ERs6v0 for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2D79841503
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:25 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id bm21so67501262ejb.4
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=OKmGmWif4DEbhhwHoFwMZd7wBDizPgJL+UJ2LBQeedc=;
 b=mkI8ge8g26sneQxCBwTfQMzHksd7ZSHb8zzU6Ws5/EKtEI/2Km+vDltGtTuBeg8CjW
 7oFHReRowkpEtWRAHvE/Rqwc7+N0uyJzziGgHpuGveCPPPy6bOoMpqmOTh7O7mriWRY6
 P7BY2x2+rjjNyFON/y3RvrqRYcu/2etvNiahCUZ6odHzyiT5JNBZ2rNGa2Zz5seG7D6m
 kpZfRhCsWoHUTWEGd8wvzYEhQL7G36eRWtJSUmFxFbMKMIKjfG+0OkphVhSTeFvlBQLp
 prL5VC2Y0QOc3KwnNqWZJb8xpTW54VSnRmHbGYEy/VzOIMUMZitObTzpzpr7QPexyEOv
 9ysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OKmGmWif4DEbhhwHoFwMZd7wBDizPgJL+UJ2LBQeedc=;
 b=jJbZBEFUqUQN9b8DdJaxCbQjhfoREguPAO+AI0g5Ws+I3LGQTNha2iaLhGv3Qtck6F
 TT25nigTh0vqkioxdDtGNMpeZ83FANy/fFtPw52cM5LKKl6qWwiyUktYoW1dARKrSqPD
 dMgWGc3Ny8PNAQM5hVpkXSUyHPSdMEVgNGrZJWP0jpZ6ewcdWJIn3h2jzSjw4eB8edWe
 THQWEa12IFU5qey8jR4r6MANl7+8JnN2OHoVrxqj+dUNfywAStk9qK3qRq8MWt47qh9m
 j88H6Ly0ER41jABHOZqGFRyG5YcDqyXGundjhaNAEMsLuPGc+3VfOcVSGXLyNxpM11r/
 JdFA==
X-Gm-Message-State: AOAM532CDgr8+m3AgWKu0Nq8TJR+n4CHYiwPQqPjclNMEyyVW8QvADYC
 wTnQBsOfPpRqzNUbjJjPXEAL/eNA5tc=
X-Google-Smtp-Source: ABdhPJyAIx6/IgU3A6HleOI1hI+kLYM4iqaFSOZFcJXO5reG8jmTBco8b45e7QrAtmlL1rqRidz6ew==
X-Received: by 2002:a17:906:f296:: with SMTP id
 gu22mr24398923ejb.20.1615827983430; 
 Mon, 15 Mar 2021 10:06:23 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:23 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 19/57] Staging: rtl8723bs: fix spaces in hal_com_phycfg.c
Date: Mon, 15 Mar 2021 18:05:40 +0100
Message-Id: <20210315170618.2566-20-marcocesati@gmail.com>
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
    #273: FILE: ./hal/hal_com_phycfg.c:273:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo *		bar" should be "foo *bar"
    #798: FILE: ./hal/hal_com_phycfg.c:798:
    +	struct DM_ODM_T *		pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #1191: FILE: ./hal/hal_com_phycfg.c:1191:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index 2bf4689dc08e..7405f9229117 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -270,7 +270,7 @@ u8 PHY_GetRateSectionIndexOfTxPowerByRate(
 )
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 	u8	index = 0;
 
 	if (pDM_Odm->PhyRegPgVersion == 0) {
@@ -795,7 +795,7 @@ void PHY_StoreTxPowerByRate(
 )
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T *		pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
 	if (pDM_Odm->PhyRegPgVersion > 0)
 		PHY_StoreTxPowerByRateNew(padapter, Band, RfPath, TxNum, RegAddr, BitMask, Data);
@@ -1188,7 +1188,7 @@ u8 PHY_GetTxPowerIndexBase(
 s8 PHY_GetTxPowerTrackingOffset(struct adapter *padapter, u8 RFPath, u8 Rate)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 	s8 offset = 0;
 
 	if (pDM_Odm->RFCalibrateInfo.TxPowerTrackControl  == false)
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

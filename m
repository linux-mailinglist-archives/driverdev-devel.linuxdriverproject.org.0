Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D8E33C3B9
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:12:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C96583560;
	Mon, 15 Mar 2021 17:12:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ANqSO5_dDoX; Mon, 15 Mar 2021 17:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32ED082C99;
	Mon, 15 Mar 2021 17:12:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 627F51BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 52190430B9
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EzLn-Km30yZg for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 85F6541503
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:38 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id p8so67494979ejb.10
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=SFl+lzuNE4fwCAVJgxtyAYA4cZbyRIDakQ5LWJXKTd8=;
 b=pzMeFv5aBMGB67entNCHk8UECIwZ04x4krqR1jVWTQw84RfNl83H+dLsO8D2pJe1gH
 qw6W1WHfshWW/hnfIg2V0ZrHTnllfupDSqXivZqw9XtckHBGrLehKSbyK1PvB67n9EIP
 yUJe0N2k/cnDqTMZz0pPy3RSl7dasTgiy/FtbmGcR6AKIAUcUve37xpjRpo6EmfYK47q
 W//Q2REuD35WY4Gnm7JJijpd1ajw4vUqmp5TE7iJzeRd3LN7Occga8evF/x5b+lTgjte
 ivEdIhOiiMWGXzIWkdbCvOA/m5HqSjHYsRzEEJ6qroQtQxznAZvFlHy6IqAsSLR3YsYf
 AF8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SFl+lzuNE4fwCAVJgxtyAYA4cZbyRIDakQ5LWJXKTd8=;
 b=V84TWLL30nffW18ccU/0YoHrh3hHJwJhxbNrEp8Qg2i5QMvS9CBM3gmubFxQYkvfzQ
 ZqF7qQDFsbN5KpcHGB+w5/ilZayZDxU8uMK1ouzxpVQM46xtTVwyhG1LXSaqQsGUJirz
 AgloyU8KUhMjTYQyIMXg/1yW4IpARdAdqYwR0adgg+xAgoSbPamvulhXoypt8Egr2bVC
 KamThU/69CNvhsrl2dMRN4tuYaxFouoeMd9O8gJZlIPBJkGfykSs/GaS0l9MZeDfd+BJ
 gpolGobP0agZiDXLtqDjCc/rrqL/fRvswDuiGEmQMOaChhWX4bzW6E3MD/QFKspnXoeA
 Rp/A==
X-Gm-Message-State: AOAM5306fd5xCRUM+DXtLXowFbsZvjmmo80/Rvbf7dkZ2WfLhYDpeH3b
 4sV4XpwexeoQEfOqBES1VJ4=
X-Google-Smtp-Source: ABdhPJyIS3LelO4AgJOFTe0+BsHQYjUHpvDCwo8eWg+DfuD0pRBZ6ORsoy4gmT7cbQDNFdshp13Fcw==
X-Received: by 2002:a17:906:8043:: with SMTP id
 x3mr24330680ejw.149.1615827996836; 
 Mon, 15 Mar 2021 10:06:36 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:36 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 35/57] Staging: rtl8723bs: fix spaces in rtl8723b_dm.c
Date: Mon, 15 Mar 2021 18:05:56 +0100
Message-Id: <20210315170618.2566-36-marcocesati@gmail.com>
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
    #28: FILE: ./hal/rtl8723b_dm.c:28:
    +	struct DM_ODM_T * pDM_Odm = &(pHalData->odmpriv);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #77: FILE: ./hal/rtl8723b_dm.c:77:
    +	struct DM_ODM_T * pDM_Odm = &(pHalData->odmpriv);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #132: FILE: ./hal/rtl8723b_dm.c:132:
    +	struct DM_ODM_T * pDM_Odm = &(pHalData->odmpriv);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #206: FILE: ./hal/rtl8723b_dm.c:206:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #232: FILE: ./hal/rtl8723b_dm.c:232:
    +	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #233: FILE: ./hal/rtl8723b_dm.c:233:
    +	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index dce70fff0fae..cf146f506155 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -25,7 +25,7 @@ static void Init_ODM_ComInfo_8723b(struct adapter *Adapter)
 {
 
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-	struct DM_ODM_T * pDM_Odm = &(pHalData->odmpriv);
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
 	u8 cut_ver, fab_ver;
 
@@ -74,7 +74,7 @@ static void Update_ODM_ComInfo_8723b(struct adapter *Adapter)
 	struct dvobj_priv *dvobj = adapter_to_dvobj(Adapter);
 	struct pwrctrl_priv *pwrctrlpriv = adapter_to_pwrctl(Adapter);
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-	struct DM_ODM_T * pDM_Odm = &(pHalData->odmpriv);
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
 	int i;
 	u8 zero = 0;
@@ -129,7 +129,7 @@ void rtl8723b_InitHalDm(struct adapter *Adapter)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
-	struct DM_ODM_T * pDM_Odm = &(pHalData->odmpriv);
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 
 	pdmpriv->DM_Type = DM_Type_ByDriver;
 	pdmpriv->DMFlag = DYNAMIC_FUNC_DISABLE;
@@ -203,7 +203,7 @@ void rtl8723b_hal_dm_in_lps(struct adapter *padapter)
 	u32 PWDB_rssi = 0;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct sta_info *psta = NULL;
 
@@ -229,8 +229,8 @@ void rtl8723b_HalDmWatchDog_in_LPS(struct adapter *Adapter)
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 	struct mlme_priv *pmlmepriv = &Adapter->mlmepriv;
 	struct dm_priv *pdmpriv = &pHalData->dmpriv;
-	struct DM_ODM_T * pDM_Odm = &pHalData->odmpriv;
-	struct DIG_T * pDM_DigTable = &pDM_Odm->DM_DigTable;
+	struct DM_ODM_T *pDM_Odm = &pHalData->odmpriv;
+	struct DIG_T *pDM_DigTable = &pDM_Odm->DM_DigTable;
 	struct sta_priv *pstapriv = &Adapter->stapriv;
 	struct sta_info *psta = NULL;
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

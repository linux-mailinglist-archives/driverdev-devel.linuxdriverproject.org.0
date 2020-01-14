Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C0B13AB50
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 14:45:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A8D8A84589;
	Tue, 14 Jan 2020 13:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PeWaSriNLUq5; Tue, 14 Jan 2020 13:45:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 59037845C5;
	Tue, 14 Jan 2020 13:45:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D84D1BF873
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 13:45:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 574B68453F
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 13:45:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j1j9hFPHtiFf for <devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 13:45:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A49EF80AE3
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 13:45:08 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id c14so12221896wrn.7
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 05:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M3X91y0YKtpUefKBm5V1gWMHQT+xVCGqO4GixzAymWQ=;
 b=SVaDdHHmNlwwRRAVfaT035wYU03VxGPN9Ht8Fv97RRkc7k3TWKgA0MsGC6PHFLUa9Q
 R9hIL8sjzGh1SIRcHqyKVBxkkGrZ8f6I8aiYWwyt6zxpEnlK8NCiu1kIiDhiQiyougQc
 i4dY6eRx8NGY3LH9k99/KHn7F8oG7dQsJ8Ut3CJGOb9hrOTf+7Fuo6UefWJPSkwribI2
 tNQuOgFRFuNVt8g8QBYdfqCz+qZpHwOtUp7vzJWL275o68ejAv0a9d8fXBcHzrE0h4Ds
 GFM6b5aHMnZOB78LJQdviwKqPiwZBJoiZ2x/9A/MIMsYKAfBbM7X4FwPYyQ/JTdo1STf
 sdcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M3X91y0YKtpUefKBm5V1gWMHQT+xVCGqO4GixzAymWQ=;
 b=iJdJl9NdjiA0KWppXYzeHj+pob1eLNDpNhff7kPDEYSRSm28wu482J+MbheyF9UMVs
 QUEsOi4m/rkK6yt5g2fmT0LFIdfxRQIXzpWtoMfNcA/VtDkXqPnXFbGhzNQq8onlx38F
 v9LgHI1uML7VNr58ObVSlnrgE4R/z3Yyf7sU9BpR6+kuwcaI4vl88m6zgKhMIt+0Aho6
 8I3O1MgM3lyT2WsaXlIsZ4buTLMF4eBxG6qE5UjPlQqaoSbibVJ0hZOr1qN4XybhqN3v
 F24krZ19Mu5B7BO6f3aiiAY4ZuxyfxS6lYnj44dzLMFBG9REkx1uqQL9cOBtSnkr4teW
 bNNQ==
X-Gm-Message-State: APjAAAXkcBT2Dql85XySzTO02QpTmFfv14OpHdF2YTachtn2r5K44UEQ
 vgTZeWhz1I4HDj+fjBe+/2Y=
X-Google-Smtp-Source: APXvYqx5a25T1uCgc/icHMS0apRgqIDzxT6d3HRuVADKN3fgIRpLjyzKHMlFZxYKAE6M/tm+lJvWsw==
X-Received: by 2002:adf:ffc7:: with SMTP id x7mr25110475wrs.159.1579009506901; 
 Tue, 14 Jan 2020 05:45:06 -0800 (PST)
Received: from localhost.localdomain
 (dslb-088-070-028-164.088.070.pools.vodafone-ip.de. [88.70.28.164])
 by smtp.gmail.com with ESMTPSA id x10sm19361333wrp.58.2020.01.14.05.45.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 05:45:06 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/5] staging: rtl8188eu: remove unnecessary parentheses in
 rtl8188e_dm.c
Date: Tue, 14 Jan 2020 14:44:21 +0100
Message-Id: <20200114134422.13598-4-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114134422.13598-1-straube.linux@gmail.com>
References: <20200114134422.13598-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary parentheses reported by checkpatch.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
index 36255199633a..5348db2725a1 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
@@ -36,7 +36,7 @@ static void Init_ODM_ComInfo_88E(struct adapter *Adapter)
 {
 	struct hal_data_8188e *hal_data = Adapter->HalData;
 	struct dm_priv	*pdmpriv = &hal_data->dmpriv;
-	struct odm_dm_struct *dm_odm = &(hal_data->odmpriv);
+	struct odm_dm_struct *dm_odm = &hal_data->odmpriv;
 
 	/*  Init Value */
 	memset(dm_odm, 0, sizeof(*dm_odm));
@@ -71,7 +71,7 @@ static void Update_ODM_ComInfo_88E(struct adapter *Adapter)
 	struct mlme_priv	*pmlmepriv = &Adapter->mlmepriv;
 	struct pwrctrl_priv *pwrctrlpriv = &Adapter->pwrctrlpriv;
 	struct hal_data_8188e *hal_data = Adapter->HalData;
-	struct odm_dm_struct *dm_odm = &(hal_data->odmpriv);
+	struct odm_dm_struct *dm_odm = &hal_data->odmpriv;
 	struct dm_priv	*pdmpriv = &hal_data->dmpriv;
 	int i;
 
@@ -124,7 +124,7 @@ static void Update_ODM_ComInfo_88E(struct adapter *Adapter)
 void rtl8188e_InitHalDm(struct adapter *Adapter)
 {
 	struct dm_priv	*pdmpriv = &Adapter->HalData->dmpriv;
-	struct odm_dm_struct *dm_odm = &(Adapter->HalData->odmpriv);
+	struct odm_dm_struct *dm_odm = &Adapter->HalData->odmpriv;
 
 	dm_InitGPIOSetting(Adapter);
 	pdmpriv->DM_Type = DM_Type_ByDriver;
@@ -198,7 +198,7 @@ bool rtw_hal_antdiv_before_linked(struct adapter *Adapter)
 {
 	struct odm_dm_struct *dm_odm = &Adapter->HalData->odmpriv;
 	struct sw_ant_switch *dm_swat_tbl = &dm_odm->DM_SWAT_Table;
-	struct mlme_priv *pmlmepriv = &(Adapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &Adapter->mlmepriv;
 
 	/*  Condition that does not need to use antenna diversity. */
 	if (Adapter->HalData->AntDivCfg == 0)
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

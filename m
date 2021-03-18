Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EA7340ED6
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 21:07:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5AFA400CA;
	Thu, 18 Mar 2021 20:07:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T-Bg6y9ui47f; Thu, 18 Mar 2021 20:07:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 044D7400C4;
	Thu, 18 Mar 2021 20:06:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C00501BF361
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 20:06:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF74E83D85
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 20:06:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UVEscBrIcSRc for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 20:06:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D1ED483D16
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 20:06:48 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id k8so6833503wrc.3
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 13:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+nypa92rIONIP6MHeDAjQaLrMxV8licEdgYTWekxdpk=;
 b=X3T1butCCUApSfe0+au8WFNDSoZuYBcFth5FTIHS2MPBLcBZeUIkJ3bZZAJ/JX90LX
 8yj6nKC5xVsE4sgRIixAykDxOilGevK9osLarV+lgPtQ7Akrx5yIXWiXqEaaKQVxXlgO
 9RvqpHrKY9jOBjVRdxCzTqMPvygE11EXfTmSDoHd0UvcTQrWLi9CHqaXIwvbmHSPJI1t
 SLJKbnO481SpK0L3sEfkE15mpxD4KZb2KyS2JWSTQjJ7Q9uSlyhYIJIQI0IkQwKhY6Pi
 unz1355JAuPmWmcOywx320ZyPcszxiCk2bDr7cVpTfwl6plOYdjlAaBkrydscBVkI0lJ
 T2+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+nypa92rIONIP6MHeDAjQaLrMxV8licEdgYTWekxdpk=;
 b=uJ3oFgv2rijXJFBzr/7f10seAG1KC4DzSSLf+yg9TCeIaop57E0jFfjfJcN3Td+FTp
 GKkZW8vauQ9k6N2tMqHPqutijVZ7szTMKm1f0CXCvc8292W53Sf+bC5nNIk69u5erfeP
 Beqp5ezZi8filtljPAnKsrT+TWajJcQuD7Mma9f1eM1Add/HZb1fF/mog0RjrhDUmxgX
 zaRqxEmwAJRWfef7sdDTP6Ihkkm4ZhkBhmTCbqJG/EyarwVnQnHfBzARolYlJ3IaLET/
 MJqARW6AGwi+Ns4HUfT7hCtizsmtujZSZE7r5Yg3jhsQeV03NGpK0MUUHlyg1o+tlNrq
 DrJw==
X-Gm-Message-State: AOAM533IEPBJEogiomPHhaGbgYSunQfkmG0RNNWi7IYVn2ucVq8Q7NpR
 s8B1ZZJBGms8ay4ncwGTT1s=
X-Google-Smtp-Source: ABdhPJxP16vnvDW1wA6vqk+QP4YRlv2nWh+2JwxEUwlf0mDTX/8PdtXzs2d4kpiTBmSe4fqHHP/bkw==
X-Received: by 2002:adf:f843:: with SMTP id d3mr923942wrq.55.1616098006616;
 Thu, 18 Mar 2021 13:06:46 -0700 (PDT)
Received: from gamer-pc.Home ([78.17.203.10])
 by smtp.gmail.com with ESMTPSA id m17sm4222365wrx.92.2021.03.18.13.06.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 13:06:46 -0700 (PDT)
From: Paul McQuade <paulmcquad@gmail.com>
To: Larry.Finger@lwfinger.net
Subject: [PATCH] rtl8188eu: Removed Unnecessary ftrace-like logging
Date: Thu, 18 Mar 2021 20:05:27 +0000
Message-Id: <20210318200527.454486-1-paulmcquad@gmail.com>
X-Mailer: git-send-email 2.30.1
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Paul McQuade <paulmcquad@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

prefer using ftrace

Signed-off-by: Paul McQuade <paulmcquad@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 182bb944c9b3..008b60e72758 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -507,7 +507,6 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 	struct ht_priv	*phtpriv_sta = &psta->htpriv;
 
 	psta->mac_id = psta->aid + 1;
-	DBG_88E("%s\n", __func__);
 
 	/* ap mode */
 	rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
@@ -571,8 +570,6 @@ static void update_hw_ht_param(struct adapter *padapter)
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
-	DBG_88E("%s\n", __func__);
-
 	/* handle A-MPDU parameter field
 	 * ampdu_params_info [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
 	 * ampdu_params_info [4:2]:Min MPDU Start Spacing
@@ -1166,8 +1163,6 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 	unsigned char *ie = pnetwork->ies;
 	u32 ielen = pnetwork->ie_length;
 
-	DBG_88E("%s\n", __func__);
-
 	pwps_ie_src = pmlmepriv->wps_beacon_ie;
 	if (!pwps_ie_src)
 		return;
@@ -1207,7 +1202,6 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 
 static void update_bcn_vendor_spec_ie(struct adapter *padapter, u8 *oui)
 {
-	DBG_88E("%s\n", __func__);
 
 	if (!memcmp(WPS_OUI, oui, 4))
 		update_bcn_wps_ie(padapter);
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

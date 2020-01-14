Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3115313AB4D
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 14:45:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D898686CD7;
	Tue, 14 Jan 2020 13:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bR2zBVMLry-x; Tue, 14 Jan 2020 13:45:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7CB2986A98;
	Tue, 14 Jan 2020 13:45:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8DE671BF873
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 13:45:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A28885BFA
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 13:45:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ltzM2wiYO21K for <devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 13:45:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 54B89846BF
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 13:45:07 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 20so13777766wmj.4
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 05:45:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2EoZeO+c/poPIYPOn5vcl26D2pY2q5fzcBUdeS7xDt4=;
 b=MyjMpUdpo8WAO/sU8V5oDMi0HTUA4066v3Y6drZWzV7zF/vZ8VXw+JW2LKC2P8PpJJ
 F0by2u0IoGQHw2HMbkBMRRoMa3rk0U+CO7jOqqMOsAUvYoDh0wHCbbqp7tK6u1BjHeb1
 D0MN1q0SpRZ/qbvxRMP/kXry37CPdA/OHEcrLxHMAVcft3gF6UthImqniPlj/4zE+EAb
 IpKS70mVclhZAooZYwlRWBf2dx8xEVr8bUn5UxvydIEVBCQBm29nJEnCOmEYpLMBl/7A
 CchO4cKIgZPFdWS7RRxLxJAtJKsp5Snye3M+xRCAiLENbuiNce+cLra1fuvBYNPhhUGs
 bE9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2EoZeO+c/poPIYPOn5vcl26D2pY2q5fzcBUdeS7xDt4=;
 b=A8DC4ejofz26zktUdztW5ZPVPwz8DO6uJh23gJLD1g5cBNUjo7ilP1vkK5cdiPYnao
 RuTyAR8i5lCs98/H1FqCalJUV37FUszsNxhgyZDKkEDYV+PVIAJ3D9hwTpiz+QQxu1D+
 sRQea2cuXa5wyr8/QMkwqn2VwtJuoE9eYHlvIHFE5xg2DQCB9J+SRJ4Lawkf99xYfA+w
 u+XpnldVXvqJTdDjnRhDM5Wyj/YMbNjrh22GGWl48kMvnR2wQMqZYu5BBQ0GcAfxg4zp
 DGr3sEccoz6gbgx/yve99Wi52avpGaDv+4BAiptX3nbDjWZYEJzvaR4fIrg6ib43+lRq
 ztUQ==
X-Gm-Message-State: APjAAAWOBvNYW4+meDjGhVumZZf8n5yIj7Z2Ipp+b9lHw7wP4LKU8w/W
 YPen852e8jE9THyiKF0XAAg=
X-Google-Smtp-Source: APXvYqyASaijEWhtzoj4yJw/tBI5qonz0HuDyNCmaCNPJOImenGjbP+US/LcL2vI1RGPY8hKaFrFnQ==
X-Received: by 2002:a7b:c3d2:: with SMTP id t18mr27982774wmj.90.1579009505615; 
 Tue, 14 Jan 2020 05:45:05 -0800 (PST)
Received: from localhost.localdomain
 (dslb-088-070-028-164.088.070.pools.vodafone-ip.de. [88.70.28.164])
 by smtp.gmail.com with ESMTPSA id x10sm19361333wrp.58.2020.01.14.05.45.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 05:45:05 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/5] staging: rtl8188eu: cleanup long lines in rtl8188e_dm.c
Date: Tue, 14 Jan 2020 14:44:20 +0100
Message-Id: <20200114134422.13598-3-straube.linux@gmail.com>
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

Cleanup lines over 80 characters in rtl8188e_dm.c by adding
appropriate line breaks.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c | 26 ++++++++++++++-------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
index 756945d41412..36255199633a 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
@@ -51,8 +51,10 @@ static void Init_ODM_ComInfo_88E(struct adapter *Adapter)
 
 	dm_odm->AntDivType = hal_data->TRxAntDivType;
 
-	/*  Tx power tracking BB swing table. */
-	/*  The base index = 12. +((12-n)/2)dB 13~?? = decrease tx pwr by -((n-12)/2)dB */
+	/* Tx power tracking BB swing table.
+	 * The base index =
+	 * 12. +((12-n)/2)dB 13~?? = decrease tx pwr by -((n-12)/2)dB
+	 */
 	dm_odm->BbSwingIdxOfdm = 12; /*  Set defalut value as index 12. */
 	dm_odm->BbSwingIdxOfdmCurrent = 12;
 	dm_odm->BbSwingFlagOfdm = false;
@@ -106,14 +108,17 @@ static void Update_ODM_ComInfo_88E(struct adapter *Adapter)
 	dm_odm->pbPowerSaving = (bool *)&pwrctrlpriv->bpower_saving;
 	dm_odm->AntDivType = hal_data->TRxAntDivType;
 
-	/*  Tx power tracking BB swing table. */
-	/*  The base index = 12. +((12-n)/2)dB 13~?? = decrease tx pwr by -((n-12)/2)dB */
+	/* Tx power tracking BB swing table.
+	 * The base index =
+	 * 12. +((12-n)/2)dB 13~?? = decrease tx pwr by -((n-12)/2)dB
+	 */
 	dm_odm->BbSwingIdxOfdm = 12; /*  Set defalut value as index 12. */
 	dm_odm->BbSwingIdxOfdmCurrent = 12;
 	dm_odm->BbSwingFlagOfdm = false;
 
 	for (i = 0; i < NUM_STA; i++)
-		ODM_CmnInfoPtrArrayHook(dm_odm, ODM_CMNINFO_STA_STATUS, i, NULL);
+		ODM_CmnInfoPtrArrayHook(dm_odm, ODM_CMNINFO_STA_STATUS, i,
+					NULL);
 }
 
 void rtl8188e_InitHalDm(struct adapter *Adapter)
@@ -172,13 +177,18 @@ void rtw_hal_dm_init(struct adapter *Adapter)
 
 /*  Add new function to reset the state of antenna diversity before link. */
 /*  Compare RSSI for deciding antenna */
-void rtw_hal_antdiv_rssi_compared(struct adapter *Adapter, struct wlan_bssid_ex *dst, struct wlan_bssid_ex *src)
+void rtw_hal_antdiv_rssi_compared(struct adapter *Adapter,
+				  struct wlan_bssid_ex *dst,
+				  struct wlan_bssid_ex *src)
 {
 	if (Adapter->HalData->AntDivCfg != 0) {
-		/* select optimum_antenna for before linked =>For antenna diversity */
+		/* select optimum_antenna for before linked => For antenna
+		 * diversity
+		 */
 		if (dst->Rssi >=  src->Rssi) {/* keep org parameter */
 			src->Rssi = dst->Rssi;
-			src->PhyInfo.Optimum_antenna = dst->PhyInfo.Optimum_antenna;
+			src->PhyInfo.Optimum_antenna =
+				dst->PhyInfo.Optimum_antenna;
 		}
 	}
 }
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

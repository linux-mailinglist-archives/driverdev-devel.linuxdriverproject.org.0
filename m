Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D049426D46B
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 09:17:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 89F2886F8F;
	Thu, 17 Sep 2020 07:17:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ej0HFdC3Dckw; Thu, 17 Sep 2020 07:17:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0254186FB3;
	Thu, 17 Sep 2020 07:17:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7401C1BF2F2
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 07:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6B4B320428
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 07:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9q3+wq29tAPy for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 07:17:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 87AC0203B8
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 07:17:13 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id w5so833427wrp.8
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 00:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Frt12MGwM2wJlYqdoMwjpS7JA8q4wN3zpMFf+klm1TI=;
 b=qZAvO5Od2Z4LRC6lHbZTOfUoRle9XOrGpbml4bP3kv6RkD04jKfKWoAXGys3P8r9u5
 D2eBfQlQWqUwrrhvHbEsAjmSH5+bmpFE2Bu1ooWW454CvCiEmktLrfgF5plYZ2dAYCqK
 A/4Vn1jKAylBumCCHxQsOavnjX70sJ1BmlkEiocnAzMbwQpLzCzvh1m+FnaxvrJMx4+s
 e4GJhrn0P1ZnzU8q4NpB5IOUIMaxXAfX2bwWCj9rsQqJ2UAbD90RQKGoc0Q3WrlbUDrj
 SdyWT9LV0hwJT5AqzbYGN2aduUH5e9bdwaeiCZDCVCJ0ZtNtwbuU+t2+1IPVyQidxzs/
 SWLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Frt12MGwM2wJlYqdoMwjpS7JA8q4wN3zpMFf+klm1TI=;
 b=J1pU9bGrHSkuSg3o/iTkFFF31qJ2Ibi/dSirLGeNb3l6kuX9Sqd4hWsQRc4NiyeUmH
 pyd+hgiEhKfPrfD17Vy3l8ZkWtVRHlT/S+B4++xCeGvzgYXlU3kxSEd2aaDkQxm5iUIr
 2/b2rUWwqZ6rQKCA4jnginn0qW3DTs/ZZumTS+olAj+IzxHSHdFqLgbG171r6JBMs+of
 oItkNawUX3xCeaKfE/q7zORWt47OI9LQFgxu6B2mGyJMOPYZrIW5CRAg1w11qs+aXjO+
 I5y546/7nASZdbZEZ4c5+hVp6SDn9lwRJEviyPG3AJyG7ZJX38nrU85TfMWDg8PiMngb
 Q4tA==
X-Gm-Message-State: AOAM531Xl0AjHcDucxbNGAOSjf0TZMCNVXONo7r6Ixh03yNhTfI7DiPQ
 1EfkvZKvAgNNMFxa4iK4Y0A=
X-Google-Smtp-Source: ABdhPJy1ARQlddKUhi5Istu9l/DMdP6x363TMJojzDTKQ765QAcP/PcW8d1laGaBC+kWwye2IdzTZQ==
X-Received: by 2002:a05:6000:1c8:: with SMTP id
 t8mr30308433wrx.3.1600327032042; 
 Thu, 17 Sep 2020 00:17:12 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-088-070-028-140.088.070.pools.vodafone-ip.de. [88.70.28.140])
 by smtp.gmail.com with ESMTPSA id t6sm41696271wre.30.2020.09.17.00.17.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Sep 2020 00:17:11 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8188eu: clean up comparsion style issues
Date: Thu, 17 Sep 2020 09:13:30 +0200
Message-Id: <20200917071330.31740-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200917071330.31740-1-straube.linux@gmail.com>
References: <20200917071330.31740-1-straube.linux@gmail.com>
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

Move constants to the right side of comparsions to follow kernel
coding style and clear checkpatch warnings. In case of comparsion
to _FAIL we can use '!' since _FAIL is defined as '0'.

WARNING: Comparisons should place the constant on the right side of the test

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c     |  6 +++---
 drivers/staging/rtl8188eu/hal/odm.c               |  4 ++--
 drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c |  2 +-
 drivers/staging/rtl8188eu/include/rtw_mlme.h      |  4 ++--
 drivers/staging/rtl8188eu/include/wifi.h          |  2 +-
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c    | 10 +++++-----
 6 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index dad007f78d8c..4df790c83d9f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -2981,7 +2981,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 			status = _STATS_FAILURE_;
 	}
 
-	if (_STATS_SUCCESSFUL_ != status)
+	if (status != _STATS_SUCCESSFUL_)
 		goto OnAssocReqFail;
 
 	/*  check if the supported rate is ok */
@@ -3072,7 +3072,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 		wpa_ie_len = 0;
 	}
 
-	if (_STATS_SUCCESSFUL_ != status)
+	if (status != _STATS_SUCCESSFUL_)
 		goto OnAssocReqFail;
 
 	pstat->flags &= ~(WLAN_STA_WPS | WLAN_STA_MAYBE_WPS);
@@ -3282,7 +3282,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 	spin_unlock_bh(&pstapriv->asoc_list_lock);
 
 	/*  now the station is qualified to join our BSS... */
-	if ((pstat->state & WIFI_FW_ASSOC_SUCCESS) && (_STATS_SUCCESSFUL_ == status)) {
+	if ((pstat->state & WIFI_FW_ASSOC_SUCCESS) && (status == _STATS_SUCCESSFUL_)) {
 		/* 1 bss_cap_update & sta_info_update */
 		bss_cap_update_on_sta_join(padapter, pstat);
 		sta_info_update(padapter, pstat);
diff --git a/drivers/staging/rtl8188eu/hal/odm.c b/drivers/staging/rtl8188eu/hal/odm.c
index d6c4c7d023d1..4d659a812aed 100644
--- a/drivers/staging/rtl8188eu/hal/odm.c
+++ b/drivers/staging/rtl8188eu/hal/odm.c
@@ -829,9 +829,9 @@ bool ODM_RAStateCheck(struct odm_dm_struct *pDM_Odm, s32 RSSI, bool bForceUpdate
 	}
 
 	/*  Decide RATRState by RSSI. */
-	if (RSSI > HighRSSIThreshForRA)
+	if (HighRSSIThreshForRA < RSSI)
 		RATRState = DM_RATR_STA_HIGH;
-	else if (RSSI > LowRSSIThreshForRA)
+	else if (LowRSSIThreshForRA < RSSI)
 		RATRState = DM_RATR_STA_MIDDLE;
 	else
 		RATRState = DM_RATR_STA_LOW;
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
index e640c2256ab9..6e131202fde5 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
@@ -187,7 +187,7 @@ static s32 _LLTWrite(struct adapter *padapter, u32 address, u32 data)
 	/* polling */
 	do {
 		value = usb_read32(padapter, LLTReg);
-		if (_LLT_NO_ACTIVE == _LLT_OP_VALUE(value))
+		if (_LLT_OP_VALUE(value) == _LLT_NO_ACTIVE)
 			break;
 
 		if (count > POLLING_LLT_THRESHOLD) {
diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme.h b/drivers/staging/rtl8188eu/include/rtw_mlme.h
index 010f0c42368a..1b74b32b8a81 100644
--- a/drivers/staging/rtl8188eu/include/rtw_mlme.h
+++ b/drivers/staging/rtl8188eu/include/rtw_mlme.h
@@ -266,7 +266,7 @@ static inline void set_fwstate(struct mlme_priv *pmlmepriv, int state)
 {
 	pmlmepriv->fw_state |= state;
 	/* FOR HW integration */
-	if (_FW_UNDER_SURVEY == state)
+	if (state == _FW_UNDER_SURVEY)
 		pmlmepriv->bScanInProcess = true;
 }
 
@@ -274,7 +274,7 @@ static inline void _clr_fwstate_(struct mlme_priv *pmlmepriv, int state)
 {
 	pmlmepriv->fw_state &= ~state;
 	/* FOR HW integration */
-	if (_FW_UNDER_SURVEY == state)
+	if (state == _FW_UNDER_SURVEY)
 		pmlmepriv->bScanInProcess = false;
 }
 
diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
index 118e215dd6b1..a549b6d0159a 100644
--- a/drivers/staging/rtl8188eu/include/wifi.h
+++ b/drivers/staging/rtl8188eu/include/wifi.h
@@ -326,7 +326,7 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 
 static inline int IsFrameTypeCtrl(unsigned char *pframe)
 {
-	if (WIFI_CTRL_TYPE == GetFrameType(pframe))
+	if (GetFrameType(pframe) == WIFI_CTRL_TYPE)
 		return true;
 	else
 		return false;
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index d10a078c5b49..ba6356e0825a 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -694,7 +694,7 @@ static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 	enum ndis_802_11_network_infra networkType;
 	int ret = 0;
 
-	if (_FAIL == rtw_pwr_wakeup(padapter)) {
+	if (!rtw_pwr_wakeup(padapter)) {
 		ret = -EPERM;
 		goto exit;
 	}
@@ -946,7 +946,7 @@ static int rtw_wx_set_wap(struct net_device *dev,
 	struct	wlan_network	*pnetwork = NULL;
 	enum ndis_802_11_auth_mode	authmode;
 
-	if (_FAIL == rtw_pwr_wakeup(padapter)) {
+	if (!rtw_pwr_wakeup(padapter)) {
 		ret = -1;
 		goto exit;
 	}
@@ -1065,7 +1065,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s\n", __func__));
 
-	if (_FAIL == rtw_pwr_wakeup(padapter)) {
+	if (!rtw_pwr_wakeup(padapter)) {
 		ret = -1;
 		goto exit;
 	}
@@ -1269,7 +1269,7 @@ static int rtw_wx_set_essid(struct net_device *dev,
 
 	RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_,
 		 ("+%s: fw_state = 0x%08x\n", __func__, get_fwstate(pmlmepriv)));
-	if (_FAIL == rtw_pwr_wakeup(padapter)) {
+	if (!rtw_pwr_wakeup(padapter)) {
 		ret = -1;
 		goto exit;
 	}
@@ -2878,7 +2878,7 @@ static int rtw_wx_set_priv(struct net_device *dev,
 		int probereq_wpsie_len = len;
 		u8 wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};
 
-		if ((_VENDOR_SPECIFIC_IE_ == probereq_wpsie[0]) &&
+		if ((probereq_wpsie[0] == _VENDOR_SPECIFIC_IE_) &&
 		    (!memcmp(&probereq_wpsie[2], wps_oui, 4))) {
 			cp_sz = min(probereq_wpsie_len, MAX_WPS_IE_LEN);
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E135433FAFE
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:23:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 095EE4327D;
	Wed, 17 Mar 2021 22:23:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vb-CyW14SheS; Wed, 17 Mar 2021 22:23:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53249430A8;
	Wed, 17 Mar 2021 22:23:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5DEEF1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3716C4EDDA
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pg8rGOfCRznK for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D4FBF4EDD3
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:27 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id a7so818953ejs.3
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ImXjSqZuAm0fp2LJLin7tYo2e4XX8TNfCg9Q87fgg/Q=;
 b=HZerZN+lrdr21uyCJmkNoVR0OH4hvoS5p28AWw1Ft/7uFCrnrsM6p6/l4ITlLZQJWv
 DCunfzejn5BtaYLGds+ekH0y3pQFnsNVIldD85ox5HiDMIyk2rFW7ZvMr5db6s5bMISY
 4HkOVdgkGLVPtcBeaQ2T4YW9Y6rg4feftabv4xYMBjU7AG5RpwU5749maXHLbg+zEHYf
 tZkTzJoDLD0g4CQjsLXDMIxqrTzsNbgqqwnl5ksAqpOPEcvT08n98sifx/AFkVrg6xqp
 FQRb0G8kSaMOMTBy5TJuKpUMwiZOQs+MowxSMTggE91nsXGf6NQ5bKiBduuweH2mk6vr
 NM4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ImXjSqZuAm0fp2LJLin7tYo2e4XX8TNfCg9Q87fgg/Q=;
 b=gk5XbeK68u+Ut1oNWW7pm0X/iEmkTmgfQM1iqBRkuMYCZKGIRL1K6vH+U3CSponTKJ
 RLmw4zoLCRsI2lb1HKYdDyxPqHTb+jrbm+1O7JadK5++bUaQDkarzpy02nCqPoMInPSd
 MpXWf+qFoi5Lo4vnpXz8WI5aV9DZVfQrQIpTVUbzHLP2d7oySN7XePoTlZ+znYyg0LoT
 9Echbr+HTUD+yT+cuYyAFjZGQAWR+rSjlYMLBqsyRR1EP44mceFdm8P2AvgMbEAiWH+B
 WFqg1+5lIhDmWbIngl4RWulGPTDFUG5bYoJMueyrxoFV/iOSdKE8+bxW7D9NQkEDqsvD
 Eltg==
X-Gm-Message-State: AOAM533QWWQBziLF1YrjKpqrfA29bv5mI0KU4qLVqtjwdb+b06dwTVDA
 UIJtamGb/85TeFaTpsgDIn4=
X-Google-Smtp-Source: ABdhPJzUH78a/cD9Rk4UNeZq6fkL2t7gj0YqtiBioRjknfu+BiPw7vchPdHektRfGrL3djKtmxAt0Q==
X-Received: by 2002:a17:906:fcc7:: with SMTP id
 qx7mr37844716ejb.486.1616019686074; 
 Wed, 17 Mar 2021 15:21:26 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:25 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 11/43] Staging: rtl8723bs: fix names in hal_intf.h
Date: Wed, 17 Mar 2021 23:20:58 +0100
Message-Id: <20210317222130.29528-12-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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

This commit converts names of structs / enums
in include/hal_intf.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com.c       |  8 ++---
 drivers/staging/rtl8723bs/hal/hal_intf.c      |  8 ++---
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  8 ++---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  |  4 +--
 drivers/staging/rtl8723bs/include/hal_com.h   |  8 ++---
 drivers/staging/rtl8723bs/include/hal_intf.h  | 30 +++++++++----------
 .../staging/rtl8723bs/include/rtl8723b_hal.h  |  4 +--
 7 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 21e37976cb3a..32e6b8233341 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -1113,7 +1113,7 @@ void GetHwReg(struct adapter *adapter, u8 variable, u8 *val)
 
 
 u8 SetHalDefVar(
-	struct adapter *adapter, enum HAL_DEF_VARIABLE variable, void *value
+	struct adapter *adapter, enum hal_def_variable variable, void *value
 )
 {
 	struct hal_com_data *hal_data = GET_HAL_DATA(adapter);
@@ -1198,7 +1198,7 @@ u8 SetHalDefVar(
 }
 
 u8 GetHalDefVar(
-	struct adapter *adapter, enum HAL_DEF_VARIABLE variable, void *value
+	struct adapter *adapter, enum hal_def_variable variable, void *value
 )
 {
 	struct hal_com_data *hal_data = GET_HAL_DATA(adapter);
@@ -1254,7 +1254,7 @@ u8 GetHalDefVar(
 
 void GetHalODMVar(
 	struct adapter *Adapter,
-	enum HAL_ODM_VARIABLE eVariable,
+	enum hal_odm_variable eVariable,
 	void *pValue1,
 	void *pValue2
 )
@@ -1267,7 +1267,7 @@ void GetHalODMVar(
 
 void SetHalODMVar(
 	struct adapter *Adapter,
-	enum HAL_ODM_VARIABLE eVariable,
+	enum hal_odm_variable eVariable,
 	void *pValue1,
 	bool bSet
 )
diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
index 4df980f94327..8554baef95b8 100644
--- a/drivers/staging/rtl8723bs/hal/hal_intf.c
+++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
@@ -147,27 +147,27 @@ void rtw_hal_set_hwreg_with_buf(struct adapter *padapter, u8 variable, u8 *pbuf,
 		padapter->HalFunc.SetHwRegHandlerWithBuf(padapter, variable, pbuf, len);
 }
 
-u8 rtw_hal_set_def_var(struct adapter *padapter, enum HAL_DEF_VARIABLE eVariable, void *pValue)
+u8 rtw_hal_set_def_var(struct adapter *padapter, enum hal_def_variable eVariable, void *pValue)
 {
 	if (padapter->HalFunc.SetHalDefVarHandler)
 		return padapter->HalFunc.SetHalDefVarHandler(padapter, eVariable, pValue);
 	return _FAIL;
 }
 
-u8 rtw_hal_get_def_var(struct adapter *padapter, enum HAL_DEF_VARIABLE eVariable, void *pValue)
+u8 rtw_hal_get_def_var(struct adapter *padapter, enum hal_def_variable eVariable, void *pValue)
 {
 	if (padapter->HalFunc.GetHalDefVarHandler)
 		return padapter->HalFunc.GetHalDefVarHandler(padapter, eVariable, pValue);
 	return _FAIL;
 }
 
-void rtw_hal_set_odm_var(struct adapter *padapter, enum HAL_ODM_VARIABLE eVariable, void *pValue1, bool bSet)
+void rtw_hal_set_odm_var(struct adapter *padapter, enum hal_odm_variable eVariable, void *pValue1, bool bSet)
 {
 	if (padapter->HalFunc.SetHalODMVarHandler)
 		padapter->HalFunc.SetHalODMVarHandler(padapter, eVariable, pValue1, bSet);
 }
 
-void rtw_hal_get_odm_var(struct adapter *padapter, enum HAL_ODM_VARIABLE eVariable, void *pValue1, void *pValue2)
+void rtw_hal_get_odm_var(struct adapter *padapter, enum hal_odm_variable eVariable, void *pValue1, void *pValue2)
 {
 	if (padapter->HalFunc.GetHalODMVarHandler)
 		padapter->HalFunc.GetHalODMVarHandler(padapter, eVariable, pValue1, pValue2);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 9bcceb13ca2d..d30659a11236 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -2086,7 +2086,7 @@ static void rtl8723b_SetBeaconRelatedRegisters(struct adapter *padapter)
 
 static void rtl8723b_GetHalODMVar(
 	struct adapter *Adapter,
-	enum HAL_ODM_VARIABLE eVariable,
+	enum hal_odm_variable eVariable,
 	void *pValue1,
 	void *pValue2
 )
@@ -2096,7 +2096,7 @@ static void rtl8723b_GetHalODMVar(
 
 static void rtl8723b_SetHalODMVar(
 	struct adapter *Adapter,
-	enum HAL_ODM_VARIABLE eVariable,
+	enum hal_odm_variable eVariable,
 	void *pValue1,
 	bool bSet
 )
@@ -4304,7 +4304,7 @@ void GetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 /* Description:
  *	Change default setting of specified variable.
  */
-u8 SetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable, void *pval)
+u8 SetHalDefVar8723B(struct adapter *padapter, enum hal_def_variable variable, void *pval)
 {
 	u8 bResult;
 
@@ -4322,7 +4322,7 @@ u8 SetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable, v
 /* Description:
  *	Query setting of specified variable.
  */
-u8 GetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable, void *pval)
+u8 GetHalDefVar8723B(struct adapter *padapter, enum hal_def_variable variable, void *pval)
 {
 	u8 bResult;
 
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 5ceb3b635915..9fc565881e32 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -1458,7 +1458,7 @@ static void SetHwRegWithBuf8723B(struct adapter *padapter, u8 variable, u8 *pbuf
 /* 		Query setting of specified variable. */
 /*  */
 static u8 GetHalDefVar8723BSDIO(
-	struct adapter *Adapter, enum HAL_DEF_VARIABLE eVariable, void *pValue
+	struct adapter *Adapter, enum hal_def_variable eVariable, void *pValue
 )
 {
 	u8 	bResult = _SUCCESS;
@@ -1486,7 +1486,7 @@ static u8 GetHalDefVar8723BSDIO(
 /* 		Change default setting of specified variable. */
 /*  */
 static u8 SetHalDefVar8723BSDIO(struct adapter *Adapter,
-				enum HAL_DEF_VARIABLE eVariable, void *pValue)
+				enum hal_def_variable eVariable, void *pValue)
 {
 	return SetHalDefVar8723B(Adapter, eVariable, pValue);
 }
diff --git a/drivers/staging/rtl8723bs/include/hal_com.h b/drivers/staging/rtl8723bs/include/hal_com.h
index 81c85ca3b402..18a72feb8b69 100644
--- a/drivers/staging/rtl8723bs/include/hal_com.h
+++ b/drivers/staging/rtl8723bs/include/hal_com.h
@@ -241,9 +241,9 @@ void SetHwReg(struct adapter *padapter, u8 variable, u8 *val);
 void GetHwReg(struct adapter *padapter, u8 variable, u8 *val);
 void rtw_hal_check_rxfifo_full(struct adapter *adapter);
 
-u8 SetHalDefVar(struct adapter *adapter, enum HAL_DEF_VARIABLE variable,
+u8 SetHalDefVar(struct adapter *adapter, enum hal_def_variable variable,
 		void *value);
-u8 GetHalDefVar(struct adapter *adapter, enum HAL_DEF_VARIABLE variable,
+u8 GetHalDefVar(struct adapter *adapter, enum hal_def_variable variable,
 		void *value);
 
 bool eqNByte(u8 *str1, u8 *str2, u32 num);
@@ -278,12 +278,12 @@ void rtw_dump_raw_rssi_info(struct adapter *padapter);
 void rtw_bb_rf_gain_offset(struct adapter *padapter);
 
 void GetHalODMVar(struct adapter *Adapter,
-	enum HAL_ODM_VARIABLE		eVariable,
+	enum hal_odm_variable		eVariable,
 	void *pValue1,
 	void *pValue2);
 void SetHalODMVar(
 	struct adapter *Adapter,
-	enum HAL_ODM_VARIABLE		eVariable,
+	enum hal_odm_variable		eVariable,
 	void *pValue1,
 	bool					bSet);
 #endif /* __HAL_COMMON_H__ */
diff --git a/drivers/staging/rtl8723bs/include/hal_intf.h b/drivers/staging/rtl8723bs/include/hal_intf.h
index 093e00b9349b..f3be4eaa9685 100644
--- a/drivers/staging/rtl8723bs/include/hal_intf.h
+++ b/drivers/staging/rtl8723bs/include/hal_intf.h
@@ -8,14 +8,14 @@
 #define __HAL_INTF_H__
 
 
-enum RTL871X_HCI_TYPE {
+enum rtl871x_hci_type {
 	RTW_PCIE	= BIT0,
 	RTW_USB		= BIT1,
 	RTW_SDIO	= BIT2,
 	RTW_GSPI	= BIT3,
 };
 
-enum HW_VARIABLES {
+enum hw_variables {
 	HW_VAR_MEDIA_STATUS,
 	HW_VAR_MEDIA_STATUS1,
 	HW_VAR_SET_OPMODE,
@@ -115,7 +115,7 @@ enum HW_VARIABLES {
 	HW_VAR_MACID_WAKEUP,
 };
 
-enum HAL_DEF_VARIABLE {
+enum hal_def_variable {
 	HAL_DEF_UNDERCORATEDSMOOTHEDPWDB,
 	HAL_DEF_IS_SUPPORT_ANT_DIV,
 	HAL_DEF_CURRENT_ANTENNA,
@@ -150,14 +150,14 @@ enum HAL_DEF_VARIABLE {
 	HAL_DEF_DBG_RX_INFO_DUMP,
 };
 
-enum HAL_ODM_VARIABLE {
+enum hal_odm_variable {
 	HAL_ODM_STA_INFO,
 	HAL_ODM_P2P_STATE,
 	HAL_ODM_WIFI_DISPLAY_STATE,
 	HAL_ODM_NOISE_MONITOR,
 };
 
-enum HAL_INTF_PS_FUNC {
+enum hal_intf_ps_func {
 	HAL_USB_SELECT_SUSPEND,
 	HAL_MAX_ID,
 };
@@ -213,11 +213,11 @@ struct hal_ops {
 
 	void (*SetHwRegHandlerWithBuf)(struct adapter *padapter, u8 variable, u8 *pbuf, int len);
 
-	u8 (*GetHalDefVarHandler)(struct adapter *padapter, enum HAL_DEF_VARIABLE eVariable, void *pValue);
-	u8 (*SetHalDefVarHandler)(struct adapter *padapter, enum HAL_DEF_VARIABLE eVariable, void *pValue);
+	u8 (*GetHalDefVarHandler)(struct adapter *padapter, enum hal_def_variable eVariable, void *pValue);
+	u8 (*SetHalDefVarHandler)(struct adapter *padapter, enum hal_def_variable eVariable, void *pValue);
 
-	void (*GetHalODMVarHandler)(struct adapter *padapter, enum HAL_ODM_VARIABLE eVariable, void *pValue1, void *pValue2);
-	void (*SetHalODMVarHandler)(struct adapter *padapter, enum HAL_ODM_VARIABLE eVariable, void *pValue1, bool bSet);
+	void (*GetHalODMVarHandler)(struct adapter *padapter, enum hal_odm_variable eVariable, void *pValue1, void *pValue2);
+	void (*SetHalODMVarHandler)(struct adapter *padapter, enum hal_odm_variable eVariable, void *pValue1, bool bSet);
 
 	void (*UpdateRAMaskHandler)(struct adapter *padapter, u32 mac_id, u8 rssi_level);
 	void (*SetBeaconRelatedRegistersHandler)(struct adapter *padapter);
@@ -227,7 +227,7 @@ struct hal_ops {
 	void (*run_thread)(struct adapter *padapter);
 	void (*cancel_thread)(struct adapter *padapter);
 
-	u8 (*interface_ps_func)(struct adapter *padapter, enum HAL_INTF_PS_FUNC efunc_id, u8 *val);
+	u8 (*interface_ps_func)(struct adapter *padapter, enum hal_intf_ps_func efunc_id, u8 *val);
 
 	s32	(*hal_xmit)(struct adapter *padapter, struct xmit_frame *pxmitframe);
 	/*
@@ -260,7 +260,7 @@ struct hal_ops {
 	s32 (*fill_h2c_cmd)(struct adapter *, u8 ElementID, u32 CmdLen, u8 *pCmdBuffer);
 };
 
-enum RT_EEPROM_TYPE {
+enum rt_eeprom_type {
 	EEPROM_93C46,
 	EEPROM_93C56,
 	EEPROM_BOOT_EFUSE,
@@ -330,11 +330,11 @@ void rtw_hal_chip_configure(struct adapter *padapter);
 void rtw_hal_read_chip_info(struct adapter *padapter);
 void rtw_hal_read_chip_version(struct adapter *padapter);
 
-u8 rtw_hal_set_def_var(struct adapter *padapter, enum HAL_DEF_VARIABLE eVariable, void *pValue);
-u8 rtw_hal_get_def_var(struct adapter *padapter, enum HAL_DEF_VARIABLE eVariable, void *pValue);
+u8 rtw_hal_set_def_var(struct adapter *padapter, enum hal_def_variable eVariable, void *pValue);
+u8 rtw_hal_get_def_var(struct adapter *padapter, enum hal_def_variable eVariable, void *pValue);
 
-void rtw_hal_set_odm_var(struct adapter *padapter, enum HAL_ODM_VARIABLE eVariable, void *pValue1, bool bSet);
-void rtw_hal_get_odm_var(struct adapter *padapter, enum HAL_ODM_VARIABLE eVariable, void *pValue1, void *pValue2);
+void rtw_hal_set_odm_var(struct adapter *padapter, enum hal_odm_variable eVariable, void *pValue1, bool bSet);
+void rtw_hal_get_odm_var(struct adapter *padapter, enum hal_odm_variable eVariable, void *pValue1, void *pValue2);
 
 void rtw_hal_enable_interrupt(struct adapter *padapter);
 void rtw_hal_disable_interrupt(struct adapter *padapter);
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
index f9a4661997c4..fdade62bda28 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
@@ -231,9 +231,9 @@ void C2HPacketHandler_8723B(struct adapter *padapter, u8 *pbuffer, u16 length);
 void rtl8723b_set_hal_ops(struct hal_ops *pHalFunc);
 void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val);
 void GetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val);
-u8 SetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable,
+u8 SetHalDefVar8723B(struct adapter *padapter, enum hal_def_variable variable,
 		     void *pval);
-u8 GetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable,
+u8 GetHalDefVar8723B(struct adapter *padapter, enum hal_def_variable variable,
 		     void *pval);
 
 /*  register */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D5F270C12
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Sep 2020 11:05:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B6EBE20517;
	Sat, 19 Sep 2020 09:05:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cnGyiQwDBBIC; Sat, 19 Sep 2020 09:05:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D5CD520422;
	Sat, 19 Sep 2020 09:04:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D93321BF3E1
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 09:04:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D1B8D872E7
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 09:04:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3QUkTkeSF1Yn for <devel@linuxdriverproject.org>;
 Sat, 19 Sep 2020 09:04:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DB529872D1
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 09:04:42 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id q63so9273042qkf.3
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 02:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EjaPXNx9tqcQ984wDffy3CGBcU/Og9hzuCpmNjDDL90=;
 b=B0Zh1i2ENNXG0si/zVX4Fu35qkfmSWTCLvg1EH92/hM1A9SK5eKWQWRhap7WxbNZMn
 kcpvzFUcTpW9fxo+WrGIRr9ESY57VXqn0iWQmOUr6iRUbSCdj6PFP4kbOaOYOGW8JQt8
 fglLJxHZEzsHOIFAOZAKzf9MLbKto16F2LgusrldA3eYW2SLzoxq+q5RDXMfB5689hBJ
 qWUGhowSCEUEAFJSoc5i77iV/7l+bmr0iYyDOAs3jzcE/Jap/CyjABfoZOctjXYnClBv
 KoiWgAokmNFDHNj11xKGngAiCKSQx3fCM1JSJSrd/2V2u0YE9PqtLGfW5Hb2EfaWPVVl
 JwCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EjaPXNx9tqcQ984wDffy3CGBcU/Og9hzuCpmNjDDL90=;
 b=n7te7q8USzlPIhEVwCpJAbw6lxpP/Iv9brw/WWULJtBC7o2HheBGaumAFRafVwApzz
 nltfCZJnzPlC5h4EnrqpHgzqTItAHi6FWxVZZ0kp0dipSipVHiZpfv+LevIYMERVEhxW
 TeR9f32qKWznkQhe0+BQ9cvplhnfjCV/Pi39wsaAy1D9vSTSYEu8uYX0QiwTrXuxDzt/
 gMZNfljVahid7KEnbkw3fgewOtM5b8c2QH7/BqwRef1x8FJDgWicbcNrIVzVsTu2sHtw
 3rLA8iBX2zUAxUMESJPY8ge4KKvdrc66MQYbgukofBiPYYQXZbbuUomD52tFCXlRHQNY
 HBRA==
X-Gm-Message-State: AOAM531TQoXqAT0EwzGqoKb0/cPRnuWb3eEch83Pf1G61AaZyZ77gN8Q
 Xf5z6cSRa5zX/DGViLDobpo=
X-Google-Smtp-Source: ABdhPJxzuia/nJNLdPXDHpfAmFF4VQAmLesA+yyHCH3phxS2fvcwlabUWpm8ACTB2L7bUDxom+TUhQ==
X-Received: by 2002:a37:794:: with SMTP id 142mr37116193qkh.114.1600506280762; 
 Sat, 19 Sep 2020 02:04:40 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-002-204-143-169.002.204.pools.vodafone-ip.de. [2.204.143.169])
 by smtp.gmail.com with ESMTPSA id u18sm4057854qtk.61.2020.09.19.02.04.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Sep 2020 02:04:40 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8188eu: clean up alignment style issues
Date: Sat, 19 Sep 2020 11:00:40 +0200
Message-Id: <20200919090040.9613-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200919090040.9613-1-straube.linux@gmail.com>
References: <20200919090040.9613-1-straube.linux@gmail.com>
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

Clean up alignment style issues to follow kernel coding style
and clear checkpatch issues.

CHECK: Alignment should match open parenthesis

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c     |   2 +-
 drivers/staging/rtl8188eu/hal/phy.c           |  21 ++--
 drivers/staging/rtl8188eu/hal/rf_cfg.c        |   3 +-
 .../staging/rtl8188eu/hal/rtl8188e_hal_init.c |   2 +-
 drivers/staging/rtl8188eu/hal/usb_halinit.c   |   4 +-
 .../staging/rtl8188eu/os_dep/ioctl_linux.c    | 114 +++++++++---------
 .../staging/rtl8188eu/os_dep/rtw_android.c    |   4 +-
 drivers/staging/rtl8188eu/os_dep/usb_intf.c   |  27 +++--
 8 files changed, 87 insertions(+), 90 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 4e2b1ee59981..5256817ee12a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1730,7 +1730,7 @@ int rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_
 	    (ndisauthmode == Ndis802_11AuthModeWPAPSK))
 		authmode = _WPA_IE_ID_;
 	else if ((ndisauthmode == Ndis802_11AuthModeWPA2) ||
-	    (ndisauthmode == Ndis802_11AuthModeWPA2PSK))
+	         (ndisauthmode == Ndis802_11AuthModeWPA2PSK))
 		authmode = _WPA2_IE_ID_;
 	else
 		authmode = 0x0;
diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 8d1267bf0848..a970189ba8c6 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -51,8 +51,7 @@ void phy_set_bb_reg(struct adapter *adapt, u32 regaddr, u32 bitmask, u32 data)
 	usb_write32(adapt, regaddr, data);
 }
 
-static u32 rf_serial_read(struct adapter *adapt,
-			enum rf_radio_path rfpath, u32 offset)
+static u32 rf_serial_read(struct adapter *adapt, enum rf_radio_path rfpath, u32 offset)
 {
 	u32 ret = 0;
 	struct bb_reg_def *phyreg = &adapt->HalData->PHYRegDef[rfpath];
@@ -107,7 +106,7 @@ static void rf_serial_write(struct adapter *adapt,
 }
 
 u32 rtw_hal_read_rfreg(struct adapter *adapt, enum rf_radio_path rf_path,
-		     u32 reg_addr, u32 bit_mask)
+		       u32 reg_addr, u32 bit_mask)
 {
 	u32 original_value, bit_shift;
 
@@ -117,7 +116,7 @@ u32 rtw_hal_read_rfreg(struct adapter *adapt, enum rf_radio_path rf_path,
 }
 
 void phy_set_rf_reg(struct adapter *adapt, enum rf_radio_path rf_path,
-		     u32 reg_addr, u32 bit_mask, u32 data)
+		    u32 reg_addr, u32 bit_mask, u32 data)
 {
 	u32 original_value, bit_shift;
 
@@ -190,7 +189,7 @@ void phy_set_tx_power_level(struct adapter *adapt, u8 channel)
 
 	rtl88eu_phy_rf6052_set_cck_txpower(adapt, &cck_pwr[0]);
 	rtl88eu_phy_rf6052_set_ofdm_txpower(adapt, &ofdm_pwr[0], &bw20_pwr[0],
-					  &bw40_pwr[0], channel);
+					    &bw40_pwr[0], channel);
 }
 
 static void phy_set_bw_mode_callback(struct adapter *adapt)
@@ -236,11 +235,11 @@ static void phy_set_bw_mode_callback(struct adapter *adapt)
 		 * These settings are required only for 40MHz
 		 */
 		phy_set_bb_reg(adapt, rCCK0_System, bCCKSideBand,
-		    (hal_data->nCur40MhzPrimeSC >> 1));
+			       (hal_data->nCur40MhzPrimeSC >> 1));
 		phy_set_bb_reg(adapt, rOFDM1_LSTF, 0xC00,
 			       hal_data->nCur40MhzPrimeSC);
 		phy_set_bb_reg(adapt, 0x818, (BIT(26) | BIT(27)),
-		   (hal_data->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_LOWER) ? 2 : 1);
+			       (hal_data->nCur40MhzPrimeSC == HAL_PRIME_CHNL_OFFSET_LOWER) ? 2 : 1);
 		break;
 	default:
 		break;
@@ -251,7 +250,7 @@ static void phy_set_bw_mode_callback(struct adapter *adapt)
 }
 
 void rtw_hal_set_bwmode(struct adapter *adapt, enum ht_channel_width bandwidth,
-		     unsigned char offset)
+			unsigned char offset)
 {
 	struct hal_data_8188e *hal_data = adapt->HalData;
 	enum ht_channel_width tmp_bw = hal_data->CurrentChannelBW;
@@ -437,7 +436,7 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 			thermal_val = (u8)(thermal_avg / thermal_avg_count);
 
 		if (dm_odm->RFCalibrateInfo.bDoneTxpower &&
-			!dm_odm->RFCalibrateInfo.bReloadtxpowerindex) {
+		    !dm_odm->RFCalibrateInfo.bReloadtxpowerindex) {
 			delta = abs(thermal_val - dm_odm->RFCalibrateInfo.ThermalValue);
 		} else {
 			delta = abs(thermal_val - hal_data->EEPROMThermalMeter);
@@ -1149,12 +1148,12 @@ static void phy_lc_calibrate(struct adapter *adapt, bool is2t)
 		/* 1. Read original RF mode */
 		/* Path-A */
 		rf_a_mode = rtw_hal_read_rfreg(adapt, RF_PATH_A, RF_AC,
-					     bMask12Bits);
+					       bMask12Bits);
 
 		/* Path-B */
 		if (is2t)
 			rf_b_mode = rtw_hal_read_rfreg(adapt, RF_PATH_B, RF_AC,
-						     bMask12Bits);
+						       bMask12Bits);
 
 		/* 2. Set RF mode = standby mode */
 		/* Path-A */
diff --git a/drivers/staging/rtl8188eu/hal/rf_cfg.c b/drivers/staging/rtl8188eu/hal/rf_cfg.c
index 45542076e300..d39e1bd97f85 100644
--- a/drivers/staging/rtl8188eu/hal/rf_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/rf_cfg.c
@@ -171,8 +171,7 @@ static void rtl_rfreg_delay(struct adapter *adapt, enum rf_radio_path rfpath, u3
 	}
 }
 
-static void rtl8188e_config_rf_reg(struct adapter *adapt,
-	u32 addr, u32 data)
+static void rtl8188e_config_rf_reg(struct adapter *adapt, u32 addr, u32 data)
 {
 	u32 content = 0x1000; /*RF Content: radio_a_txt*/
 	u32 maskforphyset = content & 0xE000;
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
index 6e131202fde5..95b27b4df705 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
@@ -406,7 +406,7 @@ void Hal_ReadPowerSavingMode88E(struct adapter *padapter, u8 *hwinfo, bool AutoL
 		padapter->pwrctrlpriv.bSupportRemoteWakeup = (hwinfo[EEPROM_USB_OPTIONAL_FUNCTION0] & BIT(1)) ? true : false;
 
 		DBG_88E("%s...bHWPwrPindetect(%x)-bHWPowerdown(%x) , bSupportRemoteWakeup(%x)\n", __func__,
-		padapter->pwrctrlpriv.bHWPwrPindetect, padapter->pwrctrlpriv.bHWPowerdown, padapter->pwrctrlpriv.bSupportRemoteWakeup);
+			padapter->pwrctrlpriv.bHWPwrPindetect, padapter->pwrctrlpriv.bHWPowerdown, padapter->pwrctrlpriv.bSupportRemoteWakeup);
 
 		DBG_88E("### PS params =>  power_mgnt(%x), usbss_enable(%x) ###\n", padapter->registrypriv.power_mgnt, padapter->registrypriv.usbss_enable);
 	}
diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index c25b2275266c..5e7bb22d7d01 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -78,8 +78,8 @@ void rtw_hal_chip_configure(struct adapter *adapt)
 	haldata->UsbRxAggPageCount	= 48; /* uint :128 b 0x0A;	10 = MAX_RX_DMA_BUFFER_SIZE/2/haldata->UsbBulkOutSize */
 	haldata->UsbRxAggPageTimeout	= 0x4; /* 6, absolute time = 34ms/(2^6) */
 
-	HalUsbSetQueuePipeMapping8188EUsb(adapt,
-				pdvobjpriv->RtNumInPipes, pdvobjpriv->RtNumOutPipes);
+	HalUsbSetQueuePipeMapping8188EUsb(adapt, pdvobjpriv->RtNumInPipes,
+					  pdvobjpriv->RtNumOutPipes);
 }
 
 u32 rtw_hal_power_on(struct adapter *adapt)
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 152ac20918e2..7fd8582ba353 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -614,8 +614,8 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 typedef unsigned char   NDIS_802_11_RATES_EX[NDIS_802_11_LENGTH_RATES_EX];
 
 static int rtw_wx_get_name(struct net_device *dev,
-			     struct iw_request_info *info,
-			     union iwreq_data *wrqu, char *extra)
+			   struct iw_request_info *info,
+			   union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	u32 ht_ielen = 0;
@@ -658,16 +658,16 @@ static int rtw_wx_get_name(struct net_device *dev,
 }
 
 static int rtw_wx_set_freq(struct net_device *dev,
-			     struct iw_request_info *info,
-			     union iwreq_data *wrqu, char *extra)
+			   struct iw_request_info *info,
+			   union iwreq_data *wrqu, char *extra)
 {
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, ("+%s\n", __func__));
 	return 0;
 }
 
 static int rtw_wx_get_freq(struct net_device *dev,
-			     struct iw_request_info *info,
-			     union iwreq_data *wrqu, char *extra)
+			   struct iw_request_info *info,
+			   union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
@@ -688,7 +688,7 @@ static int rtw_wx_get_freq(struct net_device *dev,
 }
 
 static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
-			     union iwreq_data *wrqu, char *b)
+			   union iwreq_data *wrqu, char *b)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	enum ndis_802_11_network_infra networkType;
@@ -736,7 +736,7 @@ static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 }
 
 static int rtw_wx_get_mode(struct net_device *dev, struct iw_request_info *a,
-			     union iwreq_data *wrqu, char *b)
+			   union iwreq_data *wrqu, char *b)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
@@ -823,8 +823,8 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 }
 
 static int rtw_wx_get_sens(struct net_device *dev,
-			     struct iw_request_info *info,
-			     union iwreq_data *wrqu, char *extra)
+			   struct iw_request_info *info,
+			   union iwreq_data *wrqu, char *extra)
 {
 	wrqu->sens.value = 0;
 	wrqu->sens.fixed = 0;	/* no auto select */
@@ -833,8 +833,8 @@ static int rtw_wx_get_sens(struct net_device *dev,
 }
 
 static int rtw_wx_get_range(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
+			    struct iw_request_info *info,
+			    union iwreq_data *wrqu, char *extra)
 {
 	struct iw_range *range = (struct iw_range *)extra;
 	struct adapter *padapter = rtw_netdev_priv(dev);
@@ -932,9 +932,8 @@ static int rtw_wx_get_range(struct net_device *dev,
 /* s3. set_802_11_encryption_mode() */
 /* s4. rtw_set_802_11_bssid() */
 static int rtw_wx_set_wap(struct net_device *dev,
-			 struct iw_request_info *info,
-			 union iwreq_data *awrq,
-			 char *extra)
+			  struct iw_request_info *info,
+			  union iwreq_data *awrq, char *extra)
 {
 	uint ret = 0;
 	struct adapter *padapter = rtw_netdev_priv(dev);
@@ -999,8 +998,8 @@ static int rtw_wx_set_wap(struct net_device *dev,
 }
 
 static int rtw_wx_get_wap(struct net_device *dev,
-			    struct iw_request_info *info,
-			    union iwreq_data *wrqu, char *extra)
+			  struct iw_request_info *info,
+			  union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
@@ -1022,8 +1021,8 @@ static int rtw_wx_get_wap(struct net_device *dev,
 }
 
 static int rtw_wx_set_mlme(struct net_device *dev,
-			     struct iw_request_info *info,
-			     union iwreq_data *wrqu, char *extra)
+			   struct iw_request_info *info,
+			   union iwreq_data *wrqu, char *extra)
 {
 	int ret = 0;
 	u16 reason;
@@ -1055,7 +1054,7 @@ static int rtw_wx_set_mlme(struct net_device *dev,
 }
 
 static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
-			     union iwreq_data *wrqu, char *extra)
+			   union iwreq_data *wrqu, char *extra)
 {
 	u8 _status = false;
 	int ret = 0;
@@ -1185,7 +1184,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 }
 
 static int rtw_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
-			     union iwreq_data *wrqu, char *extra)
+			   union iwreq_data *wrqu, char *extra)
 {
 	struct list_head *plist, *phead;
 	struct adapter *padapter = rtw_netdev_priv(dev);
@@ -1253,8 +1252,8 @@ static int rtw_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
 /* s3. set_802_11_encryption_mode() */
 /* s4. rtw_set_802_11_ssid() */
 static int rtw_wx_set_essid(struct net_device *dev,
-			      struct iw_request_info *a,
-			      union iwreq_data *wrqu, char *extra)
+			    struct iw_request_info *a,
+			    union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -1354,8 +1353,8 @@ static int rtw_wx_set_essid(struct net_device *dev,
 }
 
 static int rtw_wx_get_essid(struct net_device *dev,
-			      struct iw_request_info *a,
-			      union iwreq_data *wrqu, char *extra)
+			    struct iw_request_info *a,
+			    union iwreq_data *wrqu, char *extra)
 {
 	u32 len;
 	struct adapter *padapter = rtw_netdev_priv(dev);
@@ -1379,8 +1378,8 @@ static int rtw_wx_get_essid(struct net_device *dev,
 }
 
 static int rtw_wx_set_rate(struct net_device *dev,
-			      struct iw_request_info *a,
-			      union iwreq_data *wrqu, char *extra)
+			   struct iw_request_info *a,
+			   union iwreq_data *wrqu, char *extra)
 {
 	int i;
 	u8 datarates[NumRates];
@@ -1458,8 +1457,8 @@ static int rtw_wx_set_rate(struct net_device *dev,
 }
 
 static int rtw_wx_get_rate(struct net_device *dev,
-			     struct iw_request_info *info,
-			     union iwreq_data *wrqu, char *extra)
+			   struct iw_request_info *info,
+			   union iwreq_data *wrqu, char *extra)
 {
 	u16 max_rate = 0;
 
@@ -1475,8 +1474,8 @@ static int rtw_wx_get_rate(struct net_device *dev,
 }
 
 static int rtw_wx_set_rts(struct net_device *dev,
-			     struct iw_request_info *info,
-			     union iwreq_data *wrqu, char *extra)
+			  struct iw_request_info *info,
+			  union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
 
@@ -1496,8 +1495,8 @@ static int rtw_wx_set_rts(struct net_device *dev,
 }
 
 static int rtw_wx_get_rts(struct net_device *dev,
-			     struct iw_request_info *info,
-			     union iwreq_data *wrqu, char *extra)
+			  struct iw_request_info *info,
+			  union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
 
@@ -1511,8 +1510,8 @@ static int rtw_wx_get_rts(struct net_device *dev,
 }
 
 static int rtw_wx_set_frag(struct net_device *dev,
-			     struct iw_request_info *info,
-			     union iwreq_data *wrqu, char *extra)
+			   struct iw_request_info *info,
+			   union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
 
@@ -1532,8 +1531,8 @@ static int rtw_wx_set_frag(struct net_device *dev,
 }
 
 static int rtw_wx_get_frag(struct net_device *dev,
-			     struct iw_request_info *info,
-			     union iwreq_data *wrqu, char *extra)
+			   struct iw_request_info *info,
+			   union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
 
@@ -1546,8 +1545,8 @@ static int rtw_wx_get_frag(struct net_device *dev,
 }
 
 static int rtw_wx_get_retry(struct net_device *dev,
-			     struct iw_request_info *info,
-			     union iwreq_data *wrqu, char *extra)
+			    struct iw_request_info *info,
+			    union iwreq_data *wrqu, char *extra)
 {
 	wrqu->retry.value = 7;
 	wrqu->retry.fixed = 0;	/* no auto select */
@@ -1557,8 +1556,8 @@ static int rtw_wx_get_retry(struct net_device *dev,
 }
 
 static int rtw_wx_set_enc(struct net_device *dev,
-			    struct iw_request_info *info,
-			    union iwreq_data *wrqu, char *keybuf)
+			  struct iw_request_info *info,
+			  union iwreq_data *wrqu, char *keybuf)
 {
 	u32 key, ret = 0;
 	u32 keyindex_provided;
@@ -1671,8 +1670,8 @@ static int rtw_wx_set_enc(struct net_device *dev,
 }
 
 static int rtw_wx_get_enc(struct net_device *dev,
-			    struct iw_request_info *info,
-			    union iwreq_data *wrqu, char *keybuf)
+			  struct iw_request_info *info,
+			  union iwreq_data *wrqu, char *keybuf)
 {
 	uint key;
 	struct adapter *padapter = rtw_netdev_priv(dev);
@@ -1736,8 +1735,8 @@ static int rtw_wx_get_enc(struct net_device *dev,
 }
 
 static int rtw_wx_get_power(struct net_device *dev,
-			     struct iw_request_info *info,
-			     union iwreq_data *wrqu, char *extra)
+			    struct iw_request_info *info,
+			    union iwreq_data *wrqu, char *extra)
 {
 	wrqu->power.value = 0;
 	wrqu->power.fixed = 0;	/* no auto select */
@@ -1756,8 +1755,8 @@ static int rtw_wx_set_gen_ie(struct net_device *dev,
 }
 
 static int rtw_wx_set_auth(struct net_device *dev,
-			     struct iw_request_info *info,
-			     union iwreq_data *wrqu, char *extra)
+			   struct iw_request_info *info,
+			   union iwreq_data *wrqu, char *extra)
 {
 	struct adapter *padapter = rtw_netdev_priv(dev);
 	struct iw_param *param = (struct iw_param *)&wrqu->param;
@@ -1837,8 +1836,8 @@ static int rtw_wx_set_auth(struct net_device *dev,
 }
 
 static int rtw_wx_set_enc_ext(struct net_device *dev,
-			     struct iw_request_info *info,
-			     union iwreq_data *wrqu, char *extra)
+			      struct iw_request_info *info,
+			      union iwreq_data *wrqu, char *extra)
 {
 	char *alg_name;
 	u32 param_len;
@@ -2266,7 +2265,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 				DBG_88E("%s, set group_key, WEP\n", __func__);
 
 				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,
-					    param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
+				       param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
 
 				psecuritypriv->dot118021XGrpPrivacy = _WEP40_;
 				if (param->u.crypt.key_len == 13)
@@ -2275,7 +2274,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 				DBG_88E("%s, set group_key, TKIP\n", __func__);
 				psecuritypriv->dot118021XGrpPrivacy = _TKIP_;
 				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,
-					    param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
+				       param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
 				/* set mic key */
 				memcpy(psecuritypriv->dot118021XGrptxmickey[param->u.crypt.idx].skey, &param->u.crypt.key[16], 8);
 				memcpy(psecuritypriv->dot118021XGrprxmickey[param->u.crypt.idx].skey, &param->u.crypt.key[24], 8);
@@ -2285,7 +2284,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 				DBG_88E("%s, set group_key, CCMP\n", __func__);
 				psecuritypriv->dot118021XGrpPrivacy = _AES_;
 				memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,
-					    param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
+				       param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
 			} else {
 				DBG_88E("%s, set group_key, none\n", __func__);
 				psecuritypriv->dot118021XGrpPrivacy = _NO_PRIVACY_;
@@ -2340,7 +2339,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 			} else { /* group key??? */
 				if (strcmp(param->u.crypt.alg, "WEP") == 0) {
 					memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,
-						    param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
+					       param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
 					psecuritypriv->dot118021XGrpPrivacy = _WEP40_;
 					if (param->u.crypt.key_len == 13)
 						psecuritypriv->dot118021XGrpPrivacy = _WEP104_;
@@ -2348,7 +2347,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 					psecuritypriv->dot118021XGrpPrivacy = _TKIP_;
 
 					memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,
-						    param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
+					       param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
 
 					/* set mic key */
 					memcpy(psecuritypriv->dot118021XGrptxmickey[param->u.crypt.idx].skey, &param->u.crypt.key[16], 8);
@@ -2359,7 +2358,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 					psecuritypriv->dot118021XGrpPrivacy = _AES_;
 
 					memcpy(psecuritypriv->dot118021XGrpKey[param->u.crypt.idx].skey,
-						    param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
+					       param->u.crypt.key, min_t(u16, param->u.crypt.key_len, 16));
 				} else {
 					psecuritypriv->dot118021XGrpPrivacy = _NO_PRIVACY_;
 				}
@@ -2845,9 +2844,8 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 
 #include <rtw_android.h>
 static int rtw_wx_set_priv(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *awrq,
-				char *extra)
+			   struct iw_request_info *info,
+			   union iwreq_data *awrq, char *extra)
 {
 	int ret = 0;
 	int len = 0;
diff --git a/drivers/staging/rtl8188eu/os_dep/rtw_android.c b/drivers/staging/rtl8188eu/os_dep/rtw_android.c
index 9fe15dbe8133..b5209627fd1a 100644
--- a/drivers/staging/rtl8188eu/os_dep/rtw_android.c
+++ b/drivers/staging/rtl8188eu/os_dep/rtw_android.c
@@ -68,7 +68,7 @@ int rtw_android_cmdstr_to_num(char *cmdstr)
 
 	for (cmd_num = 0; cmd_num < ANDROID_WIFI_CMD_MAX; cmd_num++)
 		if (!strncasecmp(cmdstr, android_wifi_cmd_str[cmd_num],
-				  strlen(android_wifi_cmd_str[cmd_num])))
+				 strlen(android_wifi_cmd_str[cmd_num])))
 			break;
 	return cmd_num;
 }
@@ -120,7 +120,7 @@ static int android_set_cntry(struct net_device *net, char *command,
 }
 
 static int android_get_p2p_addr(struct net_device *net, char *command,
-					int total_len)
+				int total_len)
 {
 	/* We use the same address as our HW MAC address */
 	memcpy(command, net->dev_addr, ETH_ALEN);
diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index 41fb850b5e3a..99bfc828672c 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -118,7 +118,7 @@ static void usb_dvobj_deinit(struct usb_interface *usb_intf)
 	if (dvobj) {
 		/* Modify condition for 92DU DMDP 2010.11.18, by Thomas */
 		if ((dvobj->NumInterfaces != 2 &&
-		    dvobj->NumInterfaces != 3) ||
+		     dvobj->NumInterfaces != 3) ||
 		    (dvobj->InterfaceNumber == 1)) {
 			if (interface_to_usbdev(usb_intf)->state !=
 			    USB_STATE_NOTATTACHED) {
@@ -209,8 +209,8 @@ static int rtw_suspend(struct usb_interface *pusb_intf, pm_message_t message)
 	if ((!padapter->bup) || (padapter->bDriverStopped) ||
 	    (padapter->bSurpriseRemoved)) {
 		pr_debug("padapter->bup=%d bDriverStopped=%d bSurpriseRemoved = %d\n",
-			padapter->bup, padapter->bDriverStopped,
-			padapter->bSurpriseRemoved);
+			 padapter->bup, padapter->bDriverStopped,
+			 padapter->bSurpriseRemoved);
 		goto exit;
 	}
 
@@ -231,11 +231,11 @@ static int rtw_suspend(struct usb_interface *pusb_intf, pm_message_t message)
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) &&
 	    check_fwstate(pmlmepriv, _FW_LINKED)) {
 		pr_debug("%s:%d %s(%pM), length:%d assoc_ssid.length:%d\n",
-			__func__, __LINE__,
-			pmlmepriv->cur_network.network.ssid.ssid,
-			pmlmepriv->cur_network.network.MacAddress,
-			pmlmepriv->cur_network.network.ssid.ssid_length,
-			pmlmepriv->assoc_ssid.ssid_length);
+			 __func__, __LINE__,
+			 pmlmepriv->cur_network.network.ssid.ssid,
+			 pmlmepriv->cur_network.network.MacAddress,
+			 pmlmepriv->cur_network.network.ssid.ssid_length,
+			 pmlmepriv->assoc_ssid.ssid_length);
 
 		pmlmepriv->to_roaming = 1;
 	}
@@ -300,7 +300,7 @@ static int rtw_resume_process(struct adapter *padapter)
 	if (pwrpriv)
 		pwrpriv->bInSuspend = false;
 	pr_debug("<===  %s return %d.............. in %dms\n", __func__,
-		ret, jiffies_to_msecs(jiffies - start_time));
+		 ret, jiffies_to_msecs(jiffies - start_time));
 
 	return ret;
 }
@@ -322,7 +322,8 @@ static int rtw_resume(struct usb_interface *pusb_intf)
  */
 
 static struct adapter *rtw_usb_if1_init(struct dvobj_priv *dvobj,
-	struct usb_interface *pusb_intf, const struct usb_device_id *pdid)
+					struct usb_interface *pusb_intf,
+					const struct usb_device_id *pdid)
 {
 	struct adapter *padapter = NULL;
 	struct net_device *pnetdev = NULL;
@@ -380,7 +381,7 @@ static struct adapter *rtw_usb_if1_init(struct dvobj_priv *dvobj,
 		device_init_wakeup(&pusb_intf->dev, 1);
 		pr_debug("\n  padapter->pwrctrlpriv.bSupportRemoteWakeup~~~~~~\n");
 		pr_debug("\n  padapter->pwrctrlpriv.bSupportRemoteWakeup~~~[%d]~~~\n",
-			device_may_wakeup(&pusb_intf->dev));
+			 device_may_wakeup(&pusb_intf->dev));
 	}
 #endif
 
@@ -393,7 +394,7 @@ static struct adapter *rtw_usb_if1_init(struct dvobj_priv *dvobj,
 	rtw_macaddr_cfg(padapter->eeprompriv.mac_addr);
 	memcpy(pnetdev->dev_addr, padapter->eeprompriv.mac_addr, ETH_ALEN);
 	pr_debug("MAC Address from pnetdev->dev_addr =  %pM\n",
-		pnetdev->dev_addr);
+		 pnetdev->dev_addr);
 
 	/* step 6. Tell the network stack we exist */
 	if (register_netdev(pnetdev) != 0) {
@@ -445,7 +446,7 @@ static void rtw_usb_if1_deinit(struct adapter *if1)
 
 	rtw_dev_unload(if1);
 	pr_debug("+r871xu_dev_remove, hw_init_completed=%d\n",
-		if1->hw_init_completed);
+		 if1->hw_init_completed);
 	rtw_free_drv_sw(if1);
 	rtw_free_netdev(pnetdev);
 }
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

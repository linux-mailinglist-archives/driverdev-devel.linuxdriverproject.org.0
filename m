Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E134133FB06
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:24:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 793D36067F;
	Wed, 17 Mar 2021 22:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F55x7Jt8RLSh; Wed, 17 Mar 2021 22:24:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9155B605CB;
	Wed, 17 Mar 2021 22:24:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 569011BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 465C160636
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iCMp8MNIa3cp for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3DC7A6F998
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:33 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id l4so817413ejc.10
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=I2qi8OGP1OYc9udOcv43qRUUKdOpLWXQoZj7+hIKGIg=;
 b=XRXKjzmDama6L5yLiS5l91815C3+4zjNpsci/w67fToWx/0lLqzSJRWt79CNXC8GbL
 /c1yj5VpmyJ3FobDgUEBEp7yv7IFbIvqfVeIFGaX5fHl1uBVVuigJdCEnAvqgG33O3IK
 gddFe6lf9LtoropGYEcmZZCGEV112ChtqYTEyl3h9Y7L1N7E8Sk7Dl7sti9XF2Yl+OBL
 INjJ0sHlPyN/HzZfE4vKr76vq2YQOneEjTu/eCBQU91VnYFo6q0hbCn+aaQKd4ePDWXy
 H5EozNUvSTziZsnAlz9Y4Y9b/puc79kY4CF0z0iIGVoZIwJsItnE6pXOfSeeNUBJIlMz
 iXnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I2qi8OGP1OYc9udOcv43qRUUKdOpLWXQoZj7+hIKGIg=;
 b=ShNSO0rchxnBajXunwWEpGK2YkPVPLF34RcxLzXx4Gj1ZYITKxL3STZxFEKRm+WTm4
 d5jTK78hW30ApXkj1FZlOZypugc0EOw/VGHbHW1dW+Ulcoi01U7iG2piS79/FMkQnPnG
 mltrKyUn+x+YtaB5RXbVWxoyzT3kRoUweJXe/RooDeLMF+HwLHyX0lnYnI+5gR7NwHU7
 nscBiFeCZ6br/nRuhY8YKH6NpkDdDOv+k8sL0iLs7iVWOkNjP9GdpcuTCgiZv2JYZGhu
 ihKQ0YSYZw+0SEPQjjna5NfnuFg+TPgqRIqJMqWO7ee8Xccl9cyUw7tNuUjYgrS91l+v
 l7mg==
X-Gm-Message-State: AOAM533Iq/XXaWjbiw6kJizNa4ouBxv0yfgWa3UO70rvxnbsSbFlHhED
 GmmuRHq4pkD8zyxBnC8+0cI=
X-Google-Smtp-Source: ABdhPJzg9oQM+C08FzEuDp2A8AdN/mQad6WYa/Rw0jLFYm08INukFisL98Esy0NIgqH62hAoZkP7ug==
X-Received: by 2002:a17:906:2dc1:: with SMTP id
 h1mr38377292eji.460.1616019691583; 
 Wed, 17 Mar 2021 15:21:31 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:31 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 19/43] Staging: rtl8723bs: fix names in hal_phy.h
Date: Wed, 17 Mar 2021 23:21:06 +0100
Message-Id: <20210317222130.29528-20-marcocesati@gmail.com>
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
in include/hal_phy.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c   |  2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c  |  4 ++--
 drivers/staging/rtl8723bs/hal/sdio_halinit.c     |  4 ++--
 .../staging/rtl8723bs/include/hal_com_phycfg.h   |  2 +-
 drivers/staging/rtl8723bs/include/hal_data.h     |  6 +++---
 drivers/staging/rtl8723bs/include/hal_phy.h      | 16 ++++++++--------
 drivers/staging/rtl8723bs/include/rtw_mp.h       |  2 +-
 7 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index 7405f9229117..b46db8909cb4 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -1673,7 +1673,7 @@ static s16 get_rate_sctn_idx(const u8 rate)
 }
 
 s8 phy_get_tx_pwr_lmt(struct adapter *adapter, u32 reg_pwr_tbl_sel,
-		      enum BAND_TYPE band_type, enum CHANNEL_WIDTH bandwidth,
+		      enum band_type band_type, enum CHANNEL_WIDTH bandwidth,
 		      u8 rf_path, u8 data_rate, u8 channel)
 {
 	s16 idx_band       = -1;
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index 9868d9f2b4df..9a41c185cf84 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -108,7 +108,7 @@ void PHY_SetBBReg_8723B(
 /*  */
 
 static u32 phy_RFSerialRead_8723B(
-	struct adapter *Adapter, enum RF_PATH eRFPath, u32 Offset
+	struct adapter *Adapter, enum rf_path eRFPath, u32 Offset
 )
 {
 	u32 retValue = 0;
@@ -202,7 +202,7 @@ static u32 phy_RFSerialRead_8723B(
  */
 static void phy_RFSerialWrite_8723B(
 	struct adapter *Adapter,
-	enum RF_PATH eRFPath,
+	enum rf_path eRFPath,
 	u32 Offset,
 	u32 Data
 )
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 9fc565881e32..6731ce2dadda 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -751,9 +751,9 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 	/*  Joseph Note: Keep RfRegChnlVal for later use. */
 	/*  */
 	pHalData->RfRegChnlVal[0] =
-		PHY_QueryRFReg(padapter, (enum RF_PATH)0, RF_CHNLBW, bRFRegOffsetMask);
+		PHY_QueryRFReg(padapter, (enum rf_path)0, RF_CHNLBW, bRFRegOffsetMask);
 	pHalData->RfRegChnlVal[1] =
-		PHY_QueryRFReg(padapter, (enum RF_PATH)1, RF_CHNLBW, bRFRegOffsetMask);
+		PHY_QueryRFReg(padapter, (enum rf_path)1, RF_CHNLBW, bRFRegOffsetMask);
 
 
 	/* if (!pHalData->bMACFuncEnable) { */
diff --git a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
index 580b85324ae7..32fd050428db 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
@@ -178,7 +178,7 @@ u8 		Channel,
 	);
 
 s8 phy_get_tx_pwr_lmt(struct adapter *adapter, u32 RegPwrTblSel,
-			enum BAND_TYPE Band, enum CHANNEL_WIDTH Bandwidth,
+			enum band_type Band, enum CHANNEL_WIDTH Bandwidth,
 u8 		RfPath,
 u8 		DataRate,
 u8 		Channel
diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
index 5f7cad83ce1c..d731cec8ab81 100644
--- a/drivers/staging/rtl8723bs/include/hal_data.h
+++ b/drivers/staging/rtl8723bs/include/hal_data.h
@@ -187,10 +187,10 @@ struct hal_com_data {
 	u16 FirmwareSignature;
 
 	/* current WIFI_PHY values */
-	enum WIRELESS_MODE CurrentWirelessMode;
+	enum wireless_mode CurrentWirelessMode;
 	enum CHANNEL_WIDTH CurrentChannelBW;
-	enum BAND_TYPE CurrentBandType;	/* 0:2.4G, 1:5G */
-	enum BAND_TYPE BandSet;
+	enum band_type CurrentBandType;	/* 0:2.4G, 1:5G */
+	enum band_type BandSet;
 	u8 CurrentChannel;
 	u8 CurrentCenterFrequencyIndex1;
 	u8 nCur40MhzPrimeSC;/*  Control channel sub-carrier */
diff --git a/drivers/staging/rtl8723bs/include/hal_phy.h b/drivers/staging/rtl8723bs/include/hal_phy.h
index ed0caa0574e3..d2f5e7afcd64 100644
--- a/drivers/staging/rtl8723bs/include/hal_phy.h
+++ b/drivers/staging/rtl8723bs/include/hal_phy.h
@@ -42,14 +42,14 @@
 
 
 /*--------------------------Define Parameters-------------------------------*/
-enum BAND_TYPE {
+enum band_type {
 	BAND_ON_2_4G = 0,
 	BAND_ON_5G,
 	BAND_ON_BOTH,
 	BANDMAX
 };
 
-enum RF_TYPE {
+enum rf_type {
 	RF_TYPE_MIN = 0,	/*  0 */
 	RF_8225 = 1,		/*  1 11b/g RF for verification only */
 	RF_8256 = 2,		/*  2 11b/g/n */
@@ -59,7 +59,7 @@ enum RF_TYPE {
 	RF_TYPE_MAX
 };
 
-enum RF_PATH {
+enum rf_path {
 	RF_PATH_A = 0,
 	RF_PATH_B,
 	RF_PATH_C,
@@ -74,7 +74,7 @@ enum RF_PATH {
 #define	RF_PATH_MAX_92C_88E		2
 #define	RF_PATH_MAX_90_8812		4	/* Max RF number 90 support */
 
-enum ANTENNA_PATH {
+enum antenna_path {
        ANTENNA_NONE	= 0,
 	ANTENNA_D	= 1,
 	ANTENNA_C	= 2,
@@ -93,7 +93,7 @@ enum ANTENNA_PATH {
 	ANTENNA_ABCD	= 15
 };
 
-enum RF_CONTENT {
+enum rf_content {
 	radioa_txt = 0x1000,
 	radiob_txt = 0x1001,
 	radioc_txt = 0x1002,
@@ -108,7 +108,7 @@ enum BaseBand_Config_Type {
 	BaseBand_Config_PHY_REG_PG
 };
 
-enum HW_BLOCK {
+enum hw_block {
 	HW_BLOCK_MAC = 0,
 	HW_BLOCK_PHY0 = 1,
 	HW_BLOCK_PHY1 = 2,
@@ -116,7 +116,7 @@ enum HW_BLOCK {
 	HW_BLOCK_MAXIMUM = 4, /*  Never use this */
 };
 
-enum WIRELESS_MODE {
+enum wireless_mode {
 	WIRELESS_MODE_UNKNOWN = 0x00,
 	WIRELESS_MODE_A = 0x01,
 	WIRELESS_MODE_B = 0x02,
@@ -146,7 +146,7 @@ struct SwChnlCmd {
 	u32 			msDelay;
 };
 
-struct R_ANTENNA_SELECT_OFDM {
+struct r_antenna_select_ofdm {
 #ifdef __LITTLE_ENDIAN
 	u32 		r_tx_antenna:4;
 	u32 		r_ant_l:4;
diff --git a/drivers/staging/rtl8723bs/include/rtw_mp.h b/drivers/staging/rtl8723bs/include/rtw_mp.h
index 48e5915e0a7a..3988da646a48 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mp.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mp.h
@@ -89,7 +89,7 @@ struct mpt_context {
 	/*  The RfPath of IO operation is depend of MptActType. */
 	u32 		MptRfPath;
 
-	enum WIRELESS_MODE		MptWirelessModeToSw;	/*  Wireless mode to switch. */
+	enum wireless_mode		MptWirelessModeToSw;	/*  Wireless mode to switch. */
 	u8 	MptChannelToSw;		/*  Channel to switch. */
 	u8 	MptInitGainToSet;	/*  Initial gain to set. */
 	u32 		MptBandWidth;		/*  bandwidth to switch. */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

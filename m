Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8FC33FB0E
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:25:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1006F84172;
	Wed, 17 Mar 2021 22:25:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sKnrCmhlgr43; Wed, 17 Mar 2021 22:25:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 557F0836A5;
	Wed, 17 Mar 2021 22:25:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3852B1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27418430A8
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S6i2G2UBHO7h for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 04F5B43096
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:35 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id va9so817083ejb.12
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=jcipTIjhdcQhOL3Be0TE1r3tRX5Z+83WhZg3pcaZmwI=;
 b=Q44L5wxPfsxbXZJ4iI7Rzs9OS4KIxpAd+S4LPz876Jn+RbaMX5vvNvvoq4l20eOMrK
 PRXRIo9Ko7J4DhfzvnI7D1zEyUWYezeqj1uUPRxSs2Y9R0my3hFY3BMtq+YFt0YbhFzX
 ByvYFLpWT0Twpvghmqn36oJn01LF9DZSfPuChiVu2ra8j+aFuoqd99otwPLjjLn2NpSj
 7ZkZ4TxP6zKKLtwc5PDr/dRuKT91iPXy+fRK8kM4JUiUS+6KWwOQtQRH328T1+yRLFR4
 VjDjIWA+/MFK63Dkxy0v3EjD2gvA9odJnFken5RhQHKx/ZT0ytsrHQN3tYQOYrss2ozV
 LRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jcipTIjhdcQhOL3Be0TE1r3tRX5Z+83WhZg3pcaZmwI=;
 b=ExKuza/OXIji24HGEEkhtRkkXKP7LjIixPRovNC/nbbyob1KvYY+vbJ2T1FyfwqOxb
 oP1f0RgxewKknjhdkEe7tbo4MX2cAem9fsUSJoOlrYZQueYxh7iv5VzEqLmgDsUYBGFN
 9Tc2I0cKBYC6QnGef9xiPoOE6dwnTSozPEBB0iJ1OxGS3yqeh3Qbt34+fUx8qNndVyDo
 wn1VU5iCC7XiFLdHvF7Y7Pv7XbHJi5qiHiplEL7zzmXQyWtfAavXUbKSunP9o5gl2thg
 3OW2pDbnM7CcHBCgLJrW2s7VSQ3svztLKiXHl7spCZULsWk6vlhrzndfTtLhHvyqx3ky
 5yOw==
X-Gm-Message-State: AOAM533W1oGptz8NYd/YvYCWvW0PLiLUhkci/CJxOIIExBYoE4n/e3ho
 SOPjWawmC4PrCjoin/ox0kE=
X-Google-Smtp-Source: ABdhPJzm30BqS9HYdzI6Osh0yCt8a3VQQC4fIeWYtZ+OCZulIEMY/9d/jsFk3B0j5IIMlC2Fd00E5w==
X-Received: by 2002:a17:906:ad96:: with SMTP id
 la22mr39191332ejb.237.1616019694066; 
 Wed, 17 Mar 2021 15:21:34 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:33 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 22/43] Staging: rtl8723bs: fix names in rtw_rf.h
Date: Wed, 17 Mar 2021 23:21:09 +0100
Message-Id: <20210317222130.29528-23-marcocesati@gmail.com>
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
in include/rtw_rf.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c |  8 ++++----
 drivers/staging/rtl8723bs/hal/hal_intf.c       |  2 +-
 .../staging/rtl8723bs/hal/rtl8723b_phycfg.c    | 16 ++++++++--------
 .../staging/rtl8723bs/hal/rtl8723b_rf6052.c    |  2 +-
 .../staging/rtl8723bs/include/hal_com_phycfg.h |  6 +++---
 drivers/staging/rtl8723bs/include/hal_data.h   |  2 +-
 drivers/staging/rtl8723bs/include/hal_intf.h   |  6 +++---
 .../staging/rtl8723bs/include/hal_phy_cfg.h    |  6 +++---
 .../staging/rtl8723bs/include/rtl8723b_rf.h    |  2 +-
 drivers/staging/rtl8723bs/include/rtw_rf.h     | 18 +++++++++---------
 10 files changed, 34 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index b46db8909cb4..586e3ded447f 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -1039,7 +1039,7 @@ u8 PHY_GetTxPowerIndexBase(
 	struct adapter *padapter,
 	u8 RFPath,
 	u8 Rate,
-	enum CHANNEL_WIDTH	BandWidth,
+	enum channel_width	BandWidth,
 	u8 Channel,
 	bool *bIn24G
 )
@@ -1556,7 +1556,7 @@ void PHY_SetTxPowerLevelByPath(struct adapter *Adapter, u8 channel, u8 path)
 void PHY_SetTxPowerIndexByRateArray(
 	struct adapter *padapter,
 	u8 RFPath,
-	enum CHANNEL_WIDTH BandWidth,
+	enum channel_width BandWidth,
 	u8 Channel,
 	u8 *Rates,
 	u8 RateArraySize
@@ -1610,7 +1610,7 @@ static s8 phy_GetChannelIndexOfTxPowerLimit(u8 Band, u8 Channel)
 	return channelIndex;
 }
 
-static s16 get_bandwidth_idx(const enum CHANNEL_WIDTH bandwidth)
+static s16 get_bandwidth_idx(const enum channel_width bandwidth)
 {
 	switch (bandwidth) {
 	case CHANNEL_WIDTH_20:
@@ -1673,7 +1673,7 @@ static s16 get_rate_sctn_idx(const u8 rate)
 }
 
 s8 phy_get_tx_pwr_lmt(struct adapter *adapter, u32 reg_pwr_tbl_sel,
-		      enum band_type band_type, enum CHANNEL_WIDTH bandwidth,
+		      enum band_type band_type, enum channel_width bandwidth,
 		      u8 rf_path, u8 data_rate, u8 channel)
 {
 	s16 idx_band       = -1;
diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
index 8554baef95b8..aa4356327636 100644
--- a/drivers/staging/rtl8723bs/hal/hal_intf.c
+++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
@@ -342,7 +342,7 @@ void rtw_hal_set_chan(struct adapter *padapter, u8 channel)
 }
 
 void rtw_hal_set_chnl_bw(struct adapter *padapter, u8 channel,
-			 enum CHANNEL_WIDTH Bandwidth, u8 Offset40, u8 Offset80)
+			 enum channel_width Bandwidth, u8 Offset40, u8 Offset80)
 {
 	if (padapter->HalFunc.set_chnl_bw_handler)
 		padapter->HalFunc.set_chnl_bw_handler(padapter, channel,
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index 9a41c185cf84..52cb58dc4e8d 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -559,7 +559,7 @@ u8 PHY_GetTxPowerIndex(
 	struct adapter *padapter,
 	u8 RFPath,
 	u8 Rate,
-	enum CHANNEL_WIDTH BandWidth,
+	enum channel_width BandWidth,
 	u8 Channel
 )
 {
@@ -616,7 +616,7 @@ void PHY_GetTxPowerLevel8723B(struct adapter *Adapter, s32 *powerlevel)
 }
 
 static void phy_SetRegBW_8723B(
-	struct adapter *Adapter, enum CHANNEL_WIDTH CurrentBW
+	struct adapter *Adapter, enum channel_width CurrentBW
 )
 {
 	u16 RegRfMod_BW, u2tmp = 0;
@@ -806,16 +806,16 @@ static void PHY_HandleSwChnlAndSetBW8723B(
 	bool bSwitchChannel,
 	bool bSetBandWidth,
 	u8 ChannelNum,
-	enum CHANNEL_WIDTH ChnlWidth,
-	enum EXTCHNL_OFFSET ExtChnlOffsetOf40MHz,
-	enum EXTCHNL_OFFSET ExtChnlOffsetOf80MHz,
+	enum channel_width ChnlWidth,
+	enum extchnl_offset ExtChnlOffsetOf40MHz,
+	enum extchnl_offset ExtChnlOffsetOf80MHz,
 	u8 CenterFrequencyIndex1
 )
 {
 	/* static bool		bInitialzed = false; */
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 	u8 tmpChannel = pHalData->CurrentChannel;
-	enum CHANNEL_WIDTH tmpBW = pHalData->CurrentChannelBW;
+	enum channel_width tmpBW = pHalData->CurrentChannelBW;
 	u8 tmpnCur40MhzPrimeSC = pHalData->nCur40MhzPrimeSC;
 	u8 tmpnCur80MhzPrimeSC = pHalData->nCur80MhzPrimeSC;
 	u8 tmpCenterFrequencyIndex1 = pHalData->CurrentCenterFrequencyIndex1;
@@ -874,7 +874,7 @@ static void PHY_HandleSwChnlAndSetBW8723B(
 
 void PHY_SetBWMode8723B(
 	struct adapter *Adapter,
-	enum CHANNEL_WIDTH Bandwidth, /*  20M or 40M */
+	enum channel_width Bandwidth, /*  20M or 40M */
 	unsigned char Offset /*  Upper, Lower, or Don't care */
 )
 {
@@ -892,7 +892,7 @@ void PHY_SwChnl8723B(struct adapter *Adapter, u8 channel)
 void PHY_SetSwChnlBWMode8723B(
 	struct adapter *Adapter,
 	u8 channel,
-	enum CHANNEL_WIDTH Bandwidth,
+	enum channel_width Bandwidth,
 	u8 Offset40,
 	u8 Offset80
 )
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c b/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c
index aafceaf9b139..73b47f053549 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c
@@ -55,7 +55,7 @@
  * Note:		For RF type 0222D
  *---------------------------------------------------------------------------*/
 void PHY_RF6052SetBandwidth8723B(
-	struct adapter *Adapter, enum CHANNEL_WIDTH Bandwidth
+	struct adapter *Adapter, enum channel_width Bandwidth
 ) /* 20M or 40M */
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
diff --git a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
index 32fd050428db..979b621f4baa 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_phycfg.h
@@ -140,7 +140,7 @@ void
 PHY_SetTxPowerIndexByRateArray(
 struct adapter *padapter,
 u8 		RFPath,
-enum CHANNEL_WIDTH	BandWidth,
+enum channel_width	BandWidth,
 u8 		Channel,
 u8		*Rates,
 u8 		RateArraySize
@@ -172,13 +172,13 @@ PHY_GetTxPowerIndexBase(
 struct adapter *padapter,
 u8 		RFPath,
 u8 		Rate,
-enum CHANNEL_WIDTH	BandWidth,
+enum channel_width	BandWidth,
 u8 		Channel,
 	bool		*bIn24G
 	);
 
 s8 phy_get_tx_pwr_lmt(struct adapter *adapter, u32 RegPwrTblSel,
-			enum band_type Band, enum CHANNEL_WIDTH Bandwidth,
+			enum band_type Band, enum channel_width Bandwidth,
 u8 		RfPath,
 u8 		DataRate,
 u8 		Channel
diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
index d731cec8ab81..83a538e5120b 100644
--- a/drivers/staging/rtl8723bs/include/hal_data.h
+++ b/drivers/staging/rtl8723bs/include/hal_data.h
@@ -188,7 +188,7 @@ struct hal_com_data {
 
 	/* current WIFI_PHY values */
 	enum wireless_mode CurrentWirelessMode;
-	enum CHANNEL_WIDTH CurrentChannelBW;
+	enum channel_width CurrentChannelBW;
 	enum band_type CurrentBandType;	/* 0:2.4G, 1:5G */
 	enum band_type BandSet;
 	u8 CurrentChannel;
diff --git a/drivers/staging/rtl8723bs/include/hal_intf.h b/drivers/staging/rtl8723bs/include/hal_intf.h
index f3be4eaa9685..bfbf5fd07711 100644
--- a/drivers/staging/rtl8723bs/include/hal_intf.h
+++ b/drivers/staging/rtl8723bs/include/hal_intf.h
@@ -197,9 +197,9 @@ struct hal_ops {
 	u8 (*check_ips_status)(struct adapter *padapter);
 	s32		(*interrupt_handler)(struct adapter *padapter);
 	void    (*clear_interrupt)(struct adapter *padapter);
-	void (*set_bwmode_handler)(struct adapter *padapter, enum CHANNEL_WIDTH Bandwidth, u8 Offset);
+	void (*set_bwmode_handler)(struct adapter *padapter, enum channel_width Bandwidth, u8 Offset);
 	void (*set_channel_handler)(struct adapter *padapter, u8 channel);
-	void (*set_chnl_bw_handler)(struct adapter *padapter, u8 channel, enum CHANNEL_WIDTH Bandwidth, u8 Offset40, u8 Offset80);
+	void (*set_chnl_bw_handler)(struct adapter *padapter, u8 channel, enum channel_width Bandwidth, u8 Offset40, u8 Offset80);
 
 	void (*set_tx_power_level_handler)(struct adapter *padapter, u8 channel);
 	void (*get_tx_power_level_handler)(struct adapter *padapter, s32 *powerlevel);
@@ -373,7 +373,7 @@ void rtw_hal_write_rfreg(struct adapter *padapter, u32 eRFPath, u32 RegAddr, u32
 #define PHY_QueryMacReg PHY_QueryBBReg
 
 void rtw_hal_set_chan(struct adapter *padapter, u8 channel);
-void rtw_hal_set_chnl_bw(struct adapter *padapter, u8 channel, enum CHANNEL_WIDTH Bandwidth, u8 Offset40, u8 Offset80);
+void rtw_hal_set_chnl_bw(struct adapter *padapter, u8 channel, enum channel_width Bandwidth, u8 Offset40, u8 Offset80);
 void rtw_hal_dm_watchdog(struct adapter *padapter);
 void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter);
 
diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
index ed3488a09d79..ea494bcf830b 100644
--- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
@@ -47,20 +47,20 @@ void PHY_SetTxPowerIndex(struct adapter *Adapter, u32 PowerIndex,
 			 u8 RFPath, u8 Rate);
 
 u8 PHY_GetTxPowerIndex(struct adapter *padapter, u8 RFPath, u8 Rate,
-			enum CHANNEL_WIDTH BandWidth, u8 Channel);
+			enum channel_width BandWidth, u8 Channel);
 
 void PHY_GetTxPowerLevel8723B(struct adapter *Adapter, s32 *powerlevel);
 
 void PHY_SetTxPowerLevel8723B(struct adapter *Adapter, u8 channel);
 
-void PHY_SetBWMode8723B(struct adapter *Adapter, enum CHANNEL_WIDTH Bandwidth,
+void PHY_SetBWMode8723B(struct adapter *Adapter, enum channel_width Bandwidth,
 			unsigned char Offset);
 
 /*  Call after initialization */
 void PHY_SwChnl8723B(struct adapter *Adapter, u8 channel);
 
 void PHY_SetSwChnlBWMode8723B(struct adapter *Adapter, u8 channel,
-				enum CHANNEL_WIDTH Bandwidth,
+				enum channel_width Bandwidth,
 				u8 Offset40, u8 Offset80);
 
 /*--------------------------Exported Function prototype End---------------------*/
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_rf.h b/drivers/staging/rtl8723bs/include/rtl8723b_rf.h
index d712c6d36a08..525eb2facca0 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_rf.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_rf.h
@@ -12,6 +12,6 @@ int	PHY_RF6052_Config8723B(struct adapter *Adapter);
 
 void
 PHY_RF6052SetBandwidth8723B(struct adapter *Adapter,
-	enum CHANNEL_WIDTH		Bandwidth);
+	enum channel_width		Bandwidth);
 
 #endif
diff --git a/drivers/staging/rtl8723bs/include/rtw_rf.h b/drivers/staging/rtl8723bs/include/rtw_rf.h
index d3a8e4b7069a..a8ddd6fe5f95 100644
--- a/drivers/staging/rtl8723bs/include/rtw_rf.h
+++ b/drivers/staging/rtl8723bs/include/rtw_rf.h
@@ -49,7 +49,7 @@ struct	regulatory_class {
 	u8 modem;
 };
 
-enum CAPABILITY {
+enum capability {
 	cESS			= 0x0001,
 	cIBSS			= 0x0002,
 	cPollable		= 0x0004,
@@ -68,13 +68,13 @@ enum CAPABILITY {
 	cImmediateBA		= 0x8000,
 };
 
-enum	_REG_PREAMBLE_MODE {
+enum	_reg_preamble_mode {
 	PREAMBLE_LONG	= 1,
 	PREAMBLE_AUTO	= 2,
 	PREAMBLE_SHORT	= 3,
 };
 
-enum _RTL8712_RF_MIMO_CONFIG_ {
+enum _rtl8712_rf_mimo_config_ {
 	RTL8712_RFCONFIG_1T = 0x10,
 	RTL8712_RFCONFIG_2T = 0x20,
 	RTL8712_RFCONFIG_1R = 0x01,
@@ -85,7 +85,7 @@ enum _RTL8712_RF_MIMO_CONFIG_ {
 	RTL8712_RFCONFIG_2T2R = 0x22
 };
 
-enum RF90_RADIO_PATH {
+enum rf90_radio_path {
 	RF90_PATH_A = 0,		/* Radio Path A */
 	RF90_PATH_B = 1,		/* Radio Path B */
 	RF90_PATH_C = 2,		/* Radio Path C */
@@ -98,7 +98,7 @@ enum RF90_RADIO_PATH {
 #define HAL_PRIME_CHNL_OFFSET_UPPER	2
 
 /*  Represent Channel Width in HT Capabilities */
-enum CHANNEL_WIDTH {
+enum channel_width {
 	CHANNEL_WIDTH_20 = 0,
 	CHANNEL_WIDTH_40 = 1,
 	CHANNEL_WIDTH_80 = 2,
@@ -109,14 +109,14 @@ enum CHANNEL_WIDTH {
 
 /*  Represent Extension Channel Offset in HT Capabilities */
 /*  This is available only in 40Mhz mode. */
-enum EXTCHNL_OFFSET {
+enum extchnl_offset {
 	EXTCHNL_OFFSET_NO_EXT = 0,
 	EXTCHNL_OFFSET_UPPER = 1,
 	EXTCHNL_OFFSET_NO_DEF = 2,
 	EXTCHNL_OFFSET_LOWER = 3,
 };
 
-enum VHT_DATA_SC {
+enum vht_data_sc {
 	VHT_DATA_SC_DONOT_CARE = 0,
 	VHT_DATA_SC_20_UPPER_OF_80MHZ = 1,
 	VHT_DATA_SC_20_LOWER_OF_80MHZ = 2,
@@ -130,14 +130,14 @@ enum VHT_DATA_SC {
 	VHT_DATA_SC_40_LOWER_OF_80MHZ = 10,
 };
 
-enum PROTECTION_MODE {
+enum protection_mode {
 	PROTECTION_MODE_AUTO = 0,
 	PROTECTION_MODE_FORCE_ENABLE = 1,
 	PROTECTION_MODE_FORCE_DISABLE = 2,
 };
 
 /* 2007/11/15 MH Define different RF type. */
-enum RT_RF_TYPE_DEFINITION {
+enum rt_rf_type_definition {
 	RF_1T2R = 0,
 	RF_2T4R = 1,
 	RF_2T2R = 2,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

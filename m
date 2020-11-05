Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C842A7635
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 04:48:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 019BD8557E;
	Thu,  5 Nov 2020 03:48:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ze1C6iw5YYkC; Thu,  5 Nov 2020 03:48:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C704185522;
	Thu,  5 Nov 2020 03:48:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 704FE1BF31C
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6D79C85C90
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VSNBBdVhCeA3 for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 03:48:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
 [209.85.166.41])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 305C885CA1
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 03:48:14 +0000 (UTC)
Received: by mail-io1-f41.google.com with SMTP id s24so364774ioj.13
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 19:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MMCHexTnquRK0/t++PDtPpbNrtPFZCuzro0isOlQeu8=;
 b=oi/zEpY47h61i8SizRx8apX6fxluNJKEEFwk3eE+nnXP/vVPTyUbMIx1T1R1Gwc5bH
 cvu9CyRYN8NcSXTPm9VpN7tq20+82PspfQ+w+N6NmX0hUnsUy+atO4IYIwwXGuwOngJm
 G/x5IPWzWWDYeKUuFC0MZF6n3HB8CUkRYjkrjeGCRaY/vFu6/BMmWj4HfjCRYizScwn6
 axlHaG1cSCO5Vqaptocj8pZH9yKlO1oGkrRP+v7Y2Xny2Byq6HOHLD4m+Q/lVetEvbip
 VkrMCXKSV9Qr/zGAmZ6qBFKcxqYp/6UaDoi2OlcxCtZgFVMweztf9Dolt3e7ZUp1JRSV
 RXug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MMCHexTnquRK0/t++PDtPpbNrtPFZCuzro0isOlQeu8=;
 b=HoTb/rUDkX3Th+bSVioz+RcF6kdZ7GId2H+oCUbkjYHZDiGSgGWvGUNss4jnE7g53z
 GLLX+HNqhjR0VPU1DD4RUGFiKeM+oBlVuzsRpHwvpceZA5/ftchblXci1T8bNwG2EgYw
 NhbcsVi1UqxGV42RrsW53csNGre+xi6DaEGuYfDjYTxkgVr6mGT4GHXR8iEYFCQOALG7
 qjJeTwx6PgmQfk/kHzGfd8rcw15IPTPAA4yDgLSdJb7e7Hs44iLP3EmHwGdeUbc3FzaZ
 wZ14r6owDgB3+WEid6EoJuYP7s+D3eQ+4/2qlyqzy1EoQmTrEIFl+fnJRHgW7Jhxub+J
 oyig==
X-Gm-Message-State: AOAM531qYPt6K983LGoF9ABi7GCMRTo735+3TvLtcQIAdu7V7uYbceT9
 h+J4fj3wKnPa7nH85POpeZ0=
X-Google-Smtp-Source: ABdhPJwOSF5CmtTJKVKJP7RRZilr6Ye5b7qayU0s3kuTG1KYgKPs6Sb1+otmmhvhQzcwKz1r/Fzbaw==
X-Received: by 2002:a02:a793:: with SMTP id e19mr552503jaj.45.1604548093508;
 Wed, 04 Nov 2020 19:48:13 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id p6sm172877ilc.26.2020.11.04.19.48.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 19:48:12 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 6/9] staging: rtl8723bs: replace rtw_ieee80211_ht_cap
Date: Wed,  4 Nov 2020 21:47:51 -0600
Message-Id: <20201105034754.12383-6-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201105034754.12383-1-ross.schm.dev@gmail.com>
References: <20201105034754.12383-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace the unique rtw_ieee80211_ht_cap struct with the provided standard
ieee80211_ht_cap.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c       |  6 +++---
 .../staging/rtl8723bs/core/rtw_ioctl_set.c    |  2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c     | 20 +++++++++----------
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  8 ++++----
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |  4 ++--
 drivers/staging/rtl8723bs/hal/hal_com.c       |  2 +-
 drivers/staging/rtl8723bs/include/ieee80211.h |  4 ++--
 drivers/staging/rtl8723bs/include/rtw_ht.h    |  2 +-
 drivers/staging/rtl8723bs/include/wifi.h      | 16 ---------------
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 10 +++++-----
 10 files changed, 29 insertions(+), 45 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index d9a55bee83a3..a2b39ae56d89 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1179,7 +1179,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	if (p && ie_len > 0) {
 		u8 rf_type = 0;
 		u8 max_rx_ampdu_factor = 0;
-		struct rtw_ieee80211_ht_cap *pht_cap = (struct rtw_ieee80211_ht_cap *)(p + 2);
+		struct ieee80211_ht_cap *pht_cap = (struct ieee80211_ht_cap *)(p + 2);
 
 		pHT_caps_ie = p;
 
@@ -1225,8 +1225,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 		rtw_hal_get_hwreg(padapter, HW_VAR_RF_TYPE, (u8 *)(&rf_type));
 		if (rf_type == RF_1T1R) {
-			pht_cap->supp_mcs_set[0] = 0xff;
-			pht_cap->supp_mcs_set[1] = 0x0;
+			pht_cap->mcs.rx_mask[0] = 0xff;
+			pht_cap->mcs.rx_mask[1] = 0x0;
 		}
 
 		memcpy(&pmlmepriv->htpriv.ht_cap, p + 2, ie_len);
diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index d44b33e7a0a9..e0bab0a71f00 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -661,7 +661,7 @@ u16 rtw_get_cur_max_rate(struct adapter *adapter)
 			rf_type,
 			((psta->bw_mode == CHANNEL_WIDTH_40)?1:0),
 			short_GI,
-			psta->htpriv.ht_cap.supp_mcs_set
+			psta->htpriv.ht_cap.mcs.rx_mask
 		);
 	} else {
 		while ((pcur_bss->SupportedRates[i] != 0) && (pcur_bss->SupportedRates[i] != 0xFF)) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index b5226a517b91..351178ab78c5 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2582,7 +2582,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 	u32 ielen, out_len;
 	enum HT_CAP_AMPDU_FACTOR max_rx_ampdu_factor;
 	unsigned char *p, *pframe;
-	struct rtw_ieee80211_ht_cap ht_capie;
+	struct ieee80211_ht_cap ht_capie;
 	u8 cbw40_enable = 0, stbc_rx_enable = 0, rf_type = 0, operation_bw = 0;
 	struct registry_priv *pregistrypriv = &padapter->registrypriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -2593,7 +2593,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 
 	out_len = *pout_len;
 
-	memset(&ht_capie, 0, sizeof(struct rtw_ieee80211_ht_cap));
+	memset(&ht_capie, 0, sizeof(struct ieee80211_ht_cap));
 
 	ht_capie.cap_info = cpu_to_le16(IEEE80211_HT_CAP_DSSSCCK40);
 
@@ -2660,7 +2660,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 	}
 
 	/* fill default supported_mcs_set */
-	memcpy(ht_capie.supp_mcs_set, pmlmeext->default_supported_mcs_set, 16);
+	memcpy(ht_capie.mcs.rx_mask, pmlmeext->default_supported_mcs_set, 16);
 
 	/* update default supported_mcs_set */
 	rtw_hal_get_hwreg(padapter, HW_VAR_RF_TYPE, (u8 *)(&rf_type));
@@ -2670,7 +2670,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 		if (stbc_rx_enable)
 			ht_capie.cap_info |= cpu_to_le16(IEEE80211_HT_CAP_RX_STBC_1R);/* RX STBC One spatial stream */
 
-		set_mcs_rate_by_mask(ht_capie.supp_mcs_set, MCS_RATE_1R);
+		set_mcs_rate_by_mask(ht_capie.mcs.rx_mask, MCS_RATE_1R);
 		break;
 
 	case RF_2T2R:
@@ -2681,11 +2681,11 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 
 		#ifdef CONFIG_DISABLE_MCS13TO15
 		if (((cbw40_enable == 1) && (operation_bw == CHANNEL_WIDTH_40)) && (pregistrypriv->wifi_spec != 1))
-				set_mcs_rate_by_mask(ht_capie.supp_mcs_set, MCS_RATE_2R_13TO15_OFF);
+				set_mcs_rate_by_mask(ht_capie.mcs.rx_mask, MCS_RATE_2R_13TO15_OFF);
 		else
-				set_mcs_rate_by_mask(ht_capie.supp_mcs_set, MCS_RATE_2R);
+				set_mcs_rate_by_mask(ht_capie.mcs.rx_mask, MCS_RATE_2R);
 		#else /* CONFIG_DISABLE_MCS13TO15 */
-			set_mcs_rate_by_mask(ht_capie.supp_mcs_set, MCS_RATE_2R);
+			set_mcs_rate_by_mask(ht_capie.mcs.rx_mask, MCS_RATE_2R);
 		#endif /* CONFIG_DISABLE_MCS13TO15 */
 		break;
 	}
@@ -2712,7 +2712,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 		ht_capie.ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY&0x00);
 
 	pframe = rtw_set_ie(out_ie+out_len, _HT_CAPABILITY_IE_,
-						sizeof(struct rtw_ieee80211_ht_cap), (unsigned char *)&ht_capie, pout_len);
+						sizeof(struct ieee80211_ht_cap), (unsigned char *)&ht_capie, pout_len);
 
 	phtpriv->ht_option = true;
 
@@ -2734,7 +2734,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 	u8 *p, max_ampdu_sz;
 	int len;
 	/* struct sta_info *bmc_sta, *psta; */
-	struct rtw_ieee80211_ht_cap *pht_capie;
+	struct ieee80211_ht_cap *pht_capie;
 	struct ieee80211_ht_addt_info *pht_addtinfo;
 	/* struct recv_reorder_ctrl *preorder_ctrl; */
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -2763,7 +2763,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 	len = 0;
 	p = rtw_get_ie(pie+sizeof(struct ndis_802_11_fix_ie), _HT_CAPABILITY_IE_, &len, ie_len-sizeof(struct ndis_802_11_fix_ie));
 	if (p && len > 0) {
-		pht_capie = (struct rtw_ieee80211_ht_cap *)(p+2);
+		pht_capie = (struct ieee80211_ht_cap *)(p+2);
 		max_ampdu_sz = (pht_capie->ampdu_params_info & IEEE80211_HT_CAP_AMPDU_FACTOR);
 		max_ampdu_sz = 1 << (max_ampdu_sz+3); /*  max_ampdu_sz (kbytes); */
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index a0bb25031f1a..3bb80db51562 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1494,13 +1494,13 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 	}
 
 	/* save HT capabilities in the sta object */
-	memset(&pstat->htpriv.ht_cap, 0, sizeof(struct rtw_ieee80211_ht_cap));
-	if (elems.ht_capabilities && elems.ht_capabilities_len >= sizeof(struct rtw_ieee80211_ht_cap)) {
+	memset(&pstat->htpriv.ht_cap, 0, sizeof(struct ieee80211_ht_cap));
+	if (elems.ht_capabilities && elems.ht_capabilities_len >= sizeof(struct ieee80211_ht_cap)) {
 		pstat->flags |= WLAN_STA_HT;
 
 		pstat->flags |= WLAN_STA_WME;
 
-		memcpy(&pstat->htpriv.ht_cap, elems.ht_capabilities, sizeof(struct rtw_ieee80211_ht_cap));
+		memcpy(&pstat->htpriv.ht_cap, elems.ht_capabilities, sizeof(struct ieee80211_ht_cap));
 
 	} else
 		pstat->flags &= ~WLAN_STA_HT;
@@ -5348,7 +5348,7 @@ void update_sta_info(struct adapter *padapter, struct sta_info *psta)
 		psta->htpriv.stbc_cap = pmlmepriv->htpriv.stbc_cap;
 		psta->htpriv.beamform_cap = pmlmepriv->htpriv.beamform_cap;
 
-		memcpy(&psta->htpriv.ht_cap, &pmlmeinfo->HT_caps, sizeof(struct rtw_ieee80211_ht_cap));
+		memcpy(&psta->htpriv.ht_cap, &pmlmeinfo->HT_caps, sizeof(struct ieee80211_ht_cap));
 	} else {
 		psta->htpriv.ht_option = false;
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index eda91b78a543..c9ac5c685d74 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1233,7 +1233,7 @@ int rtw_check_bcn_info(struct adapter *Adapter, u8 *pframe, u32 packet_len)
 	u32 wpa_ielen = 0;
 	u8 *pbssid = GetAddr3Ptr(pframe);
 	struct HT_info_element *pht_info = NULL;
-	struct rtw_ieee80211_ht_cap *pht_cap = NULL;
+	struct ieee80211_ht_cap *pht_cap = NULL;
 	u32 bcn_channel;
 	unsigned short	ht_cap_info;
 	unsigned char ht_info_infos_0;
@@ -1282,7 +1282,7 @@ int rtw_check_bcn_info(struct adapter *Adapter, u8 *pframe, u32 packet_len)
 	/* parsing HT_CAP_IE */
 	p = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, bssid->IELength - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
-			pht_cap = (struct rtw_ieee80211_ht_cap *)(p + 2);
+			pht_cap = (struct ieee80211_ht_cap *)(p + 2);
 			ht_cap_info = le16_to_cpu(pht_cap->cap_info);
 	} else {
 			ht_cap_info = 0;
diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 02676da5c166..16b259acbe1a 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -989,7 +989,7 @@ void rtw_hal_update_sta_rate_mask(struct adapter *padapter, struct sta_info *pst
 			limit = 8; /*   1R */
 
 		for (i = 0; i < limit; i++) {
-			if (psta->htpriv.ht_cap.supp_mcs_set[i/8] & BIT(i%8))
+			if (psta->htpriv.ht_cap.mcs.rx_mask[i/8] & BIT(i%8))
 				tx_ra_bitmap |= BIT(i+12);
 		}
 	}
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 5cd307cb48a5..e2a6b92ba3ba 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -232,7 +232,7 @@ struct ieee_param {
 			u16 capability;
 			int flags;
 			u8 tx_supp_rates[16];
-			struct rtw_ieee80211_ht_cap ht_cap;
+			struct ieee80211_ht_cap ht_cap;
 		} add_sta;
 		struct {
 			u8 reserved[2];/* for set max_num_sta */
@@ -254,7 +254,7 @@ struct sta_data {
 	u32 sta_set;
 	u8 tx_supp_rates[16];
 	u32 tx_supp_rates_len;
-	struct rtw_ieee80211_ht_cap ht_cap;
+	struct ieee80211_ht_cap ht_cap;
 	u64	rx_pkts;
 	u64	rx_bytes;
 	u64	rx_drops;
diff --git a/drivers/staging/rtl8723bs/include/rtw_ht.h b/drivers/staging/rtl8723bs/include/rtw_ht.h
index 13489913f40b..a72f51031f89 100644
--- a/drivers/staging/rtl8723bs/include/rtw_ht.h
+++ b/drivers/staging/rtl8723bs/include/rtw_ht.h
@@ -33,7 +33,7 @@ struct ht_priv {
 	u8 stbc_cap;
 	u8 beamform_cap;
 
-	struct rtw_ieee80211_ht_cap ht_cap;
+	struct ieee80211_ht_cap ht_cap;
 
 };
 
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 3a7dd2ed26a8..6f2d4ea51f15 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -657,22 +657,6 @@ struct rtw_ieee80211_bar {
 	__le16 start_seq_num;
 } __attribute__((packed));
 
- /**
- * struct rtw_ieee80211_ht_cap - HT capabilities
- *
- * This structure refers to "HT capabilities element" as
- * described in 802.11n draft section 7.3.2.52
- */
-
-struct rtw_ieee80211_ht_cap {
-	__le16	cap_info;
-	unsigned char ampdu_params_info;
-	unsigned char supp_mcs_set[16];
-	__le16	extended_ht_cap_info;
-	__le16		tx_BF_cap_info;
-	unsigned char        antenna_selection_info;
-} __attribute__ ((packed));
-
 /**
  * struct rtw_ieee80211_ht_cap - HT additional information
  *
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 3f3eab3d879a..783daa30f1d7 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -114,10 +114,10 @@ static char *translate_scan(struct adapter *padapter,
 		p = rtw_get_ie(&pnetwork->network.IEs[12], _HT_CAPABILITY_IE_, &ht_ielen, pnetwork->network.IELength-12);
 	}
 	if (p && ht_ielen > 0) {
-		struct rtw_ieee80211_ht_cap *pht_capie;
+		struct ieee80211_ht_cap *pht_capie;
 		ht_cap = true;
-		pht_capie = (struct rtw_ieee80211_ht_cap *)(p+2);
-		memcpy(&mcs_rate, pht_capie->supp_mcs_set, 2);
+		pht_capie = (struct ieee80211_ht_cap *)(p+2);
+		memcpy(&mcs_rate, pht_capie->mcs.rx_mask, 2);
 		bw_40MHz = (le16_to_cpu(pht_capie->cap_info) & IEEE80211_HT_CAP_SUP_WIDTH) ? 1 : 0;
 		short_GI = (le16_to_cpu(pht_capie->cap_info) & (IEEE80211_HT_CAP_SGI_20 | IEEE80211_HT_CAP_SGI_40)) ? 1 : 0;
 	}
@@ -3793,7 +3793,7 @@ static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
 		if (WLAN_STA_HT&flags) {
 			psta->htpriv.ht_option = true;
 			psta->qos_option = 1;
-			memcpy((void *)&psta->htpriv.ht_cap, (void *)&param->u.add_sta.ht_cap, sizeof(struct rtw_ieee80211_ht_cap));
+			memcpy((void *)&psta->htpriv.ht_cap, (void *)&param->u.add_sta.ht_cap, sizeof(struct ieee80211_ht_cap));
 		} else {
 			psta->htpriv.ht_option = false;
 		}
@@ -3906,7 +3906,7 @@ static int rtw_ioctl_get_sta_data(struct net_device *dev, struct ieee_param *par
 
 		psta_data->tx_supp_rates_len =  psta->bssratelen;
 		memcpy(psta_data->tx_supp_rates, psta->bssrateset, psta->bssratelen);
-		memcpy(&psta_data->ht_cap, &psta->htpriv.ht_cap, sizeof(struct rtw_ieee80211_ht_cap));
+		memcpy(&psta_data->ht_cap, &psta->htpriv.ht_cap, sizeof(struct ieee80211_ht_cap));
 		psta_data->rx_pkts = psta->sta_stats.rx_data_pkts;
 		psta_data->rx_bytes = psta->sta_stats.rx_bytes;
 		psta_data->rx_drops = psta->sta_stats.rx_drops;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

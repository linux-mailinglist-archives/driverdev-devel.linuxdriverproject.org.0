Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 707002D21BC
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:08:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0BAD12E51B;
	Tue,  8 Dec 2020 04:08:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eEYI4ULelFqY; Tue,  8 Dec 2020 04:08:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 43F092E508;
	Tue,  8 Dec 2020 04:07:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE3EC1BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E33772E504
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b2oJq67znEDx for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:07:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by silver.osuosl.org (Postfix) with ESMTPS id B54472E4FC
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:46 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id y9so14397990ilb.0
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s8EFopog60SfU1jZxy+imznmHrSQ83PC6XXstVmFmuQ=;
 b=oQRVC8az88F1gdvSoTu7qwA3FuL3eQFMMuQv+44I+igmlmt80XOflTR2HCOTP2EDUe
 0N2NjRnMucFLxPCbB6UH0aeuwscXqSH+odH1t/ijIAxwsE2/qpHyFW3BQ9cn/29boKgZ
 vrvUNjUKCILQ3MyGTUMAkBYv9dLKblp4CmYcdasVUJvtA44++ROA+3I1mq64VcSwQCEK
 hwEfSou/+L7ZHQ2dQHVMyLaJHwHWgjCtl8rXYlCY4a/sTtkBzOp1PSbR4XAtY4YfOsM5
 zyI+ZXYy/2nbx0QiUog8MCQoHDWOAtbl4c/BlAsU/5yfm6E1NiZfI7DjUHeDpDr1Je5+
 OgCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s8EFopog60SfU1jZxy+imznmHrSQ83PC6XXstVmFmuQ=;
 b=c4kaPz5BA4VUivxgXed3RA+RmzE4ldblFf7JjpY/FTtMjuTozs7poAaFccsbN6w8KW
 3NsyyFCMe5aRs6n8BdnnoCu+q4L5Fd+6bWUJfGrWg/DSqgyG7voMWmdsWD0ev2Wl0bkc
 w7OZNlbHUAmpkWf6J6DX3mHYN21SPCBwE5t2hR72Wucj1zlgfUqK0uZ4DWLts08FP4iE
 KXNzAthpc69iz0S+Kwi69jL/dgl+BxbbRbEZl2Mhj/AVCSyqHmzMO7oSW+faBGj4NHMA
 Pm3xZLWyhmWjFs0p6kimE2CDPUIX+7cyEq9kVhMt8z7HqYcQWO3sJ9LLwfLT9FMba5Js
 1s0A==
X-Gm-Message-State: AOAM530yf25EwfCSas9fziy4bqwwIYWTfwVldGpenMMPP9xYyYwdYhG2
 ZW5aJryahGfggAumIqCICag=
X-Google-Smtp-Source: ABdhPJx8KGvRzuloOBFc19yfhI0GUFgzYjJSbFZ3IEBQ+cU8BmZGHIYp4ae4zdW6zrZ/vNuEfy05Zw==
X-Received: by 2002:a92:8501:: with SMTP id f1mr15211668ilh.294.1607400465988; 
 Mon, 07 Dec 2020 20:07:45 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:45 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 07/21] staging: rtl8723bs: replace _SUPPORTEDRATES_IE_
Date: Mon,  7 Dec 2020 22:07:19 -0600
Message-Id: <20201208040733.379197-8-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201208040733.379197-1-ross.schm.dev@gmail.com>
References: <20201208040733.379197-1-ross.schm.dev@gmail.com>
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

Replace unique _SUPPORTEDRATES_IE_ macro with kernel provided
WLAN_EID_SUPP_RATES from linux/ieee80211.h.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c       |  4 ++--
 .../staging/rtl8723bs/core/rtw_ieee80211.c    |  4 ++--
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 24 +++++++++----------
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |  2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  |  6 ++---
 drivers/staging/rtl8723bs/include/wifi.h      |  1 -
 6 files changed, 20 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index aaa7edbebe2c..99a34c059f6d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -110,7 +110,7 @@ static void update_BCNTIM(struct adapter *padapter)
 			/*  get supported rates len */
 			p = rtw_get_ie(
 				pie + _BEACON_IE_OFFSET_,
-				_SUPPORTEDRATES_IE_, &tmp_len,
+				WLAN_EID_SUPP_RATES, &tmp_len,
 				(pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
 			);
 			if (p)
@@ -1031,7 +1031,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/*  get supported rates */
 	p = rtw_get_ie(
 		ie + _BEACON_IE_OFFSET_,
-		_SUPPORTEDRATES_IE_,
+		WLAN_EID_SUPP_RATES,
 		&ie_len,
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index daaa826add35..e0896e128dda 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -343,10 +343,10 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
 	rateLen = rtw_get_rateset_len(pdev_network->SupportedRates);
 
 	if (rateLen > 8) {
-		ie = rtw_set_ie(ie, _SUPPORTEDRATES_IE_, 8, pdev_network->SupportedRates, &sz);
+		ie = rtw_set_ie(ie, WLAN_EID_SUPP_RATES, 8, pdev_network->SupportedRates, &sz);
 		/* ie = rtw_set_ie(ie, _EXT_SUPPORTEDRATES_IE_, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz); */
 	} else {
-		ie = rtw_set_ie(ie, _SUPPORTEDRATES_IE_, rateLen, pdev_network->SupportedRates, &sz);
+		ie = rtw_set_ie(ie, WLAN_EID_SUPP_RATES, rateLen, pdev_network->SupportedRates, &sz);
 	}
 
 	/* DS parameter set */
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 983fcaae6eca..b9e612e1e162 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1271,7 +1271,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		goto OnAssocReqFail;
 
 	/*  check if the supported rate is ok */
-	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _SUPPORTEDRATES_IE_, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
+	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, WLAN_EID_SUPP_RATES, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
 	if (p == NULL) {
 		DBG_871X("Rx a sta assoc-req which supported rate is empty!\n");
 		/*  use our own rate set as statoin used */
@@ -2540,7 +2540,7 @@ void issue_beacon(struct adapter *padapter, int timeout_ms)
 
 	/*  supported rates... */
 	rate_len = rtw_get_rateset_len(cur_network->SupportedRates);
-	pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, ((rate_len > 8) ? 8 : rate_len), cur_network->SupportedRates, &pattrib->pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, ((rate_len > 8) ? 8 : rate_len), cur_network->SupportedRates, &pattrib->pktlen);
 
 	/*  DS parameter set */
 	pframe = rtw_set_ie(pframe, _DSSET_IE_, 1, (unsigned char *)&(cur_network->Configuration.DSConfig), &pattrib->pktlen);
@@ -2744,7 +2744,7 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 
 		/*  supported rates... */
 		rate_len = rtw_get_rateset_len(cur_network->SupportedRates);
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, ((rate_len > 8) ? 8 : rate_len), cur_network->SupportedRates, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, ((rate_len > 8) ? 8 : rate_len), cur_network->SupportedRates, &pattrib->pktlen);
 
 		/*  DS parameter set */
 		pframe = rtw_set_ie(pframe, _DSSET_IE_, 1, (unsigned char *)&(cur_network->Configuration.DSConfig), &pattrib->pktlen);
@@ -2877,10 +2877,10 @@ static int _issue_probereq(struct adapter *padapter,
 	get_rate_set(padapter, bssrate, &bssrate_len);
 
 	if (bssrate_len > 8) {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, 8, bssrate, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, bssrate, &(pattrib->pktlen));
 		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (bssrate_len - 8), (bssrate + 8), &(pattrib->pktlen));
 	} else {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, bssrate_len, bssrate, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, bssrate_len, bssrate, &(pattrib->pktlen));
 	}
 
 	if (ch)
@@ -3153,9 +3153,9 @@ void issue_asocrsp(struct adapter *padapter, unsigned short status, struct sta_i
 	pframe = rtw_set_fixed_ie(pframe, _ASOC_ID_, (unsigned char *)&le_tmp, &(pattrib->pktlen));
 
 	if (pstat->bssratelen <= 8) {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, pstat->bssratelen, pstat->bssrateset, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, pstat->bssratelen, pstat->bssrateset, &(pattrib->pktlen));
 	} else {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, 8, pstat->bssrateset, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, pstat->bssrateset, &(pattrib->pktlen));
 		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (pstat->bssratelen-8), pstat->bssrateset+8, &(pattrib->pktlen));
 	}
 
@@ -3340,10 +3340,10 @@ void issue_assocreq(struct adapter *padapter)
 
 
 	if (bssrate_len > 8) {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, 8, bssrate, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, bssrate, &(pattrib->pktlen));
 		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (bssrate_len - 8), (bssrate + 8), &(pattrib->pktlen));
 	} else
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, bssrate_len, bssrate, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, bssrate_len, bssrate, &(pattrib->pktlen));
 
 	/* vendor specific IE, such as WPA, WMM, WPS */
 	for (i = sizeof(struct ndis_802_11_fix_ie); i < pmlmeinfo->network.IELength;) {
@@ -4484,7 +4484,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 
 	/* checking rate info... */
 	i = 0;
-	p = rtw_get_ie(bssid->IEs + ie_offset, _SUPPORTEDRATES_IE_, &len, bssid->IELength - ie_offset);
+	p = rtw_get_ie(bssid->IEs + ie_offset, WLAN_EID_SUPP_RATES, &len, bssid->IELength - ie_offset);
 	if (p) {
 		if (len > NDIS_802_11_LENGTH_RATES_EX) {
 			DBG_871X("%s()-%d: IE too long (%d) for survey event\n", __func__, __LINE__, len);
@@ -5966,9 +5966,9 @@ static int rtw_auto_ap_start_beacon(struct adapter *adapter)
 	rtw_set_supported_rate(supportRate, wireless_mode);
 	rateLen = rtw_get_rateset_len(supportRate);
 	if (rateLen > 8) {
-		ie = rtw_set_ie(ie, _SUPPORTEDRATES_IE_, 8, supportRate, &sz);
+		ie = rtw_set_ie(ie, WLAN_EID_SUPP_RATES, 8, supportRate, &sz);
 	} else {
-		ie = rtw_set_ie(ie, _SUPPORTEDRATES_IE_, rateLen, supportRate, &sz);
+		ie = rtw_set_ie(ie, WLAN_EID_SUPP_RATES, rateLen, supportRate, &sz);
 	}
 
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index a8a743cffaa8..5ad2ed6af593 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1784,7 +1784,7 @@ int update_sta_support_rate(struct adapter *padapter, u8 *pvar_ie, uint var_ie_l
 	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 
-	pIE = (struct ndis_80211_var_ie *)rtw_get_ie(pvar_ie, _SUPPORTEDRATES_IE_, &ie_len, var_ie_len);
+	pIE = (struct ndis_80211_var_ie *)rtw_get_ie(pvar_ie, WLAN_EID_SUPP_RATES, &ie_len, var_ie_len);
 	if (!pIE)
 		return _FAIL;
 	if (ie_len > sizeof(pmlmeinfo->FW_sta_info[cam_idx].SupportedRates))
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 49cf6c2c66d3..c98dd18c316d 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -179,7 +179,7 @@ static void ConstructBeacon(struct adapter *padapter, u8 *pframe, u32 *pLength)
 
 	/*  supported rates... */
 	rate_len = rtw_get_rateset_len(cur_network->SupportedRates);
-	pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, ((rate_len > 8) ? 8 : rate_len), cur_network->SupportedRates, &pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, ((rate_len > 8) ? 8 : rate_len), cur_network->SupportedRates, &pktlen);
 
 	/*  DS parameter set */
 	pframe = rtw_set_ie(pframe, _DSSET_IE_, 1, (unsigned char *)&(cur_network->Configuration.DSConfig), &pktlen);
@@ -700,10 +700,10 @@ static void ConstructProbeReq(struct adapter *padapter, u8 *pframe, u32 *pLength
 	get_rate_set(padapter, bssrate, &bssrate_len);
 
 	if (bssrate_len > 8) {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, 8, bssrate, &pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, bssrate, &pktlen);
 		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (bssrate_len - 8), (bssrate + 8), &pktlen);
 	} else
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, bssrate_len, bssrate, &pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, bssrate_len, bssrate, &pktlen);
 
 	*pLength = pktlen;
 }
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 7dee4a64da8e..285d6f9b74b6 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -387,7 +387,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 
 #define _FIXED_IE_LENGTH_			_BEACON_IE_OFFSET_
 
-#define _SUPPORTEDRATES_IE_	1
 #define _DSSET_IE_				3
 #define _TIM_IE_					5
 #define _IBSS_PARA_IE_			6
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C90B2D21C0
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:08:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8ECFB2E501;
	Tue,  8 Dec 2020 04:08:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b9nZNeU3Josb; Tue,  8 Dec 2020 04:08:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5D2CD2E515;
	Tue,  8 Dec 2020 04:08:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C1BA1BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7952887A89
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dQjezcnL4SjE for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:07:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7052487B3E
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:54 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id p5so14358215iln.8
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R2qDl9bmsnlpud25xHCJIjGIHhs2jrlzxUTwUHc0aqI=;
 b=HMknenx5Yar6F1t3hONTq4SIcRBH35p/RkK5yY+fwfGC4MyxEmCrpXHznNjQX1kHdZ
 bkpesMVFskHva/6VaedjqKchqew6cGWNHbmNRc2T/u5SOmnAnnfEo+/CI8MBwXKXKtS/
 U7Iy6Asxlw6fKh7wTm82QCdlhCi1/i73dpXWL7pjYxbYaaK5r1E30J7AsfS3dV0KIv5v
 /G1bswIfriuF69cB/udr7Rg+dIcXTwFl5orBElKNrX+8tvyE+WmS+niBFV+Fv99Bg7jF
 +NZ0lbGzSxw5QXWcJ3tadmiQGrMefiloulG6dzpqctHVk/KkcFZMJPIQgXfJ+R64DkYc
 dS4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R2qDl9bmsnlpud25xHCJIjGIHhs2jrlzxUTwUHc0aqI=;
 b=ZEBDn2RVy4KP2MDJ7ICT7fyj3B0mAK0RK5taoQ7OvCdWiz9JhE7ho+/aWddN2b/eac
 q2urA+eBDjH1rUaCCat735h9EiXGzs38LIikWco8GM5u/KHSquCqLjHNdJbh3Dw5zb2x
 fgUubDB9SgV8m+CpOU/1rEa248Lrl3gKAag5R3OAEJ1YUzxWIofmFlJaGFy9S5pN9LxV
 ET8gZ2HUyqB0KdcxP2x895mpWiIIB7jpcv/epZZv/wZeA1DuteU/C1D7Q90ufmmBREnP
 iaC6j3uTGGsHlkma3oYBSRxkgvCxyITCC2w+vzZi98ahrfFl6UY1SvXEVewDOgJn5Puq
 X4KQ==
X-Gm-Message-State: AOAM533GWNGNcH60XtwTTv2dtRrWl/6mcODQpvv7JQlSzgOVWdVaKdJJ
 DMu5BjoAqQrNslSzDrbB9e8=
X-Google-Smtp-Source: ABdhPJxS2vu0iBpftzjUtjhCb/FxWAtguxXh+lBbJiEczkGrjESkFMyLDcJDnOLC/ms+UmQSJsti7w==
X-Received: by 2002:a05:6e02:926:: with SMTP id
 o6mr24113558ilt.65.1607400473775; 
 Mon, 07 Dec 2020 20:07:53 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:53 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 14/21] staging: rtl8723bs: replace _EXT_SUPPORTEDRATES_IE_
Date: Mon,  7 Dec 2020 22:07:26 -0600
Message-Id: <20201208040733.379197-15-ross.schm.dev@gmail.com>
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

Replace unique _EXT_SUPPORTEDRATES_IE_ macro with kernel provided
WLAN_EID_EXT_SUPP_RATES from linux/ieee80211.h.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c        |  2 +-
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c |  4 ++--
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c  | 18 +++++++++---------
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c |  2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c   |  4 ++--
 drivers/staging/rtl8723bs/include/wifi.h       |  1 -
 6 files changed, 15 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 5e93a85cb6ce..b6f944b37b08 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1043,7 +1043,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/* get ext_supported rates */
 	p = rtw_get_ie(
 		ie + _BEACON_IE_OFFSET_,
-		_EXT_SUPPORTEDRATES_IE_,
+		WLAN_EID_EXT_SUPP_RATES,
 		&ie_len,
 		pbss_network->IELength - _BEACON_IE_OFFSET_
 	);
diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index b899f511ff9f..28d5892d8bda 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -344,7 +344,7 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
 
 	if (rateLen > 8) {
 		ie = rtw_set_ie(ie, WLAN_EID_SUPP_RATES, 8, pdev_network->SupportedRates, &sz);
-		/* ie = rtw_set_ie(ie, _EXT_SUPPORTEDRATES_IE_, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz); */
+		/* ie = rtw_set_ie(ie, WLAN_EID_EXT_SUPP_RATES, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz); */
 	} else {
 		ie = rtw_set_ie(ie, WLAN_EID_SUPP_RATES, rateLen, pdev_network->SupportedRates, &sz);
 	}
@@ -357,7 +357,7 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
 	ie = rtw_set_ie(ie, WLAN_EID_IBSS_PARAMS, 2, (u8 *)&(pdev_network->Configuration.ATIMWindow), &sz);
 
 	if (rateLen > 8) {
-		ie = rtw_set_ie(ie, _EXT_SUPPORTEDRATES_IE_, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz);
+		ie = rtw_set_ie(ie, WLAN_EID_EXT_SUPP_RATES, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz);
 	}
 
 	/* HT Cap. */
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 5d56fbf0c1fe..e9b14fc8b10f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -783,7 +783,7 @@ unsigned int OnBeacon(struct adapter *padapter, union recv_frame *precv_frame)
 	u8 *p = NULL;
 	u32 ielen = 0;
 
-	p = rtw_get_ie(pframe + sizeof(struct ieee80211_hdr_3addr) + _BEACON_IE_OFFSET_, _EXT_SUPPORTEDRATES_IE_, &ielen, precv_frame->u.hdr.len - sizeof(struct ieee80211_hdr_3addr) - _BEACON_IE_OFFSET_);
+	p = rtw_get_ie(pframe + sizeof(struct ieee80211_hdr_3addr) + _BEACON_IE_OFFSET_, WLAN_EID_EXT_SUPP_RATES, &ielen, precv_frame->u.hdr.len - sizeof(struct ieee80211_hdr_3addr) - _BEACON_IE_OFFSET_);
 	if (p && ielen > 0) {
 		if ((*(p + 1 + ielen) == 0x2D) && (*(p + 2 + ielen) != 0x2D)) {
 			/* Invalid value 0x2D is detected in Extended Supported Rates (ESR) IE. Try to fix the IE length to avoid failed Beacon parsing. */
@@ -1284,7 +1284,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		memcpy(supportRate, p+2, ie_len);
 		supportRateNum = ie_len;
 
-		p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _EXT_SUPPORTEDRATES_IE_, &ie_len,
+		p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, WLAN_EID_EXT_SUPP_RATES, &ie_len,
 				pkt_len - WLAN_HDR_A3_LEN - ie_offset);
 		if (p !=  NULL) {
 
@@ -2561,7 +2561,7 @@ void issue_beacon(struct adapter *padapter, int timeout_ms)
 
 	/*  EXTERNDED SUPPORTED RATE */
 	if (rate_len > 8) {
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (rate_len - 8), (cur_network->SupportedRates + 8), &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (rate_len - 8), (cur_network->SupportedRates + 8), &pattrib->pktlen);
 	}
 
 
@@ -2764,7 +2764,7 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 
 		/*  EXTERNDED SUPPORTED RATE */
 		if (rate_len > 8) {
-			pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (rate_len - 8), (cur_network->SupportedRates + 8), &pattrib->pktlen);
+			pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (rate_len - 8), (cur_network->SupportedRates + 8), &pattrib->pktlen);
 		}
 
 
@@ -2878,7 +2878,7 @@ static int _issue_probereq(struct adapter *padapter,
 
 	if (bssrate_len > 8) {
 		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, bssrate, &(pattrib->pktlen));
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (bssrate_len - 8), (bssrate + 8), &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (bssrate_len - 8), (bssrate + 8), &(pattrib->pktlen));
 	} else {
 		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, bssrate_len, bssrate, &(pattrib->pktlen));
 	}
@@ -3156,7 +3156,7 @@ void issue_asocrsp(struct adapter *padapter, unsigned short status, struct sta_i
 		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, pstat->bssratelen, pstat->bssrateset, &(pattrib->pktlen));
 	} else {
 		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, pstat->bssrateset, &(pattrib->pktlen));
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (pstat->bssratelen-8), pstat->bssrateset+8, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (pstat->bssratelen-8), pstat->bssrateset+8, &(pattrib->pktlen));
 	}
 
 	if ((pstat->flags & WLAN_STA_HT) && (pmlmepriv->htpriv.ht_option)) {
@@ -3341,7 +3341,7 @@ void issue_assocreq(struct adapter *padapter)
 
 	if (bssrate_len > 8) {
 		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, bssrate, &(pattrib->pktlen));
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (bssrate_len - 8), (bssrate + 8), &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (bssrate_len - 8), (bssrate + 8), &(pattrib->pktlen));
 	} else
 		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, bssrate_len, bssrate, &(pattrib->pktlen));
 
@@ -4494,7 +4494,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 		i = len;
 	}
 
-	p = rtw_get_ie(bssid->IEs + ie_offset, _EXT_SUPPORTEDRATES_IE_, &len, bssid->IELength - ie_offset);
+	p = rtw_get_ie(bssid->IEs + ie_offset, WLAN_EID_EXT_SUPP_RATES, &len, bssid->IELength - ie_offset);
 	if (p) {
 		if (len > (NDIS_802_11_LENGTH_RATES_EX-i)) {
 			DBG_871X("%s()-%d: IE too long (%d) for survey event\n", __func__, __LINE__, len);
@@ -5986,7 +5986,7 @@ static int rtw_auto_ap_start_beacon(struct adapter *adapter)
 
 	/* ext supported rates */
 	if (rateLen > 8) {
-		ie = rtw_set_ie(ie, _EXT_SUPPORTEDRATES_IE_, (rateLen - 8), (supportRate + 8), &sz);
+		ie = rtw_set_ie(ie, WLAN_EID_EXT_SUPP_RATES, (rateLen - 8), (supportRate + 8), &sz);
 	}
 
 	DBG_871X("%s, start auto ap beacon sz =%d\n", __func__, sz);
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index e8e91e24c04d..975f2830e29e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1793,7 +1793,7 @@ int update_sta_support_rate(struct adapter *padapter, u8 *pvar_ie, uint var_ie_l
 	memcpy(pmlmeinfo->FW_sta_info[cam_idx].SupportedRates, pIE->data, ie_len);
 	supportRateNum = ie_len;
 
-	pIE = (struct ndis_80211_var_ie *)rtw_get_ie(pvar_ie, _EXT_SUPPORTEDRATES_IE_, &ie_len, var_ie_len);
+	pIE = (struct ndis_80211_var_ie *)rtw_get_ie(pvar_ie, WLAN_EID_EXT_SUPP_RATES, &ie_len, var_ie_len);
 	if (pIE && (ie_len <= sizeof(pmlmeinfo->FW_sta_info[cam_idx].SupportedRates) - supportRateNum))
 		memcpy((pmlmeinfo->FW_sta_info[cam_idx].SupportedRates + supportRateNum), pIE->data, ie_len);
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index f6073ecef2e2..86f31d98349a 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -198,7 +198,7 @@ static void ConstructBeacon(struct adapter *padapter, u8 *pframe, u32 *pLength)
 
 	/*  EXTERNDED SUPPORTED RATE */
 	if (rate_len > 8)
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (rate_len - 8), (cur_network->SupportedRates + 8), &pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (rate_len - 8), (cur_network->SupportedRates + 8), &pktlen);
 
 
 	/* todo:HT for adhoc */
@@ -701,7 +701,7 @@ static void ConstructProbeReq(struct adapter *padapter, u8 *pframe, u32 *pLength
 
 	if (bssrate_len > 8) {
 		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, bssrate, &pktlen);
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (bssrate_len - 8), (bssrate + 8), &pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (bssrate_len - 8), (bssrate + 8), &pktlen);
 	} else
 		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, bssrate_len, bssrate, &pktlen);
 
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index ff8865d1d846..e221d4574f32 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -389,7 +389,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 
 #define _SUPPORTED_CH_IE_		36
 #define _CH_SWTICH_ANNOUNCE_	37	/* Secondary Channel Offset */
-#define _EXT_SUPPORTEDRATES_IE_	50
 
 #define _FTIE_						55
 #define _TIMEOUT_ITVL_IE_			56
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

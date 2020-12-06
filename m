Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6F42D004F
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 04:45:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4716A8851A;
	Sun,  6 Dec 2020 03:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WcBfFnWykhha; Sun,  6 Dec 2020 03:45:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B29198857B;
	Sun,  6 Dec 2020 03:45:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 215EA1BF962
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0DD8C27261
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zXO5SZ6bR-X8 for <devel@linuxdriverproject.org>;
 Sun,  6 Dec 2020 03:45:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by silver.osuosl.org (Postfix) with ESMTPS id A10132725F
 for <devel@driverdev.osuosl.org>; Sun,  6 Dec 2020 03:45:27 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id p5so9005734iln.8
 for <devel@driverdev.osuosl.org>; Sat, 05 Dec 2020 19:45:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5vYQwjmo0RTRT78a4pJ/wKxPikM9y2nIdsWBhPX3Z88=;
 b=jbg7pLtMeYiCs+bKFoOZcjwRyXxII1M3wVnpoVihT9MF3IokrPDg4zgR+iKPZEBTEz
 1WAd0iogK7iMt5pmvpKn9M1q+FdJd3sPPX+CW54EaFatF9cZOH/45DRQ4FPo/xy0Amif
 +UXAMZvy/psutpJDEcEHw97VoV12wjKZJG39LitkuktxoshGslKK3S+EclbpffjuMUv1
 KE5gtwxVWPtGOpHrfF7yxEc4RNHLXZoNgzgI0Xfx8r3n0eG2mIgHH2z4j89sZTYMvptG
 b6ybXMNF0QNlL3D9InR44XjNhqynBMG1TClIJphlodct1BXr9OwVlGkkZbbS/685ZkGm
 S6Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5vYQwjmo0RTRT78a4pJ/wKxPikM9y2nIdsWBhPX3Z88=;
 b=cpbajEqKok2/e4gbQeKQvvUvf45FmCi/ANW6afOWui3/5k8CO7PPfnB74PHcKxLAqd
 rmGyabvUwCOuQdDji2hTrg/sMe5RDTSSYI+tpVKUdaT4NGkayFg/I4kph1C6c+mqYobv
 WidBT4mgb4cTFJU+7Gy2ihypajHf8pUknntwJJ6F6AxWAJsdCvvN5xNEpizmJxqnLWnR
 RBfaDmTKaMvJlC9+uD2dNTjjIg0S9dH0eXfVZf1MVT2rGfSdPlP+HMi+q5GBVnEokhCO
 c7uw/WZxcjJAloo6H9ezkPClLUCJjd3VZH5cTxNBXO7XzomSFp5MBXlFJZ+jtk923KDF
 yx+A==
X-Gm-Message-State: AOAM532dP0i3RzfMJca6EABREMkqAVNgfj1icshdDANQadm6dB+QBr9m
 nSSs0Rr44EUDDexhT7DSyyU=
X-Google-Smtp-Source: ABdhPJxG7mu2POITYhGeN4b3UZFo3fY+KkVYcBdpf8apj+UYhilzDlSvhkcX2PHuYFAdrxZ6vGxueQ==
X-Received: by 2002:a92:d350:: with SMTP id a16mr13030547ilh.291.1607226326989; 
 Sat, 05 Dec 2020 19:45:26 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id v63sm3908553ioe.52.2020.12.05.19.45.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Dec 2020 19:45:26 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 04/10] staging: rtl8723bs: replace HT_CAP_AMPDU_FACTOR
Date: Sat,  5 Dec 2020 21:45:11 -0600
Message-Id: <20201206034517.4276-4-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201206034517.4276-1-ross.schm.dev@gmail.com>
References: <20201206034517.4276-1-ross.schm.dev@gmail.com>
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

Replace unique HT_CAP_AMPDU_FACTOR enum with kernel provided
ieee80211_max_ampdu_length_exp enum.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c         |  4 ++--
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c     | 12 ++++++------
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c |  2 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c      |  2 +-
 drivers/staging/rtl8723bs/include/wifi.h          |  7 -------
 5 files changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 001cce312f05..e20e0ce4a2c5 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2580,7 +2580,7 @@ void rtw_build_wmm_ie_ht(struct adapter *padapter, u8 *out_ie, uint *pout_len)
 unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_ie, uint in_len, uint *pout_len, u8 channel)
 {
 	u32 ielen, out_len;
-	enum HT_CAP_AMPDU_FACTOR max_rx_ampdu_factor;
+	enum ieee80211_max_ampdu_length_exp max_rx_ampdu_factor;
 	unsigned char *p, *pframe;
 	struct ieee80211_ht_cap ht_capie;
 	u8 cbw40_enable = 0, stbc_rx_enable = 0, rf_type = 0, operation_bw = 0;
@@ -2698,7 +2698,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 
 	if (padapter->driver_rx_ampdu_factor != 0xFF)
 		max_rx_ampdu_factor =
-		  (enum HT_CAP_AMPDU_FACTOR)padapter->driver_rx_ampdu_factor;
+		  (enum ieee80211_max_ampdu_length_exp)padapter->driver_rx_ampdu_factor;
 	else
 		rtw_hal_get_def_var(padapter, HW_VAR_MAX_RX_AMPDU_FACTOR,
 				    &max_rx_ampdu_factor);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 239c89ce7dc9..0743e56582ba 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -3880,7 +3880,7 @@ void issue_action_BA(struct adapter *padapter, unsigned char *raddr, unsigned ch
 	u16 reason_code;
 	u16 BA_timeout_value;
 	u16 BA_starting_seqctrl = 0;
-	enum HT_CAP_AMPDU_FACTOR max_rx_ampdu_factor;
+	enum ieee80211_max_ampdu_length_exp max_rx_ampdu_factor;
 	struct xmit_frame		*pmgntframe;
 	struct pkt_attrib		*pattrib;
 	u8 			*pframe;
@@ -3975,18 +3975,18 @@ void issue_action_BA(struct adapter *padapter, unsigned char *raddr, unsigned ch
 			pframe = rtw_set_fixed_ie(pframe, 2, (unsigned char *)(&status), &(pattrib->pktlen));
 			if (padapter->driver_rx_ampdu_factor != 0xFF)
 				max_rx_ampdu_factor =
-				  (enum HT_CAP_AMPDU_FACTOR)padapter->driver_rx_ampdu_factor;
+				  (enum ieee80211_max_ampdu_length_exp)padapter->driver_rx_ampdu_factor;
 			else
 				rtw_hal_get_def_var(padapter,
 						    HW_VAR_MAX_RX_AMPDU_FACTOR, &max_rx_ampdu_factor);
 
-			if (MAX_AMPDU_FACTOR_64K == max_rx_ampdu_factor)
+			if (IEEE80211_HT_MAX_AMPDU_64K == max_rx_ampdu_factor)
 				BA_para_set = ((le16_to_cpu(pmlmeinfo->ADDBA_req.BA_para_set) & 0x3f) | 0x1000); /* 64 buffer size */
-			else if (MAX_AMPDU_FACTOR_32K == max_rx_ampdu_factor)
+			else if (IEEE80211_HT_MAX_AMPDU_32K == max_rx_ampdu_factor)
 				BA_para_set = ((le16_to_cpu(pmlmeinfo->ADDBA_req.BA_para_set) & 0x3f) | 0x0800); /* 32 buffer size */
-			else if (MAX_AMPDU_FACTOR_16K == max_rx_ampdu_factor)
+			else if (IEEE80211_HT_MAX_AMPDU_16K == max_rx_ampdu_factor)
 				BA_para_set = ((le16_to_cpu(pmlmeinfo->ADDBA_req.BA_para_set) & 0x3f) | 0x0400); /* 16 buffer size */
-			else if (MAX_AMPDU_FACTOR_8K == max_rx_ampdu_factor)
+			else if (IEEE80211_HT_MAX_AMPDU_8K == max_rx_ampdu_factor)
 				BA_para_set = ((le16_to_cpu(pmlmeinfo->ADDBA_req.BA_para_set) & 0x3f) | 0x0200); /* 8 buffer size */
 			else
 				BA_para_set = ((le16_to_cpu(pmlmeinfo->ADDBA_req.BA_para_set) & 0x3f) | 0x1000); /* 64 buffer size */
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index de8caa6cd418..84e963909283 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -4373,7 +4373,7 @@ u8 GetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable, v
 		/*  Stanley@BB.SD3 suggests 16K can get stable performance */
 		/*  The experiment was done on SDIO interface */
 		/*  coding by Lucas@20130730 */
-		*(u32 *)pval = MAX_AMPDU_FACTOR_16K;
+		*(u32 *)pval = IEEE80211_HT_MAX_AMPDU_16K;
 		break;
 	case HAL_DEF_TX_LDPC:
 	case HAL_DEF_RX_LDPC:
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 08abfb8ec4c7..718ee9eee87c 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -1802,7 +1802,7 @@ static u8 GetHalDefVar8723BSDIO(
 	case HW_VAR_MAX_RX_AMPDU_FACTOR:
 		/*  Stanley@BB.SD3 suggests 16K can get stable performance */
 		/*  coding by Lucas@20130730 */
-		*(u32 *)pValue = MAX_AMPDU_FACTOR_16K;
+		*(u32 *)pValue = IEEE80211_HT_MAX_AMPDU_16K;
 		break;
 	default:
 		bResult = GetHalDefVar8723B(Adapter, eVariable, pValue);
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 181c29b73617..9c92b5020fbc 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -612,13 +612,6 @@ struct ADDBA_request {
 	__le16	BA_starting_seqctrl;
 }  __attribute__ ((packed));
 
-enum HT_CAP_AMPDU_FACTOR {
-	MAX_AMPDU_FACTOR_8K		= 0,
-	MAX_AMPDU_FACTOR_16K	= 1,
-	MAX_AMPDU_FACTOR_32K	= 2,
-	MAX_AMPDU_FACTOR_64K	= 3,
-};
-
 /* 802.11n HT capabilities masks */
 #define IEEE80211_HT_CAP_LDPC_CODING		0x0001
 #define IEEE80211_HT_CAP_SUP_WIDTH		0x0002
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

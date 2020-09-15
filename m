Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 795C726A28E
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 11:54:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5DF138711C;
	Tue, 15 Sep 2020 09:54:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7icFWdhQ9hGD; Tue, 15 Sep 2020 09:54:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 888C187089;
	Tue, 15 Sep 2020 09:54:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45ED81BF28B
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 09:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2EB6520354
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 09:54:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wnpb9Zy-IVG2 for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 09:53:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 2A91020022
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 09:53:58 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id w1so2411717edr.3
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 02:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A+/SkvewVPQgM7oeS4nMMfrCXCWsGJ3NNWs8O4HT+w0=;
 b=O6W++oEcJCqVjApPI66wK743WQSXMlD5pphofbrEsVadIy/5ZvPzn8/jagZoGYl98I
 FFwAZStfYWKsWmpZ7oMhtjfQ+jDwtdp6U50WHdDXY+mdq6vYQwb50heTdgEwLlVNryF5
 syLQU7YTVj1VPZmbIhQAQoxFcW3fT3xWADZqsrCWorHqSayWOPlfIBdBprLT4zH4SEyx
 FcnOq7kAR5qXKZu2AE/RA2KsqPHwG1ob6j3FczrsOe/3hLtr26FZD/T3XyGJkzbFSNAF
 PD8oOmNDgLTMtLu0eDsutZbGjJLu3FillESF1SgQR9TJvkeyVyTS4+ZjCX2So1fOqvKL
 9bfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A+/SkvewVPQgM7oeS4nMMfrCXCWsGJ3NNWs8O4HT+w0=;
 b=B6hzk7FF30XjF6JMl5qA6IKNiL4IKgV5oDr+P/u1QQvOVfHkkzZzETSFn/5M8B26aZ
 oV9UPs399R+oVeB+/wxosWQ9dOdEgMEf8+75XURGCrAxQzFjFUQFWo3iKTNn/1bY//9n
 +Oc2EjXBUvfq/5EUPMndprAX2xomkfnW2KMts/p4VjGhMeFkCnjUIjBnzSkg983imkbn
 Afzj9XsoI9vfiehnD2rPjwX6nWzRz2pWemgfs0IZMjsHa2t8mjqd8zy5AXe63B0mRRT+
 JezkXW0k46eDsDrtJYycB/d3j/y4TZNpQeXKlfkxZGpIfWKP/qDVCNdnY+hCaGQRjxhh
 Y7IA==
X-Gm-Message-State: AOAM531AA8OPKMKiuMkl7my4cxz+nNAqd5TUUkDmhYe+uhqXkU3JBWMc
 3HxaL5QclzyQrn0iWaE11lA=
X-Google-Smtp-Source: ABdhPJzKvDTEFuOwE29FrxhVwuonmFIYZA2cUBMWTndLmLT0g89CDJa2j+XnCB64apJRf1XsIVISIw==
X-Received: by 2002:a50:aa94:: with SMTP id q20mr20960545edc.119.1600163636653; 
 Tue, 15 Sep 2020 02:53:56 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-002-204-143-038.002.204.pools.vodafone-ip.de. [2.204.143.38])
 by smtp.gmail.com with ESMTPSA id z18sm9929150ejw.94.2020.09.15.02.53.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 02:53:56 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: remove extra indentations
Date: Tue, 15 Sep 2020 11:50:09 +0200
Message-Id: <20200915095009.9679-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
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

Remove extra indentations to follow kernel coding style and clear
checkpatch warnings.

WARNING: suspect code indent for conditional statements

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c |  6 +--
 .../staging/rtl8188eu/core/rtw_wlan_util.c    | 48 +++++++++----------
 drivers/staging/rtl8188eu/hal/phy.c           | 26 +++++-----
 drivers/staging/rtl8188eu/hal/rf_cfg.c        |  4 +-
 4 files changed, 42 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 0eaf81e83ddc..dad007f78d8c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -2599,9 +2599,9 @@ static unsigned int OnBeacon(struct adapter *padapter,
 			if (psta) {
 				ret = rtw_check_bcn_info(padapter, pframe, len);
 				if (!ret) {
-						DBG_88E_LEVEL(_drv_info_, "ap has changed, disconnect now\n ");
-						receive_disconnect(padapter, pmlmeinfo->network.MacAddress, 65535);
-						return _SUCCESS;
+					DBG_88E_LEVEL(_drv_info_, "ap has changed, disconnect now\n ");
+					receive_disconnect(padapter, pmlmeinfo->network.MacAddress, 65535);
+					return _SUCCESS;
 				}
 				/* update WMM, ERP in the beacon */
 				/* todo: the timer is used instead of the number of the beacon received */
diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index be843fd2461a..efe1f1ba7acf 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -869,42 +869,42 @@ int rtw_check_bcn_info(struct adapter  *Adapter, u8 *pframe, u32 packet_len)
 	/* parsing HT_INFO_IE */
 	p = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
-			pht_info = (struct HT_info_element *)(p + 2);
-			ht_info_infos_0 = pht_info->infos[0];
+		pht_info = (struct HT_info_element *)(p + 2);
+		ht_info_infos_0 = pht_info->infos[0];
 	} else {
-			ht_info_infos_0 = 0;
+		ht_info_infos_0 = 0;
 	}
 	if (ht_cap_info != cur_network->BcnInfo.ht_cap_info ||
 	    ((ht_info_infos_0 & 0x03) != (cur_network->BcnInfo.ht_info_infos_0 & 0x03))) {
-			DBG_88E("%s bcn now: ht_cap_info:%x ht_info_infos_0:%x\n", __func__,
-				ht_cap_info, ht_info_infos_0);
-			DBG_88E("%s bcn link: ht_cap_info:%x ht_info_infos_0:%x\n", __func__,
-				cur_network->BcnInfo.ht_cap_info, cur_network->BcnInfo.ht_info_infos_0);
-			DBG_88E("%s bw mode change, disconnect\n", __func__);
-			/* bcn_info_update */
-			cur_network->BcnInfo.ht_cap_info = ht_cap_info;
-			cur_network->BcnInfo.ht_info_infos_0 = ht_info_infos_0;
-			/* to do : need to check that whether modify related register of BB or not */
-			/* goto _mismatch; */
+		DBG_88E("%s bcn now: ht_cap_info:%x ht_info_infos_0:%x\n", __func__,
+			ht_cap_info, ht_info_infos_0);
+		DBG_88E("%s bcn link: ht_cap_info:%x ht_info_infos_0:%x\n", __func__,
+			cur_network->BcnInfo.ht_cap_info, cur_network->BcnInfo.ht_info_infos_0);
+		DBG_88E("%s bw mode change, disconnect\n", __func__);
+		/* bcn_info_update */
+		cur_network->BcnInfo.ht_cap_info = ht_cap_info;
+		cur_network->BcnInfo.ht_info_infos_0 = ht_info_infos_0;
+		/* to do : need to check that whether modify related register of BB or not */
+		/* goto _mismatch; */
 	}
 
 	/* Checking for channel */
 	p = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, _DSSET_IE_, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
 	if (p) {
-			bcn_channel = *(p + 2);
+		bcn_channel = *(p + 2);
 	} else {/* In 5G, some ap do not have DSSET IE checking HT info for channel */
-			p = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
-			if (pht_info) {
-					bcn_channel = pht_info->primary_channel;
-			} else { /* we don't find channel IE, so don't check it */
-					DBG_88E("Oops: %s we don't find channel IE, so don't check it\n", __func__);
-					bcn_channel = Adapter->mlmeextpriv.cur_channel;
-			}
+		p = rtw_get_ie(bssid->ies + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, bssid->ie_length - _FIXED_IE_LENGTH_);
+		if (pht_info) {
+			bcn_channel = pht_info->primary_channel;
+		} else { /* we don't find channel IE, so don't check it */
+			DBG_88E("Oops: %s we don't find channel IE, so don't check it\n", __func__);
+			bcn_channel = Adapter->mlmeextpriv.cur_channel;
+		}
 	}
 	if (bcn_channel != Adapter->mlmeextpriv.cur_channel) {
-			DBG_88E("%s beacon channel:%d cur channel:%d disconnect\n", __func__,
-				bcn_channel, Adapter->mlmeextpriv.cur_channel);
-			goto _mismatch;
+		DBG_88E("%s beacon channel:%d cur channel:%d disconnect\n", __func__,
+			bcn_channel, Adapter->mlmeextpriv.cur_channel);
+		goto _mismatch;
 	}
 
 	/* checking SSID */
diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 920688fc9e9f..db6f05b77a70 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -403,11 +403,11 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 
 		for (i = 0; i < CCK_TABLE_SIZE; i++) {
 			if ((dm_odm->RFCalibrateInfo.bCCKinCH14 &&
-				memcmp(&temp_cck, &CCKSwingTable_Ch14[i][2], 4)) ||
-				memcmp(&temp_cck, &CCKSwingTable_Ch1_Ch13[i][2], 4)) {
-					cck_index_old = (u8)i;
-					dm_odm->BbSwingIdxCckBase = (u8)i;
-					break;
+			     memcmp(&temp_cck, &CCKSwingTable_Ch14[i][2], 4)) ||
+			    memcmp(&temp_cck, &CCKSwingTable_Ch1_Ch13[i][2], 4)) {
+				cck_index_old = (u8)i;
+				dm_odm->BbSwingIdxCckBase = (u8)i;
+				break;
 			}
 		}
 
@@ -1039,10 +1039,10 @@ static void phy_iq_calibrate(struct adapter *adapt, s32 result[][8],
 	for (i = 0; i < retry_count; i++) {
 		path_a_ok = phy_path_a_iqk(adapt, is2t);
 		if (path_a_ok == 0x01) {
-				result[t][0] = (phy_query_bb_reg(adapt, rTx_Power_Before_IQK_A,
-								 bMaskDWord) & 0x3FF0000) >> 16;
-				result[t][1] = (phy_query_bb_reg(adapt, rTx_Power_After_IQK_A,
-								 bMaskDWord) & 0x3FF0000) >> 16;
+			result[t][0] = (phy_query_bb_reg(adapt, rTx_Power_Before_IQK_A,
+							 bMaskDWord) & 0x3FF0000) >> 16;
+			result[t][1] = (phy_query_bb_reg(adapt, rTx_Power_After_IQK_A,
+							 bMaskDWord) & 0x3FF0000) >> 16;
 			break;
 		}
 	}
@@ -1050,10 +1050,10 @@ static void phy_iq_calibrate(struct adapter *adapt, s32 result[][8],
 	for (i = 0; i < retry_count; i++) {
 		path_a_ok = phy_path_a_rx_iqk(adapt, is2t);
 		if (path_a_ok == 0x03) {
-				result[t][2] = (phy_query_bb_reg(adapt, rRx_Power_Before_IQK_A_2,
-								 bMaskDWord) & 0x3FF0000) >> 16;
-				result[t][3] = (phy_query_bb_reg(adapt, rRx_Power_After_IQK_A_2,
-								 bMaskDWord) & 0x3FF0000) >> 16;
+			result[t][2] = (phy_query_bb_reg(adapt, rRx_Power_Before_IQK_A_2,
+							 bMaskDWord) & 0x3FF0000) >> 16;
+			result[t][3] = (phy_query_bb_reg(adapt, rRx_Power_After_IQK_A_2,
+							 bMaskDWord) & 0x3FF0000) >> 16;
 			break;
 		}
 		ODM_RT_TRACE(dm_odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,
diff --git a/drivers/staging/rtl8188eu/hal/rf_cfg.c b/drivers/staging/rtl8188eu/hal/rf_cfg.c
index 0b20e62f9a68..45542076e300 100644
--- a/drivers/staging/rtl8188eu/hal/rf_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/rf_cfg.c
@@ -206,8 +206,8 @@ static bool rtl88e_phy_config_rf_with_headerfile(struct adapter *adapt)
 				READ_NEXT_PAIR(v1, v2, i);
 				while (v2 != 0xDEAD && v2 != 0xCDEF &&
 				       v2 != 0xCDCD && i < array_len - 2) {
-						rtl8188e_config_rf_reg(adapt, v1, v2);
-						READ_NEXT_PAIR(v1, v2, i);
+					rtl8188e_config_rf_reg(adapt, v1, v2);
+					READ_NEXT_PAIR(v1, v2, i);
 				}
 
 				while (v2 != 0xDEAD && i < array_len - 2)
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

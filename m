Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC06C2D004E
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 04:45:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 78EF687C45;
	Sun,  6 Dec 2020 03:45:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qpcOgCAWXE6d; Sun,  6 Dec 2020 03:45:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 762F587C19;
	Sun,  6 Dec 2020 03:45:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 207BE1BF962
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1122C27261
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fpDT2hTyTtwA for <devel@linuxdriverproject.org>;
 Sun,  6 Dec 2020 03:45:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 636CF2725F
 for <devel@driverdev.osuosl.org>; Sun,  6 Dec 2020 03:45:24 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id z136so9977423iof.3
 for <devel@driverdev.osuosl.org>; Sat, 05 Dec 2020 19:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B8pDUNmO+99OTIyLFSqzzIUPrdsdq+a2COkL0vd8/tY=;
 b=uf8sXdrY3zkIZH2HwQGxZsKUtNjeoz3CmANUniq7gthZT7/t7Ol3hhESIaWQKFhUh8
 VhlgfVu1gRoEMbP2MiacrLD+F2WQhZESOGsuqYo1TkTGZErQS9L3Z9u7mVn97A6qJTxb
 QJv5Vd6Wf6eKLKPrAivZjJlB7VNCN2SLpa1+PKLHEI3XS7V6dLARZPo0MASmJ8JPGQSf
 X9N1znx8HSbkP+wYsIFoTvOGiJeb2hY5o4e7vs+9PB9ZfYDAXUm6cpFg9AY6SQSxYFjU
 fqYl+0oshvhPKnyA/yEHKNlImd2R2MilunafB7LZz97rE1/aI2h2WsiTRjRVtZwfoYw5
 fKLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B8pDUNmO+99OTIyLFSqzzIUPrdsdq+a2COkL0vd8/tY=;
 b=K66p4z5RWHrP6sHzJf4cGLBXuFRgv/y8zgWyjOBXZFFYrN3dbMbf7Ai5FMEt3ubXWB
 fkwJGMISTel1MxL5pmjT1SGtzuRJ3xEy9Vojamne2qAgAy8dsrgqELhYTLaLcco/fXoc
 w9cNn8O0Rd4+n3Ex6wi0ALsteB+Os3a1N7a012EzC4GL+x2qDrbXODkCkynUThljSYII
 JDy917iJjletzyoi39Vj8a7W4cDVTruZMopyzf7Z6qxpzeIQOFBotIifyFeewm1b0d9T
 0Efw0iYSCiJrH1sPACY3W5ZW+VX26unRQBZRg3Wm3ZRxx6MYtpOGjiaCqQfNo2Ihgco7
 sAaw==
X-Gm-Message-State: AOAM530Q8SaVkRysEQoFam+BiwHrU2gjkOrnPQp+jZvR2sTw7nzH4UeI
 o+5VNFgMn+B9NuBpz0ZqSgk=
X-Google-Smtp-Source: ABdhPJwf5cwAB5j+ZKjZ1efVuV5nJPWHFSOX7EdEAxQSbqVxHxaVIOvalpZBQdFZc69ABAIXfmAMAw==
X-Received: by 2002:a02:354a:: with SMTP id y10mr13847816jae.126.1607226323612; 
 Sat, 05 Dec 2020 19:45:23 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id v63sm3908553ioe.52.2020.12.05.19.45.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Dec 2020 19:45:22 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 01/10] staging: rtl8723bs: replace unique macros and
 WIFI_STATUS_CODE
Date: Sat,  5 Dec 2020 21:45:08 -0600
Message-Id: <20201206034517.4276-1-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
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

Replace many unique macros and WIFI_STATUS_CODE enum with kernel
provided ieee80211_statuscode. A duplicate
WLAN_STATUS_ASSOC_DENIED_NOSHORT macro is also removed.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 54 +++++++++----------
 drivers/staging/rtl8723bs/include/ieee80211.h |  3 --
 drivers/staging/rtl8723bs/include/wifi.h      | 51 ------------------
 3 files changed, 27 insertions(+), 81 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 8c40ef43ff94..ab4876507198 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -940,13 +940,13 @@ unsigned int OnAuth(struct adapter *padapter, union recv_frame *precv_frame)
 		DBG_871X("auth rejected due to bad alg [alg =%d, auth_mib =%d] %02X%02X%02X%02X%02X%02X\n",
 			algorithm, auth_mode, sa[0], sa[1], sa[2], sa[3], sa[4], sa[5]);
 
-		status = _STATS_NO_SUPP_ALG_;
+		status = WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG;
 
 		goto auth_fail;
 	}
 
 	if (rtw_access_ctrl(padapter, sa) == false) {
-		status = _STATS_UNABLE_HANDLE_STA_;
+		status = WLAN_STATUS_AP_UNABLE_TO_HANDLE_NEW_STA;
 		goto auth_fail;
 	}
 
@@ -958,7 +958,7 @@ unsigned int OnAuth(struct adapter *padapter, union recv_frame *precv_frame)
 		pstat = rtw_alloc_stainfo(pstapriv, sa);
 		if (pstat == NULL) {
 			DBG_871X(" Exceed the upper limit of supported clients...\n");
-			status = _STATS_UNABLE_HANDLE_STA_;
+			status = WLAN_STATUS_AP_UNABLE_TO_HANDLE_NEW_STA;
 			goto auth_fail;
 		}
 
@@ -999,7 +999,7 @@ unsigned int OnAuth(struct adapter *padapter, union recv_frame *precv_frame)
 	if ((pstat->auth_seq + 1) != seq) {
 		DBG_871X("(1)auth rejected because out of seq [rx_seq =%d, exp_seq =%d]!\n",
 			seq, pstat->auth_seq+1);
-		status = _STATS_OUT_OF_AUTH_SEQ_;
+		status = WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION;
 		goto auth_fail;
 	}
 
@@ -1012,7 +1012,7 @@ unsigned int OnAuth(struct adapter *padapter, union recv_frame *precv_frame)
 		} else {
 			DBG_871X("(2)auth rejected because out of seq [rx_seq =%d, exp_seq =%d]!\n",
 				seq, pstat->auth_seq+1);
-			status = _STATS_OUT_OF_AUTH_SEQ_;
+			status = WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION;
 			goto auth_fail;
 		}
 	} else { /*  shared system or auto authentication */
@@ -1033,7 +1033,7 @@ unsigned int OnAuth(struct adapter *padapter, union recv_frame *precv_frame)
 
 			if ((p == NULL) || (ie_len <= 0)) {
 				DBG_871X("auth rejected because challenge failure!(1)\n");
-				status = _STATS_CHALLENGE_FAIL_;
+				status = WLAN_STATUS_CHALLENGE_FAIL;
 				goto auth_fail;
 			}
 
@@ -1044,13 +1044,13 @@ unsigned int OnAuth(struct adapter *padapter, union recv_frame *precv_frame)
 				pstat->expire_to =  pstapriv->assoc_to;
 			} else {
 				DBG_871X("auth rejected because challenge failure!\n");
-				status = _STATS_CHALLENGE_FAIL_;
+				status = WLAN_STATUS_CHALLENGE_FAIL;
 				goto auth_fail;
 			}
 		} else {
 			DBG_871X("(3)auth rejected because out of seq [rx_seq =%d, exp_seq =%d]!\n",
 				seq, pstat->auth_seq+1);
-			status = _STATS_OUT_OF_AUTH_SEQ_;
+			status = WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION;
 			goto auth_fail;
 		}
 	}
@@ -1059,7 +1059,7 @@ unsigned int OnAuth(struct adapter *padapter, union recv_frame *precv_frame)
 	/*  Now, we are going to issue_auth... */
 	pstat->auth_seq = seq + 1;
 
-	issue_auth(padapter, pstat, (unsigned short)(_STATS_SUCCESSFUL_));
+	issue_auth(padapter, pstat, (unsigned short)(WLAN_STATUS_SUCCESS));
 
 	if (pstat->state & WIFI_FW_AUTH_SUCCESS)
 		pstat->auth_seq = 0;
@@ -1178,7 +1178,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 	int		i, ie_len, wpa_ie_len, left;
 	unsigned char 	supportRate[16];
 	int					supportRateNum;
-	unsigned short		status = _STATS_SUCCESSFUL_;
+	unsigned short		status = WLAN_STATUS_SUCCESS;
 	unsigned short		frame_type, ie_offset = 0;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
@@ -1245,7 +1245,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 	    !elems.ssid) {
 		DBG_871X("STA %pM sent invalid association request\n",
 		       MAC_ARG(pstat->hwaddr));
-		status = _STATS_FAILURE_;
+		status = WLAN_STATUS_CHALLENGE_FAIL;
 		goto OnAssocReqFail;
 	}
 
@@ -1256,18 +1256,18 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 
 	if (!p || ie_len == 0) {
 		/*  broadcast ssid, however it is not allowed in assocreq */
-		status = _STATS_FAILURE_;
+		status = WLAN_STATUS_CHALLENGE_FAIL;
 		goto OnAssocReqFail;
 	} else {
 		/*  check if ssid match */
 		if (memcmp((void *)(p+2), cur->Ssid.Ssid, cur->Ssid.SsidLength))
-			status = _STATS_FAILURE_;
+			status = WLAN_STATUS_CHALLENGE_FAIL;
 
 		if (ie_len != cur->Ssid.SsidLength)
-			status = _STATS_FAILURE_;
+			status = WLAN_STATUS_CHALLENGE_FAIL;
 	}
 
-	if (status != _STATS_SUCCESSFUL_)
+	if (status != WLAN_STATUS_SUCCESS)
 		goto OnAssocReqFail;
 
 	/*  check if the supported rate is ok */
@@ -1278,7 +1278,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		/* memcpy(supportRate, AP_BSSRATE, AP_BSSRATE_LEN); */
 		/* supportRateNum = AP_BSSRATE_LEN; */
 
-		status = _STATS_FAILURE_;
+		status = WLAN_STATUS_CHALLENGE_FAIL;
 		goto OnAssocReqFail;
 	} else {
 		memcpy(supportRate, p+2, ie_len);
@@ -1326,10 +1326,10 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 			pstat->wpa2_pairwise_cipher = pairwise_cipher&psecuritypriv->wpa2_pairwise_cipher;
 
 			if (!pstat->wpa2_group_cipher)
-				status = WLAN_STATUS_GROUP_CIPHER_NOT_VALID;
+				status = WLAN_STATUS_INVALID_GROUP_CIPHER;
 
 			if (!pstat->wpa2_pairwise_cipher)
-				status = WLAN_STATUS_PAIRWISE_CIPHER_NOT_VALID;
+				status = WLAN_STATUS_INVALID_PAIRWISE_CIPHER;
 		} else {
 			status = WLAN_STATUS_INVALID_IE;
 		}
@@ -1349,10 +1349,10 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 			pstat->wpa_pairwise_cipher = pairwise_cipher&psecuritypriv->wpa_pairwise_cipher;
 
 			if (!pstat->wpa_group_cipher)
-				status = WLAN_STATUS_GROUP_CIPHER_NOT_VALID;
+				status = WLAN_STATUS_INVALID_GROUP_CIPHER;
 
 			if (!pstat->wpa_pairwise_cipher)
-				status = WLAN_STATUS_PAIRWISE_CIPHER_NOT_VALID;
+				status = WLAN_STATUS_INVALID_PAIRWISE_CIPHER;
 
 		} else {
 			status = WLAN_STATUS_INVALID_IE;
@@ -1363,7 +1363,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		wpa_ie_len = 0;
 	}
 
-	if (status != _STATS_SUCCESSFUL_)
+	if (status != WLAN_STATUS_SUCCESS)
 		goto OnAssocReqFail;
 
 	pstat->flags &= ~(WLAN_STA_WPS | WLAN_STA_MAYBE_WPS);
@@ -1396,7 +1396,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 				if (!selected_registrar) {
 					DBG_871X("selected_registrar is false , or AP is not ready to do WPS\n");
 
-					status = _STATS_UNABLE_HANDLE_STA_;
+					status = WLAN_STATUS_AP_UNABLE_TO_HANDLE_NEW_STA;
 
 					goto OnAssocReqFail;
 				}
@@ -1507,7 +1507,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 
 
 	if ((pmlmepriv->htpriv.ht_option == false) && (pstat->flags&WLAN_STA_HT)) {
-		status = _STATS_FAILURE_;
+		status = WLAN_STATUS_CHALLENGE_FAIL;
 		goto OnAssocReqFail;
 	}
 
@@ -1517,7 +1517,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		      (pstat->wpa_pairwise_cipher&WPA_CIPHER_TKIP))) {
 		DBG_871X("HT: %pM tried to use TKIP with HT association\n", MAC_ARG(pstat->hwaddr));
 
-		/* status = WLAN_STATUS_CIPHER_REJECTED_PER_POLICY; */
+		/* status = WLAN_STATUS_CIPHER_SUITE_REJECTED; */
 		/* goto OnAssocReqFail; */
 	}
 	pstat->flags |= WLAN_STA_NONERP;
@@ -1535,7 +1535,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 
 
 
-	if (status != _STATS_SUCCESSFUL_)
+	if (status != WLAN_STATUS_SUCCESS)
 		goto OnAssocReqFail;
 
 	/* TODO: identify_proprietary_vendor_ie(); */
@@ -1592,7 +1592,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 	spin_unlock_bh(&pstapriv->asoc_list_lock);
 
 	/*  now the station is qualified to join our BSS... */
-	if (pstat && (pstat->state & WIFI_FW_ASSOC_SUCCESS) && (_STATS_SUCCESSFUL_ == status)) {
+	if (pstat && (pstat->state & WIFI_FW_ASSOC_SUCCESS) && (WLAN_STATUS_SUCCESS == status)) {
 		/* 1 bss_cap_update & sta_info_update */
 		bss_cap_update_on_sta_join(padapter, pstat);
 		sta_info_update(padapter, pstat);
@@ -3004,7 +3004,7 @@ void issue_auth(struct adapter *padapter, struct sta_info *psta, unsigned short
 		/*  setting auth algo number */
 		val16 = (u16)psta->authalg;
 
-		if (status != _STATS_SUCCESSFUL_)
+		if (status != WLAN_STATUS_SUCCESS)
 			val16 = 0;
 
 		if (val16)
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index bf53d850c370..c095ffba0f27 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -347,9 +347,6 @@ struct ieee80211_snap_hdr {
 #define WLAN_CAPABILITY_BSS (1<<0)
 #define WLAN_CAPABILITY_SHORT_SLOT (1<<10)
 
-/* 802.11b */
-#define WLAN_STATUS_ASSOC_DENIED_NOSHORT 19
-
 /* Reason codes */
 #define WLAN_REASON_ACTIVE_ROAM 65533
 #define WLAN_REASON_JOIN_WRONG_CHANNEL       65534
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index b95f7f1c70de..8e0ec95c1339 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -124,57 +124,6 @@ enum WIFI_REASON_CODE	{
 #define WLAN_REASON_PWR_CAPABILITY_NOT_VALID 10
 #define WLAN_REASON_SUPPORTED_CHANNEL_NOT_VALID 11
 
-enum WIFI_STATUS_CODE {
-	_STATS_SUCCESSFUL_			= 0,
-	_STATS_FAILURE_				= 1,
-	_STATS_CAP_FAIL_			= 10,
-	_STATS_NO_ASOC_				= 11,
-	_STATS_OTHER_				= 12,
-	_STATS_NO_SUPP_ALG_			= 13,
-	_STATS_OUT_OF_AUTH_SEQ_		= 14,
-	_STATS_CHALLENGE_FAIL_		= 15,
-	_STATS_AUTH_TIMEOUT_		= 16,
-	_STATS_UNABLE_HANDLE_STA_	= 17,
-	_STATS_RATE_FAIL_			= 18,
-};
-
-/* Status codes (IEEE 802.11-2007, 7.3.1.9, Table 7-23) */
-/* entended */
-/* IEEE 802.11b */
-#define WLAN_STATUS_ASSOC_DENIED_NOSHORT 19
-#define WLAN_STATUS_ASSOC_DENIED_NOPBCC 20
-#define WLAN_STATUS_ASSOC_DENIED_NOAGILITY 21
-/* IEEE 802.11h */
-#define WLAN_STATUS_SPEC_MGMT_REQUIRED 22
-#define WLAN_STATUS_PWR_CAPABILITY_NOT_VALID 23
-#define WLAN_STATUS_SUPPORTED_CHANNEL_NOT_VALID 24
-/* IEEE 802.11g */
-#define WLAN_STATUS_ASSOC_DENIED_NO_SHORT_SLOT_TIME 25
-#define WLAN_STATUS_ASSOC_DENIED_NO_ER_PBCC 26
-#define WLAN_STATUS_ASSOC_DENIED_NO_DSSS_OFDM 27
-/* IEEE 802.11w */
-#define WLAN_STATUS_ASSOC_REJECTED_TEMPORARILY 30
-#define WLAN_STATUS_ROBUST_MGMT_FRAME_POLICY_VIOLATION 31
-/* IEEE 802.11i */
-#define WLAN_STATUS_INVALID_IE 40
-#define WLAN_STATUS_GROUP_CIPHER_NOT_VALID 41
-#define WLAN_STATUS_PAIRWISE_CIPHER_NOT_VALID 42
-#define WLAN_STATUS_AKMP_NOT_VALID 43
-#define WLAN_STATUS_UNSUPPORTED_RSN_IE_VERSION 44
-#define WLAN_STATUS_INVALID_RSN_IE_CAPAB 45
-#define WLAN_STATUS_CIPHER_REJECTED_PER_POLICY 46
-#define WLAN_STATUS_TS_NOT_CREATED 47
-#define WLAN_STATUS_DIRECT_LINK_NOT_ALLOWED 48
-#define WLAN_STATUS_DEST_STA_NOT_PRESENT 49
-#define WLAN_STATUS_DEST_STA_NOT_QOS_STA 50
-#define WLAN_STATUS_ASSOC_DENIED_LISTEN_INT_TOO_LARGE 51
-/* IEEE 802.11r */
-#define WLAN_STATUS_INVALID_FT_ACTION_FRAME_COUNT 52
-#define WLAN_STATUS_INVALID_PMKID 53
-#define WLAN_STATUS_INVALID_MDIE 54
-#define WLAN_STATUS_INVALID_FTIE 55
-
-
 enum WIFI_REG_DOMAIN {
 	DOMAIN_FCC		= 1,
 	DOMAIN_IC		= 2,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

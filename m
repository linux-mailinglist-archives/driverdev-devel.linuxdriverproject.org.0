Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F25287BEA
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Oct 2020 20:55:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE2E087005;
	Thu,  8 Oct 2020 18:55:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K1ssAJWz0HvQ; Thu,  8 Oct 2020 18:55:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6928987536;
	Thu,  8 Oct 2020 18:55:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DAEB11BF364
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 18:55:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D78B387402
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 18:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VGIlm1WS5agw for <devel@linuxdriverproject.org>;
 Thu,  8 Oct 2020 18:55:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7111F87005
 for <devel@driverdev.osuosl.org>; Thu,  8 Oct 2020 18:55:29 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id l24so6905694edj.8
 for <devel@driverdev.osuosl.org>; Thu, 08 Oct 2020 11:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=59vFsMhDY4iAqZUXv3t/+97eosoNZpIWPhF5gsNcUdE=;
 b=BrpIHuZ9rehgAYIj0KZONiaNDAK7knuxn6bd7b/6A2ySap1XXp3xTy4rZbUjyaJd2W
 Ccx2/B9WVJHgsLRgcevtxrK4YYIyuwPF82bH+1jkPEZ5fDwPm7n/ohjmfNE5qjSnQCbp
 hFiNELH/olEOq2iaOYFzzvva9sTsqqUWmQdUEj6RTl9skasj2E6vpqADEFZgSmG9Teok
 Ahhz/lmuyXhd5grFid4P3kDmPRl0TnGk3tTPR3tJuFnjQ6+9v4bzFQB/F0JLQuD7paQA
 Dyk4EYu3f8ROpu6M9RWXZgUGIGmLx6oHISDFlkVCN8GVq9nM+poBpyFAXFrMv5ac+dGo
 aqPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=59vFsMhDY4iAqZUXv3t/+97eosoNZpIWPhF5gsNcUdE=;
 b=sFXxcBV8H5QOu6g+QJDW1ODN+SMXOU8xgq/GtSqMCuR4gYIlwfFNoKedu2GTDbDQ1V
 fPzz4t8OSnyQjK3CZiq13TlqG/DpgJGYq3zfe84DedBJBqe+FNfArwe3DwMANJ9YRGp5
 ZcDB6mYuUErufM9ElAwuZhFMBhayAjf5XZvZjE8NKsUFVTvd3CO1b7JUJu7ymn6Ivzmf
 7UQ0TCqKU3BioKxLd9j2006M6ClwVJdeb/XC5eYPvMBy7IhA6lcKE+NUkFGMBTsUdaR1
 Cg9TDzVBb5ZCmGm2no37Omi6bcHxBvSMFSJFMzs/wgrlAeSL+xXPTnq3QtjvOpT6PSLA
 2Tdg==
X-Gm-Message-State: AOAM532R1Ig+3ELoNVQOc/qS39dvf791qzceaQw1RgQ6R3TSa69qD279
 0RzoliTgNa2CcXV8rm8LA8o=
X-Google-Smtp-Source: ABdhPJwC3shmKtGrpGxwRIXpkaB9YmWIZJVaPiYac3TL72wDD25F8NBFlRSJ7g0tl29Wocso4GVCAA==
X-Received: by 2002:aa7:d844:: with SMTP id f4mr10291834eds.194.1602183327657; 
 Thu, 08 Oct 2020 11:55:27 -0700 (PDT)
Received: from ubuntu-T470 ([2a02:8108:8ac0:33f8:fd45:a590:efbe:689a])
 by smtp.gmail.com with ESMTPSA id r3sm404763edw.42.2020.10.08.11.55.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 11:55:27 -0700 (PDT)
Date: Thu, 8 Oct 2020 20:55:24 +0200
From: Fan Fei <ffclaire1224@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: Fix long lines
Message-ID: <20201008185524.brl467kucslxoxci@ubuntu-T470>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, vkor@vkten.in, insafonov@gmail.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 yepeilin.cs@gmail.com, ffclaire1224@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fix long lines found by checkpatch.

Signed-off-by: Fan Fei <ffclaire1224@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_cmd.c | 74 ++++++++++++++++--------
 1 file changed, 51 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c b/drivers/staging/rtl8188eu/core/rtw_cmd.c
index 5c300865eeb3..a2b88ba242d5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_cmd.c
+++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c
@@ -159,14 +159,16 @@ int rtw_cmd_thread(void *context)
 		if (padapter->bDriverStopped ||
 		    padapter->bSurpriseRemoved) {
 			DBG_88E("%s: DriverStopped(%d) SurpriseRemoved(%d) break at line %d\n",
-				__func__, padapter->bDriverStopped, padapter->bSurpriseRemoved, __LINE__);
+				__func__, padapter->bDriverStopped,
+				padapter->bSurpriseRemoved, __LINE__);
 			break;
 		}
 _next:
 		if (padapter->bDriverStopped ||
 		    padapter->bSurpriseRemoved) {
 			DBG_88E("%s: DriverStopped(%d) SurpriseRemoved(%d) break at line %d\n",
-				__func__, padapter->bDriverStopped, padapter->bSurpriseRemoved, __LINE__);
+				__func__, padapter->bDriverStopped,
+				padapter->bSurpriseRemoved, __LINE__);
 			break;
 		}
 
@@ -195,14 +197,18 @@ int rtw_cmd_thread(void *context)
 		if (pcmd->cmdcode < ARRAY_SIZE(rtw_cmd_callback)) {
 			pcmd_callback = rtw_cmd_callback[pcmd->cmdcode].callback;
 			if (!pcmd_callback) {
-				RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("mlme_cmd_hdl(): pcmd_callback = 0x%p, cmdcode = 0x%x\n", pcmd_callback, pcmd->cmdcode));
+				RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_,
+					 ("mlme_cmd_hdl(): pcmd_callback = 0x%p, cmdcode = 0x%x\n",
+					  pcmd_callback, pcmd->cmdcode));
 				rtw_free_cmd_obj(pcmd);
 			} else {
 				/* todo: !!! fill rsp_buf to pcmd->rsp if (pcmd->rsp!= NULL) */
 				pcmd_callback(pcmd->padapter, pcmd);/* need consider that free cmd_obj in rtw_cmd_callback */
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("%s: cmdcode = 0x%x callback not defined!\n", __func__, pcmd->cmdcode));
+			RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
+				 ("%s: cmdcode = 0x%x callback not defined!\n",
+				  __func__, pcmd->cmdcode));
 			rtw_free_cmd_obj(pcmd);
 		}
 
@@ -264,7 +270,8 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
 
 		for (i = 0; i < ssid_num && i < RTW_SSID_SCAN_AMOUNT; i++) {
 			if (ssid[i].ssid_length) {
-				memcpy(&psurveyPara->ssid[i], &ssid[i], sizeof(struct ndis_802_11_ssid));
+				memcpy(&psurveyPara->ssid[i], &ssid[i],
+				       sizeof(struct ndis_802_11_ssid));
 				psurveyPara->ssid_num++;
 			}
 		}
@@ -276,7 +283,8 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
 
 		for (i = 0; i < ch_num && i < RTW_CHANNEL_SCAN_AMOUNT; i++) {
 			if (ch[i].hw_value && !(ch[i].flags & RTW_IEEE80211_CHAN_DISABLED)) {
-				memcpy(&psurveyPara->ch[i], &ch[i], sizeof(struct rtw_ieee80211_channel));
+				memcpy(&psurveyPara->ch[i], &ch[i],
+				       sizeof(struct rtw_ieee80211_channel));
 				psurveyPara->ch_num++;
 			}
 		}
@@ -317,9 +325,11 @@ u8 rtw_createbss_cmd(struct adapter  *padapter)
 	led_control_8188eu(padapter, LED_CTL_START_TO_LINK);
 
 	if (pmlmepriv->assoc_ssid.ssid_length == 0)
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, (" createbss for Any SSid:%s\n", pmlmepriv->assoc_ssid.ssid));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_,
+			 (" createbss for Any SSid:%s\n", pmlmepriv->assoc_ssid.ssid));
 	else
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, (" createbss for SSid:%s\n", pmlmepriv->assoc_ssid.ssid));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_,
+			 (" createbss for SSid:%s\n", pmlmepriv->assoc_ssid.ssid));
 
 	pcmd = kzalloc(sizeof(*pcmd), GFP_ATOMIC);
 	if (!pcmd) {
@@ -361,7 +371,8 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	if (pmlmepriv->assoc_ssid.ssid_length == 0)
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("+Join cmd: Any SSid\n"));
 	else
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, ("+Join cmd: SSid =[%s]\n", pmlmepriv->assoc_ssid.ssid));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_,
+			 ("+Join cmd: SSid =[%s]\n", pmlmepriv->assoc_ssid.ssid));
 
 	pcmd = kzalloc(sizeof(*pcmd), GFP_ATOMIC);
 	if (!pcmd) {
@@ -406,7 +417,8 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	psecuritypriv->authenticator_ie[0] = (unsigned char)psecnetwork->ie_length;
 
 	if (psecnetwork->ie_length - 12 < 255)
-		memcpy(&psecuritypriv->authenticator_ie[1], &psecnetwork->ies[12], psecnetwork->ie_length - 12);
+		memcpy(&psecuritypriv->authenticator_ie[1], &psecnetwork->ies[12],
+		       psecnetwork->ie_length - 12);
 	else
 		memcpy(&psecuritypriv->authenticator_ie[1], &psecnetwork->ies[12], 255);
 
@@ -419,14 +431,19 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	if (!pmlmepriv->assoc_by_bssid)
 		memcpy(&pmlmepriv->assoc_bssid[0], &pnetwork->network.MacAddress[0], ETH_ALEN);
 
-	psecnetwork->ie_length = rtw_restruct_sec_ie(padapter, &pnetwork->network.ies[0], &psecnetwork->ies[0], pnetwork->network.ie_length);
+	psecnetwork->ie_length = rtw_restruct_sec_ie(padapter, &pnetwork->network.ies[0],
+						     &psecnetwork->ies[0],
+						     pnetwork->network.ie_length);
 
 	pqospriv->qos_option = 0;
 
 	if (pregistrypriv->wmm_enable) {
 		u32 tmp_len;
 
-		tmp_len = rtw_restruct_wmm_ie(padapter, &pnetwork->network.ies[0], &psecnetwork->ies[0], pnetwork->network.ie_length, psecnetwork->ie_length);
+		tmp_len = rtw_restruct_wmm_ie(padapter, &pnetwork->network.ies[0],
+					      &psecnetwork->ies[0],
+					      pnetwork->network.ie_length,
+					      psecnetwork->ie_length);
 
 		if (psecnetwork->ie_length != tmp_len) {
 			psecnetwork->ie_length = tmp_len;
@@ -448,7 +465,8 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 		    (padapter->securitypriv.dot11PrivacyAlgrthm != _WEP104_) &&
 		    (padapter->securitypriv.dot11PrivacyAlgrthm != _TKIP_)) {
 			/* rtw_restructure_ht_ie */
-			rtw_restructure_ht_ie(padapter, &pnetwork->network.ies[0], &psecnetwork->ies[0],
+			rtw_restructure_ht_ie(padapter, &pnetwork->network.ies[0],
+					      &psecnetwork->ies[0],
 					      pnetwork->network.ie_length, &psecnetwork->ie_length);
 		}
 	}
@@ -573,7 +591,8 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, u8 *psta, u8 unicast_key)
 	if (unicast_key)
 		memcpy(&psetstakey_para->key, &sta->dot118021x_UncstKey, 16);
 	else
-		memcpy(&psetstakey_para->key, &psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey, 16);
+		memcpy(&psetstakey_para->key,
+		       &psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey, 16);
 
 	/* jeff: set this because at least sw key is ready */
 	padapter->securitypriv.busetkipkey = true;
@@ -760,7 +779,8 @@ static void traffic_status_watchdog(struct adapter *padapter)
 		    pmlmepriv->LinkDetectInfo.NumTxOkInPeriod > 100) {
 			bBusyTraffic = true;
 
-			if (pmlmepriv->LinkDetectInfo.NumRxOkInPeriod > pmlmepriv->LinkDetectInfo.NumTxOkInPeriod)
+			if (pmlmepriv->LinkDetectInfo.NumRxOkInPeriod >
+			    pmlmepriv->LinkDetectInfo.NumTxOkInPeriod)
 				bRxBusyTraffic = true;
 			else
 				bTxBusyTraffic = true;
@@ -771,7 +791,8 @@ static void traffic_status_watchdog(struct adapter *padapter)
 		    pmlmepriv->LinkDetectInfo.NumTxOkInPeriod > 4000) {
 			bHigherBusyTraffic = true;
 
-			if (pmlmepriv->LinkDetectInfo.NumRxOkInPeriod > pmlmepriv->LinkDetectInfo.NumTxOkInPeriod)
+			if (pmlmepriv->LinkDetectInfo.NumRxOkInPeriod >
+			    pmlmepriv->LinkDetectInfo.NumTxOkInPeriod)
 				bHigherBusyRxTraffic = true;
 			else
 				bHigherBusyTxTraffic = true;
@@ -1127,7 +1148,8 @@ void rtw_survey_cmd_callback(struct adapter *padapter,  struct cmd_obj *pcmd)
 	} else if (pcmd->res != H2C_SUCCESS) {
 		mod_timer(&pmlmepriv->scan_to_timer,
 			  jiffies + msecs_to_jiffies(1));
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n ********Error: MgntActrtw_set_802_11_bssid_LIST_SCAN Fail ************\n\n."));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
+			 ("\n ********Error: MgntActrtw_set_802_11_bssid_LIST_SCAN Fail ************\n\n."));
 	}
 
 	/*  free cmd */
@@ -1143,7 +1165,8 @@ void rtw_disassoc_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 		set_fwstate(pmlmepriv, _FW_LINKED);
 		spin_unlock_bh(&pmlmepriv->lock);
 
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n ***Error: disconnect_cmd_callback Fail ***\n."));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
+			 ("\n ***Error: disconnect_cmd_callback Fail ***\n."));
 		return;
 	}
 
@@ -1161,7 +1184,8 @@ void rtw_joinbss_cmd_callback(struct adapter *padapter,  struct cmd_obj *pcmd)
 		mod_timer(&pmlmepriv->assoc_timer,
 			  jiffies + msecs_to_jiffies(1));
 	} else if (pcmd->res != H2C_SUCCESS) {
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("********Error:rtw_select_and_join_from_scanned_queue Wait Sema  Fail ************\n"));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
+			 ("********Error:rtw_select_and_join_from_scanned_queue Wait Sema  Fail ************\n"));
 		mod_timer(&pmlmepriv->assoc_timer,
 			  jiffies + msecs_to_jiffies(1));
 	}
@@ -1193,7 +1217,8 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 		if (!psta) {
 			psta = rtw_alloc_stainfo(&padapter->stapriv, pnetwork->MacAddress);
 			if (!psta) {
-				RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nCan't alloc sta_info when createbss_cmd_callback\n"));
+				RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
+					 ("\nCan't alloc sta_info when createbss_cmd_callback\n"));
 				goto createbss_cmd_fail;
 			}
 		}
@@ -1205,7 +1230,8 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 		if (!pwlan) {
 			pwlan = rtw_get_oldest_wlan_network(&pmlmepriv->scanned_queue);
 			if (!pwlan) {
-				RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n Error:  can't get pwlan in rtw_joinbss_event_callback\n"));
+				RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
+					 ("\n Error:  can't get pwlan in rtw_joinbss_event_callback\n"));
 				spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
 				goto createbss_cmd_fail;
 			}
@@ -1242,7 +1268,8 @@ void rtw_setstaKey_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *pc
 	struct sta_info *psta = rtw_get_stainfo(pstapriv, psetstakey_rsp->addr);
 
 	if (!psta) {
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nERROR: %s => can't get sta_info\n\n", __func__));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
+			 ("\nERROR: %s => can't get sta_info\n\n", __func__));
 		goto exit;
 	}
 exit:
@@ -1258,7 +1285,8 @@ void rtw_setassocsta_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *
 	struct sta_info *psta = rtw_get_stainfo(pstapriv, passocsta_parm->addr);
 
 	if (!psta) {
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nERROR: %s => can't get sta_info\n\n", __func__));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
+			 ("\nERROR: %s => can't get sta_info\n\n", __func__));
 		goto exit;
 	}
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC9E2ACE65
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 05:10:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E0409865E2;
	Tue, 10 Nov 2020 04:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lmzk-+w+0BDG; Tue, 10 Nov 2020 04:10:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99F0C868B2;
	Tue, 10 Nov 2020 04:10:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B07E11BF97F
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ADA448648E
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4CiJekvpo8nP for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 04:10:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AD2C386475
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 04:10:28 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id t8so7829521iov.8
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 20:10:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pO6HhvgMe3V0J4Q/nkktwPgnvrtVdBtv4MCewO/AMUA=;
 b=JLCDilcsaYPPmqefoU9nvexqyFiUcB9f/A3psey532ImQSDKUCQ3F9D4TqDqxamES1
 j/3c3q9eVnk0GLehC76Zd15dyNWwJtMhZQOKGWREEb6sfBdoe30vhStwJgnbtFMf0K9I
 tThaMe57ezk0k5IDirsWKkJA9MN326gbJwRMMeH+hU2VUgdVfRcIF5yWcJDZJdXlv1Jg
 aROKG2nb+Rw4dKcfLe9avE0AWL23WqigOiAXAs2JvQSrjx3kGzKgHSqsQK/jPqv5Hzj6
 jh3pndvY2phtSpMrxUlOjNxITgroMdYqIDyURT3xkq3xrrry9QC4eSCL331xjrP73zDf
 36Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pO6HhvgMe3V0J4Q/nkktwPgnvrtVdBtv4MCewO/AMUA=;
 b=FerBVE4goowqYhPC5Um+fmmKn2E8ZmjYl/VOKGYnHw+9I5BX4v3v5vDJuZKjnm49cg
 4UvF6e416VZDCfNDrdyfct85ZVTII8zbEMBbwQ2LA97fedXrzh3HGFd97lKCvAjsUpap
 ken87KHRHZQ+xBmZ0zwSSWQxXxgSLbAbdYuxKEf5OIHMpcUy4iPOYzFywmk0pyM6i1v0
 U89Fn2OfGd+MhamOEe7Nv8+tql4rBGitlokH69RI3RsuRCfiDtsIzgIyjK8VA9ae+Wsc
 WGGMYXC4tqtO4JVrZ7mQAlvxcBrXTGaLCHTVbcgAVG36vb/g04IPshGs03fFaJc+0T8L
 nGvQ==
X-Gm-Message-State: AOAM531hKSZIAJs2XrhwFo2i4fX7kK482WP9Ty29aday9mrfV5z/jdP6
 MkMKiNFqOH7/6EsPpZD4+ZE=
X-Google-Smtp-Source: ABdhPJzDgzYeS9jmWBUn4ju4koS/CU+owiehG5FeT5J71k/A/z/aQYbYdYSiWVSVc/Lju/38X8Dmnw==
X-Received: by 2002:a5d:9ec1:: with SMTP id a1mr4080995ioe.133.1604981428030; 
 Mon, 09 Nov 2020 20:10:28 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id e21sm6658842ioc.0.2020.11.09.20.10.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 20:10:27 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 08/10] staging: rtl8723bs: clean up logical continuations
Date: Mon,  9 Nov 2020 22:10:06 -0600
Message-Id: <20201110041008.15847-8-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201110041008.15847-1-ross.schm.dev@gmail.com>
References: <20201110041008.15847-1-ross.schm.dev@gmail.com>
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

Move operators to fix coding style issues and clear checkpatch checks.

CHECK: Logical continuations should be on the previous line

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  | 41 +++++++------------
 drivers/staging/rtl8723bs/core/rtw_recv.c     | 27 ++++++------
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |  6 +--
 drivers/staging/rtl8723bs/core/rtw_xmit.c     |  6 +--
 4 files changed, 34 insertions(+), 46 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 90e222a9c93b..5b05d1eaa328 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -451,9 +451,8 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 			hal_btcoex_LpsNotify(padapter, ps_mode);
 		}
 	} else {
-		if ((PS_RDY_CHECK(padapter) && check_fwstate(&padapter->mlmepriv, WIFI_ASOC_STATE))
-			|| ((hal_btcoex_IsBtControlLps(padapter))
-				&& (hal_btcoex_IsLpsOn(padapter)))
+		if ((PS_RDY_CHECK(padapter) && check_fwstate(&padapter->mlmepriv, WIFI_ASOC_STATE)) ||
+		    ((hal_btcoex_IsBtControlLps(padapter)) && (hal_btcoex_IsLpsOn(padapter)))
 			) {
 			u8 pslv;
 
@@ -472,8 +471,8 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 			if (pwrpriv->alives == 0)
 				pslv = PS_STATE_S0;
 
-			if (!(hal_btcoex_IsBtDisabled(padapter))
-				&& (hal_btcoex_IsBtControlLps(padapter))) {
+			if (!(hal_btcoex_IsBtDisabled(padapter)) &&
+			    (hal_btcoex_IsBtControlLps(padapter))) {
 				u8 val8;
 
 				val8 = hal_btcoex_LpsVal(padapter);
@@ -688,9 +687,9 @@ void LPS_Leave_check(struct adapter *padapter)
 	while (1) {
 		mutex_lock(&pwrpriv->lock);
 
-		if (padapter->bSurpriseRemoved
-			|| !(padapter->hw_init_completed)
-			|| (pwrpriv->pwr_mode == PS_MODE_ACTIVE))
+		if (padapter->bSurpriseRemoved ||
+		    !(padapter->hw_init_completed) ||
+		    (pwrpriv->pwr_mode == PS_MODE_ACTIVE))
 			bReady = true;
 
 		mutex_unlock(&pwrpriv->lock);
@@ -897,8 +896,7 @@ void rtw_unregister_task_alive(struct adapter *padapter, u32 task)
 	pwrctrl = adapter_to_pwrctl(padapter);
 	pslv = PS_STATE_S0;
 
-	if (!(hal_btcoex_IsBtDisabled(padapter))
-	    && hal_btcoex_IsBtControlLps(padapter)) {
+	if (!(hal_btcoex_IsBtDisabled(padapter)) && hal_btcoex_IsBtControlLps(padapter)) {
 		u8 val8;
 
 		val8 = hal_btcoex_LpsVal(padapter);
@@ -910,8 +908,7 @@ void rtw_unregister_task_alive(struct adapter *padapter, u32 task)
 
 	unregister_task_alive(pwrctrl, task);
 
-	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE)
-	    && pwrctrl->bFwCurrentInPSMode) {
+	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) && pwrctrl->bFwCurrentInPSMode) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_notice_,
 				 ("%s: cpwm = 0x%02x alives = 0x%08x\n",
 				  __func__, pwrctrl->cpwm, pwrctrl->alives));
@@ -1038,8 +1035,7 @@ void rtw_unregister_tx_alive(struct adapter *padapter)
 	pwrctrl = adapter_to_pwrctl(padapter);
 	pslv = PS_STATE_S0;
 
-	if (!(hal_btcoex_IsBtDisabled(padapter))
-		&& hal_btcoex_IsBtControlLps(padapter)) {
+	if (!(hal_btcoex_IsBtDisabled(padapter)) && hal_btcoex_IsBtControlLps(padapter)) {
 		u8 val8;
 
 		val8 = hal_btcoex_LpsVal(padapter);
@@ -1051,8 +1047,7 @@ void rtw_unregister_tx_alive(struct adapter *padapter)
 
 	unregister_task_alive(pwrctrl, XMIT_ALIVE);
 
-	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE)
-		&& pwrctrl->bFwCurrentInPSMode) {
+	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) && pwrctrl->bFwCurrentInPSMode) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_notice_,
 				 ("%s: cpwm = 0x%02x alives = 0x%08x\n",
 				  __func__, pwrctrl->cpwm, pwrctrl->alives));
@@ -1080,8 +1075,7 @@ void rtw_unregister_cmd_alive(struct adapter *padapter)
 	pwrctrl = adapter_to_pwrctl(padapter);
 	pslv = PS_STATE_S0;
 
-	if (!(hal_btcoex_IsBtDisabled(padapter))
-	    && hal_btcoex_IsBtControlLps(padapter)) {
+	if (!(hal_btcoex_IsBtDisabled(padapter)) && hal_btcoex_IsBtControlLps(padapter)) {
 		u8 val8;
 
 		val8 = hal_btcoex_LpsVal(padapter);
@@ -1093,8 +1087,7 @@ void rtw_unregister_cmd_alive(struct adapter *padapter)
 
 	unregister_task_alive(pwrctrl, CMD_ALIVE);
 
-	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE)
-	    && pwrctrl->bFwCurrentInPSMode) {
+	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE) && pwrctrl->bFwCurrentInPSMode) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_info_,
 				 ("%s: cpwm = 0x%02x alives = 0x%08x\n",
 				  __func__, pwrctrl->cpwm, pwrctrl->alives));
@@ -1226,8 +1219,7 @@ int _rtw_pwr_wakeup(struct adapter *padapter, u32 ips_deffer_ms, const char *cal
 
 	if (!(pwrpriv->bInternalAutoSuspend) && pwrpriv->bInSuspend) {
 		DBG_871X("%s wait bInSuspend...\n", __func__);
-		while (pwrpriv->bInSuspend
-			&& jiffies_to_msecs(jiffies - start) <= 3000
+		while (pwrpriv->bInSuspend && jiffies_to_msecs(jiffies - start) <= 3000
 		) {
 			mdelay(10);
 		}
@@ -1267,10 +1259,7 @@ int _rtw_pwr_wakeup(struct adapter *padapter, u32 ips_deffer_ms, const char *cal
 	}
 
 	/* TODO: the following checking need to be merged... */
-	if (padapter->bDriverStopped
-		|| !padapter->bup
-		|| !padapter->hw_init_completed
-	) {
+	if (padapter->bDriverStopped || !padapter->bup || !padapter->hw_init_completed) {
 		DBG_8192C("%s: bDriverStopped =%d, bup =%d, hw_init_completed =%u\n"
 			, caller
 			, padapter->bDriverStopped
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index e1528b51c17e..43e67e48d2df 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -499,9 +499,8 @@ union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_fr
 		default:
 				break;
 		}
-	} else if (prxattrib->bdecrypted == 1
-		&& prxattrib->encrypt > 0
-		&& (psecuritypriv->busetkipkey == 1 || prxattrib->encrypt != _TKIP_)
+	} else if (prxattrib->bdecrypted == 1 && prxattrib->encrypt > 0 &&
+		   (psecuritypriv->busetkipkey == 1 || prxattrib->encrypt != _TKIP_)
 		) {
 		DBG_COUNTER(padapter->rx_logs.core_rx_post_decrypt_hw);
 
@@ -874,9 +873,9 @@ sint ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 	u8 *myhwaddr = myid(&adapter->eeprompriv);
 	sint bmcast = IS_MCAST(pattrib->dst);
 
-	if ((check_fwstate(pmlmepriv, WIFI_STATION_STATE) == true)
-		&& (check_fwstate(pmlmepriv, _FW_LINKED) == true
-			|| check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true)
+	if ((check_fwstate(pmlmepriv, WIFI_STATION_STATE) == true) &&
+	    (check_fwstate(pmlmepriv, _FW_LINKED) == true ||
+	     check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true)
 		) {
 
 		/*  filter packets that SA is myself or multicast or broadcast */
@@ -1226,8 +1225,8 @@ sint validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_
 			else if (GetFrameSubType(precv_frame->u.hdr.rx_data) == WIFI_PROBERSP) {
 				if (!memcmp(padapter->eeprompriv.mac_addr, GetAddr1Ptr(precv_frame->u.hdr.rx_data), ETH_ALEN))
 					psta->sta_stats.rx_probersp_pkts++;
-				else if (is_broadcast_mac_addr(GetAddr1Ptr(precv_frame->u.hdr.rx_data))
-					|| is_multicast_mac_addr(GetAddr1Ptr(precv_frame->u.hdr.rx_data)))
+				else if (is_broadcast_mac_addr(GetAddr1Ptr(precv_frame->u.hdr.rx_data)) ||
+					 is_multicast_mac_addr(GetAddr1Ptr(precv_frame->u.hdr.rx_data)))
 					psta->sta_stats.rx_probersp_bm_pkts++;
 				else
 					psta->sta_stats.rx_probersp_uo_pkts++;
@@ -1388,8 +1387,8 @@ static sint validate_80211w_mgmt(struct adapter *adapter, union recv_frame *prec
 	subtype = GetFrameSubType(ptr); /* bit(7)~bit(2) */
 
 	/* only support station mode */
-	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) && check_fwstate(pmlmepriv, _FW_LINKED)
-		&& adapter->securitypriv.binstallBIPkey == true) {
+	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) && check_fwstate(pmlmepriv, _FW_LINKED) &&
+	    adapter->securitypriv.binstallBIPkey == true) {
 		/* unicast management frame decrypt */
 		if (pattrib->privacy && !(IS_MCAST(GetAddr1Ptr(ptr))) &&
 			(subtype == WIFI_DEAUTH || subtype == WIFI_DISASSOC || subtype == WIFI_ACTION)) {
@@ -2601,15 +2600,15 @@ static void rtw_signal_stat_timer_hdl(struct timer_list *t)
 		}
 
 		if (num_signal_strength == 0) {
-			if (rtw_get_on_cur_ch_time(adapter) == 0
-				|| jiffies_to_msecs(jiffies - rtw_get_on_cur_ch_time(adapter)) < 2 * adapter->mlmeextpriv.mlmext_info.bcn_interval
+			if (rtw_get_on_cur_ch_time(adapter) == 0 ||
+			    jiffies_to_msecs(jiffies - rtw_get_on_cur_ch_time(adapter)) < 2 * adapter->mlmeextpriv.mlmext_info.bcn_interval
 			) {
 				goto set_timer;
 			}
 		}
 
-		if (check_fwstate(&adapter->mlmepriv, _FW_UNDER_SURVEY) == true
-			|| check_fwstate(&adapter->mlmepriv, _FW_LINKED) == false
+		if (check_fwstate(&adapter->mlmepriv, _FW_UNDER_SURVEY) == true ||
+		    check_fwstate(&adapter->mlmepriv, _FW_LINKED) == false
 		) {
 			goto set_timer;
 		}
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index a6176e86f370..45e5f06f0004 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1584,9 +1584,9 @@ unsigned char check_assoc_AP(u8 *pframe, uint len)
 			if ((!memcmp(pIE->data, ARTHEROS_OUI1, 3)) || (!memcmp(pIE->data, ARTHEROS_OUI2, 3))) {
 				DBG_871X("link to Artheros AP\n");
 				return HT_IOT_PEER_ATHEROS;
-			} else if ((!memcmp(pIE->data, BROADCOM_OUI1, 3))
-						|| (!memcmp(pIE->data, BROADCOM_OUI2, 3))
-						|| (!memcmp(pIE->data, BROADCOM_OUI3, 3))) {
+			} else if ((!memcmp(pIE->data, BROADCOM_OUI1, 3)) ||
+				   (!memcmp(pIE->data, BROADCOM_OUI2, 3)) ||
+				   (!memcmp(pIE->data, BROADCOM_OUI3, 3))) {
 				DBG_871X("link to Broadcom AP\n");
 				return HT_IOT_PEER_BROADCOM;
 			} else if (!memcmp(pIE->data, MARVELL_OUI, 3)) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index b69998c5c07e..6582f2d7c383 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -2173,9 +2173,9 @@ inline bool xmitframe_hiq_filter(struct xmit_frame *xmitframe)
 	if (registry->hiq_filter == RTW_HIQ_FILTER_ALLOW_SPECIAL) {
 		struct pkt_attrib *attrib = &xmitframe->attrib;
 
-		if (attrib->ether_type == 0x0806
-			|| attrib->ether_type == 0x888e
-			|| attrib->dhcp_pkt
+		if (attrib->ether_type == 0x0806 ||
+		    attrib->ether_type == 0x888e ||
+		    attrib->dhcp_pkt
 		) {
 			DBG_871X(FUNC_ADPT_FMT" ether_type:0x%04x%s\n", FUNC_ADPT_ARG(xmitframe->padapter)
 				, attrib->ether_type, attrib->dhcp_pkt?" DHCP":"");
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

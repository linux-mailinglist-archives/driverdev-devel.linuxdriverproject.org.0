Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2553D1FCD
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 06:50:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CC65886B46;
	Thu, 10 Oct 2019 04:50:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nroLBvnNUMNP; Thu, 10 Oct 2019 04:50:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 209AA86B34;
	Thu, 10 Oct 2019 04:50:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E7311BF5A3
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 04:50:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 756DB87C05
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 04:50:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MBzrsW88nzi5 for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 04:50:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6A7988771E
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 04:50:26 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id p30so2857436pgl.2
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 21:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MLjqcWxC5TPYbxiDmod0GjUGNGhzRXkDCxMiP0k/y4M=;
 b=R/3Qd6t+4d5PwyQeVTpFpPnPdY4BP+zlpvTXL9DYzQcdO4WqzqoMT63Ax4Hs60wTnD
 yhjVdGHkGJDeCJ3+5eRykDQ9SZFI1ilxKxDCj6fsfYrfGDropohOYN2hihVsftceKTEk
 g9K2eT/Zvp8b4t3lmdJ0vL7mQrSNTP4lptDMjS4/ZF30Ioicv0imAEpdqEVPHphttv5Y
 6nruV3Nzpd2jD0RFVemajUYEkDnluA29Ut4QvYsW5FxdSswv5pGM+dHrOZULhBhQqeMg
 NXvaNEnkiXRhdmg9H+iunD1K9gz1kq23unEGUbYGsC4KOTSsS8qYcPWV3ixA9furm5Yy
 2srg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MLjqcWxC5TPYbxiDmod0GjUGNGhzRXkDCxMiP0k/y4M=;
 b=CYXnr4HCx+0Gr6zbRSGbMgjtsctWUvNC52KPk/e1U2AK6DWe8VIwuB1F76N9kxOauk
 fnwC1ovzsvZO/HrUtjo+DdpBn9m2MYM/Z4rdbCa9TQxj8eKgvPWLrHDmDw1sNs0baqKf
 tc5etAJhK9wf8FdQVhI6qEKrJ5tFUl+9SO8JSRXI7KYeUOUW+m9mGe3Wfn/PWpjwwzNm
 3y06y1za0AfP82PB3tR1AOg/6lPFR5At+t3rYZu8xs/LNyrze41WAdCsRSMg1ORUwgEJ
 J5TkaJR9wzcGXnHLU08v1sqG9Y4iluzi1B1TQX99qKmzkzz07Qbtb0ySfhLSE+LB1MRw
 roVQ==
X-Gm-Message-State: APjAAAXf7DCm0rD958rvecoo3CXaL/hWlwAZhYa4La/DdT7TVHNPTucv
 IFPmSJ0C1KzmrKjxnBhEAhI=
X-Google-Smtp-Source: APXvYqysheZ48EnJ/hRYRcux13xgpY42RIWTGPh2jkA1Qgfl+JCFFLfNupjbLt3szJX3I/Yj3EvV5A==
X-Received: by 2002:aa7:8b02:: with SMTP id f2mr5702820pfd.151.1570683026386; 
 Wed, 09 Oct 2019 21:50:26 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id q20sm4520090pfl.79.2019.10.09.21.50.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 21:50:25 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/4] staging: rtl8723bs: Remove comparisons to NULL in
 conditionals
Date: Thu, 10 Oct 2019 07:49:05 +0300
Message-Id: <da71920fa80298badcced3519f2b84afbdd28a7e.1570682635.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570682635.git.wambui.karugax@gmail.com>
References: <cover.1570682635.git.wambui.karugax@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove most comparisons to NULL in conditionals in
drivers/staging/rtl8723bs/core/rtw_mlme.c
Issues reported by checkpatch.pl as:
CHECK: Comparison to NULL could be written

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 46 +++++++++++------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 0ac7712223af..7f27287223e8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -40,7 +40,7 @@ int	rtw_init_mlme_priv(struct adapter *padapter)
 
 	pbuf = vzalloc(array_size(MAX_BSS_CNT, sizeof(struct wlan_network)));
 
-	if (pbuf == NULL) {
+	if (!pbuf) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -185,7 +185,7 @@ void _rtw_free_network(struct	mlme_priv *pmlmepriv, struct wlan_network *pnetwor
 /* 	_irqL irqL; */
 	struct __queue *free_queue = &(pmlmepriv->free_bss_pool);
 
-	if (pnetwork == NULL)
+	if (!pnetwork)
 		return;
 
 	if (pnetwork->fixed == true)
@@ -220,7 +220,7 @@ void _rtw_free_network_nolock(struct	mlme_priv *pmlmepriv, struct wlan_network *
 
 	struct __queue *free_queue = &(pmlmepriv->free_bss_pool);
 
-	if (pnetwork == NULL)
+	if (!pnetwork)
 		return;
 
 	if (pnetwork->fixed == true)
@@ -633,7 +633,7 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 			/* If there are no more slots, expire the oldest */
 			/* list_del_init(&oldest->list); */
 			pnetwork = oldest;
-			if (pnetwork == NULL) {
+			if (!pnetwork) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("\n\n\nsomething wrong here\n\n\n"));
 				goto exit;
 			}
@@ -654,7 +654,7 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 
 			pnetwork = rtw_alloc_network(pmlmepriv); /*  will update scan_time */
 
-			if (pnetwork == NULL) {
+			if (!pnetwork) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("\n\n\nsomething wrong here\n\n\n"));
 				goto exit;
 			}
@@ -738,7 +738,7 @@ int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *pnetwor
 	privacy = pnetwork->network.Privacy;
 
 	if (check_fwstate(pmlmepriv, WIFI_UNDER_WPS)) {
-		if (rtw_get_wps_ie(pnetwork->network.IEs+_FIXED_IE_LENGTH_, pnetwork->network.IELength-_FIXED_IE_LENGTH_, NULL, &wps_ielen) != NULL)
+		if (rtw_get_wps_ie(pnetwork->network.IEs+_FIXED_IE_LENGTH_, pnetwork->network.IELength-_FIXED_IE_LENGTH_, NULL, &wps_ielen))
 			return true;
 		else
 			return false;
@@ -1166,7 +1166,7 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 
 	psta = rtw_get_stainfo(pstapriv, pnetwork->network.MacAddress);
-	if (psta == NULL) {
+	if (!psta) {
 		psta = rtw_alloc_stainfo(pstapriv, pnetwork->network.MacAddress);
 	}
 
@@ -1413,7 +1413,7 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 			/* s3. find ptarget_sta & update ptarget_sta after update cur_network only for station mode */
 			if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) == true) {
 				ptarget_sta = rtw_joinbss_update_stainfo(adapter, pnetwork);
-				if (ptarget_sta == NULL) {
+				if (!ptarget_sta) {
 					RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Can't update stainfo when joinbss_event callback\n"));
 					spin_unlock_bh(&(pmlmepriv->scanned_queue.lock));
 					goto ignore_joinbss_callback;
@@ -1503,7 +1503,7 @@ void rtw_sta_media_status_rpt(struct adapter *adapter, struct sta_info *psta, u3
 {
 	u16 media_status_rpt;
 
-	if (psta == NULL)
+	if (!psta)
 		return;
 
 	media_status_rpt = (u16)((psta->mac_id<<8)|mstatus); /*   MACID|OPMODE:1 connect */
@@ -1561,7 +1561,7 @@ void rtw_stassoc_event_callback(struct adapter *adapter, u8 *pbuf)
 
 	/* for AD-HOC mode */
 	psta = rtw_get_stainfo(&adapter->stapriv, pstassoc->macaddr);
-	if (psta != NULL) {
+	if (psta) {
 		/* the sta have been in sta_info_queue => do nothing */
 
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Error: rtw_stassoc_event_callback: sta has been in sta_hash_queue\n"));
@@ -1570,7 +1570,7 @@ void rtw_stassoc_event_callback(struct adapter *adapter, u8 *pbuf)
 	}
 
 	psta = rtw_alloc_stainfo(&adapter->stapriv, pstassoc->macaddr);
-	if (psta == NULL) {
+	if (!psta) {
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Can't alloc sta_info when rtw_stassoc_event_callback\n"));
 		return;
 	}
@@ -1993,7 +1993,7 @@ int rtw_select_roaming_candidate(struct mlme_priv *mlme)
 	struct	wlan_network	*pnetwork = NULL;
 	struct	wlan_network	*candidate = NULL;
 
-	if (mlme->cur_network_scanned == NULL) {
+	if (!mlme->cur_network_scanned) {
 		rtw_warn_on(1);
 		return ret;
 	}
@@ -2006,7 +2006,7 @@ int rtw_select_roaming_candidate(struct mlme_priv *mlme)
 	while (phead != mlme->pscanned) {
 
 		pnetwork = LIST_CONTAINOR(mlme->pscanned, struct wlan_network, list);
-		if (pnetwork == NULL) {
+		if (!pnetwork) {
 			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s return _FAIL:(pnetwork == NULL)\n", __func__));
 			ret = _FAIL;
 			goto exit;
@@ -2024,7 +2024,7 @@ int rtw_select_roaming_candidate(struct mlme_priv *mlme)
 
 	}
 
-	if (candidate == NULL) {
+	if (!candidate) {
 		DBG_871X("%s: return _FAIL(candidate == NULL)\n", __func__);
 		ret = _FAIL;
 		goto exit;
@@ -2141,7 +2141,7 @@ int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
 	while (phead != pmlmepriv->pscanned) {
 
 		pnetwork = LIST_CONTAINOR(pmlmepriv->pscanned, struct wlan_network, list);
-		if (pnetwork == NULL) {
+		if (!pnetwork) {
 			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s return _FAIL:(pnetwork == NULL)\n", __func__));
 			ret = _FAIL;
 			goto exit;
@@ -2159,7 +2159,7 @@ int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
 
 	}
 
-	if (candidate == NULL) {
+	if (!candidate) {
 		DBG_871X("%s: return _FAIL(candidate == NULL)\n", __func__);
 #ifdef CONFIG_WOWLAN
 		_clr_fwstate_(pmlmepriv, _FW_LINKED|_FW_UNDER_LINKING);
@@ -2200,13 +2200,13 @@ sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
 	sint		res = _SUCCESS;
 
 	pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (pcmd == NULL) {
+	if (!pcmd) {
 		res = _FAIL;  /* try again */
 		goto exit;
 	}
 
 	psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
-	if (psetauthparm == NULL) {
+	if (!psetauthparm) {
 		kfree((unsigned char *)pcmd);
 		res = _FAIL;
 		goto exit;
@@ -2240,7 +2240,7 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
 	sint	res = _SUCCESS;
 
 	psetkeyparm = rtw_zmalloc(sizeof(struct setkey_parm));
-	if (psetkeyparm == NULL) {
+	if (!psetkeyparm) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -2291,7 +2291,7 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
 
 	if (enqueue) {
 		pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
-		if (pcmd == NULL) {
+		if (!pcmd) {
 			kfree((unsigned char *)psetkeyparm);
 			res = _FAIL;  /* try again */
 			goto exit;
@@ -2672,7 +2672,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 		ht_capie.cap_info |= cpu_to_le16(IEEE80211_HT_CAP_SGI_20);
 
 	/* Get HT BW */
-	if (in_ie == NULL) {
+	if (!in_ie) {
 		/* TDLS: TODO 20/40 issue */
 		if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
 			operation_bw = padapter->mlmeextpriv.cur_bwmode;
@@ -2787,7 +2787,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 
 	phtpriv->ht_option = true;
 
-	if (in_ie != NULL) {
+	if (in_ie) {
 		p = rtw_get_ie(in_ie, _HT_ADD_INFO_IE_, &ielen, in_len);
 		if (p && (ielen == sizeof(struct ieee80211_ht_addt_info))) {
 			out_len = *pout_len;
@@ -2954,7 +2954,7 @@ void rtw_issue_addbareq_cmd(struct adapter *padapter, struct xmit_frame *pxmitfr
 		return;
 	}
 
-	if (psta == NULL) {
+	if (!psta) {
 		DBG_871X("%s, psta ==NUL\n", __func__);
 		return;
 	}
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

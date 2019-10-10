Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D94D1FD0
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 06:51:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A76E486B57;
	Thu, 10 Oct 2019 04:51:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jrOLqK-wi07I; Thu, 10 Oct 2019 04:51:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 23DF786B23;
	Thu, 10 Oct 2019 04:51:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 874A31BF9B9
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 04:51:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7F51086B1A
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 04:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bTtP10PKKhUX for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 04:51:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 929D486B3A
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 04:51:14 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id p1so2848116pgi.4
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 21:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LfoqiSwp30V071fHKA2y9Yd6MO8Rixw4X6avtlAC6tE=;
 b=j/z8tKSbkfVWK1ycRkx/fbToMv4se4n6/lTodHr1FgXFKzJocs1nkuuinslsKcjr/z
 6h9vxr2QRQZkgvzUBwNuK4Y1xlXS4JKhfHDQWqQEONb9rSfk9QCTYL+BhAjNkH3Ze9eH
 5JiwK2r2waLpxn6unnQ8hjUUVAVtvOdFQX1JO/neuIJMzQo+z1KjjO3sWvJRqZCGtIDA
 g8Y9sXfYM+q8jv7gaB7RYAajeUyhr/to/1oeP0K1+RBguWYgJ1lTZM7/Ofxgdj3/09fG
 /Hk8U1oO5EOIp9w8yvlwJxxOZlG+cykXhAk1HtSFYx4c/qHQwYvI1DIqYesbs3/cIfQ3
 hM5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LfoqiSwp30V071fHKA2y9Yd6MO8Rixw4X6avtlAC6tE=;
 b=n8jg863LNVyjoK1zWZwKl/IkW6M7+Oseo9tTfIubF1rxtkSUFUdnKh8/IpiSvo5J+t
 3qUEJTgFTKSZCs8CnGy9JU3JDSj+KIHwB+gNZmBFSvGKIvIJJYhWpNQ+A5p3BfeoDU84
 pGUhhyemwjZPU2z7/XIUsqZB1lzbHhw832PNppm3LsEZgbSyCycscayCJ9RXLCN5fw/8
 S+rBHhvWW6lHa3wzLYvP9ddeIgRxUoCY1UU6hMabdMrxALOxJQUWxGCXy4BOiY5tod/j
 wS6ZlBm+62xrq2GSuIM462w48b1RZhpUfSOpKNOfjN+gm/CNaW1jidJjHSb/HpP2FbfY
 ja3w==
X-Gm-Message-State: APjAAAXKhQiNR8v8oGhHqCSFjOMC2nc02ro2pFhNDFfxsgGyr+PSZBQM
 nKmZraCpDOUdrfWFl7vY5WM=
X-Google-Smtp-Source: APXvYqz/1J71UU/vh2u75w7IkBvt1dTzfNwIfgigsGb8aO3+gbgSm9WZM4Qr0suSptUU1zrHMlwaEw==
X-Received: by 2002:a65:648e:: with SMTP id e14mr8556165pgv.391.1570683074120; 
 Wed, 09 Oct 2019 21:51:14 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id q20sm4520090pfl.79.2019.10.09.21.51.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 21:51:13 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/4] staging: rtl8723bs: Remove comparisons to booleans in
 conditionals.
Date: Thu, 10 Oct 2019 07:49:07 +0300
Message-Id: <4af8981347a05f0a25fa1540d8753e7040ea2d85.1570682635.git.wambui.karugax@gmail.com>
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

Remove comparisons to true and false in multiple if statements in
drivers/staging/rtl8723bs/core/rtw_mlme.c
Issues reported by checkpatch.pl as:
CHECK: Using comparison to false is error prone
CHECK: Using comparison to true is error prone

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 29 +++++++++++------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index b15b761782b8..17da4170e861 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -187,7 +187,7 @@ void _rtw_free_network(struct	mlme_priv *pmlmepriv, struct wlan_network *pnetwor
 	if (!pnetwork)
 		return;
 
-	if (pnetwork->fixed == true)
+	if (pnetwork->fixed)
 		return;
 
 	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true) ||
@@ -222,7 +222,7 @@ void _rtw_free_network_nolock(struct	mlme_priv *pmlmepriv, struct wlan_network *
 	if (!pnetwork)
 		return;
 
-	if (pnetwork->fixed == true)
+	if (pnetwork->fixed)
 		return;
 
 	/* spin_lock_irqsave(&free_queue->lock, irqL); */
@@ -480,7 +480,7 @@ struct	wlan_network	*rtw_get_oldest_wlan_network(struct __queue *scanned_queue)
 
 		pwlan = LIST_CONTAINOR(plist, struct wlan_network, list);
 
-		if (pwlan->fixed != true) {
+		if (!pwlan->fixed) {
 			if (oldest == NULL || time_after(oldest->last_scanned, pwlan->last_scanned))
 				oldest = pwlan;
 		}
@@ -867,7 +867,7 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 
 	rtw_set_signal_stat_timer(&adapter->recvpriv);
 
-	if (pmlmepriv->to_join == true) {
+	if (pmlmepriv->to_join) {
 		if ((check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true)) {
 			if (check_fwstate(pmlmepriv, _FW_LINKED) == false) {
 				set_fwstate(pmlmepriv, _FW_UNDER_LINKING);
@@ -1368,7 +1368,7 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 		if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING)) {
 			/* s1. find ptarget_wlan */
 			if (check_fwstate(pmlmepriv, _FW_LINKED)) {
-				if (the_same_macaddr == true) {
+				if (the_same_macaddr) {
 					ptarget_wlan = rtw_find_network(&pmlmepriv->scanned_queue, cur_network->network.MacAddress);
 				} else {
 					pcur_wlan = rtw_find_network(&pmlmepriv->scanned_queue, cur_network->network.MacAddress);
@@ -1843,7 +1843,7 @@ static void rtw_auto_scan_handler(struct adapter *padapter)
 				goto exit;
 			}
 
-			if (pmlmepriv->LinkDetectInfo.bBusyTraffic == true) {
+			if (pmlmepriv->LinkDetectInfo.bBusyTraffic) {
 				DBG_871X(FUNC_ADPT_FMT" exit BusyTraffic\n", FUNC_ADPT_ARG(padapter));
 				goto exit;
 			}
@@ -1863,20 +1863,20 @@ void rtw_dynamic_check_timer_handler(struct adapter *adapter)
 	if (!adapter)
 		return;
 
-	if (adapter->hw_init_completed == false)
+	if (!adapter->hw_init_completed)
 		return;
 
-	if ((adapter->bDriverStopped == true) || (adapter->bSurpriseRemoved == true))
+	if (adapter->bDriverStopped || adapter->bSurpriseRemoved)
 		return;
 
-	if (adapter->net_closed == true)
+	if (adapter->net_closed)
 		return;
 
 	if (is_primary_adapter(adapter))
 		DBG_871X("IsBtDisabled =%d, IsBtControlLps =%d\n", hal_btcoex_IsBtDisabled(adapter), hal_btcoex_IsBtControlLps(adapter));
 
-	if ((adapter_to_pwrctl(adapter)->bFwCurrentInPSMode == true)
-		&& (hal_btcoex_IsBtControlLps(adapter) == false)
+	if ((adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
+		&& !(hal_btcoex_IsBtControlLps(adapter))
 		) {
 		u8 bEnterPS;
 
@@ -2047,7 +2047,7 @@ static int rtw_check_join_candidate(struct mlme_priv *mlme
 
 
 	/* check bssid, if needed */
-	if (mlme->assoc_by_bssid == true) {
+	if (mlme->assoc_by_bssid) {
 		if (memcmp(competitor->network.MacAddress, mlme->assoc_bssid, ETH_ALEN))
 			goto exit;
 	}
@@ -2805,7 +2805,6 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 	u8 cbw40_enable = 0;
 
-
 	if (!phtpriv->ht_option)
 		return;
 
@@ -2815,7 +2814,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 	DBG_871X("+rtw_update_ht_cap()\n");
 
 	/* maybe needs check if ap supports rx ampdu. */
-	if ((phtpriv->ampdu_enable == false) && (pregistrypriv->ampdu_enable == 1)) {
+	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1) {
 		if (pregistrypriv->wifi_spec == 1) {
 			/* remove this part because testbed AP should disable RX AMPDU */
 			/* phtpriv->ampdu_enable = false; */
@@ -2955,7 +2954,7 @@ void rtw_issue_addbareq_cmd(struct adapter *padapter, struct xmit_frame *pxmitfr
 
 	phtpriv = &psta->htpriv;
 
-	if ((phtpriv->ht_option == true) && (phtpriv->ampdu_enable == true)) {
+	if (phtpriv->ht_option && phtpriv->ampdu_enable) {
 		issued = (phtpriv->agg_enable_bitmap>>priority)&0x1;
 		issued |= (phtpriv->candidate_tid_bitmap>>priority)&0x1;
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

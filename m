Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC100D1F05
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 05:41:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CC2A624723;
	Thu, 10 Oct 2019 03:41:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vjNwvNkwCotH; Thu, 10 Oct 2019 03:41:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 176D52426B;
	Thu, 10 Oct 2019 03:41:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C22D41BF2FB
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:41:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD6D588545
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:41:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ElA59Y-nvfU8 for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 03:41:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D427A88541
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 03:41:12 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id p30so2759309pgl.2
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 20:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4jJPrTIIezO7Ey7orYimEmRwAdmY5TQ06O1KMn4i0gU=;
 b=P9tM1kMTxPuUCG6rkEyDayOGjfG0qtaZo/v805ATazDXY7KINsvYkw2dfiMeFlhz/S
 S3JPGIQzTcZvATzzdfwDADFwZaYjFf8mpawrIRS55rYkk3SkIbrW9k/4VsfstT9KHN/U
 +AiDKG+E1G6PS+pcOrCFaoDieuCgdxgeTL0IPXHfiz0Ifb87HgoQaMpt4CosLtrvLk+m
 yH7QJ2CYKePjfeMz5xawaoqOr4vH+ak2aCLG7aYFicxtK/6HUIEPgjoT2Y5vRcT8h05K
 ujuc50zZke3J6m9IA+3V5GpO6xbITgywyN6a/o7kQSIjxJf0O8Ok2y4rB1ey0TnOiTbk
 YR0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4jJPrTIIezO7Ey7orYimEmRwAdmY5TQ06O1KMn4i0gU=;
 b=jPLEoTbAsN078a4/QyfZn+u2K1EilcLrSkKZ0lk7zNDZwP14vynw5ZtAdPizn9X2jB
 1ElTIiBP0SXqVYsjswOUnCI/ok0VuR3FTD/Ew6tEhAsBZ5T3X63MLukWhUOSzzE+RyAI
 DNKDAXuXIiTN15Lv9WR+fMJW57D3N8IEtc/BVl8LL1jNik6R1z2oaWPtvbOXKrMZ7F6M
 P/WIvU1Z4e8AdIXimPJOwNhS4qySIlf/T89EYb/8EDpInJ8mgijJXy3J4J5aUCGVfFC6
 /Vvmn+bGiVVSSV8ncetEukk6w/oVBWnR6nJIMHku76GtimOwtvkqHu16dpMA1OOsdXGd
 yuMA==
X-Gm-Message-State: APjAAAV8aZekRyml6uQGdPdHvs2769FatTz4EQ71CpWGsTckrPJMWyWG
 VP1pnCh89dBrs6sX5J8Yh5A=
X-Google-Smtp-Source: APXvYqyYsxraLhVTKyhFhrM6n/IalcTbzKGjSZsX7/afmBpJ6yICjNnCqjzVS+QU18Zr0GUhBbWldw==
X-Received: by 2002:a63:8f41:: with SMTP id r1mr7805982pgn.83.1570678872215;
 Wed, 09 Oct 2019 20:41:12 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id k95sm3517741pje.10.2019.10.09.20.41.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 20:41:11 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: rtl8723bs: Remove unnecessary blank lines
Date: Thu, 10 Oct 2019 06:39:24 +0300
Message-Id: <25cf01ec2915f7b7e6bfcd45606a71cd5f55269e.1570678371.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570678371.git.wambui.karugax@gmail.com>
References: <cover.1570678371.git.wambui.karugax@gmail.com>
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

Remove multiple blank lines in
drivers/staging/rtl8723bs/core/rtw_mlme.c.
Issues reported by checkpatch.pl as:
CHECK: Please don't use multiple blank lines

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 47 -----------------------
 1 file changed, 47 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 17da4170e861..02bc60d8478f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -208,7 +208,6 @@ void _rtw_free_network(struct	mlme_priv *pmlmepriv, struct wlan_network *pnetwor
 
 	pmlmepriv->num_of_scanned--;
 
-
 	/* DBG_871X("_rtw_free_network:SSID =%s\n", pnetwork->network.Ssid.Ssid); */
 
 	spin_unlock_bh(&free_queue->lock);
@@ -300,12 +299,8 @@ void rtw_free_network_queue(struct adapter *padapter, u8 isfreeall)
 	spin_unlock_bh(&scanned_queue->lock);
 }
 
-
-
-
 sint rtw_if_up(struct adapter *padapter)
 {
-
 	sint res;
 
 	if (padapter->bDriverStopped || padapter->bSurpriseRemoved ||
@@ -317,7 +312,6 @@ sint rtw_if_up(struct adapter *padapter)
 	return res;
 }
 
-
 void rtw_generate_random_ibss(u8 *pibss)
 {
 	unsigned long curtime = jiffies;
@@ -335,7 +329,6 @@ u8 *rtw_get_capability_from_ie(u8 *ie)
 	return ie + 8 + 2;
 }
 
-
 u16 rtw_get_capability(struct wlan_bssid_ex *bss)
 {
 	__le16	val;
@@ -423,7 +416,6 @@ int is_same_network(struct wlan_bssid_ex *src, struct wlan_bssid_ex *dst, u8 fea
 	memcpy((u8 *)&tmps, rtw_get_capability_from_ie(src->IEs), 2);
 	memcpy((u8 *)&tmpd, rtw_get_capability_from_ie(dst->IEs), 2);
 
-
 	s_cap = le16_to_cpu(tmps);
 	d_cap = le16_to_cpu(tmpd);
 
@@ -465,7 +457,6 @@ struct	wlan_network	*rtw_get_oldest_wlan_network(struct __queue *scanned_queue)
 {
 	struct list_head	*plist, *phead;
 
-
 	struct	wlan_network	*pwlan = NULL;
 	struct	wlan_network	*oldest = NULL;
 
@@ -577,12 +568,8 @@ static void update_current_network(struct adapter *adapter, struct wlan_bssid_ex
 	}
 }
 
-
 /*
-
 Caller must hold pmlmepriv->lock first.
-
-
 */
 void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *target)
 {
@@ -623,7 +610,6 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 
 	}
 
-
 	/* If we didn't find a match, then get a new network slot to initialize
 	 * with this beacon's information */
 	/* if (phead == plist) { */
@@ -759,7 +745,6 @@ int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *pnetwor
 		}
 	}
 
-
 	if ((desired_encmode != Ndis802_11EncryptionDisabled) && (privacy == 0)) {
 		DBG_871X("desired_encmode: %d, privacy: %d\n", desired_encmode, privacy);
 		bselected = false;
@@ -770,7 +755,6 @@ int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *pnetwor
 			bselected = false;
 	}
 
-
 	return bselected;
 }
 
@@ -780,7 +764,6 @@ void rtw_atimdone_event_callback(struct adapter	*adapter, u8 *pbuf)
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("receive atimdone_event\n"));
 }
 
-
 void rtw_survey_event_callback(struct adapter	*adapter, u8 *pbuf)
 {
 	u32 len;
@@ -797,7 +780,6 @@ void rtw_survey_event_callback(struct adapter	*adapter, u8 *pbuf)
 		return;
 	}
 
-
 	spin_lock_bh(&pmlmepriv->lock);
 
 	/*  update IBSS_network 's timestamp */
@@ -830,8 +812,6 @@ void rtw_survey_event_callback(struct adapter	*adapter, u8 *pbuf)
 	spin_unlock_bh(&pmlmepriv->lock);
 }
 
-
-
 void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 {
 	u8 timer_cancelled = false;
@@ -862,7 +842,6 @@ void rtw_surveydone_event_callback(struct adapter	*adapter, u8 *pbuf)
 	if (timer_cancelled)
 		_cancel_timer(&pmlmepriv->scan_to_timer, &timer_cancelled);
 
-
 	spin_lock_bh(&pmlmepriv->lock);
 
 	rtw_set_signal_stat_timer(&adapter->recvpriv);
@@ -1002,7 +981,6 @@ static void find_network(struct adapter *adapter)
 	else
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("rtw_free_assoc_resources : pwlan == NULL\n\n"));
 
-
 	if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) &&
 	    (adapter->stapriv.asoc_sta_count == 1))
 		rtw_free_network_nolock(adapter, pwlan);
@@ -1181,7 +1159,6 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
 		psta->wireless_mode = pmlmeext->cur_wireless_mode;
 		psta->raid = networktype_to_raid_ex(padapter, psta);
 
-
 		/* sta mode */
 		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
 
@@ -1213,7 +1190,6 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
 			padapter->securitypriv.wps_ie_len = 0;
 		}
 
-
 		/* for A-MPDU Rx reordering buffer control for bmc_sta & sta_info */
 		/* if A-MPDU Rx is enabled, resetting  rx_ordering_ctrl wstart_b(indicate_seq) to default value = 0xffff */
 		/* todo: check if AP can send A-MPDU packets */
@@ -1230,7 +1206,6 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
 			preorder_ctrl->wsize_b = 64;/* max_ampdu_sz;ex. 32(kbytes) -> wsize_b =32 */
 		}
 
-
 		bmc_sta = rtw_get_bcmc_stainfo(padapter);
 		if (bmc_sta) {
 			for (i = 0; i < 16 ; i++) {
@@ -1264,7 +1239,6 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\nfw_state:%x, BSSID:"MAC_FMT"\n"
 		, get_fwstate(pmlmepriv), MAC_ARG(pnetwork->network.MacAddress)));
 
-
 	/*  why not use ptarget_wlan?? */
 	memcpy(&cur_network->network, &pnetwork->network, pnetwork->network.Length);
 	/*  some IEs in pnetwork is wrong, so we should use ptarget_wlan IEs */
@@ -1273,7 +1247,6 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
 
 	cur_network->aid = pnetwork->join_res;
 
-
 	rtw_set_signal_stat_timer(&padapter->recvpriv);
 
 	padapter->recvpriv.signal_strength = ptarget_wlan->network.PhyInfo.SignalStrength;
@@ -1341,7 +1314,6 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 
 	rtw_get_encrypt_decrypt_from_registrypriv(adapter);
 
-
 	if (pmlmepriv->assoc_ssid.SsidLength == 0)
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("@@@@@   joinbss event call back  for Any SSid\n"));
 	else
@@ -1403,7 +1375,6 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 				goto ignore_joinbss_callback;
 			}
 
-
 			/* s3. find ptarget_sta & update ptarget_sta after update cur_network only for station mode */
 			if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) == true) {
 				ptarget_sta = rtw_joinbss_update_stainfo(adapter, pnetwork);
@@ -1423,7 +1394,6 @@ void rtw_joinbss_event_prehandle(struct adapter *adapter, u8 *pbuf)
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("adhoc mode, fw_state:%x", get_fwstate(pmlmepriv)));
 			}
 
-
 			/* s5. Cancel assoc_timer */
 			_cancel_timer(&pmlmepriv->assoc_timer, &timer_cancelled);
 
@@ -1582,7 +1552,6 @@ void rtw_stassoc_event_callback(struct adapter *adapter, u8 *pbuf)
 	if (adapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X)
 		psta->dot118021XPrivacy = adapter->securitypriv.dot11PrivacyAlgrthm;
 
-
 	psta->ieee8021x_blocked = false;
 
 	spin_lock_bh(&pmlmepriv->lock);
@@ -1603,7 +1572,6 @@ void rtw_stassoc_event_callback(struct adapter *adapter, u8 *pbuf)
 
 	spin_unlock_bh(&pmlmepriv->lock);
 
-
 	mlmeext_sta_add_event_callback(adapter, psta);
 }
 
@@ -1639,7 +1607,6 @@ void rtw_stadel_event_callback(struct adapter *adapter, u8 *pbuf)
 	if ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE)
 		return;
 
-
 	mlmeext_sta_del_event_callback(adapter);
 
 	spin_lock_bh(&pmlmepriv->lock);
@@ -1736,7 +1703,6 @@ void rtw_cpwm_event_callback(struct adapter *padapter, u8 *pbuf)
 	cpwm_int_hdl(padapter, preportpwrstate);
 }
 
-
 void rtw_wmm_event_callback(struct adapter *padapter, u8 *pbuf)
 {
 	WMMOnAssocRsp(padapter);
@@ -1899,7 +1865,6 @@ void rtw_dynamic_check_timer_handler(struct adapter *adapter)
 	rtw_auto_scan_handler(adapter);
 }
 
-
 inline bool rtw_is_scan_deny(struct adapter *adapter)
 {
 	struct mlme_priv *mlmepriv = &adapter->mlmepriv;
@@ -2045,7 +2010,6 @@ static int rtw_check_join_candidate(struct mlme_priv *mlme
 	int updated = false;
 	struct adapter *adapter = container_of(mlme, struct adapter, mlmepriv);
 
-
 	/* check bssid, if needed */
 	if (mlme->assoc_by_bssid) {
 		if (memcmp(competitor->network.MacAddress, mlme->assoc_bssid, ETH_ALEN))
@@ -2096,12 +2060,8 @@ static int rtw_check_join_candidate(struct mlme_priv *mlme
 /*
 Calling context:
 The caller of the sub-routine will be in critical section...
-
 The caller must hold the following spinlock
-
 pmlmepriv->lock
-
-
 */
 
 int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
@@ -2208,7 +2168,6 @@ sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
 	pcmd->rsp = NULL;
 	pcmd->rspsz = 0;
 
-
 	INIT_LIST_HEAD(&pcmd->list);
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("after enqueue set_auth_cmd, auth_mode =%x\n", psecuritypriv->dot11AuthAlgrthm));
@@ -2276,7 +2235,6 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
 		goto exit;
 	}
 
-
 	if (enqueue) {
 		pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
 		if (!pcmd) {
@@ -2331,7 +2289,6 @@ int rtw_restruct_wmm_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_
 
 }
 
-
 /*  */
 /*  Ported from 8185: IsInPreAuthKeyList(). (Renamed from SecIsInPreAuthKeyList(), 2006-10-13.) */
 /*  Added by Annie, 2006-05-07. */
@@ -2827,7 +2784,6 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 		/* phtpriv->ampdu_enable = true; */
 	}
 
-
 	/* check Max Rx A-MPDU Size */
 	len = 0;
 	p = rtw_get_ie(pie+sizeof(struct ndis_802_11_fix_ie), _HT_CAPABILITY_IE_, &len, ie_len-sizeof(struct ndis_802_11_fix_ie));
@@ -2841,7 +2797,6 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 
 	}
 
-
 	len = 0;
 	p = rtw_get_ie(pie+sizeof(struct ndis_802_11_fix_ie), _HT_ADD_INFO_IE_, &len, ie_len-sizeof(struct ndis_802_11_fix_ie));
 	if (p && len > 0) {
@@ -2951,7 +2906,6 @@ void rtw_issue_addbareq_cmd(struct adapter *padapter, struct xmit_frame *pxmitfr
 		return;
 	}
 
-
 	phtpriv = &psta->htpriv;
 
 	if (phtpriv->ht_option && phtpriv->ampdu_enable) {
@@ -2974,7 +2928,6 @@ void rtw_append_exented_cap(struct adapter *padapter, u8 *out_ie, uint *pout_len
 	u8 cap_content[8] = {0};
 	u8 *pframe;
 
-
 	if (phtpriv->bss_coexist)
 		SET_EXT_CAPABILITY_ELE_BSS_COEXIST(cap_content, 1);
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

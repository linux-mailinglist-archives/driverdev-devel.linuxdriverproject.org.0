Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8945A299A5A
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 00:23:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 07DE485D8D;
	Mon, 26 Oct 2020 23:23:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Dnz31BJPCOa; Mon, 26 Oct 2020 23:23:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7596985F3A;
	Mon, 26 Oct 2020 23:23:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C92E11BF3DE
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 23:23:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C56448710A
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 23:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hM08knahZmjZ for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 23:23:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 431DD87108
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 23:23:14 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id t25so16397124ejd.13
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 16:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9GD/bXJuIxH37AnBfaQvF080XeGnVyQmKD9JQwiil+4=;
 b=geN59Q2qlllwarGkLdQwFYaD3zzd+Alj36VObvG3ThsM+MT/QO2tmWBQCYa6Xtup1b
 PKEDdJZ2FJuk6/CqRe+4YlAevx1XwB/J2k2bQfglOp2Indzz20Ydemhu5tDU0saqHdtn
 Fbdn/8cLZxl+qXjm6Bjf01GSSZMksqwMvjvQ6ABcQFcaDHWFr1j4G5hdoWX3jxqtnoYH
 QIX+o6B0A4T1OUk+i74sstzzMJWxW2Y74mFSfbfuH8B5OVLozPe4ihzlMPTHpKWACWg7
 WgUVr3rLa+Rn2ReOg5C6pu6k8Ht9dqFYEw/fUcC7xSgZ2yYOe3ixIX5szRD9/r5uXnTU
 Nc1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9GD/bXJuIxH37AnBfaQvF080XeGnVyQmKD9JQwiil+4=;
 b=OuTlz1uVMapreqMeSKyB8jeTWm8DXEMNj6S7q9HIUyT+9QKJWb7296xv1+vj6CwTns
 JTk5D2Yd2YmtP8BQjFgdaURO5DDhCM8CqYCg1tFla9aS5njynG4qPxFKKRan/fPcaN1e
 GcF2to0rQHTPLzacGpsm3ZEZNXurjuaFiaCzWfLHw01oN0SKPeYIk7U9TqWVZ7Hywo+t
 O2IhMfMxkHCavB6L93Lh+vBZRVHyeEZFur++tCoNKKq/JFtW2TEhItg5E03MQ16UX2Ff
 m97uenJaCptzglv4q3plpmw2hHbqyDOFi/R+FqNIB80AVIMxNyNJ8IJQpP+jveg8XPhx
 RL1g==
X-Gm-Message-State: AOAM531IEws5No3XUUh72JPcbutTEzvYRpWK8+SEco8GEMypavwjqvJI
 IC7SNkpWXIavRy4QqitkuLo=
X-Google-Smtp-Source: ABdhPJx7NkaG15J/HxQoKJffwG3giw9ETU1gt4YyXXAp8rPDw10+dZSMGcr0KcGDADcRyCCELuFoiA==
X-Received: by 2002:a17:907:2110:: with SMTP id
 qn16mr18946757ejb.133.1603754592632; 
 Mon, 26 Oct 2020 16:23:12 -0700 (PDT)
Received: from localhost.localdomain ([185.200.214.168])
 by smtp.gmail.com with ESMTPSA id fx11sm6570993ejb.77.2020.10.26.16.23.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Oct 2020 16:23:11 -0700 (PDT)
From: izabela.bakollari@gmail.com
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: Rewrite comparison to NULL
Date: Tue, 27 Oct 2020 00:23:10 +0100
Message-Id: <20201026232310.48128-1-izabela.bakollari@gmail.com>
X-Mailer: git-send-email 2.18.4
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Izabela Bakollari <izabela.bakollari@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Izabela Bakollari <izabela.bakollari@gmail.com>

Rewrite comparison to NULL by modifying (p != NULL) to (p).
Issue reported by checkpatch.

Signed-off-by: Izabela Bakollari <izabela.bakollari@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c       |  6 ++---
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |  8 +++----
 drivers/staging/rtl8723bs/core/rtw_mlme.c     |  2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 24 +++++++++----------
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |  6 ++---
 drivers/staging/rtl8723bs/core/rtw_security.c |  4 ++--
 drivers/staging/rtl8723bs/hal/hal_intf.c      |  4 ++--
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  6 ++---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   |  4 ++--
 drivers/staging/rtl8723bs/os_dep/recv_linux.c |  2 +-
 10 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 125ecf0eea81..07d4bef12bf4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -80,7 +80,7 @@ static void update_BCNTIM(struct adapter *padapter)
 			&tim_ielen,
 			pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_
 		);
-		if (p != NULL && tim_ielen > 0) {
+		if (p && tim_ielen > 0) {
 			tim_ielen += 2;
 
 			premainder_ie = p + tim_ielen;
@@ -104,7 +104,7 @@ static void update_BCNTIM(struct adapter *padapter)
 				&tmp_len,
 				(pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
 			);
-			if (p != NULL)
+			if (p)
 				offset += tmp_len + 2;
 
 			/*  get supported rates len */
@@ -113,7 +113,7 @@ static void update_BCNTIM(struct adapter *padapter)
 				_SUPPORTEDRATES_IE_, &tmp_len,
 				(pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
 			);
-			if (p !=  NULL)
+			if (p)
 				offset += tmp_len + 2;
 
 			/* DS Parameter Set IE, len =3 */
diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 5427afa2d641..b4d88c978945 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -229,7 +229,7 @@ void _rtw_free_evt_priv(struct	evt_priv *pevtpriv)
 
 	while (!rtw_cbuf_empty(pevtpriv->c2h_queue)) {
 		void *c2h = rtw_cbuf_pop(pevtpriv->c2h_queue);
-		if (c2h != NULL && c2h != (void *)pevtpriv) {
+		if (c2h && c2h != (void *)pevtpriv) {
 			kfree(c2h);
 		}
 	}
@@ -373,7 +373,7 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
 		kfree(pcmd->parmbuf);
 	}
 
-	if (pcmd->rsp != NULL) {
+	if (pcmd->rsp) {
 		if (pcmd->rspsz != 0) {
 			/* free rsp in cmd_obj */
 			kfree(pcmd->rsp);
@@ -1893,12 +1893,12 @@ static void c2h_wk_callback(_workitem *work)
 
 	while (!rtw_cbuf_empty(evtpriv->c2h_queue)) {
 		c2h_evt = (u8 *)rtw_cbuf_pop(evtpriv->c2h_queue);
-		if (c2h_evt != NULL) {
+		if (c2h_evt) {
 			/* This C2H event is read, clear it */
 			c2h_evt_clear(adapter);
 		} else {
 			c2h_evt = rtw_malloc(16);
-			if (c2h_evt != NULL) {
+			if (c2h_evt) {
 				/* This C2H event is not read, read & clear now */
 				if (c2h_evt_read_88xx(adapter, c2h_evt) != _SUCCESS) {
 					kfree(c2h_evt);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 4f1577f3b9c6..47e8c19ee043 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -1912,7 +1912,7 @@ static int rtw_check_roaming_candidate(struct mlme_priv *mlme
 	if (competitor->network.Rssi - mlme->cur_network_scanned->network.Rssi < mlme->roam_rssi_diff_th)
 		goto exit;
 
-	if (*candidate != NULL && (*candidate)->network.Rssi >= competitor->network.Rssi)
+	if (*candidate && (*candidate)->network.Rssi >= competitor->network.Rssi)
 		goto exit;
 
 update:
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index a3c91244aef7..78c3e66d44e7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -551,7 +551,7 @@ void mgt_dispatcher(struct adapter *padapter, union recv_frame *precv_frame)
 	}
 	ptable += index;
 
-	if (psta != NULL) {
+	if (psta) {
 		if (GetRetry(pframe)) {
 			if (precv_frame->u.hdr.attrib.seq_num == psta->RxMgmtFrameSeqNum) {
 				/* drop the duplicate management frame */
@@ -733,7 +733,7 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 
 
 	/* check (wildcard) SSID */
-	if (p != NULL) {
+	if (p) {
 		if (is_valid_p2p_probereq)
 			goto _issue_probersp;
 
@@ -784,7 +784,7 @@ unsigned int OnBeacon(struct adapter *padapter, union recv_frame *precv_frame)
 	u32 ielen = 0;
 
 	p = rtw_get_ie(pframe + sizeof(struct ieee80211_hdr_3addr) + _BEACON_IE_OFFSET_, _EXT_SUPPORTEDRATES_IE_, &ielen, precv_frame->u.hdr.len - sizeof(struct ieee80211_hdr_3addr) - _BEACON_IE_OFFSET_);
-	if ((p != NULL) && (ielen > 0)) {
+	if (p && ielen > 0) {
 		if ((*(p + 1 + ielen) == 0x2D) && (*(p + 2 + ielen) != 0x2D)) {
 			/* Invalid value 0x2D is detected in Extended Supported Rates (ESR) IE. Try to fix the IE length to avoid failed Beacon parsing. */
 			DBG_871X("[WIFIDBG] Error in ESR IE is detected in Beacon of BSSID:"MAC_FMT". Fix the length of ESR IE to avoid failed Beacon parsing.\n", MAC_ARG(GetAddr3Ptr(pframe)));
@@ -831,7 +831,7 @@ unsigned int OnBeacon(struct adapter *padapter, union recv_frame *precv_frame)
 
 		if (((pmlmeinfo->state&0x03) == WIFI_FW_STATION_STATE) && (pmlmeinfo->state & WIFI_FW_ASSOC_SUCCESS)) {
 			psta = rtw_get_stainfo(pstapriv, GetAddr2Ptr(pframe));
-			if (psta != NULL) {
+			if (psta) {
 				ret = rtw_check_bcn_info(padapter, pframe, len);
 				if (!ret) {
 						DBG_871X_LEVEL(_drv_always_, "ap has changed, disconnect now\n ");
@@ -848,7 +848,7 @@ unsigned int OnBeacon(struct adapter *padapter, union recv_frame *precv_frame)
 			}
 		} else if ((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) {
 			psta = rtw_get_stainfo(pstapriv, GetAddr2Ptr(pframe));
-			if (psta != NULL) {
+			if (psta) {
 				/* update WMM, ERP in the beacon */
 				/* todo: the timer is used instead of the number of the beacon received */
 				if ((sta_rx_pkts(psta) & 0xf) == 0) {
@@ -1446,7 +1446,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		p = pframe + WLAN_HDR_A3_LEN + ie_offset; ie_len = 0;
 		for (;;) {
 			p = rtw_get_ie(p, _VENDOR_SPECIFIC_IE_, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
-			if (p != NULL) {
+			if (p) {
 				if (!memcmp(p+2, WMM_IE, 6)) {
 
 					pstat->flags |= WLAN_STA_WME;
@@ -2654,7 +2654,7 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 		pwps_ie = rtw_get_wps_ie(cur_network->IEs+_FIXED_IE_LENGTH_, cur_network->IELength-_FIXED_IE_LENGTH_, NULL, &wps_ielen);
 
 		/* inerset & update wps_probe_resp_ie */
-		if ((pmlmepriv->wps_probe_resp_ie != NULL) && pwps_ie && (wps_ielen > 0)) {
+		if (pmlmepriv->wps_probe_resp_ie && pwps_ie && wps_ielen > 0) {
 			uint wps_offset, remainder_ielen;
 			u8 *premainder_ie;
 
@@ -3958,7 +3958,7 @@ void issue_action_BA(struct adapter *padapter, unsigned char *raddr, unsigned ch
 
 			/* if ((psta = rtw_get_stainfo(pstapriv, pmlmeinfo->network.MacAddress)) != NULL) */
 			psta = rtw_get_stainfo(pstapriv, raddr);
-			if (psta != NULL) {
+			if (psta) {
 				start_seq = (psta->sta_xmitpriv.txseq_tid[status & 0x07]&0xfff) + 1;
 
 				DBG_871X("BA_starting_seqctrl = %d for TID =%d\n", start_seq, status & 0x07);
@@ -4487,7 +4487,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 	/* checking rate info... */
 	i = 0;
 	p = rtw_get_ie(bssid->IEs + ie_offset, _SUPPORTEDRATES_IE_, &len, bssid->IELength - ie_offset);
-	if (p != NULL) {
+	if (p) {
 		if (len > NDIS_802_11_LENGTH_RATES_EX) {
 			DBG_871X("%s()-%d: IE too long (%d) for survey event\n", __func__, __LINE__, len);
 			return _FAIL;
@@ -4497,7 +4497,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 	}
 
 	p = rtw_get_ie(bssid->IEs + ie_offset, _EXT_SUPPORTEDRATES_IE_, &len, bssid->IELength - ie_offset);
-	if (p != NULL) {
+	if (p) {
 		if (len > (NDIS_802_11_LENGTH_RATES_EX-i)) {
 			DBG_871X("%s()-%d: IE too long (%d) for survey event\n", __func__, __LINE__, len);
 			return _FAIL;
@@ -5694,7 +5694,7 @@ void linked_status_chk(struct adapter *padapter)
 		/*  For WiDi 3.5 and latered on, they don't ask WiDi sink to do roaming, so we could not check rx limit that strictly. */
 		/*  todo: To check why we under miracast session, rx_chk would be false */
 		psta = rtw_get_stainfo(pstapriv, pmlmeinfo->network.MacAddress);
-		if (psta != NULL) {
+		if (psta) {
 			if (chk_ap_is_alive(padapter, psta) == false)
 				rx_chk = _FAIL;
 
@@ -6820,7 +6820,7 @@ u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf)
 	pmlmeext->max_chan_nums = init_channel_set(padapter, setChannelPlan_param->channel_plan, pmlmeext->channel_set);
 	init_channel_list(padapter, pmlmeext->channel_set, pmlmeext->max_chan_nums, &pmlmeext->channel_list);
 
-	if ((padapter->rtw_wdev != NULL) && (padapter->rtw_wdev->wiphy)) {
+	if (padapter->rtw_wdev && padapter->rtw_wdev->wiphy) {
 		struct regulatory_request request;
 
 		request.initiator = NL80211_REGDOM_SET_BY_DRIVER;
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 6ac9184d59a6..0d8aa7a2469e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -1173,13 +1173,13 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
 void rtw_free_pwrctrl_priv(struct adapter *adapter)
 {
 #ifdef CONFIG_PNO_SUPPORT
-	if (pwrctrlpriv->pnlo_info != NULL)
+	if (pwrctrlpriv->pnlo_info)
 		printk("****** pnlo_info memory leak********\n");
 
-	if (pwrctrlpriv->pscan_info != NULL)
+	if (pwrctrlpriv->pscan_info)
 		printk("****** pscan_info memory leak********\n");
 
-	if (pwrctrlpriv->pno_ssid_list != NULL)
+	if (pwrctrlpriv->pno_ssid_list)
 		printk("****** pno_ssid_list memory leak********\n");
 #endif
 }
diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 7afa3c79cf68..f60217219554 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -750,7 +750,7 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 	/* 4 start to decrypt recvframe */
 	if (prxattrib->encrypt == _TKIP_) {
 		stainfo = rtw_get_stainfo(&padapter->stapriv, &prxattrib->ta[0]);
-		if (stainfo != NULL) {
+		if (stainfo) {
 			if (IS_MCAST(prxattrib->ra)) {
 				static unsigned long start;
 				static u32 no_gkey_bc_cnt;
@@ -1827,7 +1827,7 @@ u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 	/* 4 start to encrypt each fragment */
 	if (prxattrib->encrypt == _AES_) {
 		stainfo = rtw_get_stainfo(&padapter->stapriv, &prxattrib->ta[0]);
-		if (stainfo != NULL) {
+		if (stainfo) {
 			RT_TRACE(_module_rtl871x_security_c_,
 				 _drv_err_,
 				 ("%s: stainfo!= NULL!!!\n", __func__));
diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
index 23df729acb7b..ac3066a91c84 100644
--- a/drivers/staging/rtl8723bs/hal/hal_intf.c
+++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
@@ -248,14 +248,14 @@ s32	rtw_hal_mgnt_xmit(struct adapter *padapter, struct xmit_frame *pmgntframe)
 
 s32	rtw_hal_init_xmit_priv(struct adapter *padapter)
 {
-	if (padapter->HalFunc.init_xmit_priv != NULL)
+	if (padapter->HalFunc.init_xmit_priv)
 		return padapter->HalFunc.init_xmit_priv(padapter);
 	return _FAIL;
 }
 
 void rtw_hal_free_xmit_priv(struct adapter *padapter)
 {
-	if (padapter->HalFunc.free_xmit_priv != NULL)
+	if (padapter->HalFunc.free_xmit_priv)
 		padapter->HalFunc.free_xmit_priv(padapter);
 }
 
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 11a787bfd07d..b4a0169c90ed 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -259,7 +259,7 @@ struct cfg80211_bss *rtw_cfg80211_inform_bss(struct adapter *padapter, struct wl
 
 	/* To reduce PBC Overlap rate */
 	/* spin_lock_bh(&pwdev_priv->scan_req_lock); */
-	if (adapter_wdev_data(padapter)->scan_request != NULL)
+	if (adapter_wdev_data(padapter)->scan_request)
 	{
 		u8 *psr = NULL, sr = 0;
 		struct ndis_802_11_ssid *pssid = &pnetwork->network.Ssid;
@@ -288,7 +288,7 @@ struct cfg80211_bss *rtw_cfg80211_inform_bss(struct adapter *padapter, struct wl
 				}
 				else
 				{
-					if (psr != NULL)
+					if (psr)
 						*psr = 0; /* clear sr */
 				}
 			}
@@ -1353,7 +1353,7 @@ void rtw_cfg80211_indicate_scan_done(struct adapter *adapter, bool aborted)
 	};
 
 	spin_lock_bh(&pwdev_priv->scan_req_lock);
-	if (pwdev_priv->scan_request != NULL) {
+	if (pwdev_priv->scan_request) {
 		#ifdef DEBUG_CFG80211
 		DBG_871X("%s with scan req\n", __func__);
 		#endif
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index e61928360927..17783c44e2be 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -491,7 +491,7 @@ struct net_device *rtw_init_netdev(struct adapter *old_padapter)
 
 	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+init_net_dev\n"));
 
-	if (old_padapter != NULL)
+	if (old_padapter)
 		pnetdev = rtw_alloc_etherdev_with_old_priv(sizeof(struct adapter), (void *)old_padapter);
 	else
 		pnetdev = rtw_alloc_etherdev(sizeof(struct adapter));
@@ -838,7 +838,7 @@ u8 rtw_free_drv_sw(struct adapter *padapter)
 	}
 
 	/*  clear pbuddystruct adapter to avoid access wrong pointer. */
-	if (padapter->pbuddy_adapter != NULL)
+	if (padapter->pbuddy_adapter)
 		padapter->pbuddy_adapter->pbuddy_adapter = NULL;
 
 	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-rtw_free_drv_sw\n"));
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 48635b7a1eb2..e9cd247085b8 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -124,7 +124,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 
 					_rtw_xmit_entry(pkt, pnetdev);
 
-					if (bmcast && (pskb2 != NULL)) {
+					if (bmcast && pskb2) {
 						pkt = pskb2;
 						DBG_COUNTER(padapter->rx_logs.os_indicate_ap_mcast);
 					} else {
-- 
2.18.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

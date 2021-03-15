Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3332E33AFAA
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:14:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C2C7430C7;
	Mon, 15 Mar 2021 10:14:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zmCi95MAlLhV; Mon, 15 Mar 2021 10:14:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A584C4018A;
	Mon, 15 Mar 2021 10:14:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B2DB1BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:14:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 561F14766F
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:14:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pv5rFGf9O1dd for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:14:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C673D470A7
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:14:17 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id e18so5378962wrt.6
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hIeK9QchPh1073QPCl7BglagG6NTuq6Ib13Y9HGKuU0=;
 b=Z8Nz7hHEU4iBLkfyoo1DSicZbNhNV46dTUusz/ZIrTJnvV/BRzm8TJRd0jthCwBTZT
 VvIhU5+L1ZU45misTGaKcR2yuunkWer64h/I8tYFvvbsXaBcKrt7WMkU9hwQ4mHKoTrW
 jxqzpD3wnNanBa1o/u/OEfDsAxnd1tcWaE0IjJtJzo2Jv9/37vP8clMt0GPk05N0B+4z
 TvtfW8QadjM02fOBdTLXqk2yiniO5OSius3xm6tXXnwZ6C1J/qVIJLBbtTRIHvrrdEME
 4EuKndp6fxlEUg3D5kcnCxV4wFEvAq262tbIGpl0YjXHfI6Rdm38Biow3FLm3K/3ba1F
 mRhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hIeK9QchPh1073QPCl7BglagG6NTuq6Ib13Y9HGKuU0=;
 b=d7zlc4MXg83vQ5+WNNdS+7DVbvgzm3Uqni030WMam0u0YYpXTdzAMDY4DZmdo7apbD
 FqocPdZLN5uTnktAUk7P+nAqos8175RuojcPr5eIN4dV9CAk7RmexUPFZ70bMZe9gBi/
 f1kUA8tAQGJ8073P53PgppgipYKpEiWIuL8bHQc/rhlX/sxB5Yq+lfzr3HE1wUdINtWI
 jPOwGK0XOmYURVYdhsLQbQXGfHCbVsIMhFP/eNVci9hxz9eZT70qsnH9B1aY6T2lNa9J
 wEybEACgrzuXRFKjq0Y8DZCyuwL/6Qfu1NU+jn7iLScqldpgay5J0pwtO2lYxi7oVGys
 18Bw==
X-Gm-Message-State: AOAM531BvIR1XJFkap3yag4EfDGE5PceI74lxnxUi35OYboM2PQf3w7S
 FflsIBzOxx6Yr7FJhoq9Xoc=
X-Google-Smtp-Source: ABdhPJyd3Sblg8s08CZxvVvQrD6flzBi/xEJmyACbNoOF8QuNBZg7aOppLvZqYB0AyAOcBE+9hnfqQ==
X-Received: by 2002:a5d:6d06:: with SMTP id e6mr26851252wrq.425.1615803255971; 
 Mon, 15 Mar 2021 03:14:15 -0700 (PDT)
Received: from agape.jhs ([5.171.72.229])
 by smtp.gmail.com with ESMTPSA id p16sm21465952wrt.54.2021.03.15.03.14.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 03:14:15 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:14:13 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 01/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_AUTO_AP_MODE
Message-ID: <342607e2b4ba2a19b367705a0b47cac95d601d44.1615801721.git.fabioaiuto83@gmail.com>
References: <cover.1615801721.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615801721.git.fabioaiuto83@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove conditional code blocks checked by unused CONFIG_AUTO_AP_MODE

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c       |   4 -
 drivers/staging/rtl8723bs/core/rtw_mlme.c     |   3 -
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 238 ------------------
 drivers/staging/rtl8723bs/core/rtw_recv.c     |  32 ---
 drivers/staging/rtl8723bs/core/rtw_xmit.c     |   5 -
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |   3 -
 drivers/staging/rtl8723bs/include/sta_info.h  |   5 -
 drivers/staging/rtl8723bs/os_dep/recv_linux.c |  41 ---
 8 files changed, 331 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index abb2a2299511..63b339484289 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -270,10 +270,6 @@ void expire_timeout_chk(struct adapter *padapter)
 	while (phead != plist) {
 		psta = container_of(plist, struct sta_info, asoc_list);
 		plist = get_next(plist);
-#ifdef CONFIG_AUTO_AP_MODE
-		if (psta->isrc)
-			continue;
-#endif
 		if (chk_sta_is_alive(psta) || !psta->expire_to) {
 			psta->expire_to = pstapriv->expire_to;
 			psta->keep_alive_trycnt = 0;
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 723187a78484..725f699abda9 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -1478,8 +1478,6 @@ void rtw_stassoc_event_callback(struct adapter *adapter, u8 *pbuf)
 
 			rtw_sta_media_status_rpt(adapter, psta, 1);
 
-#ifndef CONFIG_AUTO_AP_MODE
-
 			ap_sta_info_defer_update(adapter, psta);
 
 			/* report to upper layer */
@@ -1503,7 +1501,6 @@ void rtw_stassoc_event_callback(struct adapter *adapter, u8 *pbuf)
 
 				kfree(passoc_req);
 			}
-#endif /* CONFIG_AUTO_AP_MODE */
 		}
 		return;
 	}
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 23362b39082b..0ca3ddfc8b08 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -619,115 +619,6 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 
 	/* DBG_871X("+OnProbeReq\n"); */
 
-#ifdef CONFIG_AUTO_AP_MODE
-	if (check_fwstate(pmlmepriv, _FW_LINKED) &&
-			pmlmepriv->cur_network.join_res) {
-		struct sta_info *psta;
-		u8 *mac_addr, *peer_addr;
-		struct sta_priv *pstapriv = &padapter->stapriv;
-		u8 RC_OUI[4] = {0x00, 0xE0, 0x4C, 0x0A};
-		/* EID[1] + EID_LEN[1] + RC_OUI[4] + MAC[6] + PairingID[2] + ChannelNum[2] */
-
-		p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _PROBEREQ_IE_OFFSET_, WLAN_EID_VENDOR_SPECIFIC, (int *)&ielen,
-			len - WLAN_HDR_A3_LEN - _PROBEREQ_IE_OFFSET_);
-
-		if (!p || ielen != 14)
-			goto _non_rc_device;
-
-		if (memcmp(p+2, RC_OUI, sizeof(RC_OUI)))
-			goto _non_rc_device;
-
-		if (memcmp(p+6, get_sa(pframe), ETH_ALEN)) {
-			DBG_871X("%s, do rc pairing (%pM), but mac addr mismatch!(%pM)\n", __func__,
-				MAC_ARG(get_sa(pframe)), MAC_ARG(p+6));
-
-			goto _non_rc_device;
-		}
-
-		DBG_871X("%s, got the pairing device(%pM)\n", __func__,  MAC_ARG(get_sa(pframe)));
-
-		/* new a station */
-		psta = rtw_get_stainfo(pstapriv, get_sa(pframe));
-		if (psta == NULL) {
-			/*  allocate a new one */
-			DBG_871X("going to alloc stainfo for rc =%pM\n",  MAC_ARG(get_sa(pframe)));
-			psta = rtw_alloc_stainfo(pstapriv, get_sa(pframe));
-			if (!psta) {
-				/* TODO: */
-				DBG_871X(" Exceed the upper limit of supported clients...\n");
-				return _SUCCESS;
-			}
-
-			spin_lock_bh(&pstapriv->asoc_list_lock);
-			if (list_empty(&psta->asoc_list)) {
-				psta->expire_to = pstapriv->expire_to;
-				list_add_tail(&psta->asoc_list, &pstapriv->asoc_list);
-				pstapriv->asoc_list_cnt++;
-			}
-			spin_unlock_bh(&pstapriv->asoc_list_lock);
-
-			/* generate pairing ID */
-			mac_addr = myid(&(padapter->eeprompriv));
-			peer_addr = psta->hwaddr;
-			psta->pid = (u16)(((mac_addr[4]<<8) + mac_addr[5]) + ((peer_addr[4]<<8) + peer_addr[5]));
-
-			/* update peer stainfo */
-			psta->isrc = true;
-			/* psta->aid = 0; */
-			/* psta->mac_id = 2; */
-
-			/* get a unique AID */
-			if (psta->aid > 0) {
-				DBG_871X("old AID %d\n", psta->aid);
-			} else {
-				for (psta->aid = 1; psta->aid <= NUM_STA; psta->aid++)
-					if (pstapriv->sta_aid[psta->aid - 1] == NULL)
-						break;
-
-				if (psta->aid > pstapriv->max_num_sta) {
-					psta->aid = 0;
-					DBG_871X("no room for more AIDs\n");
-					return _SUCCESS;
-				}
-				pstapriv->sta_aid[psta->aid - 1] = psta;
-				DBG_871X("allocate new AID = (%d)\n", psta->aid);
-			}
-
-			psta->qos_option = 1;
-			psta->bw_mode = CHANNEL_WIDTH_20;
-			psta->ieee8021x_blocked = false;
-			psta->htpriv.ht_option = true;
-			psta->htpriv.ampdu_enable = false;
-			psta->htpriv.sgi_20m = false;
-			psta->htpriv.sgi_40m = false;
-			psta->htpriv.ch_offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;
-			psta->htpriv.agg_enable_bitmap = 0x0;/* reset */
-			psta->htpriv.candidate_tid_bitmap = 0x0;/* reset */
-
-			rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
-
-			memset((void *)&psta->sta_stats, 0, sizeof(struct stainfo_stats));
-
-			spin_lock_bh(&psta->lock);
-			psta->state |= _FW_LINKED;
-			spin_unlock_bh(&psta->lock);
-
-			report_add_sta_event(padapter, psta->hwaddr, psta->aid);
-
-		}
-
-		issue_probersp(padapter, get_sa(pframe), false);
-
-		return _SUCCESS;
-
-	}
-
-_non_rc_device:
-
-	return _SUCCESS;
-
-#endif /* CONFIG_AUTO_AP_MODE */
-
 	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _PROBEREQ_IE_OFFSET_, WLAN_EID_SSID, (int *)&ielen,
 			len - WLAN_HDR_A3_LEN - _PROBEREQ_IE_OFFSET_);
 
@@ -2771,36 +2662,6 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 
 	}
 
-#ifdef CONFIG_AUTO_AP_MODE
-{
-	struct sta_info *psta;
-	struct sta_priv *pstapriv = &padapter->stapriv;
-
-	DBG_871X("(%s)\n", __func__);
-
-	/* check rc station */
-	psta = rtw_get_stainfo(pstapriv, da);
-	if (psta && psta->isrc && psta->pid > 0) {
-		u8 RC_OUI[4] = {0x00, 0xE0, 0x4C, 0x0A};
-		u8 RC_INFO[14] = {0};
-		/* EID[1] + EID_LEN[1] + RC_OUI[4] + MAC[6] + PairingID[2] + ChannelNum[2] */
-		u16 cu_ch = (u16)cur_network->Configuration.DSConfig;
-
-		DBG_871X("%s, reply rc(pid = 0x%x) device %pM in ch =%d\n", __func__,
-			psta->pid, MAC_ARG(psta->hwaddr), cu_ch);
-
-		/* append vendor specific ie */
-		memcpy(RC_INFO, RC_OUI, sizeof(RC_OUI));
-		memcpy(&RC_INFO[4], mac, ETH_ALEN);
-		memcpy(&RC_INFO[10], (u8 *)&psta->pid, 2);
-		memcpy(&RC_INFO[12], (u8 *)&cu_ch, 2);
-
-		pframe = rtw_set_ie(pframe, WLAN_EID_VENDOR_SPECIFIC, sizeof(RC_INFO), RC_INFO, &pattrib->pktlen);
-	}
-}
-#endif /* CONFIG_AUTO_AP_MODE */
-
-
 	pattrib->last_txcmdsz = pattrib->pktlen;
 
 
@@ -5912,99 +5773,6 @@ u8 NULL_hdl(struct adapter *padapter, u8 *pbuf)
 	return H2C_SUCCESS;
 }
 
-#ifdef CONFIG_AUTO_AP_MODE
-static int rtw_auto_ap_start_beacon(struct adapter *adapter)
-{
-	int ret = 0;
-	u8 *pbuf = NULL;
-	uint len;
-	u8 supportRate[16];
-	int	sz = 0, rateLen;
-	u8 *ie;
-	u8 wireless_mode, oper_channel;
-	u8 ssid[3] = {0}; /* hidden ssid */
-	u32 ssid_len = sizeof(ssid);
-	struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);
-
-
-	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) != true)
-		return -EINVAL;
-
-
-	len = 128;
-	pbuf = rtw_zmalloc(len);
-	if (!pbuf)
-		return -ENOMEM;
-
-
-	/* generate beacon */
-	ie = pbuf;
-
-	/* timestamp will be inserted by hardware */
-	sz += 8;
-	ie += sz;
-
-	/* beacon interval : 2bytes */
-	*(u16 *)ie = cpu_to_le16((u16)100);/* BCN_INTERVAL = 100; */
-	sz += 2;
-	ie += 2;
-
-	/* capability info */
-	*(u16 *)ie = 0;
-	*(u16 *)ie |= cpu_to_le16(WLAN_CAPABILITY_ESS);
-	*(u16 *)ie |= cpu_to_le16(WLAN_CAPABILITY_SHORT_PREAMBLE);
-	/* u16*)ie |= cpu_to_le16(WLAN_CAPABILITY_PRIVACY); */
-	sz += 2;
-	ie += 2;
-
-	/* SSID */
-	ie = rtw_set_ie(ie, WLAN_EID_SSID, ssid_len, ssid, &sz);
-
-	/* supported rates */
-	wireless_mode = WIRELESS_11BG_24N;
-	rtw_set_supported_rate(supportRate, wireless_mode);
-	rateLen = rtw_get_rateset_len(supportRate);
-	if (rateLen > 8) {
-		ie = rtw_set_ie(ie, WLAN_EID_SUPP_RATES, 8, supportRate, &sz);
-	} else {
-		ie = rtw_set_ie(ie, WLAN_EID_SUPP_RATES, rateLen, supportRate, &sz);
-	}
-
-
-	/* DS parameter set */
-	if (check_buddy_fwstate(adapter, _FW_LINKED) &&
-		check_buddy_fwstate(adapter, WIFI_STATION_STATE)) {
-		struct adapter *pbuddystruct adapter = adapter->pbuddystruct adapter;
-		struct mlme_ext_priv *pbuddy_mlmeext  = &pbuddystruct adapter->mlmeextpriv;
-
-		oper_channel = pbuddy_mlmeext->cur_channel;
-	} else {
-		oper_channel = adapter_to_dvobj(adapter)->oper_channel;
-	}
-	ie = rtw_set_ie(ie, WLAN_EID_DS_PARAMS, 1, &oper_channel, &sz);
-
-	/* ext supported rates */
-	if (rateLen > 8) {
-		ie = rtw_set_ie(ie, WLAN_EID_EXT_SUPP_RATES, (rateLen - 8), (supportRate + 8), &sz);
-	}
-
-	DBG_871X("%s, start auto ap beacon sz =%d\n", __func__, sz);
-
-	/* lunch ap mode & start to issue beacon */
-	if (rtw_check_beacon_data(adapter, pbuf,  sz) == _SUCCESS) {
-
-	} else {
-		ret = -EINVAL;
-	}
-
-
-	kfree(pbuf);
-
-	return ret;
-
-}
-#endif/* CONFIG_AUTO_AP_MODE */
-
 u8 setopmode_hdl(struct adapter *padapter, u8 *pbuf)
 {
 	u8 type;
@@ -6029,12 +5797,6 @@ u8 setopmode_hdl(struct adapter *padapter, u8 *pbuf)
 	rtw_hal_set_hwreg(padapter, HW_VAR_SET_OPMODE, (u8 *)(&type));
 	/* Set_MSR(padapter, type); */
 
-
-#ifdef CONFIG_AUTO_AP_MODE
-	if (psetop->mode == Ndis802_11APMode)
-		rtw_auto_ap_start_beacon(padapter);
-#endif
-
 	if (psetop->mode == Ndis802_11APMode) {
 		/*  Do this after port switch to */
 		/*  prevent from downloading rsvd page to wrong port */
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 697da6834810..1fa381663b4c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -1600,38 +1600,6 @@ signed int wlanhdr_to_ethhdr(union recv_frame *precvframe)
 	eth_type = ntohs(be_tmp); /* pattrib->ether_type */
 	pattrib->eth_type = eth_type;
 
-#ifdef CONFIG_AUTO_AP_MODE
-	if (0x8899 == pattrib->eth_type) {
-		struct sta_info *psta = precvframe->u.hdr.psta;
-
-		DBG_871X("wlan rx: got eth_type = 0x%x\n", pattrib->eth_type);
-
-		if (psta && psta->isrc && psta->pid > 0) {
-			u16 rx_pid;
-
-			rx_pid = *(u16 *)(ptr+rmv_len+2);
-
-			DBG_871X("wlan rx(pid = 0x%x): sta(%pM) pid = 0x%x\n",
-				rx_pid, MAC_ARG(psta->hwaddr), psta->pid);
-
-			if (rx_pid == psta->pid) {
-				int i;
-				u16 len = *(u16 *)(ptr+rmv_len+4);
-				/* u16 ctrl_type = *(u16*)(ptr+rmv_len+6); */
-
-				/* DBG_871X("RC: len = 0x%x, ctrl_type = 0x%x\n", len, ctrl_type); */
-				DBG_871X("RC: len = 0x%x\n", len);
-
-				for (i = 0; i < len ; i++)
-					DBG_871X("0x%x\n", *(ptr+rmv_len+6+i));
-					/* DBG_871X("0x%x\n", *(ptr+rmv_len+8+i)); */
-
-				DBG_871X("RC-end\n");
-			}
-		}
-	}
-#endif /* CONFIG_AUTO_AP_MODE */
-
 	if ((check_fwstate(pmlmepriv, WIFI_MP_STATE) == true)) {
 		ptr += rmv_len;
 		*ptr = 0x87;
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 9d45484acdeb..2daf5c461a4d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -467,11 +467,6 @@ static void update_attrib_phy_info(struct adapter *padapter, struct pkt_attrib *
 		pattrib->ampdu_spacing = psta->htpriv.rx_ampdu_min_spacing;
 
 	pattrib->retry_ctrl = false;
-
-#ifdef CONFIG_AUTO_AP_MODE
-	if (psta->isrc && psta->pid > 0)
-		pattrib->pctrl = true;
-#endif
 }
 
 static s32 update_attrib_sec_info(struct adapter *padapter, struct pkt_attrib *pattrib, struct sta_info *psta)
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 618b40ede2e4..49085525de05 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -3079,9 +3079,6 @@ static void rtl8723b_fill_default_txdesc(
 			(pattrib->ether_type != 0x88B4) &&
 			(pattrib->dhcp_pkt != 1) &&
 			(drv_userate != 1)
-#ifdef CONFIG_AUTO_AP_MODE
-			&& (!pattrib->pctrl)
-#endif
 		) {
 			/*  Non EAP & ARP & DHCP type data packet */
 
diff --git a/drivers/staging/rtl8723bs/include/sta_info.h b/drivers/staging/rtl8723bs/include/sta_info.h
index 78a9091661a5..33e6e00c126d 100644
--- a/drivers/staging/rtl8723bs/include/sta_info.h
+++ b/drivers/staging/rtl8723bs/include/sta_info.h
@@ -182,11 +182,6 @@ struct sta_info {
 
 	u8 keep_alive_trycnt;
 
-#ifdef CONFIG_AUTO_AP_MODE
-	u8 isrc; /* this device is rc */
-	u16 pid; /*  pairing id */
-#endif
-
 	u8 *passoc_req;
 	u32 assoc_req_len;
 
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index a4a1b34281c3..fbdbcd04d44a 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -190,39 +190,6 @@ void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup)
 	wrqu.data.length = sizeof(ev);
 }
 
-#ifdef CONFIG_AUTO_AP_MODE
-static void rtw_os_ksocket_send(struct adapter *padapter, union recv_frame *precv_frame)
-{
-	struct sk_buff *skb = precv_frame->u.hdr.pkt;
-	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
-	struct sta_info *psta = precv_frame->u.hdr.psta;
-
-	DBG_871X("eth rx: got eth_type = 0x%x\n", pattrib->eth_type);
-
-	if (psta && psta->isrc && psta->pid > 0) {
-		u16 rx_pid;
-
-		rx_pid = *(u16 *)(skb->data+ETH_HLEN);
-
-		DBG_871X("eth rx(pid = 0x%x): sta(%pM) pid = 0x%x\n",
-			rx_pid, MAC_ARG(psta->hwaddr), psta->pid);
-
-		if (rx_pid == psta->pid) {
-			int i;
-			u16 len = *(u16 *)(skb->data+ETH_HLEN+2);
-			DBG_871X("eth, RC: len = 0x%x\n", len);
-
-			for (i = 0; i < len; i++)
-				DBG_871X("0x%x\n", *(skb->data+ETH_HLEN+4+i));
-
-			DBG_871X("eth, RC-end\n");
-		}
-
-	}
-
-}
-#endif /* CONFIG_AUTO_AP_MODE */
-
 int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame)
 {
 	struct recv_priv *precvpriv;
@@ -251,14 +218,6 @@ int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame
 
 	RT_TRACE(_module_recv_osdep_c_, _drv_info_, ("\n skb->head =%p skb->data =%p skb->tail =%p skb->end =%p skb->len =%d\n", skb->head, skb->data, skb_tail_pointer(skb), skb_end_pointer(skb), skb->len));
 
-#ifdef CONFIG_AUTO_AP_MODE
-	if (0x8899 == pattrib->eth_type) {
-		rtw_os_ksocket_send(padapter, precv_frame);
-
-		/* goto _recv_indicatepkt_drop; */
-	}
-#endif /* CONFIG_AUTO_AP_MODE */
-
 	rtw_os_recv_indicate_pkt(padapter, skb, pattrib);
 
 	/* pointers to NULL before rtw_free_recvframe() */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

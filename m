Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0327D3396AA
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 19:34:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BA8C4EC4F;
	Fri, 12 Mar 2021 18:34:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TohvprUMgJ7l; Fri, 12 Mar 2021 18:34:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE2C846562;
	Fri, 12 Mar 2021 18:34:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 110CA1BF3C0
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 18:34:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8669F82DD6
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 18:34:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NygQfP2KZFG9 for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 18:33:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D7CA084036
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 18:33:56 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id g20so4375113wmk.3
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 10:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9PQWl+sosEen2dPiLEnMOVqMB9EGujr5CJDcTZq6gT4=;
 b=jlaMecHuDgUS2TqY8BGMrEKUO8etPMphAKnmL5YxMTDtC8p7yQz8WFcIXIiL9V21XA
 w3HVM+aZzT7GCSN7ttwr9DYj+HNHQy4eVXa2N9iMwpT86AXGWMFdYlM4BOilwENPeFrA
 Tz4C0IkglBN+OD7Dr4Y8VH0vs1WNsnztIg9J+FRUBM8KBXTJ+AfryEluajTVbqrFdWN4
 9cNP6oLo/vxochwu3qTytxVJR5pqZxXrAvPd22lNTSdEKXXcUhGXAU+TGJOaDJRvthTL
 ++3fMg1kZLbggtXOTPlebNkCIvjc8WOIiuKQBkAqePh1kNyHyRHRgkuEUMoNpHiupt8S
 u6hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9PQWl+sosEen2dPiLEnMOVqMB9EGujr5CJDcTZq6gT4=;
 b=EsINMRFsLROYnFCu5+R1pkdhAVlrMSbcJNllIN44Mkpf6ve45eSun+8cP5E/H0FItO
 Edo3VhE7M8tExbgcbfpwuGv+JOWdrsBbwO/umcY6zVrBiRWMjEc4vg5fR5wvyPGOnej0
 93UKijAy2NVdp7YdodUvyLhnOObeV/WgBemNIWyyh2nJDq6w3ck6om49qLyOF9TVXXfe
 k60fqdbD+bHYBa8+9RHbGxmfXl13HJgSc1BVgJgIBcwg5uMurwiyYvp2/lCRASA6tBbu
 6eyh7Mv5dS+Kt7CXGwbFZ0TOcwZryaFyDUCAd0idk+P5zkIE8Pz8Re6kxYygp/1SNf0D
 yUHg==
X-Gm-Message-State: AOAM531D7N+Gdpp/fC6fN//0Z4hHDUSQZhpL2Pabeuzq+4W/ejN8tZgf
 0rVUA75M2fH6AS/Cl1FH+AY=
X-Google-Smtp-Source: ABdhPJxS+niFjn5Z9JBcfupfgjMEfUC3/78NK4eaELWPBVhcrZes8dqmd+uML1yiZlU9g2Q6uBM46Q==
X-Received: by 2002:a1c:c206:: with SMTP id s6mr14157788wmf.77.1615574034690; 
 Fri, 12 Mar 2021 10:33:54 -0800 (PST)
Received: from agape.jhs ([151.57.163.80])
 by smtp.gmail.com with ESMTPSA id m9sm8772145wro.52.2021.03.12.10.33.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 10:33:54 -0800 (PST)
Date: Fri, 12 Mar 2021 19:33:51 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 3/4] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_WOWLAN
Message-ID: <eebdf2ea84d430d62d17b31a84c661b0406a2e04.1615572985.git.fabioaiuto83@gmail.com>
References: <cover.1615572985.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615572985.git.fabioaiuto83@gmail.com>
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

remove conditional code blocks checked by unused CONFIG_WOWLAN

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c     |   3 -
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |   6 +-
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |  53 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  | 555 +-----------------
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  43 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  | 240 +-------
 drivers/staging/rtl8723bs/hal/sdio_ops.c      |   4 +-
 drivers/staging/rtl8723bs/include/autoconf.h  |   3 -
 drivers/staging/rtl8723bs/include/drv_types.h |   5 -
 .../rtl8723bs/include/drv_types_sdio.h        |   2 +-
 .../staging/rtl8723bs/include/hal_com_h2c.h   |  71 +--
 drivers/staging/rtl8723bs/include/hal_intf.h  |   5 -
 .../staging/rtl8723bs/include/rtl8723b_cmd.h  |   4 +-
 .../staging/rtl8723bs/include/rtl8723b_hal.h  |   7 -
 .../staging/rtl8723bs/include/rtl8723b_spec.h |  10 -
 drivers/staging/rtl8723bs/include/rtw_mp.h    |   3 -
 .../staging/rtl8723bs/include/rtw_pwrctrl.h   |   9 -
 .../staging/rtl8723bs/include/rtw_security.h  |   3 -
 drivers/staging/rtl8723bs/include/sdio_ops.h  |   8 +-
 drivers/staging/rtl8723bs/include/sta_info.h  |   5 -
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    |   3 -
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   | 231 +-------
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c  |   5 -
 23 files changed, 28 insertions(+), 1250 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 2c9425e2a1e9..7412295f0a04 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2098,9 +2098,6 @@ int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
 
 	if (!candidate) {
 		DBG_871X("%s: return _FAIL(candidate == NULL)\n", __func__);
-#ifdef CONFIG_WOWLAN
-		_clr_fwstate_(pmlmepriv, _FW_LINKED|_FW_UNDER_LINKING);
-#endif
 		ret = _FAIL;
 		goto exit;
 	} else {
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 8059aeea9d47..2e6c522b74e3 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -350,7 +350,7 @@ static u8 PS_RDY_CHECK(struct adapter *padapter)
 	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 
-#if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
+#ifdef CONFIG_AP_WOWLAN
 	if (pwrpriv->bInSuspend && pwrpriv->wowlan_mode)
 		return true;
 	else if (pwrpriv->bInSuspend && pwrpriv->wowlan_ap_mode)
@@ -391,7 +391,7 @@ static u8 PS_RDY_CHECK(struct adapter *padapter)
 void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_ant_mode, const char *msg)
 {
 	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
-#if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
+#ifdef CONFIG_AP_WOWLAN
 	struct debug_priv *pdbgpriv = &padapter->dvobj->drv_dbg;
 #endif
 
@@ -422,7 +422,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 			pwrpriv->pwr_mode = ps_mode;
 			rtw_set_rpwm(padapter, PS_STATE_S4);
 
-#if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
+#ifdef CONFIG_AP_WOWLAN
 			if (pwrpriv->wowlan_mode || pwrpriv->wowlan_ap_mode) {
 				unsigned long start_time;
 				u32 delay_ms;
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index ae577178534f..355e43c4cf9a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -10,7 +10,7 @@
 #include <rtw_debug.h>
 #include <hal_com_h2c.h>
 
-#if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
+#ifdef CONFIG_AP_WOWLAN
 #include <linux/inetdevice.h>
 #endif
 
@@ -2113,7 +2113,7 @@ int rtw_config_gpio(struct net_device *netdev, int gpio_num, bool isOutput)
 EXPORT_SYMBOL(rtw_config_gpio);
 #endif
 
-#if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
+#ifdef CONFIG_AP_WOWLAN
 void rtw_get_current_ip_address(struct adapter *padapter, u8 *pcurrentip)
 {
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
@@ -2139,53 +2139,4 @@ void rtw_get_current_ip_address(struct adapter *padapter, u8 *pcurrentip)
 	}
 }
 #endif
-#ifdef CONFIG_WOWLAN
-void rtw_get_sec_iv(struct adapter *padapter, u8 *pcur_dot11txpn, u8 *StaAddr)
-{
-	struct sta_info *psta;
-	struct security_priv *psecpriv = &padapter->securitypriv;
-
-	memset(pcur_dot11txpn, 0, 8);
-	if (!StaAddr)
-		return;
-	psta = rtw_get_stainfo(&padapter->stapriv, StaAddr);
-	DBG_871X("%s(): StaAddr: %02x %02x %02x %02x %02x %02x\n",
-		__func__, StaAddr[0], StaAddr[1], StaAddr[2],
-		StaAddr[3], StaAddr[4], StaAddr[5]);
-
-	if (psta) {
-		if (psecpriv->dot11PrivacyAlgrthm != _NO_PRIVACY_ && psta->dot11txpn.val > 0)
-			psta->dot11txpn.val--;
-		AES_IV(pcur_dot11txpn, psta->dot11txpn, 0);
-
-		DBG_871X("%s(): CurrentIV: %02x %02x %02x %02x %02x %02x %02x %02x\n"
-		, __func__, pcur_dot11txpn[0], pcur_dot11txpn[1],
-		pcur_dot11txpn[2], pcur_dot11txpn[3], pcur_dot11txpn[4],
-		pcur_dot11txpn[5], pcur_dot11txpn[6], pcur_dot11txpn[7]);
-	}
-}
-
-void rtw_set_sec_pn(struct adapter *padapter)
-{
-		struct sta_info         *psta;
-		struct mlme_ext_priv    *pmlmeext = &(padapter->mlmeextpriv);
-		struct mlme_ext_info    *pmlmeinfo = &(pmlmeext->mlmext_info);
-		struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
-		struct security_priv *psecpriv = &padapter->securitypriv;
-
-		psta = rtw_get_stainfo(&padapter->stapriv,
-		get_my_bssid(&pmlmeinfo->network));
-
-		if (psta) {
-			if (pwrpriv->wowlan_fw_iv > psta->dot11txpn.val) {
-				if (psecpriv->dot11PrivacyAlgrthm != _NO_PRIVACY_)
-					psta->dot11txpn.val = pwrpriv->wowlan_fw_iv + 2;
-			} else {
-				DBG_871X("%s(): FW IV is smaller than driver\n", __func__);
-				psta->dot11txpn.val += 2;
-			}
-			DBG_871X("%s: dot11txpn: 0x%016llx\n", __func__, psta->dot11txpn.val);
-		}
-}
-#endif /* CONFIG_WOWLAN */
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index b6958d3db855..c3e7103da7e7 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -31,10 +31,6 @@ static u8 _is_fw_read_cmd_down(struct adapter *padapter, u8 msgbox_num)
 		if (0 == valid) {
 			read_down = true;
 		}
-#ifdef CONFIG_WOWLAN
-		else
-			msleep(1);
-#endif
 	} while ((!read_down) && (retry_cnts--));
 
 	return read_down;
@@ -316,239 +312,6 @@ static void ConstructNullFunctionData(
 	*pLength = pktlen;
 }
 
-
-#ifdef CONFIG_WOWLAN
-/*  */
-/*  Description: */
-/* 	Construct the ARP response packet to support ARP offload. */
-/*  */
-static void ConstructARPResponse(
-	struct adapter *padapter,
-	u8 *pframe,
-	u32 *pLength,
-	u8 *pIPAddress
-)
-{
-	struct ieee80211_hdr	*pwlanhdr;
-	__le16 *fctrl;
-	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
-	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	static u8 	ARPLLCHeader[8] = {0xAA, 0xAA, 0x03, 0x00, 0x00, 0x00, 0x08, 0x06};
-	u8 		*pARPRspPkt = pframe;
-	/* for TKIP Cal MIC */
-	u8 		*payload = pframe;
-	u8 	EncryptionHeadOverhead = 0;
-	/* DBG_871X("%s:%d\n", __func__, bForcePowerSave); */
-
-	pwlanhdr = (struct ieee80211_hdr *)pframe;
-
-	fctrl = &pwlanhdr->frame_control;
-	*(fctrl) = 0;
-
-	/*  */
-	/*  MAC Header. */
-	/*  */
-	SetFrameType(fctrl, WIFI_DATA);
-	/* SetFrameSubType(fctrl, 0); */
-	SetToDs(fctrl);
-	memcpy(pwlanhdr->addr1, get_my_bssid(&(pmlmeinfo->network)), ETH_ALEN);
-	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
-	memcpy(pwlanhdr->addr3, get_my_bssid(&(pmlmeinfo->network)), ETH_ALEN);
-
-	SetSeqNum(pwlanhdr, 0);
-	SetDuration(pwlanhdr, 0);
-	/* SET_80211_HDR_FRAME_CONTROL(pARPRspPkt, 0); */
-	/* SET_80211_HDR_TYPE_AND_SUBTYPE(pARPRspPkt, Type_Data); */
-	/* SET_80211_HDR_TO_DS(pARPRspPkt, 1); */
-	/* SET_80211_HDR_ADDRESS1(pARPRspPkt, pMgntInfo->Bssid); */
-	/* SET_80211_HDR_ADDRESS2(pARPRspPkt, Adapter->CurrentAddress); */
-	/* SET_80211_HDR_ADDRESS3(pARPRspPkt, pMgntInfo->Bssid); */
-
-	/* SET_80211_HDR_DURATION(pARPRspPkt, 0); */
-	/* SET_80211_HDR_FRAGMENT_SEQUENCE(pARPRspPkt, 0); */
-	*pLength = 24;
-
-	/*  */
-	/*  Security Header: leave space for it if necessary. */
-	/*  */
-
-	switch (psecuritypriv->dot11PrivacyAlgrthm) {
-	case _WEP40_:
-	case _WEP104_:
-		EncryptionHeadOverhead = 4;
-		break;
-	case _TKIP_:
-		EncryptionHeadOverhead = 8;
-		break;
-	case _AES_:
-		EncryptionHeadOverhead = 8;
-		break;
-	default:
-		EncryptionHeadOverhead = 0;
-	}
-
-	if (EncryptionHeadOverhead > 0) {
-		memset(&(pframe[*pLength]), 0, EncryptionHeadOverhead);
-		*pLength += EncryptionHeadOverhead;
-		SetPrivacy(fctrl);
-	}
-
-	/*  */
-	/*  Frame Body. */
-	/*  */
-	pARPRspPkt = (u8 *)(pframe + *pLength);
-	payload = pARPRspPkt; /* Get Payload pointer */
-	/*  LLC header */
-	memcpy(pARPRspPkt, ARPLLCHeader, 8);
-	*pLength += 8;
-
-	/*  ARP element */
-	pARPRspPkt += 8;
-	SET_ARP_PKT_HW(pARPRspPkt, 0x0100);
-	SET_ARP_PKT_PROTOCOL(pARPRspPkt, 0x0008);	/*  IP protocol */
-	SET_ARP_PKT_HW_ADDR_LEN(pARPRspPkt, 6);
-	SET_ARP_PKT_PROTOCOL_ADDR_LEN(pARPRspPkt, 4);
-	SET_ARP_PKT_OPERATION(pARPRspPkt, 0x0200); /*  ARP response */
-	SET_ARP_PKT_SENDER_MAC_ADDR(pARPRspPkt, myid(&(padapter->eeprompriv)));
-	SET_ARP_PKT_SENDER_IP_ADDR(pARPRspPkt, pIPAddress);
-	{
-		SET_ARP_PKT_TARGET_MAC_ADDR(pARPRspPkt, get_my_bssid(&(pmlmeinfo->network)));
-		SET_ARP_PKT_TARGET_IP_ADDR(pARPRspPkt, pIPAddress);
-		DBG_871X("%s Target Mac Addr:%pM\n", __func__, MAC_ARG(get_my_bssid(&(pmlmeinfo->network))));
-		DBG_871X("%s Target IP Addr:%pI4\n", __func__, IP_ARG(pIPAddress));
-	}
-
-	*pLength += 28;
-
-	if (psecuritypriv->dot11PrivacyAlgrthm == _TKIP_) {
-		u8 mic[8];
-		struct mic_data	micdata;
-		struct sta_info *psta = NULL;
-		u8 priority[4] = {
-			0x0, 0x0, 0x0, 0x0
-		};
-		u8 null_key[16] = {
-			0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
-			0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
-		};
-
-		DBG_871X("%s(): Add MIC\n", __func__);
-
-		psta = rtw_get_stainfo(&padapter->stapriv, get_my_bssid(&(pmlmeinfo->network)));
-		if (psta) {
-			if (!memcmp(&psta->dot11tkiptxmickey.skey[0], null_key, 16)) {
-				DBG_871X("%s(): STA dot11tkiptxmickey == 0\n", __func__);
-			}
-			/* start to calculate the mic code */
-			rtw_secmicsetkey(&micdata, &psta->dot11tkiptxmickey.skey[0]);
-		}
-
-		rtw_secmicappend(&micdata, pwlanhdr->addr3, 6);  /* DA */
-
-		rtw_secmicappend(&micdata, pwlanhdr->addr2, 6); /* SA */
-
-		priority[0] = 0;
-		rtw_secmicappend(&micdata, &priority[0], 4);
-
-		rtw_secmicappend(&micdata, payload, 36); /* payload length = 8 + 28 */
-
-		rtw_secgetmic(&micdata, &(mic[0]));
-
-		pARPRspPkt += 28;
-		memcpy(pARPRspPkt, &(mic[0]), 8);
-
-		*pLength += 8;
-	}
-}
-
-#ifdef CONFIG_GTK_OL
-static void ConstructGTKResponse(
-	struct adapter *padapter, u8 *pframe, u32 *pLength
-)
-{
-	struct ieee80211_hdr *pwlanhdr;
-	u16 *fctrl;
-	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
-	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	static u8 LLCHeader[8] = {0xAA, 0xAA, 0x03, 0x00, 0x00, 0x00, 0x88, 0x8E};
-	static u8 GTKbody_a[11] = {0x01, 0x03, 0x00, 0x5F, 0x02, 0x03, 0x12, 0x00, 0x10, 0x42, 0x0B};
-	u8 *pGTKRspPkt = pframe;
-	u8 EncryptionHeadOverhead = 0;
-	/* DBG_871X("%s:%d\n", __func__, bForcePowerSave); */
-
-	pwlanhdr = (struct ieee80211_hdr *)pframe;
-
-	fctrl = &pwlanhdr->frame_control;
-	*(fctrl) = 0;
-
-	/*  */
-	/*  MAC Header. */
-	/*  */
-	SetFrameType(fctrl, WIFI_DATA);
-	/* SetFrameSubType(fctrl, 0); */
-	SetToDs(fctrl);
-	memcpy(pwlanhdr->addr1, get_my_bssid(&(pmlmeinfo->network)), ETH_ALEN);
-	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
-	memcpy(pwlanhdr->addr3, get_my_bssid(&(pmlmeinfo->network)), ETH_ALEN);
-
-	SetSeqNum(pwlanhdr, 0);
-	SetDuration(pwlanhdr, 0);
-
-	*pLength = 24;
-
-	/*  */
-	/*  Security Header: leave space for it if necessary. */
-	/*  */
-
-	switch (psecuritypriv->dot11PrivacyAlgrthm) {
-	case _WEP40_:
-	case _WEP104_:
-		EncryptionHeadOverhead = 4;
-		break;
-	case _TKIP_:
-		EncryptionHeadOverhead = 8;
-		break;
-	case _AES_:
-		EncryptionHeadOverhead = 8;
-		break;
-	default:
-		EncryptionHeadOverhead = 0;
-	}
-
-	if (EncryptionHeadOverhead > 0) {
-		memset(&(pframe[*pLength]), 0, EncryptionHeadOverhead);
-		*pLength += EncryptionHeadOverhead;
-		/* GTK's privacy bit is done by FW */
-		/* SetPrivacy(fctrl); */
-	}
-
-	/*  */
-	/*  Frame Body. */
-	/*  */
-	pGTKRspPkt =  (u8 *)(pframe + *pLength);
-	/*  LLC header */
-	memcpy(pGTKRspPkt, LLCHeader, 8);
-	*pLength += 8;
-
-	/*  GTK element */
-	pGTKRspPkt += 8;
-
-	/* GTK frame body after LLC, part 1 */
-	memcpy(pGTKRspPkt, GTKbody_a, 11);
-	*pLength += 11;
-	pGTKRspPkt += 11;
-	/* GTK frame body after LLC, part 2 */
-	memset(&(pframe[*pLength]), 0, 88);
-	*pLength += 88;
-	pGTKRspPkt += 88;
-
-}
-#endif /* CONFIG_GTK_OL */
-
-#endif /* CONFIG_WOWLAN */
-
 #ifdef CONFIG_AP_WOWLAN
 static void ConstructProbeRsp(struct adapter *padapter, u8 *pframe, u32 *pLength, u8 *StaAddr, bool bHideSSID)
 {
@@ -692,31 +455,6 @@ static void rtl8723b_set_FwRsvdPage_cmd(struct adapter *padapter, PRSVDPAGE_LOC
 
 static void rtl8723b_set_FwAoacRsvdPage_cmd(struct adapter *padapter, PRSVDPAGE_LOC rsvdpageloc)
 {
-#ifdef CONFIG_WOWLAN
-	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	u8 u1H2CAoacRsvdPageParm[H2C_AOAC_RSVDPAGE_LOC_LEN] = {0};
-
-	DBG_871X("8723BAOACRsvdPageLoc: RWC =%d ArpRsp =%d NbrAdv =%d GtkRsp =%d GtkInfo =%d ProbeReq =%d NetworkList =%d\n",
-			rsvdpageloc->LocRemoteCtrlInfo, rsvdpageloc->LocArpRsp,
-			rsvdpageloc->LocNbrAdv, rsvdpageloc->LocGTKRsp,
-			rsvdpageloc->LocGTKInfo, rsvdpageloc->LocProbeReq,
-			rsvdpageloc->LocNetList);
-
-	if (check_fwstate(pmlmepriv, _FW_LINKED)) {
-		SET_H2CCMD_AOAC_RSVDPAGE_LOC_REMOTE_WAKE_CTRL_INFO(u1H2CAoacRsvdPageParm, rsvdpageloc->LocRemoteCtrlInfo);
-		SET_H2CCMD_AOAC_RSVDPAGE_LOC_ARP_RSP(u1H2CAoacRsvdPageParm, rsvdpageloc->LocArpRsp);
-		/* SET_H2CCMD_AOAC_RSVDPAGE_LOC_NEIGHBOR_ADV(u1H2CAoacRsvdPageParm, rsvdpageloc->LocNbrAdv); */
-		SET_H2CCMD_AOAC_RSVDPAGE_LOC_GTK_RSP(u1H2CAoacRsvdPageParm, rsvdpageloc->LocGTKRsp);
-		SET_H2CCMD_AOAC_RSVDPAGE_LOC_GTK_INFO(u1H2CAoacRsvdPageParm, rsvdpageloc->LocGTKInfo);
-#ifdef CONFIG_GTK_OL
-		SET_H2CCMD_AOAC_RSVDPAGE_LOC_GTK_EXT_MEM(u1H2CAoacRsvdPageParm, rsvdpageloc->LocGTKEXTMEM);
-#endif /*  CONFIG_GTK_OL */
-		RT_PRINT_DATA(_module_hal_init_c_, _drv_always_, "u1H2CAoacRsvdPageParm:", u1H2CAoacRsvdPageParm, H2C_AOAC_RSVDPAGE_LOC_LEN);
-		FillH2CCmd8723B(padapter, H2C_8723B_AOAC_RSVD_PAGE, H2C_AOAC_RSVDPAGE_LOC_LEN, u1H2CAoacRsvdPageParm);
-	} else {
-	}
-
-#endif /*  CONFIG_WOWLAN */
 }
 
 #ifdef CONFIG_AP_WOWLAN
@@ -771,40 +509,6 @@ void rtl8723b_set_FwMediaStatusRpt_cmd(struct adapter *padapter, u8 mstatus, u8
 	FillH2CCmd8723B(padapter, H2C_8723B_MEDIA_STATUS_RPT, H2C_MEDIA_STATUS_RPT_LEN, u1H2CMediaStatusRptParm);
 }
 
-#ifdef CONFIG_WOWLAN
-static void rtl8723b_set_FwKeepAlive_cmd(struct adapter *padapter, u8 benable, u8 pkt_type)
-{
-	u8 u1H2CKeepAliveParm[H2C_KEEP_ALIVE_CTRL_LEN] = {0};
-	u8 adopt = 1, check_period = 5;
-
-	DBG_871X("%s(): benable = %d\n", __func__, benable);
-	SET_8723B_H2CCMD_KEEPALIVE_PARM_ENABLE(u1H2CKeepAliveParm, benable);
-	SET_8723B_H2CCMD_KEEPALIVE_PARM_ADOPT(u1H2CKeepAliveParm, adopt);
-	SET_8723B_H2CCMD_KEEPALIVE_PARM_PKT_TYPE(u1H2CKeepAliveParm, pkt_type);
-	SET_8723B_H2CCMD_KEEPALIVE_PARM_CHECK_PERIOD(u1H2CKeepAliveParm, check_period);
-
-	RT_PRINT_DATA(_module_hal_init_c_, _drv_always_, "u1H2CKeepAliveParm:", u1H2CKeepAliveParm, H2C_KEEP_ALIVE_CTRL_LEN);
-
-	FillH2CCmd8723B(padapter, H2C_8723B_KEEP_ALIVE, H2C_KEEP_ALIVE_CTRL_LEN, u1H2CKeepAliveParm);
-}
-
-static void rtl8723b_set_FwDisconDecision_cmd(struct adapter *padapter, u8 benable)
-{
-	u8 u1H2CDisconDecisionParm[H2C_DISCON_DECISION_LEN] = {0};
-	u8 adopt = 1, check_period = 10, trypkt_num = 0;
-
-	DBG_871X("%s(): benable = %d\n", __func__, benable);
-	SET_8723B_H2CCMD_DISCONDECISION_PARM_ENABLE(u1H2CDisconDecisionParm, benable);
-	SET_8723B_H2CCMD_DISCONDECISION_PARM_ADOPT(u1H2CDisconDecisionParm, adopt);
-	SET_8723B_H2CCMD_DISCONDECISION_PARM_CHECK_PERIOD(u1H2CDisconDecisionParm, check_period);
-	SET_8723B_H2CCMD_DISCONDECISION_PARM_TRY_PKT_NUM(u1H2CDisconDecisionParm, trypkt_num);
-
-	RT_PRINT_DATA(_module_hal_init_c_, _drv_always_, "u1H2CDisconDecisionParm:", u1H2CDisconDecisionParm, H2C_DISCON_DECISION_LEN);
-
-	FillH2CCmd8723B(padapter, H2C_8723B_DISCON_DECISION, H2C_DISCON_DECISION_LEN, u1H2CDisconDecisionParm);
-}
-#endif /*  CONFIG_WOWLAN */
-
 void rtl8723b_set_FwMacIdConfig_cmd(struct adapter *padapter, u8 mac_id, u8 raid, u8 bw, u8 sgi, u32 mask)
 {
 	u8 u1H2CMacIdConfigParm[H2C_MACID_CFG_LEN] = {0};
@@ -855,21 +559,12 @@ void rtl8723b_set_FwPwrMode_cmd(struct adapter *padapter, u8 psmode)
 	else
 		DBG_871X("%s(): FW LPS mode = %d, SmartPS =%d\n", __func__, psmode, pwrpriv->smart_ps);
 
-#ifdef CONFIG_WOWLAN
-	if (psmode == PS_MODE_DTIM) { /* For WOWLAN LPS, DTIM = (awake_intvl - 1) */
+	if (pwrpriv->dtim > 0 && pwrpriv->dtim < 16)
+		awake_intvl = pwrpriv->dtim+1;/* DTIM = (awake_intvl - 1) */
+	else
 		awake_intvl = 3;/* DTIM =2 */
-		rlbm = 2;
-	} else
-#endif /* CONFIG_WOWLAN */
-	{
-		if (pwrpriv->dtim > 0 && pwrpriv->dtim < 16)
-			awake_intvl = pwrpriv->dtim+1;/* DTIM = (awake_intvl - 1) */
-		else
-			awake_intvl = 3;/* DTIM =2 */
-
-		rlbm = 2;
-	}
 
+	rlbm = 2;
 
 	if (padapter->registrypriv.wifi_spec == 1) {
 		awake_intvl = 2;
@@ -1003,135 +698,6 @@ void rtl8723b_set_FwPwrModeInIPS_cmd(struct adapter *padapter, u8 cmd_param)
 	FillH2CCmd8723B(padapter, H2C_8723B_FWLPS_IN_IPS_, 1, &cmd_param);
 }
 
-#ifdef CONFIG_WOWLAN
-static void rtl8723b_set_FwWoWlanCtrl_Cmd(struct adapter *padapter, u8 bFuncEn)
-{
-	struct security_priv *psecpriv = &padapter->securitypriv;
-	u8 u1H2CWoWlanCtrlParm[H2C_WOWLAN_LEN] = {0};
-	u8 discont_wake = 1, gpionum = 0, gpio_dur = 0, hw_unicast = 0;
-	u8 sdio_wakeup_enable = 1;
-	u8 gpio_high_active = 0; /* 0: low active, 1: high active */
-	u8 magic_pkt = 0;
-
-	if (psecpriv->dot11PrivacyAlgrthm == _WEP40_ || psecpriv->dot11PrivacyAlgrthm == _WEP104_)
-		hw_unicast = 1;
-
-	DBG_871X("%s(): bFuncEn =%d\n", __func__, bFuncEn);
-
-	SET_H2CCMD_WOWLAN_FUNC_ENABLE(u1H2CWoWlanCtrlParm, bFuncEn);
-	SET_H2CCMD_WOWLAN_PATTERN_MATCH_ENABLE(u1H2CWoWlanCtrlParm, 0);
-	SET_H2CCMD_WOWLAN_MAGIC_PKT_ENABLE(u1H2CWoWlanCtrlParm, magic_pkt);
-	SET_H2CCMD_WOWLAN_UNICAST_PKT_ENABLE(u1H2CWoWlanCtrlParm, hw_unicast);
-	SET_H2CCMD_WOWLAN_ALL_PKT_DROP(u1H2CWoWlanCtrlParm, 0);
-	SET_H2CCMD_WOWLAN_GPIO_ACTIVE(u1H2CWoWlanCtrlParm, gpio_high_active);
-	SET_H2CCMD_WOWLAN_DISCONNECT_WAKE_UP(u1H2CWoWlanCtrlParm, discont_wake);
-	SET_H2CCMD_WOWLAN_GPIONUM(u1H2CWoWlanCtrlParm, gpionum);
-	SET_H2CCMD_WOWLAN_DATAPIN_WAKE_UP(u1H2CWoWlanCtrlParm, sdio_wakeup_enable);
-	SET_H2CCMD_WOWLAN_GPIO_DURATION(u1H2CWoWlanCtrlParm, gpio_dur);
-	/* SET_H2CCMD_WOWLAN_GPIO_PULSE_EN(u1H2CWoWlanCtrlParm, 1); */
-	SET_H2CCMD_WOWLAN_GPIO_PULSE_COUNT(u1H2CWoWlanCtrlParm, 0x09);
-
-	RT_PRINT_DATA(_module_hal_init_c_, _drv_always_, "u1H2CWoWlanCtrlParm:", u1H2CWoWlanCtrlParm, H2C_WOWLAN_LEN);
-
-	FillH2CCmd8723B(padapter, H2C_8723B_WOWLAN, H2C_WOWLAN_LEN, u1H2CWoWlanCtrlParm);
-}
-
-static void rtl8723b_set_FwRemoteWakeCtrl_Cmd(struct adapter *padapter, u8 benable)
-{
-	u8 u1H2CRemoteWakeCtrlParm[H2C_REMOTE_WAKE_CTRL_LEN] = {0};
-	struct security_priv *psecuritypriv = &(padapter->securitypriv);
-	struct pwrctrl_priv *ppwrpriv = adapter_to_pwrctl(padapter);
-
-	DBG_871X("%s(): Enable =%d\n", __func__, benable);
-
-	if (!ppwrpriv->wowlan_pno_enable) {
-		SET_H2CCMD_REMOTE_WAKECTRL_ENABLE(u1H2CRemoteWakeCtrlParm, benable);
-		SET_H2CCMD_REMOTE_WAKE_CTRL_ARP_OFFLOAD_EN(u1H2CRemoteWakeCtrlParm, 1);
-#ifdef CONFIG_GTK_OL
-		if (psecuritypriv->binstallKCK_KEK &&
-		    psecuritypriv->dot11PrivacyAlgrthm == _AES_) {
-			SET_H2CCMD_REMOTE_WAKE_CTRL_GTK_OFFLOAD_EN(u1H2CRemoteWakeCtrlParm, 1);
-		} else {
-			DBG_871X("no kck or security is not AES\n");
-			SET_H2CCMD_REMOTE_WAKE_CTRL_GTK_OFFLOAD_EN(u1H2CRemoteWakeCtrlParm, 0);
-		}
-#endif /* CONFIG_GTK_OL */
-
-		SET_H2CCMD_REMOTE_WAKE_CTRL_FW_UNICAST_EN(u1H2CRemoteWakeCtrlParm, 1);
-
-		if ((psecuritypriv->dot11PrivacyAlgrthm == _AES_) ||
-		    (psecuritypriv->dot11PrivacyAlgrthm == _NO_PRIVACY_))
-			SET_H2CCMD_REMOTE_WAKE_CTRL_ARP_ACTION(u1H2CRemoteWakeCtrlParm, 0);
-		else
-			SET_H2CCMD_REMOTE_WAKE_CTRL_ARP_ACTION(u1H2CRemoteWakeCtrlParm, 1);
-	}
-	RT_PRINT_DATA(_module_hal_init_c_, _drv_always_, "u1H2CRemoteWakeCtrlParm:", u1H2CRemoteWakeCtrlParm, H2C_REMOTE_WAKE_CTRL_LEN);
-	FillH2CCmd8723B(padapter, H2C_8723B_REMOTE_WAKE_CTRL,
-		H2C_REMOTE_WAKE_CTRL_LEN, u1H2CRemoteWakeCtrlParm);
-}
-
-static void rtl8723b_set_FwAOACGlobalInfo_Cmd(struct adapter *padapter,  u8 group_alg, u8 pairwise_alg)
-{
-	u8 u1H2CAOACGlobalInfoParm[H2C_AOAC_GLOBAL_INFO_LEN] = {0};
-
-	DBG_871X("%s(): group_alg =%d pairwise_alg =%d\n", __func__, group_alg, pairwise_alg);
-
-	SET_H2CCMD_AOAC_GLOBAL_INFO_PAIRWISE_ENC_ALG(u1H2CAOACGlobalInfoParm, pairwise_alg);
-	SET_H2CCMD_AOAC_GLOBAL_INFO_GROUP_ENC_ALG(u1H2CAOACGlobalInfoParm, group_alg);
-
-	RT_PRINT_DATA(_module_hal_init_c_, _drv_always_, "u1H2CAOACGlobalInfoParm:", u1H2CAOACGlobalInfoParm, H2C_AOAC_GLOBAL_INFO_LEN);
-
-	FillH2CCmd8723B(padapter, H2C_8723B_AOAC_GLOBAL_INFO, H2C_AOAC_GLOBAL_INFO_LEN, u1H2CAOACGlobalInfoParm);
-}
-
-void rtl8723b_set_wowlan_cmd(struct adapter *padapter, u8 enable)
-{
-	struct security_priv *psecpriv = &padapter->securitypriv;
-	struct pwrctrl_priv *ppwrpriv = adapter_to_pwrctl(padapter);
-	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	struct sta_info *psta = NULL;
-	u8 pkt_type = 0;
-
-	DBG_871X_LEVEL(_drv_always_, "+%s()+: enable =%d\n", __func__, enable);
-	if (enable) {
-		rtl8723b_set_FwAOACGlobalInfo_Cmd(padapter, psecpriv->dot118021XGrpPrivacy, psecpriv->dot11PrivacyAlgrthm);
-
-		rtl8723b_set_FwJoinBssRpt_cmd(padapter, RT_MEDIA_CONNECT);	/* RT_MEDIA_CONNECT will confuse in the future */
-
-		if (!(ppwrpriv->wowlan_pno_enable)) {
-			psta = rtw_get_stainfo(&padapter->stapriv, get_bssid(pmlmepriv));
-			if (psta)
-				rtl8723b_set_FwMediaStatusRpt_cmd(padapter, RT_MEDIA_CONNECT, psta->mac_id);
-		} else
-			DBG_871X("%s(): Disconnected, no FwMediaStatusRpt CONNECT\n", __func__);
-
-		msleep(2);
-
-		if (!(ppwrpriv->wowlan_pno_enable)) {
-			rtl8723b_set_FwDisconDecision_cmd(padapter, enable);
-			msleep(2);
-
-			if ((psecpriv->dot11PrivacyAlgrthm != _WEP40_) || (psecpriv->dot11PrivacyAlgrthm != _WEP104_))
-				pkt_type = 1;
-
-			rtl8723b_set_FwKeepAlive_cmd(padapter, enable, pkt_type);
-			msleep(2);
-		}
-
-		rtl8723b_set_FwWoWlanCtrl_Cmd(padapter, enable);
-		msleep(2);
-
-		rtl8723b_set_FwRemoteWakeCtrl_Cmd(padapter, enable);
-	} else {
-		rtl8723b_set_FwRemoteWakeCtrl_Cmd(padapter, enable);
-		msleep(2);
-		rtl8723b_set_FwWoWlanCtrl_Cmd(padapter, enable);
-	}
-
-	DBG_871X_LEVEL(_drv_always_, "-%s()-\n", __func__);
-}
-#endif /* CONFIG_WOWLAN */
-
 #ifdef CONFIG_AP_WOWLAN
 static void rtl8723b_set_FwAPWoWlanCtrl_Cmd(struct adapter *padapter, u8 bFuncEn)
 {
@@ -1223,17 +789,6 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	u16 BufIndex, PageSize = 128;
 	u32 TotalPacketLen, MaxRsvdPageBufSize = 0;
 	RSVDPAGE_LOC RsvdPageLoc;
-#ifdef CONFIG_WOWLAN
-	u32 ARPLegnth = 0, GTKLegnth = 0;
-	u8 currentip[4];
-	u8 cur_dot11txpn[8];
-#ifdef CONFIG_GTK_OL
-	struct sta_priv *pstapriv = &padapter->stapriv;
-	struct sta_info *psta;
-	u8 kek[RTW_KEK_LEN];
-	u8 kck[RTW_KCK_LEN];
-#endif
-#endif
 
 	/* DBG_871X("%s---->\n", __func__); */
 
@@ -1343,107 +898,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 
 	BufIndex += (CurtPktPageNum*PageSize);
 
-#ifdef CONFIG_WOWLAN
-	if (check_fwstate(pmlmepriv, _FW_LINKED)) {
-	/* if (pwrctl->wowlan_mode == true) { */
-		/* BufIndex += (CurtPktPageNum*PageSize); */
-
-	/* 3(7) ARP RSP */
-	rtw_get_current_ip_address(padapter, currentip);
-	RsvdPageLoc.LocArpRsp = TotalPageNum;
-	{
-	ConstructARPResponse(
-		padapter,
-		&ReservedPagePacket[BufIndex],
-		&ARPLegnth,
-		currentip
-		);
-	rtl8723b_fill_fake_txdesc(padapter, &ReservedPagePacket[BufIndex-TxDescLen], ARPLegnth, false, false, true);
-
-	/* DBG_871X("%s(): HW_VAR_SET_TX_CMD: ARP RSP %p %d\n", */
-	/* 	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (ARPLegnth+TxDescLen)); */
-
-	CurtPktPageNum = (u8)PageNum_128(TxDescLen + ARPLegnth);
-	}
-	TotalPageNum += CurtPktPageNum;
-
-	BufIndex += (CurtPktPageNum*PageSize);
-
-	/* 3(8) SEC IV */
-	rtw_get_sec_iv(padapter, cur_dot11txpn, get_my_bssid(&pmlmeinfo->network));
-	RsvdPageLoc.LocRemoteCtrlInfo = TotalPageNum;
-	memcpy(ReservedPagePacket+BufIndex-TxDescLen, cur_dot11txpn, _AES_IV_LEN_);
-
-	/* DBG_871X("%s(): HW_VAR_SET_TX_CMD: SEC IV %p %d\n", */
-	/* 	__func__, &ReservedPagePacket[BufIndex-TxDescLen], _AES_IV_LEN_); */
-
-	CurtPktPageNum = (u8)PageNum_128(_AES_IV_LEN_);
-
-	TotalPageNum += CurtPktPageNum;
-
-#ifdef CONFIG_GTK_OL
-	BufIndex += (CurtPktPageNum*PageSize);
-
-	/* if the ap station info. exists, get the kek, kck from station info. */
-	psta = rtw_get_stainfo(pstapriv, get_bssid(pmlmepriv));
-	if (!psta) {
-		memset(kek, 0, RTW_KEK_LEN);
-		memset(kck, 0, RTW_KCK_LEN);
-		DBG_8192C("%s, KEK, KCK download rsvd page all zero\n", __func__);
-	} else {
-		memcpy(kek, psta->kek, RTW_KEK_LEN);
-		memcpy(kck, psta->kck, RTW_KCK_LEN);
-	}
-
-	/* 3(9) KEK, KCK */
-	RsvdPageLoc.LocGTKInfo = TotalPageNum;
-	memcpy(ReservedPagePacket+BufIndex-TxDescLen, kck, RTW_KCK_LEN);
-	memcpy(ReservedPagePacket+BufIndex-TxDescLen+RTW_KCK_LEN, kek, RTW_KEK_LEN);
-
-	/* DBG_871X("%s(): HW_VAR_SET_TX_CMD: KEK KCK %p %d\n", */
-	/* 	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (TxDescLen + RTW_KCK_LEN + RTW_KEK_LEN)); */
-
-	CurtPktPageNum = (u8)PageNum_128(TxDescLen + RTW_KCK_LEN + RTW_KEK_LEN);
-
-	TotalPageNum += CurtPktPageNum;
-
-	BufIndex += (CurtPktPageNum*PageSize);
-
-	/* 3(10) GTK Response */
-	RsvdPageLoc.LocGTKRsp = TotalPageNum;
-	ConstructGTKResponse(
-		padapter,
-		&ReservedPagePacket[BufIndex],
-		&GTKLegnth
-	);
-
-	rtl8723b_fill_fake_txdesc(padapter, &ReservedPagePacket[BufIndex-TxDescLen], GTKLegnth, false, false, true);
-	/* DBG_871X("%s(): HW_VAR_SET_TX_CMD: GTK RSP %p %d\n", */
-	/* 	__func__, &ReservedPagePacket[BufIndex-TxDescLen], (TxDescLen + GTKLegnth)); */
-
-	CurtPktPageNum = (u8)PageNum_128(TxDescLen + GTKLegnth);
-
-	TotalPageNum += CurtPktPageNum;
-
-	BufIndex += (CurtPktPageNum*PageSize);
-
-	/* below page is empty for GTK extension memory */
-	/* 3(11) GTK EXT MEM */
-	RsvdPageLoc.LocGTKEXTMEM = TotalPageNum;
-
-	CurtPktPageNum = 2;
-
-	TotalPageNum += CurtPktPageNum;
-
-	TotalPacketLen = BufIndex-TxDescLen + 256; /* extension memory for FW */
-#else
-	TotalPacketLen = BufIndex - TxDescLen + sizeof(union pn48); /* IV len */
-#endif /* CONFIG_GTK_OL */
-	} else
-#endif /* CONFIG_WOWLAN */
-	{
-		TotalPacketLen = BufIndex + BTQosNullLength;
-	}
+	TotalPacketLen = BufIndex + BTQosNullLength;
 
 	if (TotalPacketLen > MaxRsvdPageBufSize) {
 		DBG_871X("%s(): ERROR: The rsvd page size is not enough!!TotalPacketLen %d, MaxRsvdPageBufSize %d\n", __func__,
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 84e963909283..9f5e81375289 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -369,9 +369,6 @@ s32 rtl8723b_FirmwareDownload(struct adapter *padapter, bool  bUsedWoWLANFw)
 	u8 tmp_ps;
 
 	RT_TRACE(_module_hal_init_c_, _drv_info_, ("+%s\n", __func__));
-#ifdef CONFIG_WOWLAN
-	RT_TRACE(_module_hal_init_c_, _drv_notice_, ("+%s, bUsedWoWLANFw:%d\n", __func__, bUsedWoWLANFw));
-#endif
 	pFirmware = kzalloc(sizeof(struct rt_firmware), GFP_KERNEL);
 	if (!pFirmware)
 		return _FAIL;
@@ -393,12 +390,7 @@ s32 rtl8723b_FirmwareDownload(struct adapter *padapter, bool  bUsedWoWLANFw)
 		pdbgpriv->dbg_downloadfw_pwr_state_cnt++;
 	}
 
-#ifdef CONFIG_WOWLAN
-	if (bUsedWoWLANFw)
-		fwfilepath = "rtlwifi/rtl8723bs_wowlan.bin";
-	else
-#endif /*  CONFIG_WOWLAN */
-		fwfilepath = "rtlwifi/rtl8723bs_nic.bin";
+	fwfilepath = "rtlwifi/rtl8723bs_nic.bin";
 
 	pr_info("rtl8723bs: acquire FW from file:%s\n", fwfilepath);
 
@@ -535,7 +527,7 @@ void rtl8723b_InitializeFirmwareVars(struct adapter *padapter)
 /* pHalData->H2CStopInsertQueue = false; */
 }
 
-#if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
+#ifdef CONFIG_AP_WOWLAN
 /*  */
 
 /*  */
@@ -566,7 +558,7 @@ void SetFwRelatedForWoWLAN8723b(
 	/*  */
 	rtl8723b_InitializeFirmwareVars(padapter);
 }
-#endif /* CONFIG_WOWLAN */
+#endif /* CONFIG_AP_WOWLAN */
 
 static void rtl8723b_free_hal_data(struct adapter *padapter)
 {
@@ -3752,14 +3744,6 @@ void C2HPacketHandler_8723B(struct adapter *padapter, u8 *pbuffer, u16 length)
 {
 	C2H_EVT_HDR	C2hEvent;
 	u8 *tmpBuf = NULL;
-#ifdef CONFIG_WOWLAN
-	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
-
-	if (pwrpriv->wowlan_mode) {
-		DBG_871X("%s(): return because wowolan_mode ==true! CMDID =%d\n", __func__, pbuffer[0]);
-		return;
-	}
-#endif
 	C2hEvent.CmdID = pbuffer[0];
 	C2hEvent.CmdSeq = pbuffer[1];
 	C2hEvent.CmdLen = length-2;
@@ -4314,19 +4298,6 @@ void GetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 		val16 = rtw_read16(padapter, REG_TXPKT_EMPTY);
 		*val = (val16 & BIT(10)) ? true:false;
 		break;
-#ifdef CONFIG_WOWLAN
-	case HW_VAR_RPWM_TOG:
-		*val = rtw_read8(padapter, SDIO_LOCAL_BASE|SDIO_REG_HRPWM1) & BIT7;
-		break;
-	case HW_VAR_WAKEUP_REASON:
-		*val = rtw_read8(padapter, REG_WOWLAN_WAKE_REASON);
-		if (*val == 0xEA)
-			*val = 0;
-		break;
-	case HW_VAR_SYS_CLKR:
-		*val = rtw_read8(padapter, REG_SYS_CLKR);
-		break;
-#endif
 	default:
 		GetHwReg(padapter, variable, val);
 		break;
@@ -4461,14 +4432,6 @@ u8 GetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable, v
 	return bResult;
 }
 
-#ifdef CONFIG_WOWLAN
-void Hal_DetectWoWMode(struct adapter *padapter)
-{
-	adapter_to_pwrctl(padapter)->bSupportRemoteWakeup = true;
-	DBG_871X("%s\n", __func__);
-}
-#endif /* CONFIG_WOWLAN */
-
 void rtl8723b_start_thread(struct adapter *padapter)
 {
 #ifndef CONFIG_SDIO_TX_TASKLET
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index ced05bbfc906..47cd3ae63687 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -689,30 +689,6 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 		return _SUCCESS;
 	}
 
-#ifdef CONFIG_WOWLAN
-	if (rtw_read8(padapter, REG_MCUFWDL) & BIT7) {
-		u8 reg_val = 0;
-		DBG_871X("+Reset Entry+\n");
-		rtw_write8(padapter, REG_MCUFWDL, 0x00);
-		_8051Reset8723(padapter);
-		/* reset BB */
-		reg_val = rtw_read8(padapter, REG_SYS_FUNC_EN);
-		reg_val &= ~(BIT(0) | BIT(1));
-		rtw_write8(padapter, REG_SYS_FUNC_EN, reg_val);
-		/* reset RF */
-		rtw_write8(padapter, REG_RF_CTRL, 0);
-		/* reset TRX path */
-		rtw_write16(padapter, REG_CR, 0);
-		/* reset MAC, Digital Core */
-		reg_val = rtw_read8(padapter, REG_SYS_FUNC_EN + 1);
-		reg_val &= ~(BIT(4) | BIT(7));
-		rtw_write8(padapter, REG_SYS_FUNC_EN + 1, reg_val);
-		reg_val = rtw_read8(padapter, REG_SYS_FUNC_EN + 1);
-		reg_val |= BIT(4) | BIT(7);
-		rtw_write8(padapter, REG_SYS_FUNC_EN + 1, reg_val);
-		DBG_871X("-Reset Entry-\n");
-	}
-#endif /* CONFIG_WOWLAN */
 	/*  Disable Interrupt first. */
 /* 	rtw_hal_disable_interrupt(padapter); */
 
@@ -1228,10 +1204,6 @@ static void _ReadEfuseInfo8723BS(struct adapter *padapter)
 
 	Hal_EfuseParseVoltage_8723B(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
 
-#ifdef CONFIG_WOWLAN
-	Hal_DetectWoWMode(padapter);
-#endif
-
 	Hal_ReadRFGainOffset(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
 
 	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("<==== _ReadEfuseInfo8723BS()\n"));
@@ -1322,7 +1294,7 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 {
 	u8 val8;
 
-#if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
+#ifdef CONFIG_AP_WOWLAN
 	struct wowlan_ioctl_param *poidparam;
 	struct pwrctrl_priv *pwrctl = adapter_to_pwrctl(padapter);
 	int res;
@@ -1330,13 +1302,6 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 	u16 len = 0;
 	u8 trycnt = 100;
 	u32 himr = 0;
-#if defined(CONFIG_WOWLAN)
-	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	struct sta_info *psta = NULL;
-	u64 iv_low = 0, iv_high = 0;
-	u8 mstatus = (*(u8 *)val);
-#endif
 #endif
 
 	switch (variable) {
@@ -1363,206 +1328,6 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 		val8 = *val;
 		break;
 
-#ifdef CONFIG_WOWLAN
-	case HW_VAR_WOWLAN:
-	{
-		poidparam = (struct wowlan_ioctl_param *)val;
-		switch (poidparam->subcode) {
-		case WOWLAN_ENABLE:
-			DBG_871X_LEVEL(_drv_always_, "WOWLAN_ENABLE\n");
-
-			/* backup data rate to register 0x8b for wowlan FW */
-			rtw_write8(padapter, 0x8d, 1);
-			rtw_write8(padapter, 0x8c, 0);
-			rtw_write8(padapter, 0x8f, 0x40);
-			rtw_write8(padapter, 0x8b,
-			rtw_read8(padapter, 0x2f0));
-
-			/*  1. Download WOWLAN FW */
-			DBG_871X_LEVEL(_drv_always_, "Re-download WoWlan FW!\n");
-			SetFwRelatedForWoWLAN8723b(padapter, true);
-
-			/*  2. RX DMA stop */
-			DBG_871X_LEVEL(_drv_always_, "Pause DMA\n");
-			rtw_write32(padapter, REG_RXPKT_NUM, (rtw_read32(padapter, REG_RXPKT_NUM) | RW_RELEASE_EN));
-			do {
-				if ((rtw_read32(padapter, REG_RXPKT_NUM) & RXDMA_IDLE)) {
-					DBG_871X_LEVEL(_drv_always_, "RX_DMA_IDLE is true\n");
-					break;
-				} else {
-					/*  If RX_DMA is not idle, receive one pkt from DMA */
-					res = sdio_local_read(padapter, SDIO_REG_RX0_REQ_LEN, 4, (u8 *)&tmp);
-					len = le16_to_cpu(tmp);
-					DBG_871X_LEVEL(_drv_always_, "RX len:%d\n", len);
-					if (len > 0)
-						res = RecvOnePkt(padapter, len);
-					else
-						DBG_871X_LEVEL(_drv_always_, "read length fail %d\n", len);
-
-					DBG_871X_LEVEL(_drv_always_, "RecvOnePkt Result: %d\n", res);
-				}
-			} while (trycnt--);
-			if (trycnt == 0)
-				DBG_871X_LEVEL(_drv_always_, "Stop RX DMA failed......\n");
-
-			/*  3. Clear IMR and ISR */
-			DBG_871X_LEVEL(_drv_always_, "Clear IMR and ISR\n");
-			tmp = 0;
-			sdio_local_write(padapter, SDIO_REG_HIMR_ON, 4, (u8 *)&tmp);
-			sdio_local_write(padapter, SDIO_REG_HIMR, 4, (u8 *)&tmp);
-			sdio_local_read(padapter, SDIO_REG_HISR, 4, (u8 *)&tmp);
-			sdio_local_write(padapter, SDIO_REG_HISR, 4, (u8 *)&tmp);
-
-			/*  4. Enable CPWM2 only */
-			DBG_871X_LEVEL(_drv_always_, "Enable only CPWM2\n");
-			sdio_local_read(padapter, SDIO_REG_HIMR, 4, (u8 *)&tmp);
-			DBG_871X("DisableInterruptButCpwm28723BSdio(): Read SDIO_REG_HIMR: 0x%08x\n", tmp);
-
-			himr = cpu_to_le32(SDIO_HIMR_DISABLED) | SDIO_HIMR_CPWM2_MSK;
-			sdio_local_write(padapter, SDIO_REG_HIMR, 4, (u8 *)&himr);
-
-			sdio_local_read(padapter, SDIO_REG_HIMR, 4, (u8 *)&tmp);
-			DBG_871X("DisableInterruptButCpwm28723BSdio(): Read again SDIO_REG_HIMR: 0x%08x\n", tmp);
-
-			/*  5. Set Enable WOWLAN H2C command. */
-			DBG_871X_LEVEL(_drv_always_, "Set Enable WOWLan cmd\n");
-			rtl8723b_set_wowlan_cmd(padapter, 1);
-
-			/*  6. Check EnableWoWlan CMD is ready */
-			if (!pwrctl->wowlan_pno_enable) {
-				DBG_871X_LEVEL(_drv_always_, "Check EnableWoWlan CMD is ready\n");
-				mstatus = rtw_read8(padapter, REG_WOW_CTRL);
-				trycnt = 10;
-				while (!(mstatus & BIT1) && trycnt > 1) {
-					mstatus = rtw_read8(padapter, REG_WOW_CTRL);
-					DBG_871X("Loop index: %d :0x%02x\n", trycnt, mstatus);
-					trycnt--;
-					msleep(2);
-				}
-			}
-			break;
-
-		case WOWLAN_DISABLE:
-			DBG_871X_LEVEL(_drv_always_, "WOWLAN_DISABLE\n");
-
-			psta = rtw_get_stainfo(&padapter->stapriv, get_bssid(pmlmepriv));
-			if (psta)
-				rtl8723b_set_FwMediaStatusRpt_cmd(padapter, RT_MEDIA_DISCONNECT, psta->mac_id);
-			else
-				DBG_871X("psta is null\n");
-
-			/*  1. Read wakeup reason */
-			pwrctl->wowlan_wake_reason = rtw_read8(padapter, REG_WOWLAN_WAKE_REASON);
-			DBG_871X_LEVEL(
-				_drv_always_,
-				"wakeup_reason: 0x%02x, mac_630 = 0x%08x, mac_634 = 0x%08x, mac_1c0 = 0x%08x, mac_1c4 = 0x%08x"
-				", mac_494 = 0x%08x, , mac_498 = 0x%08x, mac_49c = 0x%08x, mac_608 = 0x%08x, mac_4a0 = 0x%08x, mac_4a4 = 0x%08x\n"
-				", mac_1cc = 0x%08x, mac_2f0 = 0x%08x, mac_2f4 = 0x%08x, mac_2f8 = 0x%08x, mac_2fc = 0x%08x, mac_8c = 0x%08x",
-				pwrctl->wowlan_wake_reason,
-				rtw_read32(padapter, REG_WOWLAN_GTK_DBG1),
-				rtw_read32(padapter, REG_WOWLAN_GTK_DBG2),
-				rtw_read32(padapter, 0x1c0),
-				rtw_read32(padapter, 0x1c4),
-				rtw_read32(padapter, 0x494),
-				rtw_read32(padapter, 0x498),
-				rtw_read32(padapter, 0x49c),
-				rtw_read32(padapter, 0x608),
-				rtw_read32(padapter, 0x4a0),
-				rtw_read32(padapter, 0x4a4),
-				rtw_read32(padapter, 0x1cc),
-				rtw_read32(padapter, 0x2f0),
-				rtw_read32(padapter, 0x2f4),
-				rtw_read32(padapter, 0x2f8),
-				rtw_read32(padapter, 0x2fc),
-				rtw_read32(padapter, 0x8c)
-			);
-
-			{
-				/*  2.  Set Disable WOWLAN H2C command. */
-				DBG_871X_LEVEL(_drv_always_, "Set Disable WOWLan cmd\n");
-				rtl8723b_set_wowlan_cmd(padapter, 0);
-
-				/*  3. Check Disable WoWlan CMD ready. */
-				DBG_871X_LEVEL(_drv_always_, "Check DisableWoWlan CMD is ready\n");
-				mstatus = rtw_read8(padapter, REG_WOW_CTRL);
-				trycnt = 50;
-				while (mstatus & BIT1 && trycnt > 1) {
-					mstatus = rtw_read8(padapter, REG_WOW_CTRL);
-					DBG_871X_LEVEL(_drv_always_, "Loop index: %d :0x%02x\n", trycnt, mstatus);
-					trycnt--;
-					msleep(10);
-				}
-
-				if (mstatus & BIT1) {
-					DBG_871X_LEVEL(_drv_always_, "Disable WOW mode fail!!\n");
-					DBG_871X("Set 0x690 = 0x00\n");
-					rtw_write8(padapter, REG_WOW_CTRL, (rtw_read8(padapter, REG_WOW_CTRL) & 0xf0));
-					DBG_871X_LEVEL(_drv_always_, "Release RXDMA\n");
-					rtw_write32(padapter, REG_RXPKT_NUM, (rtw_read32(padapter, REG_RXPKT_NUM) & (~RW_RELEASE_EN)));
-				}
-
-				/*  3.1 read fw iv */
-				iv_low = rtw_read32(padapter, REG_TXPKTBUF_IV_LOW);
-					/* only low two bytes is PN, check AES_IV macro for detail */
-				iv_low &= 0xffff;
-				iv_high = rtw_read32(padapter, REG_TXPKTBUF_IV_HIGH);
-					/* get the real packet number */
-				pwrctl->wowlan_fw_iv = iv_high << 16 | iv_low;
-				DBG_871X_LEVEL(_drv_always_, "fw_iv: 0x%016llx\n", pwrctl->wowlan_fw_iv);
-				/* Update TX iv data. */
-				rtw_set_sec_pn(padapter);
-
-				/*  3.2 read GTK index and key */
-				if (
-					psecuritypriv->binstallKCK_KEK == true &&
-					psecuritypriv->dot11PrivacyAlgrthm == _AES_
-				) {
-					u8 gtk_keyindex = 0;
-					u8 get_key[16];
-					/* read gtk key index */
-					gtk_keyindex = rtw_read8(padapter, 0x48c);
-
-					if (gtk_keyindex < 4) {
-						psecuritypriv->dot118021XGrpKeyid = gtk_keyindex;
-						read_cam(padapter, gtk_keyindex, get_key);
-						memcpy(psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey, get_key, 16);
-						DBG_871X_LEVEL(
-							_drv_always_,
-							"GTK (%d) = 0x%08x, 0x%08x, 0x%08x, 0x%08x\n",
-							gtk_keyindex,
-							psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].lkey[0],
-							psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].lkey[1],
-							psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].lkey[2],
-							psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].lkey[3]
-						);
-					} else
-						DBG_871X_LEVEL(_drv_always_, "GTK index =%d\n", gtk_keyindex);
-				}
-
-				/*  4. Re-download Normal FW. */
-				DBG_871X_LEVEL(_drv_always_, "Re-download Normal FW!\n");
-				SetFwRelatedForWoWLAN8723b(padapter, false);
-			}
-
-			/*  5. Download reserved pages and report media status if needed. */
-			if (
-				(pwrctl->wowlan_wake_reason != FWDecisionDisconnect) &&
-				(pwrctl->wowlan_wake_reason != Rx_Pairwisekey) &&
-				(pwrctl->wowlan_wake_reason != Rx_DisAssoc) &&
-				(pwrctl->wowlan_wake_reason != Rx_DeAuth)
-			) {
-				rtl8723b_set_FwJoinBssRpt_cmd(padapter, RT_MEDIA_CONNECT);
-				if (psta)
-					rtl8723b_set_FwMediaStatusRpt_cmd(padapter, RT_MEDIA_CONNECT, psta->mac_id);
-			}
-			break;
-
-		default:
-			break;
-		}
-	}
-	break;
-#endif /* CONFIG_WOWLAN */
 #ifdef CONFIG_AP_WOWLAN
 	case HW_VAR_AP_WOWLAN:
 	{
@@ -1765,9 +1530,6 @@ void rtl8723bs_set_hal_ops(struct adapter *padapter)
 	pHalFunc->enable_interrupt = &EnableInterrupt8723BSdio;
 	pHalFunc->disable_interrupt = &DisableInterrupt8723BSdio;
 	pHalFunc->check_ips_status = &CheckIPSStatus;
-#ifdef CONFIG_WOWLAN
-	pHalFunc->clear_interrupt = &ClearInterrupt8723BSdio;
-#endif
 	pHalFunc->SetHwRegHandler = &SetHwReg8723BS;
 	pHalFunc->GetHwRegHandler = &GetHwReg8723BS;
 	pHalFunc->SetHwRegHandlerWithBuf = &SetHwRegWithBuf8723B;
diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 369f55d11519..2400b06dff36 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -1114,7 +1114,7 @@ void HalQueryTxOQTBufferStatus8723BSdio(struct adapter *adapter)
 	haldata->SdioTxOQTFreeSpace = SdioLocalCmd52Read1Byte(adapter, SDIO_REG_OQT_FREE_PG);
 }
 
-#if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
+#ifdef CONFIG_AP_WOWLAN
 u8 RecvOnePkt(struct adapter *adapter, u32 size)
 {
 	struct recv_buf *recvbuf;
@@ -1149,4 +1149,4 @@ u8 RecvOnePkt(struct adapter *adapter, u32 size)
 	DBG_871X("-%s-\n", __func__);
 	return res;
 }
-#endif /* CONFIG_WOWLAN */
+#endif /* CONFIG_AP_WOWLAN */
diff --git a/drivers/staging/rtl8723bs/include/autoconf.h b/drivers/staging/rtl8723bs/include/autoconf.h
index 86cf09ca5f06..996198750814 100644
--- a/drivers/staging/rtl8723bs/include/autoconf.h
+++ b/drivers/staging/rtl8723bs/include/autoconf.h
@@ -40,9 +40,6 @@
  * Platform dependent
  */
 #define WAKEUP_GPIO_IDX	12	/* WIFI Chip Side */
-#ifdef CONFIG_WOWLAN
-#define CONFIG_GTK_OL
-#endif /* CONFIG_WOWLAN */
 
 /*
  * Debug Related Config
diff --git a/drivers/staging/rtl8723bs/include/drv_types.h b/drivers/staging/rtl8723bs/include/drv_types.h
index cfde6e3ba400..998c8dc230eb 100644
--- a/drivers/staging/rtl8723bs/include/drv_types.h
+++ b/drivers/staging/rtl8723bs/include/drv_types.h
@@ -534,11 +534,6 @@ int rtw_set_gpio_output_value(struct net_device *netdev, int gpio_num, bool isHi
 int rtw_config_gpio(struct net_device *netdev, int gpio_num, bool isOutput);
 #endif
 
-#ifdef CONFIG_WOWLAN
-void rtw_suspend_wow(struct adapter *padapter);
-int rtw_resume_process_wow(struct adapter *padapter);
-#endif
-
 static inline u8 *myid(struct eeprom_priv *peepriv)
 {
 	return peepriv->mac_addr;
diff --git a/drivers/staging/rtl8723bs/include/drv_types_sdio.h b/drivers/staging/rtl8723bs/include/drv_types_sdio.h
index 5e079838f59c..83f5e912baa7 100644
--- a/drivers/staging/rtl8723bs/include/drv_types_sdio.h
+++ b/drivers/staging/rtl8723bs/include/drv_types_sdio.h
@@ -11,7 +11,7 @@
 	#include <linux/mmc/sdio_func.h>
 	#include <linux/mmc/sdio_ids.h>
 
-#if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
+#ifdef CONFIG_AP_WOWLAN
 	#include <linux/mmc/host.h>
 	#include <linux/mmc/card.h>
 #endif
diff --git a/drivers/staging/rtl8723bs/include/hal_com_h2c.h b/drivers/staging/rtl8723bs/include/hal_com_h2c.h
index 1f7ed90f9faa..6b8ec01ddc6a 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_h2c.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_h2c.h
@@ -95,60 +95,6 @@ enum h2c_cmd {
 #define H2C_BCN_RSVDPAGE_LEN		5
 #define H2C_PROBERSP_RSVDPAGE_LEN	5
 
-#ifdef CONFIG_WOWLAN
-#define eqMacAddr(a, b)		(((a)[0] == (b)[0] && (a)[1] == (b)[1] && (a)[2] == (b)[2] && (a)[3] == (b)[3] && (a)[4] == (b)[4] && (a)[5] == (b)[5]) ? 1 : 0)
-#define cpMacAddr(des, src)	((des)[0] = (src)[0], (des)[1] = (src)[1], (des)[2] = (src)[2], (des)[3] = (src)[3], (des)[4] = (src)[4], (des)[5] = (src)[5])
-#define cpIpAddr(des, src)	((des)[0] = (src)[0], (des)[1] = (src)[1], (des)[2] = (src)[2], (des)[3] = (src)[3])
-
-/*  */
-/*  ARP packet */
-/*  */
-/*  LLC Header */
-#define GET_ARP_PKT_LLC_TYPE(__pHeader)			ReadEF2Byte(((u8 *)(__pHeader)) + 6)
-
-/* ARP element */
-#define GET_ARP_PKT_OPERATION(__pHeader)		ReadEF2Byte(((u8 *)(__pHeader)) + 6)
-#define GET_ARP_PKT_SENDER_MAC_ADDR(__pHeader, _val)	cpMacAddr((u8 *)(_val), ((u8 *)(__pHeader))+8)
-#define GET_ARP_PKT_SENDER_IP_ADDR(__pHeader, _val)	cpIpAddr((u8 *)(_val), ((u8 *)(__pHeader))+14)
-#define GET_ARP_PKT_TARGET_MAC_ADDR(__pHeader, _val)	cpMacAddr((u8 *)(_val), ((u8 *)(__pHeader))+18)
-#define GET_ARP_PKT_TARGET_IP_ADDR(__pHeader, _val)	cpIpAddr((u8 *)(_val), ((u8 *)(__pHeader))+24)
-
-#define SET_ARP_PKT_HW(__pHeader, __Value)		WRITEEF2BYTE(((u8 *)(__pHeader)) + 0, __Value)
-#define SET_ARP_PKT_PROTOCOL(__pHeader, __Value)	WRITEEF2BYTE(((u8 *)(__pHeader)) + 2, __Value)
-#define SET_ARP_PKT_HW_ADDR_LEN(__pHeader, __Value)	WRITEEF1BYTE(((u8 *)(__pHeader)) + 4, __Value)
-#define SET_ARP_PKT_PROTOCOL_ADDR_LEN(__pHeader, __Value)	WRITEEF1BYTE(((u8 *)(__pHeader)) + 5, __Value)
-#define SET_ARP_PKT_OPERATION(__pHeader, __Value)	WRITEEF2BYTE(((u8 *)(__pHeader)) + 6, __Value)
-#define SET_ARP_PKT_SENDER_MAC_ADDR(__pHeader, _val)	cpMacAddr(((u8 *)(__pHeader))+8, (u8 *)(_val))
-#define SET_ARP_PKT_SENDER_IP_ADDR(__pHeader, _val)	cpIpAddr(((u8 *)(__pHeader))+14, (u8 *)(_val))
-#define SET_ARP_PKT_TARGET_MAC_ADDR(__pHeader, _val)	cpMacAddr(((u8 *)(__pHeader))+18, (u8 *)(_val))
-#define SET_ARP_PKT_TARGET_IP_ADDR(__pHeader, _val)	cpIpAddr(((u8 *)(__pHeader))+24, (u8 *)(_val))
-
-#define FW_WOWLAN_FUN_EN			BIT(0)
-#define FW_WOWLAN_PATTERN_MATCH			BIT(1)
-#define FW_WOWLAN_MAGIC_PKT			BIT(2)
-#define FW_WOWLAN_UNICAST			BIT(3)
-#define FW_WOWLAN_ALL_PKT_DROP			BIT(4)
-#define FW_WOWLAN_GPIO_ACTIVE			BIT(5)
-#define FW_WOWLAN_REKEY_WAKEUP			BIT(6)
-#define FW_WOWLAN_DEAUTH_WAKEUP			BIT(7)
-
-#define FW_WOWLAN_GPIO_WAKEUP_EN		BIT(0)
-#define FW_FW_PARSE_MAGIC_PKT			BIT(1)
-
-#define FW_REMOTE_WAKE_CTRL_EN			BIT(0)
-#define FW_REALWOWLAN_EN			BIT(5)
-
-#define FW_WOWLAN_KEEP_ALIVE_EN			BIT(0)
-#define FW_ADOPT_USER				BIT(1)
-#define FW_WOWLAN_KEEP_ALIVE_PKT_TYPE		BIT(2)
-
-#define FW_REMOTE_WAKE_CTRL_EN			BIT(0)
-#define FW_ARP_EN				BIT(1)
-#define FW_REALWOWLAN_EN			BIT(5)
-#define FW_WOW_FW_UNICAST_EN			BIT(7)
-
-#endif /* CONFIG_WOWLAN */
-
 /* _RSVDPAGE_LOC_CMD_0x00 */
 #define SET_H2CCMD_RSVDPAGE_LOC_PROBE_RSP(__pH2CCmd, __Value)		SET_BITS_TO_LE_1BYTE_8BIT(__pH2CCmd, 0, 8, __Value)
 #define SET_H2CCMD_RSVDPAGE_LOC_PSPOLL(__pH2CCmd, __Value)			SET_BITS_TO_LE_1BYTE_8BIT((__pH2CCmd)+1, 0, 8, __Value)
@@ -230,9 +176,6 @@ enum h2c_cmd {
 #define SET_H2CCMD_AOAC_RSVDPAGE_LOC_NEIGHBOR_ADV(__pH2CCmd, __Value)		SET_BITS_TO_LE_1BYTE_8BIT((__pH2CCmd)+2, 0, 8, __Value)
 #define SET_H2CCMD_AOAC_RSVDPAGE_LOC_GTK_RSP(__pH2CCmd, __Value)		SET_BITS_TO_LE_1BYTE_8BIT((__pH2CCmd)+3, 0, 8, __Value)
 #define SET_H2CCMD_AOAC_RSVDPAGE_LOC_GTK_INFO(__pH2CCmd, __Value)		SET_BITS_TO_LE_1BYTE_8BIT((__pH2CCmd)+4, 0, 8, __Value)
-#ifdef CONFIG_GTK_OL
-#define SET_H2CCMD_AOAC_RSVDPAGE_LOC_GTK_EXT_MEM(__pH2CCmd, __Value)		SET_BITS_TO_LE_1BYTE_8BIT((__pH2CCmd)+5, 0, 8, __Value)
-#endif /* CONFIG_GTK_OL */
 
 /*  */
 /*     Structure    -------------------------------------------------- */
@@ -243,25 +186,13 @@ typedef struct _RSVDPAGE_LOC {
 	u8 LocNullData;
 	u8 LocQosNull;
 	u8 LocBTQosNull;
-#ifdef CONFIG_WOWLAN
-	u8 LocRemoteCtrlInfo;
-	u8 LocArpRsp;
-	u8 LocNbrAdv;
-	u8 LocGTKRsp;
-	u8 LocGTKInfo;
-	u8 LocProbeReq;
-	u8 LocNetList;
-#ifdef CONFIG_GTK_OL
-	u8 LocGTKEXTMEM;
-#endif /* CONFIG_GTK_OL */
-#endif /* CONFIG_WOWLAN */
 #ifdef CONFIG_AP_WOWLAN
 	u8 LocApOffloadBCN;
 #endif /* CONFIG_AP_WOWLAN */
 } RSVDPAGE_LOC, *PRSVDPAGE_LOC;
 
 #endif
-#if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
+#ifdef CONFIG_AP_WOWLAN
 void rtw_get_current_ip_address(struct adapter *padapter, u8 *pcurrentip);
 void rtw_get_sec_iv(struct adapter *padapter, u8*pcur_dot11txpn, u8 *StaAddr);
 void rtw_set_sec_pn(struct adapter *padapter);
diff --git a/drivers/staging/rtl8723bs/include/hal_intf.h b/drivers/staging/rtl8723bs/include/hal_intf.h
index 426c8d58c444..093e00b9349b 100644
--- a/drivers/staging/rtl8723bs/include/hal_intf.h
+++ b/drivers/staging/rtl8723bs/include/hal_intf.h
@@ -85,11 +85,6 @@ enum HW_VARIABLES {
 	HW_VAR_APFM_ON_MAC, /* Auto FSM to Turn On, include clock, isolation, power control for MAC only */
 	/*  The valid upper nav range for the HW updating, if the true value is larger than the upper range, the HW won't update it. */
 	/*  Unit in microsecond. 0 means disable this function. */
-#ifdef CONFIG_WOWLAN
-	HW_VAR_WOWLAN,
-	HW_VAR_WAKEUP_REASON,
-	HW_VAR_RPWM_TOG,
-#endif
 #ifdef CONFIG_AP_WOWLAN
 	HW_VAR_AP_WOWLAN,
 #endif
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_cmd.h b/drivers/staging/rtl8723bs/include/rtl8723b_cmd.h
index 3bfb0e9be582..b85e67ccc7db 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_cmd.h
@@ -177,11 +177,11 @@ void rtl8723b_download_BTCoex_AP_mode_rsvd_page(struct adapter *padapter);
 
 void CheckFwRsvdPageContent(struct adapter *padapter);
 
-#if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
+#ifdef CONFIG_AP_WOWLAN
 void rtl8723b_set_wowlan_cmd(struct adapter *padapter, u8 enable);
 void rtl8723b_set_ap_wowlan_cmd(struct adapter *padapter, u8 enable);
 void SetFwRelatedForWoWLAN8723b(struct adapter *padapter, u8 bHostIsGoingtoSleep);
-#endif/* CONFIG_WOWLAN */
+#endif
 
 void rtl8723b_set_FwPwrModeInIPS_cmd(struct adapter *padapter, u8 cmd_param);
 
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
index 2537bd7d6a13..819594616e38 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
@@ -96,11 +96,7 @@ struct rt_firmware_hdr {
 
 /* For WoWLan, more reserved page */
 /* ARP Rsp:1, RWC:1, GTK Info:1, GTK RSP:2, GTK EXT MEM:2, PNO: 6 */
-#ifdef CONFIG_WOWLAN
-#define WOWLAN_PAGE_NUM_8723B 0x07
-#else
 #define WOWLAN_PAGE_NUM_8723B 0x00
-#endif
 
 #ifdef CONFIG_AP_WOWLAN
 #define AP_WOWLAN_PAGE_NUM_8723B 0x02
@@ -244,9 +240,6 @@ u8 GetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable,
 void rtl8723b_InitBeaconParameters(struct adapter *padapter);
 void _InitBurstPktLen_8723BS(struct adapter *adapter);
 void _8051Reset8723(struct adapter *padapter);
-#ifdef CONFIG_WOWLAN
-void Hal_DetectWoWMode(struct adapter *padapter);
-#endif /* CONFIG_WOWLAN */
 
 void rtl8723b_start_thread(struct adapter *padapter);
 void rtl8723b_stop_thread(struct adapter *padapter);
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_spec.h b/drivers/staging/rtl8723bs/include/rtl8723b_spec.h
index 9149fe598545..999555476ebc 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_spec.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_spec.h
@@ -96,10 +96,6 @@
 #define REG_TXPKTBUF_BCNQ_BDNY_8723B	0x0424
 #define REG_TXPKTBUF_MGQ_BDNY_8723B	0x0425
 #define REG_TXPKTBUF_WMAC_LBK_BF_HD_8723B	0x045D
-#ifdef CONFIG_WOWLAN
-#define REG_TXPKTBUF_IV_LOW             0x0484
-#define REG_TXPKTBUF_IV_HIGH            0x0488
-#endif
 #define REG_AMPDU_BURST_MODE_8723B	0x04BC
 
 /*  */
@@ -164,12 +160,6 @@
 #define BIT_USB_RXDMA_AGG_EN	BIT(31)
 #define RXDMA_AGG_MODE_EN		BIT(1)
 
-#ifdef CONFIG_WOWLAN
-#define RXPKT_RELEASE_POLL		BIT(16)
-#define RXDMA_IDLE				BIT(17)
-#define RW_RELEASE_EN			BIT(18)
-#endif
-
 /*  */
 /*  */
 /*	0x0400h ~ 0x047Fh	Protocol Configuration */
diff --git a/drivers/staging/rtl8723bs/include/rtw_mp.h b/drivers/staging/rtl8723bs/include/rtw_mp.h
index 2ea7100c3a4c..2de0b50bbfc5 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mp.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mp.h
@@ -189,9 +189,6 @@ enum {
 	CTA_TEST,
 	MP_DISABLE_BT_COEXIST,
 	MP_PwrCtlDM,
-#ifdef CONFIG_WOWLAN
-	MP_WOW_ENABLE,
-#endif
 #ifdef CONFIG_AP_WOWLAN
 	MP_AP_WOW_ENABLE,
 #endif
diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index f467e9032450..334642b8cff9 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -220,15 +220,6 @@ struct pwrctrl_priv {
 	u8 wowlan_wake_reason;
 	u8 wowlan_ap_mode;
 	u8 wowlan_mode;
-#ifdef CONFIG_WOWLAN
-	u8 wowlan_pattern;
-	u8 wowlan_magic;
-	u8 wowlan_unicast;
-	u8 wowlan_pattern_idx;
-	u8 wowlan_pno_enable;
-	u32 	wowlan_pattern_context[8][5];
-	u64		wowlan_fw_iv;
-#endif /*  CONFIG_WOWLAN */
 	_timer	pwr_state_check_timer;
 	struct adapter *adapter;
 	int		pwr_state_check_interval;
diff --git a/drivers/staging/rtl8723bs/include/rtw_security.h b/drivers/staging/rtl8723bs/include/rtw_security.h
index 85ffd4ec4ce5..ec033767fc45 100644
--- a/drivers/staging/rtl8723bs/include/rtw_security.h
+++ b/drivers/staging/rtl8723bs/include/rtw_security.h
@@ -129,9 +129,6 @@ struct security_priv {
 
 
 	u8 binstallGrpkey;
-#ifdef CONFIG_GTK_OL
-	u8 binstallKCK_KEK;
-#endif /* CONFIG_GTK_OL */
 	u8 binstallBIPkey;
 	u8 busetkipkey;
 	/* _timer tkip_timer; */
diff --git a/drivers/staging/rtl8723bs/include/sdio_ops.h b/drivers/staging/rtl8723bs/include/sdio_ops.h
index 6b0446be6d19..1f1f368cded4 100644
--- a/drivers/staging/rtl8723bs/include/sdio_ops.h
+++ b/drivers/staging/rtl8723bs/include/sdio_ops.h
@@ -25,17 +25,17 @@ s32 _sdio_write32(struct adapter *padapter, u32 addr, u32 val);
 extern void sd_int_hdl(struct adapter *padapter);
 extern u8 CheckIPSStatus(struct adapter *padapter);
 
-#if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
+#ifdef CONFIG_AP_WOWLAN
 extern u8 RecvOnePkt(struct adapter *padapter, u32 size);
-#endif /*  CONFIG_WOWLAN */
+#endif
 extern void InitInterrupt8723BSdio(struct adapter *padapter);
 extern void InitSysInterrupt8723BSdio(struct adapter *padapter);
 extern void EnableInterrupt8723BSdio(struct adapter *padapter);
 extern void DisableInterrupt8723BSdio(struct adapter *padapter);
 extern u8 HalQueryTxBufferStatus8723BSdio(struct adapter *padapter);
 extern void HalQueryTxOQTBufferStatus8723BSdio(struct adapter *padapter);
-#if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
+#ifdef CONFIG_AP_WOWLAN
 extern void ClearInterrupt8723BSdio(struct adapter *padapter);
-#endif /* CONFIG_WOWLAN */
+#endif
 
 #endif /*  !__SDIO_OPS_H__ */
diff --git a/drivers/staging/rtl8723bs/include/sta_info.h b/drivers/staging/rtl8723bs/include/sta_info.h
index 734f4e2ecd66..fff0bed1233b 100644
--- a/drivers/staging/rtl8723bs/include/sta_info.h
+++ b/drivers/staging/rtl8723bs/include/sta_info.h
@@ -92,11 +92,6 @@ struct sta_info {
 	union Keytype	dot11tkiprxmickey;
 	union Keytype	dot118021x_UncstKey;
 	union pn48		dot11txpn;			/*  PN48 used for Unicast xmit */
-#ifdef CONFIG_GTK_OL
-	u8 kek[RTW_KEK_LEN];
-	u8 kck[RTW_KCK_LEN];
-	u8 replay_ctr[RTW_REPLAY_CTR_LEN];
-#endif /* CONFIG_GTK_OL */
 	union pn48		dot11wtxpn;			/*  PN48 used for Unicast mgmt xmit. */
 	union pn48		dot11rxpn;			/*  PN48 used for Unicast recv. */
 
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 78ba2423ed65..f4b99c6b82ad 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -4669,9 +4669,6 @@ static const struct iw_priv_args rtw_private_args[] = {
 		IW_PRIV_TYPE_CHAR | 40, IW_PRIV_TYPE_CHAR | 0x7FF, "test"
 	},
 
-#ifdef CONFIG_WOWLAN
-		{ MP_WOW_ENABLE, IW_PRIV_TYPE_CHAR | 1024, 0, "wow_mode" }, /* set */
-#endif
 #ifdef CONFIG_AP_WOWLAN
 		{ MP_AP_WOW_ENABLE, IW_PRIV_TYPE_CHAR | 1024, 0, "ap_wow_mode" }, /* set */
 #endif
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 61488781d211..2c0df0db6419 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -596,9 +596,6 @@ static void rtw_init_default_value(struct adapter *padapter)
 	/* security_priv */
 	/* rtw_get_encrypt_decrypt_from_registrypriv(padapter); */
 	psecuritypriv->binstallGrpkey = _FAIL;
-#ifdef CONFIG_GTK_OL
-	psecuritypriv->binstallKCK_KEK = _FAIL;
-#endif /* CONFIG_GTK_OL */
 	psecuritypriv->sw_encrypt = pregistrypriv->software_encrypt;
 	psecuritypriv->sw_decrypt = pregistrypriv->software_decrypt;
 
@@ -1174,16 +1171,10 @@ void rtw_dev_unload(struct adapter *padapter)
 
 		if (!padapter->bSurpriseRemoved) {
 			hal_btcoex_IpsNotify(padapter, pwrctl->ips_mode_req);
-#ifdef CONFIG_WOWLAN
-			if (pwrctl->bSupportRemoteWakeup && pwrctl->wowlan_mode) {
-				DBG_871X_LEVEL(_drv_always_, "%s bSupportRemoteWakeup ==true  do not run rtw_hal_deinit()\n", __func__);
-			}
-			else
-#endif
-			{
-				/* amy modify 20120221 for power seq is different between driver open and ips */
-				rtw_hal_deinit(padapter);
-			}
+
+			/* amy modify 20120221 for power seq is different between driver open and ips */
+			rtw_hal_deinit(padapter);
+
 			padapter->bSurpriseRemoved = true;
 		}
 		RT_TRACE(_module_hci_intfs_c_, _drv_notice_,
@@ -1244,81 +1235,6 @@ static int rtw_suspend_free_assoc_resource(struct adapter *padapter)
 	return _SUCCESS;
 }
 
-#ifdef CONFIG_WOWLAN
-void rtw_suspend_wow(struct adapter *padapter)
-{
-	u8 ch, bw, offset;
-	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	struct net_device *pnetdev = padapter->pnetdev;
-	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
-	struct wowlan_ioctl_param poidparam;
-
-	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
-
-
-	DBG_871X("wowlan_mode: %d\n", pwrpriv->wowlan_mode);
-	DBG_871X("wowlan_pno_enable: %d\n", pwrpriv->wowlan_pno_enable);
-
-	if (pwrpriv->wowlan_mode) {
-		if (pnetdev)
-			rtw_netif_stop_queue(pnetdev);
-		/*  1. stop thread */
-		padapter->bDriverStopped = true;	/* for stop thread */
-		rtw_stop_drv_threads(padapter);
-		padapter->bDriverStopped = false;	/* for 32k command */
-
-		/*  2. disable interrupt */
-		if (padapter->intf_stop)
-			padapter->intf_stop(padapter);
-
-		/*  2.1 clean interrupt */
-		if (padapter->HalFunc.clear_interrupt)
-			padapter->HalFunc.clear_interrupt(padapter);
-
-		/*  2.2 free irq */
-		/* sdio_free_irq(adapter_to_dvobj(padapter)); */
-		if (padapter->intf_free_irq)
-			padapter->intf_free_irq(adapter_to_dvobj(padapter));
-
-		poidparam.subcode = WOWLAN_ENABLE;
-		padapter->HalFunc.SetHwRegHandler(padapter, HW_VAR_WOWLAN, (u8 *)&poidparam);
-		if (rtw_chk_roam_flags(padapter, RTW_ROAM_ON_RESUME)) {
-			if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) && check_fwstate(pmlmepriv, _FW_LINKED)) {
-				DBG_871X("%s %s(%pM), length:%d assoc_ssid.length:%d\n", __func__,
-						pmlmepriv->cur_network.network.Ssid.Ssid,
-						MAC_ARG(pmlmepriv->cur_network.network.MacAddress),
-						pmlmepriv->cur_network.network.Ssid.SsidLength,
-						pmlmepriv->assoc_ssid.SsidLength);
-
-				rtw_set_to_roam(padapter, 0);
-			}
-		}
-
-		DBG_871X_LEVEL(_drv_always_, "%s: wowmode suspending\n", __func__);
-
-		if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY)) {
-			DBG_871X_LEVEL(_drv_always_, "%s: fw_under_survey\n", __func__);
-			rtw_indicate_scan_done(padapter, 1);
-			clr_fwstate(pmlmepriv, _FW_UNDER_SURVEY);
-		}
-
-		if (rtw_get_ch_setting_union(padapter, &ch, &bw, &offset) != 0) {
-			DBG_871X(FUNC_ADPT_FMT " back to linked/linking union - ch:%u, bw:%u, offset:%u\n",
-				FUNC_ADPT_ARG(padapter), ch, bw, offset);
-			set_channel_bwmode(padapter, ch, offset, bw);
-		}
-
-		if (pwrpriv->wowlan_pno_enable)
-			DBG_871X_LEVEL(_drv_always_, "%s: pno: %d\n", __func__, pwrpriv->wowlan_pno_enable);
-		else
-			rtw_set_ps_mode(padapter, PS_MODE_DTIM, 0, 0, "WOWLAN");
-	} else {
-		DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR ### wowlan_mode =%d\n", __func__, pwrpriv->wowlan_mode);
-	}
-	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
-}
-#endif /* ifdef CONFIG_WOWLAN */
-
 #ifdef CONFIG_AP_WOWLAN
 void rtw_suspend_ap_wow(struct adapter *padapter)
 {
@@ -1440,20 +1356,7 @@ int rtw_suspend_common(struct adapter *padapter)
 	rtw_ps_deny_cancel(padapter, PS_DENY_SUSPEND);
 
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
-	#ifdef CONFIG_WOWLAN
-		if (check_fwstate(pmlmepriv, _FW_LINKED))
-			pwrpriv->wowlan_mode = true;
-		else if (pwrpriv->wowlan_pno_enable)
-			pwrpriv->wowlan_mode |= pwrpriv->wowlan_pno_enable;
-
-		if (pwrpriv->wowlan_mode)
-			rtw_suspend_wow(padapter);
-		else
-			rtw_suspend_normal(padapter);
-
-	#else /* CONFIG_WOWLAN */
 		rtw_suspend_normal(padapter);
-	#endif /* CONFIG_WOWLAN */
 	} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
 	#ifdef CONFIG_AP_WOWLAN
 		rtw_suspend_ap_wow(padapter);
@@ -1474,124 +1377,6 @@ int rtw_suspend_common(struct adapter *padapter)
 	return ret;
 }
 
-#ifdef CONFIG_WOWLAN
-int rtw_resume_process_wow(struct adapter *padapter)
-{
-	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
-	struct net_device *pnetdev = padapter->pnetdev;
-	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
-	struct dvobj_priv *psdpriv = padapter->dvobj;
-	struct debug_priv *pdbgpriv = &psdpriv->drv_dbg;
-	struct wowlan_ioctl_param poidparam;
-	struct sta_info *psta = NULL;
-	int ret = _SUCCESS;
-
-	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
-
-	if (padapter) {
-		pnetdev = padapter->pnetdev;
-		pwrpriv = adapter_to_pwrctl(padapter);
-	} else {
-		pdbgpriv->dbg_resume_error_cnt++;
-		ret = -1;
-		goto exit;
-	}
-
-	if (padapter->bDriverStopped || padapter->bSurpriseRemoved) {
-		DBG_871X("%s pdapter %p bDriverStopped %d bSurpriseRemoved %d\n",
-				__func__, padapter, padapter->bDriverStopped,
-				padapter->bSurpriseRemoved);
-		goto exit;
-	}
-
-	if (pwrpriv->wowlan_mode) {
-		rtw_set_ps_mode(padapter, PS_MODE_ACTIVE, 0, 0, "WOWLAN");
-
-		pwrpriv->bFwCurrentInPSMode = false;
-
-		if (padapter->intf_stop)
-			padapter->intf_stop(padapter);
-
-		if (padapter->HalFunc.clear_interrupt)
-			padapter->HalFunc.clear_interrupt(padapter);
-
-		/* if (sdio_alloc_irq(adapter_to_dvobj(padapter)) != _SUCCESS) { */
-		if ((padapter->intf_alloc_irq) && (padapter->intf_alloc_irq(adapter_to_dvobj(padapter)) != _SUCCESS)) {
-			ret = -1;
-			RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("%s: sdio_alloc_irq Failed!!\n", __func__));
-			goto exit;
-		}
-
-		/* Disable WOW, set H2C command */
-		poidparam.subcode = WOWLAN_DISABLE;
-		padapter->HalFunc.SetHwRegHandler(padapter, HW_VAR_WOWLAN, (u8 *)&poidparam);
-
-		psta = rtw_get_stainfo(&padapter->stapriv, get_bssid(&padapter->mlmepriv));
-		if (psta)
-			set_sta_rate(padapter, psta);
-
-		padapter->bDriverStopped = false;
-		DBG_871X("%s: wowmode resuming, DriverStopped:%d\n", __func__, padapter->bDriverStopped);
-		rtw_start_drv_threads(padapter);
-
-		if (padapter->intf_start)
-			padapter->intf_start(padapter);
-
-		/*  start netif queue */
-		if (pnetdev) {
-			if (!rtw_netif_queue_stopped(pnetdev))
-				rtw_netif_start_queue(pnetdev);
-			else
-				rtw_netif_wake_queue(pnetdev);
-		}
-	} else {
-		DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR ### wowlan_mode =%d\n", __func__, pwrpriv->wowlan_mode);
-	}
-
-	if (padapter->pid[1] != 0) {
-		DBG_871X("pid[1]:%d\n", padapter->pid[1]);
-		rtw_signal_process(padapter->pid[1], SIGUSR2);
-	}
-
-	if (rtw_chk_roam_flags(padapter, RTW_ROAM_ON_RESUME)) {
-		if (pwrpriv->wowlan_wake_reason == FWDecisionDisconnect ||
-			pwrpriv->wowlan_wake_reason == Rx_DisAssoc ||
-			pwrpriv->wowlan_wake_reason == Rx_DeAuth) {
-			DBG_871X("%s: disconnect reason: %02x\n", __func__,
-						pwrpriv->wowlan_wake_reason);
-			rtw_indicate_disconnect(padapter);
-
-			rtw_sta_media_status_rpt(padapter,
-				rtw_get_stainfo(&padapter->stapriv,
-					get_bssid(&padapter->mlmepriv)), 0);
-
-			rtw_free_assoc_resources(padapter, 1);
-			pmlmeinfo->state = WIFI_FW_NULL_STATE;
-
-		} else {
-			DBG_871X("%s: do roaming\n", __func__);
-			rtw_roaming(padapter, NULL);
-		}
-	}
-
-	if (pwrpriv->wowlan_mode) {
-		pwrpriv->bips_processing = false;
-		_set_timer(&padapter->mlmepriv.dynamic_chk_timer, 2000);
-	} else {
-		DBG_871X_LEVEL(_drv_always_, "do not reset timer\n");
-	}
-
-	pwrpriv->wowlan_mode = false;
-
-	/* clean driver side wake up reason. */
-	pwrpriv->wowlan_wake_reason = 0;
-exit:
-	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
-	return ret;
-}
-#endif /* ifdef CONFIG_WOWLAN */
-
 #ifdef CONFIG_AP_WOWLAN
 int rtw_resume_process_ap_wow(struct adapter *padapter)
 {
@@ -1753,15 +1538,7 @@ int rtw_resume_common(struct adapter *padapter)
 	DBG_871X("==> %s (%s:%d)\n", __func__, current->comm, current->pid);
 
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
-	#ifdef CONFIG_WOWLAN
-		if (pwrpriv->wowlan_mode)
-			rtw_resume_process_wow(padapter);
-		else
-			rtw_resume_process_normal(padapter);
-	#else
 		rtw_resume_process_normal(padapter);
-	#endif
-
 	} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
 	#ifdef CONFIG_AP_WOWLAN
 		rtw_resume_process_ap_wow(padapter);
diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 079e75164f1e..8f8549eee23e 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -377,11 +377,6 @@ static void rtw_sdio_if1_deinit(struct adapter *if1)
 
 	rtw_cancel_all_timer(if1);
 
-#ifdef CONFIG_WOWLAN
-	adapter_to_pwrctl(if1)->wowlan_mode = false;
-	DBG_871X_LEVEL(_drv_always_, "%s wowlan_mode:%d\n", __func__, adapter_to_pwrctl(if1)->wowlan_mode);
-#endif /* CONFIG_WOWLAN */
-
 	rtw_dev_unload(if1);
 	DBG_871X("+r871xu_dev_remove, hw_init_completed =%d\n", if1->hw_init_completed);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

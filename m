Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCC733AFB3
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:15:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAFBE4018D;
	Mon, 15 Mar 2021 10:15:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5z5oCU3oemUD; Mon, 15 Mar 2021 10:15:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16F1640172;
	Mon, 15 Mar 2021 10:15:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 19D141BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:14:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 096756F494
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:14:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gzLVGJ1mRybj for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:14:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 918656F4E4
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:14:55 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id x16so5385601wrn.4
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UsSCkMHHgPZJkA3LkSUyiWI2hoAAgwwYeJEcBaQXB/E=;
 b=tOeY02rePK7kKQ5P0tzoXBx3vvRJmJVVf817Cl3jeZ/3WuEa1iBkP8VIWpaqN5s31j
 fwuNwTLPXV3tiYIbOsVV1RgPhcj52qgmIxZvydWqhX71QXGKcp+Nj5qd4qbhs0PMUSXk
 PjenKrCni5PrP2tWkSkWucpgrwn63dUEYajWgdFJaFWEZbEWZZIcvpzOLb8bPvMeGQ3r
 YzPW1iMkR0RG6WPY58NRkII74mKuj6pbk/g1UIoVph0MaWOPQher1o5LKW6VrptjhWbF
 MLug1VNQMSXaoAZ2C+TgZqmUrURAMl8fiHCUFzkRyqrB8jxiMUbuawzPDBc5Fg7jdaWk
 L0PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UsSCkMHHgPZJkA3LkSUyiWI2hoAAgwwYeJEcBaQXB/E=;
 b=EhwUszD6Z1H1E03wseGMgJxJ3dczuM/kJfDSprXjbflbNqVQ1IfxoISrTXTy9wtkIl
 ejqbg8pZqGI4hKKhcF4OzlW/ek5tS1eZ11hI6zIQcpv8PphpHi0CAt9fniBGS1Ycy1Yj
 wF7PcfrTm/So6m9Yi9aX9qMiyigH3NN4rAzcExyIue++n/RJDgb/EBe1CVGnL7zOGf29
 x4OQ8CC/emWKmybfM+O8hHLYqeSci2xWp/AqxHMwi3IcccM095NtN5cviR4yprTg0aph
 NkbnYqRslhjfqKwonAJaZOCxtOsh7eTahih5Ijuek0bmEJckMQGhRV7cTuP5SFp1nKhs
 3zZA==
X-Gm-Message-State: AOAM5317MQpXNixMZ0OaHU6+Debigbh6ZGpxWv99ahnKQ7d1YjM8d07k
 gp9UifVI0n0Wr0WV8b2nePMWonOTTHM=
X-Google-Smtp-Source: ABdhPJywhdUpGCTxIWlu2fDrb6/SYd7QIfgMsz0PhMWzxbSJMw/leBugBwSeL1yd7fEqa2ZotSybEQ==
X-Received: by 2002:a05:6000:250:: with SMTP id
 m16mr27190188wrz.325.1615803293405; 
 Mon, 15 Mar 2021 03:14:53 -0700 (PDT)
Received: from agape.jhs ([5.171.72.229])
 by smtp.gmail.com with ESMTPSA id f7sm20667693wrm.36.2021.03.15.03.14.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 03:14:52 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:14:49 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 04/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_AP_WOWLAN
Message-ID: <19753137ed1d82a8b42429c8609684bdacb6ff8a.1615801721.git.fabioaiuto83@gmail.com>
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

remove conditional code blocks checked by unused CONFIG_AP_WOWLAN

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |  35 --
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |  31 --
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  | 339 ------------------
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  33 --
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  | 105 ------
 drivers/staging/rtl8723bs/hal/sdio_ops.c      |  35 --
 .../rtl8723bs/include/drv_types_sdio.h        |   5 -
 .../staging/rtl8723bs/include/hal_com_h2c.h   |  30 --
 drivers/staging/rtl8723bs/include/hal_intf.h  |   3 -
 .../staging/rtl8723bs/include/osdep_service.h |   7 -
 .../staging/rtl8723bs/include/rtl8723b_cmd.h  |   6 -
 .../staging/rtl8723bs/include/rtl8723b_hal.h  |   4 -
 drivers/staging/rtl8723bs/include/rtw_mp.h    |   3 -
 drivers/staging/rtl8723bs/include/sdio_ops.h  |   7 -
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    |   4 -
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   | 134 -------
 16 files changed, 781 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 2e6c522b74e3..b942cf49cd27 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -350,17 +350,8 @@ static u8 PS_RDY_CHECK(struct adapter *padapter)
 	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 
-#ifdef CONFIG_AP_WOWLAN
-	if (pwrpriv->bInSuspend && pwrpriv->wowlan_mode)
-		return true;
-	else if (pwrpriv->bInSuspend && pwrpriv->wowlan_ap_mode)
-		return true;
-	else if (pwrpriv->bInSuspend)
-		return false;
-#else
 	if (pwrpriv->bInSuspend)
 		return false;
-#endif
 
 	curr_time = jiffies;
 
@@ -391,9 +382,6 @@ static u8 PS_RDY_CHECK(struct adapter *padapter)
 void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_ant_mode, const char *msg)
 {
 	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
-#ifdef CONFIG_AP_WOWLAN
-	struct debug_priv *pdbgpriv = &padapter->dvobj->drv_dbg;
-#endif
 
 	RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_notice_,
 			 ("%s: PowerMode =%d Smart_PS =%d\n",
@@ -422,29 +410,6 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 			pwrpriv->pwr_mode = ps_mode;
 			rtw_set_rpwm(padapter, PS_STATE_S4);
 
-#ifdef CONFIG_AP_WOWLAN
-			if (pwrpriv->wowlan_mode || pwrpriv->wowlan_ap_mode) {
-				unsigned long start_time;
-				u32 delay_ms;
-				u8 val8;
-				delay_ms = 20;
-				start_time = jiffies;
-				do {
-					rtw_hal_get_hwreg(padapter, HW_VAR_SYS_CLKR, &val8);
-					if (!(val8 & BIT(4))) { /* 0x08 bit4 = 1 --> in 32k, bit4 = 0 --> leave 32k */
-						pwrpriv->cpwm = PS_STATE_S4;
-						break;
-					}
-					if (jiffies_to_msecs(jiffies - start_time) > delay_ms) {
-						DBG_871X("%s: Wait for FW 32K leave more than %u ms!!!\n",
-								__func__, delay_ms);
-						pdbgpriv->dbg_wow_leave_ps_fail_cnt++;
-						break;
-					}
-					msleep(1);
-				} while (1);
-			}
-#endif
 			rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_PWRMODE, (u8 *)(&ps_mode));
 			pwrpriv->bFwCurrentInPSMode = false;
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 355e43c4cf9a..d04514d36b49 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -10,10 +10,6 @@
 #include <rtw_debug.h>
 #include <hal_com_h2c.h>
 
-#ifdef CONFIG_AP_WOWLAN
-#include <linux/inetdevice.h>
-#endif
-
 static unsigned char ARTHEROS_OUI1[] = {0x00, 0x03, 0x7f};
 static unsigned char ARTHEROS_OUI2[] = {0x00, 0x13, 0x74};
 
@@ -2113,30 +2109,3 @@ int rtw_config_gpio(struct net_device *netdev, int gpio_num, bool isOutput)
 EXPORT_SYMBOL(rtw_config_gpio);
 #endif
 
-#ifdef CONFIG_AP_WOWLAN
-void rtw_get_current_ip_address(struct adapter *padapter, u8 *pcurrentip)
-{
-	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
-	struct in_device *my_ip_ptr = padapter->pnetdev->ip_ptr;
-	u8 ipaddress[4];
-
-	if ((pmlmeinfo->state & WIFI_FW_LINKING_STATE) ||
-			pmlmeinfo->state & WIFI_FW_AP_STATE) {
-		if (my_ip_ptr) {
-			struct in_ifaddr *my_ifa_list = my_ip_ptr->ifa_list;
-
-			if (my_ifa_list) {
-				ipaddress[0] = my_ifa_list->ifa_address & 0xFF;
-				ipaddress[1] = (my_ifa_list->ifa_address >> 8) & 0xFF;
-				ipaddress[2] = (my_ifa_list->ifa_address >> 16) & 0xFF;
-				ipaddress[3] = my_ifa_list->ifa_address >> 24;
-				DBG_871X("%s: %d.%d.%d.%d ==========\n", __func__,
-						ipaddress[0], ipaddress[1], ipaddress[2], ipaddress[3]);
-				memcpy(pcurrentip, ipaddress, 4);
-			}
-		}
-	}
-}
-#endif
-
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 61fd643c244f..11e7a7121f30 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -312,119 +312,6 @@ static void ConstructNullFunctionData(
 	*pLength = pktlen;
 }
 
-#ifdef CONFIG_AP_WOWLAN
-static void ConstructProbeRsp(struct adapter *padapter, u8 *pframe, u32 *pLength, u8 *StaAddr, bool bHideSSID)
-{
-	struct ieee80211_hdr *pwlanhdr;
-	u16 *fctrl;
-	u8 *mac, *bssid;
-	u32 pktlen;
-	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
-	struct wlan_bssid_ex *cur_network = &(pmlmeinfo->network);
-	u8 *pwps_ie;
-	uint wps_ielen;
-	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-
-	/* DBG_871X("%s\n", __func__); */
-
-	pwlanhdr = (struct ieee80211_hdr *)pframe;
-
-	mac = myid(&(padapter->eeprompriv));
-	bssid = cur_network->MacAddress;
-
-	fctrl = &(pwlanhdr->frame_control);
-	*(fctrl) = 0;
-	memcpy(pwlanhdr->addr1, StaAddr, ETH_ALEN);
-	memcpy(pwlanhdr->addr2, mac, ETH_ALEN);
-	memcpy(pwlanhdr->addr3, bssid, ETH_ALEN);
-
-	DBG_871X("%s FW Mac Addr:%pM\n", __func__, MAC_ARG(mac));
-	DBG_871X("%s FW IP Addr:%pI4\n", __func__, IP_ARG(StaAddr));
-
-	SetSeqNum(pwlanhdr, 0);
-	SetFrameSubType(fctrl, WIFI_PROBERSP);
-
-	pktlen = sizeof(struct ieee80211_hdr_3addr);
-	pframe += pktlen;
-
-	if (cur_network->IELength > MAX_IE_SZ)
-		return;
-
-	pwps_ie = rtw_get_wps_ie(cur_network->IEs+_FIXED_IE_LENGTH_,
-			cur_network->IELength-_FIXED_IE_LENGTH_, NULL, &wps_ielen);
-
-	/* inerset & update wps_probe_resp_ie */
-	if (pmlmepriv->wps_probe_resp_ie && pwps_ie && (wps_ielen > 0)) {
-		uint wps_offset, remainder_ielen;
-		u8 *premainder_ie;
-
-		wps_offset = (uint)(pwps_ie - cur_network->IEs);
-
-		premainder_ie = pwps_ie + wps_ielen;
-
-		remainder_ielen = cur_network->IELength - wps_offset - wps_ielen;
-
-		memcpy(pframe, cur_network->IEs, wps_offset);
-		pframe += wps_offset;
-		pktlen += wps_offset;
-
-		wps_ielen = (uint)pmlmepriv->wps_probe_resp_ie[1];/* to get ie data len */
-		if ((wps_offset+wps_ielen+2) <= MAX_IE_SZ) {
-			memcpy(pframe, pmlmepriv->wps_probe_resp_ie, wps_ielen+2);
-			pframe += wps_ielen+2;
-			pktlen += wps_ielen+2;
-		}
-
-		if ((wps_offset+wps_ielen+2+remainder_ielen) <= MAX_IE_SZ) {
-			memcpy(pframe, premainder_ie, remainder_ielen);
-			pframe += remainder_ielen;
-			pktlen += remainder_ielen;
-		}
-	} else {
-		memcpy(pframe, cur_network->IEs, cur_network->IELength);
-		pframe += cur_network->IELength;
-		pktlen += cur_network->IELength;
-	}
-
-	/* retrieve SSID IE from cur_network->Ssid */
-	{
-		u8 *ssid_ie;
-		signed int ssid_ielen;
-		signed int ssid_ielen_diff;
-		u8 buf[MAX_IE_SZ];
-		u8 *ies = pframe + sizeof(struct ieee80211_hdr_3addr);
-
-		ssid_ie = rtw_get_ie(ies+_FIXED_IE_LENGTH_, WLAN_EID_SSID, &ssid_ielen,
-					(pframe-ies)-_FIXED_IE_LENGTH_);
-
-		ssid_ielen_diff = cur_network->Ssid.SsidLength - ssid_ielen;
-
-		if (ssid_ie &&	cur_network->Ssid.SsidLength) {
-			uint remainder_ielen;
-			u8 *remainder_ie;
-			remainder_ie = ssid_ie+2;
-			remainder_ielen = (pframe-remainder_ie);
-
-			if (remainder_ielen > MAX_IE_SZ) {
-				DBG_871X_LEVEL(_drv_warning_, FUNC_ADPT_FMT" remainder_ielen > MAX_IE_SZ\n", FUNC_ADPT_ARG(padapter));
-				remainder_ielen = MAX_IE_SZ;
-			}
-
-			memcpy(buf, remainder_ie, remainder_ielen);
-			memcpy(remainder_ie+ssid_ielen_diff, buf, remainder_ielen);
-			*(ssid_ie+1) = cur_network->Ssid.SsidLength;
-			memcpy(ssid_ie+2, cur_network->Ssid.Ssid, cur_network->Ssid.SsidLength);
-			pframe += ssid_ielen_diff;
-			pktlen += ssid_ielen_diff;
-		}
-	}
-
-	*pLength = pktlen;
-
-}
-#endif /*  CONFIG_AP_WOWLAN */
-
 /*
  * To check if reserved page content is destroyed by beacon because beacon
  * is too large.
@@ -457,42 +344,6 @@ static void rtl8723b_set_FwAoacRsvdPage_cmd(struct adapter *padapter, struct RSV
 {
 }
 
-#ifdef CONFIG_AP_WOWLAN
-static void rtl8723b_set_ap_wow_rsvdpage_cmd(
-	struct adapter *padapter, struct RSVDPAGE_LOC *rsvdpageloc
-)
-{
-	u8 header;
-	u8 rsvdparm[H2C_AOAC_RSVDPAGE_LOC_LEN] = {0};
-
-	header = rtw_read8(padapter, REG_BCNQ_BDNY);
-
-	DBG_871X("%s: beacon: %d, probeRsp: %d, header:0x%02x\n", __func__,
-			rsvdpageloc->LocApOffloadBCN,
-			rsvdpageloc->LocProbeRsp,
-			header);
-
-	SET_H2CCMD_AP_WOWLAN_RSVDPAGE_LOC_BCN(rsvdparm,
-			rsvdpageloc->LocApOffloadBCN + header);
-
-	FillH2CCmd8723B(padapter, H2C_8723B_BCN_RSVDPAGE,
-			H2C_BCN_RSVDPAGE_LEN, rsvdparm);
-
-	msleep(10);
-
-	memset(&rsvdparm, 0, sizeof(rsvdparm));
-
-	SET_H2CCMD_AP_WOWLAN_RSVDPAGE_LOC_ProbeRsp(
-			rsvdparm,
-			rsvdpageloc->LocProbeRsp + header);
-
-	FillH2CCmd8723B(padapter, H2C_8723B_PROBERSP_RSVDPAGE,
-			H2C_PROBERSP_RSVDPAGE_LEN, rsvdparm);
-
-	msleep(10);
-}
-#endif /* CONFIG_AP_WOWLAN */
-
 void rtl8723b_set_FwMediaStatusRpt_cmd(struct adapter *padapter, u8 mstatus, u8 macid)
 {
 	u8 u1H2CMediaStatusRptParm[H2C_MEDIA_STATUS_RPT_LEN] = {0};
@@ -698,64 +549,6 @@ void rtl8723b_set_FwPwrModeInIPS_cmd(struct adapter *padapter, u8 cmd_param)
 	FillH2CCmd8723B(padapter, H2C_8723B_FWLPS_IN_IPS_, 1, &cmd_param);
 }
 
-#ifdef CONFIG_AP_WOWLAN
-static void rtl8723b_set_FwAPWoWlanCtrl_Cmd(struct adapter *padapter, u8 bFuncEn)
-{
-	u8 u1H2CAPWoWlanCtrlParm[H2C_WOWLAN_LEN] = {0};
-	u8 gpionum = 0, gpio_dur = 0;
-	u8 gpio_high_active = 1; /* 0: low active, 1: high active */
-	u8 gpio_pulse = bFuncEn;
-
-	DBG_871X("%s(): bFuncEn =%d\n", __func__, bFuncEn);
-
-	if (bFuncEn)
-		gpio_dur = 16;
-	else
-		gpio_dur = 0;
-
-	SET_H2CCMD_AP_WOW_GPIO_CTRL_INDEX(u1H2CAPWoWlanCtrlParm,
-			gpionum);
-	SET_H2CCMD_AP_WOW_GPIO_CTRL_PLUS(u1H2CAPWoWlanCtrlParm,
-			gpio_pulse);
-	SET_H2CCMD_AP_WOW_GPIO_CTRL_HIGH_ACTIVE(u1H2CAPWoWlanCtrlParm,
-			gpio_high_active);
-	SET_H2CCMD_AP_WOW_GPIO_CTRL_EN(u1H2CAPWoWlanCtrlParm,
-			bFuncEn);
-	SET_H2CCMD_AP_WOW_GPIO_CTRL_DURATION(u1H2CAPWoWlanCtrlParm,
-			gpio_dur);
-
-	FillH2CCmd8723B(padapter, H2C_8723B_AP_WOW_GPIO_CTRL,
-			H2C_AP_WOW_GPIO_CTRL_LEN, u1H2CAPWoWlanCtrlParm);
-}
-
-static void rtl8723b_set_Fw_AP_Offload_Cmd(struct adapter *padapter, u8 bFuncEn)
-{
-	u8 u1H2CAPOffloadCtrlParm[H2C_WOWLAN_LEN] = {0};
-
-	DBG_871X("%s(): bFuncEn =%d\n", __func__, bFuncEn);
-
-	SET_H2CCMD_AP_WOWLAN_EN(u1H2CAPOffloadCtrlParm, bFuncEn);
-
-	FillH2CCmd8723B(padapter, H2C_8723B_AP_OFFLOAD,
-			H2C_AP_OFFLOAD_LEN, u1H2CAPOffloadCtrlParm);
-}
-
-void rtl8723b_set_ap_wowlan_cmd(struct adapter *padapter, u8 enable)
-{
-	DBG_871X_LEVEL(_drv_always_, "+%s()+: enable =%d\n", __func__, enable);
-	if (enable) {
-		rtl8723b_set_FwJoinBssRpt_cmd(padapter, RT_MEDIA_CONNECT);
-		issue_beacon(padapter, 0);
-	}
-
-	rtl8723b_set_FwAPWoWlanCtrl_Cmd(padapter, enable);
-	msleep(10);
-	rtl8723b_set_Fw_AP_Offload_Cmd(padapter, enable);
-	msleep(10);
-	DBG_871X_LEVEL(_drv_always_, "-%s()-\n", __func__);
-}
-#endif /* CONFIG_AP_WOWLAN */
-
 /*
  * Description: Fill the reserved packets that FW will use to RSVD page.
  * Now we just send 4 types packet to rsvd page.
@@ -928,134 +721,9 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	rtw_free_xmitframe(pxmitpriv, pcmdframe);
 }
 
-#ifdef CONFIG_AP_WOWLAN
-/*
- * Description: Fill the reserved packets that FW will use to RSVD page.
- * Now we just send 2 types packet to rsvd page. (1)Beacon, (2)ProbeRsp.
- *
- * Input: bDLFinished
- *
- * false: At the first time we will send all the packets as a large packet to
- * Hw, so we need to set the packet length to total length.
- *
- * true: At the second time, we should send the first packet (default:beacon)
- * to Hw again and set the length in descriptor to the real beacon length.
- */
-/* 2009.10.15 by tynli. */
-static void rtl8723b_set_AP_FwRsvdPagePkt(
-	struct adapter *padapter, bool bDLFinished
-)
-{
-	struct hal_com_data *pHalData;
-	struct xmit_frame *pcmdframe;
-	struct pkt_attrib *pattrib;
-	struct xmit_priv *pxmitpriv;
-	struct mlme_ext_priv *pmlmeext;
-	struct mlme_ext_info *pmlmeinfo;
-	struct pwrctrl_priv *pwrctl;
-	u32 BeaconLength = 0, ProbeRspLength = 0;
-	u8 *ReservedPagePacket;
-	u8 TxDescLen = TXDESC_SIZE, TxDescOffset = TXDESC_OFFSET;
-	u8 TotalPageNum = 0, CurtPktPageNum = 0, RsvdPageNum = 0;
-	u8 currentip[4];
-	u16 BufIndex, PageSize = 128;
-	u32 TotalPacketLen = 0, MaxRsvdPageBufSize = 0;
-	struct RSVDPAGE_LOC RsvdPageLoc;
-
-	/* DBG_871X("%s---->\n", __func__); */
-	DBG_8192C("+" FUNC_ADPT_FMT ": iface_type =%d\n",
-		FUNC_ADPT_ARG(padapter), get_iface_type(padapter));
-
-	pHalData = GET_HAL_DATA(padapter);
-	pxmitpriv = &padapter->xmitpriv;
-	pmlmeext = &padapter->mlmeextpriv;
-	pmlmeinfo = &pmlmeext->mlmext_info;
-	pwrctl = adapter_to_pwrctl(padapter);
-
-	RsvdPageNum = BCNQ_PAGE_NUM_8723B + AP_WOWLAN_PAGE_NUM_8723B;
-	MaxRsvdPageBufSize = RsvdPageNum*PageSize;
-
-	pcmdframe = rtw_alloc_cmdxmitframe(pxmitpriv);
-	if (!pcmdframe) {
-		DBG_871X("%s: alloc ReservedPagePacket fail!\n", __func__);
-		return;
-	}
-
-	ReservedPagePacket = pcmdframe->buf_addr;
-	memset(&RsvdPageLoc, 0, sizeof(struct RSVDPAGE_LOC));
-
-	/* 3 (1) beacon */
-	BufIndex = TxDescOffset;
-	ConstructBeacon(padapter, &ReservedPagePacket[BufIndex], &BeaconLength);
-
-	/*  When we count the first page size, we need to reserve description size for the RSVD */
-	/*  packet, it will be filled in front of the packet in TXPKTBUF. */
-	CurtPktPageNum = (u8)PageNum_128(TxDescLen + BeaconLength);
-	/* If we don't add 1 more page, the WOWLAN function has a problem. Baron thinks it's a bug of firmware */
-	if (CurtPktPageNum == 1)
-		CurtPktPageNum += 1;
-	TotalPageNum += CurtPktPageNum;
-
-	BufIndex += (CurtPktPageNum*PageSize);
-
-	/* 2 (4) probe response */
-	RsvdPageLoc.LocProbeRsp = TotalPageNum;
-
-	rtw_get_current_ip_address(padapter, currentip);
-
-	ConstructProbeRsp(
-		padapter,
-		&ReservedPagePacket[BufIndex],
-		&ProbeRspLength,
-		currentip,
-		false);
-	rtl8723b_fill_fake_txdesc(padapter,
-			&ReservedPagePacket[BufIndex-TxDescLen],
-			ProbeRspLength,
-			false, false, false);
-
-	DBG_871X("%s(): HW_VAR_SET_TX_CMD: PROBE RSP %p %d\n",
-		__func__, &ReservedPagePacket[BufIndex-TxDescLen],
-		(ProbeRspLength+TxDescLen));
-
-	CurtPktPageNum = (u8)PageNum_128(TxDescLen + ProbeRspLength);
-
-	TotalPageNum += CurtPktPageNum;
-
-	BufIndex += (CurtPktPageNum*PageSize);
-
-	TotalPacketLen = BufIndex + ProbeRspLength;
-
-	if (TotalPacketLen > MaxRsvdPageBufSize) {
-		DBG_871X("%s(): ERROR: The rsvd page size is not enough \
-				!!TotalPacketLen %d, MaxRsvdPageBufSize %d\n",
-				__func__, TotalPacketLen, MaxRsvdPageBufSize);
-		goto error;
-	} else {
-		/*  update attribute */
-		pattrib = &pcmdframe->attrib;
-		update_mgntframe_attrib(padapter, pattrib);
-		pattrib->qsel = 0x10;
-		pattrib->pktlen = TotalPacketLen - TxDescOffset;
-		pattrib->last_txcmdsz = TotalPacketLen - TxDescOffset;
-		dump_mgntframe_and_wait(padapter, pcmdframe, 100);
-	}
-
-	DBG_871X("%s: Set RSVD page location to Fw , TotalPacketLen(%d), TotalPageNum(%d)\n", __func__, TotalPacketLen, TotalPageNum);
-	rtl8723b_set_ap_wow_rsvdpage_cmd(padapter, &RsvdPageLoc);
-
-	return;
-error:
-	rtw_free_xmitframe(pxmitpriv, pcmdframe);
-}
-#endif /* CONFIG_AP_WOWLAN */
-
 void rtl8723b_download_rsvd_page(struct adapter *padapter, u8 mstatus)
 {
 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter);
-#ifdef CONFIG_AP_WOWLAN
-	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
-#endif
 	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 	bool bcn_valid = false;
@@ -1102,15 +770,8 @@ void rtl8723b_download_rsvd_page(struct adapter *padapter, u8 mstatus)
 		DLBcnCount = 0;
 		poll = 0;
 		do {
-#ifdef CONFIG_AP_WOWLAN
-			if (pwrpriv->wowlan_ap_mode)
-				rtl8723b_set_AP_FwRsvdPagePkt(padapter, 0);
-			else
-				rtl8723b_set_FwRsvdPagePkt(padapter, 0);
-#else
 			/*  download rsvd page. */
 			rtl8723b_set_FwRsvdPagePkt(padapter, 0);
-#endif
 			DLBcnCount++;
 			do {
 				yield();
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 49085525de05..9f059fb78c7d 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -527,39 +527,6 @@ void rtl8723b_InitializeFirmwareVars(struct adapter *padapter)
 /* pHalData->H2CStopInsertQueue = false; */
 }
 
-#ifdef CONFIG_AP_WOWLAN
-/*  */
-
-/*  */
-/*  Description: Prepare some information to Fw for WoWLAN. */
-/* (1) Download wowlan Fw. */
-/* (2) Download RSVD page packets. */
-/* (3) Enable AP offload if needed. */
-/*  */
-/*  2011.04.12 by tynli. */
-/*  */
-void SetFwRelatedForWoWLAN8723b(
-	struct adapter *padapter, u8 bHostIsGoingtoSleep
-)
-{
-	int	status = _FAIL;
-	/*  */
-	/*  1. Before WoWLAN we need to re-download WoWLAN Fw. */
-	/*  */
-	status = rtl8723b_FirmwareDownload(padapter, bHostIsGoingtoSleep);
-	if (status != _SUCCESS) {
-		DBG_871X("SetFwRelatedForWoWLAN8723b(): Re-Download Firmware failed!!\n");
-		return;
-	} else {
-		DBG_871X("SetFwRelatedForWoWLAN8723b(): Re-Download Firmware Success !!\n");
-	}
-	/*  */
-	/*  2. Re-Init the variables about Fw related setting. */
-	/*  */
-	rtl8723b_InitializeFirmwareVars(padapter);
-}
-#endif /* CONFIG_AP_WOWLAN */
-
 static void rtl8723b_free_hal_data(struct adapter *padapter)
 {
 }
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 47cd3ae63687..a64274fa9907 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -1294,16 +1294,6 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 {
 	u8 val8;
 
-#ifdef CONFIG_AP_WOWLAN
-	struct wowlan_ioctl_param *poidparam;
-	struct pwrctrl_priv *pwrctl = adapter_to_pwrctl(padapter);
-	int res;
-	u32 tmp;
-	u16 len = 0;
-	u8 trycnt = 100;
-	u32 himr = 0;
-#endif
-
 	switch (variable) {
 	case HW_VAR_SET_RPWM:
 		/*  rpwm value only use BIT0(clock bit) , BIT6(Ack bit), and BIT7(Toggle bit) */
@@ -1328,101 +1318,6 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 		val8 = *val;
 		break;
 
-#ifdef CONFIG_AP_WOWLAN
-	case HW_VAR_AP_WOWLAN:
-	{
-		poidparam = (struct wowlan_ioctl_param *)val;
-		switch (poidparam->subcode) {
-		case WOWLAN_AP_ENABLE:
-			DBG_871X("%s, WOWLAN_AP_ENABLE\n", __func__);
-			/*  1. Download WOWLAN FW */
-			DBG_871X_LEVEL(_drv_always_, "Re-download WoWlan FW!\n");
-			SetFwRelatedForWoWLAN8723b(padapter, true);
-
-			/*  2. RX DMA stop */
-			DBG_871X_LEVEL(_drv_always_, "Pause DMA\n");
-			rtw_write32(padapter, REG_RXPKT_NUM,
-				(rtw_read32(padapter, REG_RXPKT_NUM) | RW_RELEASE_EN));
-			do {
-				if ((rtw_read32(padapter, REG_RXPKT_NUM) & RXDMA_IDLE)) {
-					DBG_871X_LEVEL(_drv_always_, "RX_DMA_IDLE is true\n");
-					break;
-				} else {
-					/*  If RX_DMA is not idle, receive one pkt from DMA */
-					res = sdio_local_read(padapter, SDIO_REG_RX0_REQ_LEN, 4, (u8 *)&tmp);
-					len = le16_to_cpu(tmp);
-
-					DBG_871X_LEVEL(_drv_always_, "RX len:%d\n", len);
-					if (len > 0)
-						res = RecvOnePkt(padapter, len);
-					else
-						DBG_871X_LEVEL(_drv_always_, "read length fail %d\n", len);
-
-					DBG_871X_LEVEL(_drv_always_, "RecvOnePkt Result: %d\n", res);
-				}
-			} while (trycnt--);
-
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
-			DBG_871X_LEVEL(_drv_always_, "Set Enable AP WOWLan cmd\n");
-			rtl8723b_set_ap_wowlan_cmd(padapter, 1);
-			/*  6. add some delay for H2C cmd ready */
-			msleep(10);
-
-			rtw_write8(padapter, REG_WOWLAN_WAKE_REASON, 0);
-			break;
-		case WOWLAN_AP_DISABLE:
-			DBG_871X("%s, WOWLAN_AP_DISABLE\n", __func__);
-			/*  1. Read wakeup reason */
-			pwrctl->wowlan_wake_reason =
-				rtw_read8(padapter, REG_WOWLAN_WAKE_REASON);
-
-			DBG_871X_LEVEL(_drv_always_, "wakeup_reason: 0x%02x\n",
-					pwrctl->wowlan_wake_reason);
-
-			/*  2.  Set Disable WOWLAN H2C command. */
-			DBG_871X_LEVEL(_drv_always_, "Set Disable WOWLan cmd\n");
-			rtl8723b_set_ap_wowlan_cmd(padapter, 0);
-			/*  6. add some delay for H2C cmd ready */
-			msleep(2);
-
-			DBG_871X_LEVEL(_drv_always_, "Release RXDMA\n");
-
-			rtw_write32(padapter, REG_RXPKT_NUM,
-				(rtw_read32(padapter, REG_RXPKT_NUM) & (~RW_RELEASE_EN)));
-
-			SetFwRelatedForWoWLAN8723b(padapter, false);
-
-		rtl8723b_set_FwJoinBssRpt_cmd(padapter, RT_MEDIA_CONNECT);
-		issue_beacon(padapter, 0);
-		break;
-		default:
-			break;
-	}
-}
-	break;
-#endif /* CONFIG_AP_WOWLAN */
 	case HW_VAR_DM_IN_LPS:
 		rtl8723b_hal_dm_in_lps(padapter);
 		break;
diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 2400b06dff36..0ea97e85e6a2 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -1114,39 +1114,4 @@ void HalQueryTxOQTBufferStatus8723BSdio(struct adapter *adapter)
 	haldata->SdioTxOQTFreeSpace = SdioLocalCmd52Read1Byte(adapter, SDIO_REG_OQT_FREE_PG);
 }
 
-#ifdef CONFIG_AP_WOWLAN
-u8 RecvOnePkt(struct adapter *adapter, u32 size)
-{
-	struct recv_buf *recvbuf;
-	struct dvobj_priv *sddev;
-	struct sdio_func *func;
-
-	u8 res = false;
-
-	DBG_871X("+%s: size: %d+\n", __func__, size);
-
-	if (!adapter) {
-		DBG_871X(KERN_ERR "%s: adapter is NULL!\n", __func__);
-		return false;
-	}
 
-	sddev = adapter_to_dvobj(adapter);
-	psdio_data = &sddev->intf_data;
-	func = psdio_data->func;
-
-	if (size) {
-		sdio_claim_host(func);
-		recvbuf = sd_recv_rxfifo(adapter, size);
-
-		if (recvbuf) {
-			sd_rxhandler(adapter, recvbuf);
-			res = true;
-		} else {
-			res = false;
-		}
-		sdio_release_host(func);
-	}
-	DBG_871X("-%s-\n", __func__);
-	return res;
-}
-#endif /* CONFIG_AP_WOWLAN */
diff --git a/drivers/staging/rtl8723bs/include/drv_types_sdio.h b/drivers/staging/rtl8723bs/include/drv_types_sdio.h
index 83f5e912baa7..25b3c3a39ee4 100644
--- a/drivers/staging/rtl8723bs/include/drv_types_sdio.h
+++ b/drivers/staging/rtl8723bs/include/drv_types_sdio.h
@@ -11,11 +11,6 @@
 	#include <linux/mmc/sdio_func.h>
 	#include <linux/mmc/sdio_ids.h>
 
-#ifdef CONFIG_AP_WOWLAN
-	#include <linux/mmc/host.h>
-	#include <linux/mmc/card.h>
-#endif
-
 struct sdio_data {
 	u8  func_number;
 
diff --git a/drivers/staging/rtl8723bs/include/hal_com_h2c.h b/drivers/staging/rtl8723bs/include/hal_com_h2c.h
index eca394a8e565..dedbd0a1efb4 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_h2c.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_h2c.h
@@ -120,28 +120,6 @@ enum h2c_cmd {
 #define SET_H2CCMD_DISCONDECISION_PARM_CHECK_PERIOD(__pH2CCmd, __Value)	SET_BITS_TO_LE_1BYTE_8BIT(__pH2CCmd+1, 0, 8, __Value)
 #define SET_H2CCMD_DISCONDECISION_PARM_TRY_PKT_NUM(__pH2CCmd, __Value)	SET_BITS_TO_LE_1BYTE_8BIT(__pH2CCmd+2, 0, 8, __Value)
 
-#ifdef CONFIG_AP_WOWLAN
-/* _AP_Offload 0x08 */
-#define SET_H2CCMD_AP_WOWLAN_EN(__pH2CCmd, __Value)			SET_BITS_TO_LE_1BYTE_8BIT(__pH2CCmd, 0, 8, __Value)
-/* _BCN_RsvdPage	0x09 */
-#define SET_H2CCMD_AP_WOWLAN_RSVDPAGE_LOC_BCN(__pH2CCmd, __Value)		SET_BITS_TO_LE_1BYTE_8BIT(__pH2CCmd, 0, 8, __Value)
-/* _Probersp_RsvdPage 0x0a */
-#define SET_H2CCMD_AP_WOWLAN_RSVDPAGE_LOC_ProbeRsp(__pH2CCmd, __Value)	SET_BITS_TO_LE_1BYTE_8BIT(__pH2CCmd, 0, 8, __Value)
-/* _Probersp_RsvdPage 0x13 */
-#define SET_H2CCMD_AP_WOW_GPIO_CTRL_INDEX(__pH2CCmd, __Value)		SET_BITS_TO_LE_1BYTE(__pH2CCmd, 0, 4, __Value)
-#define SET_H2CCMD_AP_WOW_GPIO_CTRL_C2H_EN(__pH2CCmd, __Value)		SET_BITS_TO_LE_1BYTE(__pH2CCmd, 4, 1, __Value)
-#define SET_H2CCMD_AP_WOW_GPIO_CTRL_PLUS(__pH2CCmd, __Value)		SET_BITS_TO_LE_1BYTE(__pH2CCmd, 5, 1, __Value)
-#define SET_H2CCMD_AP_WOW_GPIO_CTRL_HIGH_ACTIVE(__pH2CCmd, __Value)	SET_BITS_TO_LE_1BYTE(__pH2CCmd, 6, 1, __Value)
-#define SET_H2CCMD_AP_WOW_GPIO_CTRL_EN(__pH2CCmd, __Value)		SET_BITS_TO_LE_1BYTE(__pH2CCmd, 7, 1, __Value)
-#define SET_H2CCMD_AP_WOW_GPIO_CTRL_DURATION(__pH2CCmd, __Value)	SET_BITS_TO_LE_1BYTE_8BIT((__pH2CCmd)+1, 0, 8, __Value)
-#define SET_H2CCMD_AP_WOW_GPIO_CTRL_C2H_DURATION(__pH2CCmd, __Value)SET_BITS_TO_LE_1BYTE_8BIT((__pH2CCmd)+2, 0, 8, __Value)
-/* _AP_PS 0x26 */
-#define SET_H2CCMD_AP_WOW_PS_EN(__pH2CCmd, __Value)			SET_BITS_TO_LE_1BYTE(__pH2CCmd, 0, 1, __Value)
-#define SET_H2CCMD_AP_WOW_PS_32K_EN(__pH2CCmd, __Value)		SET_BITS_TO_LE_1BYTE(__pH2CCmd, 1, 1, __Value)
-#define SET_H2CCMD_AP_WOW_PS_RF(__pH2CCmd, __Value)			SET_BITS_TO_LE_1BYTE(__pH2CCmd, 2, 1, __Value)
-#define SET_H2CCMD_AP_WOW_PS_DURATION(__pH2CCmd, __Value)	SET_BITS_TO_LE_1BYTE_8BIT((__pH2CCmd)+1, 0, 8, __Value)
-#endif
-
 /*  _WoWLAN PARAM_CMD_0x80 */
 #define SET_H2CCMD_WOWLAN_FUNC_ENABLE(__pH2CCmd, __Value)			SET_BITS_TO_LE_1BYTE(__pH2CCmd, 0, 1, __Value)
 #define SET_H2CCMD_WOWLAN_PATTERN_MATCH_ENABLE(__pH2CCmd, __Value)	SET_BITS_TO_LE_1BYTE(__pH2CCmd, 1, 1, __Value)
@@ -186,14 +164,6 @@ struct RSVDPAGE_LOC {
 	u8 LocNullData;
 	u8 LocQosNull;
 	u8 LocBTQosNull;
-#ifdef CONFIG_AP_WOWLAN
-	u8 LocApOffloadBCN;
-#endif /* CONFIG_AP_WOWLAN */
 };
 
 #endif
-#ifdef CONFIG_AP_WOWLAN
-void rtw_get_current_ip_address(struct adapter *padapter, u8 *pcurrentip);
-void rtw_get_sec_iv(struct adapter *padapter, u8*pcur_dot11txpn, u8 *StaAddr);
-void rtw_set_sec_pn(struct adapter *padapter);
-#endif
diff --git a/drivers/staging/rtl8723bs/include/hal_intf.h b/drivers/staging/rtl8723bs/include/hal_intf.h
index 093e00b9349b..02cad39be5c9 100644
--- a/drivers/staging/rtl8723bs/include/hal_intf.h
+++ b/drivers/staging/rtl8723bs/include/hal_intf.h
@@ -85,9 +85,6 @@ enum HW_VARIABLES {
 	HW_VAR_APFM_ON_MAC, /* Auto FSM to Turn On, include clock, isolation, power control for MAC only */
 	/*  The valid upper nav range for the HW updating, if the true value is larger than the upper range, the HW won't update it. */
 	/*  Unit in microsecond. 0 means disable this function. */
-#ifdef CONFIG_AP_WOWLAN
-	HW_VAR_AP_WOWLAN,
-#endif
 	HW_VAR_SYS_CLKR,
 	HW_VAR_NAV_UPPER,
 	HW_VAR_C2H_HANDLE,
diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index 63971fd691ed..57e668988a1c 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -136,15 +136,8 @@ static inline int rtw_bug_check(void *parg1, void *parg2, void *parg3, void *par
 #define MAC_ARG(x) (x)
 #endif
 
-
-#ifdef CONFIG_AP_WOWLAN
-extern void rtw_softap_lock_suspend(void);
-extern void rtw_softap_unlock_suspend(void);
-#endif
-
 extern void rtw_free_netdev(struct net_device * netdev);
 
-
 /* Macros for handling unaligned memory accesses */
 
 void rtw_buf_free(u8 **buf, u32 *buf_len);
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_cmd.h b/drivers/staging/rtl8723bs/include/rtl8723b_cmd.h
index b85e67ccc7db..9629a8844c2d 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_cmd.h
@@ -177,12 +177,6 @@ void rtl8723b_download_BTCoex_AP_mode_rsvd_page(struct adapter *padapter);
 
 void CheckFwRsvdPageContent(struct adapter *padapter);
 
-#ifdef CONFIG_AP_WOWLAN
-void rtl8723b_set_wowlan_cmd(struct adapter *padapter, u8 enable);
-void rtl8723b_set_ap_wowlan_cmd(struct adapter *padapter, u8 enable);
-void SetFwRelatedForWoWLAN8723b(struct adapter *padapter, u8 bHostIsGoingtoSleep);
-#endif
-
 void rtl8723b_set_FwPwrModeInIPS_cmd(struct adapter *padapter, u8 cmd_param);
 
 s32 FillH2CCmd8723B(struct adapter *padapter, u8 ElementID, u32 CmdLen, u8 *pCmdBuffer);
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
index da3679d2c8f9..0f787ec44b5b 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
@@ -98,10 +98,6 @@ struct rt_firmware_hdr {
 /* ARP Rsp:1, RWC:1, GTK Info:1, GTK RSP:2, GTK EXT MEM:2, PNO: 6 */
 #define WOWLAN_PAGE_NUM_8723B 0x00
 
-#ifdef CONFIG_AP_WOWLAN
-#define AP_WOWLAN_PAGE_NUM_8723B 0x02
-#endif
-
 #define TX_TOTAL_PAGE_NUMBER_8723B     \
 	(0xFF - BCNQ_PAGE_NUM_8723B  - \
 		BCNQ1_PAGE_NUM_8723B - \
diff --git a/drivers/staging/rtl8723bs/include/rtw_mp.h b/drivers/staging/rtl8723bs/include/rtw_mp.h
index 8b6e4e9578f9..fb254d88f503 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mp.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mp.h
@@ -189,9 +189,6 @@ enum {
 	CTA_TEST,
 	MP_DISABLE_BT_COEXIST,
 	MP_PwrCtlDM,
-#ifdef CONFIG_AP_WOWLAN
-	MP_AP_WOW_ENABLE,
-#endif
 	MP_NULL,
 	MP_GET_TXPOWER_INX,
 };
diff --git a/drivers/staging/rtl8723bs/include/sdio_ops.h b/drivers/staging/rtl8723bs/include/sdio_ops.h
index 1f1f368cded4..c7559a884608 100644
--- a/drivers/staging/rtl8723bs/include/sdio_ops.h
+++ b/drivers/staging/rtl8723bs/include/sdio_ops.h
@@ -25,17 +25,10 @@ s32 _sdio_write32(struct adapter *padapter, u32 addr, u32 val);
 extern void sd_int_hdl(struct adapter *padapter);
 extern u8 CheckIPSStatus(struct adapter *padapter);
 
-#ifdef CONFIG_AP_WOWLAN
-extern u8 RecvOnePkt(struct adapter *padapter, u32 size);
-#endif
 extern void InitInterrupt8723BSdio(struct adapter *padapter);
 extern void InitSysInterrupt8723BSdio(struct adapter *padapter);
 extern void EnableInterrupt8723BSdio(struct adapter *padapter);
 extern void DisableInterrupt8723BSdio(struct adapter *padapter);
 extern u8 HalQueryTxBufferStatus8723BSdio(struct adapter *padapter);
 extern void HalQueryTxOQTBufferStatus8723BSdio(struct adapter *padapter);
-#ifdef CONFIG_AP_WOWLAN
-extern void ClearInterrupt8723BSdio(struct adapter *padapter);
-#endif
-
 #endif /*  !__SDIO_OPS_H__ */
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 9ee95fe4266e..822e6b650c6b 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -4668,10 +4668,6 @@ static const struct iw_priv_args rtw_private_args[] = {
 		SIOCIWFIRSTPRIV + 0x1D,
 		IW_PRIV_TYPE_CHAR | 40, IW_PRIV_TYPE_CHAR | 0x7FF, "test"
 	},
-
-#ifdef CONFIG_AP_WOWLAN
-		{ MP_AP_WOW_ENABLE, IW_PRIV_TYPE_CHAR | 1024, 0, "ap_wow_mode" }, /* set */
-#endif
 };
 
 static iw_handler rtw_private_handler[] = {
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 270f93e90e07..fe19be2186c3 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1227,58 +1227,6 @@ static int rtw_suspend_free_assoc_resource(struct adapter *padapter)
 	return _SUCCESS;
 }
 
-#ifdef CONFIG_AP_WOWLAN
-void rtw_suspend_ap_wow(struct adapter *padapter)
-{
-	u8 ch, bw, offset;
-	struct net_device *pnetdev = padapter->pnetdev;
-	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
-	struct wowlan_ioctl_param poidparam;
-
-	DBG_871X("==> " FUNC_ADPT_FMT " entry....\n", FUNC_ADPT_ARG(padapter));
-
-	pwrpriv->wowlan_ap_mode = true;
-
-	DBG_871X("wowlan_ap_mode: %d\n", pwrpriv->wowlan_ap_mode);
-
-	if (pnetdev)
-		rtw_netif_stop_queue(pnetdev);
-	/*  1. stop thread */
-	padapter->bDriverStopped = true;	/* for stop thread */
-	rtw_stop_drv_threads(padapter);
-	padapter->bDriverStopped = false;	/* for 32k command */
-
-	/*  2. disable interrupt */
-	rtw_hal_disable_interrupt(padapter); /*  It need wait for leaving 32K. */
-
-	/*  2.1 clean interrupt */
-	if (padapter->HalFunc.clear_interrupt)
-		padapter->HalFunc.clear_interrupt(padapter);
-
-	/*  2.2 free irq */
-	/* sdio_free_irq(adapter_to_dvobj(padapter)); */
-	if (padapter->intf_free_irq)
-		padapter->intf_free_irq(adapter_to_dvobj(padapter));
-
-	poidparam.subcode = WOWLAN_AP_ENABLE;
-	padapter->HalFunc.SetHwRegHandler(padapter,
-					HW_VAR_AP_WOWLAN, (u8 *)&poidparam);
-
-	DBG_871X_LEVEL(_drv_always_, "%s: wowmode suspending\n", __func__);
-
-	if (rtw_get_ch_setting_union(padapter, &ch, &bw, &offset) != 0) {
-		DBG_871X(FUNC_ADPT_FMT " back to linked/linking union - ch:%u, bw:%u, offset:%u\n",
-			 FUNC_ADPT_ARG(padapter), ch, bw, offset);
-		set_channel_bwmode(padapter, ch, offset, bw);
-	}
-
-	rtw_set_ps_mode(padapter, PS_MODE_MIN, 0, 0, "AP-WOWLAN");
-
-	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
-}
-#endif /* ifdef CONFIG_AP_WOWLAN */
-
-
 static void rtw_suspend_normal(struct adapter *padapter)
 {
 	struct net_device *pnetdev = padapter->pnetdev;
@@ -1350,11 +1298,7 @@ int rtw_suspend_common(struct adapter *padapter)
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
 		rtw_suspend_normal(padapter);
 	} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
-	#ifdef CONFIG_AP_WOWLAN
-		rtw_suspend_ap_wow(padapter);
-	#else
 		rtw_suspend_normal(padapter);
-	#endif /* CONFIG_AP_WOWLAN */
 	} else {
 		rtw_suspend_normal(padapter);
 	}
@@ -1369,80 +1313,6 @@ int rtw_suspend_common(struct adapter *padapter)
 	return ret;
 }
 
-#ifdef CONFIG_AP_WOWLAN
-int rtw_resume_process_ap_wow(struct adapter *padapter)
-{
-	struct net_device *pnetdev = padapter->pnetdev;
-	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
-	struct dvobj_priv *psdpriv = padapter->dvobj;
-	struct debug_priv *pdbgpriv = &psdpriv->drv_dbg;
-	struct wowlan_ioctl_param poidparam;
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
-	rtw_set_ps_mode(padapter, PS_MODE_ACTIVE, 0, 0, "AP-WOWLAN");
-
-	pwrpriv->bFwCurrentInPSMode = false;
-
-	rtw_hal_disable_interrupt(padapter);
-
-	if (padapter->HalFunc.clear_interrupt)
-		padapter->HalFunc.clear_interrupt(padapter);
-
-	/* if (sdio_alloc_irq(adapter_to_dvobj(padapter)) != _SUCCESS) { */
-	if ((padapter->intf_alloc_irq) && (padapter->intf_alloc_irq(adapter_to_dvobj(padapter)) != _SUCCESS)) {
-		ret = -1;
-		RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("%s: sdio_alloc_irq Failed!!\n", __func__));
-		goto exit;
-	}
-
-	/* Disable WOW, set H2C command */
-	poidparam.subcode = WOWLAN_AP_DISABLE;
-	padapter->HalFunc.SetHwRegHandler(padapter,
-		HW_VAR_AP_WOWLAN, (u8 *)&poidparam);
-	pwrpriv->wowlan_ap_mode = false;
-
-	padapter->bDriverStopped = false;
-	DBG_871X("%s: wowmode resuming, DriverStopped:%d\n", __func__, padapter->bDriverStopped);
-	rtw_start_drv_threads(padapter);
-
-	if (padapter->intf_start)
-		padapter->intf_start(padapter);
-
-	/*  start netif queue */
-	if (pnetdev) {
-		if (!rtw_netif_queue_stopped(pnetdev))
-			rtw_netif_start_queue(pnetdev);
-		else
-			rtw_netif_wake_queue(pnetdev);
-	}
-
-	if (padapter->pid[1] != 0) {
-		DBG_871X("pid[1]:%d\n", padapter->pid[1]);
-		rtw_signal_process(padapter->pid[1], SIGUSR2);
-	}
-
-	pwrpriv->bips_processing = false;
-	_set_timer(&padapter->mlmepriv.dynamic_chk_timer, 2000);
-
-	/* clean driver side wake up reason. */
-	pwrpriv->wowlan_wake_reason = 0;
-exit:
-	DBG_871X("<== " FUNC_ADPT_FMT " exit....\n", FUNC_ADPT_ARG(padapter));
-	return ret;
-}
-#endif /* ifdef CONFIG_APWOWLAN */
-
 static int rtw_resume_process_normal(struct adapter *padapter)
 {
 	struct net_device *pnetdev;
@@ -1532,11 +1402,7 @@ int rtw_resume_common(struct adapter *padapter)
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
 		rtw_resume_process_normal(padapter);
 	} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
-	#ifdef CONFIG_AP_WOWLAN
-		rtw_resume_process_ap_wow(padapter);
-	#else
 		rtw_resume_process_normal(padapter);
-	#endif /* CONFIG_AP_WOWLAN */
 	} else {
 		rtw_resume_process_normal(padapter);
 	}
-- 
2.20.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel


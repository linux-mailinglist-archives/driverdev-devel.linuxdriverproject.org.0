Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA8833924C
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 16:51:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7411443289;
	Fri, 12 Mar 2021 15:51:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jW7KxfQJjkJQ; Fri, 12 Mar 2021 15:51:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A17EA43049;
	Fri, 12 Mar 2021 15:51:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F35FF1BF2A0
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 15:51:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1F904ED90
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 15:51:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ci52u5o9yI-T for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 15:51:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12DC04ED8D
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 15:51:31 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 m20-20020a7bcb940000b029010cab7e5a9fso16077779wmi.3
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 07:51:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HaJ4w/Tum0lAdaN3PoePFoJO27738DL9w3MbpMzxEqg=;
 b=BZ8ea4qitcKfJJlB1OUU3zGF/Njy43TrHX4mOkLpjpCnDrPJiHnjj3ohXrRKPFSgKd
 khvUkuUy6rBseuvBFkpO3jZRouqKRRn8aYeDPVd9lcVZTSL4G7cD3WPoK7XJ7LYys1+b
 cUKeh4IIk1bGfDT9+J16jf9wEPUttfh0eT1XDRfs/X/F3pi2Ku6itnzXc0aA4NuNzxQ0
 Zb3xw75qS4mB7/2RBkDi675S9QwFscqDf+yyWRXZE/Wiwe0cdXeiEpzntymzAnFwvnuJ
 OONpMNcRsy6ULFw9Vaq5mI3Z+8jtUvqUwDo6K0oMg7enqJ3L41mxlj4cR+qxsZpBpgsy
 bNjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HaJ4w/Tum0lAdaN3PoePFoJO27738DL9w3MbpMzxEqg=;
 b=kpzd7919R1a0j5RLw6OGBikqyBrFiFcV8lXhO7jl9knHD0yz2iAQ3WQRWcB/biFbzg
 d6FWjrX36UcBsXrBq+P/GLZr4DgGiTtQaoNpThn3N2hUZ22f3lw7tu4NPYE0NbRnjA3x
 yJmzvy6LfeKRiU8WrWLwCDTBVZYka7sZyEcACja/h0tS8R8pTPkHdWMlR3bHH78wsDko
 Rfugsm7A+rq2Nzfbpit/wnt9zp/hzRkeUwZ7Ul9yapWpPmDON3m20Z5SfjGvGvlJ4HnQ
 fkp85JtpbiuvJWD+ptFcqZ/EDfyHP9fGS1UwuUADzX9iyXOl5IHq7Xzk160Q/fhVOD9c
 A5zg==
X-Gm-Message-State: AOAM531uD6eW1Im47/9vK83Hn1J5e94RBukOKSJJvtj/E0T7VKebx2F/
 rnFMfNDnlJafylo2t2OMwkk=
X-Google-Smtp-Source: ABdhPJyQpvx8vjqQzQLpXxT3W/b21H7kbfEpRAyVQAWD3HyBEgl9Nu1gDNXHHqyeEHXyu26sSRhAZQ==
X-Received: by 2002:a1c:a916:: with SMTP id s22mr14076468wme.82.1615564290051; 
 Fri, 12 Mar 2021 07:51:30 -0800 (PST)
Received: from agape.jhs ([5.171.80.73])
 by smtp.gmail.com with ESMTPSA id u20sm9015830wru.6.2021.03.12.07.50.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 07:51:29 -0800 (PST)
Date: Fri, 12 Mar 2021 16:50:48 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging: rtl8723bs: remove unused code blocks
Message-ID: <baf2e064732b0b7a87c084961f9e8bb7b080afad.1615561447.git.fabioaiuto83@gmail.com>
References: <cover.1615561446.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615561446.git.fabioaiuto83@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux.kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove conditional code blocks checked by unused CONFIG_PNO_SUPPORT

Cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |  18 --
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |   8 -
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  | 269 ------------------
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  |   8 -
 .../staging/rtl8723bs/include/hal_com_h2c.h   |  17 --
 .../staging/rtl8723bs/include/rtl8723b_hal.h  |  10 -
 .../staging/rtl8723bs/include/rtw_pwrctrl.h   |  53 ----
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  56 ----
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   |   7 -
 9 files changed, 446 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index c9f4a18b24b9..8059aeea9d47 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -1149,29 +1149,11 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
 
 	pwrctrlpriv->wowlan_mode = false;
 	pwrctrlpriv->wowlan_ap_mode = false;
-
-#ifdef CONFIG_PNO_SUPPORT
-	pwrctrlpriv->pno_inited = false;
-	pwrctrlpriv->pnlo_info = NULL;
-	pwrctrlpriv->pscan_info = NULL;
-	pwrctrlpriv->pno_ssid_list = NULL;
-	pwrctrlpriv->pno_in_resume = true;
-#endif
 }
 
 
 void rtw_free_pwrctrl_priv(struct adapter *adapter)
 {
-#ifdef CONFIG_PNO_SUPPORT
-	if (pwrctrlpriv->pnlo_info)
-		printk("****** pnlo_info memory leak********\n");
-
-	if (pwrctrlpriv->pscan_info)
-		printk("****** pscan_info memory leak********\n");
-
-	if (pwrctrlpriv->pno_ssid_list)
-		printk("****** pno_ssid_list memory leak********\n");
-#endif
 }
 
 inline void rtw_set_ips_deny(struct adapter *padapter, u32 ms)
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 96feced698ac..ae577178534f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -2189,11 +2189,3 @@ void rtw_set_sec_pn(struct adapter *padapter)
 }
 #endif /* CONFIG_WOWLAN */
 
-#ifdef CONFIG_PNO_SUPPORT
-#define	CSCAN_TLV_TYPE_SSID_IE	'S'
-#define CIPHER_IE "key_mgmt ="
-#define CIPHER_NONE "NONE"
-#define CIPHER_WPA_PSK "WPA-PSK"
-#define CIPHER_WPA_EAP "WPA-EAP IEEE8021X"
-
-#endif /* CONFIG_PNO_SUPPORT */
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 479623d6eb79..b6958d3db855 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -462,125 +462,6 @@ static void ConstructARPResponse(
 	}
 }
 
-#ifdef CONFIG_PNO_SUPPORT
-static void ConstructPnoInfo(
-	struct adapter *padapter, u8 *pframe, u32 *pLength
-)
-{
-
-	struct pwrctrl_priv *pwrctl = adapter_to_pwrctl(padapter);
-
-	u8 *pPnoInfoPkt = pframe;
-	pPnoInfoPkt = (u8 *)(pframe + *pLength);
-	memcpy(pPnoInfoPkt, &pwrctl->pnlo_info->ssid_num, 4);
-
-	*pLength += 4;
-	pPnoInfoPkt += 4;
-	memcpy(pPnoInfoPkt, &pwrctl->pnlo_info->fast_scan_period, 4);
-
-	*pLength += 4;
-	pPnoInfoPkt += 4;
-	memcpy(pPnoInfoPkt, &pwrctl->pnlo_info->fast_scan_iterations, 4);
-
-	*pLength += 4;
-	pPnoInfoPkt += 4;
-	memcpy(pPnoInfoPkt, &pwrctl->pnlo_info->slow_scan_period, 4);
-
-	*pLength += 4;
-	pPnoInfoPkt += 4;
-	memcpy(pPnoInfoPkt, &pwrctl->pnlo_info->ssid_length,
-			MAX_PNO_LIST_COUNT);
-
-	*pLength += MAX_PNO_LIST_COUNT;
-	pPnoInfoPkt += MAX_PNO_LIST_COUNT;
-	memcpy(pPnoInfoPkt, &pwrctl->pnlo_info->ssid_cipher_info,
-			MAX_PNO_LIST_COUNT);
-
-	*pLength += MAX_PNO_LIST_COUNT;
-	pPnoInfoPkt += MAX_PNO_LIST_COUNT;
-	memcpy(pPnoInfoPkt, &pwrctl->pnlo_info->ssid_channel_info,
-			MAX_PNO_LIST_COUNT);
-
-	*pLength += MAX_PNO_LIST_COUNT;
-	pPnoInfoPkt += MAX_PNO_LIST_COUNT;
-}
-
-static void ConstructSSIDList(
-	struct adapter *padapter, u8 *pframe, u32 *pLength
-)
-{
-	int i = 0;
-	u8 *pSSIDListPkt = pframe;
-	struct pwrctrl_priv *pwrctl = adapter_to_pwrctl(padapter);
-
-	pSSIDListPkt = (u8 *)(pframe + *pLength);
-
-	for (i = 0; i < pwrctl->pnlo_info->ssid_num ; i++) {
-		memcpy(pSSIDListPkt, &pwrctl->pno_ssid_list->node[i].SSID,
-			pwrctl->pnlo_info->ssid_length[i]);
-
-		*pLength += WLAN_SSID_MAXLEN;
-		pSSIDListPkt += WLAN_SSID_MAXLEN;
-	}
-}
-
-static void ConstructScanInfo(
-	struct adapter *padapter, u8 *pframe, u32 *pLength
-)
-{
-	int i = 0;
-	u8 *pScanInfoPkt = pframe;
-	struct pwrctrl_priv *pwrctl = adapter_to_pwrctl(padapter);
-
-	pScanInfoPkt = (u8 *)(pframe + *pLength);
-
-	memcpy(pScanInfoPkt, &pwrctl->pscan_info->channel_num, 1);
-
-	*pLength += 1;
-	pScanInfoPkt += 1;
-	memcpy(pScanInfoPkt, &pwrctl->pscan_info->orig_ch, 1);
-
-
-	*pLength += 1;
-	pScanInfoPkt += 1;
-	memcpy(pScanInfoPkt, &pwrctl->pscan_info->orig_bw, 1);
-
-
-	*pLength += 1;
-	pScanInfoPkt += 1;
-	memcpy(pScanInfoPkt, &pwrctl->pscan_info->orig_40_offset, 1);
-
-	*pLength += 1;
-	pScanInfoPkt += 1;
-	memcpy(pScanInfoPkt, &pwrctl->pscan_info->orig_80_offset, 1);
-
-	*pLength += 1;
-	pScanInfoPkt += 1;
-	memcpy(pScanInfoPkt, &pwrctl->pscan_info->periodScan, 1);
-
-	*pLength += 1;
-	pScanInfoPkt += 1;
-	memcpy(pScanInfoPkt, &pwrctl->pscan_info->period_scan_time, 1);
-
-	*pLength += 1;
-	pScanInfoPkt += 1;
-	memcpy(pScanInfoPkt, &pwrctl->pscan_info->enableRFE, 1);
-
-	*pLength += 1;
-	pScanInfoPkt += 1;
-	memcpy(pScanInfoPkt, &pwrctl->pscan_info->rfe_type, 8);
-
-	*pLength += 8;
-	pScanInfoPkt += 8;
-
-	for (i = 0; i < MAX_SCAN_LIST_COUNT; i++) {
-		memcpy(pScanInfoPkt, &pwrctl->pscan_info->ssid_channel_info[i], 4);
-		*pLength += 4;
-		pScanInfoPkt += 4;
-	}
-}
-#endif
-
 #ifdef CONFIG_GTK_OL
 static void ConstructGTKResponse(
 	struct adapter *padapter, u8 *pframe, u32 *pLength
@@ -666,48 +547,6 @@ static void ConstructGTKResponse(
 }
 #endif /* CONFIG_GTK_OL */
 
-#ifdef CONFIG_PNO_SUPPORT
-static void ConstructProbeReq(struct adapter *padapter, u8 *pframe, u32 *pLength)
-{
-	struct ieee80211_hdr *pwlanhdr;
-	u16 *fctrl;
-	u32 pktlen;
-	unsigned char *mac;
-	unsigned char bssrate[NumRates];
-	int bssrate_len = 0;
-	u8 bc_addr[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
-
-	pwlanhdr = (struct ieee80211_hdr *)pframe;
-	mac = myid(&(padapter->eeprompriv));
-
-	fctrl = &(pwlanhdr->frame_control);
-	*(fctrl) = 0;
-
-	/* broadcast probe request frame */
-	memcpy(pwlanhdr->addr1, bc_addr, ETH_ALEN);
-	memcpy(pwlanhdr->addr3, bc_addr, ETH_ALEN);
-
-	memcpy(pwlanhdr->addr2, mac, ETH_ALEN);
-
-	SetSeqNum(pwlanhdr, 0);
-	SetFrameSubType(pframe, WIFI_PROBEREQ);
-
-	pktlen = sizeof(struct ieee80211_hdr_3addr);
-	pframe += pktlen;
-
-	pframe = rtw_set_ie(pframe, WLAN_EID_SSID, 0, NULL, &pktlen);
-
-	get_rate_set(padapter, bssrate, &bssrate_len);
-
-	if (bssrate_len > 8) {
-		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, bssrate, &pktlen);
-		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (bssrate_len - 8), (bssrate + 8), &pktlen);
-	} else
-		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, bssrate_len, bssrate, &pktlen);
-
-	*pLength = pktlen;
-}
-#endif /* CONFIG_PNO_SUPPORT */
 #endif /* CONFIG_WOWLAN */
 
 #ifdef CONFIG_AP_WOWLAN
@@ -875,15 +714,6 @@ static void rtl8723b_set_FwAoacRsvdPage_cmd(struct adapter *padapter, PRSVDPAGE_
 		RT_PRINT_DATA(_module_hal_init_c_, _drv_always_, "u1H2CAoacRsvdPageParm:", u1H2CAoacRsvdPageParm, H2C_AOAC_RSVDPAGE_LOC_LEN);
 		FillH2CCmd8723B(padapter, H2C_8723B_AOAC_RSVD_PAGE, H2C_AOAC_RSVDPAGE_LOC_LEN, u1H2CAoacRsvdPageParm);
 	} else {
-#ifdef CONFIG_PNO_SUPPORT
-		if (!pwrpriv->pno_in_resume) {
-			DBG_871X("NLO_INFO =%d\n", rsvdpageloc->LocPNOInfo);
-			memset(&u1H2CAoacRsvdPageParm, 0, sizeof(u1H2CAoacRsvdPageParm));
-			SET_H2CCMD_AOAC_RSVDPAGE_LOC_NLO_INFO(u1H2CAoacRsvdPageParm, rsvdpageloc->LocPNOInfo);
-			FillH2CCmd8723B(padapter, H2C_AOAC_RSVDPAGE3, H2C_AOAC_RSVDPAGE_LOC_LEN, u1H2CAoacRsvdPageParm);
-			msleep(10);
-		}
-#endif
 	}
 
 #endif /*  CONFIG_WOWLAN */
@@ -1183,11 +1013,6 @@ static void rtl8723b_set_FwWoWlanCtrl_Cmd(struct adapter *padapter, u8 bFuncEn)
 	u8 gpio_high_active = 0; /* 0: low active, 1: high active */
 	u8 magic_pkt = 0;
 
-#ifdef CONFIG_PNO_SUPPORT
-	if (!ppwrpriv->wowlan_pno_enable)
-		magic_pkt = 1;
-#endif
-
 	if (psecpriv->dot11PrivacyAlgrthm == _WEP40_ || psecpriv->dot11PrivacyAlgrthm == _WEP104_)
 		hw_unicast = 1;
 
@@ -1240,28 +1065,9 @@ static void rtl8723b_set_FwRemoteWakeCtrl_Cmd(struct adapter *padapter, u8 benab
 		else
 			SET_H2CCMD_REMOTE_WAKE_CTRL_ARP_ACTION(u1H2CRemoteWakeCtrlParm, 1);
 	}
-#ifdef CONFIG_PNO_SUPPORT
-	else {
-		SET_H2CCMD_REMOTE_WAKECTRL_ENABLE(u1H2CRemoteWakeCtrlParm, benable);
-		SET_H2CCMD_REMOTE_WAKE_CTRL_NLO_OFFLOAD_EN(u1H2CRemoteWakeCtrlParm, benable);
-	}
-#endif
 	RT_PRINT_DATA(_module_hal_init_c_, _drv_always_, "u1H2CRemoteWakeCtrlParm:", u1H2CRemoteWakeCtrlParm, H2C_REMOTE_WAKE_CTRL_LEN);
 	FillH2CCmd8723B(padapter, H2C_8723B_REMOTE_WAKE_CTRL,
 		H2C_REMOTE_WAKE_CTRL_LEN, u1H2CRemoteWakeCtrlParm);
-#ifdef CONFIG_PNO_SUPPORT
-	if (ppwrpriv->wowlan_pno_enable && !ppwrpriv->pno_in_resume) {
-		res = rtw_read8(padapter, REG_PNO_STATUS);
-		DBG_871X("cmd: 0x81 REG_PNO_STATUS: 0x%02x\n", res);
-		while (!(res&BIT(7)) && count < 25) {
-			DBG_871X("[%d] cmd: 0x81 REG_PNO_STATUS: 0x%02x\n", count, res);
-			res = rtw_read8(padapter, REG_PNO_STATUS);
-			count++;
-			msleep(2);
-		}
-		DBG_871X("cmd: 0x81 REG_PNO_STATUS: 0x%02x\n", res);
-	}
-#endif /* CONFIG_PNO_SUPPORT */
 }
 
 static void rtl8723b_set_FwAOACGlobalInfo_Cmd(struct adapter *padapter,  u8 group_alg, u8 pairwise_alg)
@@ -1278,26 +1084,6 @@ static void rtl8723b_set_FwAOACGlobalInfo_Cmd(struct adapter *padapter,  u8 grou
 	FillH2CCmd8723B(padapter, H2C_8723B_AOAC_GLOBAL_INFO, H2C_AOAC_GLOBAL_INFO_LEN, u1H2CAOACGlobalInfoParm);
 }
 
-#ifdef CONFIG_PNO_SUPPORT
-static void rtl8723b_set_FwScanOffloadInfo_cmd(struct adapter *padapter, PRSVDPAGE_LOC rsvdpageloc, u8 enable)
-{
-	u8 u1H2CScanOffloadInfoParm[H2C_SCAN_OFFLOAD_CTRL_LEN] = {0};
-
-	DBG_871X("%s: loc_probe_packet:%d, loc_scan_info: %d loc_ssid_info:%d\n",
-		__func__, rsvdpageloc->LocProbePacket, rsvdpageloc->LocScanInfo, rsvdpageloc->LocSSIDInfo);
-
-	SET_H2CCMD_AOAC_NLO_FUN_EN(u1H2CScanOffloadInfoParm, enable);
-	SET_H2CCMD_AOAC_RSVDPAGE_LOC_SCAN_INFO(u1H2CScanOffloadInfoParm, rsvdpageloc->LocScanInfo);
-	SET_H2CCMD_AOAC_RSVDPAGE_LOC_PROBE_PACKET(u1H2CScanOffloadInfoParm, rsvdpageloc->LocProbePacket);
-	SET_H2CCMD_AOAC_RSVDPAGE_LOC_SSID_INFO(u1H2CScanOffloadInfoParm, rsvdpageloc->LocSSIDInfo);
-
-	RT_PRINT_DATA(_module_hal_init_c_, _drv_always_, "u1H2CScanOffloadInfoParm:", u1H2CScanOffloadInfoParm, H2C_SCAN_OFFLOAD_CTRL_LEN);
-	FillH2CCmd8723B(padapter, H2C_8723B_D0_SCAN_OFFLOAD_INFO, H2C_SCAN_OFFLOAD_CTRL_LEN, u1H2CScanOffloadInfoParm);
-
-	msleep(20);
-}
-#endif /* CONFIG_PNO_SUPPORT */
-
 void rtl8723b_set_wowlan_cmd(struct adapter *padapter, u8 enable)
 {
 	struct security_priv *psecpriv = &padapter->securitypriv;
@@ -1656,55 +1442,8 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	} else
 #endif /* CONFIG_WOWLAN */
 	{
-#ifdef CONFIG_PNO_SUPPORT
-		if (!pwrctl->pno_in_resume && pwrctl->pno_inited) {
-			/* Probe Request */
-			RsvdPageLoc.LocProbePacket = TotalPageNum;
-			ConstructProbeReq(
-				padapter,
-				&ReservedPagePacket[BufIndex],
-				&ProbeReqLength);
-
-			rtl8723b_fill_fake_txdesc(padapter,
-				&ReservedPagePacket[BufIndex-TxDescLen],
-				ProbeReqLength, false, false, false);
-			CurtPktPageNum =
-				(u8)PageNum_128(TxDescLen + ProbeReqLength);
-
-			TotalPageNum += CurtPktPageNum;
-
-			BufIndex += (CurtPktPageNum*PageSize);
-
-			/* PNO INFO Page */
-			RsvdPageLoc.LocPNOInfo = TotalPageNum;
-			ConstructPnoInfo(padapter, &ReservedPagePacket[BufIndex-TxDescLen], &PNOLength);
-
-			CurtPktPageNum = (u8)PageNum_128(PNOLength);
-			TotalPageNum += CurtPktPageNum;
-			BufIndex += (CurtPktPageNum*PageSize);
-
-			/* SSID List Page */
-			RsvdPageLoc.LocSSIDInfo = TotalPageNum;
-			ConstructSSIDList(padapter, &ReservedPagePacket[BufIndex-TxDescLen], &SSIDLegnth);
-			CurtPktPageNum = (u8)PageNum_128(SSIDLegnth);
-			TotalPageNum += CurtPktPageNum;
-			BufIndex += (CurtPktPageNum*PageSize);
-
-			/* Scan Info Page */
-			RsvdPageLoc.LocScanInfo = TotalPageNum;
-			ConstructScanInfo(padapter, &ReservedPagePacket[BufIndex-TxDescLen], &ScanInfoLength);
-			CurtPktPageNum = (u8)PageNum_128(ScanInfoLength);
-			TotalPageNum += CurtPktPageNum;
-			BufIndex += (CurtPktPageNum*PageSize);
-
-			TotalPacketLen = BufIndex + ScanInfoLength;
-		} else {
 		TotalPacketLen = BufIndex + BTQosNullLength;
 	}
-#else /* CONFIG_PNO_SUPPORT */
-		TotalPacketLen = BufIndex + BTQosNullLength;
-#endif
-	}
 
 	if (TotalPacketLen > MaxRsvdPageBufSize) {
 		DBG_871X("%s(): ERROR: The rsvd page size is not enough!!TotalPacketLen %d, MaxRsvdPageBufSize %d\n", __func__,
@@ -1725,14 +1464,6 @@ static void rtl8723b_set_FwRsvdPagePkt(
 		rtl8723b_set_FwAoacRsvdPage_cmd(padapter, &RsvdPageLoc);
 	} else {
 		rtl8723b_set_FwAoacRsvdPage_cmd(padapter, &RsvdPageLoc);
-#ifdef CONFIG_PNO_SUPPORT
-		if (pwrctl->pno_in_resume)
-			rtl8723b_set_FwScanOffloadInfo_cmd(padapter,
-					&RsvdPageLoc, 0);
-		else
-			rtl8723b_set_FwScanOffloadInfo_cmd(padapter,
-					&RsvdPageLoc, 1);
-#endif
 	}
 	return;
 
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 3266839031f8..ced05bbfc906 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -1555,14 +1555,6 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 				if (psta)
 					rtl8723b_set_FwMediaStatusRpt_cmd(padapter, RT_MEDIA_CONNECT, psta->mac_id);
 			}
-#ifdef CONFIG_PNO_SUPPORT
-			rtw_write8(padapter, 0x1b8, 0);
-			DBG_871X("reset 0x1b8: %d\n", rtw_read8(padapter, 0x1b8));
-			rtw_write8(padapter, 0x1b9, 0);
-			DBG_871X("reset 0x1b9: %d\n", rtw_read8(padapter, 0x1b9));
-			rtw_write8(padapter, REG_PNO_STATUS, 0);
-			DBG_871X("reset REG_PNO_STATUS: %d\n", rtw_read8(padapter, REG_PNO_STATUS));
-#endif
 			break;
 
 		default:
diff --git a/drivers/staging/rtl8723bs/include/hal_com_h2c.h b/drivers/staging/rtl8723bs/include/hal_com_h2c.h
index b951bc288b89..1f7ed90f9faa 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_h2c.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_h2c.h
@@ -233,17 +233,6 @@ enum h2c_cmd {
 #ifdef CONFIG_GTK_OL
 #define SET_H2CCMD_AOAC_RSVDPAGE_LOC_GTK_EXT_MEM(__pH2CCmd, __Value)		SET_BITS_TO_LE_1BYTE_8BIT((__pH2CCmd)+5, 0, 8, __Value)
 #endif /* CONFIG_GTK_OL */
-#ifdef CONFIG_PNO_SUPPORT
-#define SET_H2CCMD_AOAC_RSVDPAGE_LOC_NLO_INFO(__pH2CCmd, __Value)		SET_BITS_TO_LE_1BYTE_8BIT((__pH2CCmd), 0, 8, __Value)
-#endif
-
-#ifdef CONFIG_PNO_SUPPORT
-/*  D0_Scan_Offload_Info_0x86 */
-#define SET_H2CCMD_AOAC_NLO_FUN_EN(__pH2CCmd, __Value)			SET_BITS_TO_LE_1BYTE((__pH2CCmd), 3, 1, __Value)
-#define SET_H2CCMD_AOAC_RSVDPAGE_LOC_PROBE_PACKET(__pH2CCmd, __Value)	SET_BITS_TO_LE_1BYTE_8BIT((__pH2CCmd)+1, 0, 8, __Value)
-#define SET_H2CCMD_AOAC_RSVDPAGE_LOC_SCAN_INFO(__pH2CCmd, __Value)	SET_BITS_TO_LE_1BYTE_8BIT((__pH2CCmd)+2, 0, 8, __Value)
-#define SET_H2CCMD_AOAC_RSVDPAGE_LOC_SSID_INFO(__pH2CCmd, __Value)	SET_BITS_TO_LE_1BYTE_8BIT((__pH2CCmd)+3, 0, 8, __Value)
-#endif /* CONFIG_PNO_SUPPORT */
 
 /*  */
 /*     Structure    -------------------------------------------------- */
@@ -265,12 +254,6 @@ typedef struct _RSVDPAGE_LOC {
 #ifdef CONFIG_GTK_OL
 	u8 LocGTKEXTMEM;
 #endif /* CONFIG_GTK_OL */
-#ifdef CONFIG_PNO_SUPPORT
-	u8 LocPNOInfo;
-	u8 LocScanInfo;
-	u8 LocSSIDInfo;
-	u8 LocProbePacket;
-#endif /* CONFIG_PNO_SUPPORT */
 #endif /* CONFIG_WOWLAN */
 #ifdef CONFIG_AP_WOWLAN
 	u8 LocApOffloadBCN;
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
index 6f964f5c6578..2537bd7d6a13 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_hal.h
@@ -92,11 +92,6 @@ struct rt_firmware_hdr {
 #define BCNQ_PAGE_NUM_8723B  0x08
 #define BCNQ1_PAGE_NUM_8723B 0x00
 
-#ifdef CONFIG_PNO_SUPPORT
-#undef BCNQ1_PAGE_NUM_8723B
-#define BCNQ1_PAGE_NUM_8723B 0x00 /* 0x04 */
-#endif
-
 #define MAX_RX_DMA_BUFFER_SIZE_8723B 0x2800 /* RX 10K */
 
 /* For WoWLan, more reserved page */
@@ -107,11 +102,6 @@ struct rt_firmware_hdr {
 #define WOWLAN_PAGE_NUM_8723B 0x00
 #endif
 
-#ifdef CONFIG_PNO_SUPPORT
-#undef WOWLAN_PAGE_NUM_8723B
-#define WOWLAN_PAGE_NUM_8723B 0x0d
-#endif
-
 #ifdef CONFIG_AP_WOWLAN
 #define AP_WOWLAN_PAGE_NUM_8723B 0x02
 #endif
diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index 0987891e85ae..f467e9032450 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -46,11 +46,6 @@ enum Power_Mgnt {
 	PS_MODE_NUM,
 };
 
-#ifdef CONFIG_PNO_SUPPORT
-#define MAX_PNO_LIST_COUNT 16
-#define MAX_SCAN_LIST_COUNT 14 /* 2.4G only */
-#endif
-
 /*
 	BIT[2:0] = HW state
 	BIT[3] = Protocol PS state,   0: register active state , 1: register sleep state
@@ -158,47 +153,6 @@ enum PS_DENY_REASON {
 	PS_DENY_OTHERS = 31
 };
 
-#ifdef CONFIG_PNO_SUPPORT
-struct pno_nlo_info {
-	u32 fast_scan_period;				/* Fast scan period */
-	u32 ssid_num;				/* number of entry */
-	u32 slow_scan_period;			/* slow scan period */
-	u32 fast_scan_iterations;			/* Fast scan iterations */
-	u8 ssid_length[MAX_PNO_LIST_COUNT];	/* SSID Length Array */
-	u8 ssid_cipher_info[MAX_PNO_LIST_COUNT];	/* Cipher information for security */
-	u8 ssid_channel_info[MAX_PNO_LIST_COUNT];	/* channel information */
-};
-
-struct pno_ssid {
-	u32 	SSID_len;
-	u8 SSID[32];
-};
-
-struct pno_ssid_list {
-	struct pno_ssid	node[MAX_PNO_LIST_COUNT];
-};
-
-struct pno_scan_channel_info {
-	u8 channel;
-	u8 tx_power;
-	u8 timeout;
-	u8 active;				/* set 1 means active scan, or pasivite scan. */
-};
-
-struct pno_scan_info {
-	u8 enableRFE;			/* Enable RFE */
-	u8 period_scan_time;		/* exclusive with fast_scan_period and slow_scan_period */
-	u8 periodScan;			/* exclusive with fast_scan_period and slow_scan_period */
-	u8 orig_80_offset;			/* original channel 80 offset */
-	u8 orig_40_offset;			/* original channel 40 offset */
-	u8 orig_bw;			/* original bandwidth */
-	u8 orig_ch;			/* original channel */
-	u8 channel_num;			/* number of channel */
-	u64	rfe_type;			/* rfe_type && 0x00000000000000ff */
-	struct pno_scan_channel_info ssid_channel_info[MAX_SCAN_LIST_COUNT];
-};
-#endif /* CONFIG_PNO_SUPPORT */
-
 struct pwrctrl_priv {
 	struct mutex lock;
 	volatile u8 rpwm; /*  requested power state for fw */
@@ -272,13 +226,6 @@ struct pwrctrl_priv {
 	u8 wowlan_unicast;
 	u8 wowlan_pattern_idx;
 	u8 wowlan_pno_enable;
-#ifdef CONFIG_PNO_SUPPORT
-	u8 pno_in_resume;
-	u8 pno_inited;
-	struct pno_nlo_info *pnlo_info;
-	struct pno_scan_info *pscan_info;
-	struct pno_ssid_list *pno_ssid_list;
-#endif
 	u32 	wowlan_pattern_context[8][5];
 	u64		wowlan_fw_iv;
 #endif /*  CONFIG_WOWLAN */
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index ff164a8c8679..4d2981a4c01d 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -3095,54 +3095,6 @@ static int cfg80211_rtw_mgmt_tx(struct wiphy *wiphy,
 	return ret;
 }
 
-#if defined(CONFIG_PNO_SUPPORT)
-static int cfg80211_rtw_sched_scan_start(struct wiphy *wiphy, struct net_device *dev,
-					 struct cfg80211_sched_scan_request *request)
-{
-	struct adapter *padapter = rtw_netdev_priv(dev);
-	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
-	int ret;
-
-	if (padapter->bup == false) {
-		DBG_871X("%s: net device is down.\n", __func__);
-		return -EIO;
-	}
-
-	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true ||
-		check_fwstate(pmlmepriv, _FW_LINKED) == true  ||
-		check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true) {
-		DBG_871X("%s: device is busy.\n", __func__);
-		rtw_scan_abort(padapter);
-	}
-
-	if (request == NULL) {
-		DBG_871X("%s: invalid cfg80211_requests parameters.\n", __func__);
-		return -EINVAL;
-	}
-
-	ret = rtw_android_cfg80211_pno_setup(dev, request->ssids,
-			request->n_ssids, request->interval);
-
-	if (ret < 0) {
-		DBG_871X("%s ret: %d\n", __func__, ret);
-		goto exit;
-	}
-
-	ret = rtw_android_pno_enable(dev, true);
-	if (ret < 0) {
-		DBG_871X("%s ret: %d\n", __func__, ret);
-		goto exit;
-	}
-exit:
-	return ret;
-}
-
-static int cfg80211_rtw_sched_scan_stop(struct wiphy *wiphy, struct net_device *dev)
-{
-	return rtw_android_pno_enable(dev, false);
-}
-#endif /* CONFIG_PNO_SUPPORT */
-
 static void rtw_cfg80211_init_ht_capab(struct ieee80211_sta_ht_cap *ht_cap, enum nl80211_band band, u8 rf_type)
 {
 
@@ -3248,9 +3200,6 @@ static void rtw_cfg80211_preinit_wiphy(struct adapter *padapter, struct wiphy *w
 
 #if defined(CONFIG_PM)
 	wiphy->max_sched_scan_reqs = 1;
-#ifdef CONFIG_PNO_SUPPORT
-	wiphy->max_sched_scan_ssids = MAX_PNO_LIST_COUNT;
-#endif
 #endif
 
 #if defined(CONFIG_PM)
@@ -3297,11 +3246,6 @@ static struct cfg80211_ops rtw_cfg80211_ops = {
 	.change_bss = cfg80211_rtw_change_bss,
 
 	.mgmt_tx = cfg80211_rtw_mgmt_tx,
-
-#if defined(CONFIG_PNO_SUPPORT)
-	.sched_scan_start = cfg80211_rtw_sched_scan_start,
-	.sched_scan_stop = cfg80211_rtw_sched_scan_stop,
-#endif /* CONFIG_PNO_SUPPORT */
 };
 
 int rtw_wdev_alloc(struct adapter *padapter, struct device *dev)
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index b62fe9238e6d..61488781d211 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1505,10 +1505,6 @@ int rtw_resume_process_wow(struct adapter *padapter)
 		goto exit;
 	}
 
-#ifdef CONFIG_PNO_SUPPORT
-	pwrpriv->pno_in_resume = true;
-#endif
-
 	if (pwrpriv->wowlan_mode) {
 		rtw_set_ps_mode(padapter, PS_MODE_ACTIVE, 0, 0, "WOWLAN");
 
@@ -1780,9 +1776,6 @@ int rtw_resume_common(struct adapter *padapter)
 
 	if (pwrpriv) {
 		pwrpriv->bInSuspend = false;
-	#ifdef CONFIG_PNO_SUPPORT
-		pwrpriv->pno_in_resume = false;
-	#endif
 	}
 	DBG_871X_LEVEL(_drv_always_, "%s:%d in %d ms\n", __func__, ret,
 		jiffies_to_msecs(jiffies - start_time));
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

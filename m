Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F16C27BD32
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 08:33:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 211432052B;
	Tue, 29 Sep 2020 06:33:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RjGmx36-ECAE; Tue, 29 Sep 2020 06:33:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 13FF72052F;
	Tue, 29 Sep 2020 06:32:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E39FE1BF981
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DB393866D4
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x2EeXQKze20r for <devel@linuxdriverproject.org>;
 Tue, 29 Sep 2020 06:32:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D7391866D9
 for <devel@driverdev.osuosl.org>; Tue, 29 Sep 2020 06:32:39 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id lo4so13361655ejb.8
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 23:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ul2wZJxRqrBtE7LWlBmriygJxCT0ta6IFh4PpqbYxrU=;
 b=jxS1on7tg/23h5fl7fBqBYc58LVwjeD7JelI3ofTe/RdU4jsAaiExT2v1P1/BWdnuv
 Ug6YHxFdXuafQtgrEBgAblLPRDwUk2I63esavAcYhukmh1Z2P/2QewrksAnuhZoEgTJP
 oliY7ntuyUgk0SXIV/5kbcXzYwiB9OAOm/4e0hjxPAqz43ukyKvtyqVq+ST1aqhf2Iip
 Ytk+tXgk6F7GLH8tdHsfVljqjpaGoW2qol13MJXft6swO0UUSzL+8gDj+htD37JlqBjM
 HUyt8D7QRUD/SaurizeT0OQeBUzDSB+T/nJbWL0Hy3OllmOgmi0Cl54Zhh8aVjAUzCkz
 Ws1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ul2wZJxRqrBtE7LWlBmriygJxCT0ta6IFh4PpqbYxrU=;
 b=TQ29Y80/80KrjC67PuKA/gs0CWS+BgmmmXOnO9LNntQWukrhBn7/0gdHV37ZCMYVq2
 trq/q6RD0LlqGO3OOw+vNYiUFmLO9gt3i04ktGfIXHeRisv4AGc2xNhyoMSVUHLuNPG+
 Tyy+0DqUiiF7DihmgWagfycZ+4xh3Huf1gYnUdMJBcfRkulcEWjiRILtzJ51/2hmtaRG
 xnP0+wEeU5bEl0iNA9RFHpPkTEvrWcJNYze+jyYaKdS4rZvQZ26X2N0bx2u/2AQXjLT6
 jf5DUuVR0QsbEzwu8IXyl1JMRARUl8nPn1XPkBoyuHcU5unVPIfo4p1U6yHW36rXOv5Z
 Hpog==
X-Gm-Message-State: AOAM533gEqALTDVI11IKO55dboJVUrGNjcF+uoM9Wwyq2mFcGPmUalwf
 9Jz/d6DZVFJZjfK4ocgsT3U=
X-Google-Smtp-Source: ABdhPJyKnCwiKp5qH7fOKxr5pd+ReYdsVL3286y2BsZAmAauX3RG9Zmg4WRYDbTWOD6JhhDzdnwvEg==
X-Received: by 2002:a17:906:bc92:: with SMTP id
 lv18mr1514807ejb.479.1601361158461; 
 Mon, 28 Sep 2020 23:32:38 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-039.092.219.pools.vodafone-ip.de. [92.219.207.39])
 by smtp.gmail.com with ESMTPSA id r8sm4730915edy.87.2020.09.28.23.32.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 23:32:37 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 7/8] staging: rtl8188eu: remove unused variable ratelen
Date: Tue, 29 Sep 2020 08:28:46 +0200
Message-Id: <20200929062847.23985-7-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929062847.23985-1-straube.linux@gmail.com>
References: <20200929062847.23985-1-straube.linux@gmail.com>
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

After the removal of cckrates_included() and cckrates_only_included()
from rtw_wlan_util.c the variable/parameter 'ratelen' is unused now.
Remove it from update_wireless_mode() and judge_network_type().

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c   | 6 ++----
 drivers/staging/rtl8188eu/hal/usb_halinit.c      | 4 ++--
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h | 2 +-
 3 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index bf7dd13dde03..8e8f1721b1a2 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -76,7 +76,7 @@ unsigned char networktype_to_raid(unsigned char network_type)
 	}
 }
 
-u8 judge_network_type(struct adapter *padapter, unsigned char *rate, int ratelen)
+u8 judge_network_type(struct adapter *padapter, unsigned char *rate)
 {
 	u8 network_type = 0;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
@@ -1321,15 +1321,13 @@ void update_capinfo(struct adapter *Adapter, u16 updateCap)
 
 void update_wireless_mode(struct adapter *padapter)
 {
-	int ratelen, network_type = 0;
+	int network_type = 0;
 	u32 SIFS_Timer;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 	struct wlan_bssid_ex *cur_network = &pmlmeinfo->network;
 	unsigned char *rate = cur_network->SupportedRates;
 
-	ratelen = rtw_get_rateset_len(cur_network->SupportedRates);
-
 	if (pmlmeinfo->HT_info_enable && pmlmeinfo->HT_caps_enable)
 		pmlmeinfo->HT_enable = 1;
 
diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 5e7bb22d7d01..abe58cf2de16 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -1893,7 +1893,7 @@ void UpdateHalRAMask8188EUsb(struct adapter *adapt, u32 mac_id, u8 rssi_level)
 	switch (mac_id) {
 	case 0:/*  for infra mode */
 		supportRateNum = rtw_get_rateset_len(cur_network->SupportedRates);
-		networkType = judge_network_type(adapt, cur_network->SupportedRates, supportRateNum) & 0xf;
+		networkType = judge_network_type(adapt, cur_network->SupportedRates) & 0xf;
 		raid = networktype_to_raid(networkType);
 		mask = update_supported_rate(cur_network->SupportedRates, supportRateNum);
 		mask |= (pmlmeinfo->HT_enable) ? update_MSC_rate(&pmlmeinfo->HT_caps) : 0;
@@ -1911,7 +1911,7 @@ void UpdateHalRAMask8188EUsb(struct adapter *adapt, u32 mac_id, u8 rssi_level)
 		break;
 	default: /* for each sta in IBSS */
 		supportRateNum = rtw_get_rateset_len(pmlmeinfo->FW_sta_info[mac_id].SupportedRates);
-		networkType = judge_network_type(adapt, pmlmeinfo->FW_sta_info[mac_id].SupportedRates, supportRateNum) & 0xf;
+		networkType = judge_network_type(adapt, pmlmeinfo->FW_sta_info[mac_id].SupportedRates) & 0xf;
 		raid = networktype_to_raid(networkType);
 		mask = update_supported_rate(cur_network->SupportedRates, supportRateNum);
 
diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
index 713e23229ef5..b11a6886a083 100644
--- a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
@@ -448,7 +448,7 @@ void init_addba_retry_timer(struct adapter *adapt, struct sta_info *sta);
 struct xmit_frame *alloc_mgtxmitframe(struct xmit_priv *pxmitpriv);
 
 unsigned char networktype_to_raid(unsigned char network_type);
-u8 judge_network_type(struct adapter *padapter, unsigned char *rate, int len);
+u8 judge_network_type(struct adapter *padapter, unsigned char *rate);
 void get_rate_set(struct adapter *padapter, unsigned char *pbssrate, int *len);
 void UpdateBrateTbl(struct adapter *padapter, u8 *mBratesOS);
 void UpdateBrateTblForSoftAP(u8 *bssrateset, u32 bssratelen);
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

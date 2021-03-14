Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD8533A3AE
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Mar 2021 10:04:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4DB383984;
	Sun, 14 Mar 2021 09:04:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wyoSAoR1VscV; Sun, 14 Mar 2021 09:04:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D169B83A97;
	Sun, 14 Mar 2021 09:04:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 276C21BF395
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 09:03:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 48CAF414EC
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 09:03:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YdfifAcsh3pN for <devel@linuxdriverproject.org>;
 Sun, 14 Mar 2021 09:03:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3812940116
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 09:03:42 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id u4so12631660ljo.6
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 01:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NM5ACNVlNsaeVilpuhcf3lEQy2OFRoK36i9tu3alhXc=;
 b=ghriHR4ENRWqRC44nxpsrAnJjkiQK4VUUKB3i3jA376ctOUhDjxAyr1yZ8dy7QTtHR
 IuHAO2dQznkX7fLfR262fW+t5qwCVz16KIbDXyO8TxRJtsvj4DsA8rZScYVCEVZE5Z0m
 djHsiK7/+/9BmLKKT2oS+nEofn+9yiLm2/hoMiBtcMQNQ5Re0qaz+mIgfeFbeg61RgS2
 BtKQaonOyU8YcE1tejOxYtL+Wbub93ZIe5KBtR9TBirzdj82xgok22VjmGwfe1qMnLYB
 /VCjf133g35FsSsfpYpP71Fnjq4b+sBbpCXIIptCFkOoCDg9g3Vnryti1UY4NmfPyaQo
 R67g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NM5ACNVlNsaeVilpuhcf3lEQy2OFRoK36i9tu3alhXc=;
 b=HcELpa1AFHhNQtWeWC85zX5IBrQqTDUuuEZCF2JO7LzsKUAM3dGexeeip5QrNCaxkm
 jsRlQsDqSGIBBcYgSDAi6i285fNpiXAsF+Q9fO5PADj5QeT2UIcFy3lpmYDJwl8ouf3q
 6qCXhRwRcylnT1R7SlFGM0fGoG+/43QQTdIDVlGjJkonIA1hcSRNJ9lXxkyozn8+zte6
 DfS4oWWq6Vf0ADcEf/o1UjbhZNuJZyrKRzeyRI6ZONFlFMJLrERwYsX9jUgBFM1oVsHr
 WRAGfXly9UzuLlmrm0XmSfhi1GPSKeM5wxZmfMq5XOBRYVxN/mdV6aTJA/XG8faO4GyN
 /1YQ==
X-Gm-Message-State: AOAM5321UHdzxufpmZuugTdEkCsJzSx2rVraehDXqzxgAEcnR4ul6P7E
 hwyohK2BI0NR323SNhN3fuI=
X-Google-Smtp-Source: ABdhPJxac/lCpil0vSc5mOE5yBYUjVme3QpLGreVkqd2oCBSXYc7/CsdsPzAEvW+60wWTM7fLSbXvg==
X-Received: by 2002:a2e:7a08:: with SMTP id v8mr7486947ljc.344.1615712620284; 
 Sun, 14 Mar 2021 01:03:40 -0800 (PST)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id e24sm2239743lfn.62.2021.03.14.01.03.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Mar 2021 01:03:39 -0800 (PST)
Received: (nullmailer pid 21233 invoked by uid 1000);
 Sun, 14 Mar 2021 09:03:26 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 3/4] staging:r8188eu: replace cap_* definitions with native
 kernel WLAN_CAPABILITY_*
Date: Sun, 14 Mar 2021 12:02:46 +0300
Message-Id: <20210314090247.21181-4-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210314090247.21181-1-insafonov@gmail.com>
References: <20210314090247.21181-1-insafonov@gmail.com>
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
Cc: Brooke Basile <brookebasile@gmail.com>, devel@driverdev.osuosl.org,
 Ivan Safonov <insafonov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Shreeya Patel <shreeya.patel23498@gmail.com>,
 Mrinal Pandey <mrinalmni@gmail.com>, Simon Fong <simon.fodin@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

cap_* definitions duplicate WLAN_CAPABILITY_*. Remove cap_* definitions,
improve code consistency.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c |  6 +++---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c  |  6 +++---
 drivers/staging/rtl8188eu/include/wifi.h       | 12 ------------
 3 files changed, 6 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index ec5b8be14c2b..7a706fe11750 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -223,13 +223,13 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
 	/* capability info */
 	*(u16 *)ie = 0;
 
-	*(__le16 *)ie |= cpu_to_le16(cap_IBSS);
+	*(__le16 *)ie |= cpu_to_le16(WLAN_CAPABILITY_IBSS);
 
 	if (pregistrypriv->preamble == PREAMBLE_SHORT)
-		*(__le16 *)ie |= cpu_to_le16(cap_ShortPremble);
+		*(__le16 *)ie |= cpu_to_le16(WLAN_CAPABILITY_SHORT_PREAMBLE);
 
 	if (pdev_network->Privacy)
-		*(__le16 *)ie |= cpu_to_le16(cap_Privacy);
+		*(__le16 *)ie |= cpu_to_le16(WLAN_CAPABILITY_PRIVACY);
 
 	sz += 2;
 	ie += 2;
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index bee19d5b22c0..50d3c3631be0 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -2188,7 +2188,7 @@ static void start_create_ibss(struct adapter *padapter)
 	/* update capability */
 	caps = rtw_get_capability(pnetwork);
 	update_capinfo(padapter, caps);
-	if (caps & cap_IBSS) {/* adhoc master */
+	if (caps & WLAN_CAPABILITY_IBSS) {/* adhoc master */
 		val8 = 0xcf;
 		rtw_hal_set_hwreg(padapter, HW_VAR_SEC_CFG, (u8 *)(&val8));
 
@@ -2240,7 +2240,7 @@ static void start_clnt_join(struct adapter *padapter)
 	/* update capability */
 	caps = rtw_get_capability(pnetwork);
 	update_capinfo(padapter, caps);
-	if (caps & cap_ESS) {
+	if (caps & WLAN_CAPABILITY_ESS) {
 		Set_MSR(padapter, WIFI_FW_STATION_STATE);
 
 		val8 = (pmlmeinfo->auth_algo == dot11AuthAlgrthm_8021X) ? 0xcc : 0xcf;
@@ -2258,7 +2258,7 @@ static void start_clnt_join(struct adapter *padapter)
 			  msecs_to_jiffies((REAUTH_TO * REAUTH_LIMIT) + (REASSOC_TO * REASSOC_LIMIT) + beacon_timeout));
 
 		pmlmeinfo->state = WIFI_FW_AUTH_NULL | WIFI_FW_STATION_STATE;
-	} else if (caps & cap_IBSS) { /* adhoc client */
+	} else if (caps & WLAN_CAPABILITY_IBSS) { /* adhoc client */
 		Set_MSR(padapter, WIFI_FW_ADHOC_STATE);
 
 		val8 = 0xcf;
diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
index f03359602db7..d65a0a88a69a 100644
--- a/drivers/staging/rtl8188eu/include/wifi.h
+++ b/drivers/staging/rtl8188eu/include/wifi.h
@@ -238,18 +238,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 #define AUTH_ODD_TO		0
 #define AUTH_EVEN_TO		1
 
-#define cap_ESS		BIT(0)
-#define cap_IBSS	BIT(1)
-#define cap_CFPollable	BIT(2)
-#define cap_CFRequest	BIT(3)
-#define cap_Privacy	BIT(4)
-#define cap_ShortPremble BIT(5)
-#define cap_PBCC	BIT(6)
-#define cap_ChAgility	BIT(7)
-#define cap_SpecMgmt	BIT(8)
-#define cap_QoSi	BIT(9)
-#define cap_ShortSlot	BIT(10)
-
 /*-----------------------------------------------------------------------------
 				Below is the definition for 802.11i / 802.1x
 ------------------------------------------------------------------------------*/
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

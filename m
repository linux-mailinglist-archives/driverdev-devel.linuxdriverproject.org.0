Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB92139B72
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jan 2020 22:30:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0B87C85045;
	Mon, 13 Jan 2020 21:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jSH+Ix1Ew-AE; Mon, 13 Jan 2020 21:30:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E2EFD83C12;
	Mon, 13 Jan 2020 21:30:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 668B21BF341
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 21:30:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6346284189
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 21:30:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9+J13HKw+B8j for <devel@linuxdriverproject.org>;
 Mon, 13 Jan 2020 21:30:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7A3E083C12
 for <devel@driverdev.osuosl.org>; Mon, 13 Jan 2020 21:30:10 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id p17so11418679wma.1
 for <devel@driverdev.osuosl.org>; Mon, 13 Jan 2020 13:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x5+ov4CaVNZaEBNcRsthINHg4Fcgw3j3by4jIhHXUPE=;
 b=T8ohPrA3ZboIa5u4Nl/BlJpMST1God0vPv3q/UzL9Y6wKj/33IyZPOop9L0A0oDIvb
 IzdK0SJGCm8NU5qxlmNTN3JK1Y0Q92UYM7Aqh54HLZYXSU/d4/rFyNhlMinaMBwYHjrt
 EUq/nukFxoCV6lMuwC9GU6ByCLvtdAuxeEVItUEkn9+4HUH98qvZrboQtgDVZX263Wiw
 HJhiWcqTJHSuG7luBi8FJjUeQPTEKqrpFVsJj0/UL0GcfDq//FVwm8A3PZIZ80+kc1kL
 0IZOEDYLrhmWH0phkfDyJ+vyuAzJ09JC3trT1CCg0iCaFhbahmFKNZ8bH+F5HjBGYTmp
 j+fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x5+ov4CaVNZaEBNcRsthINHg4Fcgw3j3by4jIhHXUPE=;
 b=otXtQvW4VXbq43yA1nx5YjxIRoOs2ldea8jn6COiJzwLYmBM6QyytZQRVPzPihQ+UY
 Q1hl7x2jSLTG5AGAc6sm71UB1jWAg7eEEJ9NKHKp9KcpZYWMuwMmi4UwJ52Zo1P9l621
 wmagUNpdUrJdqEYjoZaFmYd31CsYGKG+cVZDcIBcWFBjnswpKrRiIX5c3Yz9mGN6yVws
 kJP1V1h7fvfdbySxx0wg0E0i6eIl48AXfHuxmCNv6pDv5kvcP/mm0kPzFpoGDwLTfXO/
 /6BYI54yWQdcHs2GLXwL4IpWi9KpdgrnSdJ8gwMe5U8eZ6swCklMRTdv3Y+/M3V8w8/2
 Jq5w==
X-Gm-Message-State: APjAAAU63wVFGTX+a2zitAIhNf3PzOYrL072Qi+tTMGF3L2Y2s5VHOdY
 Bk6bpI+C1V1GUTHpvJWLyDU=
X-Google-Smtp-Source: APXvYqzysidmxeF3t6al9a/pvcMTwMeqSyDBI10V1/2DEDyws6CBSFoyFe9KpxqsxxlKDAO68qvIpw==
X-Received: by 2002:a1c:6485:: with SMTP id y127mr23185458wmb.11.1578951008958; 
 Mon, 13 Jan 2020 13:30:08 -0800 (PST)
Received: from localhost.localdomain
 (dslb-088-070-028-164.088.070.pools.vodafone-ip.de. [88.70.28.164])
 by smtp.gmail.com with ESMTPSA id z187sm16403823wme.16.2020.01.13.13.30.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:30:08 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: remove unused parameters from
 rtw_check_network_type
Date: Mon, 13 Jan 2020 22:29:39 +0100
Message-Id: <20200113212939.9738-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.1
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

Parameters 'ratelen' and 'channel' of function rtw_check_network_type are
unused, remove them. Reduces object file size by 62 bytes.

  text    data     bss     dec     hex filename
398525   12896    4688  416109   6596d drivers/staging/rtl8188eu/r8188eu.o
398463   12896    4688  416047   6592f drivers/staging/rtl8188eu/r8188eu.o

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c        | 4 ++--
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c | 2 +-
 drivers/staging/rtl8188eu/include/ieee80211.h  | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 88e42cc1d837..93283c7deec4 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -429,7 +429,7 @@ static void update_bmc_sta(struct adapter *padapter)
 
 		/* prepare for add_RATid */
 		supportRateNum = rtw_get_rateset_len((u8 *)&pcur_network->SupportedRates);
-		network_type = rtw_check_network_type((u8 *)&pcur_network->SupportedRates, supportRateNum, 1);
+		network_type = rtw_check_network_type((u8 *)&pcur_network->SupportedRates);
 
 		memcpy(psta->bssrateset, &pcur_network->SupportedRates, supportRateNum);
 		psta->bssratelen = supportRateNum;
@@ -802,7 +802,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		supportRateNum += ie_len;
 	}
 
-	network_type = rtw_check_network_type(supportRate, supportRateNum, channel);
+	network_type = rtw_check_network_type(supportRate);
 
 	rtw_set_supported_rate(pbss_network->SupportedRates, network_type);
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index cc1b5438c04c..1344d369e05d 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -98,7 +98,7 @@ bool rtw_is_cckratesonly_included(u8 *rate)
 	return true;
 }
 
-int rtw_check_network_type(unsigned char *rate, int ratelen, int channel)
+int rtw_check_network_type(unsigned char *rate)
 {
 	/*  could be pure B, pure G, or B/G */
 	if (rtw_is_cckratesonly_included(rate))
diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
index d569fe5ed8e6..75f0ebe0faf5 100644
--- a/drivers/staging/rtl8188eu/include/ieee80211.h
+++ b/drivers/staging/rtl8188eu/include/ieee80211.h
@@ -765,7 +765,7 @@ bool rtw_is_cckrates_included(u8 *rate);
 
 bool rtw_is_cckratesonly_included(u8 *rate);
 
-int rtw_check_network_type(unsigned char *rate, int ratelen, int channel);
+int rtw_check_network_type(unsigned char *rate);
 
 void rtw_get_bcn_info(struct wlan_network *pnetwork);
 
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

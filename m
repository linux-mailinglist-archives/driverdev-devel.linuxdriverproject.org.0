Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F2C268039
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Sep 2020 18:25:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09373868F2;
	Sun, 13 Sep 2020 16:25:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hCO0muSNPMSF; Sun, 13 Sep 2020 16:25:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC828868CC;
	Sun, 13 Sep 2020 16:25:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B194F1BF59E
 for <devel@linuxdriverproject.org>; Sun, 13 Sep 2020 16:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AE87B85070
 for <devel@linuxdriverproject.org>; Sun, 13 Sep 2020 16:25:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vrZwiGXaqqPt for <devel@linuxdriverproject.org>;
 Sun, 13 Sep 2020 16:25:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C2A9A84FC9
 for <devel@driverdev.osuosl.org>; Sun, 13 Sep 2020 16:25:40 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id a12so15204313eds.13
 for <devel@driverdev.osuosl.org>; Sun, 13 Sep 2020 09:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iJKJB6zX9XOaPugcfbZ/srCTJvZAJAvg0+wka4cvIMM=;
 b=Rqq2uW2bITTnA60MJmjJx6HRrP56zQ66+ZcWH+1uBierD6N3ddSOxA36uRPYOf4W0m
 wc04Gp3zW+4G08sb+CkpFlEYuIZbhFP9vALFM28zcCDWrmDgsyGd3azJZpaDdFY3pruu
 k5tF9/B934Ej5Qjxxh/t3ygVrP4BuezhZaYimcM+u6IPpIuxIYrMRkPtKxPkk1yp6mSF
 auPFl3YFMVMkplIFpaFWIhkJI0rcpH/V4r6uAGmJGQ/HXDQgyCAGSB843dgxD/+MY8sL
 CJ9AJmaI9qr2wgBxdGxS1dnXAIqn3A7NW8Bi97tUuflYacZoCPASlUCHKd+5gAzXb9ST
 TSjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iJKJB6zX9XOaPugcfbZ/srCTJvZAJAvg0+wka4cvIMM=;
 b=WasrLFQSPsoPgxH4G0WQ7rKTf90l/8QLR8Gvj13ArrDIKmHeYElG+XfOLbYqh+BbGw
 un5r367zbg7J3jR9fAupD/LPiSC6DNGNbNI4SXt72lE3Ze8QH05cADg58qvkgOG5MKsK
 X6hvi3yzGDvQqwaOL0laM8Jpy0uSo2/GXwZZTvs7JPUoCSe6LMO/IOwkhCsaimDV80Rh
 QJLBptX7UC3NBfyX4qk8a7Ntn0Z6dRcQ0Oohen5mZ0hoKDgqJGfQS8pUn31NANEEuEJf
 sL8smpnro4yvvabax6vg7VA4A5ihlngClIwB9a4mu6iBN+6bKYB2yLHgNsk9l7MWqWsQ
 7tLQ==
X-Gm-Message-State: AOAM533BXda0R2DcNUhq0PheqAJtmWKjvV7iJ8YzHAUO3QqvFXgTvyON
 H3zQZLDY4J137J8NQn6/f+k=
X-Google-Smtp-Source: ABdhPJxp9tV3oj6RzynqOBx3JEx7NY3drYT+vpbjf3SUFqz6QrO1OespSAjQblNz/IMLJ1xigf9Jug==
X-Received: by 2002:a05:6402:10d3:: with SMTP id
 p19mr13808570edu.380.1600014338977; 
 Sun, 13 Sep 2020 09:25:38 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-100.092.219.pools.vodafone-ip.de. [92.219.207.100])
 by smtp.gmail.com with ESMTPSA id w19sm7163505edt.22.2020.09.13.09.25.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Sep 2020 09:25:38 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8723bs: remove cckrates{only}_included()
Date: Sun, 13 Sep 2020 18:22:05 +0200
Message-Id: <20200913162206.19477-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In rtw_ieee80211.c there are rtw_is_cckrates_included() and
rtw_is_cckratesonly_included() which have the same functionality as
cckrates_included() and cckrates_only_included() defined in
rtw_wlan_util.c. Remove the functions from rtw_wlan_util.c and use
those from rtw_ieee80211.c. Remove the now unused variable ratelen.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 .../staging/rtl8723bs/core/rtw_wlan_util.c    | 34 ++-----------------
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  2 --
 2 files changed, 3 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index a5790a648a5b..6cb779bc9410 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -54,32 +54,6 @@ static u8 rtw_basic_rate_ofdm[3] = {
 	IEEE80211_OFDM_RATE_24MB | IEEE80211_BASIC_RATE_MASK
 };
 
-int cckrates_included(unsigned char *rate, int ratelen)
-{
-	int	i;
-
-	for (i = 0; i < ratelen; i++) {
-		if  ((((rate[i]) & 0x7f) == 2)	|| (((rate[i]) & 0x7f) == 4) ||
-		     (((rate[i]) & 0x7f) == 11)  || (((rate[i]) & 0x7f) == 22))
-			return true;
-	}
-
-	return false;
-}
-
-int cckratesonly_included(unsigned char *rate, int ratelen)
-{
-	int	i;
-
-	for (i = 0; i < ratelen; i++) {
-		if  ((((rate[i]) & 0x7f) != 2) && (((rate[i]) & 0x7f) != 4) &&
-		     (((rate[i]) & 0x7f) != 11)  && (((rate[i]) & 0x7f) != 22))
-			return false;
-	}
-
-	return true;
-}
-
 u8 networktype_to_raid_ex(struct adapter *adapter, struct sta_info *psta)
 {
 	u8 raid, cur_rf_type, rf_type = RF_1T1R;
@@ -1740,15 +1714,13 @@ void update_capinfo(struct adapter *Adapter, u16 updateCap)
 
 void update_wireless_mode(struct adapter *padapter)
 {
-	int ratelen, network_type = 0;
+	int network_type = 0;
 	u32 SIFS_Timer;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 	struct wlan_bssid_ex		*cur_network = &(pmlmeinfo->network);
 	unsigned char 		*rate = cur_network->SupportedRates;
 
-	ratelen = rtw_get_rateset_len(cur_network->SupportedRates);
-
 	if ((pmlmeinfo->HT_info_enable) && (pmlmeinfo->HT_caps_enable))
 		pmlmeinfo->HT_enable = 1;
 
@@ -1765,9 +1737,9 @@ void update_wireless_mode(struct adapter *padapter)
 		else if (pmlmeinfo->HT_enable)
 			network_type = WIRELESS_11_24N;
 
-		if ((cckratesonly_included(rate, ratelen)) == true)
+		if (rtw_is_cckratesonly_included(rate))
 			network_type |= WIRELESS_11B;
-		else if ((cckrates_included(rate, ratelen)) == true)
+		else if (rtw_is_cckrates_included(rate))
 			network_type |= WIRELESS_11BG;
 		else
 			network_type |= WIRELESS_11G;
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index 14583799039f..1567831caf91 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -716,8 +716,6 @@ void sa_query_timer_hdl(struct timer_list *t);
 		DBG_871X("%s set_sa_query_timer(%p, %d)\n", __func__, (mlmeext), (ms)); \
 		_set_timer(&(mlmeext)->sa_query_timer, (ms)); \
 	} while (0)
-extern int cckrates_included(unsigned char *rate, int ratelen);
-extern int cckratesonly_included(unsigned char *rate, int ratelen);
 
 extern void process_addba_req(struct adapter *padapter, u8 *paddba_req, u8 *addr);
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

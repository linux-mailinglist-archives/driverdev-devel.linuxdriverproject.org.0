Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1397B27BD27
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 08:32:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 693EF85DB1;
	Tue, 29 Sep 2020 06:32:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gKR0ZP1nSJN7; Tue, 29 Sep 2020 06:32:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F3E2C85C92;
	Tue, 29 Sep 2020 06:32:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A470D1BF2F9
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A16AC869D8
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r0a7i+9D20jO for <devel@linuxdriverproject.org>;
 Tue, 29 Sep 2020 06:32:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A67BD86981
 for <devel@driverdev.osuosl.org>; Tue, 29 Sep 2020 06:32:38 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id o8so13349749ejb.10
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 23:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yVwxc8ndQaD/53nLnA0xKVBBpacv1lNmzl4Zof5kji8=;
 b=DNNuRhInba/4/S9uXXATHAJ81HKmabpNb3dAB3tQsn++pIFuckakqaAb1Z2PSaY2Oy
 da+8xzUwwLUR3NrZkrY63+pEkQ9aqFaoO1le645QPgqBbmolggoek/nNDvRbnpx0EP4a
 1L1VXJ2jdYujML50C+c89ExdedtZqN1F+U3MDpSjOPd9FlLl6XXUlQ4+YGbhR0lYi4dn
 D0n5si1oIfzGOspG7SGEO+SJPDeOKJDqEWwT2IrfO6fJENoOfheXTMzWSbPQ2il1updI
 ZtMShFQf6Wc33ibpoiEHNk+VKcT9uKSN9c6jzHLT/G2UvpRoDJoOmE+4CaI1BMXZ9zRQ
 8giQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yVwxc8ndQaD/53nLnA0xKVBBpacv1lNmzl4Zof5kji8=;
 b=E31ItU7XjOUUr99PA+CGv5keCqmCwYV/JY4FHIVx6n/AabyMyyRXbXfkjd6ItpNBJj
 6grCgIk9UpFqM9zvPi5j6fHFRzSzkyJf0cXH4qoEqYGRhU8s1wRQ4Wm1fQUM9gg2Hfqq
 xdDROD1GrjeQ2fYwVQEQcAbK2JJtX5Ck7iytztOjWWaqVJWdmq69p/ePWN9N6f+QeyiF
 WmJDUvjW8Ym/amidBvbIkUzcIoF0Wa3XFYBb4Be/5whd9bSiSOC4C9R6zrFtgC3H246m
 TpaYDPnOS3NnY8RqI35X5T519LcJeqeEqztD/ZJGwzCMG4MIcBdiso7Xf8yCpVySxSG6
 GFLw==
X-Gm-Message-State: AOAM530wruxD3h509r7C+Hy+33YYYML49Ee8uxbkOxF/d52mrD6UmuqU
 +XJKNREwdddT3sJ1Vczy0XI=
X-Google-Smtp-Source: ABdhPJzvk71Z74y6T2T8jE1SL01xsyTX5syZh5fRHQC2WrdsOix3QeHWXY83uDLkJJwMB7uOishRdw==
X-Received: by 2002:a17:906:2290:: with SMTP id
 p16mr594848eja.104.1601361157269; 
 Mon, 28 Sep 2020 23:32:37 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-039.092.219.pools.vodafone-ip.de. [92.219.207.39])
 by smtp.gmail.com with ESMTPSA id r8sm4730915edy.87.2020.09.28.23.32.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 23:32:36 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 6/8] staging: rtl8188eu: remove cckrates{only}_included()
Date: Tue, 29 Sep 2020 08:28:45 +0200
Message-Id: <20200929062847.23985-6-straube.linux@gmail.com>
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

In rtw_ieee80211.c there are rtw_is_cckrates_included() and
rtw_is_cckratesonly_included() which have the same functionality as
cckrates_included() and cckrates_only_included() defined in
rtw_wlan_util.c. Remove the functions from rtw_wlan_util.c and use
those from rtw_ieee80211.c.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 .../staging/rtl8188eu/core/rtw_wlan_util.c    | 34 +++----------------
 .../staging/rtl8188eu/include/rtw_mlme_ext.h  |  3 --
 2 files changed, 4 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index efe1f1ba7acf..bf7dd13dde03 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -53,32 +53,6 @@ static const u8 rtw_basic_rate_mix[7] = {
 	IEEE80211_OFDM_RATE_24MB | IEEE80211_BASIC_RATE_MASK
 };
 
-bool cckrates_included(unsigned char *rate, int ratelen)
-{
-	int i;
-
-	for (i = 0; i < ratelen; i++) {
-		u8 r = rate[i] & 0x7f;
-
-		if (r == 2 || r == 4 || r == 11 || r == 22)
-			return true;
-	}
-	return false;
-}
-
-bool cckratesonly_included(unsigned char *rate, int ratelen)
-{
-	int i;
-
-	for (i = 0; i < ratelen; i++) {
-		u8 r = rate[i] & 0x7f;
-
-		if (r != 2 && r != 4 && r != 11 && r != 22)
-			return false;
-	}
-	return true;
-}
-
 unsigned char networktype_to_raid(unsigned char network_type)
 {
 	switch (network_type) {
@@ -111,9 +85,9 @@ u8 judge_network_type(struct adapter *padapter, unsigned char *rate, int ratelen
 	if (pmlmeinfo->HT_enable)
 		network_type = WIRELESS_11_24N;
 
-	if (cckratesonly_included(rate, ratelen))
+	if (rtw_is_cckratesonly_included(rate))
 		network_type |= WIRELESS_11B;
-	else if (cckrates_included(rate, ratelen))
+	else if (rtw_is_cckrates_included(rate))
 		network_type |= WIRELESS_11BG;
 	else
 		network_type |= WIRELESS_11G;
@@ -1362,9 +1336,9 @@ void update_wireless_mode(struct adapter *padapter)
 	if (pmlmeinfo->HT_enable)
 		network_type = WIRELESS_11_24N;
 
-	if (cckratesonly_included(rate, ratelen))
+	if (rtw_is_cckratesonly_included(rate))
 		network_type |= WIRELESS_11B;
-	else if (cckrates_included(rate, ratelen))
+	else if (rtw_is_cckrates_included(rate))
 		network_type |= WIRELESS_11BG;
 	else
 		network_type |= WIRELESS_11G;
diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
index 565bfe46256c..713e23229ef5 100644
--- a/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8188eu/include/rtw_mlme_ext.h
@@ -568,9 +568,6 @@ void addba_timer_hdl(struct timer_list *t);
 	mod_timer(&mlmeext->link_timer, jiffies +	\
 		  msecs_to_jiffies(ms))
 
-bool cckrates_included(unsigned char *rate, int ratelen);
-bool cckratesonly_included(unsigned char *rate, int ratelen);
-
 void process_addba_req(struct adapter *padapter, u8 *paddba_req, u8 *addr);
 
 void update_TSF(struct mlme_ext_priv *pmlmeext, u8 *pframe, uint len);
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

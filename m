Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 274031C5D9
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 May 2019 11:19:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68F8487A52;
	Tue, 14 May 2019 09:19:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5l0dZA+EcXkt; Tue, 14 May 2019 09:19:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D101A86727;
	Tue, 14 May 2019 09:19:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EF6B91BF2A6
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 09:19:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E8FF422794
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 09:19:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n4ziexFFxmCq for <devel@linuxdriverproject.org>;
 Tue, 14 May 2019 09:19:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 250082076E
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 09:19:07 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id a5so7941451pls.12
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 02:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=OVlGMrHScgpLZNkDNtjNBYavkwN+rsPOv8fCrQfK5h8=;
 b=O3Wlecy+rhPjJv77zqw43+wRmZ51/BltVh6lhnh+ylPOq3QzmqHOspamd1pDGu8qks
 PUbpPHZL6KOFR2MiIEYW/AcWsXrjP6kOIQtK502Frs4SD6Tmou5bZzNMO/9qSkVxx3xJ
 4CzWahoFpHsFlyKd5lG4zFc7d4B18Ybmfhk5sXXD9tkVdQ+WR+7fQaut8YNr7ggR8CH2
 qI2hAIh1geUWKPtyVCZsxJ2q3xS2OMWea37OpbQeNXg+Ap/oIp1DUAhFgftGIURhFv9v
 t76kZvq1x+hkgddar/otTZwQMW5w6c/Nn7YgdVwsjs+8XT/UYlFtH6AJZVBp/Rmmvjhr
 LHnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=OVlGMrHScgpLZNkDNtjNBYavkwN+rsPOv8fCrQfK5h8=;
 b=Q2G2aMuu68KaMF59tmTk/7H/2wWGfSHU3xddZ/JDZM9NXDWJ4BlMAkCvUgHK/dmUK5
 sM1BhboySYwMS+q3unl3k3JCvF/HRac2c0qC5oiPxuRkPuas5Nj8xrjh98M0D+eTBxoy
 co4mujYNroPIj1MQYuq/rBx73MyFUAWazhyOZovrAuEJxzBRDhemhV3KLB6ShdCtb2h0
 4YKJnsgx0b1mkPhzuPNXZVHzkwOUOua67L9gq/jnLyy0AqVCJhrGoL+3vd9O3RFBGTLB
 +MM63h28cYPErpRBCt9tvJVy5ub0zdUEDn4jLccrohBPJgTKSxiOZSqft9sGPStCj0Mu
 9YQw==
X-Gm-Message-State: APjAAAU6s4qqKNRNPapyL+lB1JBrG4IwPW+L80rsWpdHBZNMTu2RsbvA
 yRpn+Xiu7w83d+PHbq8pUrI=
X-Google-Smtp-Source: APXvYqwfnsLNK8wHLJ4oY7Dn2LcinjnxpbMQEdZed9/2RassZGPW75mgJ6KvdDBjX7DLTpD4CVZ2Rg==
X-Received: by 2002:a17:902:bcc6:: with SMTP id
 o6mr35201734pls.275.1557825546521; 
 Tue, 14 May 2019 02:19:06 -0700 (PDT)
Received: from arch ([2405:204:7102:1ca6:a53f:1f68:43dd:48ab])
 by smtp.gmail.com with ESMTPSA id 79sm17234630pfz.144.2019.05.14.02.19.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 02:19:06 -0700 (PDT)
Date: Tue, 14 May 2019 14:48:59 +0530
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH V2 5/5] Staging: rtl8192u: ieee80211: Use !x in place of NULL
 comparison
Message-ID: <20190514091854.GA1552@arch>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix comparison to NULL, chang to !x operation.
Issue found using checkpatch.pl

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---

V2 - Remove extra parentheses around *crypt

 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 944c8894f9ff..9f54adede230 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -1796,7 +1796,7 @@ static void ieee80211_process_action(struct ieee80211_device *ieee,
 	u8 *act = ieee80211_get_payload(header);
 	u8 tmp = 0;
 //	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len);
-	if (act == NULL) {
+	if (!act) {
 		IEEE80211_DEBUG(IEEE80211_DL_ERR, "error to get payload of action frame\n");
 		return;
 	}
@@ -1929,7 +1929,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 						memcpy(ieee->pHTInfo->PeerHTCapBuf, network->bssht.bdHTCapBuf, network->bssht.bdHTCapLen);
 						memcpy(ieee->pHTInfo->PeerHTInfoBuf, network->bssht.bdHTInfoBuf, network->bssht.bdHTInfoLen);
 					}
-					if (ieee->handle_assoc_response != NULL)
+					if (ieee->handle_assoc_response)
 						ieee->handle_assoc_response(ieee->dev, (struct ieee80211_assoc_response_frame *)header, network);
 				}
 				ieee80211_associate_complete(ieee);
@@ -2856,7 +2856,7 @@ static int ieee80211_wpa_set_encryption(struct ieee80211_device *ieee,
 		goto done;
 	}
 
-	if (*crypt == NULL || (*crypt)->ops != ops) {
+	if (!*crypt || (*crypt)->ops != ops) {
 		struct ieee80211_crypt_data *new_crypt;
 
 		ieee80211_crypt_delayed_deinit(ieee, crypt);
@@ -2871,7 +2871,7 @@ static int ieee80211_wpa_set_encryption(struct ieee80211_device *ieee,
 			new_crypt->priv =
 				new_crypt->ops->init(param->u.crypt.idx);
 
-		if (new_crypt->priv == NULL) {
+		if (!new_crypt->priv) {
 			kfree(new_crypt);
 			param->u.crypt.err = IEEE_CRYPT_ERR_CRYPT_INIT_FAILED;
 			ret = -EINVAL;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

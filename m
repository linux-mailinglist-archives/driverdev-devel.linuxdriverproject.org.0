Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 366B0221E5
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 08:53:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8F63731539;
	Sat, 18 May 2019 06:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id keMenT9BtYYz; Sat, 18 May 2019 06:53:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4A910232D2;
	Sat, 18 May 2019 06:53:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3C1A1BF405
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE09E22882
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:53:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rhSbpbApCN2w for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 06:53:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 79B03226D7
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 06:53:16 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id z26so4750463pfg.6
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 23:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AAu4D0ATNiyOA2xu9Zi8a0tMMrjhXMh/JFs+4LoPJZs=;
 b=l+lRUdS1mBF/Q/d/qMzTvRBcRMX8wK0MwpTM7hoslQFZMAKnionKgo63ujfWoKtB4S
 SK+YCDQN325pmFNLFz/X3UiI2cJT5Olve27GHyACcVzxRbb1F/52TKd2YGB/D1+8LRp2
 eCrGkKltYrPBfgCFGYAOxBGMbN6yigBXT+/0SARQsDNKqqKcBJdj16GHkb+ITs4Jkjwe
 7Tces25Fm7lJkSySjCsFRgYALbDFlWpvPOUsMS85VNOpBk1p9R/LO/g5oxAm9zNPsDbH
 5PbUw1S1b9nMMV8RHf7IUN2qJu0zeLQcw+KfR/tRDDZ6kMXctkPNdkTK4bNHBrhaAe48
 U2Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AAu4D0ATNiyOA2xu9Zi8a0tMMrjhXMh/JFs+4LoPJZs=;
 b=RwvvVNPh19twlvSFj30aA0FEe1BCIsqlk+Reb7BdirMnVUXabQmAiGFzg+Rgb3qSr3
 QdrrMfZ158JBTmCYcuwSHvGhFeXyFueoTMM1jR0x8BtxnFbEDY6ZnB7crTy0xc/XdjxG
 VrT18nP/VwSmaIzzSA9YCGQCdd+Y2elSDsvAdFv8unCwOn24lfXVcm1rTkNEQzgYCZl5
 vrtG7IG5BhtzQkO5BYfZdEyl5n78ZTJQ89Krxzu/4rK6J8pP0FbDsnYxkQ9M6KRPAqdk
 OMmK4tixezw5CvEQKgLsfPrtvECSHOwt75UBeiFnzfCE5cy5ETWdEistBU2DZ49++qSg
 lH4Q==
X-Gm-Message-State: APjAAAVAQwKaMyqvAQPQaliQxD7AtVURvlJ9TCw1bdQYJaOvr/lvKr5k
 TwAXU+uqkRYUAo4MmRssSWs=
X-Google-Smtp-Source: APXvYqw2n2bcCqkng9nSiIcZ3agQRTfpYfnRvnU70VdCJXjFzw+6kTuaoPcJNvdKdKqmFYbnhhprbQ==
X-Received: by 2002:a63:3e47:: with SMTP id l68mr60507707pga.85.1558162396006; 
 Fri, 17 May 2019 23:53:16 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:718c:d15c:244d:ec68:21fe:e5b8])
 by smtp.googlemail.com with ESMTPSA id a6sm13121733pgd.67.2019.05.17.23.53.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 23:53:15 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8723bs: os_dep: Remove unneeded variable for
 return
Date: Sat, 18 May 2019 12:22:47 +0530
Message-Id: <20190518065247.15348-1-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unneeded variable "ret" and directly return 0 in functions.
Fix following coccicheck warning:
Unneeded variable: "ret". Return "0".

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index db553f2e4c0b..b105ba698d55 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -2441,20 +2441,18 @@ void rtw_cfg80211_indicate_sta_disassoc(struct adapter *padapter, unsigned char
 
 static int rtw_cfg80211_monitor_if_open(struct net_device *ndev)
 {
-	int ret = 0;
 
 	DBG_8192C("%s\n", __func__);
 
-	return ret;
+	return 0;
 }
 
 static int rtw_cfg80211_monitor_if_close(struct net_device *ndev)
 {
-	int ret = 0;
 
 	DBG_8192C("%s\n", __func__);
 
-	return ret;
+	return 0;
 }
 
 static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struct net_device *ndev)
@@ -2606,11 +2604,10 @@ static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struc
 
 static int rtw_cfg80211_monitor_if_set_mac_address(struct net_device *ndev, void *addr)
 {
-	int ret = 0;
 
 	DBG_8192C("%s\n", __func__);
 
-	return ret;
+	return 0;
 }
 
 static const struct net_device_ops rtw_cfg80211_monitor_if_ops = {
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D696625050
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 15:30:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF79C84A43;
	Tue, 21 May 2019 13:30:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eeDmn44jHDTP; Tue, 21 May 2019 13:30:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E48D86717;
	Tue, 21 May 2019 13:30:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BE6941BF2BE
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 13:30:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BB616861A3
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 13:30:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kDlDDfzFojYp for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 13:30:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 46FB684A43
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 13:30:41 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id p15so8469822pll.4
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 06:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZO5hFDkAwRNDJZbk5QsbWe+mAjerS5XhXP0hEYSk4JM=;
 b=kg8DP+qcjX0QRNmuJQYsHGLkpObX5jiuPyxe/gfVQ76h2rvEpy6ddWNRszEkzhHM6k
 5IHcX474SFxqeJg6xnCvWK2P5n18CsW8bpiIugS4hLz91eDu+sS8xooPPpRounNhLsTw
 c+hKBDvcrhbezhz70HOwdap8EIvl/o9978ZYbYPSSNB36J/0jIuOQsaPPwoyPqY4vVEO
 1zpdehUiuIKJ6pBTBwZ3ailDHl1mCwuKr5VpMB2chWCbB5PGULjWIcenz6zuBSsm1VNo
 IJv89Hr/Nmuy4jZvuYZXCmxUcUn2R96Vs8dt1naypkA880elzv52W0FDdcy9N48ugirV
 lgdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZO5hFDkAwRNDJZbk5QsbWe+mAjerS5XhXP0hEYSk4JM=;
 b=ooKYDy6hcVL4p7rcHBP4W2gBs6MqddVO/myIU0Jx8shAtyNj/mBJPCwzOGvcW86dHY
 CM4F2NH75trAT5kYT5WDZTzR9ZKyBLUjkTUet7ItRF99oB8XGLmnf/HYJcgn4bQrd6+G
 xA6svTI/efkd9/OIePIcm7qS/zml3AgtT4453EExNE3/Yw4sRM4DPxdYDboDv+BFK6AY
 B9XE3Z6bRUkJDMNqiz+AVV0MF3i2ugD8EilGQ1LjPa10d4JuXdyNhyTdvinVN06ftqv4
 6fnXAI93V2xr3JdPlSR4yuuuVEZMPlYYxv2+w1gHH2plkoo9lD4YkPiUyDQXFjshs+TE
 7TGw==
X-Gm-Message-State: APjAAAXAwzIrYCjKTluG+r7Os3bm2vyIlUXdfV3djvva4EfDpLB1BA8K
 Za03cGlpHsrUOJLIGs7gjvs=
X-Google-Smtp-Source: APXvYqy5dwtAWBYryr7ml9uhalvHAiE0QkEV+NApn55O4t7HNsm4b+U2EaJUEnUSaHsVX7tTqFIbAg==
X-Received: by 2002:a17:902:e708:: with SMTP id
 co8mr81070499plb.141.1558445440751; 
 Tue, 21 May 2019 06:30:40 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:710a:4b60:ca77:51f2:1492:8f9a])
 by smtp.googlemail.com with ESMTPSA id v81sm43070158pfa.16.2019.05.21.06.30.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 06:30:40 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8723bs: os_dep: Remove functions that don't do
 anything.
Date: Tue, 21 May 2019 19:00:12 +0530
Message-Id: <20190521133012.11708-1-puranjay12@gmail.com>
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

Remove functions which just print the name of function and return 0,
These functions fake the network core to say that they support these
options.

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 28 +------------------
 1 file changed, 1 insertion(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 12f8e3e6b1b6..996bd1a674cc 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -2439,23 +2439,7 @@ void rtw_cfg80211_indicate_sta_disassoc(struct adapter *padapter, unsigned char
 	cfg80211_del_sta(ndev, da, GFP_ATOMIC);
 }
 
-static int rtw_cfg80211_monitor_if_open(struct net_device *ndev)
-{
-	int ret = 0;
-
-	DBG_8192C("%s\n", __func__);
-
-	return ret;
-}
-
-static int rtw_cfg80211_monitor_if_close(struct net_device *ndev)
-{
-	int ret = 0;
 
-	DBG_8192C("%s\n", __func__);
-
-	return ret;
-}
 
 static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struct net_device *ndev)
 {
@@ -2604,20 +2588,10 @@ static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struc
 
 }
 
-static int rtw_cfg80211_monitor_if_set_mac_address(struct net_device *ndev, void *addr)
-{
-	int ret = 0;
-
-	DBG_8192C("%s\n", __func__);
 
-	return ret;
-}
 
 static const struct net_device_ops rtw_cfg80211_monitor_if_ops = {
-	.ndo_open = rtw_cfg80211_monitor_if_open,
-       .ndo_stop = rtw_cfg80211_monitor_if_close,
-       .ndo_start_xmit = rtw_cfg80211_monitor_if_xmit_entry,
-       .ndo_set_mac_address = rtw_cfg80211_monitor_if_set_mac_address,
+	.ndo_start_xmit = rtw_cfg80211_monitor_if_xmit_entry,
 };
 
 static int rtw_cfg80211_add_monitor_if (struct adapter *padapter, char *name, struct net_device **ndev)
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

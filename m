Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AB5808FC
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Aug 2019 05:49:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C1B0487E60;
	Sun,  4 Aug 2019 03:49:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id igxdWT1eWm45; Sun,  4 Aug 2019 03:49:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1BBA08782E;
	Sun,  4 Aug 2019 03:49:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA07F1BF385
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 03:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E6B7E8782E
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 03:49:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CgnNt0WLXqjL for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 03:49:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D8A9A87804
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 03:49:10 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id c3so14794709pfa.13
 for <devel@driverdev.osuosl.org>; Sat, 03 Aug 2019 20:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=qPpsx0lZXSAze2smB67N23Z3ac9MnBXGfrM+XLrnXhY=;
 b=Xa5XhcGOqYQkHtIrimdKrUWMsV6UxQFF5NYX6yKSzHGH4atjizk4EvZMqs0Gd5TaqS
 FyYWb3okHzvS24/7w9/CdXDQwIYPsVWzvB+KGU+aUWqqEUmYuupI5RRrpk0Gw3ntb2Ux
 vnPJNSWjenG06l3tHrSJqAYe6XkMz1oTW7hMeBaSadW66KcpEgf1I/Ohs2/NNsRTYzUI
 9VW7FJ36K8jJGeEQwqNs867a0Jvofh7lsNpU2NnhmeMPP4z8LPQohcBwVD/bbszwYT7i
 Q8PUKXUir1HdtT4SVOUGDU0qBsnV333B0xXhDzt5rE3FzfB6ccYL/8ee/e3YLrudG1Te
 eWRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=qPpsx0lZXSAze2smB67N23Z3ac9MnBXGfrM+XLrnXhY=;
 b=QXIVAXzToIkRgVl43uoDWDwsgNZLA/jHBLfMZrbkyOd0mlcQnSEfOuK5ncErUhwzeY
 Km6wlKNC7xOpjio6BQkFuELL76+CYMtLE3NdcIDrWDFJH2GfrLUilMM9S0oman5BqnNC
 prgQxShGz9X9kYJjEGoV3enToxGanpV50Nma9nbOjzMIYsmXy7bDQgfPJh/D8mHGW2sK
 yylXUTUnGo/K4tp9ggQX3wj0gIxr6Wj3R6k7w3jPnRK3xaEIi9wpn2uTvkGaEdgMaFuA
 PZgQE91afwpyx1eL2VniU71WEP+NX1wmiBkT7KDQ5t41l/LjyHL6OHqC6Qp6vb5MRaNI
 Xtng==
X-Gm-Message-State: APjAAAW16yEXd3MhrLStD7ppiTXfEFAd8mdOrkWyMeqPytvqEm5jDyMa
 ExHjXadJBG2paWljzNqLoTg=
X-Google-Smtp-Source: APXvYqzfLPe75VdOmbLiNrGlHAGZ1J4CtJ5f6qfokYi8u1C2tmCEnAHMBaRpHdA2MRaCG8DdPSGIIA==
X-Received: by 2002:a63:3c5:: with SMTP id 188mr128318137pgd.394.1564890550467; 
 Sat, 03 Aug 2019 20:49:10 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id a21sm88482666pfi.27.2019.08.03.20.49.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 03 Aug 2019 20:49:09 -0700 (PDT)
Date: Sun, 4 Aug 2019 09:19:05 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Whitmore <johnfwhitmore@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8192u: Add NULL check post kzalloc
Message-ID: <20190804034904.GA16513@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Collect returns status of kzalloc.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index fe1f279..3240442 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -2096,7 +2096,7 @@ static void rtl8192_SetWirelessMode(struct net_device *dev, u8 wireless_mode)
 }
 
 /* init priv variables here. only non_zero value should be initialized here. */
-static void rtl8192_init_priv_variable(struct net_device *dev)
+static int rtl8192_init_priv_variable(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	u8 i;
@@ -2223,6 +2223,8 @@ static void rtl8192_init_priv_variable(struct net_device *dev)
 
 	priv->AcmControl = 0;
 	priv->pFirmware = kzalloc(sizeof(rt_firmware), GFP_KERNEL);
+	if (!priv->pFirmware)
+		return -ENOMEM;
 
 	/* rx related queue */
 	skb_queue_head_init(&priv->rx_queue);
@@ -2236,6 +2238,8 @@ static void rtl8192_init_priv_variable(struct net_device *dev)
 	for (i = 0; i < MAX_QUEUE_SIZE; i++)
 		skb_queue_head_init(&priv->ieee80211->skb_drv_aggQ[i]);
 	priv->rf_set_chan = rtl8192_phy_SwChnl;
+
+	return 0;
 }
 
 /* init lock here */
@@ -2605,7 +2609,11 @@ static short rtl8192_init(struct net_device *dev)
 		memcpy(priv->txqueue_to_outpipemap, queuetopipe, 9);
 	}
 #endif
-	rtl8192_init_priv_variable(dev);
+	err = rtl8192_init_priv_variable(dev);
+	if (err) {
+		DMESG("init private variables failed");
+		return err;
+	}
 	rtl8192_init_priv_lock(priv);
 	rtl8192_init_priv_task(dev);
 	rtl8192_get_eeprom_size(dev);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

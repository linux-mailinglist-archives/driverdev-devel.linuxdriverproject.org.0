Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AECE7AB0D
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jul 2019 16:31:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1F8A485C9D;
	Tue, 30 Jul 2019 14:31:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OKcIxvbj-mxJ; Tue, 30 Jul 2019 14:31:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC5F585C95;
	Tue, 30 Jul 2019 14:31:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DEB2D1BF2AA
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 14:31:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB10E203B2
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 14:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bedzDjsqns1h for <devel@linuxdriverproject.org>;
 Tue, 30 Jul 2019 14:31:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 5033820385
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2019 14:31:19 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id q22so8732405iog.4
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2019 07:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=i1YG6kCqYX+kvrR/utmgPEUkyqV8ZvVNvWgcHogxlHg=;
 b=d698hF59zDxtZytQwsR6EpwE9keRNxhrk3Ayk0D0ZoSxfWBdkfYnQaz6WpVT5ukTXY
 hC6InAams8Rqw4t5iwfzD8W0f0MJQLB834JwUd9LNtohSgltfPgA0f+N5OmVDeFraC5R
 +NA8O4IqgDkD5cOiE8bWQ9eCKyLfd+SBaNAcQwq+3DzYM3n3MMrG237SXER3zsSIgWR2
 Ve3SEWrBHBhuwcyDBhxbyZ0zYg6knmaWepva0TxrC6v0BcvSt5dt0zJIY1H7xAaX+GvK
 jvEoNbPT84DFK0ZLA163P96TKrFch25xuyg81XeyW3QOZQngayDD1HPwl17rprkcq1cZ
 Hd2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=i1YG6kCqYX+kvrR/utmgPEUkyqV8ZvVNvWgcHogxlHg=;
 b=sSUYlrCCsshAILhdNNQPlQbAkA+tWAU6G6SJDiBeBovR4D0g/iffJoAhmUqz/MCrvx
 SUrCQkQH4PXEgEIXLI/EPldfepkNIafkG9Y7hrk046BShOErgWpgcDkKzqkBe55kFWn9
 zF6Tb3hGFYFZYcJ7F49vX5NSHl0RdwzGwFzFyHoYUQpdnTqkmOeenfjy/e0LtOAMRTJU
 ZaedykJ1DSYdqUk08JRkYJ6+//vqvTwcs+BXmME+HFvktIOshPsf7M7GzhS7MsyCaLyQ
 OHyJBZJ/Kec1X2cvmUMRG+7ZrCnH+ZK4SbVXDGF3dhp0ijwckkBgw61Hs8ZggPrJQBji
 jG7g==
X-Gm-Message-State: APjAAAXonsHhY8ukndXtSPa5mNd2Xe+1tRkbOTd8mbopYzkgG2QBYO/I
 SEbVIQWDXN6LA1ZqHslqfnM=
X-Google-Smtp-Source: APXvYqy6gxWceJb+HPsypSS/lHgI9/f1GKwJy2preCLCpm1Lw+K7APYs7jku5K9eZqCfZILd53HkJw==
X-Received: by 2002:a05:6638:38a:: with SMTP id
 y10mr4159812jap.104.1564497078526; 
 Tue, 30 Jul 2019 07:31:18 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id x22sm46895200ioh.87.2019.07.30.07.31.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 07:31:17 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] rtl8192_init_priv_variable: null check is missing for
 kzalloc
Date: Tue, 30 Jul 2019 09:30:58 -0500
Message-Id: <20190730143102.6662-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190725124528.GA21757@kroah.com>
References: <20190725124528.GA21757@kroah.com>
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
Cc: devel@driverdev.osuosl.org, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 John Whitmore <johnfwhitmore@gmail.com>, emamd001@umn.edu,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, smccaman@umn.edu,
 Colin Ian King <colin.king@canonical.com>,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Allocation for priv->pFirmware may fail, so a null check is necessary.
priv->pFirmware is accessed later in rtl8192_adapter_start. I added the
 check and made appropriate changes to propagate the errno to the caller.

Update: fixed style errors

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index fe1f279ca368..569d02240bf5 100644
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
@@ -2605,7 +2609,10 @@ static short rtl8192_init(struct net_device *dev)
 		memcpy(priv->txqueue_to_outpipemap, queuetopipe, 9);
 	}
 #endif
-	rtl8192_init_priv_variable(dev);
+	err = rtl8192_init_priv_variable(dev);
+	if (err)
+		return err;
+
 	rtl8192_init_priv_lock(priv);
 	rtl8192_init_priv_task(dev);
 	rtl8192_get_eeprom_size(dev);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

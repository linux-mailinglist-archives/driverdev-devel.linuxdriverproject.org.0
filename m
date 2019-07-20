Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFE16F09D
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Jul 2019 22:26:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C06038545B;
	Sat, 20 Jul 2019 20:26:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6qC25nIZkuFq; Sat, 20 Jul 2019 20:26:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C96378562A;
	Sat, 20 Jul 2019 20:26:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9549C1BF318
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2019 20:26:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 90AA585FEF
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2019 20:26:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ebCufoHDYdxD for <devel@linuxdriverproject.org>;
 Sat, 20 Jul 2019 20:26:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DC8DE820F7
 for <devel@driverdev.osuosl.org>; Sat, 20 Jul 2019 20:26:09 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id m24so65617667ioo.2
 for <devel@driverdev.osuosl.org>; Sat, 20 Jul 2019 13:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=L6zkJb2shIoMSsjRP6Uieh9grvMIGFYjODy/QSL4JrU=;
 b=g0KDOOjDfqQM1SVXauXigqH96DJbMepJ5WqdUPhCEp5LDnjXRRPacV7UUC3f+wBJpn
 +hLXTj51RGI9P7Gxcp0dRiD1M6i3jpfzMZ5QNxmyrjO7kQYJ2bsZ6gIptasYXMEPBvjk
 D7OFEdJUUBWs0Rsnp3EGDq9VQO0CWaVUR33//4iqZVXi8RxYuQ5pDVn1RA5U2rzKZCoL
 L8XdU49aQzJoxsyYkH6nNQeIkOVc8dn7QMKWq7aPuNutcSMriyI12DfDUlrw3LN5oTNn
 PO3ktS8xPFpVL/XdcCZS4Nl5o3xoYSnJu1GQePF50RReZ5W49aJ8Elr2GQI/GeCX+ZW3
 Ub0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=L6zkJb2shIoMSsjRP6Uieh9grvMIGFYjODy/QSL4JrU=;
 b=tMKycp2DK+7kvIFY5CNe6bMXzAWp0LXbeettBKk0aC4CFxh2Km/yS2Bibtsoek1KyO
 CSnRItDvBFG9nO7iMCtkVgVxpRqfhLsxmpUBgCECQBxofk0P6VLsNOKJ3QjNltjS+gRH
 1BJc8yL8ojTqsHMB3CitdHWf7BiXb+WCg5SzWa1+3roo3k473hdFTf7gtEotzEOOM5N6
 hS/LU7sCBrN8KqkmguZjuy8ez/+WnsIL5+3JVPWY2dOaf0e/R2eB1vrF3gTrcXktL+9T
 RzS8IGp4gfN52n/VicszafKGJiUMdt7Q5HPDmMgje/wTKeeaOryQH1DERQi93tEOnKuS
 p1FA==
X-Gm-Message-State: APjAAAUtqLYUkzEvdfGeJz5T/UyNxdlyac42l2lOxhWNRMDQwHVPmAmD
 IkuU9aRaOCOxEL6G9YrxHU0=
X-Google-Smtp-Source: APXvYqzGJpIGWM4cBpaVAJfK9fK5SBJ+g0JJIuIsz1owZX5qvAlxcdwjPJBX+j8n8mi9Uypn7oHnqQ==
X-Received: by 2002:a05:6602:1d2:: with SMTP id
 w18mr40948552iot.157.1563654368775; 
 Sat, 20 Jul 2019 13:26:08 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id m10sm61796382ioj.75.2019.07.20.13.26.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 20 Jul 2019 13:26:08 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] rtl8192_init_priv_variable: null check is missing for kzalloc
Date: Sat, 20 Jul 2019 15:25:44 -0500
Message-Id: <20190720202546.21111-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, secalert@redhat.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, John Whitmore <johnfwhitmore@gmail.com>,
 emamd001@umn.edu, Nishka Dasgupta <nishkadg.linux@gmail.com>, smccaman@umn.edu,
 Colin Ian King <colin.king@canonical.com>,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Allocation for priv->pFirmware may fail, so a null check is necessary.
priv->pFirmware is accessed at line 2743. I added the check and made
appropriate changes to propagate the errno to the caller.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index fe1f279ca368..5fb24b13ce5b 100644
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
@@ -2223,6 +2223,10 @@ static void rtl8192_init_priv_variable(struct net_device *dev)
 
 	priv->AcmControl = 0;
 	priv->pFirmware = kzalloc(sizeof(rt_firmware), GFP_KERNEL);
+	if (!priv->pFirmware) {
+		return -ENOMEM;
+	}
+
 
 	/* rx related queue */
 	skb_queue_head_init(&priv->rx_queue);
@@ -2236,6 +2240,8 @@ static void rtl8192_init_priv_variable(struct net_device *dev)
 	for (i = 0; i < MAX_QUEUE_SIZE; i++)
 		skb_queue_head_init(&priv->ieee80211->skb_drv_aggQ[i]);
 	priv->rf_set_chan = rtl8192_phy_SwChnl;
+
+	return 0;
 }
 
 /* init lock here */
@@ -2605,7 +2611,10 @@ static short rtl8192_init(struct net_device *dev)
 		memcpy(priv->txqueue_to_outpipemap, queuetopipe, 9);
 	}
 #endif
-	rtl8192_init_priv_variable(dev);
+	err = rtl8192_init_priv_variable(dev);
+	if (err) {
+		return err;
+	}
 	rtl8192_init_priv_lock(priv);
 	rtl8192_init_priv_task(dev);
 	rtl8192_get_eeprom_size(dev);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

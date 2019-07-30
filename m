Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA91C7B56E
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 00:01:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 19FBA85BFB;
	Tue, 30 Jul 2019 22:01:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r4qKaSTmcWWz; Tue, 30 Jul 2019 22:01:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB89685BC2;
	Tue, 30 Jul 2019 22:01:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 628F51BF3EE
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 22:01:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5F77787B39
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 22:01:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ma01DMtjZy-p for <devel@linuxdriverproject.org>;
 Tue, 30 Jul 2019 22:01:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CDBDC87410
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2019 22:01:51 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id o9so28160980iom.3
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2019 15:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rME4gSy2TuO6SEgNfnkb7ooplhaDIhLQ2nvkgci5ujs=;
 b=X5j8RK7wVi5TZtivxNXC8QgO31lAinZ4SA8IAlJPp25veaoqXTe+Hlm5dgW7fCie9q
 H7YYuSmSQfyECAxnqS7aKV7lzhqUtghPgufF1yWWoz7/PGpWnJiwCxSU/EOBU3y8rytU
 GWEXocxHDZc4hyNYfejIGHuPhkFDzZB+DC9BsIxFCzwJCr43S76IaJHKAZyg3WDr6jMR
 PpV96n+wiirfLTpW3M9d9IommJHKbZvXxAcrSF9PTVHqvhOFcfND6+FZUX2w6XUNdEh6
 e/wlvali7i8PeM/GHWsi9b2O5+ymahlryJzqPIA/i54/5DzoJxnOhTMfaTpd7vLvGRcu
 MXUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rME4gSy2TuO6SEgNfnkb7ooplhaDIhLQ2nvkgci5ujs=;
 b=L0bxqlouceu2fbsnHlC+1nNrgu4oASzCgF+v0zp1yfCEflsjfX59OI4B7yUKWINXz1
 I06+o3Vo37BCtbCn5wdFtEtNM807Dhx/68LZRjHSVHwE5U4g6RoZdAlZsIwxEkbFECQX
 MFgbptPmYTK9ioGVgK65eSFA/Ro8dULMafpQVm8+G6445yZq7lxPtrNTXymrIqD919BX
 LNtvlzHVqSxC9wFP0F/TG4gCIejUqDWFB/9NJHUqWwjbUyUtt2qbCXAT09FmOegMXd89
 KL+B/6nMdDJKZOgd2RmkL8aBxLNDdPtbIhc2CVxLPrxzY6p6ruOyH2L3QGHOq+E01GXg
 QRuQ==
X-Gm-Message-State: APjAAAVi6hAjIwYMZWxl7Gob2Gq7DLycWKyeEUNSpH0tr2lgAkPiW1zn
 grVYw6zHOSXSJmlzJ8Y/RU4=
X-Google-Smtp-Source: APXvYqyJD7rOEa9cQVfrpNiVU45+A0Q58+y0mpssRej1Kh4ElwGDwbnPRmgQLQAVcHCyx+zeVwVz9g==
X-Received: by 2002:a5e:8b43:: with SMTP id z3mr107727401iom.287.1564524110967; 
 Tue, 30 Jul 2019 15:01:50 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id e22sm50247229iob.66.2019.07.30.15.01.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 15:01:50 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3] staging: rtl8192u: null check the kzalloc
Date: Tue, 30 Jul 2019 17:01:39 -0500
Message-Id: <20190730220141.6608-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190730164304.GA10640@kroah.com>
References: <20190730164304.GA10640@kroah.com>
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
Cc: devel@driverdev.osuosl.org, b.zolnierkie@samsung.com, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, John Whitmore <johnfwhitmore@gmail.com>,
 emamd001@umn.edu, Nishka Dasgupta <nishkadg.linux@gmail.com>, smccaman@umn.edu,
 Colin Ian King <colin.king@canonical.com>,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In rtl8192_init_priv_variable allocation for priv->pFirmware may fail,
so a null check is necessary.priv->pFirmware is accessed later in
rtl8192_adapter_start. I added the check and made appropriate changes
to propagate the errno to the caller.

---
Update v2: fixed style errors
Update V3: fixed prefix

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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 169357C4B3
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 16:19:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4DEDB86132;
	Wed, 31 Jul 2019 14:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oGg3LcjN9xUV; Wed, 31 Jul 2019 14:19:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 594A586430;
	Wed, 31 Jul 2019 14:19:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF3851BF32E
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 14:19:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DC2E887D5D
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 14:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FE0gqtmgStry for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 14:19:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 49B3587D33
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 14:19:41 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id z3so17742496iog.0
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 07:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LmsfEqE9rSQmbGZDMq4zi+aR2TovlvdbPxBXSE/ln+o=;
 b=LA6lAtNhGfQ+YpcxNb8jwYGQrfWT2i1bdJBZJomQ/TvKoemNn/MxyqESq1TSYglZRz
 05SltvU4JYrBeJgqjhusgXRSjGL16SS++B/M7/FRYC0pJtqBdHRJBdno2uhlUPpFxsbd
 LUJaJtvMcYShLpfP1aWkb1BcL4A0DqIR9XGOCTjpHLTSAw4dl+hnqUDqSAEtrtxkeiH2
 EoAuOD5bO9kO0ed89spip2bSu1iGTKDJPnvrS7zjreD7X6y9o5y8yPHnKn662KM3uVPf
 STCwhD7elqg4ppyfdRb5WYOL09jyL1v/7XAm+tCkBnSWpo+pDR4OGKP4XoGUOYWuCoRZ
 jqVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LmsfEqE9rSQmbGZDMq4zi+aR2TovlvdbPxBXSE/ln+o=;
 b=HPoW7mGTlSy/Teh7sF4SBRbih8sCl94hkMbVVuSucLxMTF1z8p8FXyJOv3JSqdEHGu
 jFZqFir5eCqYK525BFJ0mmaEpreQRmP5X/H13HSfK/tkfA+zrxGOkQof6skCF4D/7iiu
 oxFrIe8/w6QhBaHO8nefoTcwASzM4C+J3Mnmbc/4ZxzQeX4elhmjEwgBWTs/WuM9a187
 lAzNZEY+0wdHN1iDeEIsORNwnmdf4/8Qnobxmcd5oDmcEBe0kCsRl6FtakXEKkwJHf6o
 w8XtyGAhQD+7kqd3I52I2BOpBKA3oHCgNOgWiNfPd3qsHwDHwkAncOQW/sLCZj8ZoE7S
 P82Q==
X-Gm-Message-State: APjAAAUlcJsSuTERDx9/ow00Uhnl28wVam4ixor4/aqOB2P1ESmgxGeU
 6KB9saHauQ0PhFuX5C2CvUw=
X-Google-Smtp-Source: APXvYqyAFe0YvPfoXErQySSDugu3fvmA7rjYbFYVjEOxmD+8hGVOV9dk3hEIZublWvvG5l+uGr0OBg==
X-Received: by 2002:a5d:8c87:: with SMTP id g7mr14293199ion.85.1564582780478; 
 Wed, 31 Jul 2019 07:19:40 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id s3sm57124403iob.49.2019.07.31.07.19.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 07:19:39 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v4] staging: rtl8192u: null check the kzalloc
Date: Wed, 31 Jul 2019 09:19:21 -0500
Message-Id: <20190731141925.29268-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190731113642.GA3983@kroah.com>
References: <20190731113642.GA3983@kroah.com>
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

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>

---
Update v2: fixed style errors
Update V3: fixed prefix
Update V4: fixed style
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

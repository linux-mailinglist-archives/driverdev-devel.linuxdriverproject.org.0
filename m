Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF586D053F
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Mar 2023 14:48:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91AFD60A61;
	Thu, 30 Mar 2023 12:48:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91AFD60A61
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t_iWCaTc5aGL; Thu, 30 Mar 2023 12:48:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C08460864;
	Thu, 30 Mar 2023 12:48:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C08460864
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E5D71BF4DA
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:48:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 055C54016F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:48:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 055C54016F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XANc-mb4mJ5Y
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:48:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5EE8140127
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5EE8140127
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 12:48:36 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id dw14so12411679pfb.6
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 05:48:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680180515;
 h=content-disposition:mime-version:message-id:subject:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ldJcxIa6kLbtB5zSDr5wR2rNVF9D0ls2PcDB3uelXJo=;
 b=wgiWV2q3cXYUalEL/9Ue03kWlAzmS+YWn6vR2msWvdkvlok3HYuRFFSE2aB39ujEl7
 2eUJKpIuy0hBj94PQiSvjGU/i1vuTtUtAPnMxK3/FK2zcGT8gMld6zItpUPHlXQx7p58
 BxcYzttKW8RhBXQpHwGm5h0pGLvsWeWE1lbE0d89WnsupNKkNiTnV+1SyJwQyooFxddZ
 vPOyXeuAh8pSGpXB9kJceqv0602myO/7b4zjeKpB4ef1uWGlk2KYtAvi74a+wKXF94Wp
 nlx/sfbENnMG6f5ugz9UZAHe+5rA/Y1WRGX1swylSUC7qjTMufEMsk8dSgtusMVzfci/
 f1dg==
X-Gm-Message-State: AAQBX9eIqOd53AWp56uhkX6n1LKTGTvIKLm59nD4jGORBqFdXCQgKC3S
 8MR2cB2L5OTeZyEYAd/P9oiFYqStUt8OQKLe
X-Google-Smtp-Source: AKy350bd0dhfR/u5uCTWc4oRWjxej6NtgMvwFw2fjQGTjQwuPuCZrtkNezQ/WWh2WohBmQogowM7tw==
X-Received: by 2002:a62:18d2:0:b0:62a:4267:102d with SMTP id
 201-20020a6218d2000000b0062a4267102dmr19941024pfy.27.1680180515246; 
 Thu, 30 Mar 2023 05:48:35 -0700 (PDT)
Received: from joel-ubuntu-desktop ([2407:4d00:2c02:823f:14a7:49e0:2d87:e0ad])
 by smtp.gmail.com with ESMTPSA id
 f25-20020aa782d9000000b0062d19179ec6sm9641449pfn.87.2023.03.30.05.48.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Mar 2023 05:48:34 -0700 (PDT)
Received: by joel-ubuntu-desktop (sSMTP sendmail emulation);
 Thu, 30 Mar 2023 20:48:28 +0800
Date: Thu, 30 Mar 2023 20:48:28 +0800
From: Joel Camilo Chang Gonzalez <jcchangg3@gmail.com>
To: driverdev-devel@linuxdriverproject.org, linux-staging@lists.linux.dev,
 gregkh@linuxfoundation.org
Subject: [PATCH] staging: ks7010: remove unnecessary parentheses
Message-ID: <ZCWFHFogxD+O9N51@joel-ubuntu-desktop>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680180515;
 h=content-disposition:mime-version:message-id:subject:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ldJcxIa6kLbtB5zSDr5wR2rNVF9D0ls2PcDB3uelXJo=;
 b=XUMucqBAvm4duHddaX1DG1eWkBL/xGzu5ISy3hp+p5y6CmK0EbGYZdjxTms40knkqP
 dQeB2j33h4LcFlzph7hzWPPblQc34f/W7O+QxhW/inGPRnLC0/Jf9rdPbpLF6smIKBWY
 SILtac1JZZGZNlE5Vdmwt7K+FT0k9nXJWm2DFdDhxPNKsSO3u4hwhjVzAdqC2LVUpXhq
 UcgMPS0IX9BN0BDk23gRw0PnXjkCVBBJ+8iaftQD7itBJ6REjyVuio9l07NoC7Ujm1tP
 aR5DaWoNDy2ozcVmU2g/kXUl8nR3EPshL0a0FCM04yarYCV+PIYM6YjBHrujPhr1k/+1
 UQ3A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=XUMucqBA
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

Remove redundant parentheses

Signed-off-by: Joel Camilo Chang Gonzalez <jcchangg3@gmail.com>
---
 drivers/staging/ks7010/ks_wlan_net.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index e03c87f0bfe7..eef1a1e70088 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -193,14 +193,14 @@ static int ks_wlan_set_freq(struct net_device *dev,
 		fwrq->freq.m = c + 1;
 	}
 	/* Setting by channel number */
-	if ((fwrq->freq.m > 1000) || (fwrq->freq.e > 0))
+	if (fwrq->freq.m > 1000 || fwrq->freq.e > 0)
 		return -EOPNOTSUPP;
 
 	channel = fwrq->freq.m;
 	/* We should do a better check than that,
 	 * based on the card capability !!!
 	 */
-	if ((channel < 1) || (channel > 14)) {
+	if (channel < 1 || channel > 14) {
 		netdev_dbg(dev, "%s: New channel value of %d is invalid!\n",
 			   dev->name, fwrq->freq.m);
 		return -EINVAL;
@@ -663,7 +663,7 @@ static int ks_wlan_set_rts(struct net_device *dev, struct iw_request_info *info,
 	/* for SLEEP MODE */
 	if (vwrq->rts.disabled)
 		rthr = 2347;
-	if ((rthr < 0) || (rthr > 2347))
+	if (rthr < 0 || rthr > 2347)
 		return -EINVAL;
 
 	priv->reg.rts = rthr;
@@ -701,7 +701,7 @@ static int ks_wlan_set_frag(struct net_device *dev,
 	/* for SLEEP MODE */
 	if (vwrq->frag.disabled)
 		fthr = 2346;
-	if ((fthr < 256) || (fthr > 2346))
+	if (fthr < 256 || fthr > 2346)
 		return -EINVAL;
 
 	fthr &= ~0x1;	/* Get an even value - is it really needed ??? */
@@ -780,7 +780,7 @@ static int ks_wlan_set_encode(struct net_device *dev,
 		return -EINVAL;
 
 	/* for SLEEP MODE */
-	if ((index < 0) || (index > 4))
+	if (index < 0 || index > 4)
 		return -EINVAL;
 
 	index = (index == 0) ? priv->reg.wep_index : (index - 1);
@@ -881,7 +881,7 @@ static int ks_wlan_get_encode(struct net_device *dev,
 	}
 
 	/* Which key do we want ? -1 -> tx index */
-	if ((index < 0) || (index >= 4))
+	if (index < 0 || index >= 4)
 		index = priv->reg.wep_index;
 	if (priv->reg.privacy_invoked) {
 		enc->flags &= ~IW_ENCODE_DISABLED;
-- 
2.37.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

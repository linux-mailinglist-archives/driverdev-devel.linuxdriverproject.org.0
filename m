Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834F1320517
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 12:34:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 874CC874B9;
	Sat, 20 Feb 2021 11:34:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eaJBeDFyFsnZ; Sat, 20 Feb 2021 11:34:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B27D987480;
	Sat, 20 Feb 2021 11:34:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0F0A1BF831
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 11:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA0AE6F4F6
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 11:34:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ulw9LQXGBSRK for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 11:34:07 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 282A96F62E; Sat, 20 Feb 2021 11:34:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5D5306F4F6
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 11:34:06 +0000 (UTC)
Received: by mail-pl1-f174.google.com with SMTP id a24so4820607plm.11
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 03:34:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=6SO1Xm1ig+zqP+nOLpgMuboGgnmxrihdNAhVpNDjz14=;
 b=eteyTGWGwEzB6ZgPYoQb3BACcnMj6ocIQihMnz0/cOPAsi0vwSdA3kkbfzB73+2ZVR
 um57B1KWQ8IbtVXlSknebXylRj8blhWdmlvwm7MXuhnxe29MSlZ2cWYWHd1mv4tNobHO
 vzEa47hkaDjDkVOVWQPM1GYuX+ZYLppt5z87zOqvm6RKSqv/tMSU3ETQ5GykNTskqikt
 dceZEiqfpfudS75N0YoI+U37G1+GWwwRcAsnjzOs1xQym7gGkIAMXMAmJGh5p275oFBC
 0/V7BC5rUkY4s+vGdaMEwP/MqSSLpHZJ5NKLlVba83VZ7ANDiuKXFTlmjFJERRhtvUtM
 Xp6g==
X-Gm-Message-State: AOAM530VEfNPyLwW1hhGN99kIxHnxsB2R4eX9pHpeOVXCsxiVowWvZPc
 eAUJfR/GBK22/vm0xNjqw3g=
X-Google-Smtp-Source: ABdhPJxBwp7yqsafMoz+q5eb5wy7bykkZSUSCmFk/QhBEiW4JMB3hmSM9v6CGa4OrUyqEMPfrH6nrQ==
X-Received: by 2002:a17:90a:c695:: with SMTP id
 n21mr14024879pjt.207.1613820845724; 
 Sat, 20 Feb 2021 03:34:05 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.120])
 by smtp.gmail.com with ESMTPSA id l65sm3776803pfd.67.2021.02.20.03.34.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Feb 2021 03:34:05 -0800 (PST)
Date: Sat, 20 Feb 2021 17:04:00 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mukul Mehar <mukulmehar02@gmail.com>
Subject: [PATCH] staging: wimax: fix sparse incorrect type issue
Message-ID: <YDDzqPT81QBGpTBB@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix sparse warning by casting to explicit user address-space
pointer type

Signed-off-by: karthik alapati <mail@karthek.com>
---
 drivers/staging/wlan-ng/p80211netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
index 6f9666dc0..70570e8a5 100644
--- a/drivers/staging/wlan-ng/p80211netdev.c
+++ b/drivers/staging/wlan-ng/p80211netdev.c
@@ -569,7 +569,7 @@ static int p80211knetdev_do_ioctl(struct net_device *dev,
 		goto bail;
 	}
 
-	msgbuf = memdup_user(req->data, req->len);
+	msgbuf = memdup_user((void __user *)req->data, req->len);
 	if (IS_ERR(msgbuf)) {
 		result = PTR_ERR(msgbuf);
 		goto bail;
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

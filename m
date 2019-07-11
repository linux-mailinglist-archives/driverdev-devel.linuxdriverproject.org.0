Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA41A65337
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jul 2019 10:32:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9AC6520403;
	Thu, 11 Jul 2019 08:32:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dvwarLg1-lcW; Thu, 11 Jul 2019 08:32:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 93B1D2011B;
	Thu, 11 Jul 2019 08:32:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85E301BF330
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 08:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8356F2011B
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 08:32:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sg658F-c-xZU for <devel@linuxdriverproject.org>;
 Thu, 11 Jul 2019 08:32:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from anchovy1.45ru.net.au (anchovy1.45ru.net.au [203.30.46.145])
 by silver.osuosl.org (Postfix) with ESMTPS id E4E9520033
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 08:32:07 +0000 (UTC)
Received: (qmail 12549 invoked by uid 5089); 11 Jul 2019 08:32:04 -0000
Received: by simscan 1.2.0 ppid: 12385, pid: 12386, t: 0.0766s
 scanners: regex: 1.2.0 attach: 1.2.0 clamav: 0.88.3/m:40/d:1950
X-RBL: $rbltext
Received: from unknown (HELO preid-c7.electromag.com.au)
 (preid@electromag.com.au@203.59.235.95)
 by anchovy1.45ru.net.au with ESMTPA; 11 Jul 2019 08:32:03 -0000
Received: by preid-c7.electromag.com.au (Postfix, from userid 1000)
 id 64E6720971BAB; Thu, 11 Jul 2019 16:32:00 +0800 (AWST)
From: Phil Reid <preid@electromag.com.au>
To: gregkh@linuxfoundation.org, bhanusreemahesh@gmail.com,
 leobras.c@gmail.com, nishadkamdar@gmail.com, preid@electromag.com.au,
 dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 devel@driverdev.osuosl.org, nsaenzjulienne@suse.de
Subject: [PATCH 2/2] Staging: fbtft: Fix reset assertion when using gpio
 descriptor
Date: Thu, 11 Jul 2019 16:31:53 +0800
Message-Id: <1562833913-10510-3-git-send-email-preid@electromag.com.au>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1562833913-10510-1-git-send-email-preid@electromag.com.au>
References: <1562833913-10510-1-git-send-email-preid@electromag.com.au>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Typically gpiod_set_value calls would assert the reset line and
then release it using the symantics of:
	gpiod_set_value(par->gpio.reset, 0);
	... delay
	gpiod_set_value(par->gpio.reset, 1);
And the gpio binding would specify the polarity.

Prior to conversion to gpiod calls the polarity in the DT
was ignored and assumed to be active low. Fix it so that
DT polarity is respected.

Signed-off-by: Phil Reid <preid@electromag.com.au>
---
 drivers/staging/fbtft/fbtft-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 44b8074..bc75025 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -231,9 +231,9 @@ static void fbtft_reset(struct fbtft_par *par)
 	if (!par->gpio.reset)
 		return;
 	fbtft_par_dbg(DEBUG_RESET, par, "%s()\n", __func__);
-	gpiod_set_value_cansleep(par->gpio.reset, 0);
-	usleep_range(20, 40);
 	gpiod_set_value_cansleep(par->gpio.reset, 1);
+	usleep_range(20, 40);
+	gpiod_set_value_cansleep(par->gpio.reset, 0);
 	msleep(120);
 }
 
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

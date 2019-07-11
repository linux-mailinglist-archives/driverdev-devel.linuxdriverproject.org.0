Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E138065338
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jul 2019 10:32:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 06A1A86508;
	Thu, 11 Jul 2019 08:32:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MiCkJc+Hvt0k; Thu, 11 Jul 2019 08:32:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B215F8613C;
	Thu, 11 Jul 2019 08:32:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E8B9E1BF330
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 08:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E2E568613C
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 08:32:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YLmNaF18kVxa for <devel@linuxdriverproject.org>;
 Thu, 11 Jul 2019 08:32:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from anchovy2.45ru.net.au (anchovy2.45ru.net.au [203.30.46.146])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DE8A0857D8
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 08:32:07 +0000 (UTC)
Received: (qmail 2339 invoked by uid 5089); 11 Jul 2019 08:32:04 -0000
Received: by simscan 1.2.0 ppid: 2221, pid: 2222, t: 0.0798s
 scanners: regex: 1.2.0 attach: 1.2.0 clamav: 0.88.3/m:40/d:1950
X-RBL: $rbltext
Received: from unknown (HELO preid-c7.electromag.com.au)
 (preid@electromag.com.au@203.59.235.95)
 by anchovy3.45ru.net.au with ESMTPA; 11 Jul 2019 08:32:03 -0000
Received: by preid-c7.electromag.com.au (Postfix, from userid 1000)
 id 63E5420971BA9; Thu, 11 Jul 2019 16:32:00 +0800 (AWST)
From: Phil Reid <preid@electromag.com.au>
To: gregkh@linuxfoundation.org, bhanusreemahesh@gmail.com,
 leobras.c@gmail.com, nishadkamdar@gmail.com, preid@electromag.com.au,
 dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 devel@driverdev.osuosl.org, nsaenzjulienne@suse.de
Subject: [PATCH 1/2] Staging: fbtft: Fix probing of gpio descriptor
Date: Thu, 11 Jul 2019 16:31:52 +0800
Message-Id: <1562833913-10510-2-git-send-email-preid@electromag.com.au>
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

Conversion to use gpio descriptors broke all gpio lookups as
devm_gpiod_get_index was converted to use dev->driver->name for
the gpio name lookup. Fix this by using the name param. In
addition gpiod_get post-fixes the -gpios to the name so that
shouldn't be included in the call. However this then breaks the
of_find_property call to see if the gpio entry exists as all
fbtft treats all gpios as optional. So use devm_gpiod_get_index_optional
instead which achieves the same thing and is simpler.

Nishad confirmed the changes where only ever compile tested.

Fixes: c440eee1a7a1 ("Staging: fbtft: Switch to the gpio descriptor interface")
Signed-off-by: Phil Reid <preid@electromag.com.au>
---
 drivers/staging/fbtft/fbtft-core.c | 39 ++++++++++++++++++--------------------
 1 file changed, 18 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 9b07bad..44b8074 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -76,21 +76,18 @@ static int fbtft_request_one_gpio(struct fbtft_par *par,
 				  struct gpio_desc **gpiop)
 {
 	struct device *dev = par->info->device;
-	struct device_node *node = dev->of_node;
 	int ret = 0;
 
-	if (of_find_property(node, name, NULL)) {
-		*gpiop = devm_gpiod_get_index(dev, dev->driver->name, index,
-					      GPIOD_OUT_HIGH);
-		if (IS_ERR(*gpiop)) {
-			ret = PTR_ERR(*gpiop);
-			dev_err(dev,
-				"Failed to request %s GPIO:%d\n", name, ret);
-			return ret;
-		}
-		fbtft_par_dbg(DEBUG_REQUEST_GPIOS, par, "%s: '%s' GPIO\n",
-			      __func__, name);
+	*gpiop = devm_gpiod_get_index_optional(dev, name, index,
+					       GPIOD_OUT_HIGH);
+	if (IS_ERR(*gpiop)) {
+		ret = PTR_ERR(*gpiop);
+		dev_err(dev,
+			"Failed to request %s GPIO: %d\n", name, ret);
+		return ret;
 	}
+	fbtft_par_dbg(DEBUG_REQUEST_GPIOS, par, "%s: '%s' GPIO\n",
+		      __func__, name);
 
 	return ret;
 }
@@ -103,34 +100,34 @@ static int fbtft_request_gpios_dt(struct fbtft_par *par)
 	if (!par->info->device->of_node)
 		return -EINVAL;
 
-	ret = fbtft_request_one_gpio(par, "reset-gpios", 0, &par->gpio.reset);
+	ret = fbtft_request_one_gpio(par, "reset", 0, &par->gpio.reset);
 	if (ret)
 		return ret;
-	ret = fbtft_request_one_gpio(par, "dc-gpios", 0, &par->gpio.dc);
+	ret = fbtft_request_one_gpio(par, "dc", 0, &par->gpio.dc);
 	if (ret)
 		return ret;
-	ret = fbtft_request_one_gpio(par, "rd-gpios", 0, &par->gpio.rd);
+	ret = fbtft_request_one_gpio(par, "rd", 0, &par->gpio.rd);
 	if (ret)
 		return ret;
-	ret = fbtft_request_one_gpio(par, "wr-gpios", 0, &par->gpio.wr);
+	ret = fbtft_request_one_gpio(par, "wr", 0, &par->gpio.wr);
 	if (ret)
 		return ret;
-	ret = fbtft_request_one_gpio(par, "cs-gpios", 0, &par->gpio.cs);
+	ret = fbtft_request_one_gpio(par, "cs", 0, &par->gpio.cs);
 	if (ret)
 		return ret;
-	ret = fbtft_request_one_gpio(par, "latch-gpios", 0, &par->gpio.latch);
+	ret = fbtft_request_one_gpio(par, "latch", 0, &par->gpio.latch);
 	if (ret)
 		return ret;
 	for (i = 0; i < 16; i++) {
-		ret = fbtft_request_one_gpio(par, "db-gpios", i,
+		ret = fbtft_request_one_gpio(par, "db", i,
 					     &par->gpio.db[i]);
 		if (ret)
 			return ret;
-		ret = fbtft_request_one_gpio(par, "led-gpios", i,
+		ret = fbtft_request_one_gpio(par, "led", i,
 					     &par->gpio.led[i]);
 		if (ret)
 			return ret;
-		ret = fbtft_request_one_gpio(par, "aux-gpios", i,
+		ret = fbtft_request_one_gpio(par, "aux", i,
 					     &par->gpio.aux[i]);
 		if (ret)
 			return ret;
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

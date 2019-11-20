Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 966BC103732
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 11:04:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 030ED86B8D;
	Wed, 20 Nov 2019 10:04:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tRXSWLQnCThT; Wed, 20 Nov 2019 10:04:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9ECA986C71;
	Wed, 20 Nov 2019 10:04:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FF091BF30F
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 10:04:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D5322079C
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 10:04:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wMeLc7u16xGy for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 10:04:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 6CE622050B
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 10:04:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 01:57:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,221,1571727600"; d="scan'208";a="204685531"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga008.fm.intel.com with ESMTP; 20 Nov 2019 01:57:18 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 9602F250; Wed, 20 Nov 2019 11:57:17 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 linux-fbdev@vger.kernel.org, Nishad Kamdar <nishadkamdar@gmail.com>,
 devel@driverdev.osuosl.org
Subject: [PATCH v1 3/5] fbtft: Drop useless #ifdef CONFIG_OF and dead code
Date: Wed, 20 Nov 2019 11:57:14 +0200
Message-Id: <20191120095716.26628-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191120095716.26628-1-andriy.shevchenko@linux.intel.com>
References: <20191120095716.26628-1-andriy.shevchenko@linux.intel.com>
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

First of all there is no need to guard GPIO request by CONFIG_OF.
It works for everybody independently on resource provider. While here,
rename the function to reflect the above.

Moreover, since we have a global dependency to OF, the rest of
conditional compilation is no-op, i.e. it's always be true.

Due to above drop useless #ifdef CONFIG_OF and therefore dead code.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/staging/fbtft/fbtft-core.c | 19 ++-----------------
 1 file changed, 2 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 2122c4407bdb..ff8cb6670ea1 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -70,7 +70,6 @@ void fbtft_dbg_hex(const struct device *dev, int groupsize,
 }
 EXPORT_SYMBOL(fbtft_dbg_hex);
 
-#ifdef CONFIG_OF
 static int fbtft_request_one_gpio(struct fbtft_par *par,
 				  const char *name, int index,
 				  struct gpio_desc **gpiop)
@@ -92,14 +91,11 @@ static int fbtft_request_one_gpio(struct fbtft_par *par,
 	return ret;
 }
 
-static int fbtft_request_gpios_dt(struct fbtft_par *par)
+static int fbtft_request_gpios(struct fbtft_par *par)
 {
 	int i;
 	int ret;
 
-	if (!par->info->device->of_node)
-		return -EINVAL;
-
 	ret = fbtft_request_one_gpio(par, "reset", 0, &par->gpio.reset);
 	if (ret)
 		return ret;
@@ -135,7 +131,6 @@ static int fbtft_request_gpios_dt(struct fbtft_par *par)
 
 	return 0;
 }
-#endif
 
 #ifdef CONFIG_FB_BACKLIGHT
 static int fbtft_backlight_update_status(struct backlight_device *bd)
@@ -898,7 +893,6 @@ int fbtft_unregister_framebuffer(struct fb_info *fb_info)
 }
 EXPORT_SYMBOL(fbtft_unregister_framebuffer);
 
-#ifdef CONFIG_OF
 /**
  * fbtft_init_display_dt() - Device Tree init_display() function
  * @par: Driver data
@@ -977,7 +971,6 @@ static int fbtft_init_display_dt(struct fbtft_par *par)
 
 	return 0;
 }
-#endif
 
 /**
  * fbtft_init_display() - Generic init_display() function
@@ -1138,7 +1131,6 @@ static int fbtft_verify_gpios(struct fbtft_par *par)
 	return 0;
 }
 
-#ifdef CONFIG_OF
 /* returns 0 if the property is not present */
 static u32 fbtft_of_value(struct device_node *node, const char *propname)
 {
@@ -1184,17 +1176,10 @@ static struct fbtft_platform_data *fbtft_probe_dt(struct device *dev)
 		pdata->display.backlight = 1;
 	if (of_find_property(node, "init", NULL))
 		pdata->display.fbtftops.init_display = fbtft_init_display_dt;
-	pdata->display.fbtftops.request_gpios = fbtft_request_gpios_dt;
+	pdata->display.fbtftops.request_gpios = fbtft_request_gpios;
 
 	return pdata;
 }
-#else
-static struct fbtft_platform_data *fbtft_probe_dt(struct device *dev)
-{
-	dev_err(dev, "Missing platform data\n");
-	return ERR_PTR(-EINVAL);
-}
-#endif
 
 /**
  * fbtft_probe_common() - Generic device probe() helper function
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

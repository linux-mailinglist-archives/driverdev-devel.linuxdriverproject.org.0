Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3CC20C491
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Jun 2020 00:05:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 058868841D;
	Sat, 27 Jun 2020 22:05:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kPBUsoaRhzdv; Sat, 27 Jun 2020 22:05:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76C00883FA;
	Sat, 27 Jun 2020 22:05:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 03DA61BF41D
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 22:05:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F17B887009
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 22:05:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0T0VVyUK4p3N for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 22:05:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AEF1486DC4
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 22:05:19 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id e4so13948296ljn.4
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 15:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DJjMDk0sPO5D0Rj0sI2yC6m1xN23+UP+oSbMuvZkDIs=;
 b=Xenvv4/lJ6pNcHj9jhhNkki2cmZzgWB9L0RnCwH1RIpqNRb92Oa+HWvkvnpSsKoxzg
 uSWY7NV2t5322R+GDrfttSSf+4gKwmuB86RGz0fQDzwNZGzDRsltmVXW2pJo+rccaPvO
 7WW+mM1lWWuvMElX5UyzQG8CrClXqlo0VJQQ4+2EOVg7f6bLH7s7kq/3gIrNcOlyNFdy
 Df+fDay493q7KqZzmasQVY7PTyzw8pSjVznvvulPcXJRM9/rsBKF+PkPAnQjO8uScB/a
 nd8fpg9s40mrqUliqwKspFGWX0dAD6nFb6X3/ibguRTVHfeCOvDP4+WqZqJ25rL92uRz
 mZwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DJjMDk0sPO5D0Rj0sI2yC6m1xN23+UP+oSbMuvZkDIs=;
 b=bTkQc/MTsvwDV5RkP3l3grZdAVP6SAjqs58RtjTXPeRszSi6AU8kzkfJVQnXFuzwXt
 vqfFzqw+51EGcL4Tf793++zwmdcRYv3dnbEReEo9rc6zwFGvtKbYLBSUA5ichT14CBTF
 v6KwGHBpyZ4iu3tTiA30tiU0b/Gf2rOJnGq1r657LWDDzdc7jXIKZWnd9CRg8gvLQD6A
 gdYLFIwp+upuMp9RfaEk69VTaO7PVP8hLVZmg8sxCihG6CMH0eBw+d9W/5AlC8IqaLef
 1u6+uk3Q5CWCVk9MIqonZu1yqoMotGL8s1TTCdukdnuNoAaRaHz2q2Y6XyJ70Ot4mbyS
 y02g==
X-Gm-Message-State: AOAM530vdwyGLmWENGC7SVF3eht6WKQRQNAFEMsltazRXPa1sZnJah9Z
 CFg94s7dK+iuyAuWeOAfKJ1JwQ==
X-Google-Smtp-Source: ABdhPJzvFaLVAz5GK4QvxeiUUMFCzTe0SUMfWl9LGqjsnBinsjapqxOF+Woy3rcCAJG7ygzYkQpzjQ==
X-Received: by 2002:a2e:b0fa:: with SMTP id h26mr4526698ljl.148.1593295517653; 
 Sat, 27 Jun 2020 15:05:17 -0700 (PDT)
Received: from genomnajs.lan
 (c-d63ee155.152980-0-69706f6e6c79.bbcust.telenor.se. [85.225.62.214])
 by smtp.gmail.com with ESMTPSA id o1sm7676551lfi.92.2020.06.27.15.05.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 15:05:17 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: media: atomisp: Convert to GPIO descriptors
Date: Sun, 28 Jun 2020 00:05:12 +0200
Message-Id: <20200627220512.593166-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Convert the atomisp LM3554 driver to use GPIO descriptors
fully. It was already retrieveing the GPIO lines as descriptors
but for some reason converting them back into global GPIO
numbers. There is no reason to do this, just deal with the
descriptors as-is.

Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../media/atomisp/i2c/atomisp-lm3554.c        | 68 ++++++++-----------
 .../media/atomisp/include/media/lm3554.h      |  7 +-
 2 files changed, 32 insertions(+), 43 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
index 809010af7855..7ca7378b1859 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
@@ -19,14 +19,13 @@
 #include <linux/i2c.h>
 #include <linux/mutex.h>
 #include <linux/delay.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/slab.h>
 
 #include "../include/media/lm3554.h"
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-device.h>
 #include <linux/acpi.h>
-#include <linux/gpio/consumer.h>
 #include "../include/linux/atomisp_gmin_platform.h"
 #include "../include/linux/atomisp.h"
 
@@ -173,7 +172,7 @@ static void lm3554_flash_off_delay(struct timer_list *t)
 	struct lm3554 *flash = from_timer(flash, t, flash_off_delay);
 	struct lm3554_platform_data *pdata = flash->pdata;
 
-	gpio_set_value(pdata->gpio_strobe, 0);
+	gpiod_set_value(pdata->gpio_strobe, 0);
 }
 
 static int lm3554_hw_strobe(struct i2c_client *client, bool strobe)
@@ -209,7 +208,7 @@ static int lm3554_hw_strobe(struct i2c_client *client, bool strobe)
 	 * so must strobe off here
 	 */
 	if (timer_pending)
-		gpio_set_value(pdata->gpio_strobe, 0);
+		gpiod_set_value(pdata->gpio_strobe, 0);
 
 	/* Restore flash current settings */
 	ret = lm3554_set_flash(flash);
@@ -217,7 +216,7 @@ static int lm3554_hw_strobe(struct i2c_client *client, bool strobe)
 		goto err;
 
 	/* Strobe on Flash */
-	gpio_set_value(pdata->gpio_strobe, 1);
+	gpiod_set_value(pdata->gpio_strobe, 1);
 
 	return 0;
 err:
@@ -627,7 +626,7 @@ static int __lm3554_s_power(struct lm3554 *flash, int power)
 	int ret;
 
 	/*initialize flash driver*/
-	gpio_set_value(pdata->gpio_reset, power);
+	gpiod_set_value(pdata->gpio_reset, power);
 	usleep_range(100, 100 + 1);
 
 	if (power) {
@@ -766,33 +765,22 @@ static int lm3554_gpio_init(struct i2c_client *client)
 	struct lm3554_platform_data *pdata = flash->pdata;
 	int ret;
 
-	if (!gpio_is_valid(pdata->gpio_reset))
+	if (!pdata->gpio_reset)
 		return -EINVAL;
 
-	ret = gpio_direction_output(pdata->gpio_reset, 0);
+	ret = gpiod_direction_output(pdata->gpio_reset, 0);
 	if (ret < 0)
-		goto err_gpio_reset;
+		return ret;
 	dev_info(&client->dev, "flash led reset successfully\n");
 
-	if (!gpio_is_valid(pdata->gpio_strobe)) {
-		ret = -EINVAL;
-		goto err_gpio_dir_reset;
-	}
+	if (!pdata->gpio_strobe)
+		return -EINVAL;
 
-	ret = gpio_direction_output(pdata->gpio_strobe, 0);
+	ret = gpiod_direction_output(pdata->gpio_strobe, 0);
 	if (ret < 0)
-		goto err_gpio_strobe;
+		return ret;
 
 	return 0;
-
-err_gpio_strobe:
-	gpio_free(pdata->gpio_strobe);
-err_gpio_dir_reset:
-	gpio_direction_output(pdata->gpio_reset, 0);
-err_gpio_reset:
-	gpio_free(pdata->gpio_reset);
-
-	return ret;
 }
 
 static int lm3554_gpio_uninit(struct i2c_client *client)
@@ -802,16 +790,14 @@ static int lm3554_gpio_uninit(struct i2c_client *client)
 	struct lm3554_platform_data *pdata = flash->pdata;
 	int ret;
 
-	ret = gpio_direction_output(pdata->gpio_strobe, 0);
+	ret = gpiod_direction_output(pdata->gpio_strobe, 0);
 	if (ret < 0)
 		return ret;
 
-	ret = gpio_direction_output(pdata->gpio_reset, 0);
+	ret = gpiod_direction_output(pdata->gpio_reset, 0);
 	if (ret < 0)
 		return ret;
 
-	gpio_free(pdata->gpio_strobe);
-	gpio_free(pdata->gpio_reset);
 	return 0;
 }
 
@@ -819,18 +805,18 @@ static void *lm3554_platform_data_func(struct i2c_client *client)
 {
 	static struct lm3554_platform_data platform_data;
 
-	platform_data.gpio_reset =
-	    desc_to_gpio(gpiod_get_index(&client->dev,
-					 NULL, 2, GPIOD_OUT_LOW));
-	platform_data.gpio_strobe =
-	    desc_to_gpio(gpiod_get_index(&client->dev,
-					 NULL, 0, GPIOD_OUT_LOW));
-	platform_data.gpio_torch =
-	    desc_to_gpio(gpiod_get_index(&client->dev,
-					 NULL, 1, GPIOD_OUT_LOW));
-	dev_info(&client->dev, "camera pdata: lm3554: reset: %d strobe %d torch %d\n",
-		 platform_data.gpio_reset, platform_data.gpio_strobe,
-		 platform_data.gpio_torch);
+	platform_data.gpio_reset = gpiod_get_index(&client->dev,
+						   NULL, 2, GPIOD_OUT_LOW);
+	if (IS_ERR(platform_data.gpio_reset))
+		return ERR_CAST(platform_data.gpio_reset);
+	platform_data.gpio_strobe = gpiod_get_index(&client->dev,
+						    NULL, 0, GPIOD_OUT_LOW);
+	if (IS_ERR(platform_data.gpio_strobe))
+		return ERR_CAST(platform_data.gpio_strobe);
+	platform_data.gpio_torch = gpiod_get_index(&client->dev,
+						   NULL, 1, GPIOD_OUT_LOW);
+	if (IS_ERR(platform_data.gpio_torch))
+		return ERR_CAST(platform_data.gpio_torch);
 
 	/* Set to TX2 mode, then ENVM/TX2 pin is a power amplifier sync input:
 	 * ENVM/TX pin asserted, flash forced into torch;
@@ -857,6 +843,8 @@ static int lm3554_probe(struct i2c_client *client)
 		return -ENOMEM;
 
 	flash->pdata = lm3554_platform_data_func(client);
+	if (IS_ERR(flash->pdata))
+		return PTR_ERR(flash->pdata);
 
 	v4l2_i2c_subdev_init(&flash->sd, client, &lm3554_ops);
 	flash->sd.internal_ops = &lm3554_internal_ops;
diff --git a/drivers/staging/media/atomisp/include/media/lm3554.h b/drivers/staging/media/atomisp/include/media/lm3554.h
index 812ce74f0635..711b7d7c9950 100644
--- a/drivers/staging/media/atomisp/include/media/lm3554.h
+++ b/drivers/staging/media/atomisp/include/media/lm3554.h
@@ -18,6 +18,7 @@
 #ifndef _LM3554_H_
 #define _LM3554_H_
 
+#include <linux/gpio/consumer.h>
 #include <linux/videodev2.h>
 #include <media/v4l2-subdev.h>
 
@@ -119,9 +120,9 @@
  * lm3554_platform_data - Flash controller platform data
  */
 struct lm3554_platform_data {
-	int gpio_torch;
-	int gpio_strobe;
-	int gpio_reset;
+	struct gpio_desc *gpio_torch;
+	struct gpio_desc *gpio_strobe;
+	struct gpio_desc *gpio_reset;
 
 	unsigned int current_limit;
 	unsigned int envm_tx2;
-- 
2.25.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

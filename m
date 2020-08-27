Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BA0254070
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Aug 2020 10:17:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A220520554;
	Thu, 27 Aug 2020 08:17:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 58jKao-w2tSQ; Thu, 27 Aug 2020 08:17:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ABF9122654;
	Thu, 27 Aug 2020 08:17:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F4681BF59D
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 08:17:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 186C186C7C
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 08:17:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HtR-vJ9BSJqG for <devel@linuxdriverproject.org>;
 Thu, 27 Aug 2020 08:17:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A3EB986BED
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 08:17:01 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id i10so5445506ljn.2
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 01:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IevVagxIVCScWClL3inGrPp/sr+A9mDAMNRZC8a1YDk=;
 b=qBT3okiZPRZd2qgNEJRmJqb/lDHbz/XeF4w3tPQQV9dp5eXgKWbInr31ai9WptbO4z
 S6QNxlTIrY2UfmVhzA+Qc+o4GbnB4sYewpdg9oPNwCIbzHk0m8Bvlk/PzgwbyKWXpiP9
 QQ7XWcSg2cMCjwVUFQEINraE0VNz33txFyoK8ldbwHcXxtUeVawkD6VP6l1HP/l6pImX
 5EEVVuiqqW4ZQetuFhHmCzUMBu4S1R53yFP5Szq1JCq5xe+9EBNA8khFXgJrNYtxLCla
 158MezCnpNJ0ZHMAbYhAI9E3+JjHJEslf9Oli/DBqgQW0kL7U49DTVQZ1NQJjqJf0dzU
 FRxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IevVagxIVCScWClL3inGrPp/sr+A9mDAMNRZC8a1YDk=;
 b=T7+XyUrrOcLLuFqnxikQsdFdJrhhnjuk23lDOIIZCwozm/3r+I0Auye/flZHBZhW0R
 aRv5w9OwhFR7ITenlpp6elCGASvWDFB1kA6iMlf6vdm7VwXDVJTF0ArhEO8HnUvx2btB
 cXGvIv7U++bfEym8/cGL+Qyh0vfd25chGoqZ6udHdMMMGODPj9rQS+QYxV5FYcTXF7hF
 hxBhtziA4ER2eK8qnJiC+/8hhhNBy4KeCfWLSPgjolfKsUbDFrZSU3n2PYs2EoOcbWrz
 x95rottaEFlzwfcNETcLkwMmY0saYO2GIPopmjdbAnwuCQsUx+kLhKn28N+Xew/0aXLs
 GMdA==
X-Gm-Message-State: AOAM530CAv8AAWDjzHyz8o7edZU1Dqt/rS0kd2+Qm/rP2vq7tQPD88fP
 TEq2EHy/M475BcsYl71WWGQaOA==
X-Google-Smtp-Source: ABdhPJxae9HxsRCfjMbyY44p//ru7oJhhjlxmuqsa47WpXE3MaijkB9D39v44e8U83ldIqZlgNNjXQ==
X-Received: by 2002:a2e:7817:: with SMTP id t23mr9097994ljc.161.1598516219529; 
 Thu, 27 Aug 2020 01:16:59 -0700 (PDT)
Received: from localhost.localdomain
 (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
 by smtp.gmail.com with ESMTPSA id u12sm305259ljl.88.2020.08.27.01.16.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Aug 2020 01:16:59 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: media: atomisp: Convert to GPIO descriptors
Date: Thu, 27 Aug 2020 10:14:45 +0200
Message-Id: <20200827081445.186882-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.26.2
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
ChangeLog v1->v2:
- Rebased on v5.9-rc1
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
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

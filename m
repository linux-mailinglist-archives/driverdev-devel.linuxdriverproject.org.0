Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D3C296207
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 17:59:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 89C5A204C0;
	Thu, 22 Oct 2020 15:59:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WMf7ffCG0JZK; Thu, 22 Oct 2020 15:59:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F27C0203E8;
	Thu, 22 Oct 2020 15:59:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F3FA1BF239
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 15:59:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 284D1858FC
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 15:59:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A6nXoJgygrfa for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 15:59:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5DBC385495
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 15:59:10 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id DC564ADF5;
 Thu, 22 Oct 2020 15:59:08 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH v2 03/10] gpio: raspberrypi-exp: Release firmware handle on
 unbind
Date: Thu, 22 Oct 2020 17:58:50 +0200
Message-Id: <20201022155858.20867-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022155858.20867-1-nsaenzjulienne@suse.de>
References: <20201022155858.20867-1-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org, f.fainelli@gmail.com,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, dmitry.torokhov@gmail.com,
 linux-gpio@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, p.zabel@pengutronix.de, linux-input@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Upon unbinding the device make sure we release RPi's firmware interface.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/gpio/gpio-raspberrypi-exp.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-raspberrypi-exp.c b/drivers/gpio/gpio-raspberrypi-exp.c
index bb100e0124e6..c008336e1131 100644
--- a/drivers/gpio/gpio-raspberrypi-exp.c
+++ b/drivers/gpio/gpio-raspberrypi-exp.c
@@ -231,8 +231,19 @@ static int rpi_exp_gpio_probe(struct platform_device *pdev)
 	rpi_gpio->gc.get = rpi_exp_gpio_get;
 	rpi_gpio->gc.set = rpi_exp_gpio_set;
 	rpi_gpio->gc.can_sleep = true;
+	platform_set_drvdata(pdev, rpi_gpio);
 
-	return devm_gpiochip_add_data(dev, &rpi_gpio->gc, rpi_gpio);
+	return gpiochip_add_data(&rpi_gpio->gc, rpi_gpio);
+}
+
+static int rpi_exp_gpio_remove(struct platform_device *pdev)
+{
+	struct rpi_exp_gpio *rpi_gpio = platform_get_drvdata(pdev);
+
+	gpiochip_remove(&rpi_gpio->gc);
+	rpi_firmware_put(rpi_gpio->fw);
+
+	return 0;
 }
 
 static const struct of_device_id rpi_exp_gpio_ids[] = {
@@ -247,6 +258,7 @@ static struct platform_driver rpi_exp_gpio_driver = {
 		.of_match_table	= of_match_ptr(rpi_exp_gpio_ids),
 	},
 	.probe	= rpi_exp_gpio_probe,
+	.remove = rpi_exp_gpio_remove,
 };
 module_platform_driver(rpi_exp_gpio_driver);
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BA12C1341
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 19:38:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7BACC8703A;
	Mon, 23 Nov 2020 18:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3COepfqc2oDS; Mon, 23 Nov 2020 18:38:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E012887017;
	Mon, 23 Nov 2020 18:38:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA6491BF395
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 18:38:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5F08D2048E
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 18:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7D9pDPpbEsVJ for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 18:38:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 8AE861FF59
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 18:38:44 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 19EAAACA2;
 Mon, 23 Nov 2020 18:38:43 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 02/11] firmware: raspberrypi: Introduce
 devm_rpi_firmware_get()
Date: Mon, 23 Nov 2020 19:38:23 +0100
Message-Id: <20201123183833.18750-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201123183833.18750-1-nsaenzjulienne@suse.de>
References: <20201123183833.18750-1-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, dmitry.torokhov@gmail.com,
 linux-gpio@vger.kernel.org, andy.shevchenko@gmail.com, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-input@vger.kernel.org, bgolaszewski@baylibre.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It'll simplify the firmware handling for most consumers.

Suggested-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

Changes since v4:
 - Rearrange function calls for clarity, same functionality

Changes since v2:
- Create devm_rpi_firmware_get()

 drivers/firmware/raspberrypi.c             | 29 ++++++++++++++++++++++
 include/soc/bcm2835/raspberrypi-firmware.h |  8 ++++++
 2 files changed, 37 insertions(+)

diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberrypi.c
index ed793aef7851..e2a5f6f59357 100644
--- a/drivers/firmware/raspberrypi.c
+++ b/drivers/firmware/raspberrypi.c
@@ -243,6 +243,13 @@ void rpi_firmware_put(struct rpi_firmware *fw)
 }
 EXPORT_SYMBOL_GPL(rpi_firmware_put);
 
+static void devm_rpi_firmware_put(void *data)
+{
+	struct rpi_firmware *fw = data;
+
+	rpi_firmware_put(fw);
+}
+
 static int rpi_firmware_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -326,6 +333,28 @@ struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node)
 }
 EXPORT_SYMBOL_GPL(rpi_firmware_get);
 
+/**
+ * devm_rpi_firmware_get - Get pointer to rpi_firmware structure.
+ * @firmware_node:    Pointer to the firmware Device Tree node.
+ *
+ * Returns NULL is the firmware device is not ready.
+ */
+struct rpi_firmware *devm_rpi_firmware_get(struct device *dev,
+					   struct device_node *firmware_node)
+{
+	struct rpi_firmware *fw;
+
+	fw = rpi_firmware_get(firmware_node);
+	if (!fw)
+		return NULL;
+
+	if (devm_add_action_or_reset(dev, devm_rpi_firmware_put, fw))
+		return NULL;
+
+	return fw;
+}
+EXPORT_SYMBOL_GPL(devm_rpi_firmware_get);
+
 static const struct of_device_id rpi_firmware_of_match[] = {
 	{ .compatible = "raspberrypi,bcm2835-firmware", },
 	{},
diff --git a/include/soc/bcm2835/raspberrypi-firmware.h b/include/soc/bcm2835/raspberrypi-firmware.h
index fdfef7fe40df..73ad784fca96 100644
--- a/include/soc/bcm2835/raspberrypi-firmware.h
+++ b/include/soc/bcm2835/raspberrypi-firmware.h
@@ -142,6 +142,8 @@ int rpi_firmware_property_list(struct rpi_firmware *fw,
 			       void *data, size_t tag_size);
 void rpi_firmware_put(struct rpi_firmware *fw);
 struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node);
+struct rpi_firmware *devm_rpi_firmware_get(struct device *dev,
+					   struct device_node *firmware_node);
 #else
 static inline int rpi_firmware_property(struct rpi_firmware *fw, u32 tag,
 					void *data, size_t len)
@@ -160,6 +162,12 @@ static inline struct rpi_firmware *rpi_firmware_get(struct device_node *firmware
 {
 	return NULL;
 }
+
+static inline struct rpi_firmware *devm_rpi_firmware_get(struct device *dev,
+					struct device_node *firmware_node)
+{
+	return NULL;
+}
 #endif
 
 #endif /* __SOC_RASPBERRY_FIRMWARE_H__ */
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

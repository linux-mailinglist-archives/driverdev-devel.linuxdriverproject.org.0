Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1ACE296213
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 17:59:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 72D2387855;
	Thu, 22 Oct 2020 15:59:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0UlySjKaCd8J; Thu, 22 Oct 2020 15:59:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9660B87834;
	Thu, 22 Oct 2020 15:59:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DDE541BF239
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 15:59:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DA8E2875A2
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 15:59:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1LpFaMWJnCTT for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 15:59:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A6B158754A
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 15:59:22 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 4021EADF5;
 Thu, 22 Oct 2020 15:59:21 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v2 10/10] pwm: Add Raspberry Pi Firmware based PWM bus
Date: Thu, 22 Oct 2020 17:58:57 +0200
Message-Id: <20201022155858.20867-11-nsaenzjulienne@suse.de>
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
 linus.walleij@linaro.org, dmitry.torokhov@gmail.com,
 linux-gpio@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, p.zabel@pengutronix.de, linux-input@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adds support to control the PWM bus available in official Raspberry Pi
PoE HAT. Only RPi's co-processor has access to it, so commands have to
be sent through RPi's firmware mailbox interface.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

---

Changes since v1:
 - Use default pwm bindings and get rid of xlate() function
 - Correct spelling errors
 - Correct apply() function
 - Round values
 - Fix divisions in arm32 mode
 - Small cleanups
 - Add comment explaining weird Kconfig construct

 drivers/pwm/Kconfig           |   9 ++
 drivers/pwm/Makefile          |   1 +
 drivers/pwm/pwm-raspberrypi.c | 221 ++++++++++++++++++++++++++++++++++
 3 files changed, 231 insertions(+)
 create mode 100644 drivers/pwm/pwm-raspberrypi.c

diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 63be5362fd3a..b0ffb1e690c0 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -379,6 +379,15 @@ config PWM_PXA
 	  To compile this driver as a module, choose M here: the module
 	  will be called pwm-pxa.
 
+config PWM_RASPBERRYPI
+	tristate "Raspberry Pi Firwmware PWM support"
+	# Make sure not 'y' when RASPBERRYPI_FIRMWARE is 'm'. This can only
+	# happen when COMPILE_TEST=y, hence the added !RASPBERRYPI_FIRMWARE.
+	depends on RASPBERRYPI_FIRMWARE || (COMPILE_TEST && !RASPBERRYPI_FIRMWARE)
+	help
+	  Enable Raspberry Pi firmware controller PWM bus used to control the
+	  official RPI PoE hat
+
 config PWM_RCAR
 	tristate "Renesas R-Car PWM support"
 	depends on ARCH_RENESAS || COMPILE_TEST
diff --git a/drivers/pwm/Makefile b/drivers/pwm/Makefile
index cbdcd55d69ee..b557b549d9f3 100644
--- a/drivers/pwm/Makefile
+++ b/drivers/pwm/Makefile
@@ -35,6 +35,7 @@ obj-$(CONFIG_PWM_MXS)		+= pwm-mxs.o
 obj-$(CONFIG_PWM_OMAP_DMTIMER)	+= pwm-omap-dmtimer.o
 obj-$(CONFIG_PWM_PCA9685)	+= pwm-pca9685.o
 obj-$(CONFIG_PWM_PXA)		+= pwm-pxa.o
+obj-$(CONFIG_PWM_RASPBERRYPI)	+= pwm-raspberrypi.o
 obj-$(CONFIG_PWM_RCAR)		+= pwm-rcar.o
 obj-$(CONFIG_PWM_RENESAS_TPU)	+= pwm-renesas-tpu.o
 obj-$(CONFIG_PWM_ROCKCHIP)	+= pwm-rockchip.o
diff --git a/drivers/pwm/pwm-raspberrypi.c b/drivers/pwm/pwm-raspberrypi.c
new file mode 100644
index 000000000000..72dc0fc5a206
--- /dev/null
+++ b/drivers/pwm/pwm-raspberrypi.c
@@ -0,0 +1,221 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2020 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
+ * For more information on Raspberry Pi's PoE hat see:
+ * https://www.raspberrypi.org/products/poe-hat/
+ *
+ * Limitations:
+ *  - No disable bit, so a disabled PWM is simulated by duty_cycle 0
+ *  - Only normal polarity
+ *  - Fixed 12.5 kHz period
+ *
+ * The current period is completed when HW is reconfigured.
+ */
+
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/pwm.h>
+
+#include <soc/bcm2835/raspberrypi-firmware.h>
+#include <dt-bindings/pwm/raspberrypi,firmware-pwm.h>
+
+#define RPI_PWM_MAX_DUTY		255
+#define RPI_PWM_PERIOD_NS		80000 /* 12.5 kHz */
+
+#define RPI_PWM_CUR_DUTY_REG		0x0
+#define RPI_PWM_DEF_DUTY_REG		0x1
+
+struct raspberrypi_pwm {
+	struct rpi_firmware *firmware;
+	struct pwm_chip chip;
+	unsigned int duty_cycle;
+};
+
+struct raspberrypi_pwm_prop {
+	__le32 reg;
+	__le32 val;
+	__le32 ret;
+} __packed;
+
+static inline struct raspberrypi_pwm *to_raspberrypi_pwm(struct pwm_chip *chip)
+{
+	return container_of(chip, struct raspberrypi_pwm, chip);
+}
+
+static int raspberrypi_pwm_set_property(struct rpi_firmware *firmware,
+					u32 reg, u32 val)
+{
+	struct raspberrypi_pwm_prop msg = {
+		.reg = cpu_to_le32(reg),
+		.val = cpu_to_le32(val),
+	};
+	int ret;
+
+	ret = rpi_firmware_property(firmware, RPI_FIRMWARE_SET_POE_HAT_VAL,
+				    &msg, sizeof(msg));
+	if (ret)
+		return ret;
+	else if (msg.ret)
+		return -EIO;
+
+	return 0;
+}
+
+static int raspberrypi_pwm_get_property(struct rpi_firmware *firmware,
+					u32 reg, u32 *val)
+{
+	struct raspberrypi_pwm_prop msg = {
+		.reg = reg
+	};
+	int ret;
+
+	ret = rpi_firmware_property(firmware, RPI_FIRMWARE_GET_POE_HAT_VAL,
+				    &msg, sizeof(msg));
+	if (ret)
+		return ret;
+	else if (msg.ret)
+		return -EIO;
+
+	*val = le32_to_cpu(msg.val);
+
+	return 0;
+}
+
+static void raspberrypi_pwm_get_state(struct pwm_chip *chip,
+				      struct pwm_device *pwm,
+				      struct pwm_state *state)
+{
+	struct raspberrypi_pwm *rpipwm = to_raspberrypi_pwm(chip);
+
+	state->period = RPI_PWM_PERIOD_NS;
+	state->duty_cycle = DIV_ROUND_CLOSEST(rpipwm->duty_cycle * RPI_PWM_PERIOD_NS,
+					      RPI_PWM_MAX_DUTY);
+	state->enabled = !!(rpipwm->duty_cycle);
+	state->polarity = PWM_POLARITY_NORMAL;
+}
+
+static int raspberrypi_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
+			         const struct pwm_state *state)
+{
+	struct raspberrypi_pwm *rpipwm = to_raspberrypi_pwm(chip);
+	unsigned int duty_cycle;
+	int ret;
+
+        if (state->period < RPI_PWM_PERIOD_NS ||
+            state->polarity != PWM_POLARITY_NORMAL)
+                return -EINVAL;
+
+        if (!state->enabled)
+                duty_cycle = 0;
+        else if (state->duty_cycle < RPI_PWM_PERIOD_NS)
+                duty_cycle = DIV_ROUND_CLOSEST_ULL(state->duty_cycle * RPI_PWM_MAX_DUTY,
+					           RPI_PWM_PERIOD_NS);
+        else
+                duty_cycle = RPI_PWM_MAX_DUTY;
+
+	if (duty_cycle == rpipwm->duty_cycle)
+		return 0;
+
+	ret = raspberrypi_pwm_set_property(rpipwm->firmware, RPI_PWM_CUR_DUTY_REG,
+					   duty_cycle);
+	if (ret) {
+		dev_err(chip->dev, "Failed to set duty cycle: %d\n", ret);
+		return ret;
+	}
+
+	/*
+	 * This sets the default duty cycle after resetting the board, we
+	 * updated it every time to mimic Raspberry Pi's downstream's driver
+	 * behaviour.
+	 */
+	ret = raspberrypi_pwm_set_property(rpipwm->firmware, RPI_PWM_DEF_DUTY_REG,
+					   duty_cycle);
+	if (ret) {
+		dev_err(chip->dev, "Failed to set default duty cycle: %d\n", ret);
+		return ret;
+	}
+
+        rpipwm->duty_cycle = duty_cycle;
+
+	return 0;
+}
+
+static const struct pwm_ops raspberrypi_pwm_ops = {
+	.get_state = raspberrypi_pwm_get_state,
+	.apply = raspberrypi_pwm_apply,
+	.owner = THIS_MODULE,
+};
+
+static int raspberrypi_pwm_probe(struct platform_device *pdev)
+{
+	struct device_node *firmware_node;
+	struct device *dev = &pdev->dev;
+	struct rpi_firmware *firmware;
+	struct raspberrypi_pwm *rpipwm;
+	int ret;
+
+	firmware_node = of_get_parent(dev->of_node);
+	if (!firmware_node) {
+		dev_err(dev, "Missing firmware node\n");
+		return -ENOENT;
+	}
+
+	firmware = rpi_firmware_get(firmware_node);
+	of_node_put(firmware_node);
+	if (!firmware)
+		return -EPROBE_DEFER;
+
+	rpipwm = devm_kzalloc(&pdev->dev, sizeof(*rpipwm), GFP_KERNEL);
+	if (!rpipwm)
+		return -ENOMEM;
+
+	rpipwm->firmware = firmware;
+	rpipwm->chip.dev = dev;
+	rpipwm->chip.ops = &raspberrypi_pwm_ops;
+	rpipwm->chip.base = -1;
+	rpipwm->chip.npwm = RASPBERRYPI_FIRMWARE_PWM_NUM;
+
+	platform_set_drvdata(pdev, rpipwm);
+
+	ret = raspberrypi_pwm_get_property(rpipwm->firmware, RPI_PWM_CUR_DUTY_REG,
+					   &rpipwm->duty_cycle);
+	if (ret) {
+		dev_err(dev, "Failed to get duty cycle: %d\n", ret);
+		return ret;
+	}
+
+	return pwmchip_add(&rpipwm->chip);
+}
+
+static int raspberrypi_pwm_remove(struct platform_device *pdev)
+{
+	struct raspberrypi_pwm *rpipwm = platform_get_drvdata(pdev);
+	int ret;
+
+	ret = pwmchip_remove(&rpipwm->chip);
+	if (!ret)
+		rpi_firmware_put(rpipwm->firmware);
+
+	return ret;
+}
+
+static const struct of_device_id raspberrypi_pwm_of_match[] = {
+	{ .compatible = "raspberrypi,firmware-pwm", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, raspberrypi_pwm_of_match);
+
+static struct platform_driver raspberrypi_pwm_driver = {
+	.driver = {
+		.name = "raspberrypi-pwm",
+		.of_match_table = raspberrypi_pwm_of_match,
+	},
+	.probe = raspberrypi_pwm_probe,
+	.remove = raspberrypi_pwm_remove,
+};
+module_platform_driver(raspberrypi_pwm_driver);
+
+MODULE_AUTHOR("Nicolas Saenz Julienne <nsaenzjulienne@suse.de>");
+MODULE_DESCRIPTION("Raspberry Pi Firwmare Based PWM Bus Driver");
+MODULE_LICENSE("GPL v2");
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAD82FA18D
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 14:29:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 627BA2045D;
	Mon, 18 Jan 2021 13:29:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PGhxQ1736aup; Mon, 18 Jan 2021 13:28:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 461E7204A5;
	Mon, 18 Jan 2021 13:28:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A380B1BF3CD
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 13:28:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9E110862D2
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 13:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RzXzYDGXwc6s for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 13:28:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A195686429
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 13:28:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 21BD422BF3;
 Mon, 18 Jan 2021 13:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610976499;
 bh=AbK9q6eXTQPPtjWh5pOyJO2X4nN33ratfk8uDYT8wDU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EQgvjTxV0wMCoiEX2Mbp9CTu1J/lQmkpHOJb/P2poLiLHCngHkzaTAMpVScmHmfoG
 /PfnVPGKSjYdCyY1j3gMzb6NL9ioqnLGiQhsnjKUMAsZc45CFBS4f3DxkmAdMRop9X
 31Qu1r0q/OUsQegDMqnJ3tLxXTy8/4POFBXWFIlromCYbjBXm7iSsMR3PLFWPjT8Zo
 1iAeQhNkcunRGsmya074y6Z3nDUGccdw1lVq2zpoGKzo0yNfo3gss8c34tQUiRIbfE
 kejSaw5qnzZbjSYHRtBVrd+b6LxlYmhiglmCI9O+EKtusE4PwmqaUnu92L4J1zVdwU
 29I3fFvkBRKEw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1UZs-000Vkx-My; Mon, 18 Jan 2021 14:28:16 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 10/13] mfd: hi6421-spmi-pmic: move driver from staging
Date: Mon, 18 Jan 2021 14:28:11 +0100
Message-Id: <8a152819ef89c73dd6afb5c2deb5441402fcd2fa.1610975633.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1610975633.git.mchehab+huawei@kernel.org>
References: <cover.1610975633.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Mayulong <mayulong1@huawei.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This driver is ready for mainstream. So, move it out of staging.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../mfd/hisilicon,hi6421-spmi-pmic.yaml       | 133 +++++++
 MAINTAINERS                                   |   7 +
 drivers/mfd/Kconfig                           |  15 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/hi6421-spmi-pmic.c                | 342 ++++++++++++++++++
 drivers/staging/hikey9xx/Kconfig              |  16 -
 drivers/staging/hikey9xx/Makefile             |   1 -
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c   | 342 ------------------
 .../hikey9xx/hisilicon,hi6421-spmi-pmic.yaml  | 133 -------
 9 files changed, 498 insertions(+), 492 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
 create mode 100644 drivers/mfd/hi6421-spmi-pmic.c
 delete mode 100644 drivers/staging/hikey9xx/hi6421-spmi-pmic.c
 delete mode 100644 drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml

diff --git a/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
new file mode 100644
index 000000000000..f385146d2bd1
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
@@ -0,0 +1,133 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/hisilicon,hi6421-spmi-pmic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: HiSilicon 6421v600 SPMI PMIC
+
+maintainers:
+  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
+
+description: |
+  HiSilicon 6421v600 should be connected inside a MIPI System Power Management
+  (SPMI) bus. It provides interrupts and power supply.
+
+  The GPIO and interrupt settings are represented as part of the top-level PMIC
+  node.
+
+  The SPMI controller part is provided by
+  drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml.
+
+properties:
+  $nodename:
+    pattern: "pmic@[0-9a-f]"
+
+  compatible:
+    const: hisilicon,hi6421v600-spmi
+
+  reg:
+    maxItems: 1
+
+  '#interrupt-cells':
+    const: 2
+
+  interrupt-controller:
+    description:
+      Identify that the PMIC is capable of behaving as an interrupt controller.
+
+  gpios:
+    maxItems: 1
+
+  regulators:
+    type: object
+
+    properties:
+      '#address-cells':
+        const: 1
+
+      '#size-cells':
+        const: 0
+
+    patternProperties:
+      '^ldo[0-9]+@[0-9a-f]$':
+        type: object
+
+        $ref: "/schemas/regulator/regulator.yaml#"
+
+required:
+  - compatible
+  - reg
+  - regulators
+
+examples:
+  - |
+    /* pmic properties */
+
+    pmic: pmic@0 {
+      compatible = "hisilicon,hi6421-spmi";
+      reg = <0 0>;
+
+      #interrupt-cells = <2>;
+      interrupt-controller;
+      gpios = <&gpio28 0 0>;
+
+      regulators {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ldo3: LDO3 {
+          regulator-name = "ldo3";
+          regulator-min-microvolt = <1500000>;
+          regulator-max-microvolt = <2000000>;
+          regulator-boot-on;
+        };
+
+        ldo4: LDO4 {
+          regulator-name = "ldo4";
+          regulator-min-microvolt = <1725000>;
+          regulator-max-microvolt = <1900000>;
+          regulator-boot-on;
+        };
+
+        ldo9: LDO9 {
+          regulator-name = "ldo9";
+          regulator-min-microvolt = <1750000>;
+          regulator-max-microvolt = <3300000>;
+          regulator-boot-on;
+        };
+
+        ldo15: LDO15 {
+          regulator-name = "ldo15";
+          regulator-min-microvolt = <1800000>;
+          regulator-max-microvolt = <3000000>;
+          regulator-always-on;
+        };
+
+        ldo16: LDO16 {
+          regulator-name = "ldo16";
+          regulator-min-microvolt = <1800000>;
+          regulator-max-microvolt = <3000000>;
+          regulator-boot-on;
+        };
+
+        ldo17: LDO17 {
+          regulator-name = "ldo17";
+          regulator-min-microvolt = <2500000>;
+          regulator-max-microvolt = <3300000>;
+        };
+
+        ldo33: LDO33 {
+          regulator-name = "ldo33";
+          regulator-min-microvolt = <2500000>;
+          regulator-max-microvolt = <3300000>;
+          regulator-boot-on;
+        };
+
+        ldo34: LDO34 {
+          regulator-name = "ldo34";
+          regulator-min-microvolt = <2600000>;
+          regulator-max-microvolt = <3300000>;
+        };
+      };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 85e5b6ab57ca..c5b36a58ede5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8006,6 +8006,13 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
 F:	drivers/spmi/hisi-spmi-controller.c
 
+HISILICON SPMI PMIC DRIVER FOR HIKEY 6421v600
+M:	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
+L:	linux-kernel@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
+F:	drivers/mfd/hi6421-spmi-pmic.c
+
 HISILICON STAGING DRIVERS FOR HIKEY 960/970
 M:	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
 L:	devel@driverdev.osuosl.org
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 8b99a13669bf..c04c2f6be1d9 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -509,6 +509,21 @@ config MFD_HI6421_PMIC
 	  menus in order to enable them.
 	  We communicate with the Hi6421 via memory-mapped I/O.
 
+config MFD_HI6421_SPMI
+	tristate "HiSilicon Hi6421v600 SPMI PMU/Codec IC"
+	depends on OF
+	depends on SPMI
+	select MFD_CORE
+	help
+	  Add support for HiSilicon Hi6421v600 SPMI PMIC. Hi6421 includes
+	  multi-functions, such as regulators, RTC, codec, Coulomb counter,
+	  etc.
+
+	  This driver includes core APIs _only_. You have to select
+	  individual components like voltage regulators under corresponding
+	  menus in order to enable them.
+	  We communicate with the Hi6421v600 via a SPMI bus.
+
 config MFD_HI655X_PMIC
 	tristate "HiSilicon Hi655X series PMU/Codec IC"
 	depends on ARCH_HISI || COMPILE_TEST
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 1780019d2474..7744993c42bc 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -233,6 +233,7 @@ obj-$(CONFIG_MFD_IPAQ_MICRO)	+= ipaq-micro.o
 obj-$(CONFIG_MFD_IQS62X)	+= iqs62x.o
 obj-$(CONFIG_MFD_MENF21BMC)	+= menf21bmc.o
 obj-$(CONFIG_MFD_HI6421_PMIC)	+= hi6421-pmic-core.o
+obj-$(CONFIG_MFD_HI6421_SPMI)	+= hi6421-spmi-pmic.o
 obj-$(CONFIG_MFD_HI655X_PMIC)   += hi655x-pmic.o
 obj-$(CONFIG_MFD_DLN2)		+= dln2.o
 obj-$(CONFIG_MFD_RT5033)	+= rt5033.o
diff --git a/drivers/mfd/hi6421-spmi-pmic.c b/drivers/mfd/hi6421-spmi-pmic.c
new file mode 100644
index 000000000000..64b30d263c8d
--- /dev/null
+++ b/drivers/mfd/hi6421-spmi-pmic.c
@@ -0,0 +1,342 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device driver for regulators in HISI PMIC IC
+ *
+ * Copyright (c) 2013 Linaro Ltd.
+ * Copyright (c) 2011 Hisilicon.
+ *
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/irq.h>
+#include <linux/mfd/core.h>
+#include <linux/mfd/hi6421-spmi-pmic.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/of_gpio.h>
+#include <linux/of.h>
+#include <linux/of_irq.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <linux/spmi.h>
+
+/* 8-bit register offset in PMIC */
+#define HISI_MASK_STATE			0xff
+
+#define HISI_IRQ_ARRAY			2
+#define HISI_IRQ_NUM			(HISI_IRQ_ARRAY * 8)
+
+#define SOC_PMIC_IRQ_MASK_0_ADDR	0x0202
+#define SOC_PMIC_IRQ0_ADDR		0x0212
+
+#define HISI_IRQ_KEY_NUM		0
+#define HISI_IRQ_KEY_VALUE		0xc0
+#define HISI_IRQ_KEY_DOWN		7
+#define HISI_IRQ_KEY_UP			6
+
+#define HISI_MASK_FIELD			0xFF
+#define HISI_BITS			8
+
+/*define the first group interrupt register number*/
+#define HISI_PMIC_FIRST_GROUP_INT_NUM	2
+
+static const struct mfd_cell hi6421v600_devs[] = {
+	{ .name = "hi6421v600-regulator", },
+};
+
+/*
+ * The PMIC register is only 8-bit.
+ * Hisilicon SoC use hardware to map PMIC register into SoC mapping.
+ * At here, we are accessing SoC register with 32-bit.
+ */
+int hi6421_spmi_pmic_read(struct hi6421_spmi_pmic *pmic, int reg)
+{
+	struct spmi_device *pdev;
+	u8 read_value = 0;
+	u32 ret;
+
+	pdev = to_spmi_device(pmic->dev);
+	if (!pdev) {
+		pr_err("%s: pdev get failed!\n", __func__);
+		return -ENODEV;
+	}
+
+	ret = spmi_ext_register_readl(pdev, reg, &read_value, 1);
+	if (ret) {
+		pr_err("%s: spmi_ext_register_readl failed!\n", __func__);
+		return ret;
+	}
+	return read_value;
+}
+EXPORT_SYMBOL(hi6421_spmi_pmic_read);
+
+int hi6421_spmi_pmic_write(struct hi6421_spmi_pmic *pmic, int reg, u32 val)
+{
+	struct spmi_device *pdev;
+	u32 ret;
+
+	pdev = to_spmi_device(pmic->dev);
+	if (!pdev) {
+		pr_err("%s: pdev get failed!\n", __func__);
+		return -ENODEV;
+	}
+
+	ret = spmi_ext_register_writel(pdev, reg, (unsigned char *)&val, 1);
+	if (ret)
+		pr_err("%s: spmi_ext_register_writel failed!\n", __func__);
+
+	return ret;
+}
+EXPORT_SYMBOL(hi6421_spmi_pmic_write);
+
+int hi6421_spmi_pmic_rmw(struct hi6421_spmi_pmic *pmic, int reg,
+			 u32 mask, u32 bits)
+{
+	unsigned long flags;
+	u32 data;
+	int ret;
+
+	spin_lock_irqsave(&pmic->lock, flags);
+	data = hi6421_spmi_pmic_read(pmic, reg) & ~mask;
+	data |= mask & bits;
+	ret = hi6421_spmi_pmic_write(pmic, reg, data);
+	spin_unlock_irqrestore(&pmic->lock, flags);
+
+	return ret;
+}
+EXPORT_SYMBOL(hi6421_spmi_pmic_rmw);
+
+static irqreturn_t hi6421_spmi_irq_handler(int irq, void *data)
+{
+	struct hi6421_spmi_pmic *pmic = (struct hi6421_spmi_pmic *)data;
+	unsigned long pending;
+	int i, offset;
+
+	for (i = 0; i < HISI_IRQ_ARRAY; i++) {
+		pending = hi6421_spmi_pmic_read(pmic, (i + SOC_PMIC_IRQ0_ADDR));
+		pending &= HISI_MASK_FIELD;
+		if (pending != 0)
+			pr_debug("pending[%d]=0x%lx\n\r", i, pending);
+
+		hi6421_spmi_pmic_write(pmic, (i + SOC_PMIC_IRQ0_ADDR), pending);
+
+		/* solve powerkey order */
+		if ((i == HISI_IRQ_KEY_NUM) &&
+		    ((pending & HISI_IRQ_KEY_VALUE) == HISI_IRQ_KEY_VALUE)) {
+			generic_handle_irq(pmic->irqs[HISI_IRQ_KEY_DOWN]);
+			generic_handle_irq(pmic->irqs[HISI_IRQ_KEY_UP]);
+			pending &= (~HISI_IRQ_KEY_VALUE);
+		}
+
+		if (pending) {
+			for_each_set_bit(offset, &pending, HISI_BITS)
+				generic_handle_irq(pmic->irqs[offset + i * HISI_BITS]);
+		}
+	}
+
+	return IRQ_HANDLED;
+}
+
+static void hi6421_spmi_irq_mask(struct irq_data *d)
+{
+	struct hi6421_spmi_pmic *pmic = irq_data_get_irq_chip_data(d);
+	u32 data, offset;
+	unsigned long flags;
+
+	offset = (irqd_to_hwirq(d) >> 3);
+	offset += SOC_PMIC_IRQ_MASK_0_ADDR;
+
+	spin_lock_irqsave(&pmic->lock, flags);
+	data = hi6421_spmi_pmic_read(pmic, offset);
+	data |= (1 << (irqd_to_hwirq(d) & 0x07));
+	hi6421_spmi_pmic_write(pmic, offset, data);
+	spin_unlock_irqrestore(&pmic->lock, flags);
+}
+
+static void hi6421_spmi_irq_unmask(struct irq_data *d)
+{
+	struct hi6421_spmi_pmic *pmic = irq_data_get_irq_chip_data(d);
+	u32 data, offset;
+	unsigned long flags;
+
+	offset = (irqd_to_hwirq(d) >> 3);
+	offset += SOC_PMIC_IRQ_MASK_0_ADDR;
+
+	spin_lock_irqsave(&pmic->lock, flags);
+	data = hi6421_spmi_pmic_read(pmic, offset);
+	data &= ~(1 << (irqd_to_hwirq(d) & 0x07));
+	hi6421_spmi_pmic_write(pmic, offset, data);
+	spin_unlock_irqrestore(&pmic->lock, flags);
+}
+
+static struct irq_chip hi6421_spmi_pmu_irqchip = {
+	.name		= "hisi-irq",
+	.irq_mask	= hi6421_spmi_irq_mask,
+	.irq_unmask	= hi6421_spmi_irq_unmask,
+	.irq_disable	= hi6421_spmi_irq_mask,
+	.irq_enable	= hi6421_spmi_irq_unmask,
+};
+
+static int hi6421_spmi_irq_map(struct irq_domain *d, unsigned int virq,
+			       irq_hw_number_t hw)
+{
+	struct hi6421_spmi_pmic *pmic = d->host_data;
+
+	irq_set_chip_and_handler_name(virq, &hi6421_spmi_pmu_irqchip,
+				      handle_simple_irq, "hisi");
+	irq_set_chip_data(virq, pmic);
+	irq_set_irq_type(virq, IRQ_TYPE_NONE);
+
+	return 0;
+}
+
+static const struct irq_domain_ops hi6421_spmi_domain_ops = {
+	.map	= hi6421_spmi_irq_map,
+	.xlate	= irq_domain_xlate_twocell,
+};
+
+static void hi6421_spmi_pmic_irq_prc(struct hi6421_spmi_pmic *pmic)
+{
+	int i, pending;
+
+	for (i = 0 ; i < HISI_IRQ_ARRAY; i++)
+		hi6421_spmi_pmic_write(pmic, SOC_PMIC_IRQ_MASK_0_ADDR + i,
+				       HISI_MASK_STATE);
+
+	for (i = 0 ; i < HISI_IRQ_ARRAY; i++) {
+		pending = hi6421_spmi_pmic_read(pmic, SOC_PMIC_IRQ0_ADDR + i);
+
+		pr_debug("PMU IRQ address value:irq[0x%x] = 0x%x\n",
+			 SOC_PMIC_IRQ0_ADDR + i, pending);
+		hi6421_spmi_pmic_write(pmic, SOC_PMIC_IRQ0_ADDR + i,
+				       HISI_MASK_STATE);
+	}
+}
+
+static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct hi6421_spmi_pmic *pmic;
+	unsigned int virq;
+	int ret, i;
+
+	pmic = devm_kzalloc(dev, sizeof(*pmic), GFP_KERNEL);
+	if (!pmic)
+		return -ENOMEM;
+
+	spin_lock_init(&pmic->lock);
+
+	pmic->dev = dev;
+
+	pmic->gpio = of_get_gpio(np, 0);
+	if (pmic->gpio < 0)
+		return pmic->gpio;
+
+	if (!gpio_is_valid(pmic->gpio))
+		return -EINVAL;
+
+	ret = devm_gpio_request_one(dev, pmic->gpio, GPIOF_IN, "pmic");
+	if (ret < 0) {
+		dev_err(dev, "failed to request gpio%d\n", pmic->gpio);
+		return ret;
+	}
+
+	pmic->irq = gpio_to_irq(pmic->gpio);
+
+	hi6421_spmi_pmic_irq_prc(pmic);
+
+	pmic->irqs = devm_kzalloc(dev, HISI_IRQ_NUM * sizeof(int), GFP_KERNEL);
+	if (!pmic->irqs)
+		goto irq_malloc;
+
+	pmic->domain = irq_domain_add_simple(np, HISI_IRQ_NUM, 0,
+					     &hi6421_spmi_domain_ops, pmic);
+	if (!pmic->domain) {
+		dev_err(dev, "failed irq domain add simple!\n");
+		ret = -ENODEV;
+		goto irq_malloc;
+	}
+
+	for (i = 0; i < HISI_IRQ_NUM; i++) {
+		virq = irq_create_mapping(pmic->domain, i);
+		if (!virq) {
+			dev_err(dev, "Failed mapping hwirq\n");
+			ret = -ENOSPC;
+			goto irq_malloc;
+		}
+		pmic->irqs[i] = virq;
+		dev_dbg(dev, "%s: pmic->irqs[%d] = %d\n",
+			__func__, i, pmic->irqs[i]);
+	}
+
+	ret = request_threaded_irq(pmic->irq, hi6421_spmi_irq_handler, NULL,
+				   IRQF_TRIGGER_LOW | IRQF_SHARED | IRQF_NO_SUSPEND,
+				   "pmic", pmic);
+	if (ret < 0) {
+		dev_err(dev, "could not claim pmic IRQ: error %d\n", ret);
+		goto irq_malloc;
+	}
+
+	dev_set_drvdata(&pdev->dev, pmic);
+
+	/*
+	 * The logic below will rely that the pmic is already stored at
+	 * drvdata.
+	 */
+	dev_dbg(&pdev->dev, "SPMI-PMIC: adding children for %pOF\n",
+		pdev->dev.of_node);
+	ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
+				   hi6421v600_devs, ARRAY_SIZE(hi6421v600_devs),
+				   NULL, 0, NULL);
+	if (!ret)
+		return 0;
+
+	dev_err(dev, "Failed to add child devices: %d\n", ret);
+
+irq_malloc:
+	free_irq(pmic->irq, pmic);
+
+	return ret;
+}
+
+static void hi6421_spmi_pmic_remove(struct spmi_device *pdev)
+{
+	struct hi6421_spmi_pmic *pmic = dev_get_drvdata(&pdev->dev);
+
+	free_irq(pmic->irq, pmic);
+}
+
+static const struct of_device_id pmic_spmi_id_table[] = {
+	{ .compatible = "hisilicon,hi6421-spmi" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, pmic_spmi_id_table);
+
+static struct spmi_driver hi6421_spmi_pmic_driver = {
+	.driver = {
+		.name	= "hi6421-spmi-pmic",
+		.of_match_table = pmic_spmi_id_table,
+	},
+	.probe	= hi6421_spmi_pmic_probe,
+	.remove	= hi6421_spmi_pmic_remove,
+};
+module_spmi_driver(hi6421_spmi_pmic_driver);
+
+MODULE_DESCRIPTION("HiSilicon Hi6421v600 SPMI PMIC driver");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/staging/hikey9xx/Kconfig b/drivers/staging/hikey9xx/Kconfig
index 69392e42cd0d..1afb8648a2c4 100644
--- a/drivers/staging/hikey9xx/Kconfig
+++ b/drivers/staging/hikey9xx/Kconfig
@@ -1,21 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-# to be placed at drivers/mfd
-config MFD_HI6421_SPMI
-	tristate "HiSilicon Hi6421v600 SPMI PMU/Codec IC"
-	depends on OF
-	depends on SPMI
-	select MFD_CORE
-	help
-	  Add support for HiSilicon Hi6421v600 SPMI PMIC. Hi6421 includes
-	  multi-functions, such as regulators, RTC, codec, Coulomb counter,
-	  etc.
-
-	  This driver includes core APIs _only_. You have to select
-	  individual components like voltage regulators under corresponding
-	  menus in order to enable them.
-	  We communicate with the Hi6421v600 via a SPMI bus.
-
 # to be placed at drivers/regulator
 config REGULATOR_HI6421V600
 	tristate "HiSilicon Hi6421v600 PMIC voltage regulator support"
diff --git a/drivers/staging/hikey9xx/Makefile b/drivers/staging/hikey9xx/Makefile
index 347880fd378f..4d63184e6086 100644
--- a/drivers/staging/hikey9xx/Makefile
+++ b/drivers/staging/hikey9xx/Makefile
@@ -1,4 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
 
-obj-$(CONFIG_MFD_HI6421_SPMI)		+= hi6421-spmi-pmic.o
 obj-$(CONFIG_REGULATOR_HI6421V600)	+= hi6421v600-regulator.o
diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
deleted file mode 100644
index 64b30d263c8d..000000000000
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ /dev/null
@@ -1,342 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * Device driver for regulators in HISI PMIC IC
- *
- * Copyright (c) 2013 Linaro Ltd.
- * Copyright (c) 2011 Hisilicon.
- *
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <linux/delay.h>
-#include <linux/device.h>
-#include <linux/err.h>
-#include <linux/interrupt.h>
-#include <linux/io.h>
-#include <linux/irq.h>
-#include <linux/mfd/core.h>
-#include <linux/mfd/hi6421-spmi-pmic.h>
-#include <linux/module.h>
-#include <linux/of_address.h>
-#include <linux/of_device.h>
-#include <linux/of_gpio.h>
-#include <linux/of.h>
-#include <linux/of_irq.h>
-#include <linux/platform_device.h>
-#include <linux/slab.h>
-#include <linux/spmi.h>
-
-/* 8-bit register offset in PMIC */
-#define HISI_MASK_STATE			0xff
-
-#define HISI_IRQ_ARRAY			2
-#define HISI_IRQ_NUM			(HISI_IRQ_ARRAY * 8)
-
-#define SOC_PMIC_IRQ_MASK_0_ADDR	0x0202
-#define SOC_PMIC_IRQ0_ADDR		0x0212
-
-#define HISI_IRQ_KEY_NUM		0
-#define HISI_IRQ_KEY_VALUE		0xc0
-#define HISI_IRQ_KEY_DOWN		7
-#define HISI_IRQ_KEY_UP			6
-
-#define HISI_MASK_FIELD			0xFF
-#define HISI_BITS			8
-
-/*define the first group interrupt register number*/
-#define HISI_PMIC_FIRST_GROUP_INT_NUM	2
-
-static const struct mfd_cell hi6421v600_devs[] = {
-	{ .name = "hi6421v600-regulator", },
-};
-
-/*
- * The PMIC register is only 8-bit.
- * Hisilicon SoC use hardware to map PMIC register into SoC mapping.
- * At here, we are accessing SoC register with 32-bit.
- */
-int hi6421_spmi_pmic_read(struct hi6421_spmi_pmic *pmic, int reg)
-{
-	struct spmi_device *pdev;
-	u8 read_value = 0;
-	u32 ret;
-
-	pdev = to_spmi_device(pmic->dev);
-	if (!pdev) {
-		pr_err("%s: pdev get failed!\n", __func__);
-		return -ENODEV;
-	}
-
-	ret = spmi_ext_register_readl(pdev, reg, &read_value, 1);
-	if (ret) {
-		pr_err("%s: spmi_ext_register_readl failed!\n", __func__);
-		return ret;
-	}
-	return read_value;
-}
-EXPORT_SYMBOL(hi6421_spmi_pmic_read);
-
-int hi6421_spmi_pmic_write(struct hi6421_spmi_pmic *pmic, int reg, u32 val)
-{
-	struct spmi_device *pdev;
-	u32 ret;
-
-	pdev = to_spmi_device(pmic->dev);
-	if (!pdev) {
-		pr_err("%s: pdev get failed!\n", __func__);
-		return -ENODEV;
-	}
-
-	ret = spmi_ext_register_writel(pdev, reg, (unsigned char *)&val, 1);
-	if (ret)
-		pr_err("%s: spmi_ext_register_writel failed!\n", __func__);
-
-	return ret;
-}
-EXPORT_SYMBOL(hi6421_spmi_pmic_write);
-
-int hi6421_spmi_pmic_rmw(struct hi6421_spmi_pmic *pmic, int reg,
-			 u32 mask, u32 bits)
-{
-	unsigned long flags;
-	u32 data;
-	int ret;
-
-	spin_lock_irqsave(&pmic->lock, flags);
-	data = hi6421_spmi_pmic_read(pmic, reg) & ~mask;
-	data |= mask & bits;
-	ret = hi6421_spmi_pmic_write(pmic, reg, data);
-	spin_unlock_irqrestore(&pmic->lock, flags);
-
-	return ret;
-}
-EXPORT_SYMBOL(hi6421_spmi_pmic_rmw);
-
-static irqreturn_t hi6421_spmi_irq_handler(int irq, void *data)
-{
-	struct hi6421_spmi_pmic *pmic = (struct hi6421_spmi_pmic *)data;
-	unsigned long pending;
-	int i, offset;
-
-	for (i = 0; i < HISI_IRQ_ARRAY; i++) {
-		pending = hi6421_spmi_pmic_read(pmic, (i + SOC_PMIC_IRQ0_ADDR));
-		pending &= HISI_MASK_FIELD;
-		if (pending != 0)
-			pr_debug("pending[%d]=0x%lx\n\r", i, pending);
-
-		hi6421_spmi_pmic_write(pmic, (i + SOC_PMIC_IRQ0_ADDR), pending);
-
-		/* solve powerkey order */
-		if ((i == HISI_IRQ_KEY_NUM) &&
-		    ((pending & HISI_IRQ_KEY_VALUE) == HISI_IRQ_KEY_VALUE)) {
-			generic_handle_irq(pmic->irqs[HISI_IRQ_KEY_DOWN]);
-			generic_handle_irq(pmic->irqs[HISI_IRQ_KEY_UP]);
-			pending &= (~HISI_IRQ_KEY_VALUE);
-		}
-
-		if (pending) {
-			for_each_set_bit(offset, &pending, HISI_BITS)
-				generic_handle_irq(pmic->irqs[offset + i * HISI_BITS]);
-		}
-	}
-
-	return IRQ_HANDLED;
-}
-
-static void hi6421_spmi_irq_mask(struct irq_data *d)
-{
-	struct hi6421_spmi_pmic *pmic = irq_data_get_irq_chip_data(d);
-	u32 data, offset;
-	unsigned long flags;
-
-	offset = (irqd_to_hwirq(d) >> 3);
-	offset += SOC_PMIC_IRQ_MASK_0_ADDR;
-
-	spin_lock_irqsave(&pmic->lock, flags);
-	data = hi6421_spmi_pmic_read(pmic, offset);
-	data |= (1 << (irqd_to_hwirq(d) & 0x07));
-	hi6421_spmi_pmic_write(pmic, offset, data);
-	spin_unlock_irqrestore(&pmic->lock, flags);
-}
-
-static void hi6421_spmi_irq_unmask(struct irq_data *d)
-{
-	struct hi6421_spmi_pmic *pmic = irq_data_get_irq_chip_data(d);
-	u32 data, offset;
-	unsigned long flags;
-
-	offset = (irqd_to_hwirq(d) >> 3);
-	offset += SOC_PMIC_IRQ_MASK_0_ADDR;
-
-	spin_lock_irqsave(&pmic->lock, flags);
-	data = hi6421_spmi_pmic_read(pmic, offset);
-	data &= ~(1 << (irqd_to_hwirq(d) & 0x07));
-	hi6421_spmi_pmic_write(pmic, offset, data);
-	spin_unlock_irqrestore(&pmic->lock, flags);
-}
-
-static struct irq_chip hi6421_spmi_pmu_irqchip = {
-	.name		= "hisi-irq",
-	.irq_mask	= hi6421_spmi_irq_mask,
-	.irq_unmask	= hi6421_spmi_irq_unmask,
-	.irq_disable	= hi6421_spmi_irq_mask,
-	.irq_enable	= hi6421_spmi_irq_unmask,
-};
-
-static int hi6421_spmi_irq_map(struct irq_domain *d, unsigned int virq,
-			       irq_hw_number_t hw)
-{
-	struct hi6421_spmi_pmic *pmic = d->host_data;
-
-	irq_set_chip_and_handler_name(virq, &hi6421_spmi_pmu_irqchip,
-				      handle_simple_irq, "hisi");
-	irq_set_chip_data(virq, pmic);
-	irq_set_irq_type(virq, IRQ_TYPE_NONE);
-
-	return 0;
-}
-
-static const struct irq_domain_ops hi6421_spmi_domain_ops = {
-	.map	= hi6421_spmi_irq_map,
-	.xlate	= irq_domain_xlate_twocell,
-};
-
-static void hi6421_spmi_pmic_irq_prc(struct hi6421_spmi_pmic *pmic)
-{
-	int i, pending;
-
-	for (i = 0 ; i < HISI_IRQ_ARRAY; i++)
-		hi6421_spmi_pmic_write(pmic, SOC_PMIC_IRQ_MASK_0_ADDR + i,
-				       HISI_MASK_STATE);
-
-	for (i = 0 ; i < HISI_IRQ_ARRAY; i++) {
-		pending = hi6421_spmi_pmic_read(pmic, SOC_PMIC_IRQ0_ADDR + i);
-
-		pr_debug("PMU IRQ address value:irq[0x%x] = 0x%x\n",
-			 SOC_PMIC_IRQ0_ADDR + i, pending);
-		hi6421_spmi_pmic_write(pmic, SOC_PMIC_IRQ0_ADDR + i,
-				       HISI_MASK_STATE);
-	}
-}
-
-static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
-{
-	struct device *dev = &pdev->dev;
-	struct device_node *np = dev->of_node;
-	struct hi6421_spmi_pmic *pmic;
-	unsigned int virq;
-	int ret, i;
-
-	pmic = devm_kzalloc(dev, sizeof(*pmic), GFP_KERNEL);
-	if (!pmic)
-		return -ENOMEM;
-
-	spin_lock_init(&pmic->lock);
-
-	pmic->dev = dev;
-
-	pmic->gpio = of_get_gpio(np, 0);
-	if (pmic->gpio < 0)
-		return pmic->gpio;
-
-	if (!gpio_is_valid(pmic->gpio))
-		return -EINVAL;
-
-	ret = devm_gpio_request_one(dev, pmic->gpio, GPIOF_IN, "pmic");
-	if (ret < 0) {
-		dev_err(dev, "failed to request gpio%d\n", pmic->gpio);
-		return ret;
-	}
-
-	pmic->irq = gpio_to_irq(pmic->gpio);
-
-	hi6421_spmi_pmic_irq_prc(pmic);
-
-	pmic->irqs = devm_kzalloc(dev, HISI_IRQ_NUM * sizeof(int), GFP_KERNEL);
-	if (!pmic->irqs)
-		goto irq_malloc;
-
-	pmic->domain = irq_domain_add_simple(np, HISI_IRQ_NUM, 0,
-					     &hi6421_spmi_domain_ops, pmic);
-	if (!pmic->domain) {
-		dev_err(dev, "failed irq domain add simple!\n");
-		ret = -ENODEV;
-		goto irq_malloc;
-	}
-
-	for (i = 0; i < HISI_IRQ_NUM; i++) {
-		virq = irq_create_mapping(pmic->domain, i);
-		if (!virq) {
-			dev_err(dev, "Failed mapping hwirq\n");
-			ret = -ENOSPC;
-			goto irq_malloc;
-		}
-		pmic->irqs[i] = virq;
-		dev_dbg(dev, "%s: pmic->irqs[%d] = %d\n",
-			__func__, i, pmic->irqs[i]);
-	}
-
-	ret = request_threaded_irq(pmic->irq, hi6421_spmi_irq_handler, NULL,
-				   IRQF_TRIGGER_LOW | IRQF_SHARED | IRQF_NO_SUSPEND,
-				   "pmic", pmic);
-	if (ret < 0) {
-		dev_err(dev, "could not claim pmic IRQ: error %d\n", ret);
-		goto irq_malloc;
-	}
-
-	dev_set_drvdata(&pdev->dev, pmic);
-
-	/*
-	 * The logic below will rely that the pmic is already stored at
-	 * drvdata.
-	 */
-	dev_dbg(&pdev->dev, "SPMI-PMIC: adding children for %pOF\n",
-		pdev->dev.of_node);
-	ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
-				   hi6421v600_devs, ARRAY_SIZE(hi6421v600_devs),
-				   NULL, 0, NULL);
-	if (!ret)
-		return 0;
-
-	dev_err(dev, "Failed to add child devices: %d\n", ret);
-
-irq_malloc:
-	free_irq(pmic->irq, pmic);
-
-	return ret;
-}
-
-static void hi6421_spmi_pmic_remove(struct spmi_device *pdev)
-{
-	struct hi6421_spmi_pmic *pmic = dev_get_drvdata(&pdev->dev);
-
-	free_irq(pmic->irq, pmic);
-}
-
-static const struct of_device_id pmic_spmi_id_table[] = {
-	{ .compatible = "hisilicon,hi6421-spmi" },
-	{ }
-};
-MODULE_DEVICE_TABLE(of, pmic_spmi_id_table);
-
-static struct spmi_driver hi6421_spmi_pmic_driver = {
-	.driver = {
-		.name	= "hi6421-spmi-pmic",
-		.of_match_table = pmic_spmi_id_table,
-	},
-	.probe	= hi6421_spmi_pmic_probe,
-	.remove	= hi6421_spmi_pmic_remove,
-};
-module_spmi_driver(hi6421_spmi_pmic_driver);
-
-MODULE_DESCRIPTION("HiSilicon Hi6421v600 SPMI PMIC driver");
-MODULE_LICENSE("GPL v2");
diff --git a/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml b/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
deleted file mode 100644
index f385146d2bd1..000000000000
--- a/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
+++ /dev/null
@@ -1,133 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/mfd/hisilicon,hi6421-spmi-pmic.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: HiSilicon 6421v600 SPMI PMIC
-
-maintainers:
-  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
-
-description: |
-  HiSilicon 6421v600 should be connected inside a MIPI System Power Management
-  (SPMI) bus. It provides interrupts and power supply.
-
-  The GPIO and interrupt settings are represented as part of the top-level PMIC
-  node.
-
-  The SPMI controller part is provided by
-  drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml.
-
-properties:
-  $nodename:
-    pattern: "pmic@[0-9a-f]"
-
-  compatible:
-    const: hisilicon,hi6421v600-spmi
-
-  reg:
-    maxItems: 1
-
-  '#interrupt-cells':
-    const: 2
-
-  interrupt-controller:
-    description:
-      Identify that the PMIC is capable of behaving as an interrupt controller.
-
-  gpios:
-    maxItems: 1
-
-  regulators:
-    type: object
-
-    properties:
-      '#address-cells':
-        const: 1
-
-      '#size-cells':
-        const: 0
-
-    patternProperties:
-      '^ldo[0-9]+@[0-9a-f]$':
-        type: object
-
-        $ref: "/schemas/regulator/regulator.yaml#"
-
-required:
-  - compatible
-  - reg
-  - regulators
-
-examples:
-  - |
-    /* pmic properties */
-
-    pmic: pmic@0 {
-      compatible = "hisilicon,hi6421-spmi";
-      reg = <0 0>;
-
-      #interrupt-cells = <2>;
-      interrupt-controller;
-      gpios = <&gpio28 0 0>;
-
-      regulators {
-        #address-cells = <1>;
-        #size-cells = <0>;
-
-        ldo3: LDO3 {
-          regulator-name = "ldo3";
-          regulator-min-microvolt = <1500000>;
-          regulator-max-microvolt = <2000000>;
-          regulator-boot-on;
-        };
-
-        ldo4: LDO4 {
-          regulator-name = "ldo4";
-          regulator-min-microvolt = <1725000>;
-          regulator-max-microvolt = <1900000>;
-          regulator-boot-on;
-        };
-
-        ldo9: LDO9 {
-          regulator-name = "ldo9";
-          regulator-min-microvolt = <1750000>;
-          regulator-max-microvolt = <3300000>;
-          regulator-boot-on;
-        };
-
-        ldo15: LDO15 {
-          regulator-name = "ldo15";
-          regulator-min-microvolt = <1800000>;
-          regulator-max-microvolt = <3000000>;
-          regulator-always-on;
-        };
-
-        ldo16: LDO16 {
-          regulator-name = "ldo16";
-          regulator-min-microvolt = <1800000>;
-          regulator-max-microvolt = <3000000>;
-          regulator-boot-on;
-        };
-
-        ldo17: LDO17 {
-          regulator-name = "ldo17";
-          regulator-min-microvolt = <2500000>;
-          regulator-max-microvolt = <3300000>;
-        };
-
-        ldo33: LDO33 {
-          regulator-name = "ldo33";
-          regulator-min-microvolt = <2500000>;
-          regulator-max-microvolt = <3300000>;
-          regulator-boot-on;
-        };
-
-        ldo34: LDO34 {
-          regulator-name = "ldo34";
-          regulator-min-microvolt = <2600000>;
-          regulator-max-microvolt = <3300000>;
-        };
-      };
-    };
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

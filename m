Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80758308938
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 14:04:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F1FA92E141;
	Fri, 29 Jan 2021 13:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P-HfIgb6UX84; Fri, 29 Jan 2021 13:04:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5B5762E149;
	Fri, 29 Jan 2021 13:03:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 04B211BF379
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 13:03:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 014D1868AF
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 13:03:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h2Uq3b2JJfF7 for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 13:03:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B698686850
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 13:03:53 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 55D3864DED;
 Fri, 29 Jan 2021 13:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611925433;
 bh=CTpnQ1G3DtY/TZCq9doj0A1yfxh/G4F0Pf0FPeMj1jo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RqWcza0Bn6OEhYgMYjIx/lSxB1CPFtloa595c1AOq037KTz2Owb4FvH4hbNB4/aja
 5WWooS6epGjm2N31/d1TIGV8UpaRt2qgt/GB2u88qSubEdm/EdheBpM6p2pjfp2w/w
 KA+XWrTwpAKjTP5hOA9iAhv/HkLzSldHawLUfVdQfAx/C/x6OnC0GbA2h6vHw8SiAk
 8uwFJ8jhWiiu9IHKAOw9RCXMRQ6MssAOWDnvwY03xvUfsex9zmNT88vPap48P4ECls
 tFS3Y4MaDPlJSPHFRWZvGuMnADkxQ1W2ukzBFWGmG7y7rMTSzSIfOiXXKbuWrJZZeW
 aZUvEi740zt0Q==
Date: Fri, 29 Jan 2021 14:03:48 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 18/21] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20210129140348.6b151fcb@coco.lan>
In-Reply-To: <20210127110537.GI4903@dell>
References: <cover.1611072387.git.mchehab+huawei@kernel.org>
 <e79ffb200c52fc8c8926492cc82ac5dbcda3e3fb.1611072387.git.mchehab+huawei@kernel.org>
 <20210127110537.GI4903@dell>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Lee,

Em Wed, 27 Jan 2021 11:05:37 +0000
Lee Jones <lee.jones@linaro.org> escreveu:

> On Tue, 19 Jan 2021, Mauro Carvalho Chehab wrote:
> 
> > This driver is ready for mainstream. So, move it out of staging.
> > 

> Replied to an earlier submission where I was able to reply in-line.

Sorry! Infradead seemed to have some problem between Jan 26-27: emails
got late-delivered.

> > +static const struct mfd_cell hi6421v600_devs[] = {
> > +	{ .name = "hi6421v600-regulator", },
> > +};  
> 
> Where are the reset of the devices?

Not sure what you mean here. 

This MFD device provides:

	- an IRQ handler;
	- several LDO lines used by a regulator driver.

The IRQ handler is properly initialized here, while the
regulators are initialized by the regulator driver. The initial
state of this device is set up by u-boot.

So, AFAIKT, there's no need to have any reset line
attached here.

-

Yet, I'm still figuring out how the PCIe chips at Hikey 970
should be properly initialized. So, I may need to add something
somewhere in order to properly reset and power up the Ethernet,
M.2 and PCIe 1x slot.

Those are linked to the LDO 33.

> > +static void hi6421_spmi_irq_mask(struct irq_data *d)
> > +{
> > +	struct hi6421_spmi_pmic *pmic = irq_data_get_irq_chip_data(d);
> > +	unsigned long flags;
> > +	unsigned int data;
> > +	u32 offset;
> > +
> > +	offset = (irqd_to_hwirq(d) >> 3);  
> 
> Why 3? 

No idea. I don't have any datasheets from this device.

> Probably better to define these shifts/masks rather than use
> magic numbers with no comments.

I'll change the above to:

	#define HISI_IRQ_MASK			GENMASK(1, 0)

	offset = (irqd_to_hwirq(d) >> HISI_IRQ_MASK);


> > +	regmap_read(pmic->map, offset, &data);
> > +	data |= (1 << (irqd_to_hwirq(d) & 0x07));  
> 
> What are you doing here?
> 
> Maybe improved defines will be enough.  If not, please supply a
> suitable comment.

Again, no idea. The only documentation I had access to this chip is
at:

	https://www.96boards.org/documentation/consumer/hikey/hikey970/

With doesn't mention any register details.

The driver itself came from the Linaro's 96boards git tree, with also
doesn't contain any register mapping.

> > +		pr_debug("PMU IRQ address value:irq[0x%x] = 0x%x\n",
> > +			 SOC_PMIC_IRQ0_ADDR + i, pending);  
> 
> Again, is this actually useful to anyone now that the driver is nearly
> 10 years old.  Particularly anyone who can't add a quick printk()
> during a debug session?

With regards to the debug stuff, I'm dropping everything.

On a side comment, I doubt that the driver has 10 years old ;-)

See, Hikey 970 uses Kirin 970 SoC, which it was launched in Sept, 2017. 

The original version of this driver publicly debuted on this tree:

	https://github.com/96boards-hikey/linux/blob/hikey970-v4.9/drivers/mfd/hisi_pmic_spmi.c

On a commit made on Feb, 2018.

Ok, Hi6421v600 is a separate silicon, probably derivative from
Hi6421 (used on Hikey 960). Its copyright mentions 2011, but 
that's probably because the code itself came from older generations
of the regulator chipset.

-

Please see the enclosed patch for the new code after fixing the issues
you pointed. I'll re-submit it as a series once you're ok with the
code.

Thanks,
Mauro


[PATCH] mfd: hi6421-spmi-pmic: move driver from staging

This driver is ready for mainstream. So, move it out of staging.


PS.: I removed the staging part of this patch, just to make
     easier for reviewing the code. I'll re-post it as a
     proper series after receiving feedback from this version.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

diff --git a/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
new file mode 100644
index 000000000000..3b23ad56b31a
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
@@ -0,0 +1,135 @@
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
+additionalProperties: false
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
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index bdfce7b15621..d80ccbf50235 100644
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
index 14fdb188af02..b64e89ade44b 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -234,6 +234,7 @@ obj-$(CONFIG_MFD_IPAQ_MICRO)	+= ipaq-micro.o
 obj-$(CONFIG_MFD_IQS62X)	+= iqs62x.o
 obj-$(CONFIG_MFD_MENF21BMC)	+= menf21bmc.o
 obj-$(CONFIG_MFD_HI6421_PMIC)	+= hi6421-pmic-core.o
+obj-$(CONFIG_MFD_HI6421_SPMI)	+= hi6421-spmi-pmic.o
 obj-$(CONFIG_MFD_HI655X_PMIC)   += hi655x-pmic.o
 obj-$(CONFIG_MFD_DLN2)		+= dln2.o
 obj-$(CONFIG_MFD_RT5033)	+= rt5033.o
diff --git a/drivers/mfd/hi6421-spmi-pmic.c b/drivers/mfd/hi6421-spmi-pmic.c
new file mode 100644
index 000000000000..7a2c420f19da
--- /dev/null
+++ b/drivers/mfd/hi6421-spmi-pmic.c
@@ -0,0 +1,272 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device driver for regulators in HISI PMIC IC
+ *
+ * Copyright (c) 2013 Linaro Ltd.
+ * Copyright (c) 2011 Hisilicon.
+ * Copyright (c) 2020-2021 Huawei Technologies Co., Ltd
+ */
+
+#include <linux/bitops.h>
+#include <linux/interrupt.h>
+#include <linux/irq.h>
+#include <linux/mfd/core.h>
+#include <linux/mfd/hi6421-spmi-pmic.h>
+#include <linux/module.h>
+#include <linux/of_gpio.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <linux/spmi.h>
+
+enum hi6421_spmi_pmic_irq_list {
+	OTMP = 0,
+	VBUS_CONNECT,
+	VBUS_DISCONNECT,
+	ALARMON_R,
+	HOLD_6S,
+	HOLD_1S,
+	POWERKEY_UP,
+	POWERKEY_DOWN,
+	OCP_SCP_R,
+	COUL_R,
+	SIM0_HPD_R,
+	SIM0_HPD_F,
+	SIM1_HPD_R,
+	SIM1_HPD_F,
+	PMIC_IRQ_LIST_MAX,
+};
+
+#define HISI_IRQ_ARRAY			2
+#define HISI_IRQ_NUM			(HISI_IRQ_ARRAY * 8)
+#define HISI_IRQ_MASK			GENMASK(1, 0)
+
+#define SOC_PMIC_IRQ_MASK_0_ADDR	0x0202
+#define SOC_PMIC_IRQ0_ADDR		0x0212
+
+#define HISI_IRQ_KEY_NUM		0
+
+#define HISI_BITS			8
+#define HISI_IRQ_KEY_VALUE		(BIT(POWERKEY_DOWN) | BIT(POWERKEY_UP))
+#define HISI_MASK			GENMASK(HISI_BITS - 1, 0)
+
+static const struct mfd_cell hi6421v600_devs[] = {
+	{ .name = "hi6421v600-regulator", },
+};
+
+static irqreturn_t hi6421_spmi_irq_handler(int irq, void *priv)
+{
+	struct hi6421_spmi_pmic *ddata = (struct hi6421_spmi_pmic *)priv;
+	unsigned long pending;
+	unsigned int in;
+	int i, offset;
+
+	for (i = 0; i < HISI_IRQ_ARRAY; i++) {
+		regmap_read(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i, &in);
+		pending = HISI_MASK & in;
+		regmap_write(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i, pending);
+
+		if (i == HISI_IRQ_KEY_NUM &&
+		    (pending & HISI_IRQ_KEY_VALUE) == HISI_IRQ_KEY_VALUE) {
+			generic_handle_irq(ddata->irqs[POWERKEY_DOWN]);
+			generic_handle_irq(ddata->irqs[POWERKEY_UP]);
+			pending &= (~HISI_IRQ_KEY_VALUE);
+		}
+
+		if (!pending)
+			continue;
+
+		for_each_set_bit(offset, &pending, HISI_BITS)
+			generic_handle_irq(ddata->irqs[offset + i * HISI_BITS]);
+	}
+
+	return IRQ_HANDLED;
+}
+
+static void hi6421_spmi_irq_mask(struct irq_data *d)
+{
+	struct hi6421_spmi_pmic *ddata = irq_data_get_irq_chip_data(d);
+	unsigned long flags;
+	unsigned int data;
+	u32 offset;
+
+	offset = (irqd_to_hwirq(d) >> HISI_IRQ_MASK);
+	offset += SOC_PMIC_IRQ_MASK_0_ADDR;
+
+	spin_lock_irqsave(&ddata->lock, flags);
+
+	regmap_read(ddata->regmap, offset, &data);
+	data |= (1 << (irqd_to_hwirq(d) & 0x07));
+	regmap_write(ddata->regmap, offset, data);
+
+	spin_unlock_irqrestore(&ddata->lock, flags);
+}
+
+static void hi6421_spmi_irq_unmask(struct irq_data *d)
+{
+	struct hi6421_spmi_pmic *ddata = irq_data_get_irq_chip_data(d);
+	u32 data, offset;
+	unsigned long flags;
+
+	offset = (irqd_to_hwirq(d) >> 3);
+	offset += SOC_PMIC_IRQ_MASK_0_ADDR;
+
+	spin_lock_irqsave(&ddata->lock, flags);
+
+	regmap_read(ddata->regmap, offset, &data);
+	data &= ~(1 << (irqd_to_hwirq(d) & 0x07));
+	regmap_write(ddata->regmap, offset, data);
+
+	spin_unlock_irqrestore(&ddata->lock, flags);
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
+	struct hi6421_spmi_pmic *ddata = d->host_data;
+
+	irq_set_chip_and_handler_name(virq, &hi6421_spmi_pmu_irqchip,
+				      handle_simple_irq, "hisi");
+	irq_set_chip_data(virq, ddata);
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
+static void hi6421_spmi_pmic_irq_init(struct hi6421_spmi_pmic *ddata)
+{
+	int i;
+	unsigned int pending;
+
+	for (i = 0; i < HISI_IRQ_ARRAY; i++)
+		regmap_write(ddata->regmap, SOC_PMIC_IRQ_MASK_0_ADDR + i,
+				        HISI_MASK);
+
+	for (i = 0; i < HISI_IRQ_ARRAY; i++) {
+		regmap_read(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i, &pending);
+		regmap_write(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i,
+			     HISI_MASK);
+	}
+}
+
+static const struct regmap_config regmap_config = {
+	.reg_bits		= 16,
+	.val_bits		= HISI_BITS,
+	.max_register		= 0xffff,
+	.fast_io		= true
+};
+
+static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct hi6421_spmi_pmic *ddata;
+	unsigned int virq;
+	int ret, i;
+
+	ddata = devm_kzalloc(dev, sizeof(*ddata), GFP_KERNEL);
+	if (!ddata)
+		return -ENOMEM;
+
+	ddata->regmap = devm_regmap_init_spmi_ext(pdev, &regmap_config);
+	if (IS_ERR(ddata->regmap))
+		return PTR_ERR(ddata->regmap);
+
+	spin_lock_init(&ddata->lock);
+
+	ddata->dev = dev;
+
+	ddata->gpio = of_get_gpio(np, 0);
+	if (ddata->gpio < 0)
+		return ddata->gpio;
+
+	if (!gpio_is_valid(ddata->gpio))
+		return -EINVAL;
+
+	ret = devm_gpio_request_one(dev, ddata->gpio, GPIOF_IN, "pmic");
+	if (ret < 0) {
+		dev_err(dev, "Failed to request gpio%d\n", ddata->gpio);
+		return ret;
+	}
+
+	ddata->irq = gpio_to_irq(ddata->gpio);
+
+	hi6421_spmi_pmic_irq_init(ddata);
+
+	ddata->irqs = devm_kzalloc(dev, HISI_IRQ_NUM * sizeof(int), GFP_KERNEL);
+	if (!ddata->irqs)
+		return -ENOMEM;
+
+	ddata->domain = irq_domain_add_simple(np, HISI_IRQ_NUM, 0,
+					     &hi6421_spmi_domain_ops, ddata);
+	if (!ddata->domain) {
+		dev_err(dev, "Failed to create IRQ domain\n");
+		return -ENODEV;
+	}
+
+	for (i = 0; i < HISI_IRQ_NUM; i++) {
+		virq = irq_create_mapping(ddata->domain, i);
+		if (!virq) {
+			dev_err(dev, "Failed to map H/W IRQ\n");
+			return -ENOSPC;
+		}
+		ddata->irqs[i] = virq;
+	}
+
+	ret = request_threaded_irq(ddata->irq, hi6421_spmi_irq_handler, NULL,
+				   IRQF_TRIGGER_LOW | IRQF_SHARED | IRQF_NO_SUSPEND,
+				   "pmic", ddata);
+	if (ret < 0) {
+		dev_err(dev, "Failed to start IRQ handling thread: error %d\n",
+			ret);
+		return ret;
+	}
+
+	dev_set_drvdata(&pdev->dev, ddata);
+
+	ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
+				   hi6421v600_devs, ARRAY_SIZE(hi6421v600_devs),
+				   NULL, 0, NULL);
+	if (ret < 0)
+		dev_err(dev, "Failed to add child devices: %d\n", ret);
+
+	return ret;
+}
+
+static void hi6421_spmi_pmic_remove(struct spmi_device *pdev)
+{
+	struct hi6421_spmi_pmic *ddata = dev_get_drvdata(&pdev->dev);
+
+	free_irq(ddata->irq, ddata);
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

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

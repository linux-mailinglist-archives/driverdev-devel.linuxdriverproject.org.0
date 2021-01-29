Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCF3308DC1
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 20:52:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8328B2E136;
	Fri, 29 Jan 2021 19:52:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UEKltn+8CxdO; Fri, 29 Jan 2021 19:52:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1AE6A2E12E;
	Fri, 29 Jan 2021 19:52:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 009BD1C116E
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 19:52:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F0EBA86A24
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BdUnyDBTguez for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1694686A1D
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 58D9264E13;
 Fri, 29 Jan 2021 19:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611949925;
 bh=zfIq0NjrDts334Ax3uEVp+hJFSLf7KoRXisaUPGPv0I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IyN6jw9GEF9RtC1c9I8r980dysE6VkNaS2oM40NG9ArQl/cDutTXR4M9BYF1oKHSR
 g/Hxn+IbjeQKqUC4epzPv5qqeLNYR3P/sY41vrPqLpMySH3j103uPx1iPLOpkF554W
 WcsFr+PnQ1MIdHuEPJ4LsgZ513Ek5OEeeOts3JPVehCkI6geN0GvmISupa6tV3tahT
 xV1A1C+30h8UlpKJIPWuMyu4BGYJDrqZHKLKwFnieBS8LVQ7bpKKziOsRIAuUAfoX7
 T+MGcBVyWs8AW4dFwwHf3j/a6L+bht0HwS/pjqcjbWwBH4TcbGZLq4InUggO/jcAPY
 R4qVmR84SMIpQ==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l5ZoJ-007Wjg-0j; Fri, 29 Jan 2021 20:52:03 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v8 03/14] staging: hikey9xx: hi6421-spmi-pmic: rename some vars
Date: Fri, 29 Jan 2021 20:51:49 +0100
Message-Id: <d23592b11ac606e3b9a3ff95a754cb75921e60aa.1611949675.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611949675.git.mchehab+huawei@kernel.org>
References: <cover.1611949675.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Mayulong <mayulong1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

- When referring to regmap, rename map to regmap
- inside hi6421-spmi-pmic, call private data struct as
  ddata.

No functional changes.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c   | 104 +++++++++---------
 .../staging/hikey9xx/hi6421v600-regulator.c   |  10 +-
 include/linux/mfd/hi6421-spmi-pmic.h          |   2 +-
 3 files changed, 58 insertions(+), 58 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 3d612bd46231..a4ffeb06ed6a 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -43,17 +43,17 @@ static const struct mfd_cell hi6421v600_devs[] = {
 
 static irqreturn_t hi6421_spmi_irq_handler(int irq, void *priv)
 {
-	struct hi6421_spmi_pmic *pmic = (struct hi6421_spmi_pmic *)priv;
+	struct hi6421_spmi_pmic *ddata = (struct hi6421_spmi_pmic *)priv;
 	unsigned long pending;
 	unsigned int data;
 	int i, offset;
 
 	for (i = 0; i < HISI_IRQ_ARRAY; i++) {
-		regmap_read(pmic->map, offset, &data);
+		regmap_read(ddata->regmap, offset, &data);
 		data &= HISI_MASK_FIELD;
 		if (data != 0)
 			pr_debug("data[%d]=0x%d\n\r", i, data);
-		regmap_write(pmic->map, i + SOC_PMIC_IRQ0_ADDR, data);
+		regmap_write(ddata->regmap, i + SOC_PMIC_IRQ0_ADDR, data);
 
 		/* for_each_set_bit() macro requires unsigned long */
 		pending = data;
@@ -61,14 +61,14 @@ static irqreturn_t hi6421_spmi_irq_handler(int irq, void *priv)
 		/* solve powerkey order */
 		if ((i == HISI_IRQ_KEY_NUM) &&
 		    ((pending & HISI_IRQ_KEY_VALUE) == HISI_IRQ_KEY_VALUE)) {
-			generic_handle_irq(pmic->irqs[HISI_IRQ_KEY_DOWN]);
-			generic_handle_irq(pmic->irqs[HISI_IRQ_KEY_UP]);
+			generic_handle_irq(ddata->irqs[HISI_IRQ_KEY_DOWN]);
+			generic_handle_irq(ddata->irqs[HISI_IRQ_KEY_UP]);
 			pending &= (~HISI_IRQ_KEY_VALUE);
 		}
 
 		if (pending) {
 			for_each_set_bit(offset, &pending, HISI_BITS)
-				generic_handle_irq(pmic->irqs[offset + i * HISI_BITS]);
+				generic_handle_irq(ddata->irqs[offset + i * HISI_BITS]);
 		}
 	}
 
@@ -77,7 +77,7 @@ static irqreturn_t hi6421_spmi_irq_handler(int irq, void *priv)
 
 static void hi6421_spmi_irq_mask(struct irq_data *d)
 {
-	struct hi6421_spmi_pmic *pmic = irq_data_get_irq_chip_data(d);
+	struct hi6421_spmi_pmic *ddata = irq_data_get_irq_chip_data(d);
 	unsigned long flags;
 	unsigned int data;
 	u32 offset;
@@ -85,28 +85,28 @@ static void hi6421_spmi_irq_mask(struct irq_data *d)
 	offset = (irqd_to_hwirq(d) >> 3);
 	offset += SOC_PMIC_IRQ_MASK_0_ADDR;
 
-	spin_lock_irqsave(&pmic->lock, flags);
+	spin_lock_irqsave(&ddata->lock, flags);
 
-	regmap_read(pmic->map, offset, &data);
+	regmap_read(ddata->regmap, offset, &data);
 	data |= (1 << (irqd_to_hwirq(d) & 0x07));
-	regmap_write(pmic->map, offset, data);
-	spin_unlock_irqrestore(&pmic->lock, flags);
+	regmap_write(ddata->regmap, offset, data);
+	spin_unlock_irqrestore(&ddata->lock, flags);
 }
 
 static void hi6421_spmi_irq_unmask(struct irq_data *d)
 {
-	struct hi6421_spmi_pmic *pmic = irq_data_get_irq_chip_data(d);
+	struct hi6421_spmi_pmic *ddata = irq_data_get_irq_chip_data(d);
 	u32 data, offset;
 	unsigned long flags;
 
 	offset = (irqd_to_hwirq(d) >> 3);
 	offset += SOC_PMIC_IRQ_MASK_0_ADDR;
 
-	spin_lock_irqsave(&pmic->lock, flags);
-	regmap_read(pmic->map, offset, &data);
+	spin_lock_irqsave(&ddata->lock, flags);
+	regmap_read(ddata->regmap, offset, &data);
 	data &= ~(1 << (irqd_to_hwirq(d) & 0x07));
-	regmap_write(pmic->map, offset, data);
-	spin_unlock_irqrestore(&pmic->lock, flags);
+	regmap_write(ddata->regmap, offset, data);
+	spin_unlock_irqrestore(&ddata->lock, flags);
 }
 
 static struct irq_chip hi6421_spmi_pmu_irqchip = {
@@ -120,11 +120,11 @@ static struct irq_chip hi6421_spmi_pmu_irqchip = {
 static int hi6421_spmi_irq_map(struct irq_domain *d, unsigned int virq,
 			       irq_hw_number_t hw)
 {
-	struct hi6421_spmi_pmic *pmic = d->host_data;
+	struct hi6421_spmi_pmic *ddata = d->host_data;
 
 	irq_set_chip_and_handler_name(virq, &hi6421_spmi_pmu_irqchip,
 				      handle_simple_irq, "hisi");
-	irq_set_chip_data(virq, pmic);
+	irq_set_chip_data(virq, ddata);
 	irq_set_irq_type(virq, IRQ_TYPE_NONE);
 
 	return 0;
@@ -135,21 +135,21 @@ static const struct irq_domain_ops hi6421_spmi_domain_ops = {
 	.xlate	= irq_domain_xlate_twocell,
 };
 
-static void hi6421_spmi_pmic_irq_prc(struct hi6421_spmi_pmic *pmic)
+static void hi6421_spmi_pmic_irq_prc(struct hi6421_spmi_pmic *ddata)
 {
 	int i;
 	unsigned int pending;
 
 	for (i = 0 ; i < HISI_IRQ_ARRAY; i++)
-		regmap_write(pmic->map, SOC_PMIC_IRQ_MASK_0_ADDR + i,
+		regmap_write(ddata->regmap, SOC_PMIC_IRQ_MASK_0_ADDR + i,
 				       HISI_MASK_STATE);
 
 	for (i = 0 ; i < HISI_IRQ_ARRAY; i++) {
-		regmap_read(pmic->map, SOC_PMIC_IRQ0_ADDR + i, &pending);
+		regmap_read(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i, &pending);
 
 		pr_debug("PMU IRQ address value:irq[0x%x] = 0x%x\n",
 			 SOC_PMIC_IRQ0_ADDR + i, pending);
-		regmap_write(pmic->map, SOC_PMIC_IRQ0_ADDR + i,
+		regmap_write(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i,
 			     HISI_MASK_STATE);
 	}
 }
@@ -165,79 +165,79 @@ static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	struct hi6421_spmi_pmic *pmic;
+	struct hi6421_spmi_pmic *ddata;
 	struct regmap *map;
 	unsigned int virq;
 	int ret, i;
 
-	pmic = devm_kzalloc(dev, sizeof(*pmic), GFP_KERNEL);
-	if (!pmic)
+	ddata = devm_kzalloc(dev, sizeof(*ddata), GFP_KERNEL);
+	if (!ddata)
 		return -ENOMEM;
 
 	map = devm_regmap_init_spmi_ext(pdev, &spmi_regmap_config);
 	if (IS_ERR(map))
 		return PTR_ERR(map);
 
-	spin_lock_init(&pmic->lock);
+	spin_lock_init(&ddata->lock);
 
-	pmic->dev = dev;
-	pmic->map = map;
+	ddata->dev = dev;
+	ddata->regmap = map;
 
-	pmic->gpio = of_get_gpio(np, 0);
-	if (pmic->gpio < 0)
-		return pmic->gpio;
+	ddata->gpio = of_get_gpio(np, 0);
+	if (ddata->gpio < 0)
+		return ddata->gpio;
 
-	if (!gpio_is_valid(pmic->gpio))
+	if (!gpio_is_valid(ddata->gpio))
 		return -EINVAL;
 
-	ret = devm_gpio_request_one(dev, pmic->gpio, GPIOF_IN, "pmic");
+	ret = devm_gpio_request_one(dev, ddata->gpio, GPIOF_IN, "pmic");
 	if (ret < 0) {
-		dev_err(dev, "failed to request gpio%d\n", pmic->gpio);
+		dev_err(dev, "failed to request gpio%d\n", ddata->gpio);
 		return ret;
 	}
 
-	pmic->irq = gpio_to_irq(pmic->gpio);
+	ddata->irq = gpio_to_irq(ddata->gpio);
 
-	hi6421_spmi_pmic_irq_prc(pmic);
+	hi6421_spmi_pmic_irq_prc(ddata);
 
-	pmic->irqs = devm_kzalloc(dev, HISI_IRQ_NUM * sizeof(int), GFP_KERNEL);
-	if (!pmic->irqs) {
+	ddata->irqs = devm_kzalloc(dev, HISI_IRQ_NUM * sizeof(int), GFP_KERNEL);
+	if (!ddata->irqs) {
 		ret = -ENOMEM;
 		goto irq_malloc;
 	}
 
-	pmic->domain = irq_domain_add_simple(np, HISI_IRQ_NUM, 0,
-					     &hi6421_spmi_domain_ops, pmic);
-	if (!pmic->domain) {
+	ddata->domain = irq_domain_add_simple(np, HISI_IRQ_NUM, 0,
+					     &hi6421_spmi_domain_ops, ddata);
+	if (!ddata->domain) {
 		dev_err(dev, "failed irq domain add simple!\n");
 		ret = -ENODEV;
 		goto irq_malloc;
 	}
 
 	for (i = 0; i < HISI_IRQ_NUM; i++) {
-		virq = irq_create_mapping(pmic->domain, i);
+		virq = irq_create_mapping(ddata->domain, i);
 		if (!virq) {
 			dev_err(dev, "Failed mapping hwirq\n");
 			ret = -ENOSPC;
 			goto irq_malloc;
 		}
-		pmic->irqs[i] = virq;
-		dev_dbg(dev, "%s: pmic->irqs[%d] = %d\n",
-			__func__, i, pmic->irqs[i]);
+		ddata->irqs[i] = virq;
+		dev_dbg(dev, "%s: ddata->irqs[%d] = %d\n",
+			__func__, i, ddata->irqs[i]);
 	}
 
-	ret = request_threaded_irq(pmic->irq, hi6421_spmi_irq_handler, NULL,
+	ret = request_threaded_irq(ddata->irq, hi6421_spmi_irq_handler, NULL,
 				   IRQF_TRIGGER_LOW | IRQF_SHARED | IRQF_NO_SUSPEND,
-				   "pmic", pmic);
+				   "pmic", ddata);
 	if (ret < 0) {
 		dev_err(dev, "could not claim pmic IRQ: error %d\n", ret);
 		goto irq_malloc;
 	}
 
-	dev_set_drvdata(&pdev->dev, pmic);
+	dev_set_drvdata(&pdev->dev, ddata);
 
 	/*
-	 * The logic below will rely that the pmic is already stored at
+	 * The logic below will rely that the ddata is already stored at
 	 * drvdata.
 	 */
 	dev_dbg(&pdev->dev, "SPMI-PMIC: adding children for %pOF\n",
@@ -251,16 +251,16 @@ static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
 	dev_err(dev, "Failed to add child devices: %d\n", ret);
 
 irq_malloc:
-	free_irq(pmic->irq, pmic);
+	free_irq(ddata->irq, ddata);
 
 	return ret;
 }
 
 static void hi6421_spmi_pmic_remove(struct spmi_device *pdev)
 {
-	struct hi6421_spmi_pmic *pmic = dev_get_drvdata(&pdev->dev);
+	struct hi6421_spmi_pmic *ddata = dev_get_drvdata(&pdev->dev);
 
-	free_irq(pmic->irq, pmic);
+	free_irq(ddata->irq, ddata);
 }
 
 static const struct of_device_id pmic_spmi_id_table[] = {
diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 7090107b9ec2..c801bb840962 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -104,7 +104,7 @@ static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
 	/* cannot enable more than one regulator at one time */
 	mutex_lock(&sreg->enable_mutex);
 
-	ret = regmap_update_bits(pmic->map, rdev->desc->enable_reg,
+	ret = regmap_update_bits(pmic->regmap, rdev->desc->enable_reg,
 				 rdev->desc->enable_mask,
 			         rdev->desc->enable_mask);
 
@@ -121,7 +121,7 @@ static int hi6421_spmi_regulator_disable(struct regulator_dev *rdev)
 	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 
-	return regmap_update_bits(pmic->map, rdev->desc->enable_reg,
+	return regmap_update_bits(pmic->regmap, rdev->desc->enable_reg,
 				  rdev->desc->enable_mask, 0);
 }
 
@@ -131,7 +131,7 @@ static unsigned int hi6421_spmi_regulator_get_mode(struct regulator_dev *rdev)
 	struct hi6421_spmi_pmic *pmic = sreg->pmic;
 	u32 reg_val;
 
-	regmap_read(pmic->map, rdev->desc->enable_reg, &reg_val);
+	regmap_read(pmic->regmap, rdev->desc->enable_reg, &reg_val);
 
 	if (reg_val & sreg->eco_mode_mask)
 		return REGULATOR_MODE_IDLE;
@@ -157,7 +157,7 @@ static int hi6421_spmi_regulator_set_mode(struct regulator_dev *rdev,
 		return -EINVAL;
 	}
 
-	return regmap_update_bits(pmic->map, rdev->desc->enable_reg,
+	return regmap_update_bits(pmic->regmap, rdev->desc->enable_reg,
 				  sreg->eco_mode_mask, val);
 }
 
@@ -266,7 +266,7 @@ static int hi6421_spmi_regulator_probe(struct platform_device *pdev)
 
 		config.dev = pdev->dev.parent;
 		config.driver_data = sreg;
-		config.regmap = pmic->map;
+		config.regmap = pmic->regmap;
 
 		rdev = devm_regulator_register(dev, &info->desc, &config);
 		if (IS_ERR(rdev)) {
diff --git a/include/linux/mfd/hi6421-spmi-pmic.h b/include/linux/mfd/hi6421-spmi-pmic.h
index c5a4eac1fdc0..aa8d5382f559 100644
--- a/include/linux/mfd/hi6421-spmi-pmic.h
+++ b/include/linux/mfd/hi6421-spmi-pmic.h
@@ -26,7 +26,7 @@ struct hi6421_spmi_pmic {
 	int					irq;
 	int					gpio;
 	unsigned int				*irqs;
-	struct regmap				*map;
+	struct regmap				*regmap;
 };
 
 enum hi6421_spmi_pmic_irq_list {
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

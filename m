Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EDF248876
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 16:59:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 524D4878CD;
	Tue, 18 Aug 2020 14:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3pbH6qAK+Mgy; Tue, 18 Aug 2020 14:59:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD6B6877ED;
	Tue, 18 Aug 2020 14:59:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B5FD1BF25F
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 27F1C877E1
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:59:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bu4Q92rsoWPh for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 14:59:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5B14687765
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 14:59:05 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 04B382080C;
 Tue, 18 Aug 2020 14:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597762745;
 bh=lnB/C+wtTDf5qJEfErL7G/GGRvqR0kDSlrVPNDSfozM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=juOxBA/lRoFAxwUTT1zRw1+eWhcQlfFCZT8L3+CHVZ4UUJ0ay4++I4ddXMTJ+SkWc
 3sJ3qNgQqUL7YjssDHnt03DfOOzBxf/L4lzYjZYCVt4dQ/xh6c5eO1ZsrvU3ltExHc
 p7V2GcK6YrsbZ4JHKPJqnoB++qTcIUHPeO9EddNc=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k834p-00EGAe-1v; Tue, 18 Aug 2020 16:59:03 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/6] staging: mfd: hi6421-spmi-pmic: get rid of interrupt
 properties
Date: Tue, 18 Aug 2020 16:58:54 +0200
Message-Id: <e231244e42cb5b56240705cac2f987e11a078038.1597762400.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597762400.git.mchehab+huawei@kernel.org>
References: <cover.1597762400.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, John Stultz <john.stultz@linaro.org>,
 mauro.chehab@huawei.com, Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Both irqnum and irqarray properties reflect the same thing:
the number of bits and bytes for interrupts at this
chipset. E. g.:

	irqnum = 8 x irqarray

This can be seen by the way pending interrupts are handled:

	/* During probe time */
	pmic->irqs = devm_kzalloc(dev, pmic->irqnum * sizeof(int), GFP_KERNEL);

	/* While handling IRQs */
	for (i = 0; i < pmic->irqarray; i++) {
		pending = hi6421_spmi_pmic_read(pmic, (i + pmic->irq_addr));
		pending &= 0xff;

		for_each_set_bit(offset, &pending, 8)
			generic_handle_irq(pmic->irqs[offset + i * 8]);

	}

Going further, there are some logic at the driver which assumes
that irqarray is 2:

	/* solve powerkey order */
	if ((i == HISI_IRQ_KEY_NUM) &&
	    ((pending & HISI_IRQ_KEY_VALUE) == HISI_IRQ_KEY_VALUE)) {
		generic_handle_irq(pmic->irqs[HISI_IRQ_KEY_DOWN]);
		generic_handle_irq(pmic->irqs[HISI_IRQ_KEY_UP]);
		pending &= (~HISI_IRQ_KEY_VALUE);
	}

As HISI_IRQ_KEY_DOWN and HISI_IRQ_KEY_UP are fixed values
and don't depend on irqnum/irqarray.

The IRQ addr and mask addr seem to be also fixed, based on some
comments at the OF parsing code. So, get rid of them too,
removing the of parsing function completely.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 80 ++++++---------------
 include/linux/mfd/hi6421-spmi-pmic.h        | 15 ----
 2 files changed, 20 insertions(+), 75 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 9d73458ca65a..7817c0637737 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -38,6 +38,12 @@
 /* 8-bit register offset in PMIC */
 #define HISI_MASK_STATE			0xff
 
+#define HISI_IRQ_ARRAY			2
+#define HISI_IRQ_NUM			(HISI_IRQ_ARRAY * 8)
+
+#define SOC_PMIC_IRQ_MASK_0_ADDR	0x0202
+#define SOC_PMIC_IRQ0_ADDR		0x0212
+
 #define HISI_IRQ_KEY_NUM		0
 #define HISI_IRQ_KEY_VALUE		0xc0
 #define HISI_IRQ_KEY_DOWN		7
@@ -121,13 +127,13 @@ static irqreturn_t hi6421_spmi_irq_handler(int irq, void *data)
 	unsigned long pending;
 	int i, offset;
 
-	for (i = 0; i < pmic->irqarray; i++) {
-		pending = hi6421_spmi_pmic_read(pmic, (i + pmic->irq_addr));
+	for (i = 0; i < HISI_IRQ_ARRAY; i++) {
+		pending = hi6421_spmi_pmic_read(pmic, (i + SOC_PMIC_IRQ0_ADDR));
 		pending &= HISI_MASK_FIELD;
 		if (pending != 0)
 			pr_debug("pending[%d]=0x%lx\n\r", i, pending);
 
-		hi6421_spmi_pmic_write(pmic, (i + pmic->irq_addr), pending);
+		hi6421_spmi_pmic_write(pmic, (i + SOC_PMIC_IRQ0_ADDR), pending);
 
 		/* solve powerkey order */
 		if ((i == HISI_IRQ_KEY_NUM) &&
@@ -153,7 +159,7 @@ static void hi6421_spmi_irq_mask(struct irq_data *d)
 	unsigned long flags;
 
 	offset = (irqd_to_hwirq(d) >> 3);
-	offset += pmic->irq_mask_addr;
+	offset += SOC_PMIC_IRQ_MASK_0_ADDR;
 
 	spin_lock_irqsave(&pmic->lock, flags);
 	data = hi6421_spmi_pmic_read(pmic, offset);
@@ -169,7 +175,7 @@ static void hi6421_spmi_irq_unmask(struct irq_data *d)
 	unsigned long flags;
 
 	offset = (irqd_to_hwirq(d) >> 3);
-	offset += pmic->irq_mask_addr;
+	offset += SOC_PMIC_IRQ_MASK_0_ADDR;
 
 	spin_lock_irqsave(&pmic->lock, flags);
 	data = hi6421_spmi_pmic_read(pmic, offset);
@@ -204,60 +210,20 @@ static const struct irq_domain_ops hi6421_spmi_domain_ops = {
 	.xlate	= irq_domain_xlate_twocell,
 };
 
-static int get_pmic_device_tree_data(struct device_node *np,
-				     struct hi6421_spmi_pmic *pmic)
-{
-	int ret = 0;
-
-	/* IRQ number */
-	ret = of_property_read_u32(np, "irq-num", &pmic->irqnum);
-	if (ret) {
-		pr_err("no irq-num property set\n");
-		ret = -ENODEV;
-		return ret;
-	}
-
-	/* Size of IRQ array */
-	ret = of_property_read_u32(np, "irq-array", &pmic->irqarray);
-	if (ret) {
-		pr_err("no irq-array property set\n");
-		ret = -ENODEV;
-		return ret;
-	}
-
-	/* SOC_PMIC_IRQ_MASK_0_ADDR */
-	ret = of_property_read_u32(np, "irq-mask-addr", &pmic->irq_mask_addr);
-	if (ret) {
-		pr_err("no irq-mask-addr property set\n");
-		ret = -ENODEV;
-		return ret;
-	}
-
-	/* SOC_PMIC_IRQ0_ADDR */
-	ret = of_property_read_u32(np, "irq-addr", &pmic->irq_addr);
-	if (ret) {
-		pr_err("no irq-addr property set\n");
-		ret = -ENODEV;
-		return ret;
-	}
-
-	return ret;
-}
-
 static void hi6421_spmi_pmic_irq_prc(struct hi6421_spmi_pmic *pmic)
 {
 	int i, pending;
 
-	for (i = 0 ; i < pmic->irqarray; i++)
-		hi6421_spmi_pmic_write(pmic, pmic->irq_mask_addr + i,
+	for (i = 0 ; i < HISI_IRQ_ARRAY; i++)
+		hi6421_spmi_pmic_write(pmic, SOC_PMIC_IRQ_MASK_0_ADDR + i,
 				       HISI_MASK_STATE);
 
-	for (i = 0 ; i < pmic->irqarray; i++) {
-		pending = hi6421_spmi_pmic_read(pmic, pmic->irq_addr + i);
+	for (i = 0 ; i < HISI_IRQ_ARRAY; i++) {
+		pending = hi6421_spmi_pmic_read(pmic, SOC_PMIC_IRQ0_ADDR + i);
 
 		pr_debug("PMU IRQ address value:irq[0x%x] = 0x%x\n",
-			 pmic->irq_addr + i, pending);
-		hi6421_spmi_pmic_write(pmic, pmic->irq_addr + i,
+			 SOC_PMIC_IRQ0_ADDR + i, pending);
+		hi6421_spmi_pmic_write(pmic, SOC_PMIC_IRQ0_ADDR + i,
 				       HISI_MASK_STATE);
 	}
 }
@@ -274,12 +240,6 @@ static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
 	if (!pmic)
 		return -ENOMEM;
 
-	ret = get_pmic_device_tree_data(np, pmic);
-	if (ret) {
-		dev_err(dev, "Error reading hisi pmic dts\n");
-		return ret;
-	}
-
 	spin_lock_init(&pmic->lock);
 
 	pmic->dev = dev;
@@ -301,11 +261,11 @@ static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
 
 	hi6421_spmi_pmic_irq_prc(pmic);
 
-	pmic->irqs = devm_kzalloc(dev, pmic->irqnum * sizeof(int), GFP_KERNEL);
+	pmic->irqs = devm_kzalloc(dev, HISI_IRQ_NUM * sizeof(int), GFP_KERNEL);
 	if (!pmic->irqs)
 		goto irq_malloc;
 
-	pmic->domain = irq_domain_add_simple(np, pmic->irqnum, 0,
+	pmic->domain = irq_domain_add_simple(np, HISI_IRQ_NUM, 0,
 					     &hi6421_spmi_domain_ops, pmic);
 	if (!pmic->domain) {
 		dev_err(dev, "failed irq domain add simple!\n");
@@ -313,7 +273,7 @@ static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
 		goto irq_malloc;
 	}
 
-	for (i = 0; i < pmic->irqnum; i++) {
+	for (i = 0; i < HISI_IRQ_NUM; i++) {
 		virq = irq_create_mapping(pmic->domain, i);
 		if (!virq) {
 			dev_err(dev, "Failed mapping hwirq\n");
diff --git a/include/linux/mfd/hi6421-spmi-pmic.h b/include/linux/mfd/hi6421-spmi-pmic.h
index ff3adfa7b3ec..2c8896fd852e 100644
--- a/include/linux/mfd/hi6421-spmi-pmic.h
+++ b/include/linux/mfd/hi6421-spmi-pmic.h
@@ -17,16 +17,6 @@
 #define HISI_ECO_MODE_ENABLE		(1)
 #define HISI_ECO_MODE_DISABLE		(0)
 
-struct hi6421_spmi_irq_mask_info {
-	int start_addr;
-	int array;
-};
-
-struct hi6421_spmi_irq_info {
-	int start_addr;
-	int array;
-};
-
 struct hi6421_spmi_pmic {
 	struct resource				*res;
 	struct device				*dev;
@@ -36,11 +26,6 @@ struct hi6421_spmi_pmic {
 	int					irq;
 	int					gpio;
 	unsigned int				*irqs;
-
-	int					irqnum;
-	int					irqarray;
-	int					irq_mask_addr;
-	int					irq_addr;
 };
 
 int hi6421_spmi_pmic_read(struct hi6421_spmi_pmic *pmic, int reg);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

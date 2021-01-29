Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 141933089AB
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 16:04:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BBEDA8695F;
	Fri, 29 Jan 2021 15:04:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YTyTgnCtmRgZ; Fri, 29 Jan 2021 15:04:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 585AF86A1E;
	Fri, 29 Jan 2021 15:04:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E08A01C1148
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DE18E860AD
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HzZqBZcTL2nw for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0D19F85F9D
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6D15F64E03;
 Fri, 29 Jan 2021 15:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611932634;
 bh=pMLOYASNJWBwc5666+J0vpDC6VOGr0p29mUucbfDgn0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AHSiPLmNPHZ6zQ7sICiQyVdJ64sbafjCPXJRJms//o11NguymqZVUdytB31ChuhGZ
 K/wmjd2wUVbc4QopJDlvkQykJnc+eDjys/Hd0KingV8Zz3JGmZzg7JFqv4rXRbRRC2
 E443diNLUF95QaddbLRlMDpliJskSmP/hdilxZgtd/L6LAXqOPB1+nfr0s2HG+NtGm
 35LANukpBqL9uGkAN0vxIeP3cTXhB7iQ0i4Ui3W/R1iAj/3ZZ9UfcaYH1ArI7q0ylH
 cJHlzXy/dr1cSYcvtU4JVKIjyOqIBC16egErhf2QOsoOTkWB3ONCBlQAz6juqzxCwN
 76Ap4GtqdhyPw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l5VJQ-0078tI-15; Fri, 29 Jan 2021 16:03:52 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v7 07/14] staging: hikey9xx: hi6421-spmi-pmic: cleanup IRQ
 handling code
Date: Fri, 29 Jan 2021 16:03:42 +0100
Message-Id: <5a5b9cc718bf2fa161a8677504d72c3767b5f4e3.1611932194.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611932194.git.mchehab+huawei@kernel.org>
References: <cover.1611932194.git.mchehab+huawei@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Mayulong <mayulong1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

- Use BIT() and GENMASK();
- Remove duplicated mask definitions;
- Simplify the code under IRQ handler;
- Add a few extra blank lines to make easier to see
  spin_lock/spin_unlock;
- Remove debug code;
- Fix a few minor coding style issues.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 68 +++++++++------------
 1 file changed, 29 insertions(+), 39 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index ff13220c3038..f2af1760add9 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -7,6 +7,7 @@
 //
 // Copyright (c) 2020-2021 Huawei Technologies Co., Ltd
 
+#include <linux/bitops.h>
 #include <linux/interrupt.h>
 #include <linux/irq.h>
 #include <linux/mfd/core.h>
@@ -34,25 +35,19 @@ enum hi6421_spmi_pmic_irq_list {
 	SIM1_HPD_F,
 	PMIC_IRQ_LIST_MAX,
 };
-/* 8-bit register offset in PMIC */
-#define HISI_MASK_STATE			0xff
 
 #define HISI_IRQ_ARRAY			2
 #define HISI_IRQ_NUM			(HISI_IRQ_ARRAY * 8)
+#define HISI_IRQ_MASK			GENMASK(1, 0)
 
 #define SOC_PMIC_IRQ_MASK_0_ADDR	0x0202
 #define SOC_PMIC_IRQ0_ADDR		0x0212
 
 #define HISI_IRQ_KEY_NUM		0
-#define HISI_IRQ_KEY_VALUE		0xc0
-#define HISI_IRQ_KEY_DOWN		7
-#define HISI_IRQ_KEY_UP			6
 
-#define HISI_MASK_FIELD			0xFF
 #define HISI_BITS			8
-
-/*define the first group interrupt register number*/
-#define HISI_PMIC_FIRST_GROUP_INT_NUM	2
+#define HISI_IRQ_KEY_VALUE		(BIT(POWERKEY_DOWN) | BIT(POWERKEY_UP))
+#define HISI_MASK			GENMASK(HISI_BITS - 1, 0)
 
 static const struct mfd_cell hi6421v600_devs[] = {
 	{ .name = "hi6421v600-regulator", },
@@ -62,31 +57,26 @@ static irqreturn_t hi6421_spmi_irq_handler(int irq, void *priv)
 {
 	struct hi6421_spmi_pmic *ddata = (struct hi6421_spmi_pmic *)priv;
 	unsigned long pending;
-	unsigned int data;
+	unsigned int in;
 	int i, offset;
 
 	for (i = 0; i < HISI_IRQ_ARRAY; i++) {
-		regmap_read(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i, &data);
-		data &= HISI_MASK_FIELD;
-		if (data != 0)
-			pr_debug("data[%d]=0x%d\n\r", i, data);
-		regmap_write(ddata->regmap, i + SOC_PMIC_IRQ0_ADDR, data);
+		regmap_read(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i, &in);
+		pending = HISI_MASK & in;
+		regmap_write(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i, pending);
 
-		/* for_each_set_bit() macro requires unsigned long */
-		pending = data;
-
-		/* solve powerkey order */
-		if ((i == HISI_IRQ_KEY_NUM) &&
-		    ((pending & HISI_IRQ_KEY_VALUE) == HISI_IRQ_KEY_VALUE)) {
-			generic_handle_irq(ddata->irqs[HISI_IRQ_KEY_DOWN]);
-			generic_handle_irq(ddata->irqs[HISI_IRQ_KEY_UP]);
+		if (i == HISI_IRQ_KEY_NUM &&
+		    (pending & HISI_IRQ_KEY_VALUE) == HISI_IRQ_KEY_VALUE) {
+			generic_handle_irq(ddata->irqs[POWERKEY_DOWN]);
+			generic_handle_irq(ddata->irqs[POWERKEY_UP]);
 			pending &= (~HISI_IRQ_KEY_VALUE);
 		}
 
-		if (pending) {
-			for_each_set_bit(offset, &pending, HISI_BITS)
-				generic_handle_irq(ddata->irqs[offset + i * HISI_BITS]);
-		}
+		if (!pending)
+			continue;
+
+		for_each_set_bit(offset, &pending, HISI_BITS)
+			generic_handle_irq(ddata->irqs[offset + i * HISI_BITS]);
 	}
 
 	return IRQ_HANDLED;
@@ -99,7 +89,7 @@ static void hi6421_spmi_irq_mask(struct irq_data *d)
 	unsigned int data;
 	u32 offset;
 
-	offset = (irqd_to_hwirq(d) >> 3);
+	offset = (irqd_to_hwirq(d) >> HISI_IRQ_MASK);
 	offset += SOC_PMIC_IRQ_MASK_0_ADDR;
 
 	spin_lock_irqsave(&ddata->lock, flags);
@@ -107,6 +97,7 @@ static void hi6421_spmi_irq_mask(struct irq_data *d)
 	regmap_read(ddata->regmap, offset, &data);
 	data |= (1 << (irqd_to_hwirq(d) & 0x07));
 	regmap_write(ddata->regmap, offset, data);
+
 	spin_unlock_irqrestore(&ddata->lock, flags);
 }
 
@@ -120,9 +111,11 @@ static void hi6421_spmi_irq_unmask(struct irq_data *d)
 	offset += SOC_PMIC_IRQ_MASK_0_ADDR;
 
 	spin_lock_irqsave(&ddata->lock, flags);
+
 	regmap_read(ddata->regmap, offset, &data);
 	data &= ~(1 << (irqd_to_hwirq(d) & 0x07));
 	regmap_write(ddata->regmap, offset, data);
+
 	spin_unlock_irqrestore(&ddata->lock, flags);
 }
 
@@ -152,28 +145,25 @@ static const struct irq_domain_ops hi6421_spmi_domain_ops = {
 	.xlate	= irq_domain_xlate_twocell,
 };
 
-static void hi6421_spmi_pmic_irq_prc(struct hi6421_spmi_pmic *ddata)
+static void hi6421_spmi_pmic_irq_init(struct hi6421_spmi_pmic *ddata)
 {
 	int i;
 	unsigned int pending;
 
-	for (i = 0 ; i < HISI_IRQ_ARRAY; i++)
+	for (i = 0; i < HISI_IRQ_ARRAY; i++)
 		regmap_write(ddata->regmap, SOC_PMIC_IRQ_MASK_0_ADDR + i,
-				       HISI_MASK_STATE);
+				        HISI_MASK);
 
-	for (i = 0 ; i < HISI_IRQ_ARRAY; i++) {
+	for (i = 0; i < HISI_IRQ_ARRAY; i++) {
 		regmap_read(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i, &pending);
-
-		pr_debug("PMU IRQ address value:irq[0x%x] = 0x%x\n",
-			 SOC_PMIC_IRQ0_ADDR + i, pending);
 		regmap_write(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i,
-			     HISI_MASK_STATE);
+			     HISI_MASK);
 	}
 }
 
-static const struct regmap_config spmi_regmap_config = {
+static const struct regmap_config regmap_config = {
 	.reg_bits		= 16,
-	.val_bits		= 8,
+	.val_bits		= HISI_BITS,
 	.max_register		= 0xffff,
 	.fast_io		= true
 };
@@ -213,7 +203,7 @@ static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
 
 	ddata->irq = gpio_to_irq(ddata->gpio);
 
-	hi6421_spmi_pmic_irq_prc(ddata);
+	hi6421_spmi_pmic_irq_init(ddata);
 
 	ddata->irqs = devm_kzalloc(dev, HISI_IRQ_NUM * sizeof(int), GFP_KERNEL);
 	if (!ddata->irqs)
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

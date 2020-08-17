Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74526245D89
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:12:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2C29868B4;
	Mon, 17 Aug 2020 07:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 781xoRLELXpJ; Mon, 17 Aug 2020 07:12:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B58F868BD;
	Mon, 17 Aug 2020 07:12:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB7AA1BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A796A87C98
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AsN1s+c-fI3U for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B69198798E
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D90A22BEB;
 Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648277;
 bh=yeGeEeZElx9ji+9RbnVMpHixjFTYKMrkzQDTA1TA4/E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZTNmzCEIFL4icRdMV2UcMecaKn1NQ8OuUPWVyTRZDORHE4MNx8qNedJg7DozHBNFc
 nyQMgnvtacAAM4+00IQZFJFxoEHf3YNtdC+XSpE6Fxu6W3Poq4QfX4ft8eyNltm1KD
 jLv+7Z0olzIPS93n5mV3+j8A8XsdIFtOxGK+KcDk=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIZ-00Bdjr-DJ; Mon, 17 Aug 2020 09:11:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 14/44] staging: mfd: hi6421-spmi-pmic: get rid of the
 static vars
Date: Mon, 17 Aug 2020 09:10:33 +0200
Message-Id: <19c497fc2bb1d3a95863d92cac89869d5abe3f2e.1597647359.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597647359.git.mchehab+huawei@kernel.org>
References: <cover.1597647359.git.mchehab+huawei@kernel.org>
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, mauro.chehab@huawei.com,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are several static vars inside this driver.

Get rid of them.

While here, add a SPDX header file.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 224 ++++++++------------
 include/linux/mfd/hi6421-spmi-pmic.h        |  20 +-
 2 files changed, 97 insertions(+), 147 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 8b87d48b88b5..be42fed16bd2 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Device driver for regulators in HISI PMIC IC
  *
@@ -52,10 +53,7 @@
 /*define the first group interrupt register number*/
 #define HISI_PMIC_FIRST_GROUP_INT_NUM        2
 
-static struct bit_info g_pmic_vbus = {0};
-static struct hisi_pmic *g_pmic;
-static unsigned int g_extinterrupt_flag  = 0;
-static struct of_device_id of_hisi_pmic_match_tbl[] = {
+static const struct of_device_id of_hisi_pmic_match_tbl[] = {
 	{
 		.compatible = "hisilicon-hisi-pmic-spmi",
 	},
@@ -73,18 +71,14 @@ u32 hisi_pmic_read(struct hisi_pmic *pmic, int reg)
 	u8 read_value = 0;
 	struct spmi_device *pdev;
 
-	if (!g_pmic) {
-		pr_err("%s: g_pmic is NULL\n", __func__);
-		return 0;
-	}
-
-	pdev = to_spmi_device(g_pmic->dev);
+	pdev = to_spmi_device(pmic->dev);
 	if (!pdev) {
 		pr_err("%s: pdev get failed!\n", __func__);
 		return 0;
 	}
 
-	ret = spmi_ext_register_readl(pdev, reg, (unsigned char*)&read_value, 1);/*lint !e734 !e732 */
+	ret = spmi_ext_register_readl(pdev, reg,
+				      (unsigned char *)&read_value, 1);
 	if (ret) {
 		pr_err("%s: spmi_ext_register_readl failed!\n", __func__);
 		return 0;
@@ -98,18 +92,13 @@ void hisi_pmic_write(struct hisi_pmic *pmic, int reg, u32 val)
 	u32 ret;
 	struct spmi_device *pdev;
 
-	if (!g_pmic) {
-		pr_err("%s: g_pmic is NULL\n", __func__);
-		return;
-	}
-
-	pdev = to_spmi_device(g_pmic->dev);
+	pdev = to_spmi_device(pmic->dev);
 	if (!pdev) {
 		pr_err("%s: pdev get failed!\n", __func__);
 		return;
 	}
 
-	ret = spmi_ext_register_writel(pdev, reg, (unsigned char*)&val, 1);/*lint !e734 !e732 */
+	ret = spmi_ext_register_writel(pdev, reg, (unsigned char *)&val, 1);
 	if (ret) {
 		pr_err("%s: spmi_ext_register_writel failed!\n", __func__);
 		return;
@@ -122,16 +111,11 @@ void hisi_pmic_rmw(struct hisi_pmic *pmic, int reg, u32 mask, u32 bits)
 	u32 data;
 	unsigned long flags;
 
-	if (!g_pmic) {
-		pr_err("%s: g_pmic is NULL\n", __func__);
-		return;
-	}
-
-	spin_lock_irqsave(&g_pmic->lock, flags);
+	spin_lock_irqsave(&pmic->lock, flags);
 	data = hisi_pmic_read(pmic, reg) & ~mask;
 	data |= mask & bits;
 	hisi_pmic_write(pmic, reg, data);
-	spin_unlock_irqrestore(&g_pmic->lock, flags);
+	spin_unlock_irqrestore(&pmic->lock, flags);
 }
 EXPORT_SYMBOL(hisi_pmic_rmw);
 
@@ -142,16 +126,15 @@ static irqreturn_t hisi_irq_handler(int irq, void *data)
 	int i, offset;
 
 	for (i = 0; i < pmic->irqarray; i++) {
-		pending = hisi_pmic_read(g_pmic, (i + pmic->irq_addr.start_addr));
+		pending = hisi_pmic_read(pmic, (i + pmic->irq_addr.start_addr));
 		pending &= HISI_MASK_FIELD;
-		if (pending != 0) {
-			pr_info("pending[%d]=0x%lx\n\r", i, pending);
-		}
+		if (pending != 0)
+			pr_debug("pending[%d]=0x%lx\n\r", i, pending);
 
-		hisi_pmic_write(g_pmic, (i + pmic->irq_addr.start_addr), pending);
+		hisi_pmic_write(pmic, (i + pmic->irq_addr.start_addr), pending);
 
-		/*solve powerkey order*/
-		if ((HISI_IRQ_KEY_NUM == i) && ((pending & HISI_IRQ_KEY_VALUE) == HISI_IRQ_KEY_VALUE)) {
+		/* solve powerkey order */
+		if ((i == HISI_IRQ_KEY_NUM) && ((pending & HISI_IRQ_KEY_VALUE) == HISI_IRQ_KEY_VALUE)) {
 			generic_handle_irq(pmic->irqs[HISI_IRQ_KEY_DOWN]);
 			generic_handle_irq(pmic->irqs[HISI_IRQ_KEY_UP]);
 			pending &= (~HISI_IRQ_KEY_VALUE);
@@ -159,25 +142,25 @@ static irqreturn_t hisi_irq_handler(int irq, void *data)
 
 		if (pending) {
 			for_each_set_bit(offset, &pending, HISI_BITS)
-				generic_handle_irq(pmic->irqs[offset + i * HISI_BITS]);/*lint !e679 */
+				generic_handle_irq(pmic->irqs[offset + i * HISI_BITS]);
 		}
 	}
 
 	/*Handle the second group irq if analysis the second group irq from dtsi*/
-	if (1 == g_extinterrupt_flag){
+	if (pmic->g_extinterrupt_flag == 1) {
 		for (i = 0; i < pmic->irqarray1; i++) {
-			pending = hisi_pmic_read(g_pmic, (i + pmic->irq_addr1.start_addr));
+			pending = hisi_pmic_read(pmic, (i + pmic->irq_addr1.start_addr));
 			pending &= HISI_MASK_FIELD;
-			if (pending != 0) {
-				pr_info("pending[%d]=0x%lx\n\r", i, pending);
-			}
+			if (pending != 0)
+				pr_debug("pending[%d]=0x%lx\n\r", i, pending);
 
-			hisi_pmic_write(g_pmic, (i + pmic->irq_addr1.start_addr), pending);
+			hisi_pmic_write(pmic, (i + pmic->irq_addr1.start_addr), pending);
 
-			if (pending) {
-				for_each_set_bit(offset, &pending, HISI_BITS)
-					generic_handle_irq(pmic->irqs[offset + (i+HISI_PMIC_FIRST_GROUP_INT_NUM) * HISI_BITS]);/*lint !e679 */
-			}
+			if (!pending)
+				continue;
+
+			for_each_set_bit(offset, &pending, HISI_BITS)
+				generic_handle_irq(pmic->irqs[offset + (i + HISI_PMIC_FIRST_GROUP_INT_NUM) * HISI_BITS]);
 		}
 	}
 
@@ -190,25 +173,25 @@ static void hisi_irq_mask(struct irq_data *d)
 	u32 data, offset;
 	unsigned long flags;
 
-	if (NULL == g_pmic) {
-		pr_err(" g_pmic  is NULL\n");
-		return;
-	}
-
 	offset = (irqd_to_hwirq(d) >> 3);
-	if (1==g_extinterrupt_flag){
-		if ( offset < HISI_PMIC_FIRST_GROUP_INT_NUM)
+	if (pmic->g_extinterrupt_flag == 1) {
+		if (offset < HISI_PMIC_FIRST_GROUP_INT_NUM) {
 			offset += pmic->irq_mask_addr.start_addr;
-		else/*Change addr when irq num larger than 16 because interrupt addr is nonsequence*/
-			offset = offset+(pmic->irq_mask_addr1.start_addr)-HISI_PMIC_FIRST_GROUP_INT_NUM;
-	}else{
+		} else {
+			/*
+			 * Change addr when irq num larger than 16 because
+			 * interrupt addr is nonsequence
+			 */
+			offset = offset + (pmic->irq_mask_addr1.start_addr) - HISI_PMIC_FIRST_GROUP_INT_NUM;
+		}
+	} else {
 		offset += pmic->irq_mask_addr.start_addr;
 	}
-	spin_lock_irqsave(&g_pmic->lock, flags);
-	data = hisi_pmic_read(g_pmic, offset);
+	spin_lock_irqsave(&pmic->lock, flags);
+	data = hisi_pmic_read(pmic, offset);
 	data |= (1 << (irqd_to_hwirq(d) & 0x07));
-	hisi_pmic_write(g_pmic, offset, data);
-	spin_unlock_irqrestore(&g_pmic->lock, flags);
+	hisi_pmic_write(pmic, offset, data);
+	spin_unlock_irqrestore(&pmic->lock, flags);
 }
 
 static void hisi_irq_unmask(struct irq_data *d)
@@ -217,25 +200,20 @@ static void hisi_irq_unmask(struct irq_data *d)
 	u32 data, offset;
 	unsigned long flags;
 
-	if (NULL == g_pmic) {
-		pr_err(" g_pmic  is NULL\n");
-		return;
-	}
-
 	offset = (irqd_to_hwirq(d) >> 3);
-	if (1==g_extinterrupt_flag){
-		if ( offset < HISI_PMIC_FIRST_GROUP_INT_NUM)
+	if (pmic->g_extinterrupt_flag == 1) {
+		if (offset < HISI_PMIC_FIRST_GROUP_INT_NUM)
 			offset += pmic->irq_mask_addr.start_addr;
 		else
-			offset = offset+(pmic->irq_mask_addr1.start_addr)-HISI_PMIC_FIRST_GROUP_INT_NUM;
-	}else{
+			offset = offset + (pmic->irq_mask_addr1.start_addr) - HISI_PMIC_FIRST_GROUP_INT_NUM;
+	} else {
 		offset += pmic->irq_mask_addr.start_addr;
 	}
-	spin_lock_irqsave(&g_pmic->lock, flags);
-	data = hisi_pmic_read(g_pmic, offset);
+	spin_lock_irqsave(&pmic->lock, flags);
+	data = hisi_pmic_read(pmic, offset);
 	data &= ~(1 << (irqd_to_hwirq(d) & 0x07));
-	hisi_pmic_write(g_pmic, offset, data);
-	spin_unlock_irqrestore(&g_pmic->lock, flags);
+	hisi_pmic_write(pmic, offset, data);
+	spin_unlock_irqrestore(&pmic->lock, flags);
 }
 
 static struct irq_chip hisi_pmu_irqchip = {
@@ -247,7 +225,7 @@ static struct irq_chip hisi_pmu_irqchip = {
 };
 
 static int hisi_irq_map(struct irq_domain *d, unsigned int virq,
-			  irq_hw_number_t hw)
+			irq_hw_number_t hw)
 {
 	struct hisi_pmic *pmic = d->host_data;
 
@@ -259,19 +237,18 @@ static int hisi_irq_map(struct irq_domain *d, unsigned int virq,
 	return 0;
 }
 
-static struct irq_domain_ops hisi_domain_ops = {
+static const struct irq_domain_ops hisi_domain_ops = {
 	.map	= hisi_irq_map,
 	.xlate	= irq_domain_xlate_twocell,
 };
 
-/*lint -e570 -e64*/
 static int get_pmic_device_tree_data(struct device_node *np, struct hisi_pmic *pmic)
 {
 	int ret = 0;
 
 	/*get pmic irq num*/
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-num",
-						&(pmic->irqnum), 1);
+					 &pmic->irqnum, 1);
 	if (ret) {
 		pr_err("no hisilicon,hisi-pmic-irq-num property set\n");
 		ret = -ENODEV;
@@ -280,7 +257,7 @@ static int get_pmic_device_tree_data(struct device_node *np, struct hisi_pmic *p
 
 	/*get pmic irq array number*/
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-array",
-						&(pmic->irqarray), 1);
+					 &pmic->irqarray, 1);
 	if (ret) {
 		pr_err("no hisilicon,hisi-pmic-irq-array property set\n");
 		ret = -ENODEV;
@@ -289,7 +266,7 @@ static int get_pmic_device_tree_data(struct device_node *np, struct hisi_pmic *p
 
 	/*SOC_PMIC_IRQ_MASK_0_ADDR*/
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-mask-addr",
-						(int *)&pmic->irq_mask_addr, 2);
+					 (int *)&pmic->irq_mask_addr, 2);
 	if (ret) {
 		pr_err("no hisilicon,hisi-pmic-irq-mask-addr property set\n");
 		ret = -ENODEV;
@@ -298,24 +275,16 @@ static int get_pmic_device_tree_data(struct device_node *np, struct hisi_pmic *p
 
 	/*SOC_PMIC_IRQ0_ADDR*/
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-addr",
-						(int *)&pmic->irq_addr, 2);
+					 (int *)&pmic->irq_addr, 2);
 	if (ret) {
 		pr_err("no hisilicon,hisi-pmic-irq-addr property set\n");
 		ret = -ENODEV;
 		return ret;
 	}
 
-	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-vbus",
-						(u32 *)&g_pmic_vbus, 2);
-	if (ret) {
-		pr_err("no hisilicon,hisi-pmic-vbus property\n");
-		ret = -ENODEV;
-		return ret;
-	}
-
 	/*pmic lock*/
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-lock",
-						(int *)&pmic->normal_lock, 2);
+					 (int *)&pmic->normal_lock, 2);
 	if (ret) {
 		pr_err("no hisilicon,hisi-pmic-lock property set\n");
 		ret = -ENODEV;
@@ -324,7 +293,7 @@ static int get_pmic_device_tree_data(struct device_node *np, struct hisi_pmic *p
 
 	/*pmic debug lock*/
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-debug-lock",
-						(int *)&pmic->debug_lock, 2);
+					 (int *)&pmic->debug_lock, 2);
 	if (ret) {
 		pr_err("no hisilicon,hisi-pmic-debug-lock property set\n");
 		ret = -ENODEV;
@@ -332,17 +301,15 @@ static int get_pmic_device_tree_data(struct device_node *np, struct hisi_pmic *p
 	}
 
 	return ret;
-}/*lint -restore*/
+}
 
-
-/*lint -e570 -e64*/
 static int get_pmic_device_tree_data1(struct device_node *np, struct hisi_pmic *pmic)
 {
 	int ret = 0;
 
 	/*get pmic irq num*/
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-num1",
-						&(pmic->irqnum1), 1);
+					 &pmic->irqnum1, 1);
 	if (ret) {
 		pr_err("no hisilicon,hisi-pmic-irq-num1 property set\n");
 		ret = -ENODEV;
@@ -352,7 +319,7 @@ static int get_pmic_device_tree_data1(struct device_node *np, struct hisi_pmic *
 
 	/*get pmic irq array number*/
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-array1",
-						&(pmic->irqarray1), 1);
+					 &pmic->irqarray1, 1);
 	if (ret) {
 		pr_err("no hisilicon,hisi-pmic-irq-array1 property set\n");
 		ret = -ENODEV;
@@ -361,7 +328,7 @@ static int get_pmic_device_tree_data1(struct device_node *np, struct hisi_pmic *
 
 	/*SOC_PMIC_IRQ_MASK_0_ADDR*/
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-mask-addr1",
-						(int *)&pmic->irq_mask_addr1, 2);
+					 (int *)&pmic->irq_mask_addr1, 2);
 	if (ret) {
 		pr_err("no hisilicon,hisi-pmic-irq-mask-addr1 property set\n");
 		ret = -ENODEV;
@@ -370,43 +337,48 @@ static int get_pmic_device_tree_data1(struct device_node *np, struct hisi_pmic *
 
 	/*SOC_PMIC_IRQ0_ADDR*/
 	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-addr1",
-						(int *)&pmic->irq_addr1, 2);
+					 (int *)&pmic->irq_addr1, 2);
 	if (ret) {
 		pr_err("no hisilicon,hisi-pmic-irq-addr1 property set\n");
 		ret = -ENODEV;
 		return ret;
 	}
 
-	g_extinterrupt_flag = 1;
+	pmic->g_extinterrupt_flag = 1;
 	return ret;
-}/*lint -restore*/
+}
 
 static void hisi_pmic_irq_prc(struct hisi_pmic *pmic)
 {
 	int i;
-	for (i = 0 ; i < pmic->irq_mask_addr.array; i++) {
+
+	for (i = 0 ; i < pmic->irq_mask_addr.array; i++)
 		hisi_pmic_write(pmic, pmic->irq_mask_addr.start_addr + i, HISI_MASK_STATE);
-	}
 
 	for (i = 0 ; i < pmic->irq_addr.array; i++) {
 		unsigned int pending = hisi_pmic_read(pmic, pmic->irq_addr.start_addr + i);
-		pr_debug("PMU IRQ address value:irq[0x%x] = 0x%x\n", pmic->irq_addr.start_addr + i, pending);
+
+		pr_debug("PMU IRQ address value:irq[0x%x] = 0x%x\n",
+			 pmic->irq_addr.start_addr + i, pending);
 		hisi_pmic_write(pmic, pmic->irq_addr.start_addr + i, HISI_MASK_STATE);
 	}
-
 }
 
 static void hisi_pmic_irq1_prc(struct hisi_pmic *pmic)
 {
 	int i;
-	if(1 == g_extinterrupt_flag){
-		for (i = 0 ; i < pmic->irq_mask_addr1.array; i++) {
+	unsigned int pending1;
+
+	if (pmic->g_extinterrupt_flag == 1) {
+		for (i = 0 ; i < pmic->irq_mask_addr1.array; i++)
 			hisi_pmic_write(pmic, pmic->irq_mask_addr1.start_addr + i, HISI_MASK_STATE);
-		}
 
 		for (i = 0 ; i < pmic->irq_addr1.array; i++) {
-			unsigned int pending1 = hisi_pmic_read(pmic, pmic->irq_addr1.start_addr + i);
-			pr_debug("PMU IRQ address1 value:irq[0x%x] = 0x%x\n", pmic->irq_addr1.start_addr + i, pending1);
+			pending1 = hisi_pmic_read(pmic, pmic->irq_addr1.start_addr + i);
+
+			pr_debug("PMU IRQ address1 value:irq[0x%x] = 0x%x\n",
+				 pmic->irq_addr1.start_addr + i, pending1);
+
 			hisi_pmic_write(pmic, pmic->irq_addr1.start_addr + i, HISI_MASK_STATE);
 		}
 	}
@@ -424,36 +396,32 @@ static int hisi_pmic_probe(struct spmi_device *pdev)
 	unsigned int virq;
 
 	pmic = devm_kzalloc(dev, sizeof(*pmic), GFP_KERNEL);
-	if (!pmic) {
-		dev_err(dev, "cannot allocate hisi_pmic device info\n");
+	if (!pmic)
 		return -ENOMEM;
-	}
 
 	/*TODO: get pmic dts info*/
 	ret = get_pmic_device_tree_data(np, pmic);
 	if (ret) {
-		dev_err(&pdev->dev, "Error reading hisi pmic dts \n");
+		dev_err(&pdev->dev, "Error reading hisi pmic dts\n");
 		return ret;
 	}
 
 	/*get pmic dts the second group irq*/
 	ret = get_pmic_device_tree_data1(np, pmic);
-	if (ret) {
+	if (ret)
 		dev_err(&pdev->dev, "the platform don't support ext-interrupt.\n");
-	}
 
 	/* TODO: get and enable clk request */
 	spin_lock_init(&pmic->lock);
 
 	pmic->dev = dev;
-	g_pmic = pmic;
-	ret = of_property_read_u32_array(np, "hisilicon,pmic_fpga_flag", &fpga_flag, 1);
-	if (ret) {
+	ret = of_property_read_u32_array(np, "hisilicon,pmic_fpga_flag",
+					 &fpga_flag, 1);
+	if (ret)
 		pr_err("no hisilicon,pmic_fpga_flag property set\n");
-	}
-	if (PMIC_FPGA_FLAG == fpga_flag) {
+
+	if (fpga_flag == PMIC_FPGA_FLAG)
 		goto after_irq_register;
-	}
 
 	pmic->gpio = of_get_gpio_flags(np, 0, &flags);
 	if (pmic->gpio < 0)
@@ -477,12 +445,9 @@ static int hisi_pmic_probe(struct spmi_device *pdev)
 
 	pmic->irqnum += pmic->irqnum1;
 
-	pmic->irqs = (unsigned int *)devm_kmalloc(dev, pmic->irqnum * sizeof(int), GFP_KERNEL);
-	if (!pmic->irqs) {
-		pr_err("%s:Failed to alloc memory for pmic irq number!\n", __func__);
+	pmic->irqs = devm_kzalloc(dev, pmic->irqnum * sizeof(int), GFP_KERNEL);
+	if (!pmic->irqs)
 		goto irq_malloc;
-	}
-	memset(pmic->irqs, 0, pmic->irqnum);
 
 	pmic->domain = irq_domain_add_simple(np, pmic->irqnum, 0,
 					     &hisi_domain_ops, pmic);
@@ -504,7 +469,7 @@ static int hisi_pmic_probe(struct spmi_device *pdev)
 	}
 
 	ret = request_threaded_irq(pmic->irq, hisi_irq_handler, NULL,
-				IRQF_TRIGGER_LOW | IRQF_SHARED | IRQF_NO_SUSPEND,
+				   IRQF_TRIGGER_LOW | IRQF_SHARED | IRQF_NO_SUSPEND,
 				   "pmic", pmic);
 	if (ret < 0) {
 		dev_err(dev, "could not claim pmic %d\n", ret);
@@ -515,31 +480,28 @@ static int hisi_pmic_probe(struct spmi_device *pdev)
 after_irq_register:
 	return 0;
 
-
 request_theaded_irq:
 irq_create_mapping:
 irq_domain:
 irq_malloc:
 	gpio_free(pmic->gpio);
-	g_pmic = NULL;
 	return ret;
 }
 
 static void hisi_pmic_remove(struct spmi_device *pdev)
 {
-
 	struct hisi_pmic *pmic = dev_get_drvdata(&pdev->dev);
 
 	free_irq(pmic->irq, pmic);
 	gpio_free(pmic->gpio);
 	devm_kfree(&pdev->dev, pmic);
-
 }
+
 static int hisi_pmic_suspend(struct device *dev, pm_message_t state)
 {
 	struct hisi_pmic *pmic = dev_get_drvdata(dev);
 
-	if (NULL == pmic) {
+	if (!pmic) {
 		pr_err("%s:pmic is NULL\n", __func__);
 		return -ENOMEM;
 	}
@@ -548,13 +510,13 @@ static int hisi_pmic_suspend(struct device *dev, pm_message_t state)
 	pr_info("%s:-\n", __func__);
 
 	return 0;
-}/*lint !e715 */
+}
 
 static int hisi_pmic_resume(struct device *dev)
 {
 	struct hisi_pmic *pmic = dev_get_drvdata(dev);
 
-	if (NULL == pmic) {
+	if (!pmic) {
 		pr_err("%s:pmic is NULL\n", __func__);
 		return -ENOMEM;
 	}
@@ -588,10 +550,8 @@ static void __exit hisi_pmic_exit(void)
 	spmi_driver_unregister(&hisi_pmic_driver);
 }
 
-
 subsys_initcall_sync(hisi_pmic_init);
 module_exit(hisi_pmic_exit);
 
 MODULE_DESCRIPTION("PMIC driver");
 MODULE_LICENSE("GPL v2");
-
diff --git a/include/linux/mfd/hi6421-spmi-pmic.h b/include/linux/mfd/hi6421-spmi-pmic.h
index 5be9b4d3f207..e0a8b50f95fc 100644
--- a/include/linux/mfd/hi6421-spmi-pmic.h
+++ b/include/linux/mfd/hi6421-spmi-pmic.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Header file for device driver Hi6421 PMIC
  *
@@ -5,19 +6,6 @@
  * Copyright (C) 2011 Hisilicon.
  *
  * Guodong Xu <guodong.xu@linaro.org>
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
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
  */
 
 #ifndef	__HISI_PMIC_H
@@ -25,12 +13,12 @@
 
 #include <linux/irqdomain.h>
 
-#define HISI_REGS_ENA_PROTECT_TIME	(0) 	/* in microseconds */
+#define HISI_REGS_ENA_PROTECT_TIME	(0)	/* in microseconds */
 #define HISI_ECO_MODE_ENABLE		(1)
 #define HISI_ECO_MODE_DISABLE		(0)
 
 typedef int (*pmic_ocp_callback)(char *);
-extern int hisi_pmic_special_ocp_register(char *power_name, pmic_ocp_callback handler);
+int hisi_pmic_special_ocp_register(char *power_name, pmic_ocp_callback handler);
 
 struct irq_mask_info {
 	int start_addr;
@@ -71,6 +59,8 @@ struct hisi_pmic {
 	struct irq_info irq_addr1;
 	struct write_lock normal_lock;
 	struct write_lock debug_lock;
+
+	unsigned int g_extinterrupt_flag;
 };
 
 /* 0:disable; 1:enable */
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

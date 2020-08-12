Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CDB242C9F
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 17:57:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E8A9883C6;
	Wed, 12 Aug 2020 15:57:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 49hNFzOXFkzF; Wed, 12 Aug 2020 15:57:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97D8B88378;
	Wed, 12 Aug 2020 15:57:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A4F191BF2F5
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7541920355
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6zvuaw4NbaAH for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 64A25231EF
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E0C2222CAF;
 Wed, 12 Aug 2020 15:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597247820;
 bh=Nktt/voO/7pW9NRYLaDpqG4xPnYxdbU5C5SoAanc9LA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M/cz4amE8Y6iBEbQUwCXViQ4rumwPZd7NLgGFa8vls6J30R7TKNqHvZtBZF/iS5IB
 wz9Gxts4bDMMyJjrnxeKiNnHdL5KyqSin2D89FSIJfBm+wkngY4IKSdV2Khcg8TGVj
 /S/pYWdJD1l4o+Q2pZPi4HS484FJ+kl2qlo5Iyx8=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k5t7Z-005t62-Sk; Wed, 12 Aug 2020 17:56:57 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 11/44] staging: mfd: add a PMIC driver for HiSilicon 6421 SPMI
 version
Date: Wed, 12 Aug 2020 17:56:21 +0200
Message-Id: <b6c6d176271731b77c8b811766980e0cd4f693d6.1597247164.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597247164.git.mchehab+huawei@kernel.org>
References: <cover.1597247164.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Mayulong <mayulong1@huawei.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, mauro.chehab@huawei.com,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Mayulong <mayulong1@huawei.com>

Add the PMIC SPMI driver for the HiSilicon 6421v600.

[mchehab+huawei@kernel.org: keep just the MFD driver on this patch,
 and renamed filenames to better match other upstream drivers]

 The compete patch is at:
	https://github.com/96boards-hikey/linux/commit/08464419fba2

Signed-off-by: Mayulong <mayulong1@huawei.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 759 ++++++++++++++++++++
 include/linux/mfd/hi6421-spmi-pmic.h        | 165 +++++
 2 files changed, 924 insertions(+)
 create mode 100644 drivers/staging/hikey9xx/hi6421-spmi-pmic.c
 create mode 100644 include/linux/mfd/hi6421-spmi-pmic.h

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
new file mode 100644
index 000000000000..6bb0bc4b203b
--- /dev/null
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -0,0 +1,759 @@
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
+#include <linux/slab.h>
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/err.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/platform_device.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/of_gpio.h>
+#include <linux/of_irq.h>
+#include <linux/mfd/hisi_pmic.h>
+#include <linux/irq.h>
+#include <linux/spmi.h>
+#ifndef NO_IRQ
+#define NO_IRQ       0
+#endif
+
+/* 8-bit register offset in PMIC */
+#define HISI_MASK_STATE			0xff
+
+#define HISI_IRQ_KEY_NUM		0
+#define HISI_IRQ_KEY_VALUE		0xc0
+#define HISI_IRQ_KEY_DOWN		7
+#define HISI_IRQ_KEY_UP			6
+
+/*#define HISI_NR_IRQ			25*/
+#define HISI_MASK_FIELD		0xFF
+#define HISI_BITS			8
+#define PMIC_FPGA_FLAG          1
+
+/*define the first group interrupt register number*/
+#define HISI_PMIC_FIRST_GROUP_INT_NUM        2
+
+static struct bit_info g_pmic_vbus = {0};
+#ifndef BIT
+#define BIT(x)		(0x1U << (x))
+#endif
+
+static struct hisi_pmic *g_pmic;
+static unsigned int g_extinterrupt_flag  = 0;
+static struct of_device_id of_hisi_pmic_match_tbl[] = {
+	{
+		.compatible = "hisilicon-hisi-pmic-spmi",
+	},
+	{ /* end */ }
+};
+
+/*
+ * The PMIC register is only 8-bit.
+ * Hisilicon SoC use hardware to map PMIC register into SoC mapping.
+ * At here, we are accessing SoC register with 32-bit.
+ */
+u32 hisi_pmic_read(struct hisi_pmic *pmic, int reg)
+{
+	u32 ret;
+	u8 read_value = 0;
+	struct spmi_device *pdev;
+
+	if (NULL == g_pmic) {
+		pr_err(" g_pmic  is NULL\n");
+		return 0;
+	}
+
+	pdev = to_spmi_device(g_pmic->dev);
+	if (NULL == pdev) {
+		pr_err("%s:pdev get failed!\n", __func__);
+		return 0;
+	}
+
+	ret = spmi_ext_register_readl(pdev, reg, (unsigned char*)&read_value, 1);/*lint !e734 !e732 */
+	if (ret) {
+		pr_err("%s:spmi_ext_register_readl failed!\n", __func__);
+		return ret;
+	}
+	return (u32)read_value;
+}
+EXPORT_SYMBOL(hisi_pmic_read);
+
+void hisi_pmic_write(struct hisi_pmic *pmic, int reg, u32 val)
+{
+	u32 ret;
+	struct spmi_device *pdev;
+
+	if (NULL == g_pmic) {
+		pr_err(" g_pmic  is NULL\n");
+		return;
+	}
+
+	pdev = to_spmi_device(g_pmic->dev);
+	if (NULL == pdev) {
+		pr_err("%s:pdev get failed!\n", __func__);
+		return;
+	}
+
+	ret = spmi_ext_register_writel(pdev, reg, (unsigned char*)&val, 1);/*lint !e734 !e732 */
+	if (ret) {
+		pr_err("%s:spmi_ext_register_writel failed!\n", __func__);
+		return ;
+	}
+}
+EXPORT_SYMBOL(hisi_pmic_write);
+
+#ifdef CONFIG_HISI_DIEID
+u32 hisi_pmic_read_sub_pmu(u8 sid, int reg)
+{
+	u32 ret;
+	u8 read_value = 0;
+	struct spmi_device *pdev;
+
+	if(strstr(saved_command_line, "androidboot.swtype=factory"))
+	{
+		if (NULL == g_pmic) {
+			pr_err(" g_pmic  is NULL\n");
+			return -1;/*lint !e570 */
+		}
+
+		pdev = to_spmi_device(g_pmic->dev);
+		if (NULL == pdev) {
+			pr_err("%s:pdev get failed!\n", __func__);
+			return -1;/*lint !e570 */
+		}
+
+		ret = spmi_ext_register_readl(pdev->ctrl, sid, reg, (unsigned char*)&read_value, 1);/*lint !e734 !e732 */
+		if (ret) {
+			pr_err("%s:spmi_ext_register_readl failed!\n", __func__);
+			return ret;
+		}
+		return (u32)read_value;
+	}
+	return  0;
+}
+EXPORT_SYMBOL(hisi_pmic_read_sub_pmu);
+
+void hisi_pmic_write_sub_pmu(u8 sid, int reg, u32 val)
+{
+	u32 ret;
+	struct spmi_device *pdev;
+	if(strstr(saved_command_line, "androidboot.swtype=factory"))
+	{
+		if (NULL == g_pmic) {
+			pr_err(" g_pmic  is NULL\n");
+			return;
+		}
+
+		pdev = to_spmi_device(g_pmic->dev);
+		if (NULL == pdev) {
+			pr_err("%s:pdev get failed!\n", __func__);
+			return;
+		}
+
+		ret = spmi_ext_register_writel(pdev->ctrl, sid, reg, (unsigned char*)&val, 1);/*lint !e734 !e732 */
+		if (ret) {
+			pr_err("%s:spmi_ext_register_writel failed!\n", __func__);
+			return ;
+		}
+	}
+
+	return ;
+}
+EXPORT_SYMBOL(hisi_pmic_write_sub_pmu);
+#endif
+
+void hisi_pmic_rmw(struct hisi_pmic *pmic, int reg,
+		     u32 mask, u32 bits)
+{
+	u32 data;
+	unsigned long flags;
+
+	if (NULL == g_pmic) {
+		pr_err(" g_pmic  is NULL\n");
+		return;
+	}
+
+	spin_lock_irqsave(&g_pmic->lock, flags);
+	data = hisi_pmic_read(pmic, reg) & ~mask;
+	data |= mask & bits;
+	hisi_pmic_write(pmic, reg, data);
+	spin_unlock_irqrestore(&g_pmic->lock, flags);
+}
+EXPORT_SYMBOL(hisi_pmic_rmw);
+
+unsigned int hisi_pmic_reg_read(int addr)
+{
+	return (unsigned int)hisi_pmic_read(g_pmic, addr);
+}
+EXPORT_SYMBOL(hisi_pmic_reg_read);
+
+void hisi_pmic_reg_write(int addr, int val)
+{
+	hisi_pmic_write(g_pmic, addr, val);
+}
+EXPORT_SYMBOL(hisi_pmic_reg_write);
+
+void hisi_pmic_reg_write_lock(int addr, int val)
+{
+	unsigned long flags;
+
+	if (NULL == g_pmic) {
+		pr_err(" g_pmic  is NULL\n");
+		return;
+	}
+
+	spin_lock_irqsave(&g_pmic->lock, flags);
+	hisi_pmic_write(g_pmic, g_pmic->normal_lock.addr, g_pmic->normal_lock.val);
+	hisi_pmic_write(g_pmic, g_pmic->debug_lock.addr, g_pmic->debug_lock.val);
+	hisi_pmic_write(g_pmic, addr, val);
+	hisi_pmic_write(g_pmic, g_pmic->normal_lock.addr, 0);
+	hisi_pmic_write(g_pmic, g_pmic->debug_lock.addr, 0);
+	spin_unlock_irqrestore(&g_pmic->lock, flags);
+}
+
+int hisi_pmic_array_read(int addr, char *buff, unsigned int len)
+{
+	unsigned int i;
+
+	if ((len > 32) || (NULL == buff)) {
+		return -EINVAL;
+	}
+
+	/*
+	 * Here is a bug in the pmu die.
+	 * the coul driver will read 4 bytes,
+	 * but the ssi bus only read 1 byte, and the pmu die
+	 * will make sampling 1/10669us about vol cur,so the driver
+	 * read the data is not the same sampling
+	 */
+	for (i = 0; i < len; i++)
+	{
+		*(buff + i) = hisi_pmic_reg_read(addr+i);
+	}
+
+	return 0;
+}
+
+int hisi_pmic_array_write(int addr, char *buff, unsigned int len)
+{
+    unsigned int i;
+
+	if ((len > 32) || (NULL == buff)) {
+		return -EINVAL;
+	}
+
+	for (i = 0; i < len; i++)
+	{
+		hisi_pmic_reg_write(addr+i, *(buff + i));
+	}
+
+	return 0;
+}
+
+static irqreturn_t hisi_irq_handler(int irq, void *data)
+{
+	struct hisi_pmic *pmic = (struct hisi_pmic *)data;
+	unsigned long pending;
+	int i, offset;
+
+	for (i = 0; i < pmic->irqarray; i++) {
+		pending = hisi_pmic_reg_read((i + pmic->irq_addr.start_addr));
+		pending &= HISI_MASK_FIELD;
+		if (pending != 0) {
+			pr_info("pending[%d]=0x%lx\n\r", i, pending);
+		}
+
+		hisi_pmic_reg_write((i + pmic->irq_addr.start_addr), pending);
+
+		/*solve powerkey order*/
+		if ((HISI_IRQ_KEY_NUM == i) && ((pending & HISI_IRQ_KEY_VALUE) == HISI_IRQ_KEY_VALUE)) {
+			generic_handle_irq(pmic->irqs[HISI_IRQ_KEY_DOWN]);
+			generic_handle_irq(pmic->irqs[HISI_IRQ_KEY_UP]);
+			pending &= (~HISI_IRQ_KEY_VALUE);
+		}
+
+		if (pending) {
+			for_each_set_bit(offset, &pending, HISI_BITS)
+				generic_handle_irq(pmic->irqs[offset + i * HISI_BITS]);/*lint !e679 */
+		}
+	}
+
+	/*Handle the second group irq if analysis the second group irq from dtsi*/
+	if (1 == g_extinterrupt_flag){
+		for (i = 0; i < pmic->irqarray1; i++) {
+			pending = hisi_pmic_reg_read((i + pmic->irq_addr1.start_addr));
+			pending &= HISI_MASK_FIELD;
+			if (pending != 0) {
+				pr_info("pending[%d]=0x%lx\n\r", i, pending);
+			}
+
+			hisi_pmic_reg_write((i + pmic->irq_addr1.start_addr), pending);
+
+			if (pending) {
+				for_each_set_bit(offset, &pending, HISI_BITS)
+					generic_handle_irq(pmic->irqs[offset + (i+HISI_PMIC_FIRST_GROUP_INT_NUM) * HISI_BITS]);/*lint !e679 */
+			}
+		}
+	}
+
+	return IRQ_HANDLED;
+}
+
+static void hisi_irq_mask(struct irq_data *d)
+{
+	struct hisi_pmic *pmic = irq_data_get_irq_chip_data(d);
+	u32 data, offset;
+	unsigned long flags;
+
+	if (NULL == g_pmic) {
+		pr_err(" g_pmic  is NULL\n");
+		return;
+	}
+
+	offset = (irqd_to_hwirq(d) >> 3);
+	if (1==g_extinterrupt_flag){
+		if ( offset < HISI_PMIC_FIRST_GROUP_INT_NUM)
+			offset += pmic->irq_mask_addr.start_addr;
+		else/*Change addr when irq num larger than 16 because interrupt addr is nonsequence*/
+			offset = offset+(pmic->irq_mask_addr1.start_addr)-HISI_PMIC_FIRST_GROUP_INT_NUM;
+	}else{
+		offset += pmic->irq_mask_addr.start_addr;
+	}
+	spin_lock_irqsave(&g_pmic->lock, flags);
+	data = hisi_pmic_reg_read(offset);
+	data |= (1 << (irqd_to_hwirq(d) & 0x07));
+	hisi_pmic_reg_write(offset, data);
+	spin_unlock_irqrestore(&g_pmic->lock, flags);
+}
+
+static void hisi_irq_unmask(struct irq_data *d)
+{
+	struct hisi_pmic *pmic = irq_data_get_irq_chip_data(d);
+	u32 data, offset;
+	unsigned long flags;
+
+	if (NULL == g_pmic) {
+		pr_err(" g_pmic  is NULL\n");
+		return;
+	}
+
+	offset = (irqd_to_hwirq(d) >> 3);
+	if (1==g_extinterrupt_flag){
+		if ( offset < HISI_PMIC_FIRST_GROUP_INT_NUM)
+			offset += pmic->irq_mask_addr.start_addr;
+		else
+			offset = offset+(pmic->irq_mask_addr1.start_addr)-HISI_PMIC_FIRST_GROUP_INT_NUM;
+	}else{
+		offset += pmic->irq_mask_addr.start_addr;
+	}
+	spin_lock_irqsave(&g_pmic->lock, flags);
+	data = hisi_pmic_reg_read(offset);
+	data &= ~(1 << (irqd_to_hwirq(d) & 0x07)); /*lint !e502 */
+	hisi_pmic_reg_write(offset, data);
+	spin_unlock_irqrestore(&g_pmic->lock, flags);
+}
+
+static struct irq_chip hisi_pmu_irqchip = {
+	.name		= "hisi-irq",
+	.irq_mask	= hisi_irq_mask,
+	.irq_unmask	= hisi_irq_unmask,
+	.irq_disable	= hisi_irq_mask,
+	.irq_enable	= hisi_irq_unmask,
+};
+
+static int hisi_irq_map(struct irq_domain *d, unsigned int virq,
+			  irq_hw_number_t hw)
+{
+	struct hisi_pmic *pmic = d->host_data;
+
+	irq_set_chip_and_handler_name(virq, &hisi_pmu_irqchip,
+				      handle_simple_irq, "hisi");
+	irq_set_chip_data(virq, pmic);
+	irq_set_irq_type(virq, IRQ_TYPE_NONE);
+
+	return 0;
+}
+
+static struct irq_domain_ops hisi_domain_ops = {
+	.map	= hisi_irq_map,
+	.xlate	= irq_domain_xlate_twocell,
+};
+
+/*lint -e570 -e64*/
+static int get_pmic_device_tree_data(struct device_node *np, struct hisi_pmic *pmic)
+{
+	int ret = 0;
+
+	/*get pmic irq num*/
+	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-num",
+						&(pmic->irqnum), 1);
+	if (ret) {
+		pr_err("no hisilicon,hisi-pmic-irq-num property set\n");
+		ret = -ENODEV;
+		return ret;
+	}
+
+	/*get pmic irq array number*/
+	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-array",
+						&(pmic->irqarray), 1);
+	if (ret) {
+		pr_err("no hisilicon,hisi-pmic-irq-array property set\n");
+		ret = -ENODEV;
+		return ret;
+	}
+
+	/*SOC_PMIC_IRQ_MASK_0_ADDR*/
+	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-mask-addr",
+						(int *)&pmic->irq_mask_addr, 2);
+	if (ret) {
+		pr_err("no hisilicon,hisi-pmic-irq-mask-addr property set\n");
+		ret = -ENODEV;
+		return ret;
+	}
+
+	/*SOC_PMIC_IRQ0_ADDR*/
+	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-addr",
+						(int *)&pmic->irq_addr, 2);
+	if (ret) {
+		pr_err("no hisilicon,hisi-pmic-irq-addr property set\n");
+		ret = -ENODEV;
+		return ret;
+	}
+
+	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-vbus",
+						(u32 *)&g_pmic_vbus, 2);
+	if (ret) {
+		pr_err("no hisilicon,hisi-pmic-vbus property\n");
+		ret = -ENODEV;
+		return ret;
+	}
+
+	/*pmic lock*/
+	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-lock",
+						(int *)&pmic->normal_lock, 2);
+	if (ret) {
+		pr_err("no hisilicon,hisi-pmic-lock property set\n");
+		ret = -ENODEV;
+		return ret;
+	}
+
+	/*pmic debug lock*/
+	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-debug-lock",
+						(int *)&pmic->debug_lock, 2);
+	if (ret) {
+		pr_err("no hisilicon,hisi-pmic-debug-lock property set\n");
+		ret = -ENODEV;
+		return ret;
+	}
+
+	return ret;
+}/*lint -restore*/
+
+
+/*lint -e570 -e64*/
+static int get_pmic_device_tree_data1(struct device_node *np, struct hisi_pmic *pmic)
+{
+	int ret = 0;
+
+	/*get pmic irq num*/
+	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-num1",
+						&(pmic->irqnum1), 1);
+	if (ret) {
+		pr_err("no hisilicon,hisi-pmic-irq-num1 property set\n");
+		ret = -ENODEV;
+		pmic->irqnum1 = 0;
+		return ret;
+	}
+
+	/*get pmic irq array number*/
+	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-array1",
+						&(pmic->irqarray1), 1);
+	if (ret) {
+		pr_err("no hisilicon,hisi-pmic-irq-array1 property set\n");
+		ret = -ENODEV;
+		return ret;
+	}
+
+	/*SOC_PMIC_IRQ_MASK_0_ADDR*/
+	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-mask-addr1",
+						(int *)&pmic->irq_mask_addr1, 2);
+	if (ret) {
+		pr_err("no hisilicon,hisi-pmic-irq-mask-addr1 property set\n");
+		ret = -ENODEV;
+		return ret;
+	}
+
+	/*SOC_PMIC_IRQ0_ADDR*/
+	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-addr1",
+						(int *)&pmic->irq_addr1, 2);
+	if (ret) {
+		pr_err("no hisilicon,hisi-pmic-irq-addr1 property set\n");
+		ret = -ENODEV;
+		return ret;
+	}
+
+	g_extinterrupt_flag = 1;
+	return ret;
+}/*lint -restore*/
+
+int hisi_get_pmic_irq_byname(unsigned int pmic_irq_list)
+{
+	if ( NULL == g_pmic ) {
+		pr_err("[%s]g_pmic is NULL\n", __func__);
+		return -1;
+	}
+
+	if (pmic_irq_list > (unsigned int)g_pmic->irqnum) {
+		pr_err("[%s]input pmic irq number is error.\n", __func__);
+		return -1;
+	}
+	pr_info("%s:g_pmic->irqs[%d]=%d\n", __func__, pmic_irq_list, g_pmic->irqs[pmic_irq_list]);
+	return (int)g_pmic->irqs[pmic_irq_list];
+}
+EXPORT_SYMBOL(hisi_get_pmic_irq_byname);
+
+int hisi_pmic_get_vbus_status(void)
+{
+	if (0 == g_pmic_vbus.addr)
+		return -1;
+
+	if (hisi_pmic_reg_read(g_pmic_vbus.addr) & BIT(g_pmic_vbus.bit))
+		return 1;
+
+	return 0;
+}
+EXPORT_SYMBOL(hisi_pmic_get_vbus_status);
+
+static void hisi_pmic_irq_prc(struct hisi_pmic *pmic)
+{
+	int i;
+	for (i = 0 ; i < pmic->irq_mask_addr.array; i++) {
+		hisi_pmic_write(pmic, pmic->irq_mask_addr.start_addr + i, HISI_MASK_STATE);
+	}
+
+	for (i = 0 ; i < pmic->irq_addr.array; i++) {
+		unsigned int pending = hisi_pmic_read(pmic, pmic->irq_addr.start_addr + i);
+		pr_debug("PMU IRQ address value:irq[0x%x] = 0x%x\n", pmic->irq_addr.start_addr + i, pending);
+		hisi_pmic_write(pmic, pmic->irq_addr.start_addr + i, HISI_MASK_STATE);
+	}
+
+}
+
+static void hisi_pmic_irq1_prc(struct hisi_pmic *pmic)
+{
+	int i;
+	if(1 == g_extinterrupt_flag){
+		for (i = 0 ; i < pmic->irq_mask_addr1.array; i++) {
+			hisi_pmic_write(pmic, pmic->irq_mask_addr1.start_addr + i, HISI_MASK_STATE);
+		}
+
+		for (i = 0 ; i < pmic->irq_addr1.array; i++) {
+			unsigned int pending1 = hisi_pmic_read(pmic, pmic->irq_addr1.start_addr + i);
+			pr_debug("PMU IRQ address1 value:irq[0x%x] = 0x%x\n", pmic->irq_addr1.start_addr + i, pending1);
+			hisi_pmic_write(pmic, pmic->irq_addr1.start_addr + i, HISI_MASK_STATE);
+		}
+	}
+}
+
+static int hisi_pmic_probe(struct spmi_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct hisi_pmic *pmic = NULL;
+	enum of_gpio_flags flags;
+	int ret = 0;
+	int i;
+	unsigned int fpga_flag = 0;
+	unsigned int virq;
+
+	pmic = devm_kzalloc(dev, sizeof(*pmic), GFP_KERNEL);
+	if (!pmic) {
+		dev_err(dev, "cannot allocate hisi_pmic device info\n");
+		return -ENOMEM;
+	}
+
+	/*TODO: get pmic dts info*/
+	ret = get_pmic_device_tree_data(np, pmic);
+	if (ret) {
+		dev_err(&pdev->dev, "Error reading hisi pmic dts \n");
+		return ret;
+	}
+
+	/*get pmic dts the second group irq*/
+	ret = get_pmic_device_tree_data1(np, pmic);
+	if (ret) {
+		dev_err(&pdev->dev, "the platform don't support ext-interrupt.\n");
+	}
+
+	/* TODO: get and enable clk request */
+	spin_lock_init(&pmic->lock);
+
+	pmic->dev = dev;
+	g_pmic = pmic;
+	ret = of_property_read_u32_array(np, "hisilicon,pmic_fpga_flag", &fpga_flag, 1);
+	if (ret) {
+		pr_err("no hisilicon,pmic_fpga_flag property set\n");
+	}
+	if (PMIC_FPGA_FLAG == fpga_flag) {
+		goto after_irq_register;
+	}
+
+	pmic->gpio = of_get_gpio_flags(np, 0, &flags);
+	if (pmic->gpio < 0)
+		return pmic->gpio;
+
+	if (!gpio_is_valid(pmic->gpio))
+		return -EINVAL;
+
+	ret = gpio_request_one(pmic->gpio, GPIOF_IN, "pmic");
+	if (ret < 0) {
+		dev_err(dev, "failed to request gpio%d\n", pmic->gpio);
+		return ret;
+	}
+
+	pmic->irq = gpio_to_irq(pmic->gpio);
+
+	/* mask && clear IRQ status */
+	hisi_pmic_irq_prc(pmic);
+	/*clear && mask the new adding irq*/
+	hisi_pmic_irq1_prc(pmic);
+
+	pmic->irqnum += pmic->irqnum1;
+
+	pmic->irqs = (unsigned int *)devm_kmalloc(dev, pmic->irqnum * sizeof(int), GFP_KERNEL);
+	if (!pmic->irqs) {
+		pr_err("%s:Failed to alloc memory for pmic irq number!\n", __func__);
+		goto irq_malloc;
+	}
+	memset(pmic->irqs, 0, pmic->irqnum);
+
+	pmic->domain = irq_domain_add_simple(np, pmic->irqnum, 0,
+					     &hisi_domain_ops, pmic);
+	if (!pmic->domain) {
+		dev_err(dev, "failed irq domain add simple!\n");
+		ret = -ENODEV;
+		goto irq_domain;
+	}
+
+	for (i = 0; i < pmic->irqnum; i++) {
+		virq = irq_create_mapping(pmic->domain, i);
+		if (virq == NO_IRQ) {
+			pr_debug("Failed mapping hwirq\n");
+			ret = -ENOSPC;
+			goto irq_create_mapping;
+		}
+		pmic->irqs[i] = virq;
+		pr_info("[%s]. pmic->irqs[%d] = %d\n", __func__, i, pmic->irqs[i]);
+	}
+
+	ret = request_threaded_irq(pmic->irq, hisi_irq_handler, NULL,
+				IRQF_TRIGGER_LOW | IRQF_SHARED | IRQF_NO_SUSPEND,
+				   "pmic", pmic);
+	if (ret < 0) {
+		dev_err(dev, "could not claim pmic %d\n", ret);
+		ret = -ENODEV;
+		goto request_theaded_irq;
+	}
+
+after_irq_register:
+	return 0;
+
+
+request_theaded_irq:
+irq_create_mapping:
+irq_domain:
+irq_malloc:
+	gpio_free(pmic->gpio);
+	g_pmic = NULL;
+	return ret;
+}
+
+static void hisi_pmic_remove(struct spmi_device *pdev)
+{
+
+	struct hisi_pmic *pmic = dev_get_drvdata(&pdev->dev);
+
+	free_irq(pmic->irq, pmic);
+	gpio_free(pmic->gpio);
+	devm_kfree(&pdev->dev, pmic);
+
+}
+static int hisi_pmic_suspend(struct device *dev, pm_message_t state)
+{
+	struct hisi_pmic *pmic = dev_get_drvdata(dev);
+
+	if (NULL == pmic) {
+		pr_err("%s:pmic is NULL\n", __func__);
+		return -ENOMEM;
+	}
+
+	pr_info("%s:+\n", __func__);
+	pr_info("%s:-\n", __func__);
+
+	return 0;
+}/*lint !e715 */
+
+static int hisi_pmic_resume(struct device *dev)
+{
+	struct hisi_pmic *pmic = dev_get_drvdata(dev);
+
+	if (NULL == pmic) {
+		pr_err("%s:pmic is NULL\n", __func__);
+		return -ENOMEM;
+	}
+
+	pr_info("%s:+\n", __func__);
+	pr_info("%s:-\n", __func__);
+
+	return 0;
+}
+
+MODULE_DEVICE_TABLE(spmi, pmic_spmi_id);
+static struct spmi_driver hisi_pmic_driver = {
+	.driver = {
+		.name	= "hisi_pmic",
+		.owner  = THIS_MODULE,
+		.of_match_table = of_hisi_pmic_match_tbl,
+		.suspend = hisi_pmic_suspend,
+		.resume = hisi_pmic_resume,
+	},
+	.probe	= hisi_pmic_probe,
+	.remove	= hisi_pmic_remove,
+};
+
+static int __init hisi_pmic_init(void)
+{
+	return spmi_driver_register(&hisi_pmic_driver);
+}
+
+static void __exit hisi_pmic_exit(void)
+{
+	spmi_driver_unregister(&hisi_pmic_driver);
+}
+
+
+subsys_initcall_sync(hisi_pmic_init);
+module_exit(hisi_pmic_exit);
+
+MODULE_DESCRIPTION("PMIC driver");
+MODULE_LICENSE("GPL v2");
+
diff --git a/include/linux/mfd/hi6421-spmi-pmic.h b/include/linux/mfd/hi6421-spmi-pmic.h
new file mode 100644
index 000000000000..939b36f617c1
--- /dev/null
+++ b/include/linux/mfd/hi6421-spmi-pmic.h
@@ -0,0 +1,165 @@
+/*
+ * Header file for device driver Hi6421 PMIC
+ *
+ * Copyright (c) 2013 Linaro Ltd.
+ * Copyright (C) 2011 Hisilicon.
+ *
+ * Guodong Xu <guodong.xu@linaro.org>
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
+ * You should have received a copy of the GNU General Public License along
+ * with this program; if not, write to the Free Software Foundation, Inc.,
+ * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+ */
+
+#ifndef	__HISI_PMIC_H
+#define	__HISI_PMIC_H
+
+#include <linux/irqdomain.h>
+
+#define HISI_REGS_ENA_PROTECT_TIME	(0) 	/* in microseconds */
+#define HISI_ECO_MODE_ENABLE		(1)
+#define HISI_ECO_MODE_DISABLE		(0)
+
+typedef int (*pmic_ocp_callback)(char *);
+extern int hisi_pmic_special_ocp_register(char *power_name, pmic_ocp_callback handler);
+
+struct irq_mask_info {
+	int start_addr;
+	int array;
+};
+
+struct irq_info {
+	int start_addr;
+	int array;
+};
+
+struct bit_info {
+	int addr;
+	int bit;
+};
+
+struct write_lock {
+	int addr;
+	int val;
+};
+
+struct hisi_pmic {
+	struct resource		*res;
+	struct device		*dev;
+	void __iomem		*regs;
+	spinlock_t		lock;
+	struct irq_domain	*domain;
+	int			irq;
+	int			gpio;
+	unsigned int	*irqs;
+	int			irqnum;
+	int			irqarray;
+	struct irq_mask_info irq_mask_addr;
+	struct irq_info irq_addr;
+	int			irqnum1;
+	int			irqarray1;
+	struct irq_mask_info irq_mask_addr1;
+	struct irq_info irq_addr1;
+	struct write_lock normal_lock;
+	struct write_lock debug_lock;
+};
+
+/* 0:disable; 1:enable */
+unsigned int get_uv_mntn_status(void);
+void clear_uv_mntn_resered_reg_bit(void);
+void set_uv_mntn_resered_reg_bit(void);
+
+#if defined(CONFIG_HISI_PMIC) || defined(CONFIG_HISI_PMIC_PMU_SPMI)
+/* Register Access Helpers */
+u32 hisi_pmic_read(struct hisi_pmic *pmic, int reg);
+void hisi_pmic_write(struct hisi_pmic *pmic, int reg, u32 val);
+void hisi_pmic_rmw(struct hisi_pmic *pmic, int reg, u32 mask, u32 bits);
+unsigned int hisi_pmic_reg_read(int addr);
+void hisi_pmic_reg_write(int addr, int val);
+void hisi_pmic_reg_write_lock(int addr, int val);
+int hisi_pmic_array_read(int addr, char *buff, unsigned int len);
+int hisi_pmic_array_write(int addr, char *buff, unsigned int len);
+extern int hisi_get_pmic_irq_byname(unsigned int pmic_irq_list);
+extern int hisi_pmic_get_vbus_status(void);
+#if defined(CONFIG_HISI_DIEID)
+u32 hisi_pmic_read_sub_pmu(u8 sid ,int reg);
+void hisi_pmic_write_sub_pmu(u8 sid ,int reg, u32 val);
+#endif
+#else
+static inline u32 hisi_pmic_read(struct hisi_pmic *pmic, int reg) { return 0; }
+static inline void hisi_pmic_write(struct hisi_pmic *pmic, int reg, u32 val) {}
+static inline void hisi_pmic_rmw(struct hisi_pmic *pmic, int reg, u32 mask, u32 bits) {}
+static inline unsigned int hisi_pmic_reg_read(int addr) { return 0; }
+static inline void hisi_pmic_reg_write(int addr, int val) {}
+static inline void hisi_pmic_reg_write_lock(int addr, int val) {}
+static inline int hisi_pmic_array_read(int addr, char *buff, unsigned int len) { return 0; }
+static inline int hisi_pmic_array_write(int addr, char *buff, unsigned int len) { return 0; }
+static inline int hisi_get_pmic_irq_byname(unsigned int pmic_irq_list) { return -1; }
+static inline int hisi_pmic_get_vbus_status(void) { return 1; }
+static inline u32 hisi_pmic_read_sub_pmu(u8 sid ,int reg) { return 0; }
+static inline void hisi_pmic_write_sub_pmu(u8 sid ,int reg, u32 val) {}
+#endif
+
+#ifdef CONFIG_HISI_HI6421V500_PMU
+enum pmic_irq_list {
+	POR_D45MR = 0,
+	VBUS_CONNECT,
+	VBUS_DISCONNECT,
+	ALARMON_R,
+	HOLD_6S,
+	HOLD_1S,
+	POWERKEY_UP,
+	POWERKEY_DOWN,
+	OCP_SCP_R,
+	COUL_R,
+	VSYS_OV,
+	VSYS_UV,
+	VSYS_PWROFF_ABS,
+	VSYS_PWROFF_DEB,
+	THSD_OTMP140,
+	THSD_OTMP125,
+	HRESETN,
+	SIM0_HPD_R = 24,
+	SIM0_HPD_F,
+	SIM0_HPD_H,
+	SIM0_HPD_L,
+	SIM1_HPD_R,
+	SIM1_HPD_F,
+	SIM1_HPD_H,
+	SIM1_HPD_L,
+	PMIC_IRQ_LIST_MAX,
+};
+#else
+enum pmic_irq_list {
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
+#endif
+
+#ifdef CONFIG_HISI_SR_DEBUG
+extern void get_ip_regulator_state(void);
+#endif
+#endif		/* __HISI_PMIC_H */
+
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

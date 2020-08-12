Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E5F242C74
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 17:57:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D72186A9A;
	Wed, 12 Aug 2020 15:57:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FcjOxV-Q2gxz; Wed, 12 Aug 2020 15:57:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E92086A73;
	Wed, 12 Aug 2020 15:57:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E72C71BF2F5
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E3C6386A6C
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RBg6tMVT6wAW for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3E1EB86A57
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E684922CB3;
 Wed, 12 Aug 2020 15:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597247820;
 bh=8GNxSBcE1rBcmPZRNM+Aogsc1VbF9eSM/5Z18Uqta3c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GblNNRcUzXpkj3nGO77rtzW7km881+vbMcAJU3ma6YzwLA1DdBzH3eUQQpYb8wFTK
 htZZclYz621V60/MWJaf5vID6k2Onlh1G/N1TPh2q0pcz8BOdPCRxIvlWCo1moemYd
 CY+aEMuU+O9/8Rru6flol2YUfFV492PCGF1VSdt8=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k5t7a-005t69-0l; Wed, 12 Aug 2020 17:56:58 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 13/44] staging: mfd: hi6421-spmi-pmic: deal with non-static
 functions
Date: Wed, 12 Aug 2020 17:56:23 +0200
Message-Id: <5e62166096e8f7c957c93abb1c82c77592294412.1597247164.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Several functions aren't used outside the mfd driver. So,
either remove or make them static.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 147 ++++----------------
 1 file changed, 24 insertions(+), 123 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 809381eb6043..8b87d48b88b5 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -73,21 +73,21 @@ u32 hisi_pmic_read(struct hisi_pmic *pmic, int reg)
 	u8 read_value = 0;
 	struct spmi_device *pdev;
 
-	if (NULL == g_pmic) {
-		pr_err(" g_pmic  is NULL\n");
+	if (!g_pmic) {
+		pr_err("%s: g_pmic is NULL\n", __func__);
 		return 0;
 	}
 
 	pdev = to_spmi_device(g_pmic->dev);
-	if (NULL == pdev) {
-		pr_err("%s:pdev get failed!\n", __func__);
+	if (!pdev) {
+		pr_err("%s: pdev get failed!\n", __func__);
 		return 0;
 	}
 
 	ret = spmi_ext_register_readl(pdev, reg, (unsigned char*)&read_value, 1);/*lint !e734 !e732 */
 	if (ret) {
-		pr_err("%s:spmi_ext_register_readl failed!\n", __func__);
-		return ret;
+		pr_err("%s: spmi_ext_register_readl failed!\n", __func__);
+		return 0;
 	}
 	return (u32)read_value;
 }
@@ -98,34 +98,32 @@ void hisi_pmic_write(struct hisi_pmic *pmic, int reg, u32 val)
 	u32 ret;
 	struct spmi_device *pdev;
 
-	if (NULL == g_pmic) {
-		pr_err(" g_pmic  is NULL\n");
+	if (!g_pmic) {
+		pr_err("%s: g_pmic is NULL\n", __func__);
 		return;
 	}
 
 	pdev = to_spmi_device(g_pmic->dev);
-	if (NULL == pdev) {
-		pr_err("%s:pdev get failed!\n", __func__);
+	if (!pdev) {
+		pr_err("%s: pdev get failed!\n", __func__);
 		return;
 	}
 
 	ret = spmi_ext_register_writel(pdev, reg, (unsigned char*)&val, 1);/*lint !e734 !e732 */
 	if (ret) {
-		pr_err("%s:spmi_ext_register_writel failed!\n", __func__);
-		return ;
+		pr_err("%s: spmi_ext_register_writel failed!\n", __func__);
+		return;
 	}
 }
 EXPORT_SYMBOL(hisi_pmic_write);
 
-
-void hisi_pmic_rmw(struct hisi_pmic *pmic, int reg,
-		     u32 mask, u32 bits)
+void hisi_pmic_rmw(struct hisi_pmic *pmic, int reg, u32 mask, u32 bits)
 {
 	u32 data;
 	unsigned long flags;
 
-	if (NULL == g_pmic) {
-		pr_err(" g_pmic  is NULL\n");
+	if (!g_pmic) {
+		pr_err("%s: g_pmic is NULL\n", __func__);
 		return;
 	}
 
@@ -137,75 +135,6 @@ void hisi_pmic_rmw(struct hisi_pmic *pmic, int reg,
 }
 EXPORT_SYMBOL(hisi_pmic_rmw);
 
-unsigned int hisi_pmic_reg_read(int addr)
-{
-	return (unsigned int)hisi_pmic_read(g_pmic, addr);
-}
-EXPORT_SYMBOL(hisi_pmic_reg_read);
-
-void hisi_pmic_reg_write(int addr, int val)
-{
-	hisi_pmic_write(g_pmic, addr, val);
-}
-EXPORT_SYMBOL(hisi_pmic_reg_write);
-
-void hisi_pmic_reg_write_lock(int addr, int val)
-{
-	unsigned long flags;
-
-	if (NULL == g_pmic) {
-		pr_err(" g_pmic  is NULL\n");
-		return;
-	}
-
-	spin_lock_irqsave(&g_pmic->lock, flags);
-	hisi_pmic_write(g_pmic, g_pmic->normal_lock.addr, g_pmic->normal_lock.val);
-	hisi_pmic_write(g_pmic, g_pmic->debug_lock.addr, g_pmic->debug_lock.val);
-	hisi_pmic_write(g_pmic, addr, val);
-	hisi_pmic_write(g_pmic, g_pmic->normal_lock.addr, 0);
-	hisi_pmic_write(g_pmic, g_pmic->debug_lock.addr, 0);
-	spin_unlock_irqrestore(&g_pmic->lock, flags);
-}
-
-int hisi_pmic_array_read(int addr, char *buff, unsigned int len)
-{
-	unsigned int i;
-
-	if ((len > 32) || (NULL == buff)) {
-		return -EINVAL;
-	}
-
-	/*
-	 * Here is a bug in the pmu die.
-	 * the coul driver will read 4 bytes,
-	 * but the ssi bus only read 1 byte, and the pmu die
-	 * will make sampling 1/10669us about vol cur,so the driver
-	 * read the data is not the same sampling
-	 */
-	for (i = 0; i < len; i++)
-	{
-		*(buff + i) = hisi_pmic_reg_read(addr+i);
-	}
-
-	return 0;
-}
-
-int hisi_pmic_array_write(int addr, char *buff, unsigned int len)
-{
-    unsigned int i;
-
-	if ((len > 32) || (NULL == buff)) {
-		return -EINVAL;
-	}
-
-	for (i = 0; i < len; i++)
-	{
-		hisi_pmic_reg_write(addr+i, *(buff + i));
-	}
-
-	return 0;
-}
-
 static irqreturn_t hisi_irq_handler(int irq, void *data)
 {
 	struct hisi_pmic *pmic = (struct hisi_pmic *)data;
@@ -213,13 +142,13 @@ static irqreturn_t hisi_irq_handler(int irq, void *data)
 	int i, offset;
 
 	for (i = 0; i < pmic->irqarray; i++) {
-		pending = hisi_pmic_reg_read((i + pmic->irq_addr.start_addr));
+		pending = hisi_pmic_read(g_pmic, (i + pmic->irq_addr.start_addr));
 		pending &= HISI_MASK_FIELD;
 		if (pending != 0) {
 			pr_info("pending[%d]=0x%lx\n\r", i, pending);
 		}
 
-		hisi_pmic_reg_write((i + pmic->irq_addr.start_addr), pending);
+		hisi_pmic_write(g_pmic, (i + pmic->irq_addr.start_addr), pending);
 
 		/*solve powerkey order*/
 		if ((HISI_IRQ_KEY_NUM == i) && ((pending & HISI_IRQ_KEY_VALUE) == HISI_IRQ_KEY_VALUE)) {
@@ -237,13 +166,13 @@ static irqreturn_t hisi_irq_handler(int irq, void *data)
 	/*Handle the second group irq if analysis the second group irq from dtsi*/
 	if (1 == g_extinterrupt_flag){
 		for (i = 0; i < pmic->irqarray1; i++) {
-			pending = hisi_pmic_reg_read((i + pmic->irq_addr1.start_addr));
+			pending = hisi_pmic_read(g_pmic, (i + pmic->irq_addr1.start_addr));
 			pending &= HISI_MASK_FIELD;
 			if (pending != 0) {
 				pr_info("pending[%d]=0x%lx\n\r", i, pending);
 			}
 
-			hisi_pmic_reg_write((i + pmic->irq_addr1.start_addr), pending);
+			hisi_pmic_write(g_pmic, (i + pmic->irq_addr1.start_addr), pending);
 
 			if (pending) {
 				for_each_set_bit(offset, &pending, HISI_BITS)
@@ -276,9 +205,9 @@ static void hisi_irq_mask(struct irq_data *d)
 		offset += pmic->irq_mask_addr.start_addr;
 	}
 	spin_lock_irqsave(&g_pmic->lock, flags);
-	data = hisi_pmic_reg_read(offset);
+	data = hisi_pmic_read(g_pmic, offset);
 	data |= (1 << (irqd_to_hwirq(d) & 0x07));
-	hisi_pmic_reg_write(offset, data);
+	hisi_pmic_write(g_pmic, offset, data);
 	spin_unlock_irqrestore(&g_pmic->lock, flags);
 }
 
@@ -303,9 +232,9 @@ static void hisi_irq_unmask(struct irq_data *d)
 		offset += pmic->irq_mask_addr.start_addr;
 	}
 	spin_lock_irqsave(&g_pmic->lock, flags);
-	data = hisi_pmic_reg_read(offset);
-	data &= ~(1 << (irqd_to_hwirq(d) & 0x07)); /*lint !e502 */
-	hisi_pmic_reg_write(offset, data);
+	data = hisi_pmic_read(g_pmic, offset);
+	data &= ~(1 << (irqd_to_hwirq(d) & 0x07));
+	hisi_pmic_write(g_pmic, offset, data);
 	spin_unlock_irqrestore(&g_pmic->lock, flags);
 }
 
@@ -452,34 +381,6 @@ static int get_pmic_device_tree_data1(struct device_node *np, struct hisi_pmic *
 	return ret;
 }/*lint -restore*/
 
-int hisi_get_pmic_irq_byname(unsigned int pmic_irq_list)
-{
-	if ( NULL == g_pmic ) {
-		pr_err("[%s]g_pmic is NULL\n", __func__);
-		return -1;
-	}
-
-	if (pmic_irq_list > (unsigned int)g_pmic->irqnum) {
-		pr_err("[%s]input pmic irq number is error.\n", __func__);
-		return -1;
-	}
-	pr_info("%s:g_pmic->irqs[%d]=%d\n", __func__, pmic_irq_list, g_pmic->irqs[pmic_irq_list]);
-	return (int)g_pmic->irqs[pmic_irq_list];
-}
-EXPORT_SYMBOL(hisi_get_pmic_irq_byname);
-
-int hisi_pmic_get_vbus_status(void)
-{
-	if (0 == g_pmic_vbus.addr)
-		return -1;
-
-	if (hisi_pmic_reg_read(g_pmic_vbus.addr) & BIT(g_pmic_vbus.bit))
-		return 1;
-
-	return 0;
-}
-EXPORT_SYMBOL(hisi_pmic_get_vbus_status);
-
 static void hisi_pmic_irq_prc(struct hisi_pmic *pmic)
 {
 	int i;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

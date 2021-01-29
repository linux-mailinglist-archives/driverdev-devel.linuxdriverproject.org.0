Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E24C1308DBD
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 20:52:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D48886A61;
	Fri, 29 Jan 2021 19:52:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7l9cFIZjHN3U; Fri, 29 Jan 2021 19:52:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E6E686A24;
	Fri, 29 Jan 2021 19:52:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D235C1C1148
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CEEAC86A2D
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7BGNaqEwvQ6T for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5117886A24
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 626F164E16;
 Fri, 29 Jan 2021 19:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611949925;
 bh=7JLtK1ZG6Fg/i5KmUg42DfpdW1WhNDzqH82CShEOGJQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WBDHKe/ZX896ep26XLUYFGFSV3wwfO1AV0TH7Yxo99eIp6tq6pCH00F5RNPskqD3/
 KOq4UUrtU2C9cpPlworWicMar/qjpxqCUXCq3VaC+GMu8x0x1m4aEIXwPjVnNW1UVc
 TTEr1QmOgF4rI93b+iU4pu6tsZB1o6+Ibxa7TcyAYjUNWW9whfxDzJVdcArup3PJNd
 PHJZSxl/GryiCWPKBYbAJGAyj+t6lVrNSVBvomv4hfpcj0oaKzbz4FRXrD1tnXxYMx
 VJgJl8sVPjYXzf5bhH9Jee1LVZwUgsxciPKprP+FHoZoilSQC0khJ8X2g1VuZQTJeN
 szAHihamZ1rgg==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l5ZoJ-007Wjr-5c; Fri, 29 Jan 2021 20:52:03 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v8 08/14] staging: hikey9xx: hi6421-spmi-pmic: document
 registers
Date: Fri, 29 Jan 2021 20:51:54 +0100
Message-Id: <10f52ec0a8346fb883245344886c44714c859cd1.1611949675.git.mchehab+huawei@kernel.org>
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

Make it clearer about how the IRQ registers are filled by adding
a table with them, with two macros used to calculate the mask
register.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 39 +++++++++++++++++----
 1 file changed, 32 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index f2af1760add9..9c10f7c4e7c9 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -38,10 +38,6 @@ enum hi6421_spmi_pmic_irq_list {
 
 #define HISI_IRQ_ARRAY			2
 #define HISI_IRQ_NUM			(HISI_IRQ_ARRAY * 8)
-#define HISI_IRQ_MASK			GENMASK(1, 0)
-
-#define SOC_PMIC_IRQ_MASK_0_ADDR	0x0202
-#define SOC_PMIC_IRQ0_ADDR		0x0212
 
 #define HISI_IRQ_KEY_NUM		0
 
@@ -49,6 +45,36 @@ enum hi6421_spmi_pmic_irq_list {
 #define HISI_IRQ_KEY_VALUE		(BIT(POWERKEY_DOWN) | BIT(POWERKEY_UP))
 #define HISI_MASK			GENMASK(HISI_BITS - 1, 0)
 
+/*
+ * The IRQs are mapped as:
+ *
+ * 	======================  =============   ============	=====
+ *	IRQ			MASK REGISTER 	IRQ REGISTER	BIT
+ * 	======================  =============   ============	=====
+ *	OTMP			0x0202		0x212		bit 0
+ *	VBUS_CONNECT		0x0202		0x212		bit 1
+ *	VBUS_DISCONNECT		0x0202		0x212		bit 2
+ *	ALARMON_R		0x0202		0x212		bit 3
+ *	HOLD_6S			0x0202		0x212		bit 4
+ *	HOLD_1S			0x0202		0x212		bit 5
+ *	POWERKEY_UP		0x0202		0x212		bit 6
+ *	POWERKEY_DOWN		0x0202		0x212		bit 7
+ *
+ *	OCP_SCP_R		0x0203		0x213		bit 0
+ *	COUL_R			0x0203		0x213		bit 1
+ *	SIM0_HPD_R		0x0203		0x213		bit 2
+ *	SIM0_HPD_F		0x0203		0x213		bit 3
+ *	SIM1_HPD_R		0x0203		0x213		bit 4
+ *	SIM1_HPD_F		0x0203		0x213		bit 5
+ * 	======================  =============   ============	=====
+ */
+#define SOC_PMIC_IRQ_MASK_0_ADDR	0x0202
+#define SOC_PMIC_IRQ0_ADDR		0x0212
+
+#define IRQ_MASK_REGISTER(irq_data)	(SOC_PMIC_IRQ_MASK_0_ADDR + \
+					 (irqd_to_hwirq(irq_data) >> 3))
+#define IRQ_MASK_BIT(irq_data)		BIT(irqd_to_hwirq(irq_data) & 0x07)
+
 static const struct mfd_cell hi6421v600_devs[] = {
 	{ .name = "hi6421v600-regulator", },
 };
@@ -89,13 +115,12 @@ static void hi6421_spmi_irq_mask(struct irq_data *d)
 	unsigned int data;
 	u32 offset;
 
-	offset = (irqd_to_hwirq(d) >> HISI_IRQ_MASK);
-	offset += SOC_PMIC_IRQ_MASK_0_ADDR;
+	offset = IRQ_MASK_REGISTER(d);
 
 	spin_lock_irqsave(&ddata->lock, flags);
 
 	regmap_read(ddata->regmap, offset, &data);
-	data |= (1 << (irqd_to_hwirq(d) & 0x07));
+	data |= IRQ_MASK_BIT(d);
 	regmap_write(ddata->regmap, offset, data);
 
 	spin_unlock_irqrestore(&ddata->lock, flags);
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

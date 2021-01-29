Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 031933089B1
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 16:04:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7BFD52E12A;
	Fri, 29 Jan 2021 15:04:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AdFB5I31N-tw; Fri, 29 Jan 2021 15:04:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 78DBD2E135;
	Fri, 29 Jan 2021 15:04:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A2691BF9D1
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:03:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 56F16873DC
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:03:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HBX2RDDWNjQU for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 43FB287367
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 15:03:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6A87664E08;
 Fri, 29 Jan 2021 15:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611932634;
 bh=FF4qVYVoHKWiVCEbECKVqB/6iDhV4fznwsGIFfZxKd4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qUlHYLkb8IGSrcIWSk/OTmq030pEr5WpzvPBWJ8kUydVqnWUltEzQ6eu/JRXVjJRT
 mPOo0U4ZRLkx5rLyL/AiVfmKjxNaCqW1hLJz+lu1Ykuh7WPbH52eC4Q6+cHzOvBcEj
 CET7at5myjWod1Ler+gbDgoA3scbm/NuhaW3zxSx+CL4vYKo8dNqKLWTD6TeoU7uOP
 wzVLHQ/gc4tuOjUMxVfZ/LatIJIetB7p5jgiJ83CEyN2NlcflVJ7l0JjtwybTnTo3z
 jBZlqp1JREYVckibwZUP5iREMWzXe2uXTlDE+tVcwsOaeqbq7CPgXI4LKglWJRbc3e
 zvTMgzg5X/Osg==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l5VJQ-0078tK-2B; Fri, 29 Jan 2021 16:03:52 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v7 08/14] staging: hikey9xx: hi6421-spmi-pmic: document
 registers
Date: Fri, 29 Jan 2021 16:03:43 +0100
Message-Id: <b1c918de966583d9633431b3904425b773c08861.1611932194.git.mchehab+huawei@kernel.org>
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

Make it clearer about how the IRQ registers are filled by adding
a table with them, with two macros used to calculate the mask
register.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 38 +++++++++++++++++----
 1 file changed, 31 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index f2af1760add9..b11401ebcc03 100644
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
 
@@ -49,6 +45,35 @@ enum hi6421_spmi_pmic_irq_list {
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
+#define IRQ_MASK_REGISTER(irq_data)	(SOC_PMIC_IRQ_MASK_0_ADDR + \ 							 irqd_to_hwirq(irq_data) >> 3)
+#define IRQ_MASK_BIT(irq_data)		BIT(irqd_to_hwirq(irq_data) & 0x07)
+
 static const struct mfd_cell hi6421v600_devs[] = {
 	{ .name = "hi6421v600-regulator", },
 };
@@ -89,13 +114,12 @@ static void hi6421_spmi_irq_mask(struct irq_data *d)
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

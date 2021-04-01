Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2164A351686
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 18:01:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 313674058F;
	Thu,  1 Apr 2021 16:01:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g2aEdg_zFUKD; Thu,  1 Apr 2021 16:01:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D4A640585;
	Thu,  1 Apr 2021 16:01:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1BC3B1C1187
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 16:00:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B75540596
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 16:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id li-SaoJDTnYK for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 16:00:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 09DF540585
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 16:00:20 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 78D7F1F4688F
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Subject: [PATCH v8 03/13] media: hantro: Use syscon instead of 'ctrl' register
Date: Thu,  1 Apr 2021 17:59:53 +0200
Message-Id: <20210401160003.88803-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401160003.88803-1-benjamin.gaignard@collabora.com>
References: <20210401160003.88803-1-benjamin.gaignard@collabora.com>
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
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In order to be able to share the control hardware block between
VPUs use a syscon instead a ioremap it in the driver.
To keep the compatibility with older DT if 'nxp,imx8mq-vpu-ctrl'
phandle is not found look at 'ctrl' reg-name.
With the method it becomes useless to provide a list of register
names so remove it.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
---
version 7:
 - Add Philipp reviewed-by tag.
 - Change syscon phandle name.
 
version 5:
 - use syscon instead of VPU reset driver.
 - if DT doesn't provide syscon keep backward compatibilty by using
   'ctrl' reg-name.

 drivers/staging/media/hantro/hantro.h       |  5 +-
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 52 ++++++++++++---------
 2 files changed, 34 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 6c1b888abe75..37b9ce04bd4e 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -13,6 +13,7 @@
 #define HANTRO_H_
 
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
 #include <linux/videodev2.h>
 #include <linux/wait.h>
 #include <linux/clk.h>
@@ -167,7 +168,7 @@ hantro_vdev_to_func(struct video_device *vdev)
  * @reg_bases:		Mapped addresses of VPU registers.
  * @enc_base:		Mapped address of VPU encoder register for convenience.
  * @dec_base:		Mapped address of VPU decoder register for convenience.
- * @ctrl_base:		Mapped address of VPU control block.
+ * @ctrl_base:		Regmap of VPU control block.
  * @vpu_mutex:		Mutex to synchronize V4L2 calls.
  * @irqlock:		Spinlock to synchronize access to data structures
  *			shared with interrupt handlers.
@@ -186,7 +187,7 @@ struct hantro_dev {
 	void __iomem **reg_bases;
 	void __iomem *enc_base;
 	void __iomem *dec_base;
-	void __iomem *ctrl_base;
+	struct regmap *ctrl_base;
 
 	struct mutex vpu_mutex;	/* video_device lock */
 	spinlock_t irqlock;
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index c222de075ef4..8d0c3425234b 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -7,6 +7,7 @@
 
 #include <linux/clk.h>
 #include <linux/delay.h>
+#include <linux/mfd/syscon.h>
 
 #include "hantro.h"
 #include "hantro_jpeg.h"
@@ -24,30 +25,28 @@
 #define CTRL_G1_PP_FUSE		0x0c
 #define CTRL_G2_DEC_FUSE	0x10
 
+static const struct regmap_config ctrl_regmap_ctrl = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 0x14,
+};
+
 static void imx8m_soft_reset(struct hantro_dev *vpu, u32 reset_bits)
 {
-	u32 val;
-
 	/* Assert */
-	val = readl(vpu->ctrl_base + CTRL_SOFT_RESET);
-	val &= ~reset_bits;
-	writel(val, vpu->ctrl_base + CTRL_SOFT_RESET);
+	regmap_update_bits(vpu->ctrl_base, CTRL_SOFT_RESET, reset_bits, 0);
 
 	udelay(2);
 
 	/* Release */
-	val = readl(vpu->ctrl_base + CTRL_SOFT_RESET);
-	val |= reset_bits;
-	writel(val, vpu->ctrl_base + CTRL_SOFT_RESET);
+	regmap_update_bits(vpu->ctrl_base, CTRL_SOFT_RESET,
+			   reset_bits, reset_bits);
 }
 
 static void imx8m_clk_enable(struct hantro_dev *vpu, u32 clock_bits)
 {
-	u32 val;
-
-	val = readl(vpu->ctrl_base + CTRL_CLOCK_ENABLE);
-	val |= clock_bits;
-	writel(val, vpu->ctrl_base + CTRL_CLOCK_ENABLE);
+	regmap_update_bits(vpu->ctrl_base, CTRL_CLOCK_ENABLE,
+			   clock_bits, clock_bits);
 }
 
 static int imx8mq_runtime_resume(struct hantro_dev *vpu)
@@ -64,9 +63,9 @@ static int imx8mq_runtime_resume(struct hantro_dev *vpu)
 	imx8m_clk_enable(vpu, CLOCK_G1 | CLOCK_G2);
 
 	/* Set values of the fuse registers */
-	writel(0xffffffff, vpu->ctrl_base + CTRL_G1_DEC_FUSE);
-	writel(0xffffffff, vpu->ctrl_base + CTRL_G1_PP_FUSE);
-	writel(0xffffffff, vpu->ctrl_base + CTRL_G2_DEC_FUSE);
+	regmap_write(vpu->ctrl_base, CTRL_G1_DEC_FUSE, 0xffffffff);
+	regmap_write(vpu->ctrl_base, CTRL_G1_PP_FUSE, 0xffffffff);
+	regmap_write(vpu->ctrl_base, CTRL_G2_DEC_FUSE, 0xffffffff);
 
 	clk_bulk_disable_unprepare(vpu->variant->num_clocks, vpu->clocks);
 
@@ -150,8 +149,22 @@ static irqreturn_t imx8m_vpu_g1_irq(int irq, void *dev_id)
 
 static int imx8mq_vpu_hw_init(struct hantro_dev *vpu)
 {
-	vpu->dec_base = vpu->reg_bases[0];
-	vpu->ctrl_base = vpu->reg_bases[vpu->variant->num_regs - 1];
+	struct device_node *np = vpu->dev->of_node;
+
+	vpu->ctrl_base = syscon_regmap_lookup_by_phandle(np, "nxp,imx8m-vpu-ctrl");
+	if (IS_ERR(vpu->ctrl_base)) {
+		struct resource *res;
+		void __iomem *ctrl;
+
+		res = platform_get_resource_byname(vpu->pdev, IORESOURCE_MEM, "ctrl");
+		ctrl = devm_ioremap_resource(vpu->dev, res);
+		if (IS_ERR(ctrl))
+			return PTR_ERR(ctrl);
+
+		vpu->ctrl_base = devm_regmap_init_mmio(vpu->dev, ctrl, &ctrl_regmap_ctrl);
+		if (IS_ERR(vpu->ctrl_base))
+			return PTR_ERR(vpu->ctrl_base);
+	}
 
 	return 0;
 }
@@ -198,7 +211,6 @@ static const struct hantro_irq imx8mq_irqs[] = {
 };
 
 static const char * const imx8mq_clk_names[] = { "g1", "g2", "bus" };
-static const char * const imx8mq_reg_names[] = { "g1", "g2", "ctrl" };
 
 const struct hantro_variant imx8mq_vpu_variant = {
 	.dec_fmts = imx8m_vpu_dec_fmts,
@@ -215,6 +227,4 @@ const struct hantro_variant imx8mq_vpu_variant = {
 	.num_irqs = ARRAY_SIZE(imx8mq_irqs),
 	.clk_names = imx8mq_clk_names,
 	.num_clocks = ARRAY_SIZE(imx8mq_clk_names),
-	.reg_names = imx8mq_reg_names,
-	.num_regs = ARRAY_SIZE(imx8mq_reg_names)
 };
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

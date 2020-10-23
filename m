Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F203D297609
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 19:46:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9461087447;
	Fri, 23 Oct 2020 17:46:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Lguzcf_5paN; Fri, 23 Oct 2020 17:46:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E3B0E8742D;
	Fri, 23 Oct 2020 17:46:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BCED11BF3CC
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 17:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B995B876FC
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 17:46:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZEyZWe-DRAhP for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 17:46:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1589F876C7
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 17:46:40 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 02EB11BF203;
 Fri, 23 Oct 2020 17:46:37 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-sunxi@googlegroups.com
Subject: [PATCH 14/14] media: sunxi: sun8i-a83t-mipi-csi2: Avoid using the
 (unsolicited) interrupt
Date: Fri, 23 Oct 2020 19:45:46 +0200
Message-Id: <20201023174546.504028-15-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The A83T MIPI CSI-2 apparently produces interrupts regardless of the mask
registers, for example when a transmission error occurs.

This generates quite a flood when unsolicited interrupts are received on
each received frame. As a result, disable the interrupt for now since
we are not currently using it for error reporting.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../sun8i_a83t_mipi_csi2.c                    | 40 -------------------
 1 file changed, 40 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_mipi_csi2.c b/drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_mipi_csi2.c
index 1ff6f5dfd81a..26af3e3f5f89 100644
--- a/drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_mipi_csi2.c
+++ b/drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_mipi_csi2.c
@@ -25,34 +25,6 @@
 
 /* Core */
 
-static irqreturn_t sun8i_a83t_mipi_csi2_isr(int irq, void *dev_id)
-{
-	struct sun8i_a83t_mipi_csi2_dev *cdev =
-		(struct sun8i_a83t_mipi_csi2_dev *)dev_id;
-	struct regmap *regmap = cdev->regmap;
-	u32 status;
-
-	WARN_ONCE(1, MODULE_NAME
-		  ": Unsolicited interrupt, an error likely occurred!\n");
-
-	regmap_read(regmap, SUN8I_A83T_MIPI_CSI2_INT_STA0_REG, &status);
-	regmap_write(regmap, SUN8I_A83T_MIPI_CSI2_INT_STA0_REG, status);
-
-	regmap_read(regmap, SUN8I_A83T_MIPI_CSI2_INT_STA1_REG, &status);
-	regmap_write(regmap, SUN8I_A83T_MIPI_CSI2_INT_STA1_REG, status);
-
-	regmap_read(regmap, SUN8I_A83T_MIPI_CSI2_INT_MSK0_REG, &status);
-	regmap_read(regmap, SUN8I_A83T_MIPI_CSI2_INT_MSK1_REG, &status);
-
-	/*
-	 * The interrupt can be used to catch transmission errors.
-	 * However, we currently lack plumbing for reporting that to the
-	 * A31 CSI controller driver.
-	 */
-
-	return IRQ_HANDLED;
-}
-
 static void sun8i_a83t_mipi_csi2_init(struct sun8i_a83t_mipi_csi2_dev *cdev)
 {
 	struct regmap *regmap = cdev->regmap;
@@ -587,7 +559,6 @@ static int sun8i_a83t_mipi_csi2_resource_request(struct sun8i_a83t_mipi_csi2_dev
 {
 	struct resource *res;
 	void __iomem *io_base;
-	int irq;
 	int ret;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
@@ -626,17 +597,6 @@ static int sun8i_a83t_mipi_csi2_resource_request(struct sun8i_a83t_mipi_csi2_dev
 		return PTR_ERR(cdev->reset);
 	}
 
-	irq = platform_get_irq(pdev, 0);
-	if (irq < 0)
-		return -ENXIO;
-
-	ret = devm_request_irq(&pdev->dev, irq, sun8i_a83t_mipi_csi2_isr, 0,
-			       MODULE_NAME, cdev);
-	if (ret) {
-		dev_err(&pdev->dev, "failed to request MIPI CSI-2 IRQ\n");
-		return ret;
-	}
-
 	ret = sun8i_a83t_dphy_register(cdev);
 	if (ret) {
 		dev_err(&pdev->dev, "failed to init MIPI D-PHY\n");
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

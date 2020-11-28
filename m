Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B712C6F96
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Nov 2020 15:29:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5037C86C32;
	Sat, 28 Nov 2020 14:29:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ceLb3NGobjQ8; Sat, 28 Nov 2020 14:29:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B1E587567;
	Sat, 28 Nov 2020 14:29:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9480C1BF342
 for <devel@linuxdriverproject.org>; Sat, 28 Nov 2020 14:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8CCD8874BC
 for <devel@linuxdriverproject.org>; Sat, 28 Nov 2020 14:29:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ivEfJ3J5xK64 for <devel@linuxdriverproject.org>;
 Sat, 28 Nov 2020 14:28:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
 [217.70.183.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7E05287491
 for <devel@driverdev.osuosl.org>; Sat, 28 Nov 2020 14:28:59 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 9DA034000A;
 Sat, 28 Nov 2020 14:28:55 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v2 02/19] phy: Distinguish between Rx and Tx for MIPI D-PHY
 with submodes
Date: Sat, 28 Nov 2020 15:28:22 +0100
Message-Id: <20201128142839.517949-3-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
References: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Corbet <corbet@lwn.net>,
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

As some D-PHY controllers support both Rx and Tx mode, we need a way for
users to explicitly request one or the other. For instance, Rx mode can
be used along with MIPI CSI-2 while Tx mode can be used with MIPI DSI.

Introduce new MIPI D-PHY PHY submodes to use with PHY_MODE_MIPI_DPHY.
The default (zero value) is kept to Tx so only the rkisp1 driver, which
uses D-PHY in Rx mode, needs to be adapted.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-isp.c |  3 ++-
 include/linux/phy/phy-mipi-dphy.h         | 13 +++++++++++++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index a9715b0b7264..f1167995688a 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -914,7 +914,8 @@ static int rkisp1_mipi_csi2_start(struct rkisp1_isp *isp,
 
 	phy_mipi_dphy_get_default_config(pixel_clock, isp->sink_fmt->bus_width,
 					 sensor->lanes, cfg);
-	phy_set_mode(sensor->dphy, PHY_MODE_MIPI_DPHY);
+	phy_set_mode_ext(cdev->dphy, PHY_MODE_MIPI_DPHY,
+			 PHY_MIPI_DPHY_SUBMODE_RX);
 	phy_configure(sensor->dphy, &opts);
 	phy_power_on(sensor->dphy);
 
diff --git a/include/linux/phy/phy-mipi-dphy.h b/include/linux/phy/phy-mipi-dphy.h
index a877ffee845d..0f57ef46a8b5 100644
--- a/include/linux/phy/phy-mipi-dphy.h
+++ b/include/linux/phy/phy-mipi-dphy.h
@@ -6,6 +6,19 @@
 #ifndef __PHY_MIPI_DPHY_H_
 #define __PHY_MIPI_DPHY_H_
 
+/**
+ * enum phy_mipi_dphy_submode - MIPI D-PHY sub-mode
+ *
+ * A MIPI D-PHY can be used to transmit or receive data.
+ * Since some controllers can support both, the direction to enable is specified
+ * with the PHY sub-mode. Transmit is assumed by default with phy_set_mode.
+ */
+
+enum phy_mipi_dphy_submode {
+	PHY_MIPI_DPHY_SUBMODE_TX = 0,
+	PHY_MIPI_DPHY_SUBMODE_RX,
+};
+
 /**
  * struct phy_configure_opts_mipi_dphy - MIPI D-PHY configuration set
  *
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

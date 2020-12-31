Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1402E806A
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Dec 2020 15:30:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CD08C8738C;
	Thu, 31 Dec 2020 14:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bHEsX38GSzuv; Thu, 31 Dec 2020 14:30:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D3398731E;
	Thu, 31 Dec 2020 14:30:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 112FA1BF29C
 for <devel@linuxdriverproject.org>; Thu, 31 Dec 2020 14:30:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0D75D864EC
 for <devel@linuxdriverproject.org>; Thu, 31 Dec 2020 14:30:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2mlUoVcyND9c for <devel@linuxdriverproject.org>;
 Thu, 31 Dec 2020 14:30:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay12.mail.gandi.net (relay12.mail.gandi.net [217.70.178.232])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 774EC85A84
 for <devel@driverdev.osuosl.org>; Thu, 31 Dec 2020 14:30:08 +0000 (UTC)
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 89095200006;
 Thu, 31 Dec 2020 14:30:04 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v4 01/15] docs: phy: Add a part about PHY mode and submode
Date: Thu, 31 Dec 2020 15:29:34 +0100
Message-Id: <20201231142948.3241780-2-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201231142948.3241780-1-paul.kocialkowski@bootlin.com>
References: <20201231142948.3241780-1-paul.kocialkowski@bootlin.com>
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

Besides giving pointers to the relevant functions for PHY mode and
submode configuration, this clarifies the need to set them before
powering on the PHY.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Reviewed-by: Maxime Ripard <mripard@kernel.org>
---
 Documentation/driver-api/phy/phy.rst | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/driver-api/phy/phy.rst b/Documentation/driver-api/phy/phy.rst
index 8fc1ce0bb905..6cbc72707a49 100644
--- a/Documentation/driver-api/phy/phy.rst
+++ b/Documentation/driver-api/phy/phy.rst
@@ -195,3 +195,21 @@ DeviceTree Binding
 
 The documentation for PHY dt binding can be found @
 Documentation/devicetree/bindings/phy/phy-bindings.txt
+
+PHY Mode and Submode
+====================
+
+Once a reference to a PHY is obtained by a controller, the PHY can be configured
+to a PHY mode and submode. PHY modes are described in the `phy_mode` enum while
+submodes are specific to the selected PHY mode.
+
+Mode and submode configuration is done by calling::
+
+	int phy_set_mode_ext(struct phy *phy, enum phy_mode mode, int submode);
+
+If no submode is to be configured, users can call::
+
+	int phy_set_mode(struct phy *phy, enum phy_mode mode);
+
+The PHY mode and submode must not be configured after the PHY has already been
+powered on.
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

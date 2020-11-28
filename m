Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A7D2C6F94
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Nov 2020 15:29:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A38D68499E;
	Sat, 28 Nov 2020 14:29:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gIXSGTXzIdDT; Sat, 28 Nov 2020 14:29:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B4F9C874C7;
	Sat, 28 Nov 2020 14:29:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 384C21BF342
 for <devel@linuxdriverproject.org>; Sat, 28 Nov 2020 14:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 22D062047B
 for <devel@linuxdriverproject.org>; Sat, 28 Nov 2020 14:29:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id spNbqJvvCN09 for <devel@linuxdriverproject.org>;
 Sat, 28 Nov 2020 14:28:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
 [217.70.183.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 03476203C9
 for <devel@driverdev.osuosl.org>; Sat, 28 Nov 2020 14:28:57 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id A1B0340009;
 Sat, 28 Nov 2020 14:28:53 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v2 01/19] docs: phy: Add a part about PHY mode and submode
Date: Sat, 28 Nov 2020 15:28:21 +0100
Message-Id: <20201128142839.517949-2-paul.kocialkowski@bootlin.com>
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

Besides giving pointers to the relevant functions for PHY mode and
submode configuration, this clarifies the need to set them before
powering on the PHY.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
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

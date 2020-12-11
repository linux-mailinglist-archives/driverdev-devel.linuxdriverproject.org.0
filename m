Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6B92D7A0F
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Dec 2020 16:58:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDFD387277;
	Fri, 11 Dec 2020 15:58:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fxPbEluqWpr1; Fri, 11 Dec 2020 15:57:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 247C7873CF;
	Fri, 11 Dec 2020 15:57:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2269D1BF2A1
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 15:57:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1D75C866A9
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 15:57:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y_G01fKfDYpu for <devel@linuxdriverproject.org>;
 Fri, 11 Dec 2020 15:57:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1BEFF86652
 for <devel@driverdev.osuosl.org>; Fri, 11 Dec 2020 15:57:54 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id C554360020;
 Fri, 11 Dec 2020 15:57:50 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v3 12/15] dt-bindings: media: Add A83T MIPI CSI-2 bindings
 documentation
Date: Fri, 11 Dec 2020 16:57:05 +0100
Message-Id: <20201211155708.154710-13-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201211155708.154710-1-paul.kocialkowski@bootlin.com>
References: <20201211155708.154710-1-paul.kocialkowski@bootlin.com>
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
Cc: Rob Herring <robh@kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
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

This introduces YAML bindings documentation for the A83T MIPI CSI-2
controller.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../media/allwinner,sun8i-a83t-mipi-csi2.yaml | 147 ++++++++++++++++++
 1 file changed, 147 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
new file mode 100644
index 000000000000..e607fae7d85e
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
@@ -0,0 +1,147 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/allwinner,sun8i-a83t-mipi-csi2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A83T MIPI CSI-2 Device Tree Bindings
+
+maintainers:
+  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
+
+properties:
+  compatible:
+    const: allwinner,sun8i-a83t-mipi-csi2
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Bus Clock
+      - description: Module Clock
+      - description: MIPI-specific Clock
+      - description: Misc CSI Clock
+
+  clock-names:
+    items:
+      - const: bus
+      - const: mod
+      - const: mipi
+      - const: misc
+
+  resets:
+    maxItems: 1
+
+  # See ./video-interfaces.txt for details
+  ports:
+    type: object
+
+    properties:
+      port@0:
+        type: object
+        description: Input port, connect to a MIPI CSI-2 sensor
+
+        properties:
+          reg:
+            const: 0
+
+          endpoint:
+            type: object
+
+            properties:
+              remote-endpoint: true
+
+              clock-lanes:
+                maxItems: 1
+
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+            required:
+              - data-lanes
+              - remote-endpoint
+
+        required:
+          - endpoint
+
+        additionalProperties: false
+
+      port@1:
+        type: object
+        description: Output port, connect to a CSI controller
+
+        properties:
+          reg:
+            const: 1
+
+          endpoint:
+            type: object
+
+            properties:
+              remote-endpoint: true
+
+            required:
+              - remote-endpoint
+
+        required:
+          - endpoint
+
+        additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/sun8i-a83t-ccu.h>
+    #include <dt-bindings/reset/sun8i-a83t-ccu.h>
+
+    mipi_csi2: csi@1cb1000 {
+        compatible = "allwinner,sun8i-a83t-mipi-csi2";
+        reg = <0x01cb1000 0x1000>;
+        interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&ccu CLK_BUS_CSI>,
+                 <&ccu CLK_CSI_SCLK>,
+                 <&ccu CLK_MIPI_CSI>,
+                 <&ccu CLK_CSI_MISC>;
+        clock-names = "bus", "mod", "mipi", "misc";
+        resets = <&ccu RST_BUS_CSI>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            mipi_csi2_in: port@0 {
+                reg = <0>;
+
+                mipi_csi2_in_ov8865: endpoint {
+                    data-lanes = <1 2 3 4>;
+
+                    remote-endpoint = <&ov8865_out_mipi_csi2>;
+                };
+            };
+
+            mipi_csi2_out: port@1 {
+                reg = <1>;
+
+                mipi_csi2_out_csi: endpoint {
+                    remote-endpoint = <&csi_in_mipi_csi2>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

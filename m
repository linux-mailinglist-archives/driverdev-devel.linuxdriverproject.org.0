Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48382356556
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Apr 2021 09:36:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E785060BEB;
	Wed,  7 Apr 2021 07:36:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5OD9Tk_SzG2V; Wed,  7 Apr 2021 07:36:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 236AA60649;
	Wed,  7 Apr 2021 07:36:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 541281BF4E6
 for <devel@linuxdriverproject.org>; Wed,  7 Apr 2021 07:35:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50ABE405B0
 for <devel@linuxdriverproject.org>; Wed,  7 Apr 2021 07:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tq-mFG_7r_Uf for <devel@linuxdriverproject.org>;
 Wed,  7 Apr 2021 07:35:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C74F400BF
 for <devel@driverdev.osuosl.org>; Wed,  7 Apr 2021 07:35:51 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 1A3111F44F88
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Subject: [PATCH v9 02/13] dt-bindings: media: nxp,
 imx8mq-vpu: Update the bindings for G2 support
Date: Wed,  7 Apr 2021 09:35:23 +0200
Message-Id: <20210407073534.376722-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
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
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 kernel@collabora.com, cphealy@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Introducing the G2 hevc video decoder requires modifications of the bindings to allow
one node per VPU.

VPUs share one hardware control block which is provided as a phandle on
a syscon.
Each node has now one reg and one interrupt.
Add a compatible for G2 hardware block: nxp,imx8mq-vpu-g2.

To be compatible with older DT the driver is still capable to use the 'ctrl'
reg-name even if it is deprecated now.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
---
version 9:
 - Corrections in commit message

version 7:
 - Add Rob and Philipp reviewed-by tag
 - Change syscon phandle name to nxp,imx8m-vpu-ctrl (remove 'q' to be
   usable for iMX8MM too)

version 5:
- This version doesn't break the backward compatibilty between kernel
  and DT.

 .../bindings/media/nxp,imx8mq-vpu.yaml        | 53 ++++++++++++-------
 1 file changed, 34 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
index 762be3f96ce9..18e7d40a5f24 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
@@ -15,22 +15,18 @@ description:
 
 properties:
   compatible:
-    const: nxp,imx8mq-vpu
+    oneOf:
+      - const: nxp,imx8mq-vpu
+      - const: nxp,imx8mq-vpu-g2
 
   reg:
-    maxItems: 3
-
-  reg-names:
-    items:
-      - const: g1
-      - const: g2
-      - const: ctrl
+    maxItems: 1
 
   interrupts:
-    maxItems: 2
+    maxItems: 1
 
   interrupt-names:
-    items:
+    oneOf:
       - const: g1
       - const: g2
 
@@ -46,14 +42,18 @@ properties:
   power-domains:
     maxItems: 1
 
+  nxp,imx8m-vpu-ctrl:
+    description: Specifies a phandle to syscon VPU hardware control block
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+
 required:
   - compatible
   - reg
-  - reg-names
   - interrupts
   - interrupt-names
   - clocks
   - clock-names
+  - nxp,imx8m-vpu-ctrl
 
 additionalProperties: false
 
@@ -62,18 +62,33 @@ examples:
         #include <dt-bindings/clock/imx8mq-clock.h>
         #include <dt-bindings/interrupt-controller/arm-gic.h>
 
-        vpu: video-codec@38300000 {
+        vpu_ctrl: syscon@38320000 {
+                 compatible = "nxp,imx8mq-vpu-ctrl", "syscon";
+                 reg = <0x38320000 0x10000>;
+        };
+
+        vpu_g1: video-codec@38300000 {
                 compatible = "nxp,imx8mq-vpu";
-                reg = <0x38300000 0x10000>,
-                      <0x38310000 0x10000>,
-                      <0x38320000 0x10000>;
-                reg-names = "g1", "g2", "ctrl";
-                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
-                             <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
-                interrupt-names = "g1", "g2";
+                reg = <0x38300000 0x10000>;
+                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+                interrupt-names = "g1";
+                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
+                         <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
+                         <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
+                clock-names = "g1", "g2", "bus";
+                power-domains = <&pgc_vpu>;
+                nxp,imx8m-vpu-ctrl = <&vpu_ctrl>;
+        };
+
+        vpu_g2: video-codec@38310000 {
+                compatible = "nxp,imx8mq-vpu-g2";
+                reg = <0x38300000 0x10000>;
+                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+                interrupt-names = "g2";
                 clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
                          <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
                          <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
                 clock-names = "g1", "g2", "bus";
                 power-domains = <&pgc_vpu>;
+                nxp,imx8m-vpu-ctrl = <&vpu_ctrl>;
         };
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

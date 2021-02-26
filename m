Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20801325FAF
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Feb 2021 10:12:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE7AD8419E;
	Fri, 26 Feb 2021 09:12:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sPNAYMEdiIQ2; Fri, 26 Feb 2021 09:12:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB8F68416D;
	Fri, 26 Feb 2021 09:12:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 02D641BF338
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 09:11:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3C7D6F89B
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 09:11:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aUJCxhP6UfMr for <devel@linuxdriverproject.org>;
 Fri, 26 Feb 2021 09:11:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 545ED6F8BB
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 09:11:40 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:297a:447b:deb4:3f5c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 21EB51F464CA;
 Fri, 26 Feb 2021 09:11:38 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: p.zabel@pengutronix.de, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, festevam@gmail.com, ezequiel@collabora.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH v2 2/5] dt-bindings: media: IMX8MQ VPU: document reset usage
Date: Fri, 26 Feb 2021 10:11:25 +0100
Message-Id: <20210226091128.14379-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210226091128.14379-1-benjamin.gaignard@collabora.com>
References: <20210226091128.14379-1-benjamin.gaignard@collabora.com>
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
 benjamin.gaignard@collabora.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Document IMX8MQ VPU bindings to add the phandle to the reset driver.

Provide an independent reset driver allow to the both VPUs to share
their control/reset hardware block. The reset driver replace what
was previously done be using the 'ctrl' registers inside the driver.

This breaks the compatibility between DTB and kernel but the driver
is still in staging directory and limited to IMX8MQ SoC.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../devicetree/bindings/media/nxp,imx8mq-vpu.yaml     | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
index 762be3f96ce9..c860f6b201f9 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
@@ -18,13 +18,12 @@ properties:
     const: nxp,imx8mq-vpu
 
   reg:
-    maxItems: 3
+    maxItems: 2
 
   reg-names:
     items:
       - const: g1
       - const: g2
-      - const: ctrl
 
   interrupts:
     maxItems: 2
@@ -46,6 +45,9 @@ properties:
   power-domains:
     maxItems: 1
 
+  resets:
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -54,6 +56,7 @@ required:
   - interrupt-names
   - clocks
   - clock-names
+  - resets
 
 additionalProperties: false
 
@@ -61,13 +64,14 @@ examples:
   - |
         #include <dt-bindings/clock/imx8mq-clock.h>
         #include <dt-bindings/interrupt-controller/arm-gic.h>
+        #include <dt-bindings/reset/imx8mq-vpu-reset.h>
 
         vpu: video-codec@38300000 {
                 compatible = "nxp,imx8mq-vpu";
                 reg = <0x38300000 0x10000>,
                       <0x38310000 0x10000>,
                       <0x38320000 0x10000>;
-                reg-names = "g1", "g2", "ctrl";
+                reg-names = "g1", "g2";
                 interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
                              <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
                 interrupt-names = "g1", "g2";
@@ -76,4 +80,5 @@ examples:
                          <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
                 clock-names = "g1", "g2", "bus";
                 power-domains = <&pgc_vpu>;
+                resets = <&vpu_reset IMX8MQ_RESET_VPU_RESET_G1>;
         };
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

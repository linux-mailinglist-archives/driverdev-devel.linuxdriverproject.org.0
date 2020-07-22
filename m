Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C8F229C1B
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 17:56:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A22D88127;
	Wed, 22 Jul 2020 15:56:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oGnuh1Loy2Lt; Wed, 22 Jul 2020 15:56:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0DF2D86CAC;
	Wed, 22 Jul 2020 15:56:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F4C81BF360
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 15:56:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4C4A486938
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 15:56:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R_zofipdywkm for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 15:56:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5A81186365
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 15:56:10 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id DD6B0297600
From: Helen Koike <helen.koike@collabora.com>
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v5 5/9] media: staging: rkisp1: remove unecessary clocks
Date: Wed, 22 Jul 2020 12:55:29 -0300
Message-Id: <20200722155533.252844-6-helen.koike@collabora.com>
X-Mailer: git-send-email 2.28.0.rc1
In-Reply-To: <20200722155533.252844-1-helen.koike@collabora.com>
References: <20200722155533.252844-1-helen.koike@collabora.com>
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, eddie.cai.linux@gmail.com,
 tfiga@chromium.org, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 zhengsq@rock-chips.com, linux-kernel@vger.kernel.org,
 karthik.poduval@gmail.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 jbx6244@gmail.com, kernel@collabora.com, ezequiel@collabora.com,
 robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

aclk_isp_wrap is a child of aclk_isp, and hclk_isp_wrap is a child of
hclk_isp, thus we can remove parents from the list.

Also, for the isp0, we only need the ISP clock, ACLK and HCLK.
In the future we'll need a pixel clock for RK3288 and RK3399, and a JPEG
clock for RK3288.

So with the goal to cleanup the dt-bindings and remove it from staging,
simplify clock names to isp, aclk and hclk.

Assigned clocks are meant to refer to the full path in the clock tree,
i.e. the leaf in the tree.
For instance, in RK3399, the clock responsible for ACLK (ISP AXI CLOCK)
is aclk_isp0_wrapper.

For reference, this is the isp clock topology on RK3399:

 xin24m
    pll_npll
       npll
          clk_isp1
          clk_isp0
    pll_cpll
       cpll
          aclk_isp1
             aclk_isp1_noc
             hclk_isp1
                aclk_isp1_wrapper
                hclk_isp1_noc
          aclk_isp0
             hclk_isp1_wrapper
             aclk_isp0_wrapper
             aclk_isp0_noc
             hclk_isp0
                hclk_isp0_wrapper
                hclk_isp0_noc
 pclkin_isp1_wrapper

Signed-off-by: Helen Koike <helen.koike@collabora.com>

---
Changes in V5:
- Use if/then schema as suggested by Rob Herring on
https://patchwork.linuxtv.org/project/linux-media/patch/20200702191322.2639681-6-helen.koike@collabora.com/#119729

Changes in V4:
- update binding according to suggestion by Robin Murphy
on https://patchwork.kernel.org/patch/11475007/

Changes in V3:
- this is a new patch in the series
---
 .../bindings/media/rockchip-isp1.yaml         | 50 ++++++++++++-------
 drivers/staging/media/rkisp1/rkisp1-dev.c     |  8 ++-
 2 files changed, 36 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index 62a6b9c959498..23c677d15037a 100644
--- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -24,20 +24,10 @@ properties:
     maxItems: 1
 
   clocks:
-    items:
-      - description: ISP clock
-      - description: ISP AXI clock clock
-      - description: ISP AXI clock  wrapper clock
-      - description: ISP AHB clock clock
-      - description: ISP AHB wrapper clock
+    minItems: 3
 
   clock-names:
-    items:
-      - const: clk_isp
-      - const: aclk_isp
-      - const: aclk_isp_wrap
-      - const: hclk_isp
-      - const: hclk_isp_wrap
+    minItems: 3
 
   iommus:
     maxItems: 1
@@ -116,6 +106,34 @@ required:
   - power-domains
   - ports
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: rockchip,rk3399-cif-isp
+then:
+  properties:
+    clocks:
+      maxItems: 4
+      minItems: 3
+      items:
+        # isp0 and isp1
+        - description: ISP clock
+        - description: ISP AXI clock
+        - description: ISP AHB clock
+        # only for isp1
+        - description: ISP Pixel clock
+    clock-names:
+      maxItems: 4
+      minItems: 3
+      items:
+        # isp0 and isp1
+        - const: isp
+        - const: aclk
+        - const: hclk
+        # only for isp1
+        - const: pclk_isp
+
 additionalProperties: false
 
 examples:
@@ -134,11 +152,9 @@ examples:
             reg = <0x0 0xff910000 0x0 0x4000>;
             interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
             clocks = <&cru SCLK_ISP0>,
-                     <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
-                     <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
-            clock-names = "clk_isp",
-                          "aclk_isp", "aclk_isp_wrap",
-                          "hclk_isp", "hclk_isp_wrap";
+                     <&cru ACLK_ISP0_WRAPPER>,
+                     <&cru HCLK_ISP0_WRAPPER>;
+            clock-names = "isp", "aclk", "hclk";
             iommus = <&isp0_mmu>;
             phys = <&dphy>;
             phy-names = "dphy";
diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index a0eb8f08708b9..1ebf10a6f188c 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -406,11 +406,9 @@ static irqreturn_t rkisp1_isr(int irq, void *ctx)
 }
 
 static const char * const rk3399_isp_clks[] = {
-	"clk_isp",
-	"aclk_isp",
-	"hclk_isp",
-	"aclk_isp_wrap",
-	"hclk_isp_wrap",
+	"isp",
+	"aclk",
+	"hclk",
 };
 
 static const struct rkisp1_match_data rk3399_isp_clk_data = {
-- 
2.28.0.rc1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

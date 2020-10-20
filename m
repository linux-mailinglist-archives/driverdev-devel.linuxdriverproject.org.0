Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 241DA29433F
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 21:39:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0F5CC873E0;
	Tue, 20 Oct 2020 19:39:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oueQESfKZUtP; Tue, 20 Oct 2020 19:39:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A19D873D2;
	Tue, 20 Oct 2020 19:39:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F051C1BF37F
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 19:39:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E92D086C5C
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 19:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TCB2a+TebqzL for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 19:39:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 44E8486C48
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 19:39:26 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id E77F81F44D9D
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v6 5/9] media: staging: rkisp1: remove unecessary clocks
Date: Tue, 20 Oct 2020 16:38:46 -0300
Message-Id: <20201020193850.1460644-6-helen.koike@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020193850.1460644-1-helen.koike@collabora.com>
References: <20201020193850.1460644-1-helen.koike@collabora.com>
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
 eddie.cai.linux@gmail.com, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 robin.murphy@arm.com, linux-kernel@vger.kernel.org, karthik.poduval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, mark.rutland@arm.com, kernel@collabora.com,
 zhengsq@rock-chips.com, jbx6244@gmail.com
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
Reviewed-by: Tomasz Figa <tfiga@chromium.org>

---

Changes in V6:
- Define clocks in the top level, and use if/else schema to define how
  many for each compatible as sugested by Rob Herring on
  https://patchwork.linuxtv.org/project/linux-media/patch/20200722155533.252844-6-helen.koike@collabora.com/#122626
---
 .../bindings/media/rockchip-isp1.yaml         | 44 +++++++++++++------
 drivers/staging/media/rkisp1/rkisp1-dev.c     |  8 ++--
 2 files changed, 33 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index 62a6b9c959498..2004c054ed1a0 100644
--- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -24,20 +24,24 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 3
     items:
+      # isp0 and isp1
       - description: ISP clock
-      - description: ISP AXI clock clock
-      - description: ISP AXI clock  wrapper clock
-      - description: ISP AHB clock clock
-      - description: ISP AHB wrapper clock
+      - description: ISP AXI clock
+      - description: ISP AHB clock
+      # only for isp1
+      - description: ISP Pixel clock
 
   clock-names:
+    minItems: 3
     items:
-      - const: clk_isp
-      - const: aclk_isp
-      - const: aclk_isp_wrap
-      - const: hclk_isp
-      - const: hclk_isp_wrap
+      # isp0 and isp1
+      - const: isp
+      - const: aclk
+      - const: hclk
+      # only for isp1
+      - const: pclk_isp
 
   iommus:
     maxItems: 1
@@ -116,6 +120,20 @@ required:
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
+      minItems: 3
+      maxItems: 4
+    clock-names:
+      minItems: 3
+      maxItems: 4
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
index 91584695804bb..90d6543465562 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -405,11 +405,9 @@ static irqreturn_t rkisp1_isr(int irq, void *ctx)
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
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

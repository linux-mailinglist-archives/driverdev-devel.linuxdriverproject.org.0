Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD4D212A78
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 18:54:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4477A8A6BF;
	Thu,  2 Jul 2020 16:54:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cWeDNpRKQn2t; Thu,  2 Jul 2020 16:54:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB37C8A6A0;
	Thu,  2 Jul 2020 16:54:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D8F161BF487
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 16:54:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D1C6724F0B
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 16:54:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bDeYI6Us6YD1 for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 16:54:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id 4EF0720513
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 16:54:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 52CFD2A5FA3
From: Helen Koike <helen.koike@collabora.com>
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v3 5/9] media: staging: rkisp1: remove unecessary clocks
Date: Thu,  2 Jul 2020 13:54:06 -0300
Message-Id: <20200702165410.2583375-6-helen.koike@collabora.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200702165410.2583375-1-helen.koike@collabora.com>
References: <20200702165410.2583375-1-helen.koike@collabora.com>
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
 kishon@ti.com, zhengsq@rock-chips.com, linux-kernel@vger.kernel.org,
 karthik.poduval@gmail.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 jbx6244@gmail.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

aclk_isp_wrap is a child of aclk_isp, and hclk_isp_wrap is a child of
hclk_isp, thus we can remove parents from the list, with the goal to
cleanup the dt-bindings and remove it from staging.

For reference, this is the isp clock topology:

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
Changes in V3:
- this is a new patch in the series
---
 .../bindings/media/rockchip-isp1.yaml         | 33 ++++++++++---------
 drivers/staging/media/rkisp1/rkisp1-dev.c     |  2 --
 2 files changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index 4d111ef2e89c7..f806820eb8153 100644
--- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -24,20 +24,21 @@ properties:
     maxItems: 1
 
   clocks:
-    items:
-      - description: ISP clock
-      - description: ISP AXI clock clock
-      - description: ISP AXI clock  wrapper clock
-      - description: ISP AHB clock clock
-      - description: ISP AHB wrapper clock
+    maxItems: 5
+    minItems: 3
+    description:
+      rk3399 isp0 clocks
+        ISP clock
+        ISP AXI wrapper clock
+        ISP AHB wrapper clock
 
   clock-names:
-    items:
-      - const: clk_isp
-      - const: aclk_isp
-      - const: aclk_isp_wrap
-      - const: hclk_isp
-      - const: hclk_isp_wrap
+    oneOf:
+      # rk3399 isp0 clocks
+      - items:
+        - const: clk_isp
+        - const: aclk_isp_wrap
+        - const: hclk_isp_wrap
 
   iommus:
     maxItems: 1
@@ -135,11 +136,11 @@ examples:
             reg = <0x0 0xff910000 0x0 0x4000>;
             interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
             clocks = <&cru SCLK_ISP0>,
-                     <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
-                     <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
+                     <&cru ACLK_ISP0_WRAPPER>,
+                     <&cru HCLK_ISP0_WRAPPER>;
             clock-names = "clk_isp",
-                          "aclk_isp", "aclk_isp_wrap",
-                          "hclk_isp", "hclk_isp_wrap";
+                          "aclk_isp_wrap",
+                          "hclk_isp_wrap";
             iommus = <&isp0_mmu>;
             phys = <&dphy>;
             phy-names = "dphy";
diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index f38801fea10d9..36f5f3b97a9b9 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -407,8 +407,6 @@ static irqreturn_t rkisp1_isr(int irq, void *ctx)
 
 static const char * const rk3399_isp_clks[] = {
 	"clk_isp",
-	"aclk_isp",
-	"hclk_isp",
 	"aclk_isp_wrap",
 	"hclk_isp_wrap",
 };
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

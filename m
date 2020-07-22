Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06837229C07
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 17:56:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9FB81885E7;
	Wed, 22 Jul 2020 15:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oGo-bEFp6Vfj; Wed, 22 Jul 2020 15:56:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21F4488415;
	Wed, 22 Jul 2020 15:56:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D04DE1BF360
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 15:56:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C7E6E87FBE
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 15:56:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ymSJIzzxF+eD for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 15:56:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5F37087FA6
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 15:56:01 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id ACEB2297FEA
From: Helen Koike <helen.koike@collabora.com>
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v5 3/9] media: staging: dt-bindings: rkisp1: re-order
 properties
Date: Wed, 22 Jul 2020 12:55:27 -0300
Message-Id: <20200722155533.252844-4-helen.koike@collabora.com>
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

Organize properties order in dt-bindings to move it out of staging.

On top: compatible, reg and interrupts.
Then alphabetical order, then properties starting with '#'.

Signed-off-by: Helen Koike <helen.koike@collabora.com>
Acked-by: Rob Herring <robh@kernel.org>
---
V5:
- s/binbings/bindings

V2:
- this is a new patch in the series
---
 .../bindings/media/rockchip-isp1.yaml         | 32 +++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index 4c31cfaee2709..79ebacab83cf3 100644
--- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -23,19 +23,6 @@ properties:
   interrupts:
     maxItems: 1
 
-  iommus:
-    maxItems: 1
-
-  power-domains:
-    maxItems: 1
-
-  phys:
-    maxItems: 1
-    description: phandle for the PHY port
-
-  phy-names:
-    const: dphy
-
   clocks:
     items:
       - description: ISP clock
@@ -52,6 +39,19 @@ properties:
       - const: hclk_isp
       - const: hclk_isp_wrap
 
+  iommus:
+    maxItems: 1
+
+  phys:
+    maxItems: 1
+    description: phandle for the PHY port
+
+  phy-names:
+    const: dphy
+
+  power-domains:
+    maxItems: 1
+
   # See ./video-interfaces.txt for details
   ports:
     type: object
@@ -110,10 +110,10 @@ required:
   - interrupts
   - clocks
   - clock-names
-  - power-domains
   - iommus
   - phys
   - phy-names
+  - power-domains
   - ports
 
 additionalProperties: false
@@ -139,19 +139,19 @@ examples:
             clock-names = "clk_isp",
                           "aclk_isp", "aclk_isp_wrap",
                           "hclk_isp", "hclk_isp_wrap";
-            power-domains = <&power RK3399_PD_ISP0>;
             iommus = <&isp0_mmu>;
             phys = <&dphy>;
             phy-names = "dphy";
+            power-domains = <&power RK3399_PD_ISP0>;
 
             ports {
                 #address-cells = <1>;
                 #size-cells = <0>;
 
                 port@0 {
+                    reg = <0>;
                     #address-cells = <1>;
                     #size-cells = <0>;
-                    reg = <0>;
 
                     mipi_in_wcam: endpoint@0 {
                         reg = <0>;
-- 
2.28.0.rc1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

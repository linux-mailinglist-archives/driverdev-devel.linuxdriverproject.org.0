Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6949D251E71
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 19:35:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7C7432375C;
	Tue, 25 Aug 2020 17:35:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4E1a3wfIEkVo; Tue, 25 Aug 2020 17:35:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9886C23735;
	Tue, 25 Aug 2020 17:35:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C5D81BF41C
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 17:35:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 391A586CC5
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 17:35:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fge80VGCJ0Vj for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 17:35:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs5.siol.net [185.57.226.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 165CA86E14
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 17:35:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id E0F475247CD;
 Tue, 25 Aug 2020 19:35:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 5C4F0RfSdqwj; Tue, 25 Aug 2020 19:35:33 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 8D7295247E0;
 Tue, 25 Aug 2020 19:35:33 +0200 (CEST)
Received: from localhost.localdomain (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 3BC745247D3;
 Tue, 25 Aug 2020 19:35:31 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH 1/5] dt-bindings: sram: allwinner,
 sun4i-a10-system-control: Add R40 compatibles
Date: Tue, 25 Aug 2020 19:35:19 +0200
Message-Id: <20200825173523.1289379-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200825173523.1289379-1-jernej.skrabec@siol.net>
References: <20200825173523.1289379-1-jernej.skrabec@siol.net>
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
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Allwinner R40 has system controller similar to that in A10.

Add compatibles for system controller and sram c1 region.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../bindings/sram/allwinner,sun4i-a10-system-control.yaml   | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
index f5825935fd22..6ebcbc153691 100644
--- a/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
+++ b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
@@ -33,6 +33,9 @@ properties:
           - const: allwinner,sun4i-a10-system-control
       - const: allwinner,sun8i-a23-system-control
       - const: allwinner,sun8i-h3-system-control
+      - items:
+          - const: allwinner,sun8i-r40-system-control
+          - const: allwinner,sun4i-a10-system-control
       - const: allwinner,sun50i-a64-sram-controller
         deprecated: true
       - const: allwinner,sun50i-a64-system-control
@@ -86,6 +89,9 @@ patternProperties:
               - items:
                   - const: allwinner,sun8i-h3-sram-c1
                   - const: allwinner,sun4i-a10-sram-c1
+              - items:
+                  - const: allwinner,sun8i-r40-sram-c1
+                  - const: allwinner,sun4i-a10-sram-c1
               - items:
                   - const: allwinner,sun50i-a64-sram-c1
                   - const: allwinner,sun4i-a10-sram-c1
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

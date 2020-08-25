Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEF4251E6C
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 19:35:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32B7B88808;
	Tue, 25 Aug 2020 17:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ztZsJFx+ds7f; Tue, 25 Aug 2020 17:35:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4EDCA88793;
	Tue, 25 Aug 2020 17:35:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1AD4C1BF41C
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 17:35:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 17D8C87626
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 17:35:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XGj0hi8mslZX for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 17:35:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs30.siol.net [185.57.226.221])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D871988336
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 17:35:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 543CC5247BB;
 Tue, 25 Aug 2020 19:35:36 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id HCB8E6ksnexE; Tue, 25 Aug 2020 19:35:36 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id DE2B952476A;
 Tue, 25 Aug 2020 19:35:35 +0200 (CEST)
Received: from localhost.localdomain (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 8F50A524801;
 Tue, 25 Aug 2020 19:35:33 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH 2/5] ARM: dts: sun8i: r40: Add node for system controller
Date: Tue, 25 Aug 2020 19:35:20 +0200
Message-Id: <20200825173523.1289379-3-jernej.skrabec@siol.net>
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

Allwinner R40 has system controller and SRAM C1 region similar to that
in A10.

Add nodes for them.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index dff9a3dc1fba..0c7526365896 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -190,6 +190,29 @@ mixer1_out_tcon_top: endpoint {
 			};
 		};
 
+		syscon: system-control@1c00000 {
+			compatible = "allwinner,sun8i-r40-system-control",
+				     "allwinner,sun4i-a10-system-control";
+			reg = <0x01c00000 0x30>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+
+			sram_c: sram@1d00000 {
+				compatible = "mmio-sram";
+				reg = <0x01d00000 0xd0000>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0 0x01d00000 0xd0000>;
+
+				ve_sram: sram-section@0 {
+					compatible = "allwinner,sun8i-r40-sram-c1",
+						     "allwinner,sun4i-a10-sram-c1";
+					reg = <0x000000 0x80000>;
+				};
+			};
+		};
+
 		nmi_intc: interrupt-controller@1c00030 {
 			compatible = "allwinner,sun7i-a20-sc-nmi";
 			interrupt-controller;
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

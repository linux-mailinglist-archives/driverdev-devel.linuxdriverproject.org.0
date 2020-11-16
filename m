Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D272B443B
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Nov 2020 14:02:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 32A6B8686F;
	Mon, 16 Nov 2020 13:02:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p8rpKydNVJg0; Mon, 16 Nov 2020 13:02:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F6708681A;
	Mon, 16 Nov 2020 13:02:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B5BB21BF41C
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 13:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7C777204BB
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 13:02:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d3FPtuvf6cXM for <devel@linuxdriverproject.org>;
 Mon, 16 Nov 2020 13:02:05 +0000 (UTC)
X-Greylist: delayed 00:05:30 by SQLgrey-1.7.6
Received: from dmz.c-home.cz (gw.c-home.cz [89.24.150.100])
 by silver.osuosl.org (Postfix) with ESMTP id 51A4B20488
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 13:02:05 +0000 (UTC)
Received: from ubuntu2004.c-home.cz (unifi.c-home.cz [192.168.1.227])
 by dmz.c-home.cz (8.14.4+Sun/8.14.4) with ESMTP id 0AGCuMlb021922;
 Mon, 16 Nov 2020 13:56:46 +0100 (CET)
From: Martin Cerveny <m.cerveny@computer.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v3 6/6] ARM: dts: sun8i: v3s: Add video engine node
Date: Mon, 16 Nov 2020 13:56:17 +0100
Message-Id: <20201116125617.7597-7-m.cerveny@computer.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201116125617.7597-1-m.cerveny@computer.org>
References: <20201116125617.7597-1-m.cerveny@computer.org>
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
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Martin Cerveny <m.cerveny@computer.org>, linux-media@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Allwinner V3S SoC has a video engine.
Add a node for it.

Signed-off-by: Martin Cerveny <m.cerveny@computer.org>
---
 arch/arm/boot/dts/sun8i-v3s.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi b/arch/arm/boot/dts/sun8i-v3s.dtsi
index 70193512c222..e8f304125e2d 100644
--- a/arch/arm/boot/dts/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
@@ -211,6 +211,16 @@ tcon0_out: port@1 {
 			};
 		};
 
+		video-codec@1c0e000 {
+			compatible = "allwinner,sun8i-v3s-video-engine";
+			reg = <0x01c0e000 0x1000>;
+			clocks = <&ccu CLK_BUS_VE>, <&ccu CLK_VE>,
+				 <&ccu CLK_DRAM_VE>;
+			clock-names = "ahb", "mod", "ram";
+			resets = <&ccu RST_BUS_VE>;
+			interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>;
+			allwinner,sram = <&ve_sram 1>;
+		};
 
 		mmc0: mmc@1c0f000 {
 			compatible = "allwinner,sun7i-a20-mmc";
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

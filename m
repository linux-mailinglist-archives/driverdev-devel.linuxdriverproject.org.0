Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECCF267AD7
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Sep 2020 16:31:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A1B787600;
	Sat, 12 Sep 2020 14:31:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Qyw3A6VyuvD; Sat, 12 Sep 2020 14:31:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 859F1875B8;
	Sat, 12 Sep 2020 14:31:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 89CE31BF86C
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 14:31:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7D1E286D1D
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 14:31:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l56Au5i8vyyQ for <devel@linuxdriverproject.org>;
 Sat, 12 Sep 2020 14:31:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from dmz.c-home.cz (gw.c-home.cz [89.24.150.100])
 by whitealder.osuosl.org (Postfix) with ESMTP id AEEE286DED
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 14:31:11 +0000 (UTC)
Received: from ubuntu1804.c-home.cz (unifi.c-home.cz [192.168.1.239])
 by dmz.c-home.cz (8.14.4+Sun/8.14.4) with ESMTP id 08CEUtN2007223;
 Sat, 12 Sep 2020 16:31:01 +0200 (CEST)
From: Martin Cerveny <m.cerveny@computer.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v2 3/6] ARM: dts: sun8i: v3s: Add node for system control
Date: Sat, 12 Sep 2020 16:30:49 +0200
Message-Id: <20200912143052.30952-4-m.cerveny@computer.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200912143052.30952-1-m.cerveny@computer.org>
References: <20200912143052.30952-1-m.cerveny@computer.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Martin Cerveny <m.cerveny@computer.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Allwinner V3s has system control and SRAM C1 region similar to H3.

Signed-off-by: Martin Cerveny <m.cerveny@computer.org>
---
 arch/arm/boot/dts/sun8i-v3s.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi b/arch/arm/boot/dts/sun8i-v3s.dtsi
index e5312869c0d2..3f18866fb37b 100644
--- a/arch/arm/boot/dts/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
@@ -138,6 +138,29 @@
 			};
 		};
 
+		syscon: system-control@1c00000 {
+			compatible = "allwinner,sun8i-v3s-system-control",
+				     "allwinner,sun8i-h3-system-control";
+			reg = <0x01c00000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+
+			sram_c: sram@1d00000 {
+				compatible = "mmio-sram";
+				reg = <0x01d00000 0x80000>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0 0x01d00000 0x80000>;
+
+				ve_sram: sram-section@0 {
+					compatible = "allwinner,sun8i-v3s-sram-c1",
+						     "allwinner,sun4i-a10-sram-c1";
+					reg = <0x000000 0x80000>;
+				};
+			};
+		};
+
 		tcon0: lcd-controller@1c0c000 {
 			compatible = "allwinner,sun8i-v3s-tcon";
 			reg = <0x01c0c000 0x1000>;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

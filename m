Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2190B18D4B9
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 17:42:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 754F387657;
	Fri, 20 Mar 2020 16:42:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BSaai0v2WWuT; Fri, 20 Mar 2020 16:42:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6BA1187639;
	Fri, 20 Mar 2020 16:42:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D8C4C1BF278
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:42:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C8CB487583
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:42:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ape8FcdoLgQy for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:42:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1A7CA8758A
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:42:33 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N5max-1jMVXI308Z-017EiU for <devel@driverdev.osuosl.org>; Fri, 20 Mar
 2020 17:42:31 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 645C964F8B2
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:42:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qjfXm-_C2V_g for <devel@driverdev.osuosl.org>;
 Fri, 20 Mar 2020 17:42:29 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id EC58C64CA33
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 17:42:29 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.41) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 20 Mar 2020 17:42:29 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id D8C8280506; Fri, 20 Mar 2020 17:12:04 +0100 (CET)
Date: Fri, 20 Mar 2020 17:12:04 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v3 09/11] arm64: dts: renesas: salvator: add a connection
 from adv748x codec (HDMI input) to the R-Car SoC
Message-ID: <077a97942890b79fef2b271e889055fc07c74939.1584720678.git.alexander.riesen@cetitec.com>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <cover.1584720678.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1584720678.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.41]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7660
X-Provags-ID: V03:K1:dKIuYYDa+JWrYdyj8fTlqV1g24jEFaFKA9/29W4yMo1ZD/Q0HFj
 Cbi5g2vaf+KLsWO5sMki0o9InFgqpNj9/+CbQfAn42RLqSfT4Uv+PPfk52Q44kdXMjctFHg
 1hYNiAdDV6pN0mMW5UTMQUbVa/vrEKZ2MqW6l1acK04IQTIZbLmsLtOqre5gU0vW//x/POr
 8dB0jgkyuu/fC23KyQeLg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:C23Xh+spJpw=:r8tWFcdAsy56d1+GiBGWI4
 UVnxK6AVenGbzKGFzUIRGnjc5jD6o4q49cTeS+F/j+Nh3CTs2FR+eqLDG2Mla7dUBPd26xO+Q
 TzBgdxcdTnt+r+RIM0EC1PXzlUTT5SRZrYgqi5ABV6xwu7JjobL5zQsA1wYHqjqJ65tvvHhzs
 Dut489TgQjBXTg+fBWQqEw/RCKF2twEMa45iaGyenccjokRWYKFyw2awo6bsnBUQQgwFfri4n
 YhqnVXKAfDDkze+vT/KAWP7XYIFKmeXSlpNSSYzSYYASUpBSAVti479gqVg5rbR3AtRHjwgfu
 2FJ0HHAlxPVm9gcTyAP7zVoFWe/BjxEvoAFG5s4EDLylAXrraBHXNZ4yB6fzpiUX/B9S/Gluz
 SSqmVvc06N5Pkdbh106qAm/h9WCXWdJCfr8XQKSe1rKp3kxMQkGl5H18pgXsV+kFzIu8wjO6b
 zqzqL+ab3lK9A+kV+acFcw3A3Ugv5JsFbkyae6ZY5q6UkmJRa9TZiMYdKSug40tgpkDdtdOh1
 XasG1kjOluPOu2oxWoGTCYMyTJR5RW+AA/RQ3fysTxSX3B1+GMtK6nKUcukHMw/G+yK06GCrr
 U1sYQV27YUC4kPhxMZXPffFYz497zAdhrkH10WIRV0585ECm9VZpSnUzNDtYfe5GDbyo74/CQ
 TykDDOBuB4za3luWLBk53Xj+6Uj/qzd9wD+sf2BqeuQ1VnH8rNbFvRhxSTpychqxapQcZk3my
 rz/JtIrmR9AGsPOu4mI3nl/UH0ADFTy2IQeTsQMwUvI+NE8/A+ubXOXjrR/kEUisF94g/95I4
 acJN+Yvl6htbrMZNp7lMrrAGMlCuQ7lRtq0WCIrnwTv7iExYo34JFv4D2i52wmAv2EcGijVOm
 o5Q69nGG6lYyBVisUjQ4oOmUXG9AQrPctwTY5zqJwxC9/yflkwxYmRpxYc3Slu9SDU3nnzH0O
 QeBbsClnTtyMcMqErmLToWIO9Vg+aH/U=
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
Cc: Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As all known variants of the Salvator board have the HDMI decoder
chip (the ADV7482) connected to the SSI4 on R-Car SoC, the ADV7482
endpoint and the connection definitions are placed in the common board
file.
For the same reason, the CLK_C clock line and I2C configuration (similar
to the ak4613, on the same interface) are added into the common file.

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>

--

v2:

Also add ssi4_ctrl pin group in the sound pins. The pins are
responsible for SCK4 (sample clock) WS4 and (word boundary input),
and are required for SSI audio input over I2S.

Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>

The adv748x shall provide its own implementation of the output clock
(MCLK), connected to the audio_clk_c line of the R-Car SoC.

If the frequency of the ADV748x MCLK were fixed, the clock
implementation were not necessary, but it does not seem so: the MCLK
depends on the value in a speed multiplier register and the input sample
rate (48kHz).

Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>

Remove audio clock C from the clocks of adv7482.

The clocks property of the video-receiver node lists the input
clocks of the device, which is quite the opposite from the
original intention: the adv7482 on Salvator X boards is a
provide of the MCLK clock for I2S audio output.

Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>

Remove old definition of &sound_card.dais and reduce size of changes
in the Salvator-X specific device tree source.

Declare video-receiver a clock producer, as the adv748x driver
implements the master clock used I2S audio output.

Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>

The driver provides only MCLK clock, not the SCLK and LRCLK,
which are part of the I2S protocol.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../boot/dts/renesas/r8a77950-salvator-x.dts  |  3 +-
 .../boot/dts/renesas/salvator-common.dtsi     | 47 +++++++++++++++++--
 2 files changed, 44 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77950-salvator-x.dts b/arch/arm64/boot/dts/renesas/r8a77950-salvator-x.dts
index 2438825c9b22..e16c146808b6 100644
--- a/arch/arm64/boot/dts/renesas/r8a77950-salvator-x.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77950-salvator-x.dts
@@ -146,7 +146,8 @@ &sata {
 &sound_card {
 	dais = <&rsnd_port0	/* ak4613 */
 		&rsnd_port1	/* HDMI0  */
-		&rsnd_port2>;	/* HDMI1  */
+		&rsnd_port2	/* HDMI1  */
+		&rsnd_port3>;	/* adv7482 hdmi-in  */
 };
 
 &usb2_phy2 {
diff --git a/arch/arm64/boot/dts/renesas/salvator-common.dtsi b/arch/arm64/boot/dts/renesas/salvator-common.dtsi
index 98bbcafc8c0d..ead7f8d7a929 100644
--- a/arch/arm64/boot/dts/renesas/salvator-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/salvator-common.dtsi
@@ -460,7 +460,7 @@ pca9654: gpio@20 {
 		#gpio-cells = <2>;
 	};
 
-	video-receiver@70 {
+	adv7482_hdmi_in: video-receiver@70 {
 		compatible = "adi,adv7482";
 		reg = <0x70 0x71 0x72 0x73 0x74 0x75
 		       0x60 0x61 0x62 0x63 0x64 0x65>;
@@ -469,6 +469,7 @@ video-receiver@70 {
 
 		#address-cells = <1>;
 		#size-cells = <0>;
+		#clock-cells = <0>; /* the MCLK for I2S output */
 
 		interrupt-parent = <&gpio6>;
 		interrupt-names = "intrq1", "intrq2";
@@ -510,6 +511,15 @@ adv7482_txb: endpoint {
 				remote-endpoint = <&csi20_in>;
 			};
 		};
+
+		port@c {
+			reg = <12>;
+
+			adv7482_i2s: endpoint {
+				remote-endpoint = <&rsnd_endpoint3>;
+				system-clock-direction-out;
+			};
+		};
 	};
 
 	csa_vdd: adc@7c {
@@ -684,7 +694,8 @@ sdhi3_pins_uhs: sd3_uhs {
 	};
 
 	sound_pins: sound {
-		groups = "ssi01239_ctrl", "ssi0_data", "ssi1_data_a";
+		groups = "ssi01239_ctrl", "ssi0_data", "ssi1_data_a",
+			 "ssi4_data", "ssi4_ctrl";
 		function = "ssi";
 	};
 
@@ -733,8 +744,8 @@ &rcar_sound {
 	pinctrl-0 = <&sound_pins &sound_clk_pins>;
 	pinctrl-names = "default";
 
-	/* Single DAI */
-	#sound-dai-cells = <0>;
+	/* multi DAI */
+	#sound-dai-cells = <1>;
 
 	/* audio_clkout0/1/2/3 */
 	#clock-cells = <1>;
@@ -758,8 +769,19 @@ &rcar_sound {
 		 <&cpg CPG_MOD 1020>, <&cpg CPG_MOD 1021>,
 		 <&cpg CPG_MOD 1019>, <&cpg CPG_MOD 1018>,
 		 <&audio_clk_a>, <&cs2000>,
-		 <&audio_clk_c>,
+		 <&adv7482_hdmi_in>,
 		 <&cpg CPG_CORE CPG_AUDIO_CLK_I>;
+	clock-names = "ssi-all",
+		      "ssi.9", "ssi.8", "ssi.7", "ssi.6",
+		      "ssi.5", "ssi.4", "ssi.3", "ssi.2",
+		      "ssi.1", "ssi.0",
+		      "src.9", "src.8", "src.7", "src.6",
+		      "src.5", "src.4", "src.3", "src.2",
+		      "src.1", "src.0",
+		      "mix.1", "mix.0",
+		      "ctu.1", "ctu.0",
+		      "dvc.0", "dvc.1",
+		      "clk_a", "clk_b", "clk_c", "clk_i";
 
 	ports {
 		#address-cells = <1>;
@@ -777,6 +799,21 @@ rsnd_endpoint0: endpoint {
 				capture  = <&ssi1 &src1 &dvc1>;
 			};
 		};
+		rsnd_port3: port@3 {
+			reg = <3>;
+			rsnd_endpoint3: endpoint {
+				remote-endpoint = <&adv7482_i2s>;
+
+				dai-tdm-slot-num = <8>;
+				dai-tdm-slot-width = <32>;
+				dai-format = "left_j";
+				mclk-fs = <256>;
+				bitclock-master = <&adv7482_i2s>;
+				frame-master = <&adv7482_i2s>;
+
+				capture = <&ssi4>;
+			};
+		};
 	};
 };
 
-- 
2.25.1.25.g9ecbe7eb18


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

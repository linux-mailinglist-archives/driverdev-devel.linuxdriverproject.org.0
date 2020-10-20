Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C3D29434A
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 21:39:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C3B53873DA;
	Tue, 20 Oct 2020 19:39:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pSVKy-x2t8O0; Tue, 20 Oct 2020 19:39:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 55271873CE;
	Tue, 20 Oct 2020 19:39:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 170E61BF37F
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 19:39:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 10CA386C5D
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 19:39:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qip5lalvT6o7 for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 19:39:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6099386C5C
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 19:39:44 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 15D721F44DF2
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v6 9/9] arm64: dts: rockchip: add isp and sensors for Scarlet
Date: Tue, 20 Oct 2020 16:38:50 -0300
Message-Id: <20201020193850.1460644-10-helen.koike@collabora.com>
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

From: Eddie Cai <eddie.cai.linux@gmail.com>

Enable ISP and camera sensor ov2685 and ov5695 for Scarlet Chromebook

Verified with:
    make ARCH=arm64 dtbs_check

Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
Signed-off-by: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Helen Koike <helen.koike@collabora.com>
Reviewed-by: Tomasz Figa <tfiga@chromium.org>
---
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 60cd1c18cd4e0..beee5fbb34437 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -296,6 +296,52 @@ camera: &i2c7 {
 
 	/* 24M mclk is shared between world and user cameras */
 	pinctrl-0 = <&i2c7_xfer &test_clkout1>;
+
+	/* Rear-facing camera */
+	wcam: camera@36 {
+		compatible = "ovti,ov5695";
+		reg = <0x36>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wcam_rst>;
+
+		clocks = <&cru SCLK_TESTCLKOUT1>;
+		clock-names = "xvclk";
+
+		avdd-supply = <&pp2800_cam>;
+		dvdd-supply = <&pp1250_cam>;
+		dovdd-supply = <&pp1800_s0>;
+		reset-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>;
+
+		port {
+			wcam_out: endpoint {
+				remote-endpoint = <&mipi_in_wcam>;
+				data-lanes = <1 2>;
+			};
+		};
+	};
+
+	/* Front-facing camera */
+	ucam: camera@3c {
+		compatible = "ovti,ov2685";
+		reg = <0x3c>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ucam_rst>;
+
+		clocks = <&cru SCLK_TESTCLKOUT1>;
+		clock-names = "xvclk";
+
+		avdd-supply = <&pp2800_cam>;
+		dovdd-supply = <&pp1800_s0>;
+		dvdd-supply = <&pp1800_s0>;
+		reset-gpios = <&gpio2 3 GPIO_ACTIVE_LOW>;
+
+		port {
+			ucam_out: endpoint {
+				remote-endpoint = <&mipi_in_ucam>;
+				data-lanes = <1>;
+			};
+		};
+	};
 };
 
 &cdn_dp {
@@ -353,10 +399,38 @@ &io_domains {
 	gpio1830-supply = <&pp1800_s0>;		/* APIO4_VDD;  4c 4d */
 };
 
+&isp0 {
+	status = "okay";
+
+	ports {
+		port@0 {
+			mipi_in_wcam: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&wcam_out>;
+				data-lanes = <1 2>;
+			};
+
+			mipi_in_ucam: endpoint@1 {
+				reg = <1>;
+				remote-endpoint = <&ucam_out>;
+				data-lanes = <1>;
+			};
+		};
+	};
+};
+
+&isp0_mmu {
+	status = "okay";
+};
+
 &max98357a {
 	sdmode-gpios = <&gpio0 2 GPIO_ACTIVE_HIGH>;
 };
 
+&mipi_dphy_rx0 {
+	status = "okay";
+};
+
 &mipi_dsi {
 	status = "okay";
 	clock-master;
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

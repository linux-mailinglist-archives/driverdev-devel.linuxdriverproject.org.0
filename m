Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDD3212CFA
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 21:14:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5DE998A616;
	Thu,  2 Jul 2020 19:14:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5s4XMYUjy6rA; Thu,  2 Jul 2020 19:14:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D36A38A5F1;
	Thu,  2 Jul 2020 19:14:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F7FC1BF379
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 19:14:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2C32C89778
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 19:14:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4LEfxjrNAisS for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 19:14:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 72DDE88300
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 19:14:18 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id B83142A60B0
From: Helen Koike <helen.koike@collabora.com>
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 9/9] arm64: dts: rockchip: add isp and sensors for Scarlet
Date: Thu,  2 Jul 2020 16:13:22 -0300
Message-Id: <20200702191322.2639681-10-helen.koike@collabora.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200702191322.2639681-1-helen.koike@collabora.com>
References: <20200702191322.2639681-1-helen.koike@collabora.com>
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

From: Eddie Cai <eddie.cai.linux@gmail.com>

Enable ISP and camera sensor ov2685 and ov5695 for Scarlet Chromebook

Verified with:
    make ARCH=arm64 dtbs_check

Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
Signed-off-by: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Helen Koike <helen.koike@collabora.com>
---

This patch is based on:
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/527854

Changes in V3:
- This patch was first submitted stand alone at
https://lore.kernel.org/patchwork/patch/1223736/
I'm including in this patch series without changes
---
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 4373ed732af76..ae08205aa8e24 100644
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
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

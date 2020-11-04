Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3492A7211
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 41A8520464;
	Wed,  4 Nov 2020 23:45:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WOzAURPh7Qds; Wed,  4 Nov 2020 23:45:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BDF7220481;
	Wed,  4 Nov 2020 23:45:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5FC921BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5C94D85569
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sFtC_sUrrg9X for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 65945854FC
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:35 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id i6so197261lfd.1
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g8x6egXvkoE7IlVITDMjG68sqFxmck8iG4cXdT5aClY=;
 b=knwY4qldgRz85xN7wHG8/t/Hk+TrlyqYB5yOrIfHcDq2L83ZKYnXp52uopxa2aPau+
 GGiXRS0kkgWn5s8ZKZvNRdqVUsXRK9kQnTUTFEbvU1YAMqNm+lhpGdFlAxsxM1vjZGXC
 gR/raJPLvVdXo04Mi9NHtGHCza8FOnDMmEFMu+g/PEvx23qqmh4Yb/kg91yo0kxMhBQI
 TqvorWHpnTxBKT6rm3Gy60P7q74O7AER0fd8RuIq8B7gjuFTHDHSAOdZWeAhSh7tCCYs
 +qREBrXAnJcIpPh5txx1lR2W6vQJm0AXsdEYxiVWGVo/jpLVPSiro6atqsJfUXYFp4vt
 Xpdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g8x6egXvkoE7IlVITDMjG68sqFxmck8iG4cXdT5aClY=;
 b=ec37hylTxJKBYgkCq1q3rPgL6Uv8KUFZyChWHvrkaiMSzGA69ac8y1FvyhuOuX7aqI
 6X3sATez0f+OR8GhpT4Pg4PlERXkBUEjY5voEuMlbIMmY7uiIJQgWcybAyLI0Uu4mh+S
 MyBjYFw3RGrmNuRgB4ZydjxUEN4jcAvhLDHaW9/DxeqL9pMBwN23+OefVFy+iwDErGek
 1VZZruP5RRq1IPxgNocOaniESH8L+v1s4AtHammEd70Rp9ap3OMRibiYqlg4hh/VYjX0
 HG1pOt4+fMLd4VgxVEuzZYai+8eBej+z6PRDQek9v4DJtWi89DXD8coUcMp3Pgv6gMbR
 HdrQ==
X-Gm-Message-State: AOAM532lAQD8uTLc97rVx3GblMdnVvsU7/YPcJVZjYpSfWxUGjwD5xZi
 O3SRnz5soUqDA8a6bqv1M3A=
X-Google-Smtp-Source: ABdhPJz8N2Oz+8UFGJPk7QbDn5k2EBCL7Q+SAg+CeNKJVu1D596H0D056BGluC+KaAm7RZocVmHpuw==
X-Received: by 2002:ac2:52b9:: with SMTP id r25mr52667lfm.274.1604533533673;
 Wed, 04 Nov 2020 15:45:33 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:33 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Alan Stern <stern@rowland.harvard.edu>, Peter Chen <Peter.Chen@nxp.com>,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Peter Geis <pgwipeout@gmail.com>, Nicolas Chauvet <kwizart@gmail.com>
Subject: [PATCH v1 27/30] ARM: tegra: paz00: Add voltage supplies to
 DVFS-capable devices
Date: Thu,  5 Nov 2020 02:44:24 +0300
Message-Id: <20201104234427.26477-28-digetx@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201104234427.26477-1-digetx@gmail.com>
References: <20201104234427.26477-1-digetx@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add voltage supplies to DVFS-capable devices in order to enable
system-wide voltage scaling and allow CORE/RTC regulators to go lower.

Tested-by: Nicolas Chauvet <kwizart@gmail.com>
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/boot/dts/tegra20-paz00.dts | 40 ++++++++++++++++++++++++-----
 1 file changed, 33 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/tegra20-paz00.dts b/arch/arm/boot/dts/tegra20-paz00.dts
index 52a81d888424..d497eb149fba 100644
--- a/arch/arm/boot/dts/tegra20-paz00.dts
+++ b/arch/arm/boot/dts/tegra20-paz00.dts
@@ -26,7 +26,19 @@ memory@0 {
 	};
 
 	host1x@50000000 {
+		core-supply = <&core_vdd_reg>;
+
+		gr2d@54140000 {
+			core-supply = <&core_vdd_reg>;
+		};
+
+		gr3d@54180000 {
+			core-supply = <&core_vdd_reg>;
+		};
+
 		dc@54200000 {
+			core-supply = <&core_vdd_reg>;
+
 			rgb {
 				status = "okay";
 
@@ -34,11 +46,16 @@ rgb {
 			};
 		};
 
+		dc@54240000 {
+			core-supply = <&core_vdd_reg>;
+		};
+
 		hdmi@54280000 {
 			status = "okay";
 
 			vdd-supply = <&hdmi_vdd_reg>;
 			pll-supply = <&hdmi_pll_reg>;
+			core-supply = <&core_vdd_reg>;
 
 			nvidia,ddc-i2c-bus = <&hdmi_ddc>;
 			nvidia,hpd-gpio = <&gpio TEGRA_GPIO(N, 7)
@@ -46,6 +63,10 @@ hdmi@54280000 {
 		};
 	};
 
+	vde@6001a000 {
+		core-supply = <&core_vdd_reg>;
+	};
+
 	pinmux@70000014 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&state_default>;
@@ -389,10 +410,10 @@ sys_reg: sys {
 
 				core_vdd_reg: sm0 {
 					regulator-name = "+1.2vs_sm0,vdd_core";
-					regulator-min-microvolt = <1200000>;
-					regulator-max-microvolt = <1225000>;
+					regulator-min-microvolt = <950000>;
+					regulator-max-microvolt = <1300000>;
 					regulator-coupled-with = <&rtc_vdd_reg &cpu_vdd_reg>;
-					regulator-coupled-max-spread = <170000 450000>;
+					regulator-coupled-max-spread = <170000 550000>;
 					regulator-always-on;
 
 					nvidia,tegra-core-regulator;
@@ -403,7 +424,7 @@ cpu_vdd_reg: sm1 {
 					regulator-min-microvolt = <750000>;
 					regulator-max-microvolt = <1100000>;
 					regulator-coupled-with = <&core_vdd_reg &rtc_vdd_reg>;
-					regulator-coupled-max-spread = <450000 450000>;
+					regulator-coupled-max-spread = <550000 550000>;
 					regulator-always-on;
 
 					nvidia,tegra-cpu-regulator;
@@ -427,10 +448,10 @@ ldo1 {
 
 				rtc_vdd_reg: ldo2 {
 					regulator-name = "+1.2vs_ldo2,vdd_rtc";
-					regulator-min-microvolt = <1200000>;
-					regulator-max-microvolt = <1225000>;
+					regulator-min-microvolt = <950000>;
+					regulator-max-microvolt = <1300000>;
 					regulator-coupled-with = <&core_vdd_reg &cpu_vdd_reg>;
-					regulator-coupled-max-spread = <170000 450000>;
+					regulator-coupled-max-spread = <170000 550000>;
 					regulator-always-on;
 
 					nvidia,tegra-rtc-regulator;
@@ -519,6 +540,7 @@ usb@c5000000 {
 		compatible = "nvidia,tegra20-udc";
 		status = "okay";
 		dr_mode = "peripheral";
+		core-supply = <&core_vdd_reg>;
 	};
 
 	usb-phy@c5000000 {
@@ -529,6 +551,7 @@ usb@c5004000 {
 		status = "okay";
 		nvidia,phy-reset-gpio = <&gpio TEGRA_GPIO(V, 0)
 			GPIO_ACTIVE_LOW>;
+		core-supply = <&core_vdd_reg>;
 	};
 
 	usb-phy@c5004000 {
@@ -539,6 +562,7 @@ usb-phy@c5004000 {
 
 	usb@c5008000 {
 		status = "okay";
+		core-supply = <&core_vdd_reg>;
 	};
 
 	usb-phy@c5008000 {
@@ -551,12 +575,14 @@ mmc@c8000000 {
 		wp-gpios = <&gpio TEGRA_GPIO(H, 1) GPIO_ACTIVE_HIGH>;
 		power-gpios = <&gpio TEGRA_GPIO(V, 1) GPIO_ACTIVE_HIGH>;
 		bus-width = <4>;
+		core-supply = <&core_vdd_reg>;
 	};
 
 	mmc@c8000600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
+		core-supply = <&core_vdd_reg>;
 	};
 
 	backlight: backlight {
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

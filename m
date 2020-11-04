Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB772A7207
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70A638554A;
	Wed,  4 Nov 2020 23:45:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xVTwo_0JvNv9; Wed,  4 Nov 2020 23:45:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0A93E85569;
	Wed,  4 Nov 2020 23:45:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ABF111BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A2D3D8507C
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pvsbs19IOqPM for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B74538492B
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:36 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id 184so167450lfd.6
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Gi4Ws1VebKSodZ1aFskWWEY2ENCBRhjpkPkVyE+JZ/s=;
 b=ZVGF415ceJ5cr2f9Gly+jv4fzQXLlFJzBRcuR2zD4WvgH5zsluXpWCU+Qj1Ax6ZhVf
 1u0lOZIC13jnHSZyF8YgC9LapKlkjSE2olp5X0VAkAmOHo47oGiOd5KA51jau/9+1r5Q
 ZeTQKEqrAXOCG4BSyhIC6+s49wRDSmdZMvycdRKpjqSje66qxlJOfAn1erQ73TtXXuaZ
 iSCWRvM8IOOU+neCqee3lOhq+/lqVKY3CF0lloOJSA1gj7ifC6+jn0RNW/R6aoa+9wD+
 dgu4HpFxYtEPUrSRWIfoyjVSloujlYPyvV4oLCDPZxUQsNdkHeXL2lcu1JDT6N4vPELD
 54yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Gi4Ws1VebKSodZ1aFskWWEY2ENCBRhjpkPkVyE+JZ/s=;
 b=YNUDZvtDsA3pI+iWya3nzvD/iPJg20C39vMVnjQdNqmQxdQwaYLTqD8NchtYUdOR1b
 pQ41VhPDhcod+bXeIajLVa0x0CUF2vwD6Jh/z+D9DXfqieZIc3CFmis5gpfn1sTE6oSt
 VzcsaXM4G+shZykxiwzfnxxYMVd3OJ+weX1eM2WIg9yzC2D7shg0vGpH5xHKd6qbJprR
 YMzvW/AGdoKvH1ZG+Mdsv/HIqpji3mvwL51FgbzkgowhXgwnhnQVwNIxYDGIc1HadDmp
 M8NOmuh9aX4fhxBuuHv6tHPjW2sp8GfWpmBkmoLio/8xg3OXUPWS35q33cVJ/OUmPv18
 a4CA==
X-Gm-Message-State: AOAM531IArn8tgTFGLcnT7Oi2ys5DnGilh7E9njtnQPTZtOW7TQNNLaR
 vW4LwizDC3fDbSd9ebi2yog=
X-Google-Smtp-Source: ABdhPJxSINEdNTI8WAS9/8DNtowjH/ui3U9cyprfFygiShmm4vwewOoOOmbkqukzpRnxz4FsJYlb2g==
X-Received: by 2002:ac2:5498:: with SMTP id t24mr69465lfk.12.1604533535051;
 Wed, 04 Nov 2020 15:45:35 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:34 -0800 (PST)
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
Subject: [PATCH v1 28/30] ARM: tegra: acer-a500: Add voltage supplies to
 DVFS-capable devices
Date: Thu,  5 Nov 2020 02:44:25 +0300
Message-Id: <20201104234427.26477-29-digetx@gmail.com>
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

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 .../boot/dts/tegra20-acer-a500-picasso.dts    | 30 +++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/tegra20-acer-a500-picasso.dts b/arch/arm/boot/dts/tegra20-acer-a500-picasso.dts
index b4ed88802387..5ab6872cd84c 100644
--- a/arch/arm/boot/dts/tegra20-acer-a500-picasso.dts
+++ b/arch/arm/boot/dts/tegra20-acer-a500-picasso.dts
@@ -60,7 +60,19 @@ linux,cma@30000000 {
 	};
 
 	host1x@50000000 {
+		core-supply = <&vdd_core>;
+
+		gr2d@54140000 {
+			core-supply = <&vdd_core>;
+		};
+
+		gr3d@54180000 {
+			core-supply = <&vdd_core>;
+		};
+
 		dc@54200000 {
+			core-supply = <&vdd_core>;
+
 			rgb {
 				status = "okay";
 
@@ -73,12 +85,17 @@ lcd_output: endpoint {
 			};
 		};
 
+		dc@54240000 {
+			core-supply = <&vdd_core>;
+		};
+
 		hdmi@54280000 {
 			status = "okay";
 
 			vdd-supply = <&hdmi_vdd_reg>;
 			pll-supply = <&hdmi_pll_reg>;
 			hdmi-supply = <&vdd_5v0_sys>;
+			core-supply = <&vdd_core>;
 
 			nvidia,ddc-i2c-bus = <&hdmi_ddc>;
 			nvidia,hpd-gpio = <&gpio TEGRA_GPIO(N, 7)
@@ -86,6 +103,10 @@ hdmi@54280000 {
 		};
 	};
 
+	vde@6001a000 {
+		core-supply = <&vdd_core>;
+	};
+
 	pinmux@70000014 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&state_default>;
@@ -565,7 +586,7 @@ sys_reg: sys {
 
 				vdd_core: sm0 {
 					regulator-name = "vdd_sm0,vdd_core";
-					regulator-min-microvolt = <1200000>;
+					regulator-min-microvolt = <950000>;
 					regulator-max-microvolt = <1300000>;
 					regulator-coupled-with = <&rtc_vdd &vdd_cpu>;
 					regulator-coupled-max-spread = <170000 550000>;
@@ -606,7 +627,7 @@ ldo1 {
 
 				rtc_vdd: ldo2 {
 					regulator-name = "vdd_ldo2,vdd_rtc";
-					regulator-min-microvolt = <1200000>;
+					regulator-min-microvolt = <950000>;
 					regulator-max-microvolt = <1300000>;
 					regulator-coupled-with = <&vdd_core &vdd_cpu>;
 					regulator-coupled-max-spread = <170000 550000>;
@@ -696,6 +717,7 @@ usb@c5000000 {
 		compatible = "nvidia,tegra20-udc";
 		status = "okay";
 		dr_mode = "peripheral";
+		core-supply = <&vdd_core>;
 	};
 
 	usb-phy@c5000000 {
@@ -709,6 +731,7 @@ usb-phy@c5000000 {
 
 	usb@c5008000 {
 		status = "okay";
+		core-supply = <&vdd_core>;
 	};
 
 	usb-phy@c5008000 {
@@ -746,6 +769,7 @@ sdmmc1: mmc@c8000000 {
 		non-removable;
 
 		mmc-pwrseq = <&brcm_wifi_pwrseq>;
+		core-supply = <&vdd_core>;
 		vmmc-supply = <&vdd_3v3_sys>;
 		vqmmc-supply = <&vdd_3v3_sys>;
 
@@ -764,6 +788,7 @@ sdmmc3: mmc@c8000400 {
 		bus-width = <4>;
 		cd-gpios = <&gpio TEGRA_GPIO(I, 5) GPIO_ACTIVE_LOW>;
 		power-gpios = <&gpio TEGRA_GPIO(I, 6) GPIO_ACTIVE_HIGH>;
+		core-supply = <&vdd_core>;
 		vmmc-supply = <&vdd_3v3_sys>;
 		vqmmc-supply = <&vdd_3v3_sys>;
 	};
@@ -771,6 +796,7 @@ sdmmc3: mmc@c8000400 {
 	sdmmc4: mmc@c8000600 {
 		status = "okay";
 		bus-width = <8>;
+		core-supply = <&vdd_core>;
 		vmmc-supply = <&vcore_emmc>;
 		vqmmc-supply = <&vdd_3v3_sys>;
 		non-removable;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

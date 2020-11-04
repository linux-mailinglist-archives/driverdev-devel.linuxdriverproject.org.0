Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9F42A7209
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0464D85604;
	Wed,  4 Nov 2020 23:45:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KUzjhno1aEYB; Wed,  4 Nov 2020 23:45:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D5C0E85570;
	Wed,  4 Nov 2020 23:45:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 221E61BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1D71985722
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cQJuk41uW297 for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 77AE185700
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:39 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id i6so197430lfd.1
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H3MVi35NrfPSfRw//362HseqQCwlWGtdqp60bFnUhwA=;
 b=OMn9xsQeCPu/4JinLc/AgoFUYFf1NUAoZIU2Zlu6R9dPQunR73wlhPP73mbb5TTpva
 8JiMy8NqbA0ZUwEVbGtyIWXt0/tfNkV48rTG7UCuIXLFva4JtNhIA8GqUErMg0IIfKUE
 OGNdyB9H+gojt3sZ7bQ7bIApJMJ4in5sly2bBNeehvG48k/7mXjUtjndqT8kWTqY/A8g
 qT2PIZ20opUDRyncNfJ/LO9879zyPy4vHJoeMho7u+q9lf9+ZJxM1tYmJF+TFnEibpMR
 nv5gAps0odmdCDhcgB3tni2hr1hAyEgQ9NPd3AF9mNe+BxeSr5+mlHHTfY0Od+dUrfDJ
 v6DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H3MVi35NrfPSfRw//362HseqQCwlWGtdqp60bFnUhwA=;
 b=imV3pCbgiiuZTZ1n4kInI6H7779cf6zQqd7Cp+xWGZa9UYUTIlqCOy+VPAKjB7KRFk
 ARfCgxA6+PmzRL3YigrIIng75/8ki79rph1t8rB8o/pmiDYAKNyCOWQeiZcaSz6KVCOe
 9ObfrFv9evj0sDANLWjzu4J7u5X5yGTb1wyNIwT5yA99U/doBu24UGAUux5bBgA0DNgT
 JxEpNYvurcYQV2ByxO4mR70Q/qAhsV3c0fzrYb3TYKv+BYcVF0i87xIe0CfPzH9jWcMH
 ElGz69GLalupWm270fR9ltB00rbAYZ/RZCEITVhWFJGIJidAUleleSiiCaZepVK3CLXN
 am8Q==
X-Gm-Message-State: AOAM5307/P09672+rwirIq9Gc1teqwJhPs7l68ZaQwjTGdR8wSS00K+C
 4tVn0KxT59Rn5bUl5j99hWU=
X-Google-Smtp-Source: ABdhPJwyQ9D+w6Gwu+oNG3O4q0AAu7yTKLISIo+dIOXhdhlh+KdufIVDxOlsB9IAA16GjdDdX/+EHA==
X-Received: by 2002:ac2:53a5:: with SMTP id j5mr41614lfh.253.1604533537747;
 Wed, 04 Nov 2020 15:45:37 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:37 -0800 (PST)
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
Subject: [PATCH v1 30/30] ARM: tegra: nexus7: Add voltage supplies to
 DVFS-capable devices
Date: Thu,  5 Nov 2020 02:44:27 +0300
Message-Id: <20201104234427.26477-31-digetx@gmail.com>
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
system-wide voltage scaling.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 .../tegra30-asus-nexus7-grouper-common.dtsi   | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/boot/dts/tegra30-asus-nexus7-grouper-common.dtsi b/arch/arm/boot/dts/tegra30-asus-nexus7-grouper-common.dtsi
index 261e266c61d8..2b405872ad2d 100644
--- a/arch/arm/boot/dts/tegra30-asus-nexus7-grouper-common.dtsi
+++ b/arch/arm/boot/dts/tegra30-asus-nexus7-grouper-common.dtsi
@@ -60,7 +60,19 @@ trustzone@bfe00000 {
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
 
@@ -72,6 +84,10 @@ lcd_output: endpoint {
 				};
 			};
 		};
+
+		dc@54240000 {
+			core-supply = <&vdd_core>;
+		};
 	};
 
 	gpio@6000d000 {
@@ -90,6 +106,10 @@ init-low-power-mode {
 		};
 	};
 
+	vde@6001a000 {
+		core-supply = <&vdd_core>;
+	};
+
 	pinmux@70000868 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&state_default>;
@@ -835,6 +855,7 @@ bluetooth {
 
 	pwm: pwm@7000a000 {
 		status = "okay";
+		core-supply = <&vdd_core>;
 	};
 
 	i2c@7000c400 {
@@ -994,6 +1015,7 @@ sdmmc3: mmc@78000400 {
 
 		mmc-pwrseq = <&brcm_wifi_pwrseq>;
 		vmmc-supply = <&vdd_3v3_sys>;
+		core-supply = <&vdd_core>;
 		vqmmc-supply = <&vdd_1v8>;
 
 		/* Azurewave AW-NH665 BCM4330 */
@@ -1018,6 +1040,7 @@ usb@7d000000 {
 		compatible = "nvidia,tegra30-udc";
 		status = "okay";
 		dr_mode = "peripheral";
+		core-supply = <&vdd_core>;
 	};
 
 	usb-phy@7d000000 {
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

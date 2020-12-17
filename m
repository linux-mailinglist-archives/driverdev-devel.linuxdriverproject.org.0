Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB3D2DD714
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:10:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 034B92E2CC;
	Thu, 17 Dec 2020 18:10:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ulnF6XbskpVV; Thu, 17 Dec 2020 18:10:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EC6942E2BB;
	Thu, 17 Dec 2020 18:08:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 090591BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 058A487650
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T1oMniShYSJM for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:08:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9D63B8767F
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:08:17 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id m12so59854249lfo.7
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dKHTaUqpc9+qnQDklHnbuyOfX2r5BRRRR5K6s2ucz2U=;
 b=Z/3072D8/T/ty624y/Y3fzZ4jDHFKHMiM8Puk81C8hVAIESVtNYFGrhY1j91vcZIjE
 X9pYxViGd/drXaOMeiO03C94pqe0NUAIdPEzUPg7/baXADcPcw0MywpuMA/Af8v2L3JF
 YYJPps/fM0KR2BDKsk6Jh/nu6atzjZi+/Qjyh1NdEhRzIxzuzNvI0ZekJYPghXXJV2Kx
 V10TKhm0SSOl8Cihy6JHBf3ogDQRcQ0CbbCJogpbFv704LJOPOZyq5ADGrMW4TfZ9+M8
 ZS2aqdaM/ACpx1+4CmVJGtjLu2NfZZYPG13hiBP/iVkg3oJvV1O/9KFPXJDqaEV+LQIb
 JiAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dKHTaUqpc9+qnQDklHnbuyOfX2r5BRRRR5K6s2ucz2U=;
 b=OzXSkERWlnY5hdSv/e57eHAAwXXgbT2RsyJTIC8ovtp3Pl2HEfM0pQb0TInvy2nkBY
 4I48OXLJR3L/5eM5yosXANeThMAb+2RbdGzyFeaxz1YKiUwGwTpGTD/bi5vcKNsHIft4
 M6wYJYA/fapL/UV52lWILZx8gUGcBtFemsClgVCyrchbcbwUrUKKB8raLP4dGykSuK8h
 Su6UPR3CzzNZBwkNOO2OetA26yztkAuiPvjQNmRetDNsKasBrMFqWm4w7X/MBXhMEIYs
 K1mvdGCvxA82Z0noLDwblNAJm4yk3Om6aypXTv3wT7JknATnCNOJEMnrhBg7nQLTPQWx
 gbyw==
X-Gm-Message-State: AOAM530Xzgs4qu+IiJOFgEAzCAX24LuqdZ9Q4+llVxEPi3GqtIxHGBQb
 O7sYZLoeqitfnem1wfVKSN4=
X-Google-Smtp-Source: ABdhPJyA0nTTMUEGxiyKEV0G3HcIN8F0c417daftUmLQYrZ/StuJHmuOFKZCKF5VoAB7IsqXITN4Aw==
X-Received: by 2002:a2e:8512:: with SMTP id j18mr213822lji.31.1608228495787;
 Thu, 17 Dec 2020 10:08:15 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.08.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:08:15 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Kevin Hilman <khilman@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Viresh Kumar <vireshk@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH v2 48/48] ARM: tegra: cardhu: Support CPU voltage scaling and
 thermal throttling
Date: Thu, 17 Dec 2020 21:06:38 +0300
Message-Id: <20201217180638.22748-49-digetx@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201217180638.22748-1-digetx@gmail.com>
References: <20201217180638.22748-1-digetx@gmail.com>
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
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Enable CPU voltage scaling and thermal throttling on Tegra30 Cardhu board.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/boot/dts/tegra30-cardhu.dtsi | 61 ++++++++++++++++++++++++++-
 1 file changed, 60 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/tegra30-cardhu.dtsi b/arch/arm/boot/dts/tegra30-cardhu.dtsi
index d74c9ca78a7f..08c0ea4e6228 100644
--- a/arch/arm/boot/dts/tegra30-cardhu.dtsi
+++ b/arch/arm/boot/dts/tegra30-cardhu.dtsi
@@ -1,6 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/thermal/thermal.h>
 #include "tegra30.dtsi"
+#include "tegra30-cpu-opp.dtsi"
+#include "tegra30-cpu-opp-microvolt.dtsi"
 
 /**
  * This file contains common DT entry for all fab version of Cardhu.
@@ -339,12 +342,13 @@ ldo8_reg: ldo8 {
 			};
 		};
 
-		temperature-sensor@4c {
+		nct1008: temperature-sensor@4c {
 			compatible = "onnn,nct1008";
 			reg = <0x4c>;
 			vcc-supply = <&sys_3v3_reg>;
 			interrupt-parent = <&gpio>;
 			interrupts = <TEGRA_GPIO(CC, 2) IRQ_TYPE_LEVEL_LOW>;
+			#thermal-sensor-cells = <1>;
 		};
 
 		vdd_core: tps62361@60 {
@@ -438,6 +442,29 @@ clk32k_in: clock@0 {
 		#clock-cells = <0>;
 	};
 
+	cpus {
+		cpu0: cpu@0 {
+			cpu-supply = <&vddctrl_reg>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			#cooling-cells = <2>;
+		};
+
+		cpu@1 {
+			cpu-supply = <&vddctrl_reg>;
+			operating-points-v2 = <&cpu0_opp_table>;
+		};
+
+		cpu@2 {
+			cpu-supply = <&vddctrl_reg>;
+			operating-points-v2 = <&cpu0_opp_table>;
+		};
+
+		cpu@3 {
+			cpu-supply = <&vddctrl_reg>;
+			operating-points-v2 = <&cpu0_opp_table>;
+		};
+	};
+
 	panel: panel {
 		compatible = "chunghwa,claa101wb01";
 		ddc-i2c-bus = <&panelddc>;
@@ -617,6 +644,38 @@ sound {
 					 <&tegra_car TEGRA30_CLK_EXTERN1>;
 	};
 
+	thermal-zones {
+		cpu-thermal {
+			polling-delay-passive = <1000>; /* milliseconds */
+			polling-delay = <5000>; /* milliseconds */
+
+			thermal-sensors = <&nct1008 1>;
+
+			trips {
+				trip0: cpu-alert0 {
+					/* throttle at 57C until temperature drops to 56.8C */
+					temperature = <57000>;
+					hysteresis = <200>;
+					type = "passive";
+				};
+
+				trip1: cpu-crit {
+					/* shut down at 60C */
+					temperature = <60000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&trip0>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

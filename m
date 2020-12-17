Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4E52DD702
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1F2438769E;
	Thu, 17 Dec 2020 18:08:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8PtY5oJLLLHq; Thu, 17 Dec 2020 18:08:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C262F8767F;
	Thu, 17 Dec 2020 18:08:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E9261BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1B27487A95
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hbVpQq4EwvAy for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:08:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3DA9A87AA2
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:08:16 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id o17so56905497lfg.4
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4BCi2FA9cuc84aB3j2Dtgj2hYIKTYzldBGMNPDQ+ziE=;
 b=r2zTV0LhxvbLLcRE/Q6upA3jHFFoIHhmeTHZH8k7Nfo6TEPtghv24CkOqquv0+y9xP
 6+FZ+MXgdTx2ytHtR7Sk7W1UA2CPz43wyzcL6eN3hopQk/E3YteFKOLhzUro4h8CbQNU
 +fgzGRIhTqgs+WbaL3TqMhWkuNzse6BJ4C/8X7Ixe3FMp1bc0jGwx6igCKOSE5vPOnJl
 gKxDySx0IGEHosYP6Q0PXPEXhoddkGXNRY8r2Ow5AL11IX4RdEBmmxMv3sTV6ncFWhYG
 PEoo8YrrVqcuWZEFkH1nd5jPACS2AUeM4P0FHx1ROikt0gKyKm/OLrSZrtjiGzDY2xKO
 o/CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4BCi2FA9cuc84aB3j2Dtgj2hYIKTYzldBGMNPDQ+ziE=;
 b=gXE2tED95AeqjuyH3Z1D4b0ClnbxPs11qa0OMbxNpSSxLixpFdueLxZRkKlA49sHpD
 khHpnskBP1OI1CjPm1Pic9sD4AwoXibD7yHG0v64WtqVOntyGxDTl18aU4LDU7WThf6L
 fu2GsUyWYlItbO05VhRCfSM++mhQTk9UVBOVGNumFr2aTloiJPVV85IDEfCiwaQLdxmR
 zJDKiijfpA2ZnjPPoL5wuZcYSd9kCCo6BvS/5eJ1PnBnTop2I6ChmY6EcBqedD9nnHXf
 LYncxpT/3s40Tv6r+XaEEKWxFwS6/bSn+CkYDkc2lG2dGndGFeZWE0vcct77JlzW51rn
 1Seg==
X-Gm-Message-State: AOAM533+4p2thAkiQ2f6tLZuw41j1wxaZKrJmC2KZlCr9xCfIna92xGP
 ikc11CY0gNivrBpTwxgOvBM=
X-Google-Smtp-Source: ABdhPJxWWr3saixXg4MMgzNRzLC4JnQkjYvJetomHe6o2KMKNy5SgOY8ZxCeWHixZTKkqqyu60wiaQ==
X-Received: by 2002:a05:651c:2dc:: with SMTP id
 f28mr208929ljo.13.1608228494555; 
 Thu, 17 Dec 2020 10:08:14 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.08.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:08:14 -0800 (PST)
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
Subject: [PATCH v2 47/48] ARM: tegra: ventana: Support CPU voltage scaling and
 thermal throttling
Date: Thu, 17 Dec 2020 21:06:37 +0300
Message-Id: <20201217180638.22748-48-digetx@gmail.com>
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

Enable CPU voltage scaling and thermal throttling on Tegra20 Ventana board.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/boot/dts/tegra20-ventana.dts | 40 ++++++++++++++++++++++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/tegra20-ventana.dts b/arch/arm/boot/dts/tegra20-ventana.dts
index 14ace2ef749c..c2d9f38960bc 100644
--- a/arch/arm/boot/dts/tegra20-ventana.dts
+++ b/arch/arm/boot/dts/tegra20-ventana.dts
@@ -2,8 +2,10 @@
 /dts-v1/;
 
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/thermal/thermal.h>
 #include "tegra20.dtsi"
 #include "tegra20-cpu-opp.dtsi"
+#include "tegra20-cpu-opp-microvolt.dtsi"
 
 / {
 	model = "NVIDIA Tegra20 Ventana evaluation board";
@@ -527,9 +529,10 @@ ldo_rtc {
 			};
 		};
 
-		temperature-sensor@4c {
+		nct1008: temperature-sensor@4c {
 			compatible = "onnn,nct1008";
 			reg = <0x4c>;
+			#thermal-sensor-cells = <1>;
 		};
 	};
 
@@ -615,10 +618,13 @@ clk32k_in: clock@0 {
 
 	cpus {
 		cpu0: cpu@0 {
+			cpu-supply = <&vdd_cpu>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			#cooling-cells = <2>;
 		};
 
 		cpu@1 {
+			cpu-supply = <&vdd_cpu>;
 			operating-points-v2 = <&cpu0_opp_table>;
 		};
 	};
@@ -717,4 +723,36 @@ sound {
 			 <&tegra_car TEGRA20_CLK_CDEV1>;
 		clock-names = "pll_a", "pll_a_out0", "mclk";
 	};
+
+	thermal-zones {
+		cpu-thermal {
+			polling-delay-passive = <1000>; /* milliseconds */
+			polling-delay = <5000>; /* milliseconds */
+
+			thermal-sensors = <&nct1008 1>;
+
+			trips {
+				trip0: cpu-alert0 {
+					/* start throttling at 50C */
+					temperature = <50000>;
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
 };
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

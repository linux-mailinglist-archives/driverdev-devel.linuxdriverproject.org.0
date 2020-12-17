Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5F92DD6D5
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3534C2E2DC;
	Thu, 17 Dec 2020 18:07:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y4XuY7fXe-DU; Thu, 17 Dec 2020 18:07:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 26B072E2C7;
	Thu, 17 Dec 2020 18:07:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C39CD1BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B4BF02E2BD
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XtJCtG2dGB3P for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by silver.osuosl.org (Postfix) with ESMTPS id B0FEE2E192
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:28 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id m25so59778058lfc.11
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Kj7GIF+uJIxlrnFvjrN1VqMHS/QleXXRwa7p10T8PcE=;
 b=kP7PHY6U8z1UY31KMv3z/cd4fSHYhATI3ExPOUCA2tZru2WKCyeTd2UP8TlwgAp1M6
 m3gKgbjGMcs+s5oOOkkKRg5uLBYrKlTd+fICyDzeWlVMS8TJLKcBOPihhJWpu+AU9087
 BB/WHFvb13FuPmlwTMx7QgLcXn2/Ad1/eGMuph5p4IXpPVqJSz4M2F28QQ7j5D3NT9Pe
 SKPb+8KyQFL1FQLuLtECc7uWAD8qFTVYL6Rf2IuNbEgYvORPTvGDGfDYaX2QnYwn0Rgx
 FmpTg2+9oH4Y9ij9LQu4ybJ+DxcuDbYI0ihxUQcWcjKPtcTSS6c8GDtx5aNyj2kNgujh
 8knA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Kj7GIF+uJIxlrnFvjrN1VqMHS/QleXXRwa7p10T8PcE=;
 b=uY4EGbOplrGRlCn8bs6ickCsGegQls5CqISUQJvzikl7D2+3vhN3VSJhc50Xy+6AYm
 dlQi4ThWJdKaKH1pNYNEFtm2VMG0J/UN3AJWHVYnhNbdaEbAfwqABlFH0X1yMJ2zzime
 O7BLFZ1cUcMl6EBgVkoxlAEoIBUXOQiIyXSr/hBZnZvFWVIDJt2JBJJWJlsUWGEnyaMz
 uflGc55JXyKwWvKYt17YYlshOcwRaQZW3EzX1RFR0fxuXIV4fDDt3sdGq4nihIjOcpb5
 agM7egSvPKEIEGieeQbuKIjXBLRDV/zxXLBIjOYiEkAy8/CO1i1drqZAtJ4kHKgDrUBh
 oj9A==
X-Gm-Message-State: AOAM530Fxu+OfNgsDhFjLSZXuhUUIEq+/wOqyLcpnHfpRzF5UsslLa+O
 4XOY+VL20uOZyaqr/DPmNe8=
X-Google-Smtp-Source: ABdhPJwIfOmllgVrz8dHRr+2J5z3WatJHYxi2dLPJpEQkNdVwjNkmxMLIP17neNyCZHg4jvjqXoFpw==
X-Received: by 2002:a05:6512:32a2:: with SMTP id
 q2mr7511267lfe.625.1608228446970; 
 Thu, 17 Dec 2020 10:07:26 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:26 -0800 (PST)
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
Subject: [PATCH v2 06/48] dt-bindings: clock: tegra: Document clocks sub-node
Date: Thu, 17 Dec 2020 21:05:56 +0300
Message-Id: <20201217180638.22748-7-digetx@gmail.com>
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

Document "clocks" sub-node which describes Tegra SoC clocks that require
a higher voltage of the core power domain in order to operate properly on
a higher rates.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 .../bindings/clock/nvidia,tegra20-car.txt     | 26 +++++++++++++++++++
 .../bindings/clock/nvidia,tegra30-car.txt     | 26 +++++++++++++++++++
 2 files changed, 52 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.txt b/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.txt
index 6c5901b503d0..353354477785 100644
--- a/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.txt
+++ b/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.txt
@@ -19,6 +19,16 @@ Required properties :
   In clock consumers, this cell represents the bit number in the CAR's
   array of CLK_RST_CONTROLLER_RST_DEVICES_* registers.
 
+Optional child sub-node "clocks" should contain nodes matching the clocks
+on the Tegra SoC. Refer to Tegra TRM for mode details on the clock nodes.
+
+Required properties :
+- compatible : Should be "nvidia,tegra20-clock".
+- operating-points-v2: See ../bindings/opp/opp.txt for details.
+- clocks : Should contain clock which corresponds to the node.
+- power-domains: Phandle to a power domain node as described by generic
+                 PM domain bindings.
+
 Example SoC include file:
 
 / {
@@ -27,6 +37,22 @@ Example SoC include file:
 		reg = <0x60006000 0x1000>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
+
+		clocks {
+			hdmi {
+				compatible = "nvidia,tegra20-clock";
+				operating-points-v2 = <&hdmi_opp_table>;
+				clocks = <&tegra_car TEGRA20_CLK_HDMI>;
+				power-domains = <&domain>;
+			};
+
+			pll_m {
+				compatible = "nvidia,tegra20-clock";
+				operating-points-v2 = <&pll_m_opp_table>;
+				clocks = <&tegra_car TEGRA20_CLK_PLL_M>;
+				power-domains = <&domain>;
+			};
+		};
 	};
 
 	usb@c5004000 {
diff --git a/Documentation/devicetree/bindings/clock/nvidia,tegra30-car.txt b/Documentation/devicetree/bindings/clock/nvidia,tegra30-car.txt
index 63618cde12df..bc7bbdaa9d3f 100644
--- a/Documentation/devicetree/bindings/clock/nvidia,tegra30-car.txt
+++ b/Documentation/devicetree/bindings/clock/nvidia,tegra30-car.txt
@@ -19,6 +19,16 @@ Required properties :
   In clock consumers, this cell represents the bit number in the CAR's
   array of CLK_RST_CONTROLLER_RST_DEVICES_* registers.
 
+Optional child sub-node "clocks" should contain nodes matching the clocks
+on the Tegra SoC. Refer to Tegra TRM for mode details on the clock nodes.
+
+Required properties :
+- compatible : Should be "nvidia,tegra30-clock".
+- operating-points-v2: See ../bindings/opp/opp.txt for details.
+- clocks : Should contain clock which corresponds to the node.
+- power-domains: Phandle to a power domain node as described by generic
+                 PM domain bindings.
+
 Example SoC include file:
 
 / {
@@ -31,6 +41,22 @@ Example SoC include file:
 
 	usb@c5004000 {
 		clocks = <&tegra_car TEGRA30_CLK_USB2>;
+
+		clocks {
+			hdmi {
+				compatible = "nvidia,tegra30-clock";
+				operating-points-v2 = <&hdmi_opp_table>;
+				clocks = <&tegra_car TEGRA30_CLK_HDMI>;
+				power-domains = <&domain>;
+			};
+
+			pll_m {
+				compatible = "nvidia,tegra30-clock";
+				operating-points-v2 = <&pll_m_opp_table>;
+				clocks = <&tegra_car TEGRA30_CLK_PLL_M>;
+				power-domains = <&domain>;
+			};
+		};
 	};
 };
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

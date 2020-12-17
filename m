Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E932DD712
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:10:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 71DB22E2DD;
	Thu, 17 Dec 2020 18:10:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UgqVjxohRbEK; Thu, 17 Dec 2020 18:10:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0FD4C2E306;
	Thu, 17 Dec 2020 18:08:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 108B11BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 05F1887653
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4q8gU7ME4gDI for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:08:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1706F87659
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:08:15 +0000 (UTC)
Received: by mail-lf1-f43.google.com with SMTP id m25so59784607lfc.11
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:08:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QFKBoMDmOqL8VObNYiHW98GY/43naCkUJTj2RaTjBwA=;
 b=EobUySb5wv0B0upIN1NN5TWI3KJftrGAf0Dm89wMk4DobyH++fkeLE/z4h3pNAcmwY
 KJ0WyZw4eFyiwmPCEsxQUzZGsbOrjN2IQwG4M/O1kofOoZN5ByAbWWJdTOQBwPBsKoBS
 YWDmsu9jKqeAS2WVyjZ49QrGJ+9mhSEykEG07zlXTiht8LdlM6QIE/SS0XcrFyc1CgBa
 jao0lrSsTovwf/7miAArkiYN8XUNvonCojQlxztCu49KZPY0cIP0kfEEMVPakCOynJac
 Egr1ECabTVoznsrygkF3dCm0pKBtmXQtZj19tIv6sdQ+mDaLeG5ndg67V1Zl58HCo4Zw
 i7Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QFKBoMDmOqL8VObNYiHW98GY/43naCkUJTj2RaTjBwA=;
 b=DuRi/JauIYpKNNNYI1ZTN9JS+ZlUJKhuO07M70+CRFWqyJVHt/ZUujceYtGUtt96p3
 +qkjOoZBNa/pYxega/adiHPMoxkpu1LSt+mBYqvkzL18gSsgMHkzGPpBfoC+TzulCpuR
 5Q5dTwdVDuk4NDqMKsdrMWX/EfXjIlTTxNyI48UnNx6Bij0SyTbF6ochuccfZ/5vo4Z+
 19GiIl9baYKOHjecBPeEmnmb5/NInz9gnlSE/0y7FLlixUJZtEIy5gpkvpVxE3tHdrPm
 gZs7GByzthMhO1/apWNApmUlGiBGW8vZyrQKfNzWkUWwf5ObKRF39kfRe1RrAnQSKbtn
 ZzDw==
X-Gm-Message-State: AOAM531/B1JhzSLkD1G+Hx5TQ/E9zTdiCf/Cjj0H/QweTLA909wK6js0
 LilnUArxhjDpzuxEalQB527sy3YjPMI=
X-Google-Smtp-Source: ABdhPJx3Hj4S995ls6nZE7TDU17yudwFXp26p9mve2ah5isvg97LWmTDZ/u3MbGlnXb8+MoIICA0Yw==
X-Received: by 2002:a2e:9195:: with SMTP id f21mr210825ljg.191.1608228493416; 
 Thu, 17 Dec 2020 10:08:13 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.08.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:08:12 -0800 (PST)
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
Subject: [PATCH v2 46/48] ARM: tegra: ventana: Enable core voltage scaling
Date: Thu, 17 Dec 2020 21:06:36 +0300
Message-Id: <20201217180638.22748-47-digetx@gmail.com>
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

Allow lower core voltages on Ventana board.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/boot/dts/tegra20-ventana.dts | 32 ++++++++++++++++++++-------
 1 file changed, 24 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/tegra20-ventana.dts b/arch/arm/boot/dts/tegra20-ventana.dts
index 0b03b3b0fd0c..14ace2ef749c 100644
--- a/arch/arm/boot/dts/tegra20-ventana.dts
+++ b/arch/arm/boot/dts/tegra20-ventana.dts
@@ -422,16 +422,26 @@ sys_reg: sys {
 
 				vdd_core: sm0 {
 					regulator-name = "vdd_sm0,vdd_core";
-					regulator-min-microvolt = <1200000>;
-					regulator-max-microvolt = <1200000>;
+					regulator-min-microvolt = <950000>;
+					regulator-max-microvolt = <1300000>;
+					regulator-coupled-with = <&rtc_vdd &vdd_cpu>;
+					regulator-coupled-max-spread = <170000 550000>;
 					regulator-always-on;
+					regulator-boot-on;
+
+					nvidia,tegra-core-regulator;
 				};
 
-				sm1 {
+				vdd_cpu: sm1 {
 					regulator-name = "vdd_sm1,vdd_cpu";
-					regulator-min-microvolt = <1000000>;
-					regulator-max-microvolt = <1000000>;
+					regulator-min-microvolt = <750000>;
+					regulator-max-microvolt = <1125000>;
+					regulator-coupled-with = <&vdd_core &rtc_vdd>;
+					regulator-coupled-max-spread = <550000 550000>;
 					regulator-always-on;
+					regulator-boot-on;
+
+					nvidia,tegra-cpu-regulator;
 				};
 
 				sm2_reg: sm2 {
@@ -450,10 +460,16 @@ ldo1 {
 					regulator-always-on;
 				};
 
-				ldo2 {
+				rtc_vdd: ldo2 {
 					regulator-name = "vdd_ldo2,vdd_rtc";
-					regulator-min-microvolt = <1200000>;
-					regulator-max-microvolt = <1200000>;
+					regulator-min-microvolt = <950000>;
+					regulator-max-microvolt = <1300000>;
+					regulator-coupled-with = <&vdd_core &vdd_cpu>;
+					regulator-coupled-max-spread = <170000 550000>;
+					regulator-always-on;
+					regulator-boot-on;
+
+					nvidia,tegra-rtc-regulator;
 				};
 
 				ldo3 {
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

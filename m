Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF592A720A
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3A51C854E7;
	Wed,  4 Nov 2020 23:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mGwLwp6rJqnA; Wed,  4 Nov 2020 23:45:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D63C385531;
	Wed,  4 Nov 2020 23:45:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 712B11BF97F
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6BAC285AE0
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w-hNNLWrtCvy for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 25029857C2
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:38 +0000 (UTC)
Received: by mail-lf1-f43.google.com with SMTP id 74so175008lfo.5
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JWa430PVIqmJIbeD7KBt0TZCN2r4IZvUOeKukZUULSM=;
 b=eN4h8wmKVmc98I8VpVQD05mgPsSKIV8roZRuvQUi3EOcizAEVMxhK4XcKenNODUP57
 Rxze2zWAWjLCIfL2dNIRIGywZvC28Gu+MslIDgcQBiINpAIgA8ayEvdgAWeaNJS/UoUw
 AF/ln6R+1zf+7IT8b1pPX6qDWo8FajvGF+vv4uuipo2sXIA3JUzx7p8u+ktEcwm1o1pg
 8EzDhwuYDylAakt40bWirCp8sipi2Klh9G/IBYON5H8zDXGqS29eR/JqRCTc9dW4pVKR
 y1mExIRa9//FQnuJ5e8gfTLqClqNg3UUpnvkCzqL0KLmGCs6gxB1ftFcHku0KNIwUxDo
 VvhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JWa430PVIqmJIbeD7KBt0TZCN2r4IZvUOeKukZUULSM=;
 b=haIiAghyS9kTTBvc4yj1DvsyoAEXT/O8dIgkqCHZbB1UEKE0Y5MBLEFmjUSoxcv7Bu
 /JWKdgNRdPI5qSulM8BErfAUam1rr0h7ACiY6x6KKh2p74mxSfKtFcW2iZUyUEpi6wv8
 y8s1fe3hibs0FvW/nHmxpx5tP59TWuloDOVbhXn3EnVqbL3b9LigTTXxeLD/jPUgZyik
 M5+K3+SoBQ/cEC09vvbgQoyRQCSMRHYMeLRRdppQkvAFkhq4Bwe1b7F59+xGyptRA+F0
 07v+eT9VIyHVrfKyzuEE52d9IvWCy2hArxZ/HieX3KGVfaC82dq/G8C5wldppFBeup4y
 lzlA==
X-Gm-Message-State: AOAM530BJ5qCC0xUWcNzmx7qvuVKHUM2l4WDtgsQq+eqjeef0ULNJS9M
 wP+XKGXjGibLSWAgHoTBc2mmvfi/Wa8=
X-Google-Smtp-Source: ABdhPJz6df+Ge/OfH/yyY6XjwgEffIPjNRxtB5oKKiqUFuVW6jG9sorT54nuDmLv0xSqhkTx9fOGHg==
X-Received: by 2002:a05:6512:3388:: with SMTP id
 h8mr60396lfg.318.1604533536417; 
 Wed, 04 Nov 2020 15:45:36 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:35 -0800 (PST)
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
Subject: [PATCH v1 29/30] ARM: tegra: cardhu-a04: Add voltage supplies to
 DVFS-capable devices
Date: Thu,  5 Nov 2020 02:44:26 +0300
Message-Id: <20201104234427.26477-30-digetx@gmail.com>
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
 arch/arm/boot/dts/tegra30-cardhu-a04.dts | 44 ++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/arch/arm/boot/dts/tegra30-cardhu-a04.dts b/arch/arm/boot/dts/tegra30-cardhu-a04.dts
index c1c0ca628af1..7149e5594537 100644
--- a/arch/arm/boot/dts/tegra30-cardhu-a04.dts
+++ b/arch/arm/boot/dts/tegra30-cardhu-a04.dts
@@ -93,6 +93,34 @@ vdd_bl2_reg: regulator@106 {
 		gpio = <&gpio TEGRA_GPIO(DD, 0) GPIO_ACTIVE_HIGH>;
 	};
 
+	host1x@50000000 {
+		core-supply = <&vddcore_reg>;
+
+		gr2d@54140000 {
+			core-supply = <&vddcore_reg>;
+		};
+
+		gr3d@54180000 {
+			core-supply = <&vddcore_reg>;
+		};
+
+		dc@54200000 {
+			core-supply = <&vddcore_reg>;
+		};
+
+		dc@54240000 {
+			core-supply = <&vddcore_reg>;
+		};
+	};
+
+	vde@6001a000 {
+		core-supply = <&vddcore_reg>;
+	};
+
+	pwm: pwm@7000a000 {
+		core-supply = <&vddcore_reg>;
+	};
+
 	i2c@7000d000 {
 		pmic: tps65911@2d {
 			regulators {
@@ -117,6 +145,22 @@ vddcore_reg: tps62361@60 {
 		};
 	};
 
+	memory-controller@7000f400 {
+		core-supply = <&vddcore_reg>;
+	};
+
+	mmc@78000000 {
+		core-supply = <&vddcore_reg>;
+	};
+
+	mmc@78000600 {
+		core-supply = <&vddcore_reg>;
+	};
+
+	usb@7d008000 {
+		core-supply = <&vddcore_reg>;
+	};
+
 	cpus {
 		cpu0: cpu@0 {
 			cpu-supply = <&vddctrl_reg>;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

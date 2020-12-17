Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF542DD6FA
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D3FC187AB4;
	Thu, 17 Dec 2020 18:08:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KJCTwHJWDTKY; Thu, 17 Dec 2020 18:08:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4C97387A8A;
	Thu, 17 Dec 2020 18:08:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D16481BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CE9B487652
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sjBiwAscjxxa for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:08:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CB94187646
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:08:13 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id a9so59804836lfh.2
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:08:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DnMa2cBERwNvCshkcZIGtYzUizYdSDwH8+FlINjZS+o=;
 b=nGBDtC0LssrkA/xgl49FxWqeuomEM/+ArFanzMzMEGA7xk46eJqVrlO5N6wN2JQXgx
 ASIENxqpmVpFuK7ESxAwjXOiTyJkEmnG6qv7SDFaU0BynG17CnhPdmVlEPOoqGl4mm6N
 +MxaC6pdEu65jWYzV6zRgWGYFLns79jXe8fGVRmiXJ9lvisZbWIOaptqSP35tbVTuqjZ
 GWnXCIBG32kJYzpS4w5GOp74lTeeLOFOgS+Ce4ahS6jgn0biV+2+7pT7nYpr3vOR20Mo
 SEpvYMg9qqttuOc5EiuBgetb2icZ++FBfLBVG1YoVBG/OymCXngPlGOmB/uUD5M+spu4
 VeTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DnMa2cBERwNvCshkcZIGtYzUizYdSDwH8+FlINjZS+o=;
 b=mlWIZR1B+rRXwSz9rGswx90NHL9UhUt46eeBeC1+zwdIage/BNwzugRyN0rbx3vMig
 yiTI9nmaB4/0XSH7AMhlSYJ8inGL/OwUF01HWvhyPgDGLRWk36BCkZoF6QdbLuiGPsNo
 oFeSLCon3XYUKTkpkdJPiu1bnoOnE+totekY6P+IIOdC0wE0hrQODlOENxauGMu20Wbw
 k0TUJcYH7PotgUlE8o91YirkuJfYqqwf6o1mDiIDuyzKX6uxDfK4Dgjf1Tcbjv26/3od
 d5S0dHmqhItegH4Ec/DV0cswQDPe03sq7aL7xRRGNVgymKvP4bqX4zfrbU8877SgHqVh
 7rdw==
X-Gm-Message-State: AOAM533niLkzv4doiOJAf91jYIfjkHn5cZPXfJlW52kAWv0JUnXq6kxt
 Ry3ZAAHw2bp8lqHciB1ma3g=
X-Google-Smtp-Source: ABdhPJxK1jf/bwqucZvsz55FDatdpoVwAeTBPQ/w/sO44sRzQ468CuHtA9cdQUMcur4nHvtg9vjUgA==
X-Received: by 2002:a05:651c:120f:: with SMTP id
 i15mr214039lja.339.1608228492131; 
 Thu, 17 Dec 2020 10:08:12 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.08.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:08:11 -0800 (PST)
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
Subject: [PATCH v2 45/48] ARM: tegra: acer-a500: Enable core voltage scaling
Date: Thu, 17 Dec 2020 21:06:35 +0300
Message-Id: <20201217180638.22748-46-digetx@gmail.com>
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

Allow lower core voltages on Acer A500.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/boot/dts/tegra20-acer-a500-picasso.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/tegra20-acer-a500-picasso.dts b/arch/arm/boot/dts/tegra20-acer-a500-picasso.dts
index 78b307370a46..6b851cab0efa 100644
--- a/arch/arm/boot/dts/tegra20-acer-a500-picasso.dts
+++ b/arch/arm/boot/dts/tegra20-acer-a500-picasso.dts
@@ -578,7 +578,7 @@ sys_reg: sys {
 
 				vdd_core: sm0 {
 					regulator-name = "vdd_sm0,vdd_core";
-					regulator-min-microvolt = <1200000>;
+					regulator-min-microvolt = <950000>;
 					regulator-max-microvolt = <1300000>;
 					regulator-coupled-with = <&rtc_vdd &vdd_cpu>;
 					regulator-coupled-max-spread = <170000 550000>;
@@ -619,7 +619,7 @@ ldo1 {
 
 				rtc_vdd: ldo2 {
 					regulator-name = "vdd_ldo2,vdd_rtc";
-					regulator-min-microvolt = <1200000>;
+					regulator-min-microvolt = <950000>;
 					regulator-max-microvolt = <1300000>;
 					regulator-coupled-with = <&vdd_core &vdd_cpu>;
 					regulator-coupled-max-spread = <170000 550000>;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

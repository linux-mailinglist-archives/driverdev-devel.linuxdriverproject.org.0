Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2742A71F1
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A64B8643B;
	Wed,  4 Nov 2020 23:45:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w-6UCn0mHW+K; Wed,  4 Nov 2020 23:45:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C89584D90;
	Wed,  4 Nov 2020 23:45:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E678B1BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DF81585722
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0QkRwc2rZNgs for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E6C42856CB
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:01 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id 23so300155ljv.7
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tp9Yqrg3ShDWskF8okk8dyCecDIPmsRhr05c/t0mOxA=;
 b=NdQEwwdMZ/yJ8OPkD9uloM0o9Ugj2c5ieJ8wp9NIAg4kjdkCRrrp6Ude1JYuYIY5el
 cQ6T9hxjtsLOMggnGayrIGviTd5zP5TmyeAhR19Q9fq/kaJCXx7OBuhnTCeqhvfrSguA
 Rv4ks7q4ok1WjbMowL1f6z63nyrF+GmoOHEaAOUS5Fxj/XKxQW14PgoN1eaL3naw79IX
 aLkXyfnX2RmIvqjqe6TajXkhlx2gBtY4zoXde/weS+BuPwWztMj9RUDljXw++NeoX+21
 CEVubhkQvuVQyjMvWVwLaZygJnsPTNBVNntcOhwNXbHdInAh8pVfdkI0IC9sCjSOa/LH
 qo2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tp9Yqrg3ShDWskF8okk8dyCecDIPmsRhr05c/t0mOxA=;
 b=EqFYj4Tra+zu53hJdThaUzzCACMo8VCit7NEiEG4xqa4rBKSztNBxn7G9pgmrsfNTD
 M7m0ZlDMgs155G3tz3xQbVeliZ64oSKL3f4gAbiHX8uMprBCl6hZ7O85Su4d8Xv9kB/f
 2Bywf8kUoQ1iWqouLhy3My+WhNlyZT0DnBn43aYXJMVoOHPcUg2h7V/LGSsQzdfs52Jm
 vc9MR/Wa+UjFdWWCA7iPEluuq+E0h1SFmgB3XqAHNHsN3U9QHNEmnQ5czm+UUEVZ67KG
 AO3EsBWNQLdXpazeXA1iLkXxWrDD8FT73n9wg8kK+KbkhiGxhxDQ6CuiUSWNWlJrCAzU
 gJWQ==
X-Gm-Message-State: AOAM530ukhdjl3T1XlKZPH2Ie4ghPj6m/VX1e6FRrUaXVcwpkEYkeyeT
 taCclS7wiA8ZghaXThRUOCs=
X-Google-Smtp-Source: ABdhPJyMzZS8yFbdeuBZmLEvuZcRuMGo/R+/3Gh1ylV5XVZW8SAuxgU/GPnV+T1exBhvuYiAMbxSkQ==
X-Received: by 2002:a05:651c:32a:: with SMTP id
 b10mr125604ljp.256.1604533500240; 
 Wed, 04 Nov 2020 15:45:00 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.44.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:44:59 -0800 (PST)
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
Subject: [PATCH v1 03/30] dt-bindings: pwm: tegra: Document OPP and voltage
 regulator properties
Date: Thu,  5 Nov 2020 02:44:00 +0300
Message-Id: <20201104234427.26477-4-digetx@gmail.com>
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

Document new DVFS OPP table and voltage regulator properties of the
PWM controller.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 .../devicetree/bindings/pwm/nvidia,tegra20-pwm.txt  | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/nvidia,tegra20-pwm.txt b/Documentation/devicetree/bindings/pwm/nvidia,tegra20-pwm.txt
index 74c41e34c3b6..d4d1c44a2c04 100644
--- a/Documentation/devicetree/bindings/pwm/nvidia,tegra20-pwm.txt
+++ b/Documentation/devicetree/bindings/pwm/nvidia,tegra20-pwm.txt
@@ -32,6 +32,17 @@ The PWM node will have following optional properties.
 pinctrl-names:	Pin state names. Must be "default" and "sleep".
 pinctrl-0:	phandle for the default/active state of pin configurations.
 pinctrl-1:	phandle for the sleep state of pin configurations.
+core-supply:	phandle for voltage regulator of the SoC "core" power domain.
+
+operating-points-v2: see ../bindings/opp/opp.txt for details.
+
+For each opp entry in 'operating-points-v2' table:
+- opp-supported-hw: One bitfield indicating:
+	On Tegra20: SoC process ID mask
+	On Tegra30+: SoC speedo ID mask
+
+	A bitwise AND is performed against the value and if any bit
+	matches, the OPP gets enabled.
 
 Example:
 
@@ -42,6 +53,8 @@ Example:
 		clocks = <&tegra_car 17>;
 		resets = <&tegra_car 17>;
 		reset-names = "pwm";
+		operating-points-v2 = <&dvfs_opp_table>;
+		core-supply = <&vdd_core>;
 	};
 
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7452A7210
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 20E9D20349;
	Wed,  4 Nov 2020 23:45:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D6VNBkXV1mjJ; Wed,  4 Nov 2020 23:45:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2E53F204C4;
	Wed,  4 Nov 2020 23:45:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C71241BF97F
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C3A218507C
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KyHOxzIFQWvI for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C6ACB84F76
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:25 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id b1so135771lfp.11
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bYI1lTU0u9qugSWMqSGv5A3HDa8DCxBYBbaISJenZIs=;
 b=lIEXO/La7Zc0VwM0c4dDJ9vgZF6JXEGcQnUDRRMwyyD10nK8kcgrNp9DgX3Du75IIT
 OzpoO+2Bl7PIc8Pyh1aBFhzzFuhxYw/EGzxr89Ll+MHvnacmt4aq+occ46DdFWbChWkL
 izUIyLqX6Bqr0wRpJMiCGaqg2/bML9hVkLcegcNewXvrIjcjdirU/fjw5hxKasYetBF0
 ag405LakLuvWIXmezrX37MwwgCR2hLz4ZwMbHvpDRnPUc1zYptM9IAdfmP4GvSqjJHt3
 DpNnOKNZjLv+kBhz26qVrZFveREsWzpQVEUcELKxB05MXwMJE6kz+wM2C0LgbHfqMsKs
 A2gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bYI1lTU0u9qugSWMqSGv5A3HDa8DCxBYBbaISJenZIs=;
 b=oUdcKLRW9Q+1PawXoRdk4PCzdLlvlE5knCeZnkijKgCONoGeNJVeb2r9d3umljpyHr
 i8Uax2V1c5/+Wb5szV6MGqho2d7krTlxF2VXrSEPZvR0t0JqVZrUy5UXMVGM84FH3Qh8
 q54Fx1ldqWO62JfhbMejyNeDml+BNNbem4qEpCgVQddcfe/k0YKXpokEAvFrdc5BK0/O
 NtL5Z+GLH8+xNCB2dvJnnAD5HbhZ7yYSi/bEw8seAx2W/ZpP0tj6cs2pmPpzP1uI6t5h
 cpGDLWfA+lJ0qOoK1BZGsKLkVmXgc/COaG0GxQ8ti+P4zNP9m9Ph6QBMXWZGfavZIZ01
 pAPg==
X-Gm-Message-State: AOAM532LPhGUYi1ZuGvo22/sRUYuP5w34CmEjb7x/eFzM6kNogp/pQhT
 Eyutb6ep/yV//FFVxQYxZsQ=
X-Google-Smtp-Source: ABdhPJzQf9TUjFglxLujGELvxqeC4uglPytS2wsivLSpqjwqfzVF8NSmMtie4mgdOemR7ln3Z7XqDQ==
X-Received: by 2002:a19:7409:: with SMTP id v9mr59130lfe.402.1604533524002;
 Wed, 04 Nov 2020 15:45:24 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:23 -0800 (PST)
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
Subject: [PATCH v1 20/30] usb: chipidea: tegra: Support OPP and SoC core
 voltage scaling
Date: Thu,  5 Nov 2020 02:44:17 +0300
Message-Id: <20201104234427.26477-21-digetx@gmail.com>
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

Add initial OPP and SoC CORE voltage scaling support to the Tegra UDC
driver. This is required for enabling system-wide DVFS on older Tegra
SoCs.

Tested-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/usb/chipidea/Kconfig         |  1 +
 drivers/usb/chipidea/ci_hdrc_tegra.c | 79 ++++++++++++++++++++++++++++
 2 files changed, 80 insertions(+)

diff --git a/drivers/usb/chipidea/Kconfig b/drivers/usb/chipidea/Kconfig
index 8bafcfc6080d..6a5bc08711d6 100644
--- a/drivers/usb/chipidea/Kconfig
+++ b/drivers/usb/chipidea/Kconfig
@@ -56,6 +56,7 @@ config USB_CHIPIDEA_TEGRA
 	tristate "Enable Tegra UDC glue driver" if EMBEDDED
 	depends on OF
 	depends on USB_CHIPIDEA_UDC
+	select PM_OPP
 	default USB_CHIPIDEA
 
 endif
diff --git a/drivers/usb/chipidea/ci_hdrc_tegra.c b/drivers/usb/chipidea/ci_hdrc_tegra.c
index 7455df0ede49..7f0403e810fe 100644
--- a/drivers/usb/chipidea/ci_hdrc_tegra.c
+++ b/drivers/usb/chipidea/ci_hdrc_tegra.c
@@ -6,6 +6,7 @@
 #include <linux/clk.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/pm_opp.h>
 #include <linux/reset.h>
 
 #include <linux/usb/chipidea.h>
@@ -47,6 +48,79 @@ static const struct of_device_id tegra_udc_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, tegra_udc_of_match);
 
+static void tegra_udc_deinit_opp_table(void *data)
+{
+	struct device *dev = data;
+	struct opp_table *opp_table;
+
+	opp_table = dev_pm_opp_get_opp_table(dev);
+	dev_pm_opp_of_remove_table(dev);
+	dev_pm_opp_put_regulators(opp_table);
+	dev_pm_opp_put_opp_table(opp_table);
+}
+
+static int devm_tegra_udc_init_opp_table(struct device *dev)
+{
+	unsigned long rate = ULONG_MAX;
+	struct opp_table *opp_table;
+	const char *rname = "core";
+	struct dev_pm_opp *opp;
+	int err;
+
+	/* legacy device-trees don't have OPP table */
+	if (!device_property_present(dev, "operating-points-v2"))
+		return 0;
+
+	/* voltage scaling is optional */
+	if (device_property_present(dev, "core-supply"))
+		opp_table = dev_pm_opp_set_regulators(dev, &rname, 1);
+	else
+		opp_table = dev_pm_opp_get_opp_table(dev);
+
+	if (IS_ERR(opp_table))
+		return dev_err_probe(dev, PTR_ERR(opp_table),
+				     "failed to prepare OPP table\n");
+
+	err = dev_pm_opp_of_add_table(dev);
+	if (err) {
+		dev_err(dev, "failed to add OPP table: %d\n", err);
+		goto put_table;
+	}
+
+	/* find suitable OPP for the maximum clock rate */
+	opp = dev_pm_opp_find_freq_floor(dev, &rate);
+	err = PTR_ERR_OR_ZERO(opp);
+	if (err) {
+		dev_err(dev, "failed to get OPP: %d\n", err);
+		goto remove_table;
+	}
+
+	dev_pm_opp_put(opp);
+
+	/*
+	 * First dummy rate-set initializes voltage vote by setting voltage
+	 * in accordance to the clock rate.
+	 */
+	err = dev_pm_opp_set_rate(dev, rate);
+	if (err) {
+		dev_err(dev, "failed to initialize OPP clock: %d\n", err);
+		goto remove_table;
+	}
+
+	err = devm_add_action(dev, tegra_udc_deinit_opp_table, dev);
+	if (err)
+		goto remove_table;
+
+	return 0;
+
+remove_table:
+	dev_pm_opp_of_remove_table(dev);
+put_table:
+	dev_pm_opp_put_regulators(opp_table);
+
+	return err;
+}
+
 static int tegra_udc_probe(struct platform_device *pdev)
 {
 	const struct tegra_udc_soc_info *soc;
@@ -77,6 +151,11 @@ static int tegra_udc_probe(struct platform_device *pdev)
 		return err;
 	}
 
+	err = devm_tegra_udc_init_opp_table(&pdev->dev);
+	if (err)
+		return dev_err_probe(&pdev->dev, err,
+				     "failed to initialize OPP\n");
+
 	err = clk_prepare_enable(udc->clk);
 	if (err < 0) {
 		dev_err(&pdev->dev, "failed to enable clock: %d\n", err);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

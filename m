Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B9F2A7203
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A4586203E4;
	Wed,  4 Nov 2020 23:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HBbw3IMblFRF; Wed,  4 Nov 2020 23:45:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 28C842041E;
	Wed,  4 Nov 2020 23:45:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E5B101BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E27AE854FC
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KRz8e8_8h-Xf for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 71D5C854DF
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:21 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id 126so154240lfi.8
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SiMZXJPavVdA5iWrAG5s24KuYQ60OjfNxHzqyJK5EsM=;
 b=ZQMFC548Tvz/UdDyQFnHjksr0tRAmfVl4BN+QGzygwbC/1g6BcNRHq0ChVxHTmLlgv
 Q4KgPHWyW5yaNpRiGInuz8rjGVTjJiwlSvi68RHD2JbxD4VrbNRG0nirUu18yFlB64pN
 1sGGT+hX9uNOODPR6RnmEnppSaTqmaN38nhkk+wFXiwJkR7mLQID+noXFH8tY0zh5cl+
 0DX5nMxLE7U7YMFAb5ekFv3Ak0zp9ddUNQTmvp6SOf47XUuWn12lpZg8Z/JjHtL8tBgM
 BhsDuC+VyY/4LOSfFmlVb7tBQ3AxqeOID9lSb5GqzCoUvn+/jMniiRoPjIsIRfEcN7cz
 2qVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SiMZXJPavVdA5iWrAG5s24KuYQ60OjfNxHzqyJK5EsM=;
 b=IRjijfiuF0LN6ZieQQpSWEHjo1jqT949PTkjyNmarEdvnv8IULLAo9la5mD7UoaKml
 sw1/gpySR3w8ld0492/B/stVrD6OALg2xxz6yjlLnGe8oe2QlQ8neN+L/Ir/WBRrsA1M
 YRxX6Bho7pg/5cIuniPtBIef2Yjl3XygKu8Y1cTi8jzr3sG2u5Go5lHF99UoYD0Np6+t
 Tyw0r5XGjR0X96iA77sl6AOm6zM532iUw10201XBQmBz0F7lUekebmqezCJFCvQ2LCJ7
 kp0nCrHYFMMvnFd2XR13gSf2tLEZNVoRY1TnR1T+xjKnSlZoOWnHUryBHVVHZuEPEh40
 V9Ag==
X-Gm-Message-State: AOAM5319YoAg7aKxh9P69TDMHC0LaQAUlNN/EoIUclTpajEeyhfdb2vw
 yZP5FyTiyLLv0J6VgGY8Ft8=
X-Google-Smtp-Source: ABdhPJx8frc7rILYDyrQ7e/HdSjfS3VFNHPxEyzIQyqGuaOcFU1S/XE+OGCZV1OwLzUUJngXh+x4OQ==
X-Received: by 2002:a19:5206:: with SMTP id m6mr38911lfb.367.1604533519754;
 Wed, 04 Nov 2020 15:45:19 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:19 -0800 (PST)
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
Subject: [PATCH v1 17/30] mmc: sdhci-tegra: Support OPP and core voltage
 scaling
Date: Thu,  5 Nov 2020 02:44:14 +0300
Message-Id: <20201104234427.26477-18-digetx@gmail.com>
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

Add OPP and SoC core voltage scaling support to the Tegra SDHCI driver.
This is required for enabling system-wide DVFS on older Tegra SoCs.

Tested-by: Peter Geis <pgwipeout@gmail.com>
Tested-by: Nicolas Chauvet <kwizart@gmail.com>
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/mmc/host/Kconfig       |  1 +
 drivers/mmc/host/sdhci-tegra.c | 70 ++++++++++++++++++++++++++++++++--
 2 files changed, 68 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
index 310e546e5898..7d719c81b917 100644
--- a/drivers/mmc/host/Kconfig
+++ b/drivers/mmc/host/Kconfig
@@ -293,6 +293,7 @@ config MMC_SDHCI_TEGRA
 	depends on MMC_SDHCI_PLTFM
 	select MMC_SDHCI_IO_ACCESSORS
 	select MMC_CQHCI
+	select PM_OPP
 	help
 	  This selects the Tegra SD/MMC controller. If you have a Tegra
 	  platform with SD or MMC devices, say Y or M here.
diff --git a/drivers/mmc/host/sdhci-tegra.c b/drivers/mmc/host/sdhci-tegra.c
index ed12aacb1c73..964709a3ccd6 100644
--- a/drivers/mmc/host/sdhci-tegra.c
+++ b/drivers/mmc/host/sdhci-tegra.c
@@ -14,6 +14,7 @@
 #include <linux/io.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/pm_opp.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
@@ -754,10 +755,15 @@ static void tegra_sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
 {
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
+	struct device *dev = mmc_dev(host->mmc);
 	unsigned long host_clk;
 
-	if (!clock)
-		return sdhci_set_clock(host, clock);
+	/* disable clock and then remove OPP performance/voltage vote */
+	if (!clock) {
+		sdhci_set_clock(host, clock);
+		dev_pm_opp_set_rate(dev, clock);
+		return;
+	}
 
 	/*
 	 * In DDR50/52 modes the Tegra SDHCI controllers require the SDHCI
@@ -772,7 +778,7 @@ static void tegra_sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
 	 * from clk_get_rate() is used.
 	 */
 	host_clk = tegra_host->ddr_signaling ? clock * 2 : clock;
-	clk_set_rate(pltfm_host->clk, host_clk);
+	dev_pm_opp_set_rate(dev, host_clk);
 	tegra_host->curr_clk_rate = host_clk;
 	if (tegra_host->ddr_signaling)
 		host->max_clk = host_clk;
@@ -1558,6 +1564,60 @@ static int sdhci_tegra_add_host(struct sdhci_host *host)
 	return ret;
 }
 
+static void sdhci_tegra_deinit_opp_table(void *data)
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
+static int devm_sdhci_tegra_init_opp_table(struct device *dev)
+{
+	struct opp_table *opp_table;
+	const char *rname = "core";
+	int err;
+
+	/* voltage scaling is optional */
+	if (device_property_present(dev, "core-supply"))
+		opp_table = dev_pm_opp_set_regulators(dev, &rname, 1);
+	else
+		opp_table = dev_pm_opp_get_opp_table(dev);
+
+	if (IS_ERR(opp_table))
+		return dev_err_probe(dev, PTR_ERR(opp_table),
+				    "failed to prepare OPP table\n");
+
+	/*
+	 * OPP table presence is optional and we want the set_rate() of OPP
+	 * API to work similarly to clk_set_rate() if table is missing in a
+	 * device-tree.  The add_table() errors out if OPP is missing in DT.
+	 */
+	if (device_property_present(dev, "operating-points-v2")) {
+		err = dev_pm_opp_of_add_table(dev);
+		if (err) {
+			dev_err(dev, "failed to add OPP table: %d\n", err);
+			goto put_table;
+		}
+	}
+
+	err = devm_add_action(dev, sdhci_tegra_deinit_opp_table, dev);
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
 static int sdhci_tegra_probe(struct platform_device *pdev)
 {
 	const struct of_device_id *match;
@@ -1621,6 +1681,10 @@ static int sdhci_tegra_probe(struct platform_device *pdev)
 		goto err_power_req;
 	}
 
+	rc = devm_sdhci_tegra_init_opp_table(&pdev->dev);
+	if (rc)
+		goto err_parse_dt;
+
 	/*
 	 * Tegra210 has a separate SDMMC_LEGACY_TM clock used for host
 	 * timeout clock and SW can choose TMCLK or SDCLK for hardware
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

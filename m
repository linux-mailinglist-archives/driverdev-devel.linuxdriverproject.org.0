Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9442DD6F2
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 005A287AC1;
	Thu, 17 Dec 2020 18:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7ykxoiV31lWB; Thu, 17 Dec 2020 18:08:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76E1C87AA0;
	Thu, 17 Dec 2020 18:08:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A9771BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7457387943
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id myOwGW7fxAMI for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:08:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0F00F8797C
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:08:09 +0000 (UTC)
Received: by mail-lf1-f54.google.com with SMTP id x20so40289266lfe.12
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Gq8W4I2wUasJ5h66KCTLBqIzNBWEKeD2bx1BnkMl56E=;
 b=ZiUJkXP3OEl/9p18Wnh4bsCNIWYB4EpZtNeUZUbymDo6mFP/v7DrbTn+YdTom89P/r
 AmXeBx7796APxIbMxtLxf3HciZHOxVmuTVKKDSDSJ8Ra7ZhMS9huHJ/KMHtHFBjHVkkZ
 BVDYefv2R4A+bme4K/4nKMZmTJbOuLNfP3vhtuOnUeHRIlFHaLmScFhfKLYmSPt5VqKy
 EzGb52iQElGyJCgS9zA9Af5lLvAkDa6CQbTnd8SEOJNgYqnIiL5p2zj2cEGY9Ddn8y6W
 VmjGL6qA17KyZFL2beiSQ+/fMV8SiM74sL+/ipNx57Q2rurhL7nvga/vD8DyPb+RajAM
 /IHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Gq8W4I2wUasJ5h66KCTLBqIzNBWEKeD2bx1BnkMl56E=;
 b=OozCrrpe7pp2W3GADRFNUMta8qZYvN65EQoe7aeM+Ty55IUyIKWQGX1pbJM6c6oEM3
 ulWyWbYYUCOXkWIEICN0F+5lOb4Yx34+O+c7zF/yqPU7vqebdfbfuok/5FaCncRnE3Xs
 hFphvHeSZXs3xSArRDR0peRuuyrF+3G+QDTyew0I8dOGQGGQR77Bp+hB4ZDTFbqYDnl6
 E+InlWNNj67ud1AcsiHYkoRf0SC493Ug4eSmhTMU5eQgeHtqnew54WiwPKh/bkZUnStt
 zWqvTctCzaLDVthyQ0+aM4X4FDnZYXckmrH9/w5BHocGD2o3XkHmOf/wFuDFUF9QyNVb
 tR4A==
X-Gm-Message-State: AOAM533HNrxxRo+NaS9i/jfPuUVXIyQ5L/bJR6rh7AVQoTAoScughgfB
 VEKho2nEsgDPy3SMtTwRKpE=
X-Google-Smtp-Source: ABdhPJzG7EE6kXogDOkARgr3HB5ayF26rpXNg7jPbhOKIPf6WK66Rb/TQWDoAw//rAssWa87q3IaOg==
X-Received: by 2002:a2e:9ad7:: with SMTP id p23mr191997ljj.465.1608228487370; 
 Thu, 17 Dec 2020 10:08:07 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.08.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:08:06 -0800 (PST)
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
Subject: [PATCH v2 41/48] memory: tegra20-emc: Use
 devm_tegra_core_dev_init_opp_table()
Date: Thu, 17 Dec 2020 21:06:31 +0300
Message-Id: <20201217180638.22748-42-digetx@gmail.com>
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

Use common devm_tegra_core_dev_init_opp_table() helper for the OPP table
initialization.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/memory/tegra/tegra20-emc.c | 57 +++---------------------------
 1 file changed, 4 insertions(+), 53 deletions(-)

diff --git a/drivers/memory/tegra/tegra20-emc.c b/drivers/memory/tegra/tegra20-emc.c
index 686aaf477d8a..4be847442fc7 100644
--- a/drivers/memory/tegra/tegra20-emc.c
+++ b/drivers/memory/tegra/tegra20-emc.c
@@ -908,58 +908,6 @@ static int tegra_emc_interconnect_init(struct tegra_emc *emc)
 	return err;
 }
 
-static int tegra_emc_opp_table_init(struct tegra_emc *emc)
-{
-	u32 hw_version = BIT(tegra_sku_info.soc_process_id);
-	struct opp_table *clk_opp_table, *hw_opp_table;
-	int err;
-
-	clk_opp_table = dev_pm_opp_set_clkname(emc->dev, NULL);
-	err = PTR_ERR_OR_ZERO(clk_opp_table);
-	if (err) {
-		dev_err(emc->dev, "failed to set OPP clk: %d\n", err);
-		return err;
-	}
-
-	hw_opp_table = dev_pm_opp_set_supported_hw(emc->dev, &hw_version, 1);
-	err = PTR_ERR_OR_ZERO(hw_opp_table);
-	if (err) {
-		dev_err(emc->dev, "failed to set OPP supported HW: %d\n", err);
-		goto put_clk_table;
-	}
-
-	err = dev_pm_opp_of_add_table(emc->dev);
-	if (err) {
-		if (err == -ENODEV)
-			dev_err(emc->dev, "OPP table not found, please update your device tree\n");
-		else
-			dev_err(emc->dev, "failed to add OPP table: %d\n", err);
-
-		goto put_hw_table;
-	}
-
-	dev_info(emc->dev, "OPP HW ver. 0x%x, current clock rate %lu MHz\n",
-		 hw_version, clk_get_rate(emc->clk) / 1000000);
-
-	/* first dummy rate-set initializes voltage state */
-	err = dev_pm_opp_set_rate(emc->dev, clk_get_rate(emc->clk));
-	if (err) {
-		dev_err(emc->dev, "failed to initialize OPP clock: %d\n", err);
-		goto remove_table;
-	}
-
-	return 0;
-
-remove_table:
-	dev_pm_opp_of_remove_table(emc->dev);
-put_hw_table:
-	dev_pm_opp_put_supported_hw(hw_opp_table);
-put_clk_table:
-	dev_pm_opp_put_clkname(clk_opp_table);
-
-	return err;
-}
-
 static void devm_tegra_emc_unset_callback(void *data)
 {
 	tegra20_clk_set_emc_round_callback(NULL, NULL);
@@ -1086,6 +1034,7 @@ static int tegra_emc_devfreq_init(struct tegra_emc *emc)
 
 static int tegra_emc_probe(struct platform_device *pdev)
 {
+	struct tegra_core_opp_params opp_params = {};
 	struct device_node *np;
 	struct tegra_emc *emc;
 	int irq, err;
@@ -1131,7 +1080,9 @@ static int tegra_emc_probe(struct platform_device *pdev)
 	if (err)
 		return err;
 
-	err = tegra_emc_opp_table_init(emc);
+	opp_params.init_state = true;
+
+	err = devm_tegra_core_dev_init_opp_table(&pdev->dev, &opp_params);
 	if (err)
 		return err;
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

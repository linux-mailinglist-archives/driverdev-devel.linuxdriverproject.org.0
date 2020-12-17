Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D96AE2DD710
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:10:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 372652E2F3;
	Thu, 17 Dec 2020 18:10:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gG5IBdA7Ncjx; Thu, 17 Dec 2020 18:10:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C44592E2BD;
	Thu, 17 Dec 2020 18:08:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3EFAE1BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3796387A9E
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O8qFmF0Cdgls for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:08:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 346E887A95
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:08:10 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id a9so59804338lfh.2
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:08:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DAtdibIFrFoBdbWxAk3vr83zchLhlmDglPbN6gXDjkM=;
 b=N3Ck5qX6m1iyF3ASnevrle+liHZfmUJKPpVtCyekINsKU3z6ST0UE5bLfsWvIqI28T
 q7/Vi3Sc4DvowsD/9Kmvo9md/xI9QWZRDL4tjGFj4npdFEjHST28bU04ou4et5wKrnOO
 fGttY/cszQ/PtGCr9+VXIP0aN0P10J7+bkhjTUGdyAz347VikCOIE1A/6pxOdMKz2ypq
 G0p8gf3pn4Qae0IPmyP+JyNMnhpFGkCQ/5nzKj46gc4j5Wo6lbhgkrL0lY/7fhfeBAg0
 g6JRxyE7jW+z6VXVtkverbxDgAkw6Wh0KasCpETW49fvq3UdS3d9CrPZiAEb+zOriUYO
 zpSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DAtdibIFrFoBdbWxAk3vr83zchLhlmDglPbN6gXDjkM=;
 b=oH6xEGtYqCzPndP8KflD+9ddjeEXyHVntGc+iXbyU7czpHGpR+0//HzeNiAOZfF0wm
 kemG66V5axmbGRs7pw/6ObozTsnJFFcBQyx59H+yDGXyHSq6PvcHHlgAIRcq2uTKmn53
 WbjjRaRP+Jh28gou4WqJ/6fEOonxYuuBC8NxWE38sajEGyOueBoq5gTgCMhzIevwyrqB
 3orimyY4SR/zJsJBDIxVI3UiDsIIyafpfo6spVgcVfA1bukDUmPJtz+D07CgMiTo0Rzk
 jMuzPOBbweB15CFLFoJkCAhykCqt8p49eL29EOjNMQUWs1lFTzjzXHFqCBYubxJb7E8t
 4lsg==
X-Gm-Message-State: AOAM531CaTcfjF1038ZSc7GA6TubCPn/IRe5b0WTJSfE0to0UAZzE3Av
 iQO/p3F1Da4iG216FQnrF2I=
X-Google-Smtp-Source: ABdhPJzE3wxZCPlLlrNCFylC3Z8X0gJtULmex2P6xsR9syJz5fbiVRh05vs/uMJBZetmgQF7Q/iIjg==
X-Received: by 2002:a2e:b5b3:: with SMTP id f19mr223623ljn.199.1608228488528; 
 Thu, 17 Dec 2020 10:08:08 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.08.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:08:08 -0800 (PST)
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
Subject: [PATCH v2 42/48] memory: tegra30-emc: Use
 devm_tegra_core_dev_init_opp_table()
Date: Thu, 17 Dec 2020 21:06:32 +0300
Message-Id: <20201217180638.22748-43-digetx@gmail.com>
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
 drivers/memory/tegra/tegra30-emc.c | 57 +++---------------------------
 1 file changed, 4 insertions(+), 53 deletions(-)

diff --git a/drivers/memory/tegra/tegra30-emc.c b/drivers/memory/tegra/tegra30-emc.c
index 44ac155936aa..c6309afd9939 100644
--- a/drivers/memory/tegra/tegra30-emc.c
+++ b/drivers/memory/tegra/tegra30-emc.c
@@ -1480,58 +1480,6 @@ static int tegra_emc_interconnect_init(struct tegra_emc *emc)
 	return err;
 }
 
-static int tegra_emc_opp_table_init(struct tegra_emc *emc)
-{
-	u32 hw_version = BIT(tegra_sku_info.soc_speedo_id);
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
@@ -1577,6 +1525,7 @@ static int tegra_emc_init_clk(struct tegra_emc *emc)
 
 static int tegra_emc_probe(struct platform_device *pdev)
 {
+	struct tegra_core_opp_params opp_params = {};
 	struct device_node *np;
 	struct tegra_emc *emc;
 	int err;
@@ -1626,7 +1575,9 @@ static int tegra_emc_probe(struct platform_device *pdev)
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B902DD6DA
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 98FCE87AB4;
	Thu, 17 Dec 2020 18:08:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KZr2uiKzzfwr; Thu, 17 Dec 2020 18:08:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E603587AA0;
	Thu, 17 Dec 2020 18:07:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF3841BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D782587A9B
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SrytQO-aOOP5 for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 835F487AA9
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:49 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id o17so56901583lfg.4
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2xd7/yRqQ1bpLSBqqvPYmX9y9km1o1DPCdEu2/xdf8k=;
 b=knjqp1xwmZY1uipSsuIrAKlbV0FPromBnLXJv9W83vZ4UUD9iS/WzmlpXNbZhD+xJn
 SVAeMUogtUbshBqLuRHfAQSoeEPnAUD2yOgO+lP8Bv5/lzDv8qlofpqMefqRFy+qnU8y
 cmQWdkpzg8Ar4Ggr1+b1gKRJeePAZtWXiDMoiFncDbrbrSMtUGmP/E6F80FzVADdQkzy
 obs4CCg1a82jm+Qbii45XqQPDlOvSM0QVnq93k4Ac/PIR/SMRe3nDMizmTePuRTNAgHV
 BgBWlE/0wpha34e9hCrNtqDLLb1/sEbxoNPJESoXU299byDkUHyj1fP1p1mFO/Rl8rs3
 DTPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2xd7/yRqQ1bpLSBqqvPYmX9y9km1o1DPCdEu2/xdf8k=;
 b=VK8aNkbWMwBz0oBF1DINPEAAx9pxV84ksLnOukSgXTRuYJgAfR8MZ1hF8cyu6VgQUD
 d6YM/mhzHQj4zIoEVrwePDVIhMmA+ZZIaB2qyI/Gy+eeG3hrqh4I+NwBYoHS95bx55a8
 bb+yyMxNlEmPiQ8AmNamh+xzXlPnxp2ffSPLSEIlypqJ9i87E7R8waPuzCz7S61XQqAq
 8h62HS5gZromoMR9oQujZIbI39u7YDtSNNZScp1AvVdVqXCnwMn8C/jP9lprc1FW1Gyl
 D6V3dthI3Xg6NMelT4zWLo7w5B9mzzNrtvZiQRclNPE/dZkJPRxcZnYiz6GQS1m+pG9c
 SniQ==
X-Gm-Message-State: AOAM533w0ABHB7XjX7vuDRtJKtaX/1RpW3YBYW3e0ssZ6NhaKBokHA4x
 n4PeW9Y7ZCuKU3zT3+kdLT4=
X-Google-Smtp-Source: ABdhPJxl5RroGj+GTUW6FyPBVu/AN/pYFQvr0N2HeyHSfmpalUAs6qNcm/28WYlCJIdj+T+0fIA9GQ==
X-Received: by 2002:a19:9d8:: with SMTP id 207mr8275737lfj.581.1608228467753; 
 Thu, 17 Dec 2020 10:07:47 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:47 -0800 (PST)
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
Subject: [PATCH v2 24/48] soc/tegra: pmc: Ensure that clock rates aren't too
 high
Date: Thu, 17 Dec 2020 21:06:14 +0300
Message-Id: <20201217180638.22748-25-digetx@gmail.com>
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

Switch all clocks of a power domain to a safe rate which is suitable
for all possible voltages in order to ensure that hardware constraints
aren't violated when power domain state toggles.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/soc/tegra/pmc.c | 92 ++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 90 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
index 985373ce52b1..8edcd5b319f6 100644
--- a/drivers/soc/tegra/pmc.c
+++ b/drivers/soc/tegra/pmc.c
@@ -237,6 +237,7 @@ struct tegra_powergate {
 	unsigned int id;
 	struct clk **clks;
 	unsigned int num_clks;
+	unsigned long *clk_rates;
 	struct reset_control *reset;
 };
 
@@ -586,6 +587,57 @@ static int __tegra_powergate_remove_clamping(struct tegra_pmc *pmc,
 	return 0;
 }
 
+static int tegra_powergate_prepare_clocks(struct tegra_powergate *pg)
+{
+	unsigned long safe_rate = 100 * 1000 * 1000;
+	unsigned int i;
+	int err;
+
+	for (i = 0; i < pg->num_clks; i++) {
+		pg->clk_rates[i] = clk_get_rate(pg->clks[i]);
+
+		if (!pg->clk_rates[i]) {
+			err = -EINVAL;
+			goto out;
+		}
+
+		if (pg->clk_rates[i] <= safe_rate)
+			continue;
+
+		/*
+		 * We don't know whether voltage state is okay for the
+		 * current clock rate, hence it's better to temporally
+		 * switch clock to a safe rate which is suitable for
+		 * all voltages, before enabling the clock.
+		 */
+		err = clk_set_rate(pg->clks[i], safe_rate);
+		if (err)
+			goto out;
+	}
+
+	return 0;
+
+out:
+	while (i--)
+		clk_set_rate(pg->clks[i], pg->clk_rates[i]);
+
+	return err;
+}
+
+static int tegra_powergate_unprepare_clocks(struct tegra_powergate *pg)
+{
+	unsigned int i;
+	int err;
+
+	for (i = 0; i < pg->num_clks; i++) {
+		err = clk_set_rate(pg->clks[i], pg->clk_rates[i]);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 static void tegra_powergate_disable_clocks(struct tegra_powergate *pg)
 {
 	unsigned int i;
@@ -636,10 +688,14 @@ static int tegra_powergate_power_up(struct tegra_powergate *pg,
 
 	usleep_range(10, 20);
 
-	err = tegra_powergate_enable_clocks(pg);
+	err = tegra_powergate_prepare_clocks(pg);
 	if (err)
 		goto powergate_off;
 
+	err = tegra_powergate_enable_clocks(pg);
+	if (err)
+		goto unprepare_clks;
+
 	usleep_range(10, 20);
 
 	err = __tegra_powergate_remove_clamping(pg->pmc, pg->id);
@@ -670,12 +726,19 @@ static int tegra_powergate_power_up(struct tegra_powergate *pg,
 	if (disable_clocks)
 		tegra_powergate_disable_clocks(pg);
 
+	err = tegra_powergate_unprepare_clocks(pg);
+	if (err)
+		return err;
+
 	return 0;
 
 disable_clks:
 	tegra_powergate_disable_clocks(pg);
 	usleep_range(10, 20);
 
+unprepare_clks:
+	tegra_powergate_unprepare_clocks(pg);
+
 powergate_off:
 	tegra_powergate_set(pg->pmc, pg->id, false);
 
@@ -686,10 +749,14 @@ static int tegra_powergate_power_down(struct tegra_powergate *pg)
 {
 	int err;
 
-	err = tegra_powergate_enable_clocks(pg);
+	err = tegra_powergate_prepare_clocks(pg);
 	if (err)
 		return err;
 
+	err = tegra_powergate_enable_clocks(pg);
+	if (err)
+		goto unprepare_clks;
+
 	usleep_range(10, 20);
 
 	err = reset_control_assert(pg->reset);
@@ -706,6 +773,10 @@ static int tegra_powergate_power_down(struct tegra_powergate *pg)
 	if (err)
 		goto assert_resets;
 
+	err = tegra_powergate_unprepare_clocks(pg);
+	if (err)
+		return err;
+
 	return 0;
 
 assert_resets:
@@ -717,6 +788,9 @@ static int tegra_powergate_power_down(struct tegra_powergate *pg)
 disable_clks:
 	tegra_powergate_disable_clocks(pg);
 
+unprepare_clks:
+	tegra_powergate_unprepare_clocks(pg);
+
 	return err;
 }
 
@@ -834,6 +908,12 @@ int tegra_powergate_sequence_power_up(unsigned int id, struct clk *clk,
 	if (!pg)
 		return -ENOMEM;
 
+	pg->clk_rates = kzalloc(sizeof(*pg->clk_rates), GFP_KERNEL);
+	if (!pg->clk_rates) {
+		kfree(pg->clks);
+		return -ENOMEM;
+	}
+
 	pg->id = id;
 	pg->clks = &clk;
 	pg->num_clks = 1;
@@ -845,6 +925,7 @@ int tegra_powergate_sequence_power_up(unsigned int id, struct clk *clk,
 		dev_err(pmc->dev, "failed to turn on partition %d: %d\n", id,
 			err);
 
+	kfree(pg->clk_rates);
 	kfree(pg);
 
 	return err;
@@ -995,6 +1076,12 @@ static int tegra_powergate_of_get_clks(struct tegra_powergate *pg,
 	if (!pg->clks)
 		return -ENOMEM;
 
+	pg->clk_rates = kcalloc(count, sizeof(*pg->clk_rates), GFP_KERNEL);
+	if (!pg->clk_rates) {
+		kfree(pg->clks);
+		return -ENOMEM;
+	}
+
 	for (i = 0; i < count; i++) {
 		pg->clks[i] = of_clk_get(np, i);
 		if (IS_ERR(pg->clks[i])) {
@@ -1011,6 +1098,7 @@ static int tegra_powergate_of_get_clks(struct tegra_powergate *pg,
 	while (i--)
 		clk_put(pg->clks[i]);
 
+	kfree(pg->clk_rates);
 	kfree(pg->clks);
 
 	return err;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

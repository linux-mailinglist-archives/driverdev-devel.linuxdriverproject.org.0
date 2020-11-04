Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD052A7200
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8495A20413;
	Wed,  4 Nov 2020 23:45:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3SZ7oE-X31ZM; Wed,  4 Nov 2020 23:45:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2E5E3203B4;
	Wed,  4 Nov 2020 23:45:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 973541BF97F
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8EAF0857C2
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xBJgKfRVgg-g for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6671985B9D
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:17 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id m8so341437ljj.0
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YgLGCQXpeJZfFmnY68KfLbg6dxMT669Npx+3tSC26GM=;
 b=dk0U6+f2C7VUHqKjoUYB2aK076wm5BwTdxiZCbd3uUa2zyQ/d9CMUV1ZZ2KQnMlzTd
 LOTeSud3rh7assb6Ia+jQ7NJHowfjFWLm6fMk9pZ+9uxzOyB1LBVVTUpMvxx0PKMn4/5
 9N4ZLclTjASGE17Rz3h91aI4xowOgbChE1arhBHxVL0uhW3EC9qdqOO10uz3RCXLN7Wj
 3BJqQEe5hU+a6BCLXRJrugoDEN2jIeHOloGArD48l5Td7waZukBXuXzTJmJf1x3367PS
 dXyJ9COq9Dw6zJnHxnS+Vr6bxEFd07O7yswItLDV0bQTaYIIwskDu0ONAT/mi5jC57qF
 lxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YgLGCQXpeJZfFmnY68KfLbg6dxMT669Npx+3tSC26GM=;
 b=qviTgXGXkd5/ZdyYppZQVJKiNcVprrAxKAv9oo9NLavRkuP0NaWWZcc2M98YUBcmxL
 8XWEVDXaYRC04JOJPEw/4tCFltST/IcvN6DqJ5zpBlA6OCxqLmFERlx6Q0fHk/75/TGE
 kn4kkPizS8MH3PPjOxmvjVU/kXbglUcX7JafmOphpgw4CB17B+x/TLB9pR9XLxykfJAn
 5gyXB+xayZQK3ygVjpi5czd0k1JJ/Y9wlQiEcPzf27vsM5qF0rQjWtyilvMxYrAS75V3
 BdzNzrd+YwD4JQxF2bRfoAtBqCdqem0tjiuRfBqmaQamnxH379fOHAlBmgzYAznyeS/T
 05vg==
X-Gm-Message-State: AOAM532FA7Njb6WL6Fc2M91e5ZuYwzBq/NeopKyTAdwn62wEW2YxufLa
 Hp785ZKWH245qtqLtII0cJ4=
X-Google-Smtp-Source: ABdhPJygW7zhBUwueiGc0u5rCNdcAaQu9G8QeXXpn9e/yoz5YItRyw+RW6puxRSf6SsG6DlthKdyjg==
X-Received: by 2002:a2e:819a:: with SMTP id e26mr134454ljg.469.1604533515613; 
 Wed, 04 Nov 2020 15:45:15 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:15 -0800 (PST)
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
Subject: [PATCH v1 14/30] drm/tegra: gr3d: Support OPP and SoC core voltage
 scaling
Date: Thu,  5 Nov 2020 02:44:11 +0300
Message-Id: <20201104234427.26477-15-digetx@gmail.com>
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

Add OPP and SoC core voltage scaling support to the GR3D driver.
This is required for enabling system-wide DVFS on Tegra SoCs.

Tested-by: Peter Geis <pgwipeout@gmail.com>
Tested-by: Nicolas Chauvet <kwizart@gmail.com>
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/gpu/drm/tegra/gr3d.c | 136 +++++++++++++++++++++++++++++++++++
 1 file changed, 136 insertions(+)

diff --git a/drivers/gpu/drm/tegra/gr3d.c b/drivers/gpu/drm/tegra/gr3d.c
index b0b8154e8104..0c6efc55f9bc 100644
--- a/drivers/gpu/drm/tegra/gr3d.c
+++ b/drivers/gpu/drm/tegra/gr3d.c
@@ -11,7 +11,9 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/reset.h>
+#include <linux/pm_opp.h>
 
+#include <soc/tegra/fuse.h>
 #include <soc/tegra/pmc.h>
 
 #include "drm.h"
@@ -278,6 +280,135 @@ static const u32 gr3d_addr_regs[] = {
 	GR3D_GLOBAL_SAMP23SURFADDR(15),
 };
 
+static int gr3d_init_opp_state(struct device *dev, struct gr3d *gr3d)
+{
+	struct dev_pm_opp *opp;
+	unsigned long rate;
+	int err;
+
+	/*
+	 * If voltage regulator presents, then we could select the fastest
+	 * clock rate, but driver doesn't support power management and
+	 * frequency scaling yet, hence the top freq OPP will vote for a
+	 * very high voltage that will produce lot's of heat.  Let's select
+	 * OPP for the current/default rate for now.
+	 *
+	 * Clock rate should be pre-initialized (i.e. it's non-zero) either
+	 * by clock driver or by assigned clocks in a device-tree.
+	 */
+	rate = clk_get_rate(gr3d->clk);
+
+	/* find suitable OPP for the clock rate supportable by SoC speedo ID */
+	opp = dev_pm_opp_find_freq_ceil(dev, &rate);
+
+	/*
+	 * dev_pm_opp_set_rate() doesn't search for a floor clock rate and it
+	 * will error out if default clock rate is too high, i.e. unsupported
+	 * by a SoC hardware version.  Hence will find floor rate by ourselves.
+	 */
+	if (opp == ERR_PTR(-ERANGE))
+		opp = dev_pm_opp_find_freq_floor(dev, &rate);
+
+	err = PTR_ERR_OR_ZERO(opp);
+	if (err) {
+		dev_err(dev, "failed to get OPP for %ld Hz: %d\n",
+			rate, err);
+		return err;
+	}
+
+	dev_pm_opp_put(opp);
+
+	/*
+	 * First dummy rate-set initializes voltage vote by setting voltage
+	 * in accordance to the clock rate.  We need to do this because GR2D
+	 * currently doesn't support power management and clock is permanently
+	 * enabled.
+	 */
+	err = dev_pm_opp_set_rate(dev, rate);
+	if (err) {
+		dev_err(dev, "failed to initialize OPP clock: %d\n", err);
+		return err;
+	}
+
+	return 0;
+}
+
+static void gr3d_deinit_opp_table(void *data)
+{
+	struct device *dev = data;
+	struct opp_table *opp_table;
+
+	opp_table = dev_pm_opp_get_opp_table(dev);
+	dev_pm_opp_of_remove_table(dev);
+	dev_pm_opp_put_supported_hw(opp_table);
+	dev_pm_opp_put_regulators(opp_table);
+	dev_pm_opp_put_opp_table(opp_table);
+}
+
+static int devm_gr3d_init_opp_table(struct device *dev, struct gr3d *gr3d)
+{
+	struct opp_table *opp_table, *hw_opp_table;
+	const char *rname = "core";
+	u32 hw_version;
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
+				     "failed to prepare OPP table\n");
+
+	if (gr3d->soc->version == 0x20)
+		hw_version = BIT(tegra_sku_info.soc_process_id);
+	else
+		hw_version = BIT(tegra_sku_info.soc_speedo_id);
+
+	hw_opp_table = dev_pm_opp_set_supported_hw(dev, &hw_version, 1);
+	err = PTR_ERR_OR_ZERO(hw_opp_table);
+	if (err) {
+		dev_err(dev, "failed to set supported HW: %d\n", err);
+		goto put_table;
+	}
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
+			goto put_hw;
+		}
+
+		err = gr3d_init_opp_state(dev, gr3d);
+		if (err)
+			goto remove_table;
+	}
+
+	err = devm_add_action(dev, gr3d_deinit_opp_table, dev);
+	if (err)
+		goto remove_table;
+
+	dev_info(dev, "OPP HW ver. 0x%x\n", hw_version);
+
+	return 0;
+
+remove_table:
+	dev_pm_opp_of_remove_table(dev);
+put_hw:
+	dev_pm_opp_put_supported_hw(opp_table);
+put_table:
+	dev_pm_opp_put_regulators(opp_table);
+
+	return err;
+}
+
 static int gr3d_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
@@ -302,6 +433,11 @@ static int gr3d_probe(struct platform_device *pdev)
 		return PTR_ERR(gr3d->clk);
 	}
 
+	err = devm_gr3d_init_opp_table(&pdev->dev, gr3d);
+	if (err)
+		return dev_err_probe(&pdev->dev, err,
+				     "failed to initialize OPP\n");
+
 	gr3d->rst = devm_reset_control_get(&pdev->dev, "3d");
 	if (IS_ERR(gr3d->rst)) {
 		dev_err(&pdev->dev, "cannot get reset\n");
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AA72DD6F1
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 007C18768B;
	Thu, 17 Dec 2020 18:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AealysXHQOld; Thu, 17 Dec 2020 18:08:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 018F687663;
	Thu, 17 Dec 2020 18:08:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E3D91BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7B05F8769D
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Z4R8I8jJWz8 for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:08:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 73F4087A9E
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:08:04 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id l11so59862789lfg.0
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:08:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/iJ0B7r+mpUQZW1i1h5+IfDMfw4DAGq9J8zYCndrZHI=;
 b=ExWKxj5QIut3nA25Da7CecMiBE6Co0EUXUaYa7EDsuufeFK9vSA+MhI677Lvw9pnY6
 flwb85bLxAI+Xhf9X5Jjrv/OzhgzY6Qr6OJAo385beFQg2JtqdkNkJ7gFIP//KnsZ3VC
 G53ibKuOUf3j7BAO36IpfgdArAKtszZFpsCZGJxERdCPUIXqSplxqvTK/USoVQaTAjRy
 195+umeDmwwxOBfUeNKqAwfUoE36+5BoA5loGfJpKHRDTmWJchvit5GJeclCvEwkWMY9
 6dpFR4KTNetWh9Voiby3i5kyGUGo9HeX/IEwz7trvafihsWSUyWxDLOCwbk/ZpqX6MXV
 2+TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/iJ0B7r+mpUQZW1i1h5+IfDMfw4DAGq9J8zYCndrZHI=;
 b=UIIhsXo5iZFEG9SpkTVNpH4akDnpggD2HBQp8Ny7V8FdAuhcJECv806sd+kAHyuMU9
 doUh01tNTHkXvB2e5q3HoiTf/29wKMozkXHrTmPpsads14De4cqt+NVMLAaGZvRJ0Ju2
 FYVzOWFiQiLJz4NR8K1iN3XSGmwEbnE5a92ONrfZy+asgkMXKlrX/+p30LOrZuLqMe6A
 fGO9f7Z93d7nszSeQSbMHcPdUG7t8ENL6YvQ5P7IrA/hGtgKhFCqET2AJ2xLmJWv8TDA
 0yNSjtffxoPNwfhqt4gL13wo0xPWtUMnE0GvqJhWU0ejj9s0XZZ3JVD8WFMnHrnWk6el
 o14w==
X-Gm-Message-State: AOAM533riSlh5LrUvJSEsBsglKjRDqHz7aop+j0Pn9vP3fBUeBkBxZIn
 55VVBmNIy+vGGTT3ZJd6k2s=
X-Google-Smtp-Source: ABdhPJzdw43MgdozgmwwfnsGmn12MpmVira1PDFRjrinDosvUczBNvUTOPwdtYFG4TtdwHo7+9B/5w==
X-Received: by 2002:a19:58e:: with SMTP id 136mr2356lff.98.1608228482755;
 Thu, 17 Dec 2020 10:08:02 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.08.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:08:02 -0800 (PST)
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
Subject: [PATCH v2 37/48] drm/tegra: gr2d: Support OPP and power management
Date: Thu, 17 Dec 2020 21:06:27 +0300
Message-Id: <20201217180638.22748-38-digetx@gmail.com>
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

Add OPP and PM support to the GR2D driver. This is required for enabling
system-wide DVFS and supporting dynamic power management using a generic
power domain.

Tested-by: Peter Geis <pgwipeout@gmail.com>
Tested-by: Nicolas Chauvet <kwizart@gmail.com>
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/gpu/drm/tegra/gr2d.c | 73 +++++++++++++++++++++++++++++++++---
 1 file changed, 67 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/tegra/gr2d.c b/drivers/gpu/drm/tegra/gr2d.c
index f30aa86e4c9f..689554ef81a8 100644
--- a/drivers/gpu/drm/tegra/gr2d.c
+++ b/drivers/gpu/drm/tegra/gr2d.c
@@ -7,6 +7,9 @@
 #include <linux/iommu.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/pm_runtime.h>
+
+#include <soc/tegra/common.h>
 
 #include "drm.h"
 #include "gem.h"
@@ -185,8 +188,15 @@ static const u32 gr2d_addr_regs[] = {
 	GR2D_VA_BASE_ADDR_SB,
 };
 
+static void gr2d_pm_runtime_release(void *dev)
+{
+	pm_runtime_put(dev);
+	pm_runtime_disable(dev);
+}
+
 static int gr2d_probe(struct platform_device *pdev)
 {
+	struct tegra_core_opp_params opp_params = {};
 	struct device *dev = &pdev->dev;
 	struct host1x_syncpt **syncpts;
 	struct gr2d *gr2d;
@@ -197,6 +207,8 @@ static int gr2d_probe(struct platform_device *pdev)
 	if (!gr2d)
 		return -ENOMEM;
 
+	platform_set_drvdata(pdev, gr2d);
+
 	gr2d->soc = of_device_get_match_data(dev);
 
 	syncpts = devm_kzalloc(dev, sizeof(*syncpts), GFP_KERNEL);
@@ -209,12 +221,23 @@ static int gr2d_probe(struct platform_device *pdev)
 		return PTR_ERR(gr2d->clk);
 	}
 
-	err = clk_prepare_enable(gr2d->clk);
-	if (err) {
-		dev_err(dev, "cannot turn on clock\n");
+	opp_params.init_state = true;
+
+	err = devm_tegra_core_dev_init_opp_table(dev, &opp_params);
+	if (err && err != -ENODEV)
+		return err;
+
+	pm_runtime_enable(dev);
+	err = pm_runtime_get_sync(dev);
+	if (err < 0) {
+		gr2d_pm_runtime_release(dev);
 		return err;
 	}
 
+	err = devm_add_action_or_reset(dev, gr2d_pm_runtime_release, dev);
+	if (err)
+		return err;
+
 	INIT_LIST_HEAD(&gr2d->client.base.list);
 	gr2d->client.base.ops = &gr2d_client_ops;
 	gr2d->client.base.dev = dev;
@@ -229,7 +252,6 @@ static int gr2d_probe(struct platform_device *pdev)
 	err = host1x_client_register(&gr2d->client.base);
 	if (err < 0) {
 		dev_err(dev, "failed to register host1x client: %d\n", err);
-		clk_disable_unprepare(gr2d->clk);
 		return err;
 	}
 
@@ -237,8 +259,6 @@ static int gr2d_probe(struct platform_device *pdev)
 	for (i = 0; i < ARRAY_SIZE(gr2d_addr_regs); i++)
 		set_bit(gr2d_addr_regs[i], gr2d->addr_regs);
 
-	platform_set_drvdata(pdev, gr2d);
-
 	return 0;
 }
 
@@ -254,15 +274,56 @@ static int gr2d_remove(struct platform_device *pdev)
 		return err;
 	}
 
+	return 0;
+}
+
+static int __maybe_unused gr2d_runtime_suspend(struct device *dev)
+{
+	struct gr2d *gr2d = dev_get_drvdata(dev);
+
 	clk_disable_unprepare(gr2d->clk);
 
 	return 0;
 }
 
+static int __maybe_unused gr2d_runtime_resume(struct device *dev)
+{
+	struct gr2d *gr2d = dev_get_drvdata(dev);
+	int err;
+
+	err = clk_prepare_enable(gr2d->clk);
+	if (err) {
+		dev_err(dev, "failed to enable clock: %d\n", err);
+		return err;
+	}
+
+	return 0;
+}
+
+static __maybe_unused int gr2d_suspend(struct device *dev)
+{
+	struct gr2d *gr2d = dev_get_drvdata(dev);
+	int err;
+
+	host1x_channel_stop(gr2d->channel);
+
+	err = pm_runtime_force_suspend(dev);
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+
+static const struct dev_pm_ops tegra_gr2d_pm = {
+	SET_RUNTIME_PM_OPS(gr2d_runtime_suspend, gr2d_runtime_resume, NULL)
+	SET_SYSTEM_SLEEP_PM_OPS(gr2d_suspend, pm_runtime_force_resume)
+};
+
 struct platform_driver tegra_gr2d_driver = {
 	.driver = {
 		.name = "tegra-gr2d",
 		.of_match_table = gr2d_match,
+		.pm = &tegra_gr2d_pm,
 	},
 	.probe = gr2d_probe,
 	.remove = gr2d_remove,
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

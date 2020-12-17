Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5F22DD713
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:10:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A64087663;
	Thu, 17 Dec 2020 18:10:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aSjFHjnQoJii; Thu, 17 Dec 2020 18:10:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 786D8871CF;
	Thu, 17 Dec 2020 18:10:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 781641BF9BD
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:09:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6C5F12E2E8
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KbtyEdnu88k0 for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:09:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by silver.osuosl.org (Postfix) with ESMTPS id EB65F2E2F3
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:08:07 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id h205so16305031lfd.5
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LuC35it5WgcMsywJnTS7GhOmGsdjUUBuqpGFnra9j0o=;
 b=ofn5aE6LcF1l+cvGsQpC/Czx+zpDlTH4WYhoLgcDxiNIlJrd/1vIn6bGZz2hQ/f9nB
 MyRDocob5zetQFAJhMMJaVoxDjpOQBUdRPMdm+yxT4eeqWLPbXFX4VykL8nMf1nPXBcq
 NR/UVaUVIzTw8x6vQPaz7o6WfrvBTd7NX7416xc+ff0Qta1oLw0bsxGrIIDREH7IvMJZ
 afLchL/8XovRs02r/+s8IKz+hp4L1OLRUN1lOzuWuLoBtv+wE4g0xGiSYdPeqRV1MxuK
 VIij6fhi0IHEJaXoyP4kpXJHwpK4c+YLTRhRwF0dByC3ZB9pLcpmNs8SR2Z6JOhSboeE
 kFqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LuC35it5WgcMsywJnTS7GhOmGsdjUUBuqpGFnra9j0o=;
 b=L2U8VDFEGkBheqZwOcfLr/WmbxOoAVWtLDi+zbSOT8cqE777CeCixaIzqVsTRWXSJG
 H0p1INaSvLqE1aANmivl8IcNoo2ukkz+9aiV8NqPD7mJR+tXllUpjOLrTlqV8CZnv3o5
 MhDpPpgOl+VXYLhLb/iBkkKg6ZteazQoLY9a7ZVzX3kSE9Xdt5U9A8mMS3pCVK4nArDL
 EzPBgGC6a3kVAbloaKajKo92Dw6J4eHaSzX4TsZOSME+gStfnO58QT4+M79TnB6s6jEV
 ssvEpYGICb8s6Ej1RuTnUnHjezJ5n9frO1uFFHbK8bF8ed+veZElOfZDBNmZrdWv11HA
 zQHw==
X-Gm-Message-State: AOAM530wW/IXpMltuyzaVM2haoZFFJpwUwKNm+VrVjHFLyp9ACwMCJIt
 OEOziQwDNJqZz7kFh223Y50=
X-Google-Smtp-Source: ABdhPJwdGFTTvmgxtOAsTgf6lkPU3TwD7qyK9moyquoKTRzbbvADlHWj3x6n0ae4NwCbCdxQWdwYJA==
X-Received: by 2002:ac2:5c46:: with SMTP id s6mr9280354lfp.207.1608228486221; 
 Thu, 17 Dec 2020 10:08:06 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.08.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:08:05 -0800 (PST)
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
Subject: [PATCH v2 40/48] media: staging: tegra-vde: Support OPP and generic
 power domain
Date: Thu, 17 Dec 2020 21:06:30 +0300
Message-Id: <20201217180638.22748-41-digetx@gmail.com>
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

Add OPP and generic power domain support to the video decoder driver.
This allows us to utilize a modern GENPD API for newer device-trees and
support DVFS of the decoder hardware. Note that older DTBs will continue
to work like they did it before this patch.

Tested-by: Peter Geis <pgwipeout@gmail.com>
Tested-by: Nicolas Chauvet <kwizart@gmail.com>
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/staging/media/tegra-vde/vde.c | 63 ++++++++++++++++++++++-----
 1 file changed, 53 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/media/tegra-vde/vde.c
index 28845b5bafaf..5be26b9bd5d8 100644
--- a/drivers/staging/media/tegra-vde/vde.c
+++ b/drivers/staging/media/tegra-vde/vde.c
@@ -15,11 +15,14 @@
 #include <linux/miscdevice.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/pm_domain.h>
+#include <linux/pm_opp.h>
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
 #include <linux/uaccess.h>
 
+#include <soc/tegra/common.h>
 #include <soc/tegra/pmc.h>
 
 #include "uapi.h"
@@ -918,13 +921,17 @@ static __maybe_unused int tegra_vde_runtime_suspend(struct device *dev)
 	struct tegra_vde *vde = dev_get_drvdata(dev);
 	int err;
 
-	err = tegra_powergate_power_off(TEGRA_POWERGATE_VDEC);
-	if (err) {
-		dev_err(dev, "Failed to power down HW: %d\n", err);
-		return err;
+	if (!dev->pm_domain) {
+		err = tegra_powergate_power_off(TEGRA_POWERGATE_VDEC);
+		if (err) {
+			dev_err(dev, "Failed to power down HW: %d\n", err);
+			return err;
+		}
 	}
 
 	clk_disable_unprepare(vde->clk);
+	reset_control_release(vde->rst);
+	dev_pm_opp_set_rate(dev, 0);
 
 	return 0;
 }
@@ -934,18 +941,44 @@ static __maybe_unused int tegra_vde_runtime_resume(struct device *dev)
 	struct tegra_vde *vde = dev_get_drvdata(dev);
 	int err;
 
-	err = tegra_powergate_sequence_power_up(TEGRA_POWERGATE_VDEC,
-						vde->clk, vde->rst);
+	err = dev_pm_opp_set_rate(dev, clk_get_rate(vde->clk));
+	if (err) {
+		dev_err(dev, "Failed to prepare OPP: %d\n", err);
+		return err;
+	}
+
+	err = reset_control_acquire(vde->rst);
 	if (err) {
-		dev_err(dev, "Failed to power up HW : %d\n", err);
+		dev_err(dev, "Failed to acquire reset: %d\n", err);
 		return err;
 	}
 
+	if (!dev->pm_domain) {
+		err = tegra_powergate_sequence_power_up(TEGRA_POWERGATE_VDEC,
+							vde->clk, vde->rst);
+		if (err) {
+			dev_err(dev, "Failed to power up HW : %d\n", err);
+			goto release_reset;
+		}
+	}
+
+	err = clk_prepare_enable(vde->clk);
+	if (err) {
+		dev_err(dev, "Failed to enable clock: %d\n", err);
+		goto release_reset;
+	}
+
 	return 0;
+
+release_reset:
+	reset_control_release(vde->rst);
+
+	return err;
 }
 
 static int tegra_vde_probe(struct platform_device *pdev)
 {
+	struct tegra_core_opp_params opp_params = {};
 	struct device *dev = &pdev->dev;
 	struct tegra_vde *vde;
 	int irq, err;
@@ -999,7 +1032,7 @@ static int tegra_vde_probe(struct platform_device *pdev)
 		return err;
 	}
 
-	vde->rst = devm_reset_control_get(dev, NULL);
+	vde->rst = devm_reset_control_get_exclusive_released(dev, NULL);
 	if (IS_ERR(vde->rst)) {
 		err = PTR_ERR(vde->rst);
 		dev_err(dev, "Could not get VDE reset %d\n", err);
@@ -1024,6 +1057,12 @@ static int tegra_vde_probe(struct platform_device *pdev)
 		return err;
 	}
 
+	opp_params.init_state = true;
+
+	err = devm_tegra_core_dev_init_opp_table(dev, &opp_params);
+	if (err && err != -ENODEV)
+		return err;
+
 	vde->iram_pool = of_gen_pool_get(dev->of_node, "iram", 0);
 	if (!vde->iram_pool) {
 		dev_err(dev, "Could not get IRAM pool\n");
@@ -1117,8 +1156,12 @@ static void tegra_vde_shutdown(struct platform_device *pdev)
 	 * On some devices bootloader isn't ready to a power-gated VDE on
 	 * a warm-reboot, machine will hang in that case.
 	 */
-	if (pm_runtime_status_suspended(&pdev->dev))
-		tegra_vde_runtime_resume(&pdev->dev);
+	if (pm_runtime_status_suspended(&pdev->dev)) {
+		if (pdev->dev.pm_domain)
+			dev_pm_genpd_resume(&pdev->dev);
+		else
+			tegra_vde_runtime_resume(&pdev->dev);
+	}
 }
 
 static __maybe_unused int tegra_vde_pm_suspend(struct device *dev)
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

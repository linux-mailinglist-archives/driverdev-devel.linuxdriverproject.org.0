Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE992A71FD
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C5E65854FC;
	Wed,  4 Nov 2020 23:45:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VWP5CbRKND6Z; Wed,  4 Nov 2020 23:45:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E847854C2;
	Wed,  4 Nov 2020 23:45:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD88E1BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AA3E3857D0
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UMucDNlDZzQM for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A62F1857C2
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:18 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id e27so161123lfn.7
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y282nJfAvr8vVLZChpZFCfyyX/0tuj7y7Sv22IVncUE=;
 b=KXuUE5AtEQQwD5Ono7VTFez03/G1JD8vBervS34kptx+rvhr1VPOJKtT7+tZonOL0D
 LYiql4lEs4GqTEMjuWMjwLYpFTuzD7peQA5Vfi9aqIs9BSwW3kmudaZudkIjvD3GG/19
 35ZO/3Ss9TqW3Pu9IqRkKZAi9/OgCAGJSxlUFuLZ1vwjqCl6LSiIk6U8zGc3Rpst7ZBU
 tSb27R9TT1BfZzPv4RaCODS/OrnSceZlO7o7PafTCOUpsPYAQYjH7YwoeCSVAvnna70u
 UMigQgwIBHl5gUp2Vf4C9Cl2fch5QY2p74zsV8dYlmESyGtGEyNrKFOuJIfx0oI4pYyz
 6omQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y282nJfAvr8vVLZChpZFCfyyX/0tuj7y7Sv22IVncUE=;
 b=EsxxNN8CpSYVS45X4T9sNsNGCHwrZ/8wllHpXr1W4hHt9LMSxgB0Y657xlxOEOCmMr
 BmSqi94DRGrHYOAOqbtdHh8///V4Xl+vJyrFKi/pp7Ri1iFZD4o0TmL1zMpm+dXBiAIE
 if/zD580e1jpTmJSZiDX2nu4cpFURODbLdvAZQ49BjoQNH4OlxmPYPME5ZXMqy5DVMpv
 iHXENGyJ+vL+PnBSC/dF47lG9vlbglCYJ4MoR9CQfUJJYsp0RJXU7/8MdeX8y0ME4oMz
 TKCwX3GrONINBggqFNsLXEfg7gOddBsqVjvys7a3uPBkHRsnpmV5A892OG8someOVyhZ
 YuUQ==
X-Gm-Message-State: AOAM531dxTU/Usf/qJr9PiTKIeTeqAVeo8D4SBkVUrWxYEdZOZ1ebyPy
 /l+guiByHEeHEv+GGuR92m4=
X-Google-Smtp-Source: ABdhPJzT6zVFairbLiWCVf6U5lDlOHXMBLgiZgoTQaSae/l2568qpJolj1IwCGuZV8j/fEZhdbtdpA==
X-Received: by 2002:a19:c6cc:: with SMTP id w195mr60492lff.24.1604533516983;
 Wed, 04 Nov 2020 15:45:16 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:16 -0800 (PST)
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
Subject: [PATCH v1 15/30] drm/tegra: hdmi: Support OPP and SoC core voltage
 scaling
Date: Thu,  5 Nov 2020 02:44:12 +0300
Message-Id: <20201104234427.26477-16-digetx@gmail.com>
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

Add OPP and SoC core voltage scaling support to the HDMI driver.
This is required for enabling system-wide DVFS on older Tegra SoCs.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/gpu/drm/tegra/hdmi.c | 63 +++++++++++++++++++++++++++++++++++-
 1 file changed, 62 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/tegra/hdmi.c b/drivers/gpu/drm/tegra/hdmi.c
index d09a24931c87..92e96990854b 100644
--- a/drivers/gpu/drm/tegra/hdmi.c
+++ b/drivers/gpu/drm/tegra/hdmi.c
@@ -11,6 +11,7 @@
 #include <linux/math64.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/pm_opp.h>
 #include <linux/pm_runtime.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
@@ -1195,7 +1196,7 @@ static void tegra_hdmi_encoder_enable(struct drm_encoder *encoder)
 	h_back_porch = mode->htotal - mode->hsync_end;
 	h_front_porch = mode->hsync_start - mode->hdisplay;
 
-	err = clk_set_rate(hdmi->clk, hdmi->pixel_clock);
+	err = dev_pm_opp_set_rate(hdmi->dev, hdmi->pixel_clock);
 	if (err < 0) {
 		dev_err(hdmi->dev, "failed to set HDMI clock frequency: %d\n",
 			err);
@@ -1499,6 +1500,7 @@ static int tegra_hdmi_runtime_suspend(struct host1x_client *client)
 	usleep_range(1000, 2000);
 
 	clk_disable_unprepare(hdmi->clk);
+	dev_pm_opp_set_rate(hdmi->dev, 0);
 	pm_runtime_put_sync(dev);
 
 	return 0;
@@ -1633,6 +1635,60 @@ static irqreturn_t tegra_hdmi_irq(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+static void tegra_hdmi_deinit_opp_table(void *data)
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
+static int devm_tegra_hdmi_init_opp_table(struct device *dev)
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
+	err = devm_add_action(dev, tegra_hdmi_deinit_opp_table, dev);
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
 static int tegra_hdmi_probe(struct platform_device *pdev)
 {
 	const char *level = KERN_ERR;
@@ -1667,6 +1723,11 @@ static int tegra_hdmi_probe(struct platform_device *pdev)
 	if (IS_ERR(hdmi->clk_parent))
 		return PTR_ERR(hdmi->clk_parent);
 
+	err = devm_tegra_hdmi_init_opp_table(&pdev->dev);
+	if (err)
+		return dev_err_probe(&pdev->dev, err,
+				     "failed to initialize OPP\n");
+
 	err = clk_set_parent(hdmi->clk, hdmi->clk_parent);
 	if (err < 0) {
 		dev_err(&pdev->dev, "failed to setup clocks: %d\n", err);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

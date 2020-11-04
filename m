Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9E72A71FF
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E69A85552;
	Wed,  4 Nov 2020 23:45:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hdDVpolDvZ2Q; Wed,  4 Nov 2020 23:45:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ECDAC85566;
	Wed,  4 Nov 2020 23:45:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 149351BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0E1D4854C2
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MUO0oZRzoXni for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5F3018551F
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:24 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id 126so154383lfi.8
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K4ppSJ2AddiWlYFoXxNcKR4PjL1fbbIp7DTjiauGM84=;
 b=EmmuvuSmP6Fa/cTkfXz6esVgu/dKOVA1/YN/iBuMZXJoX/Jp7RGrqxfrlw76fNS5DP
 9HqYlXwBQY6pR1l1tR7Gw9x9I9v3tmnVyOMr72aUQedkkGB7Ikt0lxbPNhxtDotVl8Fb
 CNMr0fVrG9QXE8eD7au3cyWnkq/Q1IRf+imGCKFLGf8RIV8q82GK6y3nuLeNnzYi+3VQ
 WwUHFsZfMbtHXf9sU5MuaINqod0n9zqPPfAfcJId5LgYGPyGDILDKVFp6kqDqlGEwn6m
 2V2d43+Nz+kv50TfcfFmfyXI56YcKOjIIGEvD4TKWR2pLjIB81j+Pm0u9PJ1odfvPcsC
 XPfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K4ppSJ2AddiWlYFoXxNcKR4PjL1fbbIp7DTjiauGM84=;
 b=jKlpeSFn2wVR3bqwj+NpTY2GBFopqfz7Zuf0/sY5IHD17qeYvcpenJOlU0biT+4nnr
 GbKzmgPlqFdMVlXcX3/ooKBXSfvfG8V6gIs7Q+IcSGoFmYkV8ho6Q+QmpE43gyMyTF3Q
 bYscXoQxZdWD8qm6syqdbx5ab4AmeyTxQcCQNdR1Yc8uc1SjTrREVEK3UujYYqDmiKXv
 lIl5/DHl9rnldJs2scd7o9kTquuy3+lcrXf8k6JNgL68NvlEulNSfUxuTKw4onI2hGgZ
 IKjbCA4L8QcA5rhJ3ylkvm4hykVasdm8goo8id9hESr+pNy6e6dYqBNVQ282jD6f6vWq
 w2rQ==
X-Gm-Message-State: AOAM532f6eVrclV8zLAae09jCpVBcaJApA9VdPR0Jm+SG9GOu/oIGhWg
 5UJ/yz+QJ433AumJzsj3Fbc=
X-Google-Smtp-Source: ABdhPJwoUckU/OtDGClkUV9r7wohhz53xU2YerU2E5Yqaah5RWdN/EQJAtLpDZOcGR7DGknOuKbMuw==
X-Received: by 2002:a05:6512:1109:: with SMTP id
 l9mr48492lfg.251.1604533522603; 
 Wed, 04 Nov 2020 15:45:22 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:22 -0800 (PST)
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
Subject: [PATCH v1 19/30] media: staging: tegra-vde: Support OPP and SoC core
 voltage scaling
Date: Thu,  5 Nov 2020 02:44:16 +0300
Message-Id: <20201104234427.26477-20-digetx@gmail.com>
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

Add initial OPP and SoC core voltage scaling support to the video
decoder driver. This is required for enabling system-wide DVFS on
older Tegra SoCs.

Tested-by: Peter Geis <pgwipeout@gmail.com>
Tested-by: Nicolas Chauvet <kwizart@gmail.com>
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/staging/media/tegra-vde/Kconfig |   1 +
 drivers/staging/media/tegra-vde/vde.c   | 127 ++++++++++++++++++++++++
 drivers/staging/media/tegra-vde/vde.h   |   1 +
 3 files changed, 129 insertions(+)

diff --git a/drivers/staging/media/tegra-vde/Kconfig b/drivers/staging/media/tegra-vde/Kconfig
index 0dc78afd09e0..0ebfe5b07a30 100644
--- a/drivers/staging/media/tegra-vde/Kconfig
+++ b/drivers/staging/media/tegra-vde/Kconfig
@@ -4,6 +4,7 @@ config TEGRA_VDE
 	depends on ARCH_TEGRA || COMPILE_TEST
 	select DMA_SHARED_BUFFER
 	select IOMMU_IOVA
+	select PM_OPP
 	select SRAM
 	help
 	    Say Y here to enable support for the NVIDIA Tegra video decoder
diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/media/tegra-vde/vde.c
index 28845b5bafaf..9ad43a862eef 100644
--- a/drivers/staging/media/tegra-vde/vde.c
+++ b/drivers/staging/media/tegra-vde/vde.c
@@ -15,11 +15,13 @@
 #include <linux/miscdevice.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/pm_opp.h>
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
 #include <linux/uaccess.h>
 
+#include <soc/tegra/fuse.h>
 #include <soc/tegra/pmc.h>
 
 #include "uapi.h"
@@ -926,6 +928,9 @@ static __maybe_unused int tegra_vde_runtime_suspend(struct device *dev)
 
 	clk_disable_unprepare(vde->clk);
 
+	/* remove performance/voltage vote */
+	dev_pm_opp_set_rate(dev, 0);
+
 	return 0;
 }
 
@@ -934,6 +939,12 @@ static __maybe_unused int tegra_vde_runtime_resume(struct device *dev)
 	struct tegra_vde *vde = dev_get_drvdata(dev);
 	int err;
 
+	err = dev_pm_opp_set_rate(dev, vde->default_clk_rate);
+	if (err) {
+		dev_err(dev, "Failed to set clock rate: %d\n", err);
+		return err;
+	}
+
 	err = tegra_powergate_sequence_power_up(TEGRA_POWERGATE_VDEC,
 						vde->clk, vde->rst);
 	if (err) {
@@ -944,6 +955,118 @@ static __maybe_unused int tegra_vde_runtime_resume(struct device *dev)
 	return 0;
 }
 
+static void tegra_vde_deinit_opp_table(void *data)
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
+static int devm_tegra_vde_init_opp_table(struct device *dev,
+					 struct tegra_vde *vde)
+{
+	struct opp_table *opp_table, *hw_opp_table;
+	const char *rname = "core";
+	struct dev_pm_opp *opp;
+	unsigned long rate;
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
+				     "Failed to prepare OPP table\n");
+
+	if (of_machine_is_compatible("nvidia,tegra20"))
+		hw_version = BIT(tegra_sku_info.soc_process_id);
+	else
+		hw_version = BIT(tegra_sku_info.soc_speedo_id);
+
+	hw_opp_table = dev_pm_opp_set_supported_hw(dev, &hw_version, 1);
+	err = PTR_ERR_OR_ZERO(hw_opp_table);
+	if (err) {
+		dev_err(dev, "Failed to set supported HW: %d\n", err);
+		goto put_table;
+	}
+
+	/*
+	 * OPP table presence is optional and we want the set_rate() of OPP
+	 * API to work similarly to clk_set_rate() if table is missing in a
+	 * device-tree.  The add_table() errors out if OPP is missing in DT.
+	 *
+	 * Clock rate should be pre-initialized (i.e. it's non-zero) either
+	 * by clock driver or by assigned clocks in a device-tree.
+	 */
+	if (!device_property_present(dev, "operating-points-v2")) {
+		vde->default_clk_rate = clk_get_rate(vde->clk);
+		goto add_action;
+	}
+
+	err = dev_pm_opp_of_add_table(dev);
+	if (err) {
+		dev_err(dev, "Failed to add OPP table: %d\n", err);
+		goto put_hw;
+	}
+
+	/*
+	 * If voltage regulator presents, then we could select the fastest
+	 * clock rate, but driver doesn't support frequency scaling yet,
+	 * hence the top freq OPP may vote for a very high voltage that will
+	 * produce lot's of heat.  Let's select OPP for the current/default
+	 * rate for now.
+	 *
+	 * Clock rate should be pre-initialized (i.e. it's non-zero) either
+	 * by clock driver or by assigned clocks in a device-tree.
+	 */
+	rate = clk_get_rate(vde->clk);
+
+	/* find suitable OPP for the clock rate supportable by SoC */
+	opp = dev_pm_opp_find_freq_ceil(dev, &rate);
+
+	if (opp == ERR_PTR(-ERANGE))
+		opp = dev_pm_opp_find_freq_floor(dev, &rate);
+
+	err = PTR_ERR_OR_ZERO(opp);
+	if (err) {
+		dev_err(dev, "failed to get OPP for %ld Hz: %d\n",
+			rate, err);
+		goto remove_table;
+	}
+
+	dev_pm_opp_put(opp);
+
+	vde->default_clk_rate = clk_round_rate(vde->clk, rate);
+
+add_action:
+	err = devm_add_action(dev, tegra_vde_deinit_opp_table, dev);
+	if (err)
+		goto remove_table;
+
+	dev_info(dev, "OPP HW ver. 0x%x, clock rate %lu MHz\n",
+		 hw_version, vde->default_clk_rate / 1000000);
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
 static int tegra_vde_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1024,6 +1147,10 @@ static int tegra_vde_probe(struct platform_device *pdev)
 		return err;
 	}
 
+	err = devm_tegra_vde_init_opp_table(dev, vde);
+	if (err)
+		return dev_err_probe(dev, err, "Failed to initialize OPP\n");
+
 	vde->iram_pool = of_gen_pool_get(dev->of_node, "iram", 0);
 	if (!vde->iram_pool) {
 		dev_err(dev, "Could not get IRAM pool\n");
diff --git a/drivers/staging/media/tegra-vde/vde.h b/drivers/staging/media/tegra-vde/vde.h
index 5561291b0c88..da83c2d6af8b 100644
--- a/drivers/staging/media/tegra-vde/vde.h
+++ b/drivers/staging/media/tegra-vde/vde.h
@@ -48,6 +48,7 @@ struct tegra_vde {
 	struct iova_domain iova;
 	struct iova *iova_resv_static_addresses;
 	struct iova *iova_resv_last_page;
+	unsigned long default_clk_rate;
 	dma_addr_t iram_lists_addr;
 	u32 *iram;
 };
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

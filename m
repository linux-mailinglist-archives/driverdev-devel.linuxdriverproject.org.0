Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A232A7201
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D7A286E1A;
	Wed,  4 Nov 2020 23:45:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UixcPoggVpVD; Wed,  4 Nov 2020 23:45:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 18D768507C;
	Wed,  4 Nov 2020 23:45:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 185041BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 14872851E5
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bNRZybI5LJWT for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 29E5986E1A
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:27 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id l2so200921lfk.0
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hseyDhQkuoob9NOtoHbLkM9cTffwFSs3xCd4YpkHTrw=;
 b=Vgs9vcRA5MoYdjcDWn5jAmzh9koLFkm8n3kxp4ZaWDmqaxezO16uXx+POVve50XLv6
 Brk82aXVk8Ij6FjVZVP0eHSnwT52sTgvE/OiY/n7PgxCXTZdymbdD49Zn5jZks+RIF25
 zeNuKaG+2PB76p4DG10Sx6jAlvXcP12CX5VDX8f2ytUae1qjeB1Ct6/6xtZlCTN3McIO
 SoePQx2v0ZriIswLrgIAG9aFzQz81hKDwWKO/xPaaKaoeP5OX7IsA7kWqj1qLBwq1o7P
 fOqksQJtYotkXuwnXWjQoPNQfKtuT7fe4Ou24BKTBQm7a+aobGhtKwVp3lF/QqrtjJQb
 PbFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hseyDhQkuoob9NOtoHbLkM9cTffwFSs3xCd4YpkHTrw=;
 b=aXTzr7916ikXT5i0m2hT+ODhi2btvb4vOts7eDr/C1RJOl1iCBd6JJgZbF/regLYqR
 iFUJn3nRcISA7Xssob5olD7aCSJX3MNkk+z3l21bpo9tpWwSrFoE8wEr2B1PJOUv9OlS
 noT/oiGWUWyjbmr6fQ2qwKc5F5JiFJ+mWm7rZhBM11SKfzAV1vqGRrgJGYIrP3W4plDs
 /xaT24z7hgzm8XScvIGSke93d+bkpplL0ims2Gbqw/pmndhCMKlDZXH/MsOConbISAP+
 FnnAwTb3eeLhzl0XmRQgv3IxYldB7WPY2qO4Ip4OkTuI9dw5Cd7diJCY9e0OYY1P1VMT
 jU7A==
X-Gm-Message-State: AOAM530BBw/PrIpEWAoswJdHvESobk/1tWkD5IEI5ID5k7n5X4mttjmO
 73MFlsJCgUhymxpzJYc5Rbc=
X-Google-Smtp-Source: ABdhPJyjht5wRoGeIdpBggRhGgNRXmUvQ3GKs49s3x6UJiZufCXAe3x9qoE2tlabYR9VyRWx6gLTtg==
X-Received: by 2002:a19:6912:: with SMTP id e18mr39627lfc.427.1604533525432;
 Wed, 04 Nov 2020 15:45:25 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:24 -0800 (PST)
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
Subject: [PATCH v1 21/30] usb: host: ehci-tegra: Support OPP and SoC core
 voltage scaling
Date: Thu,  5 Nov 2020 02:44:18 +0300
Message-Id: <20201104234427.26477-22-digetx@gmail.com>
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

Add initial OPP and SoC core voltage scaling support to the Tegra EHCI
driver. This is required for enabling system-wide DVFS on older Tegra
SoCs.

Tested-by: Peter Geis <pgwipeout@gmail.com>
Tested-by: Nicolas Chauvet <kwizart@gmail.com>
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/usb/host/Kconfig      |  1 +
 drivers/usb/host/ehci-tegra.c | 79 +++++++++++++++++++++++++++++++++++
 2 files changed, 80 insertions(+)

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index ab12c4bf0ef1..35c42bc05c5a 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -278,6 +278,7 @@ config USB_EHCI_TEGRA
 	depends on ARCH_TEGRA
 	select USB_EHCI_ROOT_HUB_TT
 	select USB_TEGRA_PHY
+	select PM_OPP
 	help
 	  This driver enables support for the internal USB Host Controllers
 	  found in NVIDIA Tegra SoCs. The controllers are EHCI compliant.
diff --git a/drivers/usb/host/ehci-tegra.c b/drivers/usb/host/ehci-tegra.c
index 869d9c4de5fc..0976577f54b4 100644
--- a/drivers/usb/host/ehci-tegra.c
+++ b/drivers/usb/host/ehci-tegra.c
@@ -17,6 +17,7 @@
 #include <linux/of_device.h>
 #include <linux/of_gpio.h>
 #include <linux/platform_device.h>
+#include <linux/pm_opp.h>
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
@@ -364,6 +365,79 @@ static void tegra_ehci_unmap_urb_for_dma(struct usb_hcd *hcd, struct urb *urb)
 	free_dma_aligned_buffer(urb);
 }
 
+static void tegra_ehci_deinit_opp_table(void *data)
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
+static int devm_tegra_ehci_init_opp_table(struct device *dev)
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
+	err = devm_add_action(dev, tegra_ehci_deinit_opp_table, dev);
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
 static const struct tegra_ehci_soc_config tegra30_soc_config = {
 	.has_hostpc = true,
 };
@@ -431,6 +505,11 @@ static int tegra_ehci_probe(struct platform_device *pdev)
 		goto cleanup_hcd_create;
 	}
 
+	err = devm_tegra_ehci_init_opp_table(&pdev->dev);
+	if (err)
+		return dev_err_probe(&pdev->dev, err,
+				     "Failed to initialize OPP\n");
+
 	err = clk_prepare_enable(tegra->clk);
 	if (err)
 		goto cleanup_hcd_create;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

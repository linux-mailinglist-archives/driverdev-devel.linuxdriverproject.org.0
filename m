Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD192DD6CF
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:07:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99A6887953;
	Thu, 17 Dec 2020 18:07:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Fvu+O7D0Da5; Thu, 17 Dec 2020 18:07:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 377828794F;
	Thu, 17 Dec 2020 18:07:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 107311BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0A4B987A8A
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A3PxjfhBXSWJ for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2236587A9C
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:32 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id a9so59798911lfh.2
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UciLuLVan0P0SH0oR2Zf1mFiYSDrxBfVN7jaTPVHllw=;
 b=aUHpk7k/bNFUizBJ9NAhFPP7O5TZO/wM8Ol/u8aIt3gZ9x3kH86JtXskjxBVjqT3VN
 hgbgaSF/3nKKMcdizRSAFP8bRTPWk69Z9Gt4F8YqU2dJ+52b4MGNlZ6YWO5gYPjErj/a
 hT5sWjNy0okhQ4km6Sa+6l8FwMx6iy5UBSD/PPb/QgXJBSzTUNx0rVq+i6viLDLHVwoV
 i1szlSQyGrXl5jz+/N/ZM4FWQ3pzvaMCO/mA12PzGz743GTFBFTgh8LQBiH4inY3JVgx
 6cMXpjHPHWIZyjbtsxU0pN5s0nz5bzQrAu+Sbzp7G90bLayZtcUOHSlsWBsfZ66iRjZP
 1NUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UciLuLVan0P0SH0oR2Zf1mFiYSDrxBfVN7jaTPVHllw=;
 b=kE9mDtWDX2gHNM4t+BHx2p/yBPb1KOb6OVDr00UGwMvOC83TtcYiMHjUbaHxQxQEB+
 uVNXQXS+0D+Q/DEHZS0l/HNItwc+Eejty7g/IrqqZ76WDN5aLgZzD6W7cgvFifEnf2HP
 Ydv6czU0Zf+3HDEBk+TU2MhpZJtSpppJCcto8qtKeZ0WwtGgi5xlzsDmuPKiAnmQzfjU
 HM7IqVpIYkl4TUUkTWsT0xgTFNkhIvVa8wVecEhUWXkeB3zpU2eONPDdjwNOCPDsKoPu
 zbvoZnPDHnkh6XveDVLhcJ1kDYA8n0ZdNIZQf/gqQjFNIvbxG+1zPSGjIr4z9KabhBTV
 q70A==
X-Gm-Message-State: AOAM533hr4DwFP4AHhxBCbfU2wjwC77M9N0fpVhoE8LmBrk43R0x0r0V
 OqhPfzArx3CXV/Pn9rtZNTY=
X-Google-Smtp-Source: ABdhPJyqRF/GAfRVFFJhIN88THdxl4cwg3KVxuRdpu65i6dxhir2dh7Hvi6opFqgBO7mbKTSa0o+vw==
X-Received: by 2002:a05:6512:2009:: with SMTP id
 a9mr674300lfb.575.1608228450395; 
 Thu, 17 Dec 2020 10:07:30 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:29 -0800 (PST)
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
Subject: [PATCH v2 09/48] opp: Add dev_pm_opp_sync_regulators()
Date: Thu, 17 Dec 2020 21:05:59 +0300
Message-Id: <20201217180638.22748-10-digetx@gmail.com>
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

Extend OPP API with dev_pm_opp_sync_regulators() function, which syncs
voltage state of regulators.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/opp/core.c     | 42 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/pm_opp.h | 11 +++++++++++
 2 files changed, 53 insertions(+)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 4268eb359915..500d6c716283 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -2499,3 +2499,45 @@ void dev_pm_opp_remove_table(struct device *dev)
 	dev_pm_opp_put_opp_table(opp_table);
 }
 EXPORT_SYMBOL_GPL(dev_pm_opp_remove_table);
+
+/**
+ * dev_pm_opp_sync_regulators() - Sync state of voltage regulators
+ * @dev:	device for which we do this operation
+ *
+ * Sync voltage state of the OPP table regulators.
+ *
+ * Return: 0 on success or a negative error value.
+ */
+int dev_pm_opp_sync_regulators(struct device *dev)
+{
+	struct opp_table *opp_table;
+	struct regulator *reg;
+	int i, ret = 0;
+
+	/* Device may not have OPP table */
+	opp_table = _find_opp_table(dev);
+	if (IS_ERR(opp_table))
+		return 0;
+
+	/* Regulator may not be required for the device */
+	if (!opp_table->regulators)
+		goto put_table;
+
+	/* Nothing to sync if voltage wasn't changed */
+	if (!opp_table->enabled)
+		goto put_table;
+
+	for (i = 0; i < opp_table->regulator_count; i++) {
+		reg = opp_table->regulators[i];
+		ret = regulator_sync_voltage(reg);
+		if (ret)
+			break;
+	}
+
+put_table:
+	/* Drop reference taken by _find_opp_table() */
+	dev_pm_opp_put_opp_table(opp_table);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(dev_pm_opp_sync_regulators);
diff --git a/include/linux/pm_opp.h b/include/linux/pm_opp.h
index 1435c054016a..4c79faa2025e 100644
--- a/include/linux/pm_opp.h
+++ b/include/linux/pm_opp.h
@@ -156,6 +156,7 @@ int dev_pm_opp_set_sharing_cpus(struct device *cpu_dev, const struct cpumask *cp
 int dev_pm_opp_get_sharing_cpus(struct device *cpu_dev, struct cpumask *cpumask);
 void dev_pm_opp_remove_table(struct device *dev);
 void dev_pm_opp_cpumask_remove_table(const struct cpumask *cpumask);
+int dev_pm_opp_sync_regulators(struct device *dev);
 #else
 static inline struct opp_table *dev_pm_opp_get_opp_table(struct device *dev)
 {
@@ -366,6 +367,11 @@ static inline void dev_pm_opp_cpumask_remove_table(const struct cpumask *cpumask
 {
 }
 
+static inline int dev_pm_opp_sync_regulators(struct device *dev)
+{
+	return -ENOTSUPP;
+}
+
 #endif		/* CONFIG_PM_OPP */
 
 #if defined(CONFIG_PM_OPP) && defined(CONFIG_OF)
@@ -442,6 +448,11 @@ static inline int dev_pm_opp_of_find_icc_paths(struct device *dev, struct opp_ta
 {
 	return -ENOTSUPP;
 }
+
+static inline int dev_pm_opp_sync_regulators(struct device *dev)
+{
+	return -ENOTSUPP;
+}
 #endif
 
 #endif		/* __LINUX_OPP_H__ */
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

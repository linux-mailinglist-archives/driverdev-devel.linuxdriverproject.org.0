Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5D92DD6CE
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:07:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA8C887637;
	Thu, 17 Dec 2020 18:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HTkuOBXxeEEC; Thu, 17 Dec 2020 18:07:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFC118762F;
	Thu, 17 Dec 2020 18:07:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3020C1BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2D3CC8764E
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B6lK_iQ0rtRe for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4693F8762A
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:33 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id m12so59848144lfo.7
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3UVBePDvj8+JPmPnd9lky7oATp5P2thSWicPxP1xnR8=;
 b=aJbEbbQC/He+JGwsqe9/kWlEHU6l6eJbWVOB+YDfBF2TKFMQVztNRBn7FxxkGhbddC
 ev33yPj1MSIMzyO+TFiwew5f4KfWulf7oFRaBTCyv3TgOFe4ujYEo+I+Z7tTL1KNM9jb
 L13m6ejsc71Ofyfwl85z3HfWqR+upQ0tPHMikLcTSLd2xpjYhAO714ZZLJjjJnGvqT4l
 ZJNGw47xKKIA1sXCEKL2oXmxaJWoioML4IYpvBFET5w2EnSIPfL+gc3dMvbdCqforTUn
 zZEu2tnDe+CPvHNGmkMFDxfxv13NlKEVcT6f5P2yfM4ci6lqceo5M9extORpjM92O5sn
 CBKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3UVBePDvj8+JPmPnd9lky7oATp5P2thSWicPxP1xnR8=;
 b=paL6ghyW74I3yjNKOZ+E/TzkPvchCSkXXpS5m0q7/L/8ZlTJkaogJ541PSmCjpu3gV
 cfhCx4erX6VKT2oKoEZ3YYYQm+r55VpfIdd3VlDjdAPK6cEbbPELwYuP/AUOBFpJP/fn
 bIiUr9u/ato1MjUl5soUKJNfMTT0wSLD9Iu6Xvg0SvHA5ncNaarzWJPEd654eSSThMTS
 ACJBD0YcsPBWmaaL2mi8QvL26WlnkTumvkYKObctO+rApdQQVfEvqNckycxpJqOcMvE8
 MvJXu6VC+YSXY5dl0/v7TOeJbDyrbgHll0QqNYjXfEv7HDQb18xo42Utg2xMtra/gfBO
 1IPQ==
X-Gm-Message-State: AOAM5312cRXmXpSYVGWXzUbtSb2E/OBdgMjc0SZvWUfIyqDQtG0xf8dH
 dOF1N3X5ICnZZ97KGXU/cV8=
X-Google-Smtp-Source: ABdhPJxdOm63SmKECVhD/Ri1mq2T3tx66jApca+i51NwPxJdgmqEwm5XIsXzuInwJ0NSw6phFVcb5Q==
X-Received: by 2002:a05:6512:3054:: with SMTP id
 b20mr15125654lfb.45.1608228451555; 
 Thu, 17 Dec 2020 10:07:31 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:31 -0800 (PST)
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
Subject: [PATCH v2 10/48] opp: Add dev_pm_opp_set_voltage()
Date: Thu, 17 Dec 2020 21:06:00 +0300
Message-Id: <20201217180638.22748-11-digetx@gmail.com>
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

Add dev_pm_opp_set_voltage() which allows OPP table users to set voltage
in accordance to a given OPP. In particular this is needed for driving
voltage of a generic power domain which uses OPPs and doesn't have a
clock.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/opp/core.c     | 52 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/pm_opp.h | 11 +++++----
 2 files changed, 58 insertions(+), 5 deletions(-)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 500d6c716283..eab37b3a27bb 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -2541,3 +2541,55 @@ int dev_pm_opp_sync_regulators(struct device *dev)
 	return ret;
 }
 EXPORT_SYMBOL_GPL(dev_pm_opp_sync_regulators);
+
+/**
+ * dev_pm_opp_set_voltage() - Change voltage of regulators
+ * @dev:	device for which we do this operation
+ * @opp:	opp based on which the voltages are to be configured
+ *
+ * Change voltage of the OPP table regulators.
+ *
+ * Return: 0 on success or a negative error value.
+ */
+int dev_pm_opp_set_voltage(struct device *dev, struct dev_pm_opp *opp)
+{
+	struct opp_table *opp_table;
+	struct regulator *reg;
+	int ret = 0;
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
+	/* This function only supports single regulator per device */
+	if (WARN_ON(opp_table->regulator_count > 1)) {
+		dev_err(dev, "multiple regulators are not supported\n");
+		ret = -EINVAL;
+		goto put_table;
+	}
+
+	reg = opp_table->regulators[0];
+	ret = _set_opp_voltage(dev, reg, opp->supplies);
+
+	if (!opp_table->enabled) {
+		ret = regulator_enable(reg);
+		if (ret < 0) {
+			dev_warn(dev, "Failed to enable regulator: %d", ret);
+			goto put_table;
+		}
+
+		opp_table->enabled = true;
+	}
+
+put_table:
+	/* Drop reference taken by _find_opp_table() */
+	dev_pm_opp_put_opp_table(opp_table);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(dev_pm_opp_set_voltage);
diff --git a/include/linux/pm_opp.h b/include/linux/pm_opp.h
index 4c79faa2025e..f311a8b2ca04 100644
--- a/include/linux/pm_opp.h
+++ b/include/linux/pm_opp.h
@@ -157,6 +157,7 @@ int dev_pm_opp_get_sharing_cpus(struct device *cpu_dev, struct cpumask *cpumask)
 void dev_pm_opp_remove_table(struct device *dev);
 void dev_pm_opp_cpumask_remove_table(const struct cpumask *cpumask);
 int dev_pm_opp_sync_regulators(struct device *dev);
+int dev_pm_opp_set_voltage(struct device *dev, struct dev_pm_opp *opp);
 #else
 static inline struct opp_table *dev_pm_opp_get_opp_table(struct device *dev)
 {
@@ -372,6 +373,11 @@ static inline int dev_pm_opp_sync_regulators(struct device *dev)
 	return -ENOTSUPP;
 }
 
+static inline int dev_pm_opp_set_voltage(struct device *dev, struct dev_pm_opp *opp)
+{
+	return -ENOTSUPP;
+}
+
 #endif		/* CONFIG_PM_OPP */
 
 #if defined(CONFIG_PM_OPP) && defined(CONFIG_OF)
@@ -448,11 +454,6 @@ static inline int dev_pm_opp_of_find_icc_paths(struct device *dev, struct opp_ta
 {
 	return -ENOTSUPP;
 }
-
-static inline int dev_pm_opp_sync_regulators(struct device *dev)
-{
-	return -ENOTSUPP;
-}
 #endif
 
 #endif		/* __LINUX_OPP_H__ */
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

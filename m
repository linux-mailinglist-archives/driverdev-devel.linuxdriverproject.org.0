Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 671CE2DD70F
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:09:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 783562E192;
	Thu, 17 Dec 2020 18:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p6VIW0JNUo4m; Thu, 17 Dec 2020 18:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 006302E2FC;
	Thu, 17 Dec 2020 18:08:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 128591BF9B6
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0C0BA87969
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d6IwmqO7b+1R for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:08:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0C0C487943
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:08:01 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id x20so40288169lfe.12
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aGHKx42MfDPDBxR4DOfvxOz7/Acf8JGv695v+njpFiw=;
 b=APzhHWryK80KbNYYXej8HpuMRxROpNpavnwx1kCJM5bBVa+TdnqcKt2RdY4SHrVcMt
 W32uT9CDUxgZFM5ZaDWbgo1obHaTQ1kGwhJG++8pUONg2zS9xnH2pzU8uyJ6hB+j4PGX
 1MqSTqHOmRR4oxYHzrG398GEVxIjKP0fRVqwZMLdKEqIdB1HPy2mp9iXuZShti/PjFyY
 zg1UQpEpkEy5lqEu4XzkhaFTH8uLVwRO4o9uco4kum/fI3IXc3ln3x8P6KAG8+NBMkxm
 aBvJj5J91tJlBSHYLO4l1LvQKn29JZGFsLwDihxkT203GN1ZlQqTQLh5/Nq0qb56d/Sx
 uI/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aGHKx42MfDPDBxR4DOfvxOz7/Acf8JGv695v+njpFiw=;
 b=eJ6U2HWh0g7K5ySCkjgp4JQ0u9ktGDXH9KjRYPZL0hU/rkgedMdu6z2Y/ibLJ6llXK
 VJQB7JHLgzi2jSrD3HrTpMgywjLQHx/5GrplJRS+WB+fs0a0oGvDvUcCOcWNWWpussmK
 fgz2Vw9rllDV6iweJWzb1SOVNafB0Bz49mKaHYZ71Cdf08oM1lXHDCb+5zVevl46DxTi
 eP8XzcLql84gp/0fIDPkeZltRARLdxAWTThbTIFAWrNvPYIv7lOo6YTSR9JdBBpiyzL0
 dqOq2cgsXNZs2Q/mdM15MKG9uOBS2vrKtzRjDzgzPOJOqMY7Sgf6ZqvNE3KWKfiD4Fy9
 RVUA==
X-Gm-Message-State: AOAM532WFXvVd5kmfkSQyJdlwRhsvcMRuLy1UlSwX+dp5yB+DVYSxJwD
 gXqqL3mzAt6gREqBMqm9R9svSYvnfRQ=
X-Google-Smtp-Source: ABdhPJxkb6RUPIBzwYQiSBrp+AitBo6hp1cBKHpnuOhqRgnsIEu24oMo56Vx5VfhUm4ap09nC3WDZg==
X-Received: by 2002:a19:be16:: with SMTP id o22mr15087043lff.109.1608228479360; 
 Thu, 17 Dec 2020 10:07:59 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:58 -0800 (PST)
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
Subject: [PATCH v2 34/48] gpu: host1x: Support power management
Date: Thu, 17 Dec 2020 21:06:24 +0300
Message-Id: <20201217180638.22748-35-digetx@gmail.com>
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

Add suspend/resume and generic power domain support to the Host1x driver.
This is required for enabling system-wide DVFS and supporting dynamic
power management using a generic power domain.

Tested-by: Peter Geis <pgwipeout@gmail.com>
Tested-by: Nicolas Chauvet <kwizart@gmail.com>
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/gpu/host1x/dev.c | 102 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 91 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/host1x/dev.c b/drivers/gpu/host1x/dev.c
index d0ebb70e2fdd..c1525cffe7b1 100644
--- a/drivers/gpu/host1x/dev.c
+++ b/drivers/gpu/host1x/dev.c
@@ -12,6 +12,7 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of.h>
+#include <linux/pm_runtime.h>
 #include <linux/slab.h>
 
 #define CREATE_TRACE_POINTS
@@ -417,7 +418,7 @@ static int host1x_probe(struct platform_device *pdev)
 		return err;
 	}
 
-	host->rst = devm_reset_control_get(&pdev->dev, "host1x");
+	host->rst = devm_reset_control_get_exclusive_released(&pdev->dev, "host1x");
 	if (IS_ERR(host->rst)) {
 		err = PTR_ERR(host->rst);
 		dev_err(&pdev->dev, "failed to get reset: %d\n", err);
@@ -437,16 +438,15 @@ static int host1x_probe(struct platform_device *pdev)
 		goto iommu_exit;
 	}
 
-	err = clk_prepare_enable(host->clk);
-	if (err < 0) {
-		dev_err(&pdev->dev, "failed to enable clock\n");
-		goto free_channels;
-	}
+	pm_runtime_enable(&pdev->dev);
+	err = pm_runtime_get_sync(&pdev->dev);
+	if (err < 0)
+		goto rpm_disable;
 
 	err = reset_control_deassert(host->rst);
 	if (err < 0) {
 		dev_err(&pdev->dev, "failed to deassert reset: %d\n", err);
-		goto unprepare_disable;
+		goto rpm_disable;
 	}
 
 	err = host1x_syncpt_init(host);
@@ -485,9 +485,10 @@ static int host1x_probe(struct platform_device *pdev)
 	host1x_syncpt_deinit(host);
 reset_assert:
 	reset_control_assert(host->rst);
-unprepare_disable:
-	clk_disable_unprepare(host->clk);
-free_channels:
+rpm_disable:
+	pm_runtime_put(&pdev->dev);
+	pm_runtime_disable(&pdev->dev);
+
 	host1x_channel_list_free(&host->channel_list);
 iommu_exit:
 	host1x_iommu_exit(host);
@@ -504,16 +505,95 @@ static int host1x_remove(struct platform_device *pdev)
 	host1x_intr_deinit(host);
 	host1x_syncpt_deinit(host);
 	reset_control_assert(host->rst);
-	clk_disable_unprepare(host->clk);
+	pm_runtime_put(&pdev->dev);
+	pm_runtime_disable(&pdev->dev);
 	host1x_iommu_exit(host);
 
 	return 0;
 }
 
+static int __maybe_unused host1x_runtime_suspend(struct device *dev)
+{
+	struct host1x *host = dev_get_drvdata(dev);
+
+	clk_disable_unprepare(host->clk);
+	reset_control_release(host->rst);
+
+	return 0;
+}
+
+static int __maybe_unused host1x_runtime_resume(struct device *dev)
+{
+	struct host1x *host = dev_get_drvdata(dev);
+	int err;
+
+	err = reset_control_acquire(host->rst);
+	if (err) {
+		dev_err(dev, "failed to acquire reset: %d\n", err);
+		return err;
+	}
+
+	err = clk_prepare_enable(host->clk);
+	if (err) {
+		dev_err(dev, "failed to enable clock: %d\n", err);
+		goto release_reset;
+	}
+
+	return 0;
+
+release_reset:
+	reset_control_release(host->rst);
+
+	return err;
+}
+
+static __maybe_unused int host1x_suspend(struct device *dev)
+{
+	struct host1x *host = dev_get_drvdata(dev);
+	int err;
+
+	host1x_syncpt_save(host);
+
+	err = pm_runtime_force_suspend(dev);
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+
+static __maybe_unused int host1x_resume(struct device *dev)
+{
+	struct host1x *host = dev_get_drvdata(dev);
+	struct host1x_channel *channel;
+	unsigned int index;
+	int err;
+
+	err = pm_runtime_force_resume(dev);
+	if (err < 0)
+		return err;
+
+	host1x_syncpt_restore(host);
+
+	for_each_set_bit(index, host->channel_list.allocated_channels,
+			 host->info->nb_channels) {
+		channel = &host->channel_list.channels[index];
+		host1x_hw_channel_init(host, channel, channel->id);
+	}
+
+	return 0;
+}
+
+static const struct dev_pm_ops host1x_pm = {
+	SET_RUNTIME_PM_OPS(host1x_runtime_suspend, host1x_runtime_resume,
+			   NULL)
+	SET_SYSTEM_SLEEP_PM_OPS(host1x_suspend, host1x_resume)
+};
+
 static struct platform_driver tegra_host1x_driver = {
 	.driver = {
 		.name = "tegra-host1x",
 		.of_match_table = host1x_of_match,
+		.pm = &host1x_pm,
 	},
 	.probe = host1x_probe,
 	.remove = host1x_remove,
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9C02A7202
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B638854FC;
	Wed,  4 Nov 2020 23:45:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h8udIIPapF1O; Wed,  4 Nov 2020 23:45:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E4088557E;
	Wed,  4 Nov 2020 23:45:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B8BAE1BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B407685552
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GgVvAQRE-y1r for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CD00885551
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:29 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id b1so135985lfp.11
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nN6bYFk4IWxOu+d/QHUvb5Vdquail4zOQtI7YW8kabg=;
 b=tD610N2LtXl0A/xShg01YubajXnOhuEWWAyuR72lZg9Ds8ZFIwJxpGdVeQHfBVQ2Kj
 p7wqBVm35lvdMWEqtwdl7LKaMYY69/bYvlQJKRefXH6Txqv9VIfoN/eru3nXimT1cgGc
 aJLWnRCsDLjb5LFHHLiih35bvzicP3icoOeJ6QZhOPvdTEjIfcCdnZjfF14+CP7kgYCu
 mIvGrWIR2h24M0xfzKZsgmDh7c9ZqLVsanS95avHsCTbAVBBRwjfXy0mSFI9wh7rBO71
 xPprbWClr+RHceHpdVIlzCaoTTsHvolCzXoD+AkYq9Wp8c550XEbwgaBCALWsA+KfaSG
 tTcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nN6bYFk4IWxOu+d/QHUvb5Vdquail4zOQtI7YW8kabg=;
 b=EhFQtVLR5Nusx66zjozTfabZS/Bb9vKiszde65lNtND8peDbJ4Cui7J6kelLRkDq4i
 EeAiyZ498iw0Sl/nznh3IKgYGYR9e5lTPwkfLZsShgAImQLS5Q8kHuOgXO6VqB3x3BQj
 6N893/fyxQVoDFWNABsMikbZZ4JUc4GQllrUT+cVSsftWTC6ce7vyiPlegkNDVo37sfW
 4eU//EUedWskBo0CFAtk0IYeLJK/dnT7Jg+NyJQwPzFopkCwDGOychbxqwwoc2UBKSTu
 3iawXr8IERGrDqp0sQJQVq2GNyOebJhgKer/+MiII/wTAVdN1Aua9tGxUdLcJdZy9Ktu
 m+cg==
X-Gm-Message-State: AOAM533ImaDyxCTFqKB50Li/Y7f3ZQikejzW+XTGQmEPJ4GnaeApY2+R
 ipGuRHi6reyrtAHVMsLpk+I=
X-Google-Smtp-Source: ABdhPJw14mWy3hZ5zhhgkxRLWuktqe/gXtUzbFW7RYvVSWvKRy6DLpTPn1wG6PiegG0MPpIECG+lPA==
X-Received: by 2002:a19:e305:: with SMTP id a5mr36969lfh.549.1604533528154;
 Wed, 04 Nov 2020 15:45:28 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:27 -0800 (PST)
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
Subject: [PATCH v1 23/30] memory: tegra30-emc: Support Tegra SoC device state
 syncing
Date: Thu,  5 Nov 2020 02:44:20 +0300
Message-Id: <20201104234427.26477-24-digetx@gmail.com>
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

Sync driver state using the Tegra SoC device state syncing API, telling
to regulators voltage coupler that EMC state is ready for DVFS. This is
required for enabling system-wide DVFS on Tegra30.

Tested-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/memory/tegra/tegra30-emc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/memory/tegra/tegra30-emc.c b/drivers/memory/tegra/tegra30-emc.c
index 6b20ce9f16af..dd7474065346 100644
--- a/drivers/memory/tegra/tegra30-emc.c
+++ b/drivers/memory/tegra/tegra30-emc.c
@@ -1666,6 +1666,12 @@ static int tegra_emc_resume(struct device *dev)
 	return 0;
 }
 
+static void tegra_emc_sync_state(struct device *dev)
+{
+	tegra_soc_device_sync_state(dev);
+	icc_sync_state(dev);
+}
+
 static const struct dev_pm_ops tegra_emc_pm_ops = {
 	.suspend = tegra_emc_suspend,
 	.resume = tegra_emc_resume,
@@ -1684,7 +1690,7 @@ static struct platform_driver tegra_emc_driver = {
 		.of_match_table = tegra_emc_of_match,
 		.pm = &tegra_emc_pm_ops,
 		.suppress_bind_attrs = true,
-		.sync_state = icc_sync_state,
+		.sync_state = tegra_emc_sync_state,
 	},
 };
 module_platform_driver(tegra_emc_driver);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

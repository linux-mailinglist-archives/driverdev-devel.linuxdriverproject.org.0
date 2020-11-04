Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1882A71F9
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 666AF203E4;
	Wed,  4 Nov 2020 23:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EU+8Y-t42l6K; Wed,  4 Nov 2020 23:45:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CF2AC203B4;
	Wed,  4 Nov 2020 23:45:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 573541BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 51FE2857D0
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iFZFxeIL4T-y for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 58FA2856CB
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:10 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id s30so177924lfc.4
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XFGG01cA595FrKS40PcuSC81ebTEtiTSpfS/ywMG7UI=;
 b=qCfnEwxe9a5udeJa2CYrqVZ5I2a9hmgiqZ2QaqEHjaKRgf2VXGvsewyVcIb28yZDc0
 NJtW1jYdxYxihEwtJ1JhHLt9GCrLEFLun5Srgpe/bZELevxRnAmujiK304OirJi3UZ0h
 OezhThzvVvw8gpQg9av4VU+hB8LuL1lQEpkLkPSBAJ44qZcPhCH6IpgDnyi1uDWq2TP8
 RYuqmPWz/JIvDnAxVgHW78wUUMZny2+47MlJ+gq2nxNa+CFz2O475KuV1N/UI1JeRY6C
 ieR4nU66wpG5FBdE1CzoaJ8S3Cn+p4XlpoQHf4l3Z7bAPbdtXXraV7xxJFeb1rAmopbi
 NZug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XFGG01cA595FrKS40PcuSC81ebTEtiTSpfS/ywMG7UI=;
 b=PAva7zu6zC7R9sh8ObnnTO3hgjngYLArum+UyYtpYDN72rgNcCqnPhbH7cLYB6HMTl
 um8Pb1/GOZi7bjeHdgTvHGwoVMiKnNNaWImUSgemkUePqGrbEHaW5BOFs91tNFNkr+Hl
 02verC5r7ZfPy7ZdPpyWc9mFI6GQLy6KYKshB2Xk2hmi9clLl38F0LbfX5byC41Az/G4
 q7GeY9IulKBrXvWBdHoW4kWO62AW/9u+FNqPBhSqlgFaW/QzPdW6X+2OpRBAIcBmKbYA
 USPB4gGmZ1hSqLfcvLtHDlu3BVLQ4uNxkPlgVQ8QZnl0TSxA5MmaLo+qgCmr6tTN3ggl
 ec/Q==
X-Gm-Message-State: AOAM530XXmj+MxhGUu8+Qf/6zq32bxvt0eiEt3mQpaLi8vayAjIdYTRk
 N2lQYawx6/nHmk59M7230Xs=
X-Google-Smtp-Source: ABdhPJxQAtS5/q5gEZTmOVMhIUSEXN1Ufp90D/WwdUezL1q7/08kLqzAjVTVWhHK+ZA/8JqkDwT3GQ==
X-Received: by 2002:a19:c55:: with SMTP id 82mr55638lfm.84.1604533508654;
 Wed, 04 Nov 2020 15:45:08 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:08 -0800 (PST)
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
Subject: [PATCH v1 09/30] soc/tegra: regulators: Fix lockup when
 voltage-spread is out of range
Date: Thu,  5 Nov 2020 02:44:06 +0300
Message-Id: <20201104234427.26477-10-digetx@gmail.com>
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

Fix voltage coupler lockup which happens when voltage-spread is out
of range due to a bug in the code. The max-spread requirement shall be
accounted when CPU regulator doesn't have consumers. This problem is
observed on Tegra30 Ouya game console once system-wide DVFS is enabled
in a device-tree.

Fixes: 783807436f36 ("soc/tegra: regulators: Add regulators coupler for Tegra30")
Cc: stable@vger.kernel.org
Tested-by: Peter Geis <pgwipeout@gmail.com>
Reported-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/soc/tegra/regulators-tegra30.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/tegra/regulators-tegra30.c b/drivers/soc/tegra/regulators-tegra30.c
index f7a5260edffe..fcf824f73131 100644
--- a/drivers/soc/tegra/regulators-tegra30.c
+++ b/drivers/soc/tegra/regulators-tegra30.c
@@ -198,7 +198,7 @@ static int tegra30_voltage_update(struct tegra_regulator_coupler *tegra,
 	 * survive the voltage drop if it's running on a higher frequency.
 	 */
 	if (!cpu_min_uV_consumers)
-		cpu_min_uV = cpu_uV;
+		cpu_min_uV = max(cpu_uV, cpu_min_uV);
 
 	/*
 	 * Bootloader shall set up voltages correctly, but if it
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

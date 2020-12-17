Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A15A2DD6E6
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB3BB8763F;
	Thu, 17 Dec 2020 18:08:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XUl89wCqlC3G; Thu, 17 Dec 2020 18:08:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D0D18762A;
	Thu, 17 Dec 2020 18:08:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 47D801BF9B6
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 44C0F87639
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Wzs3r-hojsP for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5D3F687628
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:56 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id u18so59833182lfd.9
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G4bkjkogJjxhucwk91y1cMW03U1PPlta2j9gVHq9Ll8=;
 b=rCQoU2/mmvaocNvlxnid7FO29LSc024mSugBl0tdXdcytFbXH2gOlnpwvt8N+30PAg
 yb7ttQI7FzhzKZR924B0d/3R9LNPoRgpBoGk0IOcVJPsgsWCQsxmEeE2TiSNUf6U2zEk
 UAcyUD0vHfvlRRaoHCc/jZeM8FZ6u+jxT5WvXS4q07C3L49UI1+T4YyeAM47/km2IUMY
 +h1CezyjEzhVg+SazrlVF4o2uUgbBVRUzc6A6H4zBIs3ZtIXUR4lCvTjP1X8Ma8ljpX9
 s1nx5sADEfu0hG1dR8Px9QD2KFwkR1jqfRP1a8gQc0nLBI4Jl41CHBYNpt0S5HTVpgKO
 Zxqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G4bkjkogJjxhucwk91y1cMW03U1PPlta2j9gVHq9Ll8=;
 b=jA+4TuPGcwzZPeAYPCzNAEzr7AviVzyTdmNX44sui0eHZFd60lLVOq3QJBIwCSD2Nr
 lRKkGKUXTOvU1+yfEGC5olI+4YlfE+n4+YVWiKwJqxuPHIyN0jgWkEWSE2VCXc4mbSKa
 TZQUodBwqKO6ONQGiTgNEPUZ1+FwLZkVSJSFTC5omiEsU3GGCHgKc5BpdqWxBe5f5T8G
 7LNX2Cnh52lt/1BiTPSX5c4vqCDUuJdimu4ANTsGjMxzPrve64SCOIBazr8tlHbGMsdW
 ATwi8/4MQ3bVjR78l75ipWh3HDJ7ZmBgQDcrPBdtdr7iphNl2L0DjgSU1WUMZg1wfJ4G
 qkrg==
X-Gm-Message-State: AOAM531Cv/MfmG3hdqUmD+7kU5lfczMXf2kzWnELb7nxR0QhvErYLB3D
 7Db1ajwG4qGFtPDVqRuzNBE=
X-Google-Smtp-Source: ABdhPJyqYsSi5e5FbU0bmUx3znLJH35GGikhngE/ppL8K7VwQ0KK0y3SqjiWzxI9i0uAFK/MRB0qlg==
X-Received: by 2002:a2e:9b4d:: with SMTP id o13mr200509ljj.163.1608228474656; 
 Thu, 17 Dec 2020 10:07:54 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:54 -0800 (PST)
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
Subject: [PATCH v2 30/48] soc/tegra: regulators: Fix locking up when
 voltage-spread is out of range
Date: Thu, 17 Dec 2020 21:06:20 +0300
Message-Id: <20201217180638.22748-31-digetx@gmail.com>
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
index 7f21f31de09d..0e776b20f625 100644
--- a/drivers/soc/tegra/regulators-tegra30.c
+++ b/drivers/soc/tegra/regulators-tegra30.c
@@ -178,7 +178,7 @@ static int tegra30_voltage_update(struct tegra_regulator_coupler *tegra,
 	 * survive the voltage drop if it's running on a higher frequency.
 	 */
 	if (!cpu_min_uV_consumers)
-		cpu_min_uV = cpu_uV;
+		cpu_min_uV = max(cpu_uV, cpu_min_uV);
 
 	/*
 	 * Bootloader shall set up voltages correctly, but if it
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

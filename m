Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7694A2DD6DB
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F76887663;
	Thu, 17 Dec 2020 18:08:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hSUloNTb9Mw9; Thu, 17 Dec 2020 18:08:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AF2A87648;
	Thu, 17 Dec 2020 18:08:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EBF3A1BF9B6
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E24488793E
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id idYu3DvB1mU5 for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8BC8E878D1
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:50 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id m12so59850553lfo.7
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6bihTvUOG89oM9Y/xPaskNMPx8lkVh3OwDTHQ+rUz0Q=;
 b=YgQsVYInkk2m03hroKiBAdfDFB0PzOxzZdQWbW80OhGLnIy3SbqjhUVrhoSZeXa/0W
 QptR34QOdICKwEMJUmDxpjneCiq75Y7dTMq7ocCew51i7k6af4lsmH5StFCUi9OTDhVb
 fkffM7TvBqgMrqtPjxPVzHIrvwZiJjnMgj7xb07gyClRUZltKNMvyRF6okcKk1aStAZd
 mp728vEPg8JQCyoih6cV4ja0h8WnBc1s6FIBhCFwdaw3v0fMvuWj2P6nkduHjFPSOjQS
 keUpNhEJqrXcP7lE7tFFikb8lcCmKC63UC7B+C+1vO13XTwgbK+khXS51cmtHSOxZQKa
 Bzbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6bihTvUOG89oM9Y/xPaskNMPx8lkVh3OwDTHQ+rUz0Q=;
 b=rxGMdGN9rh89QmHexk5fpNKoIQMoaKp1a0rWMNeDJuBeII9iQMqB5kSyTJBfrgbDWk
 V0Jtwsp01KZY2+eXQ+c2fxV1LZReMkaQ/IC07XzPPzM9hOnWzpuQz6DLcDE1Zn/tszDc
 vq/MSzqospFnRrNiXPwZqu1X6yDUj1fhdng87rWq6qNBQJqKE44DwSbEDYy9IccyFZrJ
 Z/iIRH3xw0Sy3y8PN7KhGURDetxS6MPCVcNL3tlb6SAZq1RfRfH6JQLH4p389rts4BwD
 KgeQ4lDzIYaF9VQEd6L/EwQAxppamgV+4DWcRTIZocK4OQj+yTJ65LlFV8auLOx3Ut7w
 IItA==
X-Gm-Message-State: AOAM530OIiN2p0dv1GcKCJUbyx3QXRDLow0/ncBmhi3TWLYohTKKvrWo
 j2gEMCsEvi4hGSKR0yq6N30=
X-Google-Smtp-Source: ABdhPJzce1teuxCCTBwGEaaplQ9RyWEJB7D0DJvqSLoeEK+KGIZsCfWwh4vgsDqV4p/wJQUKuj+Jzg==
X-Received: by 2002:ac2:5547:: with SMTP id l7mr7724553lfk.313.1608228468872; 
 Thu, 17 Dec 2020 10:07:48 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:48 -0800 (PST)
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
Subject: [PATCH v2 25/48] soc/tegra: pmc: Print out domain name when reset
 fails to acquire
Date: Thu, 17 Dec 2020 21:06:15 +0300
Message-Id: <20201217180638.22748-26-digetx@gmail.com>
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

Print out domain name when reset fails to acquire for debugging purposes
and to make formatting of GENPD errors consistent in the driver.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/soc/tegra/pmc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
index 8edcd5b319f6..4f96dc7745c4 100644
--- a/drivers/soc/tegra/pmc.c
+++ b/drivers/soc/tegra/pmc.c
@@ -821,7 +821,8 @@ static int tegra_genpd_power_off(struct generic_pm_domain *domain)
 
 	err = reset_control_acquire(pg->reset);
 	if (err < 0) {
-		pr_err("failed to acquire resets: %d\n", err);
+		dev_err(dev, "failed to acquire resets for PM domain %s: %d\n",
+			pg->genpd.name, err);
 		return err;
 	}
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

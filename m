Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4852DD6E9
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 596D38794A;
	Thu, 17 Dec 2020 18:08:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BM9xcpzG+8ji; Thu, 17 Dec 2020 18:08:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9404687958;
	Thu, 17 Dec 2020 18:08:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38AB91BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 32B0A878D1
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7-rksoxbZ7hV for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 233D587955
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:55 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id a12so59838802lfl.6
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Aa+hChpvs0JDUl0QCouhA8Ook0AiIGpyBFoUGyXOUQI=;
 b=RhneqMMMFpT/rGzIIf7uEiGIehQLF+olyu6ZCNFX+oOHPVy1WdgNHVxT9bn1QlEeo8
 4n1SHThx55TK/bXvX0IGfRJ7GoL37rHD2WNc4lkOGHcBMZgFaWTsQ9+uAXZOE3rZqdlW
 hfAUUX5oiGE3CHjG6mziJsZz3/TzHP2qGv3tDSd1VA2XvrZn95KaGn/ZcVxL0pHAGh2t
 BFZLKfM9Wp2fxoMv38KrZ/YCEFInQqRvmkF2W5ssdGnXmVqNYh1slRuTRPDfy7h9LqfK
 9Ij69AfbaRxeblxSU7zdqyMpXBplESP2BswsvcjWDhIg3J1BrpiApycEtaMy4FtWjgRf
 UY9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Aa+hChpvs0JDUl0QCouhA8Ook0AiIGpyBFoUGyXOUQI=;
 b=AZP11aMwJc+xmN1YWY2Lt7lDXgvRQFveuv5fEQM6Uvz/q3uFwFYM6Tp2bvvownJwqW
 qQbsLid41VEBzJWldySf9fHojz25gr/1roxxSZ40p55QMg6Jlfu6lm44i5A6mIl6ors7
 4fg2M8iwrIv3rgFnGeu/Z++jv8c5eIMNBUBKNSBTkulGU3R6ILSDUDypgQtrleI42O+k
 mZDRCHLl2OoA+oNDkFzSGVbg0VQSsXhbFxzFXfB7KDPZ6ub40GG7ZEhFPsoEZAfznuJW
 9qOivYA6GN2+CNbgRuw/96yDT0zqvqoR8AYVIF+DjK4BIcrHk2GTMvVkwlj8ZV9a0svU
 2KcA==
X-Gm-Message-State: AOAM5330/LTB5dVNoyCwiHuzsDRq3pKqhfuUKFzoqF3myGQ/drCMw1Yt
 MAcl88CyPabQRW2JdgbA19w=
X-Google-Smtp-Source: ABdhPJxL85GcfJiXMkymH7isdZq+CnfDmDZN1MReJJCcpfCArlmNTx0/MjgW8Yls8T8+SwJfWzuMqQ==
X-Received: by 2002:a19:5e5b:: with SMTP id z27mr16037203lfi.143.1608228473454; 
 Thu, 17 Dec 2020 10:07:53 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:52 -0800 (PST)
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
Subject: [PATCH v2 29/48] soc/tegra: pmc: Link domains to the parent Core
 domain
Date: Thu, 17 Dec 2020 21:06:19 +0300
Message-Id: <20201217180638.22748-30-digetx@gmail.com>
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

The Core domain is a parent of PMC power domains, hence PMC domains
should be set up as a sub-domains of the parent (Core) domain if
"power-domains" phandle presents in a device-tree node of PMC domain.

This allows to propagate GENPD performance changes to the parent Core
domain if performance change is applied to PMC domain.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/soc/tegra/pmc.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
index 4f96dc7745c4..1a659d1c06d7 100644
--- a/drivers/soc/tegra/pmc.c
+++ b/drivers/soc/tegra/pmc.c
@@ -1236,6 +1236,7 @@ static int tegra_powergate_add(struct tegra_pmc *pmc, struct device_node *np)
 static int tegra_powergate_init(struct tegra_pmc *pmc,
 				struct device_node *parent)
 {
+	struct of_phandle_args child_args, parent_args;
 	struct device_node *np, *child;
 	int err = 0;
 
@@ -1249,6 +1250,24 @@ static int tegra_powergate_init(struct tegra_pmc *pmc,
 			of_node_put(child);
 			break;
 		}
+
+		if (of_parse_phandle_with_args(child, "power-domains",
+					       "#power-domain-cells",
+					       0, &parent_args))
+			continue;
+
+		child_args.np = child;
+		child_args.args_count = 0;
+
+		err = of_genpd_add_subdomain(&parent_args, &child_args);
+		of_node_put(parent_args.np);
+		if (err) {
+			if (err == -ENOENT)
+				err = -EPROBE_DEFER;
+
+			of_node_put(child);
+			break;
+		}
 	}
 
 	of_node_put(np);
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

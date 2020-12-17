Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 200362DD6D1
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:07:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D108487664;
	Thu, 17 Dec 2020 18:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gSJS_1xDo8QD; Thu, 17 Dec 2020 18:07:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 82B1F8762F;
	Thu, 17 Dec 2020 18:07:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E7FE1BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7A1A987637
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5xmYqnWXq155 for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CC6138762D
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:37 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id a12so59836429lfl.6
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pyhIAorEBtf9lvlliXp3a/E9KosdNviFUVTLwzCMWu4=;
 b=KBFsuU+VjlIdBBBqzZxU8fjyUNxV2GYS1K8Z7YQLuOAUMr50erguvS8eg5lipX2IzF
 wUJXnioL5pZGD/Km96I24RKaP0oAWM4mVWYg5Lwi1t+/D5N5Jk9k/aWAJCSWNgl+6Ag9
 Ul+TTXmwIB4/L6tLNavF1vvHuiaDPvO1IYmGAGIQ6IjffbXmmXs+G+t+xYVRe1XCiLUT
 TTtBHS6GvMaXs7btcbzdBpOt1vRgkH9ELTMrtOzYa5YunqIgyj0rI6fTA1UyrDJBGKzG
 NsTRPdNroHWqtup4JrKq4hCihZ/I8rG1hzY9GLcahCmccGNQRN37v+O1tg2GPp/B1ZlZ
 I1Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pyhIAorEBtf9lvlliXp3a/E9KosdNviFUVTLwzCMWu4=;
 b=n8OK1XQDpjjrdBNi09jUHb9MpMl4A5NmAz6XqsvWIeju85wLSDfS4Em5MJ3dD3cG5R
 8D7XH4WKpafcPqlYD7WM7nbmhRE2zG/+dHaFBl04EQrR3Opic7D3tCoEAWcJtqE0wFpE
 cxPVt5M2iweFrV/gdqPHigseF9EToZRKVFA0lCPL4AdP3mZnQyLCNn760ZS7XIvf2zEx
 +mHElhwBYfNA7uDeMTlea+ViOPrgMbwI/ObxzNGnX37D9m1gumP9Ztwis0j8stdMNnrE
 cGBNKKEmAQZeDnorEqP0sUvah1PZvZAsHKhsIdYtJFHP/Hg2HXdwWw/w4JqRKh7tgUUK
 NGCg==
X-Gm-Message-State: AOAM53016oISz5e0uMxy+kHpwebIoUHN4a4QbE4BjSluoNhf8PUun62c
 pdYGf54leH+MYNoK1+b8snM=
X-Google-Smtp-Source: ABdhPJyLU/4FC56tDazvyGbryuQ04uANev9KjoowVlnl0s+BVYhQ5t9V+9Mz7a+xus7YmajAeqhwKw==
X-Received: by 2002:ac2:54b9:: with SMTP id w25mr1838lfk.8.1608228456153;
 Thu, 17 Dec 2020 10:07:36 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:35 -0800 (PST)
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
Subject: [PATCH v2 14/48] opp: Filter out OPPs based on availability of a
 required-OPP
Date: Thu, 17 Dec 2020 21:06:04 +0300
Message-Id: <20201217180638.22748-15-digetx@gmail.com>
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

A required OPP may not be available, and thus, all OPPs which are using
this required OPP should be unavailable too.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/opp/core.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index d9feb7639598..3d02fe33630b 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -1588,7 +1588,7 @@ int _opp_add(struct device *dev, struct dev_pm_opp *new_opp,
 	     struct opp_table *opp_table, bool rate_not_available)
 {
 	struct list_head *head;
-	int ret;
+	int i, ret;
 
 	mutex_lock(&opp_table->lock);
 	head = &opp_table->opp_list;
@@ -1615,6 +1615,15 @@ int _opp_add(struct device *dev, struct dev_pm_opp *new_opp,
 			 __func__, new_opp->rate);
 	}
 
+	for (i = 0; i < opp_table->required_opp_count && new_opp->available; i++) {
+		if (new_opp->required_opps[i]->available)
+			continue;
+
+		new_opp->available = false;
+		dev_warn(dev, "%s: OPP not supported by required OPP %pOF (%lu)\n",
+			 __func__, new_opp->required_opps[i]->np, new_opp->rate);
+	}
+
 	return 0;
 }
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1642DD706
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 354572E2B8;
	Thu, 17 Dec 2020 18:08:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1HXMMaD+sb5F; Thu, 17 Dec 2020 18:08:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E06442E2D0;
	Thu, 17 Dec 2020 18:07:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 769DF1BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 735F38763F
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ruPKxPaw26ln for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BD5718762D
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:42 +0000 (UTC)
Received: by mail-lf1-f43.google.com with SMTP id o13so36632887lfr.3
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FMQPVkzhrHffuF4mwShq8rfapz+oLLOiBA35EvDkN1g=;
 b=T6C/xdTyr28sjOcJqBGBh+2bCLRgFaTIcBewPv/x+1L1QOyKReuP1MfG2tkzSw/dwF
 83LYY12BDsUDtf5UsTlPOdvdoSknRLL4Ub7pCG7DrdRyrNQWwS4h2r1LZTkODsd2kCpm
 u/tYnt96D3DAW0wWnLMhHeI2ukJZsL5LRAR7Z0BKq5dc256IqLpTzp3LPwjXw+Ia/TAQ
 LRe2WyKapRKlf2YaXsf6Z3H30F5rC5i6iHfKfaF7tBIKlrsio1o5JMMvvWxaNqwdeWSd
 tDMz+vhqPBWL72wWDyYqY3O2tJDobLVBzsYu5+PxlLFQWd3q52ONqjCl1uZ2LI6KEKTH
 ixzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FMQPVkzhrHffuF4mwShq8rfapz+oLLOiBA35EvDkN1g=;
 b=CUz0/GGPE5vEgiKLxPfEVMbxw4ExyuZD8mpw/Ah0Q0PFIuvSiIUsj5UERN9FwCxMWD
 JauwwoJ7ib1nVHHPjpqwN/v30YDwPkDqYFNOe9s52C/D7wDIS2+NwZHW1XkIeLRzGVfX
 ZnjL1o6euqashE1lpskFxymjlDF6VrCaDu3RKTZIBMUefKtOsrjs+Ussos84ZP/VoyqN
 xFP1lkxj0PboSZd2J//m7m3nCG4CfARJr3+GQfFj+FWE9mDKssMAJq1RGCIs5m4r91eV
 wN/4kNCD7DVXsF0sWqnjRA541F8qxgW3RkptRfqzcdYDdhNy1/LHc0lnRUx4WSQbMw+y
 Sjnw==
X-Gm-Message-State: AOAM532Mh8YvfyAWWGvihZ9tr4hE1vezbKlp/g8JCxnEhOQUBmvGSnua
 Zw/KV7LWODeuRreTvDa6am4=
X-Google-Smtp-Source: ABdhPJyWgcRAhgB2jbviKjj3cRVPK5uBYXP0sKAFflQv0Ic12rG9QDo0/dmYvrRqWl5AtvkglHHK6w==
X-Received: by 2002:a2e:58f:: with SMTP id 137mr196424ljf.469.1608228459627;
 Thu, 17 Dec 2020 10:07:39 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:39 -0800 (PST)
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
Subject: [PATCH v2 17/48] opp: Correct debug message in _opp_add_static_v2()
Date: Thu, 17 Dec 2020 21:06:07 +0300
Message-Id: <20201217180638.22748-18-digetx@gmail.com>
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

The debug message always prints rate=0 instead of a proper value, fix it.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/opp/of.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/opp/of.c b/drivers/opp/of.c
index 3b5a4c8bc62f..1f2038a4420b 100644
--- a/drivers/opp/of.c
+++ b/drivers/opp/of.c
@@ -755,7 +755,6 @@ static struct dev_pm_opp *_opp_add_static_v2(struct opp_table *opp_table,
 		struct device *dev, struct device_node *np)
 {
 	struct dev_pm_opp *new_opp;
-	u64 rate = 0;
 	u32 val;
 	int ret;
 	bool rate_not_available = false;
@@ -772,7 +771,8 @@ static struct dev_pm_opp *_opp_add_static_v2(struct opp_table *opp_table,
 
 	/* Check if the OPP supports hardware's hierarchy of versions or not */
 	if (!_opp_is_supported(dev, opp_table, np)) {
-		dev_dbg(dev, "OPP not supported by hardware: %llu\n", rate);
+		dev_dbg(dev, "OPP not supported by hardware: %lu\n",
+			new_opp->rate);
 		goto free_opp;
 	}
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

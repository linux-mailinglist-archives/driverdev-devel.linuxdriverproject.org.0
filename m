Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 763072DD6FF
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 03EB62E308;
	Thu, 17 Dec 2020 18:08:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FAbN-ibFIwPf; Thu, 17 Dec 2020 18:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7BF5D2E2CD;
	Thu, 17 Dec 2020 18:07:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF77D1BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EC047876BC
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 55KZ5rlmuX65 for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2887287A9F
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:39 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id l11so59859030lfg.0
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NlDMl6XjPevCn3rRvWT/f1VR4LdbuUD4/E02zVLuVCI=;
 b=RTWkhu3VqMqpDCA4Qo24BTJf+2HuJmLcparbZ+4myGwK1DNAzIGrgipPwwDKIIjrKS
 ePerczxp+6zHrPN6Dqn9OXFrwkqgqVZKTxDtaFeEELTEv5tlBstMf0P3QwYRzM20vWTM
 BliaLVxvI1nhJVyskHZ3FMESXBjgr+oWdWqVqRNm2rlei11rc3wpmZbdQ4odalL2zKWD
 GwaPJoY/LSJ0dqPxg3Bq/HrsjDS7nXr5Uxa2HsKYjBt0fe7/MWnpeLhAWQ//k18Hkb4W
 Qgu8Q7C+KU3jCZyrFKxqARUQD6npMHl2BNPx+eMXU587ADHJ5fD/w80+TTFH/cNU5wLn
 gbKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NlDMl6XjPevCn3rRvWT/f1VR4LdbuUD4/E02zVLuVCI=;
 b=bQaM0QfjgTXBVfGfDM8RoeaiFZMIKEEqPq1tv5D6sFMgd52CJOMlA20vsgWoxZyw0n
 mTOYV81DgtVUYcdSB+M1DzBMT549G1JuHaSPC5m0W9tMJ/s+1KR75hNupm6jOUrcu+Ej
 j2ANK5quRJLr51qAGKv/isq1tOiGxwNYyldnq2awp2NBCiexQBsDYY/EY34H51+glnhu
 aLLzdJtRR1g9CAqVD0IBz+653HkliHhmqeQZVz4Ot2Omu03mtuz7XGCD9oujGY3okpYd
 UIhpO6rQKG698VJCKU+5+oR6ulB3DNqfRDSWvPr+d9NJxoZ8ucnMkTn14rm9lYv1gY5/
 zY5w==
X-Gm-Message-State: AOAM5336j6ZhHFY9THZxcyXHYgf7UTxXTc07eNYpPnNe2zFC2EYVQVX3
 2UG6k+jB0XRswVEFqgRuB00=
X-Google-Smtp-Source: ABdhPJwLHLuEJNjyRdVPWt6WXEB6a0huo4TKPk5vwaRTMIFRcOi8N+JmP0jdXRGsy84KSAUugIUQMQ==
X-Received: by 2002:a05:651c:2dc:: with SMTP id
 f28mr207871ljo.13.1608228457280; 
 Thu, 17 Dec 2020 10:07:37 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:36 -0800 (PST)
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
Subject: [PATCH v2 15/48] opp: Support set_opp() customization without
 requiring to use regulators
Date: Thu, 17 Dec 2020 21:06:05 +0300
Message-Id: <20201217180638.22748-16-digetx@gmail.com>
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

Support set_opp() customization without requiring to use regulators. This
is needed by drivers which want to use dev_pm_opp_set_rate() for changing
rates of a multiple clocks and don't need to touch regulator.

One example is NVIDIA Tegra30/114 SoCs which have two sibling 3D hardware
units which should be use to the same clock rate, meanwhile voltage
scaling is done using a power domain. In this case OPP table doesn't have
a regulator, causing a NULL dereference in _set_opp_custom().

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/opp/core.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 3d02fe33630b..625dae7a5ecb 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -828,17 +828,25 @@ static int _set_opp_custom(const struct opp_table *opp_table,
 			   struct dev_pm_opp_supply *old_supply,
 			   struct dev_pm_opp_supply *new_supply)
 {
-	struct dev_pm_set_opp_data *data;
+	struct dev_pm_set_opp_data *data, tmp_data;
+	unsigned int regulator_count;
 	int size;
 
-	data = opp_table->set_opp_data;
+	if (opp_table->set_opp_data) {
+		data = opp_table->set_opp_data;
+		regulator_count = opp_table->regulator_count;
+	} else {
+		data = &tmp_data;
+		regulator_count = 0;
+	}
+
 	data->regulators = opp_table->regulators;
-	data->regulator_count = opp_table->regulator_count;
+	data->regulator_count = regulator_count;
 	data->clk = opp_table->clk;
 	data->dev = dev;
 
 	data->old_opp.rate = old_freq;
-	size = sizeof(*old_supply) * opp_table->regulator_count;
+	size = sizeof(*old_supply) * regulator_count;
 	if (!old_supply)
 		memset(data->old_opp.supplies, 0, size);
 	else
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC582DD6D9
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91E1C87956;
	Thu, 17 Dec 2020 18:07:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Cd5IPB7rL4M; Thu, 17 Dec 2020 18:07:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D93C387953;
	Thu, 17 Dec 2020 18:07:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B34D1BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8DF9C87949
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9GA7v8nxq9HA for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CC4A387958
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:44 +0000 (UTC)
Received: by mail-lf1-f47.google.com with SMTP id h205so16301739lfd.5
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ic3kTPXawx4sKcxOaKN7fFyaFOYLW2jZWk2kyZRzIN8=;
 b=pDPXQoxWtm8qgegOQQnLPP2iNl8IcQFs8OGUq2CcE/tO41E62bEBO32YvUgCVcHJ+V
 YPtVtozDo2n+wZJ4WQmT4rbG7S/div+wwrks6vq0KVL+VFD7En3oQrxCR9XkycdVzhsW
 S6BmQauT0TOzAZHGgiEusPxXhQOSZMTP5TD6YEKytzyzXfypbZ+5zUfDdkPIIU8s3+Ou
 mqnXy8OLojNQRx7M8z4L+fND+7tQ+nvxgScaL4ixkM3YRwx7uRc1TLy61azneCrZUo4c
 Hlcrvlhj6vwXBTq4+eZfHetTjVFqobaSbAbt7owq2Uhx4ROsy0JCVwjBqThP2hwltppM
 s2mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ic3kTPXawx4sKcxOaKN7fFyaFOYLW2jZWk2kyZRzIN8=;
 b=IBSgLMyH/Q2VQVQbSc9tlt3bqYVpQk5QhdHKMWIKfg4dqPfxKeWK7AlDT/XkkvyNI8
 PPvzxt0qu4hp+FhipE0m9hTUH+rMdRKSHhXVN8gle5e26CSLFoceTr5ccm1QcpqjDo4+
 f2wxIkn1OMyofQ0ioc8YFLcPBWXboFLFKzTanWq4esoCqhwA1nnpKn3bGbVyPilpftvL
 rH+7DmX6OL5aRHQknX3uFG8xjHyAigDmBiBP1/d/eJtnuOu1Cp36FjxtIwYsmwVUyIT8
 5Zh8Q0UwDEKfIdCQ03RxAcT3rxiXAN4MNDdkTn1Kok37EzrTIopM6VntIxI7dLkoJVO/
 V6iw==
X-Gm-Message-State: AOAM532ej2UqB1/iTDU4JGX+gLhiND2KM+Lq6gX+asQws/9DiCqBeoR0
 TIwbKhcPwyCU1BMT3EUdnmQ=
X-Google-Smtp-Source: ABdhPJwellNh5faxAJj9vvQwVQ45t8eRtpsRvTnCcKlBjZrYp1XD+vvrxTLHfCwLKBFNaDRVWiD1zw==
X-Received: by 2002:a2e:a407:: with SMTP id p7mr226531ljn.78.1608228463135;
 Thu, 17 Dec 2020 10:07:43 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:42 -0800 (PST)
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
Subject: [PATCH v2 20/48] PM: domains: Make set_performance_state() callback
 optional
Date: Thu, 17 Dec 2020 21:06:10 +0300
Message-Id: <20201217180638.22748-21-digetx@gmail.com>
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

Make set_performance_state() callback optional in order to remove the
need from power domain drivers to implement a dummy callback. If callback
isn't implemented by a GENPD driver, then the performance state is passed
to the parent domain.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/base/power/domain.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/base/power/domain.c b/drivers/base/power/domain.c
index 9a14eedacb92..a3e1bfc233d4 100644
--- a/drivers/base/power/domain.c
+++ b/drivers/base/power/domain.c
@@ -339,9 +339,11 @@ static int _genpd_set_performance_state(struct generic_pm_domain *genpd,
 			goto err;
 	}
 
-	ret = genpd->set_performance_state(genpd, state);
-	if (ret)
-		goto err;
+	if (genpd->set_performance_state) {
+		ret = genpd->set_performance_state(genpd, state);
+		if (ret)
+			goto err;
+	}
 
 	genpd->performance_state = state;
 	return 0;
@@ -399,9 +401,6 @@ int dev_pm_genpd_set_performance_state(struct device *dev, unsigned int state)
 	if (!genpd)
 		return -ENODEV;
 
-	if (unlikely(!genpd->set_performance_state))
-		return -EINVAL;
-
 	if (WARN_ON(!dev->power.subsys_data ||
 		     !dev->power.subsys_data->domain_data))
 		return -EINVAL;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

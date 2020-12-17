Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 772252DD6EE
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDCB487AB7;
	Thu, 17 Dec 2020 18:08:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8lyawJMdxfI1; Thu, 17 Dec 2020 18:08:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E1D187A9E;
	Thu, 17 Dec 2020 18:08:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CCCF71BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A8B182E2E2
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jdclB8hfNN18 for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by silver.osuosl.org (Postfix) with ESMTPS id 3A1F52E2D4
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:40 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id a9so59800096lfh.2
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vhvv1h1Ziyi3xIAcsdjZjVcJ6AYQzdZqyFUMLjoR+gU=;
 b=mCQHS9XkKqyMibnw8kWGhj0y5I5wUfHzs6EhcQAYTQrcxVGcZQ4sqpiS8Cn8Tx/Vgc
 K8vwNkiSYNNJLkRBebbt09t3sVsBqdUNSNtsPjqMLKXOGXGV4dlGjyEDXXYRM2cC+SVU
 bE7Bn38TobzyFp1dohD8XSvG7rfjlxqF8Sm5uiY7d0VEfNNCo7wJa0PKHjj81i2bPo2J
 WJzx7XbQlxIrFuM2MUM/VGJ6PIZV7KS/8a4B0rV1qmtskhY18YraI8ioH6itChj/t1k5
 +kj1PiLcFY2+E3YsGxSymTnxRSL+MsXiAZJ6U7ldnz2pCqgj8mOKqfeXFPi+Xs7hEWeL
 jjKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vhvv1h1Ziyi3xIAcsdjZjVcJ6AYQzdZqyFUMLjoR+gU=;
 b=Aes2dA8j/pbybJo8jDRuQH3zfVaBHqNVC1/AKWhtquqDx2v22esxuVxI8azOR+Gcef
 4C4yfGEyiPsMSvRNgvO4+FJ6mLgtT22/AFtZFOvhMPeQGlnF4BhEZSh9weQID+iGXNeP
 TjtFUGXFbJ+4iOrSAYabw/9lmEY/CrP4BLO/4p7Xt2wvHr802fkXtAWlq9YxWWfy8sWd
 qes8ftz607gGHYkgHMIhVirBnLYFdDXjR4WDpYpUJJFz+l5yslXuXfi6MtlLR/6Lej/H
 NLBwnN/2VuYHnmAVgoVr/MpMnvkTOTSM5LFnY+Rd/0ED/af2HXrPDdhvXGL9+KaIETC5
 reRA==
X-Gm-Message-State: AOAM531trlj1qxHWewF5Jq42MV8FSjuja/VSaWf/a0fAgwFJU6nazINs
 JsNXibPWTeKXxaxwD4DOiyQ=
X-Google-Smtp-Source: ABdhPJwSqAw1lTij00AzVyWzgJA9yaLaIRHjYRL5G+gORDC0ff9W8dsUk7apucQlnXvHedXq3oMDVQ==
X-Received: by 2002:a2e:8512:: with SMTP id j18mr212691lji.31.1608228458488;
 Thu, 17 Dec 2020 10:07:38 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:38 -0800 (PST)
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
Subject: [PATCH v2 16/48] opp: Handle missing OPP table in
 dev_pm_opp_xlate_performance_state()
Date: Thu, 17 Dec 2020 21:06:06 +0300
Message-Id: <20201217180638.22748-17-digetx@gmail.com>
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

NVIDIA Tegra SoCs have a power domains topology such that child domains
only clamp a power rail, while parent domain controls shared performance
state of the multiple child domains. In this case child's domain doesn't
need to have OPP table. Hence we want to allow children power domains to
pass performance state to the parent domain if child's domain doesn't have
OPP table.

The dev_pm_opp_xlate_performance_state() gets src_table=NULL if a child
power domain doesn't have OPP table and in this case we should pass the
performance state to the parent domain.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/opp/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 625dae7a5ecb..34f7e530d941 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -2255,7 +2255,7 @@ int dev_pm_opp_xlate_performance_state(struct opp_table *src_table,
 	 * and so none of them have the "required-opps" property set. Return the
 	 * pstate of the src_table as it is in such cases.
 	 */
-	if (!src_table->required_opp_count)
+	if (!src_table || !src_table->required_opp_count)
 		return pstate;
 
 	for (i = 0; i < src_table->required_opp_count; i++) {
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

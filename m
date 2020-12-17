Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5482DD70A
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:09:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D2DD87988;
	Thu, 17 Dec 2020 18:09:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rHBjBBg1GF7s; Thu, 17 Dec 2020 18:09:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8EE0987732;
	Thu, 17 Dec 2020 18:09:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DA57E1BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:09:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C89832E316
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:09:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8d27wsAYjf0B for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:08:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by silver.osuosl.org (Postfix) with ESMTPS id 67E072E2E6
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:08:03 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id l11so59862637lfg.0
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8m4pPEAjUTB+XLxB8Q0FiZSpVZH7FkAsOtVYHU/qlmU=;
 b=M/P4YFEmOmA7dBW3pyL3/h3IvXTD6Uw3VvYBbvCl0IeAwQVfaH0z5SlAicSGEGKVrO
 PmYy2/1eDCaRKhMT1M1squT81Rew4AWs7Wm+QRca1KosrO7Ve9owlVqkmnQoHdTDB+RK
 iyhNgZCusZ3HV9jfoK8VnrnyPDwrxP9L+F5q4WvskKX7dLpwhwV3jmtRxbM3UBOg25Fx
 1vaNyP16U/jwAtLyZ3bfO2XHZqH61jzEJsge/vqE3c8/3bxRllKdwBoder/jXpPkQXLL
 0ytz1nxtKOoHENRiye+Rg9grNeZqq+H/c8wPoH6d7GrIOudLsuDhMENft08UoQTbkggS
 MwDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8m4pPEAjUTB+XLxB8Q0FiZSpVZH7FkAsOtVYHU/qlmU=;
 b=ghz344g3fb2GaxE12pEoKgloBrHBiVh0uri65m66MzgxSOJa7m9i4fZouRWn75RQdE
 mN+vgOmjt0szM2DLsrwpvf4nRnYfuYDCnI1gNhiucAbnZ3YWK63n6PjBCFFJvzk0g6gI
 TlIE/hxaV8D2nMLzr+uC9fRF83tSotVdAVySt72JLCGQIPeUhEOvNPx8XeFd8bY/Ec5Z
 xvQkRn5tIhyYuGD1YcV3NZsMOLiewFHEJjqmjKX5wCmkAo37LI6VK7CnwwDCrMk3d0JC
 hvfrX8DiVpcanz4gNGVeUJvMQWsfRNdkJ4YfBH6QK6xJjS6FCZ8r+ERU7H8cjxjYc1bo
 Zupw==
X-Gm-Message-State: AOAM532EY5IsSIittpSORwdIfT8xPUP/uS+Gk6TTaoKJU8IjQCzfic22
 WWadfb8GQhybHLfBzeXClA4=
X-Google-Smtp-Source: ABdhPJwlFjyxr8NFhrflzRw3CbYaZILp8i9Zi8gDSRSCmi/RtwkwrCtk+vx2Ky5r0OD2SP3QX43g2A==
X-Received: by 2002:a2e:9913:: with SMTP id v19mr194762lji.209.1608228481635; 
 Thu, 17 Dec 2020 10:08:01 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.08.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:08:01 -0800 (PST)
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
Subject: [PATCH v2 36/48] drm/tegra: gr2d: Correct swapped device-tree
 compatibles
Date: Thu, 17 Dec 2020 21:06:26 +0300
Message-Id: <20201217180638.22748-37-digetx@gmail.com>
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

The device-tree compatibles are swapped in the code, correct them.

Tested-by: Peter Geis <pgwipeout@gmail.com>
Tested-by: Nicolas Chauvet <kwizart@gmail.com>
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/gpu/drm/tegra/gr2d.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/tegra/gr2d.c b/drivers/gpu/drm/tegra/gr2d.c
index 1a0d3ba6e525..f30aa86e4c9f 100644
--- a/drivers/gpu/drm/tegra/gr2d.c
+++ b/drivers/gpu/drm/tegra/gr2d.c
@@ -162,8 +162,8 @@ static const struct gr2d_soc tegra30_gr2d_soc = {
 };
 
 static const struct of_device_id gr2d_match[] = {
-	{ .compatible = "nvidia,tegra30-gr2d", .data = &tegra20_gr2d_soc },
-	{ .compatible = "nvidia,tegra20-gr2d", .data = &tegra30_gr2d_soc },
+	{ .compatible = "nvidia,tegra30-gr2d", .data = &tegra30_gr2d_soc },
+	{ .compatible = "nvidia,tegra20-gr2d", .data = &tegra20_gr2d_soc },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, gr2d_match);
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

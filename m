Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7AF2DD708
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 353F42E309;
	Thu, 17 Dec 2020 18:08:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eJzzooRfc+EE; Thu, 17 Dec 2020 18:08:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6428F2E2DB;
	Thu, 17 Dec 2020 18:07:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD6AF1BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AA097878F7
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CGs-OQ9f5cBb for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E56A88794A
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:43 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id a9so59800611lfh.2
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O54hHe3GwNNHKPGqkz2B7DU6dvwXex7DZOGprtr/GmM=;
 b=OeNoXEbagvqP4DcdFhxII/42gkuzezO/PqnbWTRx0INOXQdREbZ9WUQtGqRW9XC4zu
 qwqGe/LBGPelVABYeoE0DFhmP9frBpJpDLpxjZNEzjx2+8qfHOLYxleJzaXHkyivn7MV
 5Wx+7w3s6l4rWpcim8ghNJ6etTTkdS0O3EKA3rmH4m0vpOdsClXW+OmZRnXCmX54UcIZ
 YIzRp3emr7EG0FQVREe03LqbyinxlxDppx97t00aAoZs/8z1kq05RI6LRx430jN4MrGe
 yKib5DtjYjwWT1KHHaTrKl53ri2GUuh6aSw6+bQaGldmbatKakYdHzLHJ4nT9jbN9T1g
 77OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O54hHe3GwNNHKPGqkz2B7DU6dvwXex7DZOGprtr/GmM=;
 b=CPZzPKgka+Vr29O8qVTzK+6yLm43Ak8xUYkjR9kwIbHeiTLhkhCS8jTxArjqlNdWCm
 ULEanhNpt0ygruDCDNpI+fa8H2qILEyZyYMAiOyCL5FwoAaH4OikPYnOV9RzjW0g6wnz
 Vs3ByjkBJPsb0UtoD3Xdbq9a5i0EnI3OOrH+hbVkkz23155ekplMQIzNRmRHoLPwUm3z
 HWssrG9ftZrzNKyk2W1reU8wKlL7Pv1llsGQIafwIv+NLl2RHr5Dkcde0wnnNrbomu0O
 1UhDqTfuBwuWkYabcPZCwUGk+xpydNuhujxKUMc9ZoGjW+vgw6/O2hUjAQthUrqcwfNL
 oLLA==
X-Gm-Message-State: AOAM530EorNXsMNRYoAMX3EQN/dVpBIaclYaOd1hQ9mUjIYsTPfFOf9p
 oMsJjorRM8oen5PFrcvY3i0=
X-Google-Smtp-Source: ABdhPJwgr1JYd3dkFtKpuRIk58HS8VFkfsWUOGAgiyXDw3hUSYyQyK1uR0tRGdUSz8JFZo5ENDfzNg==
X-Received: by 2002:a2e:b80d:: with SMTP id u13mr209747ljo.143.1608228460744; 
 Thu, 17 Dec 2020 10:07:40 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:40 -0800 (PST)
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
Subject: [PATCH v2 18/48] opp: Print OPP level in debug message of
 _opp_add_static_v2()
Date: Thu, 17 Dec 2020 21:06:08 +0300
Message-Id: <20201217180638.22748-19-digetx@gmail.com>
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

Print OPP level in debug message of _opp_add_static_v2(). This helps to
chase GENPD bugs.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/opp/of.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/opp/of.c b/drivers/opp/of.c
index 1f2038a4420b..56b153ea5c56 100644
--- a/drivers/opp/of.c
+++ b/drivers/opp/of.c
@@ -822,10 +822,11 @@ static struct dev_pm_opp *_opp_add_static_v2(struct opp_table *opp_table,
 	if (new_opp->clock_latency_ns > opp_table->clock_latency_ns_max)
 		opp_table->clock_latency_ns_max = new_opp->clock_latency_ns;
 
-	pr_debug("%s: turbo:%d rate:%lu uv:%lu uvmin:%lu uvmax:%lu latency:%lu\n",
+	pr_debug("%s: turbo:%d rate:%lu uv:%lu uvmin:%lu uvmax:%lu latency:%lu level:%u\n",
 		 __func__, new_opp->turbo, new_opp->rate,
 		 new_opp->supplies[0].u_volt, new_opp->supplies[0].u_volt_min,
-		 new_opp->supplies[0].u_volt_max, new_opp->clock_latency_ns);
+		 new_opp->supplies[0].u_volt_max, new_opp->clock_latency_ns,
+		 new_opp->level);
 
 	/*
 	 * Notify the changes in the availability of the operable
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

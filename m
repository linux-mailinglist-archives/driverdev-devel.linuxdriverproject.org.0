Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09B42DD6D2
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 719F387AA6;
	Thu, 17 Dec 2020 18:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XquGR8xZF2lm; Thu, 17 Dec 2020 18:07:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFBB2876BC;
	Thu, 17 Dec 2020 18:07:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 88FC71BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7FA4F2E2BB
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mjRpX0xVNLLA for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by silver.osuosl.org (Postfix) with ESMTPS id 01A632E2B8
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:30 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id 23so59801541lfg.10
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=85Y5Xy0sCYGIXnoBRS4PIkvg6O/T96bo2+JpLeZeoDU=;
 b=HO8B6pRWWY34CmtfEP2kpsIswJ2lPhhfqt6pCe/KhgZFrWjAvhfVC/olegJlNCb7eF
 UI3MKbRzrqIhUSxGSc5Ajvbj/hJs+jZ8oq79wnAhjB7etVTaRWe4bMbSawUlSSLPp3Sm
 gCkoFwyBIrpdeWNZ5sjoyHEP793xOAsMnj6a4mh49sHgbLePE2qqdLPbO9YOXsp09Ar5
 fFnxwvcfqqIwW6ZgiE1KVVbHtu/AdCwcdYddZ+PNfP7cZL8U7GJO6Xf5MAWOk7rTpt8Q
 hKO49nwhSnI90wCCw8KhsSWqHvaLpPRSm/m3rAfl3WzFoYpQz3bkg9b+THJ9m6P12R5F
 8/ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=85Y5Xy0sCYGIXnoBRS4PIkvg6O/T96bo2+JpLeZeoDU=;
 b=OZOJ4UDi2Pzi6PKsCaSGthFmmsot5S1gO4klDncKvJEY5qSXyPrKbEhAHbTVglwzGx
 AG64aZKpSWdp/oeEoZXTmod+YPNvH+WD3wST17diWdV5LdQVq1AgjGPos9q7KLXI3D2v
 u2xHrCC6TGxBC4G/PJJYsYBOQimCcyykGKtEXLlOXdsx4UG5YksSnBtXKGKrUBjEZ4FU
 k3lZ/K8KUfLXJxp1U+Ni3gXYFpOo3BtoANvu10b9moFbUl34qmIJ+Vz44xnkg5Yrsqpq
 79r27ZCoz7gQ4RQZWtroIfKRxoFMunyGgLIkRaPBdH5aKVxUYaa8JLLDLNiCQQ06Hcqb
 3JNA==
X-Gm-Message-State: AOAM533lpMcRoZgKNog9xOeXRT5iPgvU5mCZnibfMjgVLR2/Z7th7qhH
 L9/rpPGk80zgL3epeQl7JTo=
X-Google-Smtp-Source: ABdhPJxdsk3SmejHPdeEJpjzdTthLwWs3KYuEnkts5yzgKLNEZKMY28YcLV/8fEvQKXp+zJuE2Yd2Q==
X-Received: by 2002:ac2:4359:: with SMTP id o25mr5495403lfl.536.1608228449259; 
 Thu, 17 Dec 2020 10:07:29 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:28 -0800 (PST)
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
Subject: [PATCH v2 08/48] regulator: Make regulator_sync_voltage() usable by
 coupled regulators
Date: Thu, 17 Dec 2020 21:05:58 +0300
Message-Id: <20201217180638.22748-9-digetx@gmail.com>
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

Make regulator_sync_voltage() to re-balance voltage state of a coupled
regulators instead of changing the voltage directly.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/regulator/core.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index ca03d8e70bd1..576efb815eb8 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -4131,6 +4131,12 @@ int regulator_sync_voltage(struct regulator *regulator)
 	if (ret < 0)
 		goto out;
 
+	/* balance only if there are regulators coupled */
+	if (rdev->coupling_desc.n_coupled > 1) {
+		ret = regulator_balance_voltage(rdev, PM_SUSPEND_ON);
+		goto out;
+	}
+
 	ret = _regulator_do_set_voltage(rdev, min_uV, max_uV);
 
 out:
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

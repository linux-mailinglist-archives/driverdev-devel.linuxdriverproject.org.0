Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA982DD6D8
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0A3F98765F;
	Thu, 17 Dec 2020 18:07:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R0ojQCzr8Dqx; Thu, 17 Dec 2020 18:07:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFE0A8762A;
	Thu, 17 Dec 2020 18:07:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 477D41BF9BD
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 439AA8794A
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TtUHsae0X4Lt for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 29BAF87949
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:47 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id o17so56901247lfg.4
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NX+MS+anU76BlhEILutoJiS/7/Thy1nqdrl3kCzllJ4=;
 b=m+RcrvCN5SVrC4E9GsHQPZphjjmtSgb6vuW0wmrHP3sg/7u7V+Hka3Yz10nHRBIxUV
 8UV768vcIQ+01fjn0PkPPxF+oLpCfOhdiGMGBDnrsILzLvxYhOSOifjhnRxs/HVEVyn6
 3ZsI83oqk77uAHPWY8AhNT3DQe6YpD0gs1NFWahq0b0q9n4yDXnm7aBZCe5eDJG1LvpP
 zjMk/P17UXO40lcqYkyijOIomLa1G4M0uXMPS0E9EQAbEU49va0WIVYn6oBBujqzciPE
 QaxGQKnyhWyxfVKhKid9wYcl1G+4A72GGTAmGaMdNzjWKaK3YvR+eOFL4SdIEwRHHc65
 RtZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NX+MS+anU76BlhEILutoJiS/7/Thy1nqdrl3kCzllJ4=;
 b=fKm72hkxJEYwH9oNLkqgX0juWEzWO0S+tFlcCRZqtdGLhy+OttFAw/6hesl/H5c/IS
 DiCngmCbugXZNJiMaxcfv72oCA/t98kZMBAzoT0EdpLc9cFtPwfAWarV9ORCUb7t32RP
 q3OhnfpH0xJDai5+V4sM8MVeXjMciCvUVCcNV/HJTom0phpDHU0hZLMI07jK2GacIfvE
 mCptlYZfPG5h2egigNki1ZehntlBEOVIN/n6GJaeFBOXbVLyFbrs1PzO/CMt8n30e/LI
 wRbSmih/XWGDPy63BUc0d4yfxCh7UsblCeltEPceGqaJVXRYRa8TtZlq8mgSA3JvoLGL
 9zaQ==
X-Gm-Message-State: AOAM5334RuZ957QwodEuDAr3iSq2WL4ojZuHDo+t4Cd2JUIJr5BvchoR
 6edGFsyjYodhNHqRIr+lSZc=
X-Google-Smtp-Source: ABdhPJzZPdbXPbkUp1eRbNGTe1GkWb+tswPD3NA3JbqvyYw4q06czICReBowWtbbVUqPBOhPjZBhXQ==
X-Received: by 2002:a19:9d8:: with SMTP id 207mr8275690lfj.581.1608228465466; 
 Thu, 17 Dec 2020 10:07:45 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:45 -0800 (PST)
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
Subject: [PATCH v2 22/48] soc/tegra: pmc: Fix imbalanced clock disabling in
 error code path
Date: Thu, 17 Dec 2020 21:06:12 +0300
Message-Id: <20201217180638.22748-23-digetx@gmail.com>
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

The tegra_powergate_power_up() has a typo in the error code path where it
will try to disable clocks twice, fix it. In practice that error never
happens, so this is a minor correction.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/soc/tegra/pmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
index df9a5ca8c99c..fd2ba3c59178 100644
--- a/drivers/soc/tegra/pmc.c
+++ b/drivers/soc/tegra/pmc.c
@@ -638,7 +638,7 @@ static int tegra_powergate_power_up(struct tegra_powergate *pg,
 
 	err = tegra_powergate_enable_clocks(pg);
 	if (err)
-		goto disable_clks;
+		goto powergate_off;
 
 	usleep_range(10, 20);
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

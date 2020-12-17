Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4962DD6CD
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:07:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 57BFE87AA7;
	Thu, 17 Dec 2020 18:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JkamYGRPfXmZ; Thu, 17 Dec 2020 18:07:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D67F4876BC;
	Thu, 17 Dec 2020 18:07:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 651DC1BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 61B7287A95
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EPQ7PwezNXu7 for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E91F87A8A
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:35 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id 23so59802237lfg.10
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vPD7hQ8b5N25hcZTdVSAqhZrBeZE9ONbNkTdFW8v87g=;
 b=ChchZyVri0yi/O25dvPeSHNQEk3sLXfZVskKc7CN57GBdMMTmWURalf2IM6i2rgvhh
 qfcMtU+PS/OCGaJjeaVHDM2wBUNa8Tg9f7+ONq/dSM6byM/Y8iogLVMrfOj4dNFwy2Xm
 Ps6rz8w/7z9Mz8vRMGfOZ86sU3M3S0FpRWA4hoISaf7GtzBRBYpB/pOJM78wLmrasMEr
 /gb3uNc548kJHGE9V2DfBbDDkAnqUyLpzfbxhrKpEumO23OdI8D7by5pViVe1cJ16DXd
 4yhnxob5KSGfDuhxWiH1oLSuAV4B7pIQHOcN3N/ZWY1erLsW1JFmbo1HRGSDSIF6T5LI
 wT3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vPD7hQ8b5N25hcZTdVSAqhZrBeZE9ONbNkTdFW8v87g=;
 b=bpiuhduXVwgD7TNS/WgvqXQFmtg15JwJhsPS6GBu2SSmVHB79+NFjltaiUhGq8QPUF
 88qW7oMpvRXWU7qy3p7nj4BcJEIDbn7ThuMHYUSoax34U3cLfYgxXW7S+epIPCGZ52Fn
 3xqLBDtwPfnSHto73d0bETuRTOmm/zVp3GbMFSKJTATULGDUV4AIq6itFIQ+Di7GcQQR
 7cRnsfaCZ+EM9P/XDILE2lT1ibjH0vcklzSRntPfK4awmcS8MOUSbpZhPLpJarCQgne6
 9OeujI6gMHgDHNUF/a9rZBEDRsPmq+TvDBUm/w5WTvF7EiMSXAp2YeZ1UWrZzNbbSFdg
 2D2Q==
X-Gm-Message-State: AOAM531ADULLJNNG8LuMJ33ujeq6twegwOoxhGLMk6tnnyuh8267BH49
 JjW31FT9V9l+tkpAFtO6Ow4=
X-Google-Smtp-Source: ABdhPJzFSNM0TMMoSxcYKoyhk7r0wzOQ4M8gA685Cb16wgK+4tnur3IzXUR06VdXp1ulyFqi9mnu/A==
X-Received: by 2002:a2e:a404:: with SMTP id p4mr220062ljn.260.1608228453811;
 Thu, 17 Dec 2020 10:07:33 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:33 -0800 (PST)
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
Subject: [PATCH v2 12/48] opp: Add dev_pm_opp_get_required_pstate()
Date: Thu, 17 Dec 2020 21:06:02 +0300
Message-Id: <20201217180638.22748-13-digetx@gmail.com>
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

Add dev_pm_opp_get_required_pstate() which allows OPP users to retrieve
required performance state of a given OPP.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/opp/core.c     | 22 ++++++++++++++++++++++
 include/linux/pm_opp.h | 10 ++++++++++
 2 files changed, 32 insertions(+)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 0783a4ac819a..4774701ec82d 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -145,6 +145,28 @@ unsigned int dev_pm_opp_get_level(struct dev_pm_opp *opp)
 }
 EXPORT_SYMBOL_GPL(dev_pm_opp_get_level);
 
+/**
+ * dev_pm_opp_get_required_pstate() - Gets the required performance state
+ *                                    corresponding to an available opp
+ * @opp:	opp for which performance state has to be returned for
+ * @index:	index of the required opp
+ *
+ * Return: performance state read from device tree corresponding to the
+ * required opp, else return 0.
+ */
+unsigned int dev_pm_opp_get_required_pstate(struct dev_pm_opp *opp,
+					    unsigned int index)
+{
+	if (IS_ERR_OR_NULL(opp) || !opp->available ||
+	    index >= opp->opp_table->required_opp_count) {
+		pr_err("%s: Invalid parameters\n", __func__);
+		return 0;
+	}
+
+	return opp->required_opps[index]->pstate;
+}
+EXPORT_SYMBOL_GPL(dev_pm_opp_get_required_pstate);
+
 /**
  * dev_pm_opp_is_turbo() - Returns if opp is turbo OPP or not
  * @opp: opp for which turbo mode is being verified
diff --git a/include/linux/pm_opp.h b/include/linux/pm_opp.h
index a17d92d923cc..0298b426fba3 100644
--- a/include/linux/pm_opp.h
+++ b/include/linux/pm_opp.h
@@ -98,6 +98,9 @@ unsigned long dev_pm_opp_get_freq(struct dev_pm_opp *opp);
 
 unsigned int dev_pm_opp_get_level(struct dev_pm_opp *opp);
 
+unsigned int dev_pm_opp_get_required_pstate(struct dev_pm_opp *opp,
+					    unsigned int index);
+
 bool dev_pm_opp_is_turbo(struct dev_pm_opp *opp);
 
 int dev_pm_opp_get_opp_count(struct device *dev);
@@ -188,6 +191,13 @@ static inline unsigned int dev_pm_opp_get_level(struct dev_pm_opp *opp)
 	return 0;
 }
 
+static inline
+unsigned int dev_pm_opp_get_required_pstate(struct dev_pm_opp *opp,
+					    unsigned int index)
+{
+	return 0;
+}
+
 static inline bool dev_pm_opp_is_turbo(struct dev_pm_opp *opp)
 {
 	return false;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

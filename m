Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BCD2DD6D6
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA57887A95;
	Thu, 17 Dec 2020 18:07:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3WsrhotC-2S4; Thu, 17 Dec 2020 18:07:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 392B387A9C;
	Thu, 17 Dec 2020 18:07:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 20FCB1BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 184FA2E2DA
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WBh-mlI44MiO for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by silver.osuosl.org (Postfix) with ESMTPS id 6A9C42E2C1
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:34 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id o17so56899443lfg.4
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ONUdIoYLvrymxxGuA1rEkpRERKvXdxShg+niqiRuWWw=;
 b=p2/N6zxOWQ1TNgCgwvZcMNpOSboPM0BuGbUpXZAXVfrMIdLcbf/m3p1KC2nQL3v0I6
 wH1TSHHk9uUDfjeo0lwnQ0kiY1X7T1gJ0S/JHcoaGZ4DP/tjco2gS2i2yzvshR66pv8H
 o7Ot28qeR/sxxzMguphR4oIYAhkMO1eRB0/hIWpVDKS1QyUuLObjGKCKgnRASusUidVU
 zxN0pLs8ZQtIA8ikRgKkDPtzOC4nV6kqtQoNiegpJLjHVQYfklIPYqMmLIHmcd5+/Oej
 3yksetlAGp6u9VKhXKgNKCbMKS7HuKmgo1KBLhzMJFWqIiExd6/+V5ueg7KJkhXGyUiJ
 Ddig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ONUdIoYLvrymxxGuA1rEkpRERKvXdxShg+niqiRuWWw=;
 b=Nkd7JTjvLEpOARpkp2MrSXpM+QHr45KFlcsXEsu+6HyUZkFGlPPKpYSjpxa79tf9qG
 hbF7Duy9tzkloRu1LLUkvrRarhKlkwUkoZ8aAPZCZvFz8LBeNZooYr5Gdk9D9jS1WiWK
 teeSS6CqwIXtr77K6GfJsvsP8yAHVcYPNKNMOnPyMxPnmpuAPXpL9V8Kee9d0Y3k1+fs
 QBI8pPqBlVYTWv6k2cxKH5i7PE31HNVRnwn9tI0KPZHPbUjX+8pH52ecAEZhNmfebX05
 ZnJJxD067qC769OfLkChoqUP3DzOLEaysTJB20hAukgklCdVj6GG2/oEm93oByKPhsf3
 ynxw==
X-Gm-Message-State: AOAM531HV7yDFpqr/JaeAE7kHzQWYh8VHEazOion3qfgzXrG1v5rOZGS
 2fFIxgbJjFXbKW/z055yEYzXu0dFOdI=
X-Google-Smtp-Source: ABdhPJx4DSg+fZJTBkNxhuc6g3ezsqDW5hpdLf96cj7krLJwspxwSptzE1H7fpBWtPpK43NibJSC9A==
X-Received: by 2002:a2e:82d0:: with SMTP id n16mr210409ljh.474.1608228452689; 
 Thu, 17 Dec 2020 10:07:32 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:32 -0800 (PST)
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
Subject: [PATCH v2 11/48] opp: Add dev_pm_opp_find_level_ceil()
Date: Thu, 17 Dec 2020 21:06:01 +0300
Message-Id: <20201217180638.22748-12-digetx@gmail.com>
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

Add a ceil version of the dev_pm_opp_find_level(). It's handy to have if
levels don't start from 0 in OPP table and zero usually means a minimal
level.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/opp/core.c     | 49 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/pm_opp.h |  8 +++++++
 2 files changed, 57 insertions(+)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index eab37b3a27bb..0783a4ac819a 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -449,6 +449,55 @@ struct dev_pm_opp *dev_pm_opp_find_level_exact(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(dev_pm_opp_find_level_exact);
 
+/**
+ * dev_pm_opp_find_level_ceil() - search for an rounded up level
+ * @dev:		device for which we do this operation
+ * @level:		level to search for
+ *
+ * Return: Searches for rounded up match in the opp table and returns pointer
+ * to the  matching opp if found, else returns ERR_PTR in case of error and
+ * should be handled using IS_ERR. Error return values can be:
+ * EINVAL:	for bad pointer
+ * ERANGE:	no match found for search
+ * ENODEV:	if device not found in list of registered devices
+ *
+ * The callers are required to call dev_pm_opp_put() for the returned OPP after
+ * use.
+ */
+struct dev_pm_opp *dev_pm_opp_find_level_ceil(struct device *dev,
+					      unsigned int *level)
+{
+	struct opp_table *opp_table;
+	struct dev_pm_opp *temp_opp, *opp = ERR_PTR(-ERANGE);
+
+	opp_table = _find_opp_table(dev);
+	if (IS_ERR(opp_table)) {
+		int r = PTR_ERR(opp_table);
+
+		dev_err(dev, "%s: OPP table not found (%d)\n", __func__, r);
+		return ERR_PTR(r);
+	}
+
+	mutex_lock(&opp_table->lock);
+
+	list_for_each_entry(temp_opp, &opp_table->opp_list, node) {
+		if (temp_opp->available && temp_opp->level >= *level) {
+			opp = temp_opp;
+			*level = opp->level;
+
+			/* Increment the reference count of OPP */
+			dev_pm_opp_get(opp);
+			break;
+		}
+	}
+
+	mutex_unlock(&opp_table->lock);
+	dev_pm_opp_put_opp_table(opp_table);
+
+	return opp;
+}
+EXPORT_SYMBOL_GPL(dev_pm_opp_find_level_ceil);
+
 static noinline struct dev_pm_opp *_find_freq_ceil(struct opp_table *opp_table,
 						   unsigned long *freq)
 {
diff --git a/include/linux/pm_opp.h b/include/linux/pm_opp.h
index f311a8b2ca04..a17d92d923cc 100644
--- a/include/linux/pm_opp.h
+++ b/include/linux/pm_opp.h
@@ -111,6 +111,8 @@ struct dev_pm_opp *dev_pm_opp_find_freq_exact(struct device *dev,
 					      bool available);
 struct dev_pm_opp *dev_pm_opp_find_level_exact(struct device *dev,
 					       unsigned int level);
+struct dev_pm_opp *dev_pm_opp_find_level_ceil(struct device *dev,
+					      unsigned int *level);
 
 struct dev_pm_opp *dev_pm_opp_find_freq_floor(struct device *dev,
 					      unsigned long *freq);
@@ -228,6 +230,12 @@ static inline struct dev_pm_opp *dev_pm_opp_find_level_exact(struct device *dev,
 	return ERR_PTR(-ENOTSUPP);
 }
 
+static inline struct dev_pm_opp *dev_pm_opp_find_level_ceil(struct device *dev,
+					unsigned int *level)
+{
+	return ERR_PTR(-ENOTSUPP);
+}
+
 static inline struct dev_pm_opp *dev_pm_opp_find_freq_floor(struct device *dev,
 					unsigned long *freq)
 {
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

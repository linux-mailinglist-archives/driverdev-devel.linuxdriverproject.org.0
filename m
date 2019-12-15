Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABA211FA70
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Dec 2019 19:31:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7951E87D14;
	Sun, 15 Dec 2019 18:31:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aO4CqQi8x9o0; Sun, 15 Dec 2019 18:31:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 210D287BF5;
	Sun, 15 Dec 2019 18:31:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E4F111BF59D
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:31:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DF59686912
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:31:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nCE3QBVipkPQ for <devel@linuxdriverproject.org>;
 Sun, 15 Dec 2019 18:31:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 239EC86905
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 18:31:41 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id f15so2612762lfl.13
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 10:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8WGNb8baWMu/OjrhEBuLnEY4Hx1XajfUZ1YMdab/qoo=;
 b=NhUiZUfkbwUwbh36Oycqj68dNdHAqfRHuVjH7dBuSS4W0MHBmL2vWQpIzIQP1uik3F
 9S3id+ouVBS2uAJOuNP0kjhWFgL+wGb0zHoIETs9bO7zg3tR9bz75YFilmacFi+7wB9G
 N4SgoJUKeRHIYqILHaytlv4hmb3o+xuOFxQFt/0+ofoQXSMinlNobF+j5E0t4wDYUiHR
 NlrKnewXJk6IG5DxKd4k7fmkxiJUdPFfzmzSuJYWNYOS1ppy9sjCUJ0QWRw8025Bm6TJ
 KlH1edT8CCNVq3CHOzUsQEl6N8eOMG0Hecv9oBHTOCqQMZsptTgoens3d7iN5BlKrOwt
 jqPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8WGNb8baWMu/OjrhEBuLnEY4Hx1XajfUZ1YMdab/qoo=;
 b=SW/x9dNBTmtSJzHUQ/YjCQJbIu0xxT4mpDKvnjiny9X43KN7mEU9/rEycTmoWKvbiy
 dFSeAAbDl6dU0N5K6ddwkPnqqLDLWYPk2OuJbJ64i8OmHEPWYXpNm5Vq0F2hOZXgbOO4
 qo5/qHsF4dlwcKCRwC11GsPqZw67SP3Dcv54HYO76DmHHjsccZVEiYykao0NxsCHg2B0
 2pRGcsi8ErZBgaclYe0RkmXjdZGhfEDCIqRCaTNAxcnvJSnj6j+DSIm5g31r4PJD7IzL
 XJ8x6jHVGTMIY5LP4kAUJorm7lEDTGXh6hBNLDDpmjke5FdfEbLuDO4+B48be4leEwrE
 2+XQ==
X-Gm-Message-State: APjAAAUCqzlyPolvTVhQr791sBesUQGu2IGPl9LfR0SBnjkqwonMRx5V
 mZGhpG5WLA1ZrcmEjWpjjggOmruH
X-Google-Smtp-Source: APXvYqwAC+Ah7tQUHeZ3RPhMRnv+9rucKa6WFL204I6PVLtkjBFpZRQhumIjSBoL7UkDyziyacPSaQ==
X-Received: by 2002:ac2:5983:: with SMTP id w3mr14711498lfn.137.1576434699420; 
 Sun, 15 Dec 2019 10:31:39 -0800 (PST)
Received: from localhost.localdomain (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.gmail.com with ESMTPSA id v2sm8814277ljv.70.2019.12.15.10.31.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 10:31:38 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH v1 3/3] gpio: tegra: Use NOIRQ phase for suspend/resume
Date: Sun, 15 Dec 2019 21:30:47 +0300
Message-Id: <20191215183047.9414-4-digetx@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191215183047.9414-1-digetx@gmail.com>
References: <20191215183047.9414-1-digetx@gmail.com>
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
Cc: linux-tegra@vger.kernel.org, linux-gpio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

All GPIO interrupts are disabled during of the NOIRQ suspend/resume
phase, thus there is no need to manually disable the interrupts. This
patch doesn't fix any problem, this is just a minor clean-up.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/gpio/gpio-tegra.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
index 4790dfec7758..acb99eff9939 100644
--- a/drivers/gpio/gpio-tegra.c
+++ b/drivers/gpio/gpio-tegra.c
@@ -416,11 +416,8 @@ static void tegra_gpio_irq_handler(struct irq_desc *desc)
 static int tegra_gpio_resume(struct device *dev)
 {
 	struct tegra_gpio_info *tgi = dev_get_drvdata(dev);
-	unsigned long flags;
 	unsigned int b, p;
 
-	local_irq_save(flags);
-
 	for (b = 0; b < tgi->bank_count; b++) {
 		struct tegra_gpio_bank *bank = &tgi->bank_info[b];
 
@@ -448,17 +445,14 @@ static int tegra_gpio_resume(struct device *dev)
 		}
 	}
 
-	local_irq_restore(flags);
 	return 0;
 }
 
 static int tegra_gpio_suspend(struct device *dev)
 {
 	struct tegra_gpio_info *tgi = dev_get_drvdata(dev);
-	unsigned long flags;
 	unsigned int b, p;
 
-	local_irq_save(flags);
 	for (b = 0; b < tgi->bank_count; b++) {
 		struct tegra_gpio_bank *bank = &tgi->bank_info[b];
 
@@ -488,7 +482,7 @@ static int tegra_gpio_suspend(struct device *dev)
 					  GPIO_INT_ENB(tgi, gpio));
 		}
 	}
-	local_irq_restore(flags);
+
 	return 0;
 }
 
@@ -562,7 +556,7 @@ static inline void tegra_gpio_debuginit(struct tegra_gpio_info *tgi)
 #endif
 
 static const struct dev_pm_ops tegra_gpio_pm_ops = {
-	SET_SYSTEM_SLEEP_PM_OPS(tegra_gpio_suspend, tegra_gpio_resume)
+	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(tegra_gpio_suspend, tegra_gpio_resume)
 };
 
 static int tegra_gpio_probe(struct platform_device *pdev)
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

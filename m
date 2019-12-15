Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5774211FA71
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Dec 2019 19:31:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 651DB20482;
	Sun, 15 Dec 2019 18:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f-t0oURqmHMR; Sun, 15 Dec 2019 18:31:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 37C311FFC1;
	Sun, 15 Dec 2019 18:31:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E76271BF59D
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:31:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D99F585F69
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:31:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BrmkYu_-TBOV for <devel@linuxdriverproject.org>;
 Sun, 15 Dec 2019 18:31:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 68AFF85E08
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 18:31:40 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id r19so4286276ljg.3
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 10:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PKh3AEiH5cNq1LZRWLK77CjDsirV0QFS3e0KYYZWwGE=;
 b=r+ODSpg1q7HyaHldIiEUcpn3IpVUFMP8vT52IXPicCaTfiSAmz19aO1tYSI0nedft3
 Db8lefvMiDzU6vhKQChxG+DyPjzAvaJnVRwuGsP3veLi6wocEHvhQuHKLO9drOkQEV6V
 jsvZuHxoWTTv7lL2ri7eIplo66cMuZnGxjR3uIRJImObPujfyRz2IQKyoajj4MUgSVq/
 e4p8FsDUsmuNIip4P8qrC6nqtmajP9hGJPccgHlLJCgd0jR2diJUseXwBwjAU3ZqiLIA
 W/InAhtqbeO9va0/RXPAJfvsvYVRQWxhpx5HC+8qM4u7tDpBeA3b5uNlJ+R2lW3VF29P
 dY2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PKh3AEiH5cNq1LZRWLK77CjDsirV0QFS3e0KYYZWwGE=;
 b=ktEfvkEBtX2l51ICQnOJPNCoVkNos/vhOVIjMVerwioq3A6+mDqz/rlNVSyGsGkNmq
 FVaGy9i/qC6B5o9MDRPdIMFDlPJh37+Udrs1VQQG5UiOS0agNo8U0xymNUj/xvnp0Mjq
 dknd/OTW0NZOn7TylPi/AX5sq0Ffd5QQYHSfz8toQF5yejK25Hw6yO9HccMcJuBqbraH
 5GxwnnuMZMv8r+OpZ7TQa09O007YKHL+B6KaAJtecwfxPQjP01rgJgDwXAzbAtQvyg2F
 7OBuAKxLyLuGzAg4cgtX6JRPSbTuNXtI69BuS9lm/g4F/E/eLsCrfdIn0wV45D5ZPaB9
 ALkA==
X-Gm-Message-State: APjAAAXvLjbIsemxrTy4mG2VoVEhrdH4AuCFUMOAj5fWZe5E6jR+hvyE
 s/9REwdKshkiNo1wnGG+YYw=
X-Google-Smtp-Source: APXvYqwhmwQ/qiTvRg66lREsz7P9Wx0VgwCd6UpJZi4Yp5C8JL0VR+XK5dj3RscJ1P+hJZ70rEgj5w==
X-Received: by 2002:a2e:b010:: with SMTP id y16mr17070084ljk.238.1576434698505; 
 Sun, 15 Dec 2019 10:31:38 -0800 (PST)
Received: from localhost.localdomain (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.gmail.com with ESMTPSA id v2sm8814277ljv.70.2019.12.15.10.31.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 10:31:38 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH v1 2/3] gpio: tegra: Properly handle irq_set_irq_wake() error
Date: Sun, 15 Dec 2019 21:30:46 +0300
Message-Id: <20191215183047.9414-3-digetx@gmail.com>
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

Technically upstream interrupt controller may fail changing of GPIO's bank
wake-state and in this case the GPIO's wake-state shouldn't be changed.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/gpio/gpio-tegra.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
index f6a382fbd12d..4790dfec7758 100644
--- a/drivers/gpio/gpio-tegra.c
+++ b/drivers/gpio/gpio-tegra.c
@@ -497,6 +497,11 @@ static int tegra_gpio_irq_set_wake(struct irq_data *d, unsigned int enable)
 	struct tegra_gpio_bank *bank = irq_data_get_irq_chip_data(d);
 	unsigned int gpio = d->hwirq;
 	u32 port, bit, mask;
+	int err;
+
+	err = irq_set_irq_wake(bank->irq, enable);
+	if (err)
+		return err;
 
 	port = GPIO_PORT(gpio);
 	bit = GPIO_BIT(gpio);
@@ -507,7 +512,7 @@ static int tegra_gpio_irq_set_wake(struct irq_data *d, unsigned int enable)
 	else
 		bank->wake_enb[port] &= ~mask;
 
-	return irq_set_irq_wake(bank->irq, enable);
+	return 0;
 }
 #endif
 
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

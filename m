Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7C911FA6F
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Dec 2019 19:31:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC91085E65;
	Sun, 15 Dec 2019 18:31:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p30B2eL_nkYB; Sun, 15 Dec 2019 18:31:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E8CD385E08;
	Sun, 15 Dec 2019 18:31:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2028F1BF59D
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:31:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1CF2E86905
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:31:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4fE5RdPOqodm for <devel@linuxdriverproject.org>;
 Sun, 15 Dec 2019 18:31:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4368C86912
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 18:31:39 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id j6so4282868lja.2
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 10:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pJpJsdQ2YtTH6nu1Avkb9OWQxXwS0eSkzuTedWw0wzA=;
 b=OECtxzRjr3i8KK8Sx4kBdHFFatddwjCrYJBMoz/f5fc2dHM276Y2bip6GV1eHnCUqa
 aacw+T1Uo0Ft4EegS7TcMDSfknwrG8RYG5TpFErd4OWkwwluMHxAAwmucCxcpU57Za+Q
 cNFKvt2YW/vMPrp5m+3ugcPpwR6rmaf6g5QgZOL4dAXK8fhhprbvefMQNTWCLeTb/i5n
 17XFj4R44a7TyiTSoC9HhszDi6Nj76+UFodIs0HuL9VJYepAUJ22ih8o0ueYzLc4sRzI
 XYT5iNCpw1LX/mWaHqCIsdmv7F8D58KXTnQ5HfXcIeLseCoOVHXFnZ3EqSIpx1R/hs0S
 O5ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pJpJsdQ2YtTH6nu1Avkb9OWQxXwS0eSkzuTedWw0wzA=;
 b=qd/MUzLscQWyNz6mxU3qg43jlsSgC4pXuq71YR4Bm2Um4MHAEzaH94A7rVlc377wMC
 0ahikjnGKiskTayquiG7INOFTaoRerwrpyLDK8S4A6KSBVIeP9i9fQdxzFlObV0N6L80
 G5XnJIegK2r2mlhinEmEYRjJSxqWy/SwZmYmei9Q5hVPqQmxKhIpt7M09Ri3VXxBFsLf
 qHX/U85eFElT3tG7MzL+xJciddLAEzuPgCAHe318uHWe/nsz1/O+YB5RH9jCUOfQAUtW
 HmRaHTX87F/C/cztSgsBRH8UvTMx0jt/IjDVVVhSCDO7VrkDe4inqm3s/DQIxC1/odb4
 gtnA==
X-Gm-Message-State: APjAAAUqaxZTB9ZCzETFLooMOWK2lsFcYDNnVw+YacOCBeCibmB6OQaa
 oERx3W4QvDCtd5XBBAT7yaE=
X-Google-Smtp-Source: APXvYqxRywx9Bm9sJE5wb3QBUbnF8bl4vnzWBM9c3XS3SduylB0SM0M0FGNl5sZ1Jer5c7GwR9hLOQ==
X-Received: by 2002:a2e:9684:: with SMTP id q4mr17252373lji.242.1576434697498; 
 Sun, 15 Dec 2019 10:31:37 -0800 (PST)
Received: from localhost.localdomain (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.gmail.com with ESMTPSA id v2sm8814277ljv.70.2019.12.15.10.31.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 10:31:37 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH v1 1/3] gpio: tegra: Use generic readl_relaxed/writel_relaxed
 accessors
Date: Sun, 15 Dec 2019 21:30:45 +0300
Message-Id: <20191215183047.9414-2-digetx@gmail.com>
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

There is no point in using old-style raw accessors, the generic accessors
do the same thing and also take into account CPU endianness. Tegra SoCs do
not support big-endian mode in the upstream kernel, but let's switch away
from the outdated things anyway, just to keep code up-to-date.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/gpio/gpio-tegra.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
index 6fdfe4c5303e..f6a382fbd12d 100644
--- a/drivers/gpio/gpio-tegra.c
+++ b/drivers/gpio/gpio-tegra.c
@@ -96,12 +96,12 @@ struct tegra_gpio_info {
 static inline void tegra_gpio_writel(struct tegra_gpio_info *tgi,
 				     u32 val, u32 reg)
 {
-	__raw_writel(val, tgi->regs + reg);
+	writel_relaxed(val, tgi->regs + reg);
 }
 
 static inline u32 tegra_gpio_readl(struct tegra_gpio_info *tgi, u32 reg)
 {
-	return __raw_readl(tgi->regs + reg);
+	return readl_relaxed(tgi->regs + reg);
 }
 
 static unsigned int tegra_gpio_compose(unsigned int bank, unsigned int port,
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

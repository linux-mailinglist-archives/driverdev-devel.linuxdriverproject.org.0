Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EF311FA6E
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Dec 2019 19:31:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF2C385F7E;
	Sun, 15 Dec 2019 18:31:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WCMgEPVy2QY5; Sun, 15 Dec 2019 18:31:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AEA6E85E47;
	Sun, 15 Dec 2019 18:31:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 759A21BF59D
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:31:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 72CE186919
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OkWEG1HtSPoN for <devel@linuxdriverproject.org>;
 Sun, 15 Dec 2019 18:31:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8E6F886905
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 18:31:38 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id y19so2629596lfl.9
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 10:31:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/9qAg3wIzZX204w336ZHZqBn5SnmZdVi95LKDsqCbyM=;
 b=lkwSUYiPHAC4G9NADQvaEBv60Qi/rxBiNW1AbvFYHLwpHH67llWOavJBIznQ0r3tWo
 rjYuHrcwu3sVVZqa3bOT03gpPKfClh7tAFnJhtjzzWsJryxi1AttRgFcTaemZkWQdtyV
 yvVc2YOx+fGc6NUtmTy86/8LsCtmsU1jqEgkrKcatMCbCgO/Bfc53TehbPYQ3MUnEtOs
 ZRcWLmiy7P/A626LocHxMjBtleSFYJ+UNBLVb6Kn77sZuwojRg1Wxd57YZGvy237JVmv
 vmKW6byXh3Pmtw+89qZdAwkGMnghNucF3sXuaHMEfLloh4XNVCNn0md6quLUkPi/5LtD
 p5cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/9qAg3wIzZX204w336ZHZqBn5SnmZdVi95LKDsqCbyM=;
 b=Z6wAE+oUVvpBU7q4tEHF/BwoqTvC99cpu6FEGmMPa+eZ5uyD2KvBbQoLE9uho66k+f
 hmcSAe99SVlp7E2uBUiiaq1O8KXq5N1syqFJ/hEn3AX7znRyt3rn+isXUw+/Lb/kyUHy
 +GxftfG6zxh09r0FBqvg6IosecYPWmfAAAvRttoNfLOaDaCLjfiPBqGt7Tuv07wOoUCD
 QBFS0C5qQLcxHJyQy6qO8u/b5bdzygtqUHZFOYFWzK33N++Ok0au3bTpDtkvGIM9Blxc
 VFfmDdhXO0FhxJsYwPVKy4VUPZJ37F8wdvAtWX7YRf5z6NjwA/alAtrd9uKPOHm61/WC
 h7KQ==
X-Gm-Message-State: APjAAAV5DXcTzntBPWziCd5iaBwLNkcKJDXX1gEdYdM6Rwiow/tFbxIc
 KjJot3PMn9ZJIL6ZJELf3M0=
X-Google-Smtp-Source: APXvYqx1dXuxnTq/sTimnff9Ol5ZtwNphjRWSMJORXLq6H0GIgzqx3IhNXEtmatxvK+rsd1sQ6P/Vg==
X-Received: by 2002:a19:8842:: with SMTP id k63mr14556166lfd.90.1576434696640; 
 Sun, 15 Dec 2019 10:31:36 -0800 (PST)
Received: from localhost.localdomain (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.gmail.com with ESMTPSA id v2sm8814277ljv.70.2019.12.15.10.31.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 10:31:35 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH v1 0/3] Tegra GPIO: Minor code clean up
Date: Sun, 15 Dec 2019 21:30:44 +0300
Message-Id: <20191215183047.9414-1-digetx@gmail.com>
X-Mailer: git-send-email 2.24.0
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

Hello,

I was investigating why CPU hangs during of GPIO driver suspend and in
the end it turned out that it is a Broadcom WiFi driver problem because
it keeps OOB wake-interrupt enabled while WLAN interface is DOWN and this
may cause a bit weird CPU hang on writing to INT_ENB register during of
GPIO driver suspend. Meanwhile I also noticed that a few things could be
improved in the driver, that's what this small series addresses.

Dmitry Osipenko (3):
  gpio: tegra: Use generic readl_relaxed/writel_relaxed accessors
  gpio: tegra: Properly handle irq_set_irq_wake() error
  gpio: tegra: Use NOIRQ phase for suspend/resume

 drivers/gpio/gpio-tegra.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

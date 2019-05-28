Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB74D2C8D7
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2019 16:31:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C35D8525D;
	Tue, 28 May 2019 14:31:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jBbNfxzq2A89; Tue, 28 May 2019 14:31:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0F2685232;
	Tue, 28 May 2019 14:31:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 00AE81BF309
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 14:31:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F0B098547B
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 14:31:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wKbrGNM4sTh4 for <devel@linuxdriverproject.org>;
 Tue, 28 May 2019 14:31:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F14DA8543B
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 14:31:42 +0000 (UTC)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 09013B321758B27C89EF;
 Tue, 28 May 2019 22:31:39 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Tue, 28 May 2019
 22:31:30 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <TheSven73@gmail.com>, <gregkh@linuxfoundation.org>
Subject: [PATCH v2 -next] staging: fieldbus: Fix build error without
 CONFIG_REGMAP_MMIO
Date: Tue, 28 May 2019 22:29:12 +0800
Message-ID: <20190528142912.13224-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <CAGngYiU=uFjJFEoiHFUr+ab73sJksaTBkfxvQwL1X6WJnhchqw@mail.gmail.com>
References: <CAGngYiU=uFjJFEoiHFUr+ab73sJksaTBkfxvQwL1X6WJnhchqw@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix gcc build error while CONFIG_REGMAP_MMIO is not set

drivers/staging/fieldbus/anybuss/arcx-anybus.o: In function `controller_probe':
arcx-anybus.c: undefined reference to `__devm_regmap_init_mmio_clk'

Select REGMAP_MMIO to fix it.

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 2411a336c8ce ("staging: fieldbus: arcx-anybus: change custom -> mmio regmap")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
v2: fix patch style warning
---
 drivers/staging/fieldbus/anybuss/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/fieldbus/anybuss/Kconfig b/drivers/staging/fieldbus/anybuss/Kconfig
index 8bc3d9a..635a0a7 100644
--- a/drivers/staging/fieldbus/anybuss/Kconfig
+++ b/drivers/staging/fieldbus/anybuss/Kconfig
@@ -14,6 +14,7 @@ if HMS_ANYBUSS_BUS
 config ARCX_ANYBUS_CONTROLLER
 	tristate "Arcx Anybus-S Controller"
 	depends on OF && GPIOLIB && HAS_IOMEM && REGULATOR
+	select REGMAP_MMIO
 	help
 	  Select this to get support for the Arcx Anybus controller.
 	  It connects to the SoC via a parallel memory bus, and
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

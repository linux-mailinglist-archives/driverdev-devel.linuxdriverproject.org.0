Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB472C7CE
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2019 15:34:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25AA9856ED;
	Tue, 28 May 2019 13:34:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U3V3h74si5AL; Tue, 28 May 2019 13:34:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D453B8559F;
	Tue, 28 May 2019 13:33:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 268E61BF314
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 13:33:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 21B6C86D2D
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 13:33:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CfhOGBDeypLg for <devel@linuxdriverproject.org>;
 Tue, 28 May 2019 13:33:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CB11F86CDC
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 13:33:52 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 135BE88B20B302BDCEF9;
 Tue, 28 May 2019 21:33:49 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Tue, 28 May 2019
 21:33:39 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <TheSven73@gmail.com>, <gregkh@linuxfoundation.org>
Subject: [PATCH -next] staging: fieldbus: Fix build error without
 CONFIG_REGMAP_MMIO
Date: Tue, 28 May 2019 21:32:14 +0800
Message-ID: <20190528133214.21776-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
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
arcx-anybus.c:(.text+0x9d6): undefined reference to `__devm_regmap_init_mmio_clk'

Select REGMAP_MMIO to fix it.

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 2411a336c8ce ("staging: fieldbus: arcx-anybus: change custom -> mmio regmap")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF40C462B9
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 17:29:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B6163230BD;
	Fri, 14 Jun 2019 15:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HhyYYyInVMTD; Fri, 14 Jun 2019 15:29:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AB9D622FC6;
	Fri, 14 Jun 2019 15:29:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E9871BF32C
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 15:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2B934869EF
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 15:29:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id buao0ugirofd for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 15:29:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6E69C869ED
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 15:29:10 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7F5E2D672D3B51780036;
 Fri, 14 Jun 2019 23:29:06 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Fri, 14 Jun 2019
 23:28:57 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <lars@metafoo.de>,
 <Michael.Hennerich@analog.com>, <stefan.popa@analog.com>, <jic23@kernel.org>, 
 <knaack.h@gmx.de>, <pmeerw@pmeerw.net>
Subject: [PATCH] staging: iio: adt7316: Add missing include files
Date: Fri, 14 Jun 2019 23:28:46 +0800
Message-ID: <20190614152846.28108-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
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
Cc: devel@driverdev.osuosl.org, linux-iio@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix build error:

drivers/staging/iio/addac/adt7316.c: In function adt7316_store_update_DAC:
drivers/staging/iio/addac/adt7316.c:949:3: error: implicit declaration of
 function gpiod_set_value; did you mean gpio_set_value? [-Werror=implicit-function-declaration]
   gpiod_set_value(chip->ldac_pin, 0);

drivers/staging/iio/addac/adt7316.c: In function adt7316_setup_irq:
drivers/staging/iio/addac/adt7316.c:1807:13: error: implicit declaration of
 function irqd_get_trigger_type; did you mean devm_iio_trigger_free? [-Werror=implicit-function-declaration]
  irq_type = irqd_get_trigger_type(irq_get_irq_data(chip->bus.irq));

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 7f6b6d553df7 ("Staging: iio: adt7316: Add all irq related code in adt7316_irq_setup()")
Fixes: c63460c4298f ("Staging: iio: adt7316: Use device tree data to set ldac_pin")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/iio/addac/adt7316.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
index 37ce563..9d3d159 100644
--- a/drivers/staging/iio/addac/adt7316.c
+++ b/drivers/staging/iio/addac/adt7316.c
@@ -16,6 +16,8 @@
 #include <linux/i2c.h>
 #include <linux/rtc.h>
 #include <linux/module.h>
+#include <linux/irq.h>
+#include <linux/gpio/consumer.h>
 
 #include <linux/iio/iio.h>
 #include <linux/iio/events.h>
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B50991BC235
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 17:05:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9942E22850;
	Tue, 28 Apr 2020 15:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FTe04QcIErsM; Tue, 28 Apr 2020 15:05:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 16D9A22812;
	Tue, 28 Apr 2020 15:05:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 62EA51BF2EB
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 15:05:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5F97388256
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 15:05:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EofBs-x2lX6b for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 15:05:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DE0CA88196
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 15:05:48 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id F14513F101D2B6AD3396;
 Tue, 28 Apr 2020 23:05:43 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Tue, 28 Apr 2020 23:05:34 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Kirill Smelkov
 <kirr@nexedi.com>, Nishka Dasgupta <nishkadg.linux@gmail.com>, Arnd Bergmann
 <arnd@arndb.de>, Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
Subject: [PATCH -next] staging: pi433: fix error return code in pi433_probe()
Date: Tue, 28 Apr 2020 15:06:50 +0000
Message-ID: <20200428150650.102340-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix to return negative error code -ENOMEM from cdev alloc failed error
handling case instead of 0, as done elsewhere in this function.

Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/staging/pi433/pi433_if.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index 313d22f6210f..c8d0c63fdd1d 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -1230,6 +1230,7 @@ static int pi433_probe(struct spi_device *spi)
 	device->cdev = cdev_alloc();
 	if (!device->cdev) {
 		dev_dbg(device->dev, "allocation of cdev failed");
+		retval = -ENOMEM;
 		goto cdev_failed;
 	}
 	device->cdev->owner = THIS_MODULE;



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

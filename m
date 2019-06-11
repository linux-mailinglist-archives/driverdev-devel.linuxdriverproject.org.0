Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5443CD38
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 15:43:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B79C886FFF;
	Tue, 11 Jun 2019 13:43:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Lp57Rix9y3t; Tue, 11 Jun 2019 13:43:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2679F86FB1;
	Tue, 11 Jun 2019 13:42:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF8621BF393
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 13:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B9D6282D57
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 13:42:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SeiwQE5fhbaY for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 13:42:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5BBEF81E2E
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 13:42:54 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A6B5B115DE343A56FF18;
 Tue, 11 Jun 2019 21:42:50 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Tue, 11 Jun 2019
 21:42:41 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <bnvandana@gmail.com>,
 <Matt.Sickler@daktronics.com>, <valerio.click@gmail.com>
Subject: [PATCH -next] Staging: kpc2000: kpc_dma: Make some symbols static
Date: Tue, 11 Jun 2019 21:42:28 +0800
Message-ID: <20190611134228.24460-1-yuehaibing@huawei.com>
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix sparse warnings:

drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c:46:6: warning: symbol 'kpc_dma_del_device' was not declared. Should it be static?
drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c:84:1: warning: symbol 'dev_attr_engine_regs' was not declared. Should it be static?
drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c:91:14: warning: symbol 'kpc_dma_class' was not declared. Should it be static?
drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c:199:24: warning: symbol 'kpc_dma_plat_driver_i' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index 9acf1ea..ca76073 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -43,7 +43,7 @@ static void kpc_dma_add_device(struct kpc_dma_device *ldev)
 	mutex_unlock(&kpc_dma_mtx);
 }
 
-void kpc_dma_del_device(struct kpc_dma_device *ldev)
+static void kpc_dma_del_device(struct kpc_dma_device *ldev)
 {
 	mutex_lock(&kpc_dma_mtx);
 	list_del(&ldev->list);
@@ -81,14 +81,14 @@ static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *at
 		ldev->desc_completed
 	);
 }
-DEVICE_ATTR(engine_regs, 0444, show_engine_regs, NULL);
+static DEVICE_ATTR(engine_regs, 0444, show_engine_regs, NULL);
 
 static const struct attribute *ndd_attr_list[] = {
 	&dev_attr_engine_regs.attr,
 	NULL,
 };
 
-struct class *kpc_dma_class;
+static struct class *kpc_dma_class;
 
 /**********  Platform Driver Functions  **********/
 static
@@ -196,7 +196,7 @@ int  kpc_dma_remove(struct platform_device *pldev)
 }
 
 /**********  Driver Functions  **********/
-struct platform_driver kpc_dma_plat_driver_i = {
+static struct platform_driver kpc_dma_plat_driver_i = {
 	.probe        = kpc_dma_probe,
 	.remove       = kpc_dma_remove,
 	.driver = {
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D70D8BB9
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 10:51:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5309D868C4;
	Wed, 16 Oct 2019 08:51:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cbi6TB5NJVqe; Wed, 16 Oct 2019 08:51:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 226BB85232;
	Wed, 16 Oct 2019 08:51:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D0BD41BF82B
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 08:50:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8CBE8203DD
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 08:50:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vqZpUhQuZ5DQ for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 08:50:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id C7685203CC
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 08:50:34 +0000 (UTC)
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 654FF79F726037B6E36F;
 Wed, 16 Oct 2019 16:50:29 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Wed, 16 Oct 2019
 16:50:21 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <TheSven73@gmail.com>, <gregkh@linuxfoundation.org>
Subject: [PATCH -next] staging: fieldbus: arcx-anybus:use
 devm_platform_ioremap_resource() to simplify code
Date: Wed, 16 Oct 2019 16:50:16 +0800
Message-ID: <20191016085016.23676-1-yuehaibing@huawei.com>
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

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/fieldbus/anybuss/arcx-anybus.c b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
index 2ecffa4..5b8d0ba 100644
--- a/drivers/staging/fieldbus/anybuss/arcx-anybus.c
+++ b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
@@ -127,12 +127,10 @@ static const struct regmap_config arcx_regmap_cfg = {
 static struct regmap *create_parallel_regmap(struct platform_device *pdev,
 					     int idx)
 {
-	struct resource *res;
 	void __iomem *base;
 	struct device *dev = &pdev->dev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, idx + 1);
-	base = devm_ioremap_resource(dev, res);
+	base = devm_platform_ioremap_resource(pdev, idx + 1);
 	if (IS_ERR(base))
 		return ERR_CAST(base);
 	return devm_regmap_init_mmio(dev, base, &arcx_regmap_cfg);
@@ -230,7 +228,6 @@ static int controller_probe(struct platform_device *pdev)
 	struct regulator_config config = { };
 	struct regulator_dev *regulator;
 	int err, id;
-	struct resource *res;
 	struct anybuss_host *host;
 	u8 status1, cap;
 
@@ -244,8 +241,7 @@ static int controller_probe(struct platform_device *pdev)
 		return PTR_ERR(cd->reset_gpiod);
 
 	/* CPLD control memory, sits at index 0 */
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	cd->cpld_base = devm_ioremap_resource(dev, res);
+	cd->cpld_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(cd->cpld_base)) {
 		dev_err(dev,
 			"failed to map cpld base address\n");
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

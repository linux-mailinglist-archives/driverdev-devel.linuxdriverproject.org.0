Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2223ED120D
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 17:06:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C17FA86990;
	Wed,  9 Oct 2019 15:06:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y5nY7NKgfYWy; Wed,  9 Oct 2019 15:06:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2AAE28698F;
	Wed,  9 Oct 2019 15:06:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B6CAB1BF371
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:05:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AD574883AC
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:05:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0dhdBG5DRnHy for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 15:05:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 69B1888395
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 15:05:57 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 88476E027C07F55D1EF4;
 Wed,  9 Oct 2019 23:05:53 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Wed, 9 Oct 2019
 23:05:44 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <carmeli.tamir@gmail.com>,
 <daniela.mormocea@gmail.com>, <payal.s.kshirsagar.98@gmail.com>,
 <sicilia.cristian@gmail.com>, <saiyamdoshi.in@gmail.com>,
 <nishadkamdar@gmail.com>
Subject: [PATCH -next] staging: emxx_udc: use devm_platform_ioremap_resource()
 to simplify code
Date: Wed, 9 Oct 2019 23:05:35 +0800
Message-ID: <20191009150535.6412-1-yuehaibing@huawei.com>
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
 drivers/staging/emxx_udc/emxx_udc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 147481b..9e0c19e 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -3078,7 +3078,6 @@ static int nbu2ss_drv_probe(struct platform_device *pdev)
 {
 	int	status = -ENODEV;
 	struct nbu2ss_udc	*udc;
-	struct resource *r;
 	int irq;
 	void __iomem *mmio_base;
 
@@ -3088,8 +3087,7 @@ static int nbu2ss_drv_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, udc);
 
 	/* require I/O memory and IRQ to be provided as resources */
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mmio_base = devm_ioremap_resource(&pdev->dev, r);
+	mmio_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mmio_base))
 		return PTR_ERR(mmio_base);
 
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

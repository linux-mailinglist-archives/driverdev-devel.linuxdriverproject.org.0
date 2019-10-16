Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 672B2D8BEA
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 10:56:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE4198763B;
	Wed, 16 Oct 2019 08:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hxus3Gu7UxWD; Wed, 16 Oct 2019 08:56:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 55D3987722;
	Wed, 16 Oct 2019 08:56:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA5351BF82B
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 08:56:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A727D86CF0
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 08:56:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mr9kEGRnML1K for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 08:56:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 86A0186CDC
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 08:56:43 +0000 (UTC)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 452EDFC2962ADAF91686;
 Wed, 16 Oct 2019 16:56:41 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Wed, 16 Oct 2019
 16:56:30 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <mripard@kernel.org>, <paul.kocialkowski@bootlin.com>,
 <mchehab@kernel.org>, <gregkh@linuxfoundation.org>, <wens@csie.org>
Subject: [PATCH -next] staging: media: cedrus: use
 devm_platform_ioremap_resource() to simplify code
Date: Wed, 16 Oct 2019 16:56:04 +0800
Message-ID: <20191016085604.21076-1-yuehaibing@huawei.com>
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/media/sunxi/cedrus/cedrus_hw.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
index a942cd9..f19b87c 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
@@ -146,7 +146,6 @@ static irqreturn_t cedrus_irq(int irq, void *data)
 int cedrus_hw_probe(struct cedrus_dev *dev)
 {
 	const struct cedrus_variant *variant;
-	struct resource *res;
 	int irq_dec;
 	int ret;
 
@@ -225,8 +224,7 @@ int cedrus_hw_probe(struct cedrus_dev *dev)
 		goto err_sram;
 	}
 
-	res = platform_get_resource(dev->pdev, IORESOURCE_MEM, 0);
-	dev->base = devm_ioremap_resource(dev->dev, res);
+	dev->base = devm_platform_ioremap_resource(dev->pdev, 0);
 	if (IS_ERR(dev->base)) {
 		dev_err(dev->dev, "Failed to map registers\n");
 
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

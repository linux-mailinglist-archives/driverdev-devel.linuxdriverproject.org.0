Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A47F627BE5E
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 09:49:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 44E8E86740;
	Tue, 29 Sep 2020 07:49:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CVEQjdIyqN0A; Tue, 29 Sep 2020 07:49:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4459383B2F;
	Tue, 29 Sep 2020 07:49:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B2671BF2CB
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 07:49:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 97BC185D52
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 07:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ttfJsgIHU4l2 for <devel@linuxdriverproject.org>;
 Tue, 29 Sep 2020 07:49:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C608E85C62
 for <devel@driverdev.osuosl.org>; Tue, 29 Sep 2020 07:49:43 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B4E6BE01A41B648043A0;
 Tue, 29 Sep 2020 15:49:39 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Tue, 29 Sep 2020 15:49:29 +0800
From: Jing Xiangfeng <jingxiangfeng@huawei.com>
To: <mchehab+huawei@kernel.org>, <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: mfd: hi6421-spmi-pmic: Fix error return in
 hi6421_spmi_pmic_probe()
Date: Tue, 29 Sep 2020 15:48:47 +0800
Message-ID: <20200929074847.47124-1-jingxiangfeng@huawei.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 jingxiangfeng@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix to return error code -ENOMEM from the error handling case instead
of 0.

Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 64b30d263c8d..4f34a5282970 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -262,8 +262,10 @@ static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
 	hi6421_spmi_pmic_irq_prc(pmic);
 
 	pmic->irqs = devm_kzalloc(dev, HISI_IRQ_NUM * sizeof(int), GFP_KERNEL);
-	if (!pmic->irqs)
+	if (!pmic->irqs) {
+		ret = -ENOMEM;
 		goto irq_malloc;
+	}
 
 	pmic->domain = irq_domain_add_simple(np, HISI_IRQ_NUM, 0,
 					     &hi6421_spmi_domain_ops, pmic);
-- 
2.26.0.106.g9fadedd

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

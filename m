Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5414C2B7B5F
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Nov 2020 11:34:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC19E87234;
	Wed, 18 Nov 2020 10:34:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hWDZOKoRtNHr; Wed, 18 Nov 2020 10:34:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 10752871C5;
	Wed, 18 Nov 2020 10:34:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F3FB1BF361
 for <devel@linuxdriverproject.org>; Wed, 18 Nov 2020 10:34:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 69661866CE
 for <devel@linuxdriverproject.org>; Wed, 18 Nov 2020 10:34:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id glo3r25opOZT for <devel@linuxdriverproject.org>;
 Wed, 18 Nov 2020 10:34:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1EA85841DA
 for <devel@driverdev.osuosl.org>; Wed, 18 Nov 2020 10:34:44 +0000 (UTC)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4CbfLl32pWz6wL4;
 Wed, 18 Nov 2020 18:34:23 +0800 (CST)
Received: from huawei.com (10.175.113.133) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Wed, 18 Nov 2020
 18:34:30 +0800
From: Wang Hai <wanghai38@huawei.com>
To: <mchehab+huawei@kernel.org>, <gregkh@linuxfoundation.org>,
 <mayulong1@huawei.com>
Subject: [PATCH] staging: mfd: hi6421-spmi-pmic: fix error return code in
 hi6421_spmi_pmic_probe()
Date: Wed, 18 Nov 2020 18:37:24 +0800
Message-ID: <20201118103724.57451-1-wanghai38@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.133]
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix to return a negative error code from the error handling
case instead of 0, as done elsewhere in this function.

Fixes: 4524ac56cdca ("staging: mfd: add a PMIC driver for HiSilicon 6421 SPMI version")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wang Hai <wanghai38@huawei.com>
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
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8E3245D83
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:12:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50FC987D0D;
	Mon, 17 Aug 2020 07:12:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cweqshlAuNEK; Mon, 17 Aug 2020 07:12:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D59087CD6;
	Mon, 17 Aug 2020 07:11:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E7A71BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 999E1203E6
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G85QUKRlEGTq for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id CF9EB21135
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8FB7022CA1;
 Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648277;
 bh=gEvx9Kx8KGAqN/e6R9fLDivnSIHXhkH+qz6V51q6op8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aXy2yY6f7J6QjpJOLJTEw85JDeViVkfKuh4VcQTS2KUkTGHvBl+y1mvfI9jzbFxts
 ML2Y0J/cXfcCOXTHB/SkY7XMBG4Ndl2LuDg0H6Wp5aI5Fxl3Dy5pt9ytNEsP/dEAzg
 iS3b7WXLCPT8/WBUrW9c1ZFLgfq1Bs7f6+G9JTQU=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIZ-00Bdk9-NJ; Mon, 17 Aug 2020 09:11:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 20/44] staging: mfd: hi6421-spmi-pmic: fix some coding
 style issues
Date: Mon, 17 Aug 2020 09:10:39 +0200
Message-Id: <84b53d20632c84cc60b8dadfe937f3c54b355cef.1597647359.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597647359.git.mchehab+huawei@kernel.org>
References: <cover.1597647359.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, mauro.chehab@huawei.com,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Checkpatch complains about some minor issues inside this
driver that were not addressed by the previous patch.

Address them.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 4 ++--
 include/linux/mfd/hi6421-spmi-pmic.h        | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 09cedfa1e4bb..d8b84d64041e 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -189,7 +189,7 @@ static struct irq_chip hi6421_spmi_pmu_irqchip = {
 };
 
 static int hi6421_spmi_irq_map(struct irq_domain *d, unsigned int virq,
-			irq_hw_number_t hw)
+			       irq_hw_number_t hw)
 {
 	struct hi6421_spmi_pmic *pmic = d->host_data;
 
@@ -350,7 +350,7 @@ static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
 	 * The logic below will rely that the pmic is already stored at
 	 * drvdata.
 	 */
-	dev_dbg(&pdev->dev, "SPMI-PMIC: adding childs for %pOF\n",
+	dev_dbg(&pdev->dev, "SPMI-PMIC: adding children for %pOF\n",
 		pdev->dev.of_node);
 	ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
 				   hi6421v600_devs, ARRAY_SIZE(hi6421v600_devs),
diff --git a/include/linux/mfd/hi6421-spmi-pmic.h b/include/linux/mfd/hi6421-spmi-pmic.h
index d12ad7484018..403fd8bb45fa 100644
--- a/include/linux/mfd/hi6421-spmi-pmic.h
+++ b/include/linux/mfd/hi6421-spmi-pmic.h
@@ -38,7 +38,7 @@ struct hi6421_spmi_pmic {
 	unsigned int				*irqs;
 	int					irqnum;
 	int					irqarray;
-	struct hi6421_spmi_irq_mask_info 	irq_mask_addr;
+	struct hi6421_spmi_irq_mask_info	irq_mask_addr;
 	struct hi6421_spmi_irq_info		irq_addr;
 };
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

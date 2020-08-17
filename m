Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF253245D7E
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:11:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E3F788193;
	Mon, 17 Aug 2020 07:11:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Zh7oNF1xggX; Mon, 17 Aug 2020 07:11:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 00C928807A;
	Mon, 17 Aug 2020 07:11:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 419371BF969
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3CE98203E6
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xUiPBSi-Wt4s for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 9706E204DB
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5362722BEF;
 Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648277;
 bh=UV1YfELGCgFxi/1ixDUOsZOV9Tr6nLf25G8A1Km/oY0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=O1KWfI1c8GkZQpqFjAzdZO1rN/JDmPQa/egdpmBv7yr52SQzQHm6ufMrxsKve0seC
 INKYlk3g7gVmGoXlcDQQqWZw80oDtUgoWrnXQKMB93AbtC3QLaN7sydECQ+RNVkn9g
 0DLiXYQL20PoLz8RbHHoiJ8fa4/WNHFlCXH2fqhk=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIZ-00Bdjw-Gk; Mon, 17 Aug 2020 09:11:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 16/44] staging: mfd: hi6421-spmi-pmic: change the binding
 logic
Date: Mon, 17 Aug 2020 09:10:35 +0200
Message-Id: <eb50392ce68bb30f64c603572cdb9c91f93ea47b.1597647359.git.mchehab+huawei@kernel.org>
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
Cc: mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 devel@driverdev.osuosl.org, linuxarm@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change the binding logic to ensure that the MFD driver
will be load after having the SPMI controller registered.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 84 +++++++--------------
 1 file changed, 29 insertions(+), 55 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index be42fed16bd2..939f7bd5d8ba 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -24,13 +24,14 @@
 #include <linux/err.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
+#include <linux/mfd/core.h>
 #include <linux/platform_device.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
 #include <linux/of_gpio.h>
 #include <linux/of_irq.h>
-#include <linux/mfd/hisi_pmic.h>
+#include <linux/mfd/hi6421-spmi-pmic.h>
 #include <linux/irq.h>
 #include <linux/spmi.h>
 #ifndef NO_IRQ
@@ -53,11 +54,8 @@
 /*define the first group interrupt register number*/
 #define HISI_PMIC_FIRST_GROUP_INT_NUM        2
 
-static const struct of_device_id of_hisi_pmic_match_tbl[] = {
-	{
-		.compatible = "hisilicon-hisi-pmic-spmi",
-	},
-	{ /* end */ }
+static const struct mfd_cell hi6421v600_devs[] = {
+	{ .name = "hi6421v600-regulator", },
 };
 
 /*
@@ -477,6 +475,22 @@ static int hisi_pmic_probe(struct spmi_device *pdev)
 		goto request_theaded_irq;
 	}
 
+	dev_set_drvdata(&pdev->dev, pmic);
+
+	/*
+	 * The logic below will rely that the pmic is already stored at
+	 * drvdata.
+	 */
+	dev_dbg(&pdev->dev, "SPMI-PMIC: adding childs for %pOF\n",
+		pdev->dev.of_node);
+	ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
+				   hi6421v600_devs, ARRAY_SIZE(hi6421v600_devs),
+				   NULL, 0, NULL);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to add child devices: %d\n", ret);
+		return ret;
+	}
+
 after_irq_register:
 	return 0;
 
@@ -497,61 +511,21 @@ static void hisi_pmic_remove(struct spmi_device *pdev)
 	devm_kfree(&pdev->dev, pmic);
 }
 
-static int hisi_pmic_suspend(struct device *dev, pm_message_t state)
-{
-	struct hisi_pmic *pmic = dev_get_drvdata(dev);
+static const struct of_device_id pmic_spmi_id_table[] = {
+	{ .compatible = "hisilicon,hi6421-spmi-pmic" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, pmic_spmi_id_table);
 
-	if (!pmic) {
-		pr_err("%s:pmic is NULL\n", __func__);
-		return -ENOMEM;
-	}
-
-	pr_info("%s:+\n", __func__);
-	pr_info("%s:-\n", __func__);
-
-	return 0;
-}
-
-static int hisi_pmic_resume(struct device *dev)
-{
-	struct hisi_pmic *pmic = dev_get_drvdata(dev);
-
-	if (!pmic) {
-		pr_err("%s:pmic is NULL\n", __func__);
-		return -ENOMEM;
-	}
-
-	pr_info("%s:+\n", __func__);
-	pr_info("%s:-\n", __func__);
-
-	return 0;
-}
-
-MODULE_DEVICE_TABLE(spmi, pmic_spmi_id);
 static struct spmi_driver hisi_pmic_driver = {
 	.driver = {
-		.name	= "hisi_pmic",
-		.owner  = THIS_MODULE,
-		.of_match_table = of_hisi_pmic_match_tbl,
-		.suspend = hisi_pmic_suspend,
-		.resume = hisi_pmic_resume,
+		.name	= "hi6421-spmi-pmic",
+		.of_match_table = pmic_spmi_id_table,
 	},
 	.probe	= hisi_pmic_probe,
 	.remove	= hisi_pmic_remove,
 };
+module_spmi_driver(hisi_pmic_driver);
 
-static int __init hisi_pmic_init(void)
-{
-	return spmi_driver_register(&hisi_pmic_driver);
-}
-
-static void __exit hisi_pmic_exit(void)
-{
-	spmi_driver_unregister(&hisi_pmic_driver);
-}
-
-subsys_initcall_sync(hisi_pmic_init);
-module_exit(hisi_pmic_exit);
-
-MODULE_DESCRIPTION("PMIC driver");
+MODULE_DESCRIPTION("HiSilicon Hi6421v600 SPMI PMIC driver");
 MODULE_LICENSE("GPL v2");
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

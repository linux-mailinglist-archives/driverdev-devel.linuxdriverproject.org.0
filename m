Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18035308DC3
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 20:52:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AEA3186A4A;
	Fri, 29 Jan 2021 19:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XXqV2IeBeeh6; Fri, 29 Jan 2021 19:52:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2085F86A5B;
	Fri, 29 Jan 2021 19:52:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 003381C1162
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 19:52:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EB6E887136
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1HS1jmraj8O8 for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3A677870DC
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5BB6664E14;
 Fri, 29 Jan 2021 19:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611949925;
 bh=FjjKdzLiLhgt9ZioBUd1+iLIfH3GlYVO6RxMRu/ARQ8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=l/xCPt/OB+49a+GjZsx9o3rVyeOdmbNT7q6PsUFS/VA7YQmaOydWx7xU7fo1MbXM6
 qTy/VxqLxaqnT4zFeNMVDOeLRq9/OWJdY+f08JUwLb/jC1HbEwgId5MIKn7o+AEzh0
 fHKZesEY9rsUJcKG46jhhlf6HikrbT7YEq/SWUTH56k/rkzge8V7D4/bSGxVRtkSPa
 INMpkLjUj18ZoBHo47iEKrZO1yxmvKSwqe+DIshfc63aUDe6R1rEP3/FIj/iNjv+dj
 1EjXjW89d1DU6gQLx29tW7TFAMzUnudEHriP+KpNUz7QCarea9S4z9wlJcwEql2c1B
 tbi4Pl11sIBTw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l5ZoJ-007Wji-25; Fri, 29 Jan 2021 20:52:03 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v8 04/14] staging: hikey9xx: hi6421-spmi-pmic: cleanup probe
 code
Date: Fri, 29 Jan 2021 20:51:50 +0100
Message-Id: <651b4053599b9f25efecac3b1d4ce6abce0bd097.1611949675.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611949675.git.mchehab+huawei@kernel.org>
References: <cover.1611949675.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Mayulong <mayulong1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleanup the error handling code, making the messages more
consistent and removing an uneeded call to free_irq().

While here, also remove debug messages and make the
error messages more consistent.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 50 +++++++--------------
 1 file changed, 16 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index a4ffeb06ed6a..c8e55b7b08e2 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -154,7 +154,7 @@ static void hi6421_spmi_pmic_irq_prc(struct hi6421_spmi_pmic *ddata)
 	}
 }
 
-static const struct regmap_config spmi_regmap_config = {
+static const struct regmap_config regmap_config = {
 	.reg_bits		= 16,
 	.val_bits		= 8,
 	.max_register		= 0xffff,
@@ -166,7 +166,6 @@ static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
 	struct hi6421_spmi_pmic *ddata;
-	struct regmap *map;
 	unsigned int virq;
 	int ret, i;
 
@@ -174,14 +173,13 @@ static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
 	if (!ddata)
 		return -ENOMEM;
 
-	map = devm_regmap_init_spmi_ext(pdev, &spmi_regmap_config);
-	if (IS_ERR(map))
-		return PTR_ERR(map);
+	ddata->regmap = devm_regmap_init_spmi_ext(pdev, &regmap_config);
+	if (IS_ERR(ddata->regmap))
+		return PTR_ERR(ddata->regmap);
 
 	spin_lock_init(&ddata->lock);
 
 	ddata->dev = dev;
-	ddata->regmap = map;
 
 	ddata->gpio = of_get_gpio(np, 0);
 	if (ddata->gpio < 0)
@@ -192,7 +190,7 @@ static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
 
 	ret = devm_gpio_request_one(dev, ddata->gpio, GPIOF_IN, "pmic");
 	if (ret < 0) {
-		dev_err(dev, "failed to request gpio%d\n", ddata->gpio);
+		dev_err(dev, "Failed to request gpio%d\n", ddata->gpio);
 		return ret;
 	}
 
@@ -201,57 +199,41 @@ static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
 	hi6421_spmi_pmic_irq_prc(ddata);
 
 	ddata->irqs = devm_kzalloc(dev, HISI_IRQ_NUM * sizeof(int), GFP_KERNEL);
-	if (!ddata->irqs) {
-		ret = -ENOMEM;
-		goto irq_malloc;
-	}
+	if (!ddata->irqs)
+		return -ENOMEM;
 
 	ddata->domain = irq_domain_add_simple(np, HISI_IRQ_NUM, 0,
 					     &hi6421_spmi_domain_ops, ddata);
 	if (!ddata->domain) {
-		dev_err(dev, "failed irq domain add simple!\n");
-		ret = -ENODEV;
-		goto irq_malloc;
+		dev_err(dev, "Failed to create IRQ domain\n");
+		return -ENODEV;
 	}
 
 	for (i = 0; i < HISI_IRQ_NUM; i++) {
 		virq = irq_create_mapping(ddata->domain, i);
 		if (!virq) {
-			dev_err(dev, "Failed mapping hwirq\n");
-			ret = -ENOSPC;
-			goto irq_malloc;
+			dev_err(dev, "Failed to map H/W IRQ\n");
+			return -ENOSPC;
 		}
 		ddata->irqs[i] = virq;
-		dev_dbg(dev, "%s: ddata->irqs[%d] = %d\n",
-			__func__, i, ddata->irqs[i]);
 	}
 
 	ret = request_threaded_irq(ddata->irq, hi6421_spmi_irq_handler, NULL,
 				   IRQF_TRIGGER_LOW | IRQF_SHARED | IRQF_NO_SUSPEND,
 				   "pmic", ddata);
 	if (ret < 0) {
-		dev_err(dev, "could not claim pmic IRQ: error %d\n", ret);
-		goto irq_malloc;
+		dev_err(dev, "Failed to start IRQ handling thread: error %d\n",
+			ret);
+		return ret;
 	}
 
 	dev_set_drvdata(&pdev->dev, ddata);
 
-	/*
-	 * The logic below will rely that the ddata is already stored at
-	 * drvdata.
-	 */
-	dev_dbg(&pdev->dev, "SPMI-PMIC: adding children for %pOF\n",
-		pdev->dev.of_node);
 	ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
 				   hi6421v600_devs, ARRAY_SIZE(hi6421v600_devs),
 				   NULL, 0, NULL);
-	if (!ret)
-		return 0;
-
-	dev_err(dev, "Failed to add child devices: %d\n", ret);
-
-irq_malloc:
-	free_irq(ddata->irq, ddata);
+	if (ret < 0)
+		dev_err(dev, "Failed to add child devices: %d\n", ret);
 
 	return ret;
 }
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

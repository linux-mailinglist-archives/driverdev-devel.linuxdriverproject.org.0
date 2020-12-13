Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4F02D8E2E
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 16:13:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DC32720442;
	Sun, 13 Dec 2020 15:13:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XUN8cH+UeTmX; Sun, 13 Dec 2020 15:13:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 713FA2042E;
	Sun, 13 Dec 2020 15:12:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ABB9F1BF29E
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 15:12:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9F28985C4F
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 15:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i6w83zpio5DN for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 15:11:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.smtpout.orange.fr (smtp02.smtpout.orange.fr
 [80.12.242.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5D4EB84FA5
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 15:11:11 +0000 (UTC)
Received: from localhost.localdomain ([93.23.12.208]) by mwinf5d78 with ME
 id 3rB5240064VKWNM03rB5ND; Sun, 13 Dec 2020 16:11:07 +0100
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 13 Dec 2020 16:11:07 +0100
X-ME-IP: 93.23.12.208
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: mchehab+huawei@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: spmi: hisi-spmi-controller: Fix some error handling
 paths
Date: Sun, 13 Dec 2020 16:11:05 +0100
Message-Id: <20201213151105.137731-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.27.0
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
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

IN the probe function, if an error occurs after calling
'spmi_controller_alloc()', it must be undone by a corresponding
'spmi_controller_put() call.

In the remove function, use 'spmi_controller_put(ctrl)' instead of
'kfree(ctrl)'.

While a it fix an error message
(s/spmi_add_controller/spmi_controller_add/)

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 .../staging/hikey9xx/hisi-spmi-controller.c   | 21 +++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
index 861aedd5de48..0d42bc65f39b 100644
--- a/drivers/staging/hikey9xx/hisi-spmi-controller.c
+++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
@@ -278,21 +278,24 @@ static int spmi_controller_probe(struct platform_device *pdev)
 	iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	if (!iores) {
 		dev_err(&pdev->dev, "can not get resource!\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto err_put_controller;
 	}
 
 	spmi_controller->base = devm_ioremap(&pdev->dev, iores->start,
 					     resource_size(iores));
 	if (!spmi_controller->base) {
 		dev_err(&pdev->dev, "can not remap base addr!\n");
-		return -EADDRNOTAVAIL;
+		ret = -EADDRNOTAVAIL;
+		goto err_put_controller;
 	}
 
 	ret = of_property_read_u32(pdev->dev.of_node, "spmi-channel",
 				   &spmi_controller->channel);
 	if (ret) {
 		dev_err(&pdev->dev, "can not get channel\n");
-		return -ENODEV;
+		ret = -ENODEV;
+		goto err_put_controller;
 	}
 
 	platform_set_drvdata(pdev, spmi_controller);
@@ -309,9 +312,15 @@ static int spmi_controller_probe(struct platform_device *pdev)
 	ctrl->write_cmd = spmi_write_cmd;
 
 	ret = spmi_controller_add(ctrl);
-	if (ret)
-		dev_err(&pdev->dev, "spmi_add_controller failed with error %d!\n", ret);
+	if (ret) {
+		dev_err(&pdev->dev, "spmi_controller_add failed with error %d!\n", ret);
+		goto err_put_controller;
+	}
+
+	return 0;
 
+err_put_controller:
+	spmi_controller_put(ctrl);
 	return ret;
 }
 
@@ -320,7 +329,7 @@ static int spmi_del_controller(struct platform_device *pdev)
 	struct spmi_controller *ctrl = platform_get_drvdata(pdev);
 
 	spmi_controller_remove(ctrl);
-	kfree(ctrl);
+	spmi_controller_put(ctrl);
 	return 0;
 }
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D9F2961FF
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 17:59:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D44BF8761E;
	Thu, 22 Oct 2020 15:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p7+nOelPdDbs; Thu, 22 Oct 2020 15:59:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2559875EB;
	Thu, 22 Oct 2020 15:59:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 584D11BF239
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 15:59:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5520486B28
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 15:59:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KrsZLNV1lZDk for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 15:59:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A4382875A2
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 15:59:11 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 41DD3AC23;
 Thu, 22 Oct 2020 15:59:10 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v2 04/10] reset: raspberrypi: Release firmware handle on unbind
Date: Thu, 22 Oct 2020 17:58:51 +0200
Message-Id: <20201022155858.20867-5-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022155858.20867-1-nsaenzjulienne@suse.de>
References: <20201022155858.20867-1-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org, f.fainelli@gmail.com,
 devicetree@vger.kernel.org, sboyd@kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, dmitry.torokhov@gmail.com,
 linux-gpio@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, linux-input@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Upon unbinding the device make sure we release RPi's firmware interface.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/reset/reset-raspberrypi.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/reset/reset-raspberrypi.c b/drivers/reset/reset-raspberrypi.c
index 02f59c06f69b..29311192e2c9 100644
--- a/drivers/reset/reset-raspberrypi.c
+++ b/drivers/reset/reset-raspberrypi.c
@@ -99,7 +99,17 @@ static int rpi_reset_probe(struct platform_device *pdev)
 	priv->rcdev.ops = &rpi_reset_ops;
 	priv->rcdev.of_node = dev->of_node;
 
-	return devm_reset_controller_register(dev, &priv->rcdev);
+	return reset_controller_register(&priv->rcdev);
+}
+
+static int rpi_reset_remove(struct platform_device *pdev)
+{
+	struct rpi_reset *priv = platform_get_drvdata(pdev);
+
+	reset_controller_unregister(&priv->rcdev);
+	rpi_firmware_put(priv->fw);
+
+	return 0;
 }
 
 static const struct of_device_id rpi_reset_of_match[] = {
@@ -110,6 +120,7 @@ MODULE_DEVICE_TABLE(of, rpi_reset_of_match);
 
 static struct platform_driver rpi_reset_driver = {
 	.probe	= rpi_reset_probe,
+	.remove	= rpi_reset_remove,
 	.driver	= {
 		.name = "raspberrypi-reset",
 		.of_match_table = rpi_reset_of_match,
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 525392C1344
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 19:39:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3118E8705B;
	Mon, 23 Nov 2020 18:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vmXapROjLNRr; Mon, 23 Nov 2020 18:38:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7FED68702C;
	Mon, 23 Nov 2020 18:38:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 15ED01BF97F
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 18:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0E77C87019
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 18:38:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pDOtdk4TObCM for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 18:38:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2AC4A8701F
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 18:38:49 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id B9527ACA2;
 Mon, 23 Nov 2020 18:38:47 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: u.kleine-koenig@pengutronix.de,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 06/11] soc: bcm: raspberrypi-power: Release firmware handle
 on unbind
Date: Mon, 23 Nov 2020 19:38:27 +0100
Message-Id: <20201123183833.18750-7-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201123183833.18750-1-nsaenzjulienne@suse.de>
References: <20201123183833.18750-1-nsaenzjulienne@suse.de>
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
 linux-gpio@vger.kernel.org, andy.shevchenko@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-input@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, bgolaszewski@baylibre.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use devm_rpi_firmware_get() so as to make sure we release RPi's firmware
interface when unbinding the device.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

---

Changes since v2:
 - Use devm_rpi_firmware_get(), instead of remove function

 drivers/soc/bcm/raspberrypi-power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/bcm/raspberrypi-power.c b/drivers/soc/bcm/raspberrypi-power.c
index 5d1aacdd84ef..068715d6e66d 100644
--- a/drivers/soc/bcm/raspberrypi-power.c
+++ b/drivers/soc/bcm/raspberrypi-power.c
@@ -177,7 +177,7 @@ static int rpi_power_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
-	rpi_domains->fw = rpi_firmware_get(fw_np);
+	rpi_domains->fw = devm_rpi_firmware_get(&pdev->dev, fw_np);
 	of_node_put(fw_np);
 	if (!rpi_domains->fw)
 		return -EPROBE_DEFER;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9335625B258
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 18:59:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 870532D8B7;
	Wed,  2 Sep 2020 16:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9oM7szhvbzqi; Wed,  2 Sep 2020 16:59:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0CD8922F05;
	Wed,  2 Sep 2020 16:59:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E938F1BF30C
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:58:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E3C9B86F6B
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:58:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dF39CVUuJy0K for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 16:58:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EB75D86F66
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 16:58:57 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1kDW60-0000nm-OI; Wed, 02 Sep 2020 16:58:52 +0000
From: Colin King <colin.king@canonical.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH][next] staging: media: atomisp: fix memory leak of object flash
Date: Wed,  2 Sep 2020 17:58:52 +0100
Message-Id: <20200902165852.201155-1-colin.king@canonical.com>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

In the case where the call to lm3554_platform_data_func returns an
error there is a memory leak on the error return path of object
flash.  Fix this by adding an error return path that will free
flash and rename labels fail2 to fail3 and fail1 to fail2.

Fixes: 9289cdf39992 ("staging: media: atomisp: Convert to GPIO descriptors")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 .../media/atomisp/i2c/atomisp-lm3554.c        | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
index 7ca7378b1859..5516c98f63bc 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
@@ -843,8 +843,10 @@ static int lm3554_probe(struct i2c_client *client)
 		return -ENOMEM;
 
 	flash->pdata = lm3554_platform_data_func(client);
-	if (IS_ERR(flash->pdata))
-		return PTR_ERR(flash->pdata);
+	if (IS_ERR(flash->pdata)) {
+		err = PTR_ERR(flash->pdata);
+		goto fail1;
+	}
 
 	v4l2_i2c_subdev_init(&flash->sd, client, &lm3554_ops);
 	flash->sd.internal_ops = &lm3554_internal_ops;
@@ -856,7 +858,7 @@ static int lm3554_probe(struct i2c_client *client)
 				   ARRAY_SIZE(lm3554_controls));
 	if (ret) {
 		dev_err(&client->dev, "error initialize a ctrl_handler.\n");
-		goto fail2;
+		goto fail3;
 	}
 
 	for (i = 0; i < ARRAY_SIZE(lm3554_controls); i++)
@@ -865,14 +867,14 @@ static int lm3554_probe(struct i2c_client *client)
 
 	if (flash->ctrl_handler.error) {
 		dev_err(&client->dev, "ctrl_handler error.\n");
-		goto fail2;
+		goto fail3;
 	}
 
 	flash->sd.ctrl_handler = &flash->ctrl_handler;
 	err = media_entity_pads_init(&flash->sd.entity, 0, NULL);
 	if (err) {
 		dev_err(&client->dev, "error initialize a media entity.\n");
-		goto fail1;
+		goto fail2;
 	}
 
 	flash->sd.entity.function = MEDIA_ENT_F_FLASH;
@@ -884,14 +886,15 @@ static int lm3554_probe(struct i2c_client *client)
 	err = lm3554_gpio_init(client);
 	if (err) {
 		dev_err(&client->dev, "gpio request/direction_output fail");
-		goto fail2;
+		goto fail3;
 	}
 	return atomisp_register_i2c_module(&flash->sd, NULL, LED_FLASH);
-fail2:
+fail3:
 	media_entity_cleanup(&flash->sd.entity);
 	v4l2_ctrl_handler_free(&flash->ctrl_handler);
-fail1:
+fail2:
 	v4l2_device_unregister_subdev(&flash->sd);
+fail1:
 	kfree(flash);
 
 	return err;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

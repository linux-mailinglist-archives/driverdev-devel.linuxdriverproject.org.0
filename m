Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 892FC29124C
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Oct 2020 16:17:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DA042204F3;
	Sat, 17 Oct 2020 14:17:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JCcWyhEN1a1O; Sat, 17 Oct 2020 14:17:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 18396204E3;
	Sat, 17 Oct 2020 14:17:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DDE81BF35A
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 14:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 960A488400
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 14:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rTTSnJpUtHOz for <devel@linuxdriverproject.org>;
 Sat, 17 Oct 2020 14:17:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B460E8834C
 for <devel@driverdev.osuosl.org>; Sat, 17 Oct 2020 14:17:13 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id i1so6631141wro.1
 for <devel@driverdev.osuosl.org>; Sat, 17 Oct 2020 07:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NKKahgVQmXfUfXn2BJolmwRQuha3ZmdJxDzKc1VCVmQ=;
 b=eTwx8zBdr7F71FpfenryEIdDs0d5iD9bUkKMoScyMIk6nqwS3cN4aLh3wpDG8C00hB
 k7q+Y2fmW7phsC9Rv1jkftePn1sFn1PCk6iqSRMa5Uvvk2f7GSJOqUXa953Veb7Gj5sg
 adxRgyf1JHgC8ISaaBkmmxwMhFn4GBom5k8FDe+lsgBfTyaPj/KX5+YVt5OWFtAKXm7+
 mwo/40UH4W2c2jQL2FHz9yHXSb1DK8SZW1n+9fr/GsMaug+OEp9JGrzfLzjXOOLXgPtG
 3J1fz0V5K3bkVv7cOfnqwrptsHjAgswxBYgK8RZSOaBR/N8e+6OaUQA9+mL9OMkhanWM
 U1TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NKKahgVQmXfUfXn2BJolmwRQuha3ZmdJxDzKc1VCVmQ=;
 b=ZeGN6ZHbm/FE6Q0LbcTi/uNgmIVgZl66MY/eUOYDwc/scl/tobgiuLmRmvPCI7Kc8d
 boR/sIoFs3CLuabf78wBDFjyHa5XXFNWBxKQ3xWIYMJgWe1Wn2EIoeiK5poTUOKXsza2
 cizAuTBSiu9MkLqXDCOwrkrq9FZUxkFGkwodYLJAP4QOzUqOruB7emhBXQSxEdOVP4Oh
 +1wCAiBpw5lLrFoYKjvLzjGh0h/Xd6ZI0Y8Qzo1Etx/+/yM9nTxOsdpd6MWoYQt9J8ij
 JNLNsN9ec+nfmciLD+Zy77ZqMCFCs2q1EQ2M+TvK+J/ZOVtrVqSNMOyehQXnxqUHoD/p
 DQkA==
X-Gm-Message-State: AOAM5303GR8g3ik1X6D0iEECQx3G5Z+MUVxX0msqx83AXhng6o272Azt
 spyDvnm4lKrAHMJbQKW1lbQ=
X-Google-Smtp-Source: ABdhPJyfWG1M3WdUMt8v9+xHg5aNTQLHvpE1TfarKBtyVNOkRFgeFW4VI72JI5viii1Vg54/tEbmBA==
X-Received: by 2002:a5d:5344:: with SMTP id t4mr9985952wrv.267.1602944232120; 
 Sat, 17 Oct 2020 07:17:12 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id i33sm9130623wri.79.2020.10.17.07.17.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Oct 2020 07:17:11 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: mchehab@kernel.org
Subject: [PATCH 1/3] staging: media: atomisp: Fix error path in lm3554_probe()
Date: Sat, 17 Oct 2020 15:09:46 +0100
Message-Id: <20201017140950.15989-4-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201017140950.15989-1-alex.dewar90@gmail.com>
References: <20201017140950.15989-1-alex.dewar90@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org,
 Alex Dewar <alex.dewar90@gmail.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Alan Cox <alan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The error path for lm3554_probe() contains a number of bugs, including:
 * resource leaks
 * jumping to error labels out of sequence
 * not setting the return value appropriately

Fix it up and give the labels more memorable names.

This issue has existed since the code was originally contributed in
commit a49d25364dfb ("staging/atomisp: Add support for the Intel IPU v2"),
although the code was subsequently removed altogether and then
reinstated with commit ad85094b293e ("Revert "media: staging: atomisp: Remove driver"").

Addresses-Coverity: 1496802 ("Resource leaks")
Fixes: a49d25364dfb ("staging/atomisp: Add support for the Intel IPU v2")
Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
---
v5: Check for error, not success (Dan), but do it correctly cf. v4 :)
v4: Rebase
v3: No changes
v2: Fix a couple more leaks on error path (Dan)

 .../media/atomisp/i2c/atomisp-lm3554.c        | 55 +++++++++++--------
 1 file changed, 32 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
index 7ca7378b1859..b38df022f880 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
@@ -833,7 +833,6 @@ static void *lm3554_platform_data_func(struct i2c_client *client)
 
 static int lm3554_probe(struct i2c_client *client)
 {
-	int err = 0;
 	struct lm3554 *flash;
 	unsigned int i;
 	int ret;
@@ -843,36 +842,38 @@ static int lm3554_probe(struct i2c_client *client)
 		return -ENOMEM;
 
 	flash->pdata = lm3554_platform_data_func(client);
-	if (IS_ERR(flash->pdata))
-		return PTR_ERR(flash->pdata);
+	if (IS_ERR(flash->pdata)) {
+		ret = PTR_ERR(flash->pdata);
+		goto err_free_flash;
+	}
 
 	v4l2_i2c_subdev_init(&flash->sd, client, &lm3554_ops);
 	flash->sd.internal_ops = &lm3554_internal_ops;
 	flash->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 	flash->mode = ATOMISP_FLASH_MODE_OFF;
 	flash->timeout = LM3554_MAX_TIMEOUT / LM3554_TIMEOUT_STEPSIZE - 1;
-	ret =
-	    v4l2_ctrl_handler_init(&flash->ctrl_handler,
-				   ARRAY_SIZE(lm3554_controls));
+	ret = v4l2_ctrl_handler_init(&flash->ctrl_handler,
+				     ARRAY_SIZE(lm3554_controls));
 	if (ret) {
-		dev_err(&client->dev, "error initialize a ctrl_handler.\n");
-		goto fail2;
+		dev_err(&client->dev, "error initializing ctrl_handler");
+		goto err_unregister_sd;
 	}
 
 	for (i = 0; i < ARRAY_SIZE(lm3554_controls); i++)
 		v4l2_ctrl_new_custom(&flash->ctrl_handler, &lm3554_controls[i],
 				     NULL);
 
-	if (flash->ctrl_handler.error) {
-		dev_err(&client->dev, "ctrl_handler error.\n");
-		goto fail2;
+	ret = flash->ctrl_handler.error;
+	if (ret) {
+		dev_err(&client->dev, "ctrl_handler error");
+		goto err_free_ctrl_handler;
 	}
 
 	flash->sd.ctrl_handler = &flash->ctrl_handler;
-	err = media_entity_pads_init(&flash->sd.entity, 0, NULL);
-	if (err) {
-		dev_err(&client->dev, "error initialize a media entity.\n");
-		goto fail1;
+	ret = media_entity_pads_init(&flash->sd.entity, 0, NULL);
+	if (ret) {
+		dev_err(&client->dev, "error initializing media entity");
+		goto err_free_ctrl_handler;
 	}
 
 	flash->sd.entity.function = MEDIA_ENT_F_FLASH;
@@ -881,20 +882,28 @@ static int lm3554_probe(struct i2c_client *client)
 
 	timer_setup(&flash->flash_off_delay, lm3554_flash_off_delay, 0);
 
-	err = lm3554_gpio_init(client);
-	if (err) {
+	ret = lm3554_gpio_init(client);
+	if (ret) {
 		dev_err(&client->dev, "gpio request/direction_output fail");
-		goto fail2;
+		goto err_del_timer;
 	}
-	return atomisp_register_i2c_module(&flash->sd, NULL, LED_FLASH);
-fail2:
+
+	ret = atomisp_register_i2c_module(&flash->sd, NULL, LED_FLASH);
+	if (ret)
+		goto err_del_timer;
+
+	return 0;
+
+err_del_timer:
+	del_timer_sync(&flash->flash_off_delay);
 	media_entity_cleanup(&flash->sd.entity);
+err_free_ctrl_handler:
 	v4l2_ctrl_handler_free(&flash->ctrl_handler);
-fail1:
+err_unregister_sd:
 	v4l2_device_unregister_subdev(&flash->sd);
+err_free_flash:
 	kfree(flash);
-
-	return err;
+	return ret;
 }
 
 static int lm3554_remove(struct i2c_client *client)
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7629C273543
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 23:54:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 26DB085886;
	Mon, 21 Sep 2020 21:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zutM59fFQQQQ; Mon, 21 Sep 2020 21:54:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 925DC857BF;
	Mon, 21 Sep 2020 21:54:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 92BBF1BF336
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:54:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8BEE185886
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:54:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 31Xc-3bxBuBW for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 21:54:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 21011857BF
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 21:54:38 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id x14so14531678wrl.12
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 14:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=PaPRo0XlQ3Tqwwdz0cCFZ//U/ydF76ExJKyjshRmBL8=;
 b=mQUGkUWQXgqJEx41Ikk5Hdh7OPWSBXJZuQRhZ573ys5Jn+iXZng7yrOfOJdle52rq6
 WCjDXE+d0JTrgWfcWYzco+9iZy1HiqbWrJ1afABFQMAPIgn6g4sx4UNyWaLO6oTSeScI
 ysLB2YvjfZKPrk4aP+t1b+kZGbQpqlOPWQ0wC7RKH5mkTG6/wOhwgM4xs4jPkizGYByR
 eSP3tzX0t59A6+6wGR8cia4SHmqYuenVKkiTWttPHaqhQNnvGuCT69HGf+kzUsb7LVPq
 nFvJN+A0y6niiO9CDkISYt6BWMJc6H56DuZ92LRJXN6j9tI5y+3+Tk8eUygv0idkc2mn
 WyJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PaPRo0XlQ3Tqwwdz0cCFZ//U/ydF76ExJKyjshRmBL8=;
 b=ZWpTNReRmVZ1hX9NvFhMkeusVIdbYgrMsZJrgMu692w6P6psJwEP3/LHwDqjeEudQl
 0ImAhOKzhbCpXYJArJxRBZcH5VLjl46/Gr7MromOlnfTUG+bT3Mh0vkym13G5Fx/Y343
 yP8MZYOkeOCVuwNSQA3D+C+xrfZRn3qaaiTq+kFuLne9aKZ09tVeu4cZot8Xlg3f+mN8
 vGcv1zgiIzpOyDQKDo4NrJ4PCx5pGEBJ66a+Ax6RvAwIFDXlcEg1KDG3b1sj7LluDBvC
 9rxeypfD//6PVshqOTmXHMPA3U0oblvC51vs3ho/UdcJai1Hj/gEUm1HadkuY0NQip93
 TruA==
X-Gm-Message-State: AOAM530V4FG8PgT95ar2fO/v2fEO1qLIeZ+VxHY5hGXPL7/jvVNlKRtP
 V4tsSAXudpd7wkV1lNFFLoU=
X-Google-Smtp-Source: ABdhPJwOrXQsNVkLMNJRRUIBZMRIVAg+clona6i8/KWzTK0i1abl4qfa8y4dIMttSgtqUWMSYcL6BQ==
X-Received: by 2002:adf:dcd1:: with SMTP id x17mr1983338wrm.150.1600725276670; 
 Mon, 21 Sep 2020 14:54:36 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id t124sm1282200wmg.31.2020.09.21.14.54.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 14:54:36 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Dewar <alex.dewar90@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Alan Cox <alan@linux.intel.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH RESEND 1/5] staging: media: atomisp: Fix error path in
 lm3554_probe()
Date: Mon, 21 Sep 2020 22:53:51 +0100
Message-Id: <20200921215359.45003-2-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200921215359.45003-1-alex.dewar90@gmail.com>
References: <20200921215359.45003-1-alex.dewar90@gmail.com>
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
 .../media/atomisp/i2c/atomisp-lm3554.c        | 53 +++++++++++--------
 1 file changed, 30 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
index 7ca7378b1859..cca10a4c2db0 100644
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
@@ -881,20 +882,26 @@ static int lm3554_probe(struct i2c_client *client)
 
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
+	if (!ret)
+		return 0;
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC8A273E1C
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 11:09:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E33E587262;
	Tue, 22 Sep 2020 09:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c4Z6rYMMBmHS; Tue, 22 Sep 2020 09:09:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 41D7F87248;
	Tue, 22 Sep 2020 09:09:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2046F1BF25F
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 09:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 16AD222843
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 09:09:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W8vJhYQHsiu6 for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 09:09:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 43D9C2263C
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 09:09:31 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id a9so2525125wmm.2
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 02:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=L/ZWeHl6g9bUEvH+gQEPwLwoUq+BztRlCjrFqFnljXk=;
 b=g0ztxOEMt/jmegCCvzJU/6SWUYqIzblEoxWWUZ+5c3gww4z/Z1xoq92CV4flM3R2QN
 IdqCKOy1Op357euSOS5rPksXkrWrvvd9IZRBG49vjuIo5TBnhW5Hbj9uQg5HTSWyrZK+
 92L9AoksxZ0wYR6B1a73F/cmBTZbXbosv3jnh4mXHGx26QBCV1z6c5aoVVKt6aP059CS
 /7WYqn0NiJUdfmIGBwmyJjaO3QMAup/LfO+dZLtjYvf7HT2tZI7tVX85s/Nzu1yxjYon
 EtpfYqzXvbGGdUlXv1JDVH/6jiVe72SY9UCM9Yz4NEyn3pE82tR/bsqX5aGAvdYPS0eU
 DHDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L/ZWeHl6g9bUEvH+gQEPwLwoUq+BztRlCjrFqFnljXk=;
 b=eXu36bUx44pdYt0AUVr96Fj3RsaMuHmWhW6RbJKNbJS+j2OBE8UYNwqWlO/xucpLIt
 /ZDQuY4xQ+ohUR1wHn4uRgSwnT+c2SDoxAvEzv5kuBy2qYJhXdO/n8VYkKQi0VE2/LTs
 VKcKeGeL2bsjK5Fyc/1fmesVjErebZwjnY9kstsCoYKCvQBFQtflOhSMU9poTQ9exmQ9
 MRdM1Aly4afWY2RKBQxK5/g1eTm//luFijtGGA9B8O8JCLRBnaRZ9T+1lOIgxvOp/m4A
 6xB2EpgMHZs1YkZX3kpf9+mbwai2EwR7LcGpoCGuK3G3FoZH8pFJedCoY0Mzlf8hIVD9
 vWqQ==
X-Gm-Message-State: AOAM533ZJ3t+3/n7Da2nk7NGyO0WVfthZML/KQK7VMoraCPIIbzKoHjx
 7/ljUcWNKt9Fkg8cTNVk/uQ=
X-Google-Smtp-Source: ABdhPJxtd4d7v+unZk6JNUqW3InJ4pYveO61JlckrtqdlXfDjo6tzPjRA3tCQ57oJIX48ktf+qShTA==
X-Received: by 2002:a7b:c0c5:: with SMTP id s5mr3385881wmh.152.1600765769668; 
 Tue, 22 Sep 2020 02:09:29 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id u186sm3659332wmu.34.2020.09.22.02.09.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 02:09:29 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Dewar <alex.dewar90@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Alan Cox <alan@linux.intel.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH REBASE 1/3] staging: media: atomisp: Fix error path in
 lm3554_probe()
Date: Tue, 22 Sep 2020 10:09:08 +0100
Message-Id: <20200922090914.20702-2-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200922090914.20702-1-alex.dewar90@gmail.com>
References: <21f18dc2-a1bc-0a37-0336-fc35170a40e9@gmail.com>
 <20200922090914.20702-1-alex.dewar90@gmail.com>
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
 .../media/atomisp/i2c/atomisp-lm3554.c        | 48 +++++++++++--------
 1 file changed, 27 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
index 809010af7855..67e62b96adf9 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
@@ -847,7 +847,6 @@ static void *lm3554_platform_data_func(struct i2c_client *client)
 
 static int lm3554_probe(struct i2c_client *client)
 {
-	int err = 0;
 	struct lm3554 *flash;
 	unsigned int i;
 	int ret;
@@ -863,28 +862,28 @@ static int lm3554_probe(struct i2c_client *client)
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
@@ -893,20 +892,27 @@ static int lm3554_probe(struct i2c_client *client)
 
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
+		return ret;
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC678273551
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 23:55:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0E7C52150A;
	Mon, 21 Sep 2020 21:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B+LblfpElK4Q; Mon, 21 Sep 2020 21:55:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7EBDF20C41;
	Mon, 21 Sep 2020 21:55:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82C101BF336
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:55:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 74692207A2
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:55:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UxFKvexIFOFU for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 21:55:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 77B032079A
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 21:55:37 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id g4so14558305wrs.5
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 14:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=t6IkKnXa5tIfj0pEtiHch/id+y7KfUWCLs3pBM4+7Bw=;
 b=PINJawvQ9e9dquFTGr3zZx+5fm9L2BiwpAHxL74wVdUTWTQ89n3Kvz10/lWMYxqiY2
 xBYnD7L8FxZ7/R4caI6NUzLRu/mjXbSxlQ72Hg7c9skBQon3JaNsZZ/dZ+iUT7oUPUae
 P4zBqty9tOvDZEI/SBo72+1RWJPm9O/4e1ijPOi/4NA2qPOCP1C1B9VMaaLMzLo4nMFp
 6l/zp3Nl6a4SrEDiRFVU4FKXHIOl0+CeAbivhoM38DO6prMPg0bVyjEJpxCIfai6RV6L
 LBwSDQNcgoa/J4ukll6YHth/9asvcPFtlOsUUa42kCDDOtBAJCqq+8exPpT/Egr2rBQH
 pU1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t6IkKnXa5tIfj0pEtiHch/id+y7KfUWCLs3pBM4+7Bw=;
 b=Ya+7qVG1NMk8+SnqBIB5sObXkwWD9c0KS2D3VPHoS126K9Bbn3xIoZ1xQgzK1FkN3Q
 XAcgDFTPIrjSL4AqiQepCU+J+VaBVxyB831hBnnkZy98VffyxK+X74eWZFv+rfaiO4n8
 2pFBZK9ADXjXGLrsuUgkV6CFq3ox2p4pvD3Uz7NoaWQmTCY9CD9/qGgptrrCx9wgxhxH
 NtB97gSlA7PuI/1bEOsyIapjcE2ZD/T87pRDhMWXKdYF4E/ss9fylj7ghP7eeaHMBZGA
 CqtqwrQMwPpxMaVIh98IlJICyXx8KhPF7Wfdj4ia9DyI8eNGihvhhm2fXi2YK8elXusF
 puUQ==
X-Gm-Message-State: AOAM5314Su2DzK2lYbmzp3cd+JrD70flBdsrCjFcBOIQ9whcAwJ11vt6
 UUtqOCU0KjAlk+0hiLBJzkU=
X-Google-Smtp-Source: ABdhPJwWDNjkSOFG5QNhQ+EcOhRxbhHygXIASP2+2Z2iIZMH8zrj0Y480HY7ngQKNF4hGEBQ7ZqT6A==
X-Received: by 2002:adf:ef4f:: with SMTP id c15mr1994655wrp.390.1600725335846; 
 Mon, 21 Sep 2020 14:55:35 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id t124sm1282200wmg.31.2020.09.21.14.55.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 14:55:35 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Dewar <alex.dewar90@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Alan Cox <alan@linux.intel.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH RESEND 4/5] staging: media: atomisp: Don't abort on error in
 module exit path
Date: Mon, 21 Sep 2020 22:53:57 +0100
Message-Id: <20200921215359.45003-5-alex.dewar90@gmail.com>
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

The function lm3554_remove() checks for the return code for
lm3554_gpio_uninit() even though this is on the exit path and exits the
function, leaving the variable flash unfreed. Instead, print a warning and
free flash unconditionally.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 .../staging/media/atomisp/i2c/atomisp-lm3554.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
index d78014847e67..d446ee8e93db 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
@@ -782,7 +782,7 @@ static int lm3554_gpio_init(struct i2c_client *client)
 	return 0;
 }
 
-static int lm3554_gpio_uninit(struct i2c_client *client)
+static void lm3554_gpio_uninit(struct i2c_client *client)
 {
 	struct v4l2_subdev *sd = i2c_get_clientdata(client);
 	struct lm3554 *flash = to_lm3554(sd);
@@ -791,13 +791,13 @@ static int lm3554_gpio_uninit(struct i2c_client *client)
 
 	ret = gpiod_direction_output(pdata->gpio_strobe, 0);
 	if (ret < 0)
-		return ret;
+		dev_err(&client->dev,
+			"gpio request/direction_output fail for gpio_strobe");
 
 	ret = gpiod_direction_output(pdata->gpio_reset, 0);
 	if (ret < 0)
-		return ret;
-
-	return 0;
+		dev_err(&client->dev,
+			"gpio request/direction_output fail for gpio_reset");
 }
 
 static void *lm3554_platform_data_func(struct i2c_client *client)
@@ -907,7 +907,6 @@ static int lm3554_remove(struct i2c_client *client)
 {
 	struct v4l2_subdev *sd = i2c_get_clientdata(client);
 	struct lm3554 *flash = to_lm3554(sd);
-	int ret;
 
 	media_entity_cleanup(&flash->sd.entity);
 	v4l2_ctrl_handler_free(&flash->ctrl_handler);
@@ -917,16 +916,11 @@ static int lm3554_remove(struct i2c_client *client)
 
 	del_timer_sync(&flash->flash_off_delay);
 
-	ret = lm3554_gpio_uninit(client);
-	if (ret < 0)
-		goto fail;
+	lm3554_gpio_uninit(client);
 
 	kfree(flash);
 
 	return 0;
-fail:
-	dev_err(&client->dev, "gpio request/direction_output fail");
-	return ret;
 }
 
 static const struct dev_pm_ops lm3554_pm_ops = {
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

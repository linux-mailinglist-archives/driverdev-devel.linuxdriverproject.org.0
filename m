Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC67291239
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Oct 2020 16:11:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C7C587CD4;
	Sat, 17 Oct 2020 14:10:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xNRLm3GTcPlX; Sat, 17 Oct 2020 14:10:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EF69787CD6;
	Sat, 17 Oct 2020 14:10:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 481A31BF35A
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 14:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 409A8881D0
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 14:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qyfD4+1Y0Rlt for <devel@linuxdriverproject.org>;
 Sat, 17 Oct 2020 14:10:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8745A881CC
 for <devel@driverdev.osuosl.org>; Sat, 17 Oct 2020 14:10:53 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id a72so6136494wme.5
 for <devel@driverdev.osuosl.org>; Sat, 17 Oct 2020 07:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oVtD9RxYC46FZp/4Rt/dwhENN40PjOjFpcIMXcrNbK4=;
 b=hCV4R2HXld7SixgoJg0qXzjU6obJcCLi+EZoMPol7oN6NILOCux99UZYGVF9ec2rRG
 ENSezx9zYGBrrrh3BzVYpDR26imGQJfxjXBFHs9DEqNYKEjKFV31XK9Lx+yvTefNB1yS
 ALuec8B+Y4RAjk2YK+ulRJKxurSMRTIWdOXB0NMKHmwLqBG2UqaLRLYBIkkQ+Nd1Wzsy
 XVG5RRcxlX2dIb6jyr/2fwEKY7leazPqnY7WaiMJsVNcaa1infgSiufNIr6sH8sHWBg1
 1tIQnS0q59pf2drHoYy0Jhpn9EwAlKOmjeKtlIFyZasXYV+2go235s1yHasje9ffIyp2
 0dzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oVtD9RxYC46FZp/4Rt/dwhENN40PjOjFpcIMXcrNbK4=;
 b=Oh7+oTPWb27TbO6TMR3v4rejQ2XzzghFqFO4lVk2/0NwsyyfEgqrG1yN6wwAHU7krU
 Hk941j1U7hRXIUnU15Kzomq+bfEVTKQ0YdWWKcaNDie9O4aE/zkdGYrRrAeTaeJZxlgs
 q8KzNZAXLIJXZPQw9TCAAj/VKjYA6IyZ07a0BAwfyIj8QHl/09L6Qygs4QW4nKTcBiBN
 /F5trykagYRa9UjW9fjixQBej4Ajh+iUG2kVqWHW5YLeeBZ5djI0/U4qkwj/G7OJkbTN
 pVDUxds/6z1LfLw2qiAAT7Z0Csu1n30lr4jUoywr+ptn5G/WDV/9XQlif7ND6PtJlsbL
 ZwrQ==
X-Gm-Message-State: AOAM53283Xl699pBSJwO0e6B3gvIgwdGOjMhgo6U+lYuYye5ZThS1vE2
 VXqp0KOb7P8GlUhDQhkp2hw=
X-Google-Smtp-Source: ABdhPJynHPJT6NIPtEuDClzehHGLcvQi2blrC9jrkrofTu+615BYm9ykBHnc/IFJf2y0RGOYDN1bfQ==
X-Received: by 2002:a1c:2901:: with SMTP id p1mr8947923wmp.170.1602943852107; 
 Sat, 17 Oct 2020 07:10:52 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id i33sm9130623wri.79.2020.10.17.07.10.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Oct 2020 07:10:51 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: mchehab@kernel.org
Subject: [PATCH 3/3] staging: media: atomisp: Don't abort on error in module
 exit path
Date: Sat, 17 Oct 2020 15:09:44 +0100
Message-Id: <20201017140950.15989-3-alex.dewar90@gmail.com>
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

The function lm3554_remove() checks for the return code for
lm3554_gpio_uninit() even though this is on the exit path and exits the
function, leaving the variable flash unfreed. Instead, print a warning and
free flash unconditionally.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 .../staging/media/atomisp/i2c/atomisp-lm3554.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
index 0043ae8e2ffa..44c41a0119a1 100644
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
@@ -909,7 +909,6 @@ static int lm3554_remove(struct i2c_client *client)
 {
 	struct v4l2_subdev *sd = i2c_get_clientdata(client);
 	struct lm3554 *flash = to_lm3554(sd);
-	int ret;
 
 	media_entity_cleanup(&flash->sd.entity);
 	v4l2_ctrl_handler_free(&flash->ctrl_handler);
@@ -919,16 +918,11 @@ static int lm3554_remove(struct i2c_client *client)
 
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

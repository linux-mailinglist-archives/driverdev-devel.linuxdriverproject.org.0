Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4963025C8BC
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Sep 2020 20:32:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 21D4086DF7;
	Thu,  3 Sep 2020 18:32:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qw-BFEv9Vcvu; Thu,  3 Sep 2020 18:31:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9237786E00;
	Thu,  3 Sep 2020 18:31:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 62E321BF40E
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 18:31:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 59651872D4
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 18:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8zeD3jIoWoSk for <devel@linuxdriverproject.org>;
 Thu,  3 Sep 2020 18:31:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 93EE0872AA
 for <devel@driverdev.osuosl.org>; Thu,  3 Sep 2020 18:31:55 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id v4so3832480wmj.5
 for <devel@driverdev.osuosl.org>; Thu, 03 Sep 2020 11:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t9ZH/j53GXlXtOl/BQ9uwkwhVkecvfT9moRmFWFXpuI=;
 b=jK8kOjm7roy6BVmdk2I0XcrgumAoHriXRTAEgOCIaT9dR3afbgSoRBjZVnmUDCrq3R
 IIZVjTH25331ZhAQyTN130aLDIbO6PZBuA925HlsU2WLY3OK/BHhWLDBKkBAslBfose1
 PPiaM/39Zwc99SpbyZgoP8Kc18EbUClUXly9A66ALGnHqfaQyswKoKIjWUL2yOfzUagb
 hA7SBuYCWnOKLXhb/+I0jTK/7S25+cfXORgM8BkQZEIdpsiu9hwejBV7nxqa420fgDYp
 FG3RtoPpGtcVj++3YHkp3gR8XejAouFJgMgZtNmJC2K+wT/N7MHOSk02vpJJ8zEaqDer
 wuuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t9ZH/j53GXlXtOl/BQ9uwkwhVkecvfT9moRmFWFXpuI=;
 b=Y4VbcJlgxXVSyR3BTEfnMEyQvLJAxagc9ixkYxH+qW5srqiDi7GKVMB/8WNztxQZBu
 5KUNfeHg2WGq5WkR0MA6XZqzMb53Bqa8lanTohh40hehYvUWIS0l6S5EPaZxqqcPf+tv
 MEY/f89Xxs9smLzZIw4Zn49F+rrHlvYNwWBqirvyL9IiXT8KdsjndTrOEHKXCuBsm0o+
 pTpVGyeLaPtlto3mg6yqPuNwkIbUcEuWsKb1xpUM/VN4XZ7n3Cae7yg4V53N61etIHK4
 IxwOfDjR1YXg3WvCcr1QUzpCOCFRRsBWftAuMZemipS+CdmrxsdbqFMbnIPkqz7sCDg2
 2OrA==
X-Gm-Message-State: AOAM530d7jG7Ionuv7oDxAb0RjnAlzxcHOoe9xjbPS8nZrqynW6Ol+Ua
 7/dT5LFvPY14DK5dmV2BeCs=
X-Google-Smtp-Source: ABdhPJzFLj4rL1qlEO5LjfwC8tHQ4tlonDMT7uuWHldstzL2iP6tKtqQyVv/6QQ/mqzxzfy+2TiOeg==
X-Received: by 2002:a1c:c910:: with SMTP id f16mr3770562wmb.82.1599157913902; 
 Thu, 03 Sep 2020 11:31:53 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id v12sm5812241wri.47.2020.09.03.11.31.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Sep 2020 11:31:53 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: 
Subject: [PATCH 1/2] staging: media: atomisp: Don't abort on error in module
 exit path
Date: Thu,  3 Sep 2020 19:31:34 +0100
Message-Id: <20200903183145.720727-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
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
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Dewar <alex.dewar90@gmail.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The function lm3554_remove() checks for the return code for
lm3554_gpio_uninit() even though this is on the exit path and exits the
function, leaving the variable flash unfreed. Print a warning instead
and free flash unconditionally.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 .../staging/media/atomisp/i2c/atomisp-lm3554.c  | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
index cca10a4c2db0..621555b0cf6b 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
@@ -783,7 +783,7 @@ static int lm3554_gpio_init(struct i2c_client *client)
 	return 0;
 }
 
-static int lm3554_gpio_uninit(struct i2c_client *client)
+static void lm3554_gpio_uninit(struct i2c_client *client)
 {
 	struct v4l2_subdev *sd = i2c_get_clientdata(client);
 	struct lm3554 *flash = to_lm3554(sd);
@@ -792,13 +792,13 @@ static int lm3554_gpio_uninit(struct i2c_client *client)
 
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
@@ -918,16 +918,11 @@ static int lm3554_remove(struct i2c_client *client)
 
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

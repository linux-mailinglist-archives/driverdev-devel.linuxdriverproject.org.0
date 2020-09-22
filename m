Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96650273E26
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 11:10:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 965A6228BD;
	Tue, 22 Sep 2020 09:10:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8L3N89CVCAiB; Tue, 22 Sep 2020 09:09:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 720B3228A7;
	Tue, 22 Sep 2020 09:09:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2A10C1BF25F
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 09:09:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 20EA822843
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 09:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kimp19V284oB for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 09:09:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 49FDE2263C
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 09:09:46 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id c18so16178577wrm.9
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 02:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=9Aesl8jwzB6h2AKl/DvTFdtB5ZWXuEURqgA0oOLGpZk=;
 b=VDVoXwPdoJzIDGxF1A9mAviiE0oyBHXTdSoaOLdOMRkoDxY/8EjbP/M/hoDlL05FOf
 iFKH0tIHHDHVnRiat7g7bcA+Hoq0o+i12qc6vh8Knf8/jUbDjMSJkvxWGJH6g6syZpNa
 YaQ0gxbJt9hsUsnMU7pEiPT/Cnx5LkQmCtXqSrP5mbYBaTJD98ohQ1d4tpvWixkjkLX1
 ehV98iaRuyhb5MiUaXUokNCajML3S57KeHYcpXzEfmOcg5RVJ6V6KStH7goxfbWjRtFf
 BnVmZiDA2d+8Uk5zcsrA9Pnn17BqWXFesH/HX/BaB9yggxlSnhSEVVPPr47B0hqC4K+r
 c1BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9Aesl8jwzB6h2AKl/DvTFdtB5ZWXuEURqgA0oOLGpZk=;
 b=YkxKM+ysREVF6zQTekbeL4EIxlQcCFAy0e4PRU8uba9FH79nU4z9yeMM4u5qp9GCeD
 OiDaFZejst96ItTymumcv/jFSYZgSFW4l75bxTLYeXlVShl8YeDjEe1CmN/M3Dt/6QIs
 bTb/ZLJwsoBgbSuCkKEA0A09tZVkzYEvZnCS2oJ8T9lOwLuvdibsLbFDyAm/G2i4DFRI
 cbtw6KGAgb/aGyM0J2OMUic1KnoBNqZgD1b/nb34SQ8ER8OkXDg1+qDJS9peLHlwvjrP
 Bi//GzCzmt3Q970hR1V7taZBCIugjQ7c4od7/aEnVg7eshh/TrkH41crTscPk37i5eM7
 IOuA==
X-Gm-Message-State: AOAM530g7/LS09LQfm20I4RES7zB5Kh/fZICOlOIcyZ59r0qjXIMm+AQ
 bMxfkgb+v4F4JsS/HlK79QU=
X-Google-Smtp-Source: ABdhPJwwHB5mrPn87uWKoQZJjdNbWKBVf+VGCOSSjlZlRj5745cpIvJcM1poRmEQGc01rJ3g7/LCRw==
X-Received: by 2002:adf:e391:: with SMTP id e17mr3947261wrm.289.1600765784834; 
 Tue, 22 Sep 2020 02:09:44 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id u186sm3659332wmu.34.2020.09.22.02.09.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 02:09:44 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Dewar <alex.dewar90@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Alan Cox <alan@linux.intel.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH REBASE 3/3] staging: media: atomisp: Don't abort on error in
 module exit path
Date: Tue, 22 Sep 2020 10:09:10 +0100
Message-Id: <20200922090914.20702-4-alex.dewar90@gmail.com>
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

The function lm3554_remove() checks for the return code for
lm3554_gpio_uninit() even though this is on the exit path and exits the
function, leaving the variable flash unfreed. Instead, print a warning and
free flash unconditionally.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 .../staging/media/atomisp/i2c/atomisp-lm3554.c  | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
index 5e895586e80a..84c47c1f9eb4 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
@@ -794,7 +794,7 @@ static int lm3554_gpio_init(struct i2c_client *client)
 	return ret;
 }
 
-static int lm3554_gpio_uninit(struct i2c_client *client)
+static void lm3554_gpio_uninit(struct i2c_client *client)
 {
 	struct v4l2_subdev *sd = i2c_get_clientdata(client);
 	struct lm3554 *flash = to_lm3554(sd);
@@ -803,15 +803,16 @@ static int lm3554_gpio_uninit(struct i2c_client *client)
 
 	ret = gpio_direction_output(pdata->gpio_strobe, 0);
 	if (ret < 0)
-		return ret;
+		dev_err(&client->dev,
+			"gpio request/direction_output fail for gpio_strobe");
 
 	ret = gpio_direction_output(pdata->gpio_reset, 0);
 	if (ret < 0)
-		return ret;
+		dev_err(&client->dev,
+			"gpio request/direction_output fail for gpio_reset");
 
 	gpio_free(pdata->gpio_strobe);
 	gpio_free(pdata->gpio_reset);
-	return 0;
 }
 
 static void *lm3554_platform_data_func(struct i2c_client *client)
@@ -918,7 +919,6 @@ static int lm3554_remove(struct i2c_client *client)
 {
 	struct v4l2_subdev *sd = i2c_get_clientdata(client);
 	struct lm3554 *flash = to_lm3554(sd);
-	int ret;
 
 	media_entity_cleanup(&flash->sd.entity);
 	v4l2_ctrl_handler_free(&flash->ctrl_handler);
@@ -928,16 +928,11 @@ static int lm3554_remove(struct i2c_client *client)
 
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

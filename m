Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F73291235
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Oct 2020 16:10:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 907A488591;
	Sat, 17 Oct 2020 14:10:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9H1sVgkS862d; Sat, 17 Oct 2020 14:10:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 143AB87CD6;
	Sat, 17 Oct 2020 14:10:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2A3391BF35A
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 14:10:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 18658204DE
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 14:10:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DW2OFCUa6mzL for <devel@linuxdriverproject.org>;
 Sat, 17 Oct 2020 14:10:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 20AC0204DF
 for <devel@driverdev.osuosl.org>; Sat, 17 Oct 2020 14:10:43 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id e17so6555108wru.12
 for <devel@driverdev.osuosl.org>; Sat, 17 Oct 2020 07:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1t1qKTOcHJuHJHJsb4p8ik2mZczxzfF5ELYPkpoZWUg=;
 b=GbLWpBKMrdXEd6HyCuPGNMB5P3R96WSNhFqO55ycZBa0IQM3aXrHpxAfyh0pHBdzZK
 Kcurg3yXtC3pilHBAg2L4dp+ICU+nJ8TKZAg0N6SvRIMx0L6sXOi9Ne5VDx/v0e4GWYd
 mGJZNOv0zAJZsIwYgQaEouYBHyVh9pBV3iGpHmaa+tCKSDvU5UUMGeiLm5y1/yA2K0ww
 ugIJWC/N9JeRPoHSkV4lf+4jGmnF9IpqZwAjwdpunDqydq90UOshhabjsAYS9RJfTIql
 nhTVbx6AIApVgSovzG7eMaRBUYm8qe2vIjVDp57Xjo6PrifSxMzNv/Yaxl1vHccaaxxM
 /Z0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1t1qKTOcHJuHJHJsb4p8ik2mZczxzfF5ELYPkpoZWUg=;
 b=O2mGRzz+G2nK1ax85bKKn0au7973nVf1hFjOLSYss90bvHWtIRqci/QHLG2gygwdkM
 r8Nr4CWcfHKXHhuoS33L0V03KdOhlrC26y0DofbO2zfdoDwu6kD/dxSsORvTCC20Ee4Q
 bHX2rsnBH6Kafyb/M7q5UrfvYUy+6p/7JIKcbODSFBmk+t061lfejDdcDdS/X/9Bd+w2
 D/rpIpqoUtZSl1JcVzFKhpQm2K3z+I4c2a0SUNEneUiENyVeYnzvWYEmp+KGX+sX+rsz
 1iNQ22EG2G7vNXKO7qS3wcKLEQE9+VCTQBOdi+lvllYaindOKJd7DJw9bEoGaclCwgiI
 Q1Ig==
X-Gm-Message-State: AOAM533Dmd1MewZmxKMZneiN2DaoXZJN/lK7tUjWEbUFCLSWOENDQLhj
 kMRC/ZZu4l7uMX4OTRwDh5k=
X-Google-Smtp-Source: ABdhPJzfcA0ECFdHtCngcWj3sFyHuPE35S+QknUbVboMYZkEumlRCEpQGIboB4PdiQ67c1SMEBlOAg==
X-Received: by 2002:adf:9069:: with SMTP id h96mr10853710wrh.358.1602943841407; 
 Sat, 17 Oct 2020 07:10:41 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id i33sm9130623wri.79.2020.10.17.07.10.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Oct 2020 07:10:40 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: mchehab@kernel.org
Subject: [PATCH 2/3] staging: media: atomisp: Remove unhelpful info message
Date: Sat, 17 Oct 2020 15:09:43 +0100
Message-Id: <20201017140950.15989-2-alex.dewar90@gmail.com>
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

We don't really need to know that the LED pin reset successfully.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 drivers/staging/media/atomisp/i2c/atomisp-lm3554.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
index b38df022f880..0043ae8e2ffa 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
@@ -771,7 +771,6 @@ static int lm3554_gpio_init(struct i2c_client *client)
 	ret = gpiod_direction_output(pdata->gpio_reset, 0);
 	if (ret < 0)
 		return ret;
-	dev_info(&client->dev, "flash led reset successfully\n");
 
 	if (!pdata->gpio_strobe)
 		return -EINVAL;
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

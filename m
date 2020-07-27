Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D23822F693
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jul 2020 19:26:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CAE76863E2;
	Mon, 27 Jul 2020 17:26:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z8XCmD3A0vPL; Mon, 27 Jul 2020 17:26:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF20086153;
	Mon, 27 Jul 2020 17:26:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45FCD1BF34A
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 17:26:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3EDC32210F
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 17:26:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2J4lZIkcdvCa for <devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 17:26:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 422682076B
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 17:26:22 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id k8so5235111wma.2
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 10:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zsKxRhlKd+uQDOq2/CXnJ6zIjjtOUm8tfFO4C1ExSks=;
 b=brpUcL1dvlfAx+vy6LtKzjhnTVyIriswGfEVAhcn4lBEgN/dKomchE/adCVnX6Oz32
 zhDR+MYC8aTX9htq5QRg2ynAPL+FB8ryT3We2P5zzOC89WsfiY0bWxSW0myzQmURj22O
 lQE6O8H0GvW4NxapvQP/VgTe3ERzx1YwXMVSMJNbiuGdOIeb6m6b0V4S9SeOjVKOU5g0
 BSnRm4tHiaSZSJSWfdPIPZ/+OqdRqhvUxlgiToNidPwGm7Z3YRHWHbNHfVeYlxG+JSZ/
 ajeP647s5kvSE4564J6Pyamp+hpZgvdecG6Xs90bphDofFiPSNteiTh986fJ17/h7F7L
 kUGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zsKxRhlKd+uQDOq2/CXnJ6zIjjtOUm8tfFO4C1ExSks=;
 b=V15QITg3MKMfjzwTGK2dzh24c6a4YYdg0Xsz9jGbQc+0/s8x0TJfRoaYhA/CbycfCB
 WYpvieRxcU3jEsrWU/+PYr1gZO0/ihl/kzgbtolXd+6Ihm8Z7FifOP0jpex8hrDJkOAv
 xSv2ZokuVVZJChAL6Jt5W0kvunVa8rAM6MyFgcSDvEVZgO/iI3a+qM8iRL9SEst9uBgJ
 8zsXwJU2wxiXRftR+eiAaTQGLWOEmjrxQ4tI4EOgfMsjjvF5xJIFTy1mJIcZUHwunRnK
 4675J7YF7bU3m3L+KSAu5uAlCzqLFgKEJ0C/b37IR1m+L4jvch265kVplkjB5YysqA6K
 Hq/w==
X-Gm-Message-State: AOAM531XeTDjRtQXGybkvinm6ojDA7hhB7omAzU48Pn6wY8YJ8vFBF0V
 2efP9dlvQD/wRvSoii40uG0=
X-Google-Smtp-Source: ABdhPJwkJV3qaZGLM3sAXvMmmraw2MnHdwguxhJ8gmiBPedSmNgltn0XLRIhYjiS1VEvidDNTPbdvA==
X-Received: by 2002:a1c:2dc6:: with SMTP id t189mr344180wmt.26.1595870780590; 
 Mon, 27 Jul 2020 10:26:20 -0700 (PDT)
Received: from localhost.localdomain (112.red-81-32-35.dynamicip.rima-tde.net.
 [81.32.35.112])
 by smtp.gmail.com with ESMTPSA id l10sm9198395wru.3.2020.07.27.10.26.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jul 2020 10:26:20 -0700 (PDT)
From: Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] media: atomisp-mt9m114: replace fixed function names
Date: Mon, 27 Jul 2020 19:24:17 +0200
Message-Id: <20200727172415.54935-1-juant.aldea@gmail.com>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are a couple of debug messages using hardcoded function names
instead of the preferred __func__ magic constant.

Replace them:

WARNING: Prefer using '"%s...", __func__' to using 'misensor_rmw_reg', this function's name, in a string
215: FILE: ./media/atomisp/i2c/atomisp-mt9m114.c:215:
+       v4l2_err(client, "misensor_rmw_reg error exit, read failed\n");

WARNING: Prefer using '"%s...", __func__' to using 'misensor_rmw_reg', this function's name, in a string
236: FILE: ./media/atomisp/i2c/atomisp-mt9m114.c:236:
+       v4l2_err(client, "misensor_rmw_reg error exit, write failed\n");

Signed-off-by: Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>

PATCH V2:
* Restored word "error" as pointed out by Dan Carpenter <dan.carpenter@oracle.com>

---
 drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c b/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
index 0d60918a9b19..f5de81132177 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
@@ -212,7 +212,7 @@ misensor_rmw_reg(struct i2c_client *client, u16 data_length, u16 reg,
 
 	err = mt9m114_read_reg(client, data_length, reg, &val);
 	if (err) {
-		v4l2_err(client, "misensor_rmw_reg error exit, read failed\n");
+		v4l2_err(client, "%s error exit, read failed\n", __func__);
 		return -EINVAL;
 	}
 
@@ -233,7 +233,7 @@ misensor_rmw_reg(struct i2c_client *client, u16 data_length, u16 reg,
 
 	err = mt9m114_write_reg(client, data_length, reg, val);
 	if (err) {
-		v4l2_err(client, "misensor_rmw_reg error exit, write failed\n");
+		v4l2_err(client, "%s error exit, write failed\n", __func__);
 		return -EINVAL;
 	}
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

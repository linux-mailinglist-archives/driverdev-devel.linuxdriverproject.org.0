Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D48C422F6FF
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jul 2020 19:49:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DE5BC22193;
	Mon, 27 Jul 2020 17:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qTgPpeQS3Kx7; Mon, 27 Jul 2020 17:49:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3B26E204AB;
	Mon, 27 Jul 2020 17:49:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 581DF1BF34A
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 17:48:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5456C85B0A
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 17:48:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PBF1z3l0CS6l for <devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 17:48:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5F5E1859D2
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 17:48:57 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id c80so14919900wme.0
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 10:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qOH/UoaqC+LDO4kkcL97+3vWeaaagSUdgiIVI5ufHis=;
 b=XWcLeYAWwLQnQ/+Vniw+1NZMkQBf5jPAzdnX66/ZOrG+d8xxI/geLEvfjZuvZxTw6A
 T5Na0PcnsDM5t4kNk6hPCIJTXxwx5VzLDWQa/DFx9ItkiyaVmZC0SsYIAOpwMP/MqLLW
 wBtasEqQKV1jN/y3TFd9fkF1l3pw0pNF8OzWQ0T+erudPq0LAc6g9JSLk/NNmWG6/1Qk
 B5U20kHwZgUKg4twqfKp0UjqMkkX0QwES20iQSgWlh/WpKektlQ0znluUNwnpdF7GuEW
 1NGVzAaSZePpJpIgwJI6oPBcYrUVglr1Z0LoUZV8IKbJ7pyJ8sWlH9v3edi0eSRh7W8c
 zApg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qOH/UoaqC+LDO4kkcL97+3vWeaaagSUdgiIVI5ufHis=;
 b=nKPGALvSY+8fum54uleE4ZG2ukv5w9FHseVzFPtxMewPysuBX2VN89kXRl5bksJv8G
 BA+LhZz7UArSnXpEX6sdMsxICLgXZruV/8320PUk+TzPuZ4EiiMFGe2JbZglH6LZMZ4P
 xq8paG4vAqEitBtdIOGzuy0LWPwUAi3BIBM2EYXrFWQd0HJAC74L8HND03Ct1yc8gfQO
 K6YjDAbnRQkiszToxtnj3Sbfq6L+yso+CARbMxupX+kK4DHl9Rtb9j5OlVcDUsh6cVh0
 9eR6QVxspcoxKqQapwhy81+7UHo5b/U6QRgTbeSDBoq9Qm18hzZLY3+TbciKyGYXQ+Ch
 1MXg==
X-Gm-Message-State: AOAM533sbx2fs2nVJjn31yFftzdiAO7pcRx0iIeUzcJnAzispB786NCG
 wxVt5xq2Pd6ozjv46BLmSiUxYv52Fmp/Ow==
X-Google-Smtp-Source: ABdhPJxfNAV1+tUhphWVdB/yAnUKsH2CS8FGtw6ozsRuygaha6vREw+pf9Ma8uRtJcQlBCFiG9T9YQ==
X-Received: by 2002:a1c:5646:: with SMTP id k67mr367294wmb.61.1595872135762;
 Mon, 27 Jul 2020 10:48:55 -0700 (PDT)
Received: from localhost.localdomain (112.red-81-32-35.dynamicip.rima-tde.net.
 [81.32.35.112])
 by smtp.gmail.com with ESMTPSA id y11sm14072266wrs.80.2020.07.27.10.48.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jul 2020 10:48:55 -0700 (PDT)
From: Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3] media: atomisp-mt9m114: replace fixed function names
Date: Mon, 27 Jul 2020 19:48:12 +0200
Message-Id: <20200727174811.57486-1-juant.aldea@gmail.com>
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
---
PATCH V2:
* Restored word "error" as pointed out by Dan Carpenter <dan.carpenter@oracle.com>

PATCH V3: 
* Fix V2 changelog message.

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

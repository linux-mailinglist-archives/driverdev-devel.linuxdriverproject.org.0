Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0C922D5F9
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 10:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 18F6E8709F;
	Sat, 25 Jul 2020 08:12:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JvPbU3mdNd3u; Sat, 25 Jul 2020 08:12:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F083286B7D;
	Sat, 25 Jul 2020 08:12:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F1351BF82C
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 08:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6BD0F86FEC
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 08:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZQmTs-m-CkPD for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 08:12:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A0E8586B7D
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 08:12:04 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id f18so10229531wrs.0
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 01:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TRFUsEvAIwIIG2KAY4NjCWbxYEJg7r6BmKVKp0Gi2yM=;
 b=nzLoqfMczFTLnp7VZCsxCn6ym9umeuogSpyDW4VoSXpGuvh3HEZMvN5SeeTGOJ8nk3
 kacpbHNl+yp2k0yrn64XrQG2Mxf0XeUtcDcMcG4Wghx9IcAATqj4CtXPdJkWAPbrz/qH
 6vRVC0aMP1J5Ln6vlae357xnko8/QpcnV0oC/dfXlKBte2D/M0JTZSufUVu5L+D4hNXr
 MBT41KrbuB3Mvbc9aAKnIsJLiJdZmb5m7CTgCckBVd6HOBqJ1nuEAnTSqKuirROyX0a3
 LSapils+ZNbCcBBibOx9ePHn48i70yZpppp9HeWk9rhfie6ojT7tvvEm0JK8gHJB8NSV
 XVVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TRFUsEvAIwIIG2KAY4NjCWbxYEJg7r6BmKVKp0Gi2yM=;
 b=aL7p16IIuYcTclvBacjpZ1DzjW0UX+i0LXzjbiwijORiTmIpNhBfk0YmX6s33u4bjg
 nUFi3zGJghHx1hZV9DFNkFrnR4naHuhXitCMqJE0jS1w0u96A3sNoeMTPY/KqbQkMSem
 aGw5q0uHETYq1wP5IcJfRRu39dRjM5plcMgIZars0RgdoVvIVqYh+MgZieutIdpBQszE
 Y6zQLhCDl7Qs9ljDfXH+T4t1ysOgvZTuVftCOTero71tM7X8EgclRalr/VqHwj+Offyu
 WO8nx+ryRD9LbbN+urzgDZgxMm/MjqMcdsG2LaUgKFdssCBzBrgll3Hq+n5Gwz1C4Vhg
 QXeQ==
X-Gm-Message-State: AOAM531w4x2zFJD/4SkKooouz9BCMxLi1inighN3itkTz70OzDtb0y+l
 QSqRu6iaARkywSbplf1UkpQ=
X-Google-Smtp-Source: ABdhPJySD3og+Iju9VNHRQIBr9aLMq24CYh9BJ7OlyhflnkZoLNa34NmB+mmp/mLOqUKONhg5SL8aQ==
X-Received: by 2002:adf:a3d0:: with SMTP id m16mr11194559wrb.232.1595664722950; 
 Sat, 25 Jul 2020 01:12:02 -0700 (PDT)
Received: from localhost.localdomain (112.red-81-32-35.dynamicip.rima-tde.net.
 [81.32.35.112])
 by smtp.gmail.com with ESMTPSA id n12sm3645502wrg.77.2020.07.25.01.12.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Jul 2020 01:12:02 -0700 (PDT)
From: Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] media: atomisp-mt9m114: replace fixed function names
Date: Sat, 25 Jul 2020 10:11:08 +0200
Message-Id: <20200725081108.272643-1-juant.aldea@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>,
 linux-media@vger.kernel.org
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
 drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c b/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
index 0d60918a9b19..54c24bc2061d 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
@@ -212,7 +212,7 @@ misensor_rmw_reg(struct i2c_client *client, u16 data_length, u16 reg,
 
 	err = mt9m114_read_reg(client, data_length, reg, &val);
 	if (err) {
-		v4l2_err(client, "misensor_rmw_reg error exit, read failed\n");
+		v4l2_err(client, "%s exit, read failed\n", __func__);
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

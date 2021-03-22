Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DBC34369E
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 03:25:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 712F48257D;
	Mon, 22 Mar 2021 02:24:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U5y1WHo2Jbxu; Mon, 22 Mar 2021 02:24:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD270824EF;
	Mon, 22 Mar 2021 02:24:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC9801BF299
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 02:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DB656402E7
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 02:24:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HIdafU-FnyET for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 02:24:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC28040296
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 02:24:45 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id y18so9163450qky.11
 for <devel@driverdev.osuosl.org>; Sun, 21 Mar 2021 19:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SJ2V/Q+KOn3+lwPvdbc2L1zP9G0R/ZBcdA6MYszXVhI=;
 b=pUR/ZwbH17+AY+um1I25B3IohxTQ0UZ6S9yXyZ9lQ3yuozceN7JcISBJ5b0Cvaxer9
 qmb3TMitQLIZ8gxi9/rY/qy8l2iX/zaUf9L/M36O2l5/1o6H1PUJ4MBIQxmlB3sz9fSK
 2WDkMCRP1z/Ivgr4ebBWpX/icpAqe0epoSlz23tH+w1iP/2oFyVKxWSAbYqnb3E7OODy
 2vhdNiXc2B/KLvK2MXlMDTR084Sf2uBv3u5pI2Pl0AgXKAjeTPG1fBpQ9eByusQEkg3M
 h3jftyeXoRWIuFlkx0VLdkViAu9n7J//+xzQ055RdKDfkn2oe8efqVF1JEdYQIH73i8w
 woJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SJ2V/Q+KOn3+lwPvdbc2L1zP9G0R/ZBcdA6MYszXVhI=;
 b=pPeYbgp4VaPuDGKz2GBI92Mgx/jjFMIh/xDjnUEvTijqL39D0q1KKGUC2Xtz/ltMEy
 3IUOOyVTUufPSIS27Zh0qiEypgfkMUdb9rddLlyr5RTCkQ/kpBp6lQVhBz1pIeJmlF4Z
 z9tGJeh7cmBn+vcwR36j3tZ7guCkOcBDN29Uhq3r6Je2MjmUMdOuVyInoXaOGUjtWCRu
 fpa+oY8sXGs6QYIifz7tNknRkcEbzX5DQnloiuMOy6f2dmN3860mmd70XtYFuV/LhGhn
 +GsBr8prirkNlFiBAR8aihmlCOMVOUaVsLcUADv0X5+J/+MfjLRukwsS0ybIKWxVbeX3
 E16g==
X-Gm-Message-State: AOAM530OfsFGuVV9Cx7DhPQrRqYR6FDKnm7Md5tmqKvEGmsqOihJ15vB
 cNa085Xf7TLbMxWX71a4DLk=
X-Google-Smtp-Source: ABdhPJzj+lXWCdrxzmCdoSw8TuIGwfcIvrcQCWxg/g3Iqc3IShmCTDTb8GQw7/Go9mW4eKJspzvhbg==
X-Received: by 2002:a37:7745:: with SMTP id s66mr8794763qkc.18.1616379884725; 
 Sun, 21 Mar 2021 19:24:44 -0700 (PDT)
Received: from localhost.localdomain ([156.146.54.190])
 by smtp.gmail.com with ESMTPSA id s6sm9917482qke.44.2021.03.21.19.24.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Mar 2021 19:24:44 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org, unixbhaskar@gmail.com,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] media: Fix a typo
Date: Mon, 22 Mar 2021 07:54:31 +0530
Message-Id: <20210322022431.3992890-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.31.0
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


s/Sysytem/System/

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc2235.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.h b/drivers/staging/media/atomisp/i2c/gc2235.h
index 68252b8f516d..ba5db1230033 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.h
+++ b/drivers/staging/media/atomisp/i2c/gc2235.h
@@ -218,7 +218,7 @@ static struct gc2235_reg const gc2235_stream_off[] = {
 };

 static struct gc2235_reg const gc2235_init_settings[] = {
-	/* Sysytem */
+	/* System */
 	{ GC2235_8BIT, 0xfe, 0x80 },
 	{ GC2235_8BIT, 0xfe, 0x80 },
 	{ GC2235_8BIT, 0xfe, 0x80 },
--
2.31.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

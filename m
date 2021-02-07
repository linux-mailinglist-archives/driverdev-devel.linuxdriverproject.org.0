Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D04631223D
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 08:38:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 255FB2052A;
	Sun,  7 Feb 2021 07:38:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WVWiWnG-GSq3; Sun,  7 Feb 2021 07:38:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C04612051C;
	Sun,  7 Feb 2021 07:38:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 77DE81BF345
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 07:38:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6DCF8204FC
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 07:38:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oazBtfosXTCC for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 07:38:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 1CEB1204E2
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 07:38:32 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id y10so6187308plk.7
 for <devel@driverdev.osuosl.org>; Sat, 06 Feb 2021 23:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LBlVJrHdtvYtBj0sfMBU5d9IOU/AmL+1AaFBRumib+4=;
 b=dziuLnsnUcY5nc1k0Ua43YystHR+I6epVRuiP2nfkSblKYJMYrph9iB+j6wdCL7gBH
 J7cHl9nwD+Xj93i1BUwS1DE+A4L39BVIlPSvwcf/FK79tWOk0zcUdLPf+XZ1kG9dLXcP
 OliSEQga8Io3rUiAJGB7OdGBekzbWpk2NDRtr+PHn9MDxWRjIa8ixSpW2vcz37wP0s3H
 fgOUVnpOVsmm24lzOmOIoJ0t9/YLpKSBijyK6muCKSqmzx9+Hol+lqjHSbW4AdD9YkkT
 I5tqD0BiCfFiSMi2ZRjNaxFuAzborY18ZZImuhu+0MCqbN/r0mANYPAj3aJhfLKxT+eG
 K3YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LBlVJrHdtvYtBj0sfMBU5d9IOU/AmL+1AaFBRumib+4=;
 b=bmzsmQFwS6kZm8cSisYg3RSZ8hOc7pPquR6GFggloV44lI8bNjVfX52wQrWevyM9t2
 ph9Uz3lWKFCmerMH20cnSIf7trsU0/pS/wprujBGdSM74xsah+4UENkq4IH/jvVYNm6O
 5KKpovM1xr+7mdNXwwTKwR90iPAHgSKijJ0fM3jpumsf6a/kl8FLPTjgeGEsxD9YhVGP
 Uy18VMK3bGfzpfzU8/YzKbyR7dyUQjch/SwNej2//OA8tpN9qDwb12hM7ZzHbWpo7y2r
 mHQNOlJlX2hAp+jJeoJ6UJEPN6v/4B4XSIy+ANFk9rFew+wwad0cQd2Md97kFG1+hfpF
 AS4g==
X-Gm-Message-State: AOAM530zE48UlSTp32PbWtWB1+B1KJvSX3nJ5mhTKdU3tVVfgreigpsf
 Y2Ya4fN3PzwZFjLNn5uGVQ8=
X-Google-Smtp-Source: ABdhPJyTikUVV/KubRr3cD37P9PrHPOYYv0KNqBdfGVNJKkfl3yZ8vKeJyaHK2Q2L1BSYtMe+q3c6Q==
X-Received: by 2002:a17:90a:4a94:: with SMTP id
 f20mr11520527pjh.97.1612683511646; 
 Sat, 06 Feb 2021 23:38:31 -0800 (PST)
Received: from localhost ([2402:3a80:11d2:b946:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id e15sm9213835pgr.81.2021.02.06.23.38.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Feb 2021 23:38:31 -0800 (PST)
Date: Sun, 7 Feb 2021 13:08:27 +0530
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH] staging: emxx_udc: Fix incorrectly defined global
Message-ID: <20210207073827.7l7h3475tqgxxfte@apollo>
References: <20210207000030.256592-1-memxor@gmail.com>
 <20210207173441.2902acac@canb.auug.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210207173441.2902acac@canb.auug.org.au>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 07, 2021 at 12:04:41PM IST, Stephen Rothwell wrote:
> 
> Given that drivers/staging/emxx_udc/emxx_udc.h is only included by
> drivers/staging/emxx_udc/emxx_udc.c, shouldn't these variables just be
> declared static in emxx_udc.c and removed from emxx_udc.h?
>

Either would be correct. I went this way because it was originally trying to
(incorrectly) define a global variable instead. I guess they can be static now
and when more users are added, the linkage can be adjusted as needed.

Here's another version of the patch:

--
From 5835ad916ceeba620c85bc32f52ecd69f21f8dab Mon Sep 17 00:00:00 2001
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Date: Sun, 7 Feb 2021 12:53:39 +0530
Subject: [PATCH] staging: emxx_udc: Make incorrectly defined global static

The global gpio_desc pointer and int vbus_irq were defined in the header,
instead put the definitions in the translation unit and make them static as
there's only a single consumer in emxx_udc.c.

This fixes the following sparse warnings for this driver:
drivers/staging/emxx_udc/emxx_udc.c: note: in included file:
drivers/staging/emxx_udc/emxx_udc.h:23:18: warning: symbol 'vbus_gpio' was not
declared. Should it be static?
drivers/staging/emxx_udc/emxx_udc.h:24:5: warning: symbol 'vbus_irq' was not 
declared. Should it be static?

Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 3 +++
 drivers/staging/emxx_udc/emxx_udc.h | 2 --
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index a30b4f5b1..3536c03ff 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -34,6 +34,9 @@
 #define	DRIVER_DESC	"EMXX UDC driver"
 #define	DMA_ADDR_INVALID	(~(dma_addr_t)0)
 
+static struct gpio_desc *vbus_gpio;
+static int vbus_irq;
+
 static const char	driver_name[] = "emxx_udc";
 static const char	driver_desc[] = DRIVER_DESC;
 
diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index bca614d69..c9e37a1b8 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -20,8 +20,6 @@
 /* below hacked up for staging integration */
 #define GPIO_VBUS 0 /* GPIO_P153 on KZM9D */
 #define INT_VBUS 0 /* IRQ for GPIO_P153 */
-struct gpio_desc *vbus_gpio;
-int vbus_irq;
 
 /*------------ Board dependence(Wait) */
 
-- 
2.29.2

-- 
Kartikeya
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

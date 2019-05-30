Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 388442FAF3
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 13:33:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3672020387;
	Thu, 30 May 2019 11:33:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bDJXqLVPKeHO; Thu, 30 May 2019 11:33:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BF6E420118;
	Thu, 30 May 2019 11:33:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 671AB1BF316
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 11:33:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5AFC286880
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 11:33:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hjgWuOOXwnGM for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 11:33:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 71BEF859FC
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 11:33:46 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id f25so1853670pgv.10
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 04:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=uHUXjMAxZ7f333Sg3vEFlgpoxeG65zBCwY0OPq6Zo+E=;
 b=UA9Qb3+onXN9DfXKGJbKzo+8eEwp5c/WM6aaU5+cPTOH2z8CCpCkPaZaGjeRtCBWpm
 qqIdRAp4vsLorCov67VVFrnBIvtuseEm4MS1lbBy0tgsnAmtYkTPl0SxCkgDEKA0MxTn
 sBOFCUQsGsXIlaLJ4xk8dEhlJmWLHjsh2NWEyYBPxhTIOEBnazitt4jHPoIFc9oVe/EX
 8+03Haum8GOOsPuxCMP8aaopsCnBUrs2zO4YUyLhtKVm8t5S//xVfXujs3xVgRp9ZiJY
 6bh6GqhgDiW4i4+cSvUlf8GHlhlA5V4zZBD9PFrlcwp0V6MWKv0fwl9WuL+c4k6RpPRj
 iDRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=uHUXjMAxZ7f333Sg3vEFlgpoxeG65zBCwY0OPq6Zo+E=;
 b=HY3MtjDKEdUcYG8oLlLjdZp9QeNnJDSghOqaO2Z37np/BcCpLWudAopHH+SVm7FMQl
 OEfFeFbSCEPRvfMrYIbhmTZyZ17QfiFVSMK6IQ0KNbkjjhWB7vmPF6f4veuRYfUtumhd
 WPipAnO+oC+uuXYy5M+t+xK1XDIKB9tVdpN/m9ArdHsYORaQe3VuYEfI4qzwYEFq6Dtx
 oH5DA7x7c/DPOeadWPrVZ3uvZ3GAnST4ldgKvzTF4tBtYm3GE7GXgGky6Fx4qa77g1TG
 NT1zZ2f4mZA/cpkhVtLYNy9Wuamm+l3f526pA50/wV+Z7cKYUy6UVZHGoKZUdXEOkzYU
 +NWw==
X-Gm-Message-State: APjAAAWnQgXbdKkL1f1kuVq0Ob8SPBq6LXiOylGjxA0CvL89dFQNI4f/
 /DRoOw39JswFxNj2rcayPGA=
X-Google-Smtp-Source: APXvYqyhYJGrTjocqyHSUYlQlckWxxyWSNYTDPqcXq/sUyBIJyx4S0nWLmYDjFWxUf3adWf78uuM9Q==
X-Received: by 2002:aa7:8a95:: with SMTP id a21mr3273783pfc.215.1559216025909; 
 Thu, 30 May 2019 04:33:45 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id z9sm2170387pgc.82.2019.05.30.04.33.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 04:33:44 -0700 (PDT)
From: Guenter Roeck <linux@roeck-us.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: kpc2000: Fix build failure caused by wrong include
 file
Date: Thu, 30 May 2019 04:33:42 -0700
Message-Id: <1559216022-644-1-git-send-email-linux@roeck-us.net>
X-Mailer: git-send-email 2.7.4
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
 Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

xtensa:allmodconfig fails to build.

arch/xtensa/include/asm/uaccess.h: In function 'clear_user':
arch/xtensa/include/asm/uaccess.h:40:22: error:
	implicit declaration of function 'uaccess_kernel'

uaccess_kernel() is declared in linux/uaccess.h, not asm/uaccess.h.

Fixes: 7df95299b94a ("staging: kpc2000: Add DMA driver")
Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 5741d2b49a7d..e741fa753ca1 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -8,7 +8,7 @@
 #include <linux/errno.h>    /* error codes */
 #include <linux/types.h>    /* size_t */
 #include <linux/cdev.h>
-#include <asm/uaccess.h>    /* copy_*_user */
+#include <linux/uaccess.h>    /* copy_*_user */
 #include <linux/aio.h>      /* aio stuff */
 #include <linux/highmem.h>
 #include <linux/pagemap.h>
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

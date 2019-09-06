Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD32AAFFF
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Sep 2019 03:06:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30A1686BB9;
	Fri,  6 Sep 2019 01:06:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mon0R08-lXjS; Fri,  6 Sep 2019 01:06:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 928BB86BAE;
	Fri,  6 Sep 2019 01:06:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1918E1BF2CD
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 01:06:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 11195203A7
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 01:06:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ER-IU5QKu8ND for <devel@linuxdriverproject.org>;
 Fri,  6 Sep 2019 01:06:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 00EDC20386
 for <devel@driverdev.osuosl.org>; Fri,  6 Sep 2019 01:06:18 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id gn20so2248525plb.2
 for <devel@driverdev.osuosl.org>; Thu, 05 Sep 2019 18:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=w+FvHkszadqnPhCJiTI3e+ARFLAAJFBRpIB5600vgxI=;
 b=Mo80zv8LUyWmF/cmilFPf4umb29yDB1VgUIJTIGUM6yqyGLzsOywU//UH/2/V1wUrH
 XevN2P21DKppx4lwWGikdiA+agV8lUeQ0Aqx358FEZlKL2dqq1EZP/+IsfW1ZGpzdnol
 VKFWMBkm3SnfrRP3Ze9wi7uw7IE2FXP2YbkoCBpB+qxwuLSZwnaqeuGjWwnswZrAFlqr
 ZbTcCpYBvuxtCS7J7BWiQopZJ2IG8UpKdybERjz5UUdW9UdhTJal13hKHW8DVaTdzTkF
 Xk/DNmP0KkIEZdq9i3pL1jRsPf44FtaBD2rtSzxaLKA+nfkJ4zTaXcQ9a4MHLniBR+B9
 x2zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=w+FvHkszadqnPhCJiTI3e+ARFLAAJFBRpIB5600vgxI=;
 b=oH8+4BcbC2zjIpAgQUSzQObUiROgIMCDF2Nxf1q0KR7V5LAagqurw66jrC5TrJAMWx
 lz4cixgIl/Dlm6XZ35+t4UauQBBWBSeM8tbrAza4J0x2XCsYj6qWFeCPYOgtMSACkNL8
 17G98fKKl4mdHGa75ysWhAgEVJU6Vx9ci2LnVeLdDCWKyuVlE2w6SheJMhRXPOt5Ld9G
 dEVxVLh2Rt5HsBgLqXwlLkddmHsF3kSPtwh7/zskK7wAA4H1IzzRRDHOqO536Kth1+ua
 lHuCMntMYXwcl5jwMRiGrKNqxIJMjpS4bN4x6rIK1vBEMtGsFpnYjI1iXSvgP7T6R0KT
 mxaA==
X-Gm-Message-State: APjAAAVr/AwVFGDjxpp3l1VZVkeEuC5A7eXAh+9hQuE3fRcDdHSqi9Vm
 VfSuTFwAGsLvfLirlg5Bs5A=
X-Google-Smtp-Source: APXvYqw70LKRdLCGS8WTkzyh4gK0ER068jBJutiFV8ajNvDvgKT+Og7n25EhE1q87uxti8iMB/5Bzg==
X-Received: by 2002:a17:902:b718:: with SMTP id
 d24mr6519128pls.204.1567731978382; 
 Thu, 05 Sep 2019 18:06:18 -0700 (PDT)
Received: from compute1 ([123.51.210.126])
 by smtp.gmail.com with ESMTPSA id g11sm3309034pgu.11.2019.09.05.18.06.16
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 05 Sep 2019 18:06:17 -0700 (PDT)
Date: Fri, 6 Sep 2019 09:06:14 +0800
From: Jerry Lin <wahahab11@gmail.com>
To: Jens Frederich <jfrederich@gmail.com>, Daniel Drake <dsd@laptop.org>,
 Jon Nettleton <jon.nettleton@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Jerry Lin <wahahab11@gmail.com>
Subject: [PATCH] staging: olpc_dcon: allow simultaneous XO-1 and XO-1.5 support
Message-ID: <20190906010613.GA562@compute1>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

This patch remove model related configuration.
Since the module can decide which platform data to use itself base on
current running olpc board.

Also change module dependency from (GPIO_CS5535 || GPIO_CS5535=n)
to (GPIO_CS5535 || ACPI) because original one does not make any sense
and module only doing real work when GPIO_CS5535 or ACPI is setted.

Remove kernel configurations:
- FB_OLPC_DCON_1
- FB_OLPC_DCON_1_5

Signed-off-by: Jerry Lin <wahahab11@gmail.com>
---
 drivers/staging/olpc_dcon/Kconfig     | 21 +--------------------
 drivers/staging/olpc_dcon/Makefile    |  4 +---
 drivers/staging/olpc_dcon/TODO        |  1 -
 drivers/staging/olpc_dcon/olpc_dcon.c |  6 +-----
 drivers/staging/olpc_dcon/olpc_dcon.h |  5 -----
 5 files changed, 3 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/olpc_dcon/Kconfig b/drivers/staging/olpc_dcon/Kconfig
index f5c716b..4ae271f 100644
--- a/drivers/staging/olpc_dcon/Kconfig
+++ b/drivers/staging/olpc_dcon/Kconfig
@@ -3,7 +3,7 @@ config FB_OLPC_DCON
 	tristate "One Laptop Per Child Display CONtroller support"
 	depends on OLPC && FB
 	depends on I2C
-	depends on (GPIO_CS5535 || GPIO_CS5535=n)
+	depends on (GPIO_CS5535 || ACPI)
 	select BACKLIGHT_CLASS_DEVICE
 	help
 	  In order to support very low power operation, the XO laptop uses a
@@ -15,22 +15,3 @@ config FB_OLPC_DCON
 	  This controller is only available on OLPC platforms.  Unless you have
 	  one of these platforms, you will want to say 'N'.
 
-config FB_OLPC_DCON_1
-	bool "OLPC XO-1 DCON support"
-	depends on FB_OLPC_DCON && GPIO_CS5535
-	default y
-	help
-	  Enable support for the DCON in XO-1 model laptops.  The kernel
-	  communicates with the DCON using model-specific code.  If you
-	  have an XO-1 (or if you're unsure what model you have), you should
-	  say 'Y'.
-
-config FB_OLPC_DCON_1_5
-	bool "OLPC XO-1.5 DCON support"
-	depends on FB_OLPC_DCON && ACPI
-	default y
-	help
-	  Enable support for the DCON in XO-1.5 model laptops.  The kernel
-	  communicates with the DCON using model-specific code.  If you
-	  have an XO-1.5 (or if you're unsure what model you have), you
-	  should say 'Y'.
diff --git a/drivers/staging/olpc_dcon/Makefile b/drivers/staging/olpc_dcon/Makefile
index cb1248c..734b2ce 100644
--- a/drivers/staging/olpc_dcon/Makefile
+++ b/drivers/staging/olpc_dcon/Makefile
@@ -1,7 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
-olpc-dcon-objs += olpc_dcon.o
-olpc-dcon-$(CONFIG_FB_OLPC_DCON_1)	+= olpc_dcon_xo_1.o
-olpc-dcon-$(CONFIG_FB_OLPC_DCON_1_5)	+= olpc_dcon_xo_1_5.o
+olpc-dcon-objs += olpc_dcon.o olpc_dcon_xo_1.o olpc_dcon_xo_1_5.o
 obj-$(CONFIG_FB_OLPC_DCON)	+= olpc-dcon.o
 
 
diff --git a/drivers/staging/olpc_dcon/TODO b/drivers/staging/olpc_dcon/TODO
index d8296f2..7c26335 100644
--- a/drivers/staging/olpc_dcon/TODO
+++ b/drivers/staging/olpc_dcon/TODO
@@ -8,7 +8,6 @@ TODO:
 	  internals, but isn't properly integrated, is not the correct solution.
 	- see if vx855 gpio API can be made similar enough to cs5535 so we can
 	  share more code
-	- allow simultaneous XO-1 and XO-1.5 support
 
 Please send patches to Greg Kroah-Hartman <greg@kroah.com> and
 copy:
diff --git a/drivers/staging/olpc_dcon/olpc_dcon.c b/drivers/staging/olpc_dcon/olpc_dcon.c
index a254238..a0d6d90 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon.c
+++ b/drivers/staging/olpc_dcon/olpc_dcon.c
@@ -790,15 +790,11 @@ static struct i2c_driver dcon_driver = {
 
 static int __init olpc_dcon_init(void)
 {
-#ifdef CONFIG_FB_OLPC_DCON_1_5
 	/* XO-1.5 */
 	if (olpc_board_at_least(olpc_board(0xd0)))
 		pdata = &dcon_pdata_xo_1_5;
-#endif
-#ifdef CONFIG_FB_OLPC_DCON_1
-	if (!pdata)
+	else
 		pdata = &dcon_pdata_xo_1;
-#endif
 
 	return i2c_add_driver(&dcon_driver);
 }
diff --git a/drivers/staging/olpc_dcon/olpc_dcon.h b/drivers/staging/olpc_dcon/olpc_dcon.h
index 22d976a..41bd136 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon.h
+++ b/drivers/staging/olpc_dcon/olpc_dcon.h
@@ -106,12 +106,7 @@ struct dcon_gpio {
 
 irqreturn_t dcon_interrupt(int irq, void *id);
 
-#ifdef CONFIG_FB_OLPC_DCON_1
 extern struct dcon_platform_data dcon_pdata_xo_1;
-#endif
-
-#ifdef CONFIG_FB_OLPC_DCON_1_5
 extern struct dcon_platform_data dcon_pdata_xo_1_5;
-#endif
 
 #endif
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

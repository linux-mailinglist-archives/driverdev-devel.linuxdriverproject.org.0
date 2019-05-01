Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBAA10635
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 May 2019 10:52:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B8DF727408;
	Wed,  1 May 2019 08:52:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oCdzfjNm7iYb; Wed,  1 May 2019 08:52:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4DBAB2734A;
	Wed,  1 May 2019 08:52:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 177261BF28C
 for <devel@linuxdriverproject.org>; Wed,  1 May 2019 08:51:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9C15A86277
 for <devel@linuxdriverproject.org>; Wed,  1 May 2019 08:51:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GNrNqfs1Uq5i for <devel@linuxdriverproject.org>;
 Wed,  1 May 2019 08:51:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 309B086293
 for <devel@driverdev.osuosl.org>; Wed,  1 May 2019 08:50:53 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6B25521734;
 Wed,  1 May 2019 08:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556700652;
 bh=62WXKOnNc7/9Mu1J6Jr/7oFVgwfd3stPoW7cofa/FnA=;
 h=Date:From:To:Subject:From;
 b=mU9OMd1ojZ1YF6GZGsMg36vnGA+IejJ6CN6yu7Ojhll3Znl+zJ+dD9XYwYTgKN7FP
 YynCGPrxwAkNsExG7UNI48C78pDHUBUrVaZLS3d4U2twz6rzBWAITnpLfi5IvkE+LV
 dfAChT8qoFin2BWFPdwCy8V667gJPCB13kmnn5tI=
Date: Wed, 1 May 2019 10:50:50 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: kpc2000: fix up build problems with readq()
Message-ID: <20190501085050.GA2485@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
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

The 0-day system found a bunch of warnings for when readq() is not
defined on the platform, so fix this by including the
linux/io-64-nonatomic-lo-hi.h file which will fix up these issues.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 1 +
 drivers/staging/kpc2000/kpc2000/core.c       | 1 +
 drivers/staging/kpc2000/kpc2000/fileops.c    | 1 +
 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c | 1 +
 4 files changed, 4 insertions(+)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index 13f544f3c0b9..e0dba91e7fa8 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -6,6 +6,7 @@
 #include <linux/slab.h>
 #include <asm/io.h>
 #include <linux/io.h>
+#include <linux/io-64-nonatomic-lo-hi.h>
 #include <linux/mfd/core.h>
 #include <linux/platform_device.h>
 #include <linux/ioport.h>
diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 35b87cdc4fb0..40390cdd3c8d 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -10,6 +10,7 @@
 #include <linux/mfd/core.h>
 #include <linux/platform_device.h>
 #include <linux/ioport.h>
+#include <linux/io-64-nonatomic-lo-hi.h>
 #include <linux/interrupt.h>
 #include <linux/workqueue.h>
 #include <linux/device.h>
diff --git a/drivers/staging/kpc2000/kpc2000/fileops.c b/drivers/staging/kpc2000/kpc2000/fileops.c
index a6beca8dbac5..b3b0b763fa1e 100644
--- a/drivers/staging/kpc2000/kpc2000/fileops.c
+++ b/drivers/staging/kpc2000/kpc2000/fileops.c
@@ -10,6 +10,7 @@
 #include <linux/uaccess.h>    /* copy_*_user */
 #include <linux/rwsem.h>
 #include <linux/idr.h>
+#include <linux/io-64-nonatomic-lo-hi.h>
 #include <linux/device.h>
 #include <linux/sched.h>
 #include "pcie.h"
diff --git a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
index 1fc30dc687f9..0fb068b2408d 100644
--- a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
+++ b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
@@ -14,6 +14,7 @@
 #include <linux/module.h>
 #include <linux/types.h>
 #include <asm/io.h>
+#include <linux/io-64-nonatomic-lo-hi.h>
 #include <linux/export.h>
 #include <linux/slab.h>
 #include <linux/platform_device.h>
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

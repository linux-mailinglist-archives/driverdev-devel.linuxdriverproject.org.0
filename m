Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8D65BF03
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 17:06:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 20ED087ADB;
	Mon,  1 Jul 2019 15:06:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ugtuHpf7CrAw; Mon,  1 Jul 2019 15:06:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC8F387A9C;
	Mon,  1 Jul 2019 15:06:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F9491BF2BC
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 15:06:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 46274204BC
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 15:06:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4LJL6Y7fNbrX for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 15:06:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 67753203A8
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 15:06:43 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 95587AFFC;
 Mon,  1 Jul 2019 15:06:40 +0000 (UTC)
Date: Mon, 1 Jul 2019 17:06:38 +0200
From: Jean Delvare <jdelvare@suse.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] staging: kpc2000: drop useless softdep statement
Message-ID: <20190701170638.68bd414d@endymion>
Organization: SUSE Linux
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.31; x86_64-suse-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The i2c-dev module is for access to I2C buses from user-space.
Kernel drivers do not care about its presence.

Signed-off-by: Jean Delvare <jdelvare@suse.de>
Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c |    1 -
 1 file changed, 1 deletion(-)

--- linux-5.2-rc7.orig/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c	2019-06-30 05:25:36.000000000 +0200
+++ linux-5.2-rc7/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c	2019-07-01 11:33:17.336697545 +0200
@@ -26,7 +26,6 @@
 
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Matt.Sickler@Daktronics.com");
-MODULE_SOFTDEP("pre: i2c-dev");
 
 struct i2c_device {
     unsigned long           smba;


-- 
Jean Delvare
SUSE L3 Support
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

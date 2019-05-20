Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC0F22F37
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 10:47:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BBAB88557B;
	Mon, 20 May 2019 08:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 95e1xeUwp0sH; Mon, 20 May 2019 08:47:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A34CF85456;
	Mon, 20 May 2019 08:47:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DCA31BF83A
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 689B085456
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:47:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tqcQXoj3tB8k for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 08:47:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D57F28545E
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 08:47:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 38478206BA;
 Mon, 20 May 2019 08:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558342062;
 bh=w57vVd0j1rqvCyR9W56Hzst2WDpbBx0Ex2MHnXRehDc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A/sZWg3gDRxYyZcKJ/EL8aRCY+azDaVzdrM2e/UJa+/D6Y4EdtonyJ3crwIdzijet
 DNVNfkRNLWSgVbzux2xdW2vTTLrrR/eyfKLXkrmGBfV1kxljzbzeykSPASXFgxPRrQ
 c966ZZ9Amd5MYUeA0AEFgWIW+0BDvn96JUSr2br0=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 5/7] staging: kpc2000: move the i2c driver out of its
 subdirectory
Date: Mon, 20 May 2019 10:47:14 +0200
Message-Id: <20190520084716.28063-6-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520084716.28063-1-gregkh@linuxfoundation.org>
References: <20190520084716.28063-1-gregkh@linuxfoundation.org>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There is no need for a subdirectory for just a single .c file.  So move
it out of kpc_i2c/ and rename it to the module name that we want the
file to build to, saving one more linking stage.

Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 v2: no changes

 drivers/staging/kpc2000/Makefile                              | 2 +-
 .../staging/kpc2000/{kpc_i2c/i2c_driver.c => kpc2000_i2c.c}   | 2 +-
 drivers/staging/kpc2000/kpc_i2c/Makefile                      | 4 ----
 3 files changed, 2 insertions(+), 6 deletions(-)
 rename drivers/staging/kpc2000/{kpc_i2c/i2c_driver.c => kpc2000_i2c.c} (99%)
 delete mode 100644 drivers/staging/kpc2000/kpc_i2c/Makefile

diff --git a/drivers/staging/kpc2000/Makefile b/drivers/staging/kpc2000/Makefile
index 99b1699a8b70..d15ed49807d5 100644
--- a/drivers/staging/kpc2000/Makefile
+++ b/drivers/staging/kpc2000/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-$(CONFIG_KPC2000) += kpc2000/
-obj-$(CONFIG_KPC2000_I2C) += kpc_i2c/
+obj-$(CONFIG_KPC2000_I2C) += kpc2000_i2c.o
 obj-$(CONFIG_KPC2000_SPI) += kpc2000_spi.o
 obj-$(CONFIG_KPC2000_DMA) += kpc_dma/
diff --git a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c b/drivers/staging/kpc2000/kpc2000_i2c.c
similarity index 99%
rename from drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
rename to drivers/staging/kpc2000/kpc2000_i2c.c
index 986148c72185..42061318d2d4 100644
--- a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -28,7 +28,7 @@
 #include <linux/rwsem.h>
 #include <linux/delay.h>
 #include <linux/i2c.h>
-#include "../kpc.h"
+#include "kpc.h"
 
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Matt.Sickler@Daktronics.com");
diff --git a/drivers/staging/kpc2000/kpc_i2c/Makefile b/drivers/staging/kpc2000/kpc_i2c/Makefile
deleted file mode 100644
index 63a6ce4b8e03..000000000000
--- a/drivers/staging/kpc2000/kpc_i2c/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-
-obj-m := kpc2000_i2c.o
-kpc2000_i2c-objs := i2c_driver.o
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

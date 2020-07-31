Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D4823460E
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 14:44:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B5F8486ACA;
	Fri, 31 Jul 2020 12:44:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QSjxmZ69a0Tw; Fri, 31 Jul 2020 12:44:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 27D438623F;
	Fri, 31 Jul 2020 12:44:56 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC01D1BF28F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 12:44:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A85C8886D4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 12:44:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0OVYz3D0uAmK
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 12:44:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D4F0A8869D
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1596199493; x=1627735493;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=cDNn5Pt2cvBTjI3feen1vNEeXzc+hlnJwACYVaaQluM=;
 b=yHrRYS9V8iKfTXdTK8OVfrj4D5Tt85sW6HRwa3seRmIqXYPK3shvKY0l
 9MiKwP8bGm7YTRpvNSNs8FalOG3QRnNR+xzF7cC3XgWjz6bAEOZ9MbPTz
 uuGzmSdalEBVTW4oVn1nqicogtXOcpy+1UBWyxmS4WOLZ3IYQ471E9Ecy
 ynZVWESCP3/iFEAqDs2s1+V6gbsNly0vc5sC2iGEnGcA9U7CPblh5AY/C
 CkWFSD6WFc44gwQfX5SX2nZXfQEMZTf6oQ/f6tPG/jcBkzoy6BcDn3ZE6
 KcTps6QBd8Dlg5nQqZFk6Uer2sIyktcNREjENu45MgFNkuuJ016jB2QzZ Q==;
IronPort-SDR: xTovZtwhw0+MJfPFYeYha9ybnS7i/hmTXXYO46KXDxsZtcaXochmebZUFDJ07hVci7mWMRjONe
 EC3VU1WaDJjFXWqRFXRmXq6f9Ml6gd5jf6lw12cp5+oeONyuwj2pacbpNh83Vq+0Uhzugz/JfF
 25rIw0L+Ab561O4vbtWSjURwue01SzgZ95mj2L3D3ZNeQHdy0+oHlWH9GgWB0Wi9Ff1Wr4M3m7
 7p6qIg43X88gI6cHc7O+aWK8ATEw8wsB2N+7MrRWf17f02iMyDbTv4Sq1SH0Gp0+D+MB5EoQhh
 17k=
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="83934741"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2020 05:44:47 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 31 Jul 2020 05:44:40 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 31 Jul 2020 01:50:59 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 31 Jul 2020 01:50:58 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v7] drivers: most: add USB adapter driver
Date: Fri, 31 Jul 2020 10:50:52 +0200
Message-ID: <1596185452-25872-1-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch adds the USB driver source file most_usb.c and
modifies the Makefile and Kconfig accordingly.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v2:
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
        - don't remove usb driver from staging area
        - don't touch staging/most/Kconfig
        - remove subdirectory for USB driver and put source file into
          drivers/most
v3:
        - submitted fixes found during code audit to staging version
          first to be able to resend single patch that adds the driver
v4:
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

        submitted patch set that fixes issues found during code audit
        to staging version first to be able to resend single patch that
        adds the driver. The patch series included:

        - use function sysfs_streq
        - add missing put_device calls
        - use correct error codes
        - replace code to calculate array index
        - don't use error path to exit function on success
        - move allocation of URB out of critical section
        - return 0 instead of variable
        - change return value of function drci_rd_reg
        - don't use expressions that might fail in a declaration
        - change order of function parameters

v5:
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

        submitted patch set that fixes issues found during code audit
        to staging version first to be able to resend single patch that
        adds the driver. The patch series included:

        - init return value in default path of switch/case expression

v6:
Reported-by: Randy Dunlap <rdunlap@infradead.org>

	remove dependency to NET in Kconfig file

v7:
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

	created patch with 'git format-patch -M' to show that this is
	a move only.
 
 drivers/most/Kconfig                                | 11 +++++++++++
 drivers/most/Makefile                               |  2 ++
 drivers/{staging/most/usb/usb.c => most/most_usb.c} |  0
 drivers/staging/most/Kconfig                        |  2 --
 drivers/staging/most/usb/Kconfig                    | 13 -------------
 drivers/staging/most/usb/Makefile                   |  4 ----
 6 files changed, 13 insertions(+), 19 deletions(-)
 rename drivers/{staging/most/usb/usb.c => most/most_usb.c} (100%)
 delete mode 100644 drivers/staging/most/usb/Kconfig
 delete mode 100644 drivers/staging/most/usb/Makefile

diff --git a/drivers/most/Kconfig b/drivers/most/Kconfig
index 58d7999..60fc082 100644
--- a/drivers/most/Kconfig
+++ b/drivers/most/Kconfig
@@ -13,3 +13,14 @@ menuconfig MOST
 	  module will be called most_core.
 
 	  If in doubt, say N here.
+
+if MOST
+config MOST_USB_HDM
+	tristate "USB"
+	depends on USB
+	help
+	  Say Y here if you want to connect via USB to network transceiver.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called most_usb.
+endif
diff --git a/drivers/most/Makefile b/drivers/most/Makefile
index e810cd3..6a3cb90 100644
--- a/drivers/most/Makefile
+++ b/drivers/most/Makefile
@@ -2,3 +2,5 @@
 obj-$(CONFIG_MOST) += most_core.o
 most_core-y :=	core.o \
 		configfs.o
+
+obj-$(CONFIG_MOST_USB_HDM) += most_usb.o
diff --git a/drivers/staging/most/usb/usb.c b/drivers/most/most_usb.c
similarity index 100%
rename from drivers/staging/most/usb/usb.c
rename to drivers/most/most_usb.c
diff --git a/drivers/staging/most/Kconfig b/drivers/staging/most/Kconfig
index c5a99f7..c35fb34f 100644
--- a/drivers/staging/most/Kconfig
+++ b/drivers/staging/most/Kconfig
@@ -30,6 +30,4 @@ source "drivers/staging/most/dim2/Kconfig"
 
 source "drivers/staging/most/i2c/Kconfig"
 
-source "drivers/staging/most/usb/Kconfig"
-
 endif
diff --git a/drivers/staging/most/usb/Kconfig b/drivers/staging/most/usb/Kconfig
deleted file mode 100644
index a47a973..0000000
--- a/drivers/staging/most/usb/Kconfig
+++ /dev/null
@@ -1,13 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-#
-# MOST USB configuration
-#
-
-config MOST_USB
-	tristate "USB"
-	depends on USB
-	help
-	  Say Y here if you want to connect via USB to network transceiver.
-
-	  To compile this driver as a module, choose M here: the
-	  module will be called most_usb.
diff --git a/drivers/staging/most/usb/Makefile b/drivers/staging/most/usb/Makefile
deleted file mode 100644
index c2b2073..0000000
--- a/drivers/staging/most/usb/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_MOST_USB) += most_usb.o
-
-most_usb-objs := usb.o
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

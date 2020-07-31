Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A23F23459B
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 14:21:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C98B186AB7;
	Fri, 31 Jul 2020 12:21:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BTPbGSU7PeZn; Fri, 31 Jul 2020 12:21:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1809869E2;
	Fri, 31 Jul 2020 12:21:06 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D73E1BF28F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 12:21:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 66E0D2154A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 12:21:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v-9B7dm+i0Lj
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 12:21:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by silver.osuosl.org (Postfix) with ESMTPS id E266520396
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 12:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1596198063; x=1627734063;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=cDNn5Pt2cvBTjI3feen1vNEeXzc+hlnJwACYVaaQluM=;
 b=Cuqa7kbcmhIq4yXq54mggH0jtNvVzjSQZ/luE+MdTTJejHH5x0Cn8Pet
 6RL8LyopYROQ6wPfySdDoZOV/h5kSeo+7vHDUn6VPDy1QbFNOueqp9Sr8
 /I2MFqcXjRIcHu078lHzOCLRakhF8qQ8GPXT7LEZvc7a+Oiz2yuvipE+h
 EffFQz+ZOyuR4W6sP7XfbpzLxu3wikQWk3GetE7W05PC6LK+gFL/wVKGT
 4ISAeyhZWJ8IE1KkVjD7IsGzcwHFGfRf522eUt+n1Nk+f2trCdY4d4VWQ
 CReBP8kIXMnPD1kPrsn5wIT2zF+Uap7SxRmc8Zz9zCOJxntr4W7XZ2Axs Q==;
IronPort-SDR: 5uCtydXQXBF/8gIe/f+KCO4huaguvl+tzo8PE3ybjA0jhBBomxUAg9KjpgNZ4oEmgpf6CVDT6T
 i3LE/R5lC/k5uQJc1rR8H4NQfxoU9/tYF/fPUNGvLxa+V9lxPV/62wcBNCC7+/MVBvjwTX6YRR
 4wg92ZomXkgt9OTta7jYNlVGRstVaobw1nq4QI53F/t28gCUfRMujYU7i0A1AASAH8LEWvW3I5
 6v/A4DWuv3grnithyQ458vcpViSm1UZVm7znViaSDooW9tyPdg9hfSHPHiBBmOXF8jhnH47JDH
 ZVI=
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="83930404"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2020 05:21:02 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 31 Jul 2020 05:21:01 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 31 Jul 2020 05:21:00 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v7] drivers: most: add USB adapter driver
Date: Fri, 31 Jul 2020 14:20:58 +0200
Message-ID: <1596198058-26541-1-git-send-email-christian.gromm@microchip.com>
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

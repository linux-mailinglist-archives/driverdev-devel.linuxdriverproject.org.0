Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6471D1BF1F1
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 10:00:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8AD4086CD4;
	Thu, 30 Apr 2020 08:00:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Frwrelw87FiV; Thu, 30 Apr 2020 08:00:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ABA9A86D02;
	Thu, 30 Apr 2020 08:00:33 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 792D71BF3D5
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 08:00:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6FD3A86CD0
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 08:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AMet5P3N1UsK
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 08:00:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2DF0886CC5
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 08:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588233617; x=1619769617;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=FEmr9R5bmtIZGBtPsFyH7Hcvk/DSXFJfEtV8bw254I8=;
 b=N+yUcrH2LhCKkP3o3qca12VGayoaB5NLWrN8mJcbDtC1xgEYqhiIhZUH
 I/+oMbhhpIpC0hDLHV6ptloGR9ijD6oVsVKmTL/nbNseOfky5sytgTiTl
 9i+km7YXbv4T1fgX2WFZO5lPTi/cLpcAX8sHUhpErHJ/EInMS/j8v8qZA
 RR1/E1Eezf7AqzB2FKavqw+W/8BugiacgpqCBS4rlxmYRbtL3+EMtfCo6
 P7RjWz28h5i0E5YYwgBwhdqblT0C8QZKTjx7wxhRjMk/wDtN9eZVCDUot
 JX2fMaXLf6h1uCu0R79hH8sOGcXKxu94ghOiY94kpekUlwujpmxGsM0Ev A==;
IronPort-SDR: eXSFWnezghMR0TaBZPrcyTartR308RksQSaCJWfrJQjT9NGp8FEXLlrrWXB9JR/N6Pc+yvXI4n
 4hBzecmawyfmivGCf87YUGk9Bil/OsPiB+iu/X/tlVbNLSQ400KqatlfMSWZy9fn1QPb3+tUCD
 R8xWm2e7+6E/2kPSyuT6NGJ+JE6Y2w9CPycAES/EvtQSgRLehxCloOyjN022zzGBUv6Q2JxjyZ
 R2oF0LUFK34D5Kz0BVK4gFLcghuc09JVUtNBAZ4/zIGOfC/qQlUFEgLAyTTu4To7HxtyxWrPw5
 jso=
X-IronPort-AV: E=Sophos;i="5.73,334,1583218800"; d="scan'208";a="77820329"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 Apr 2020 01:00:16 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 30 Apr 2020 01:00:16 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 30 Apr 2020 01:00:13 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC] staging: most: usb: move USB adapter driver to stable
 branch
Date: Thu, 30 Apr 2020 10:00:12 +0200
Message-ID: <1588233612-31327-1-git-send-email-christian.gromm@microchip.com>
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
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch moves the MOST USB adapter driver to the stable branch.
It is a follow-up to commit <b276527>.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/most/Kconfig                    | 6 ++++++
 drivers/most/Makefile                   | 2 ++
 drivers/{staging => }/most/usb/Kconfig  | 0
 drivers/{staging => }/most/usb/Makefile | 0
 drivers/{staging => }/most/usb/usb.c    | 0
 drivers/staging/most/Kconfig            | 2 --
 drivers/staging/most/Makefile           | 1 -
 7 files changed, 8 insertions(+), 3 deletions(-)
 rename drivers/{staging => }/most/usb/Kconfig (100%)
 rename drivers/{staging => }/most/usb/Makefile (100%)
 rename drivers/{staging => }/most/usb/usb.c (100%)

diff --git a/drivers/most/Kconfig b/drivers/most/Kconfig
index 58d7999..400ed52 100644
--- a/drivers/most/Kconfig
+++ b/drivers/most/Kconfig
@@ -13,3 +13,9 @@ menuconfig MOST
 	  module will be called most_core.
 
 	  If in doubt, say N here.
+
+if MOST
+
+source "drivers/most/usb/Kconfig"
+
+endif
diff --git a/drivers/most/Makefile b/drivers/most/Makefile
index e810cd3..5c52ae1 100644
--- a/drivers/most/Makefile
+++ b/drivers/most/Makefile
@@ -2,3 +2,5 @@
 obj-$(CONFIG_MOST) += most_core.o
 most_core-y :=	core.o \
 		configfs.o
+
+obj-$(CONFIG_MOST_USB)  += usb/
diff --git a/drivers/staging/most/usb/Kconfig b/drivers/most/usb/Kconfig
similarity index 100%
rename from drivers/staging/most/usb/Kconfig
rename to drivers/most/usb/Kconfig
diff --git a/drivers/staging/most/usb/Makefile b/drivers/most/usb/Makefile
similarity index 100%
rename from drivers/staging/most/usb/Makefile
rename to drivers/most/usb/Makefile
diff --git a/drivers/staging/most/usb/usb.c b/drivers/most/usb/usb.c
similarity index 100%
rename from drivers/staging/most/usb/usb.c
rename to drivers/most/usb/usb.c
diff --git a/drivers/staging/most/Kconfig b/drivers/staging/most/Kconfig
index c5a99f7..c35fb34f 100644
--- a/drivers/staging/most/Kconfig
+++ b/drivers/staging/most/Kconfig
@@ -30,6 +30,4 @@ source "drivers/staging/most/dim2/Kconfig"
 
 source "drivers/staging/most/i2c/Kconfig"
 
-source "drivers/staging/most/usb/Kconfig"
-
 endif
diff --git a/drivers/staging/most/Makefile b/drivers/staging/most/Makefile
index a803a98..7c10b84 100644
--- a/drivers/staging/most/Makefile
+++ b/drivers/staging/most/Makefile
@@ -6,4 +6,3 @@ obj-$(CONFIG_MOST_SOUND)	+= sound/
 obj-$(CONFIG_MOST_VIDEO)	+= video/
 obj-$(CONFIG_MOST_DIM2)	+= dim2/
 obj-$(CONFIG_MOST_I2C)	+= i2c/
-obj-$(CONFIG_MOST_USB)	+= usb/
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

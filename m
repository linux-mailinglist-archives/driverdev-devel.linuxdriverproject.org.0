Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A840682F95
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 12:15:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A1B0221546;
	Tue,  6 Aug 2019 10:15:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N2tFlccIMEoH; Tue,  6 Aug 2019 10:15:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3FB922153D;
	Tue,  6 Aug 2019 10:15:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A5631BF263
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 10:15:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7CBC987D9E
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 10:15:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rBaTYBjb0FX7 for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 10:15:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A732887D96
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 10:15:12 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C73F420B1F;
 Tue,  6 Aug 2019 10:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565086512;
 bh=CmeI9vJSRYnmb8CP1QByver92TdDYC5IQADvIHuvbKs=;
 h=Date:From:To:Cc:Subject:From;
 b=UQQGCNyQFAkhs6I1JPlCRMJvQVPxdkeALm4g/uwHvibUQhSK/We4hGvHo2PxYjHM3
 5GkLq0bk3Nab+7AyoCGh+Mz78Q1Ppf5Dk+WMMPRKfqMWa6beDRIpASUJroEBB+DCXA
 +EW/VjVlt71kflvpBmsCIKAwI5mbSV5yaVNDJoxM=
Date: Tue, 6 Aug 2019 12:15:09 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-usb@vger.kernel.org
Subject: [PATCH] USB: Move wusbcore and UWB to staging as it is obsolete
Message-ID: <20190806101509.GA11280@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The UWB and wusbcore code is long obsolete, so let us just move the code
out of the real part of the kernel and into the drivers/staging/
location with plans to remove it entirely in a few releases.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 MAINTAINERS                                   | 15 +++-------
 drivers/Kconfig                               |  2 --
 drivers/Makefile                              |  1 -
 drivers/staging/Kconfig                       |  3 ++
 drivers/staging/Makefile                      |  2 ++
 drivers/{ => staging}/uwb/Kconfig             |  0
 drivers/{ => staging}/uwb/Makefile            |  0
 drivers/staging/uwb/TODO                      |  8 ++++++
 drivers/{ => staging}/uwb/address.c           |  0
 drivers/{ => staging}/uwb/allocator.c         |  2 +-
 drivers/{ => staging}/uwb/beacon.c            |  0
 drivers/{ => staging}/uwb/driver.c            |  0
 drivers/{ => staging}/uwb/drp-avail.c         |  0
 drivers/{ => staging}/uwb/drp-ie.c            |  2 +-
 drivers/{ => staging}/uwb/drp.c               |  0
 drivers/{ => staging}/uwb/est.c               |  0
 drivers/{ => staging}/uwb/hwa-rc.c            |  6 ++--
 drivers/{ => staging}/uwb/i1480/Makefile      |  0
 drivers/{ => staging}/uwb/i1480/dfu/Makefile  |  0
 drivers/{ => staging}/uwb/i1480/dfu/dfu.c     |  2 +-
 .../{ => staging}/uwb/i1480/dfu/i1480-dfu.h   |  2 +-
 drivers/{ => staging}/uwb/i1480/dfu/mac.c     |  2 +-
 drivers/{ => staging}/uwb/i1480/dfu/phy.c     |  2 +-
 drivers/{ => staging}/uwb/i1480/dfu/usb.c     |  6 ++--
 drivers/{ => staging}/uwb/i1480/i1480-est.c   |  2 +-
 drivers/{ => staging}/uwb/ie-rcv.c            |  0
 drivers/{ => staging}/uwb/ie.c                |  0
 .../staging/uwb/include}/debug-cmd.h          |  0
 .../staging/uwb/include}/spec.h               |  0
 .../uwb => drivers/staging/uwb/include}/umc.h |  0
 .../staging/uwb/include}/whci.h               |  0
 drivers/{ => staging}/uwb/lc-dev.c            |  0
 drivers/{ => staging}/uwb/lc-rc.c             |  0
 drivers/{ => staging}/uwb/neh.c               |  0
 drivers/{ => staging}/uwb/pal.c               |  2 +-
 drivers/{ => staging}/uwb/radio.c             |  2 +-
 drivers/{ => staging}/uwb/reset.c             |  0
 drivers/{ => staging}/uwb/rsv.c               |  2 +-
 drivers/{ => staging}/uwb/scan.c              |  0
 drivers/{ => staging}/uwb/umc-bus.c           |  2 +-
 drivers/{ => staging}/uwb/umc-dev.c           |  2 +-
 drivers/{ => staging}/uwb/umc-drv.c           |  2 +-
 drivers/{ => staging}/uwb/uwb-debug.c         |  3 +-
 drivers/{ => staging}/uwb/uwb-internal.h      |  2 +-
 {include/linux => drivers/staging/uwb}/uwb.h  |  2 +-
 drivers/{ => staging}/uwb/uwbd.c              |  0
 drivers/{ => staging}/uwb/whc-rc.c            |  6 ++--
 drivers/{ => staging}/uwb/whci.c              |  4 +--
 .../staging/wusbcore/Documentation}/wusb-cbaf |  0
 .../Documentation}/wusb-design-overview.rst   |  0
 drivers/{usb => staging}/wusbcore/Kconfig     |  1 +
 drivers/{usb => staging}/wusbcore/Makefile    |  2 ++
 drivers/staging/wusbcore/TODO                 |  8 ++++++
 drivers/{usb => staging}/wusbcore/cbaf.c      |  6 ++--
 drivers/{usb => staging}/wusbcore/crypto.c    |  4 +--
 drivers/{usb => staging}/wusbcore/dev-sysfs.c |  0
 .../{usb => staging}/wusbcore/devconnect.c    |  0
 drivers/staging/wusbcore/host/Kconfig         | 28 +++++++++++++++++++
 drivers/staging/wusbcore/host/Makefile        |  3 ++
 .../{usb => staging/wusbcore}/host/hwa-hc.c   |  4 +--
 .../wusbcore}/host/whci/Makefile              |  0
 .../{usb => staging/wusbcore}/host/whci/asl.c |  4 +--
 .../wusbcore}/host/whci/debug.c               |  2 +-
 .../{usb => staging/wusbcore}/host/whci/hcd.c |  4 +--
 .../{usb => staging/wusbcore}/host/whci/hw.c  |  4 +--
 .../wusbcore}/host/whci/init.c                |  4 +--
 .../{usb => staging/wusbcore}/host/whci/int.c |  4 +--
 .../{usb => staging/wusbcore}/host/whci/pzl.c |  4 +--
 .../wusbcore}/host/whci/qset.c                |  4 +--
 .../wusbcore}/host/whci/whcd.h                |  4 +--
 .../wusbcore}/host/whci/whci-hc.h             |  0
 .../wusbcore}/host/whci/wusb.c                |  4 +--
 .../staging/wusbcore/include}/association.h   |  0
 .../staging/wusbcore/include}/wusb-wa.h       |  0
 .../staging/wusbcore/include}/wusb.h          |  2 +-
 drivers/{usb => staging}/wusbcore/mmc.c       |  2 +-
 drivers/{usb => staging}/wusbcore/pal.c       |  0
 .../{usb => staging}/wusbcore/reservation.c   |  2 +-
 drivers/{usb => staging}/wusbcore/rh.c        |  0
 drivers/{usb => staging}/wusbcore/security.c  |  0
 drivers/{usb => staging}/wusbcore/wa-hc.c     |  0
 drivers/{usb => staging}/wusbcore/wa-hc.h     |  6 ++--
 drivers/{usb => staging}/wusbcore/wa-nep.c    |  0
 drivers/{usb => staging}/wusbcore/wa-rpipe.c  |  0
 drivers/{usb => staging}/wusbcore/wa-xfer.c   |  0
 drivers/{usb => staging}/wusbcore/wusbhc.c    |  0
 drivers/{usb => staging}/wusbcore/wusbhc.h    |  4 +--
 drivers/usb/Kconfig                           |  2 --
 drivers/usb/Makefile                          |  2 --
 drivers/usb/host/Kconfig                      | 26 -----------------
 drivers/usb/host/Makefile                     |  3 --
 91 files changed, 120 insertions(+), 109 deletions(-)
 rename drivers/{ => staging}/uwb/Kconfig (100%)
 rename drivers/{ => staging}/uwb/Makefile (100%)
 create mode 100644 drivers/staging/uwb/TODO
 rename drivers/{ => staging}/uwb/address.c (100%)
 rename drivers/{ => staging}/uwb/allocator.c (99%)
 rename drivers/{ => staging}/uwb/beacon.c (100%)
 rename drivers/{ => staging}/uwb/driver.c (100%)
 rename drivers/{ => staging}/uwb/drp-avail.c (100%)
 rename drivers/{ => staging}/uwb/drp-ie.c (99%)
 rename drivers/{ => staging}/uwb/drp.c (100%)
 rename drivers/{ => staging}/uwb/est.c (100%)
 rename drivers/{ => staging}/uwb/hwa-rc.c (99%)
 rename drivers/{ => staging}/uwb/i1480/Makefile (100%)
 rename drivers/{ => staging}/uwb/i1480/dfu/Makefile (100%)
 rename drivers/{ => staging}/uwb/i1480/dfu/dfu.c (99%)
 rename drivers/{ => staging}/uwb/i1480/dfu/i1480-dfu.h (99%)
 rename drivers/{ => staging}/uwb/i1480/dfu/mac.c (99%)
 rename drivers/{ => staging}/uwb/i1480/dfu/phy.c (99%)
 rename drivers/{ => staging}/uwb/i1480/dfu/usb.c (99%)
 rename drivers/{ => staging}/uwb/i1480/i1480-est.c (99%)
 rename drivers/{ => staging}/uwb/ie-rcv.c (100%)
 rename drivers/{ => staging}/uwb/ie.c (100%)
 rename {include/linux/uwb => drivers/staging/uwb/include}/debug-cmd.h (100%)
 rename {include/linux/uwb => drivers/staging/uwb/include}/spec.h (100%)
 rename {include/linux/uwb => drivers/staging/uwb/include}/umc.h (100%)
 rename {include/linux/uwb => drivers/staging/uwb/include}/whci.h (100%)
 rename drivers/{ => staging}/uwb/lc-dev.c (100%)
 rename drivers/{ => staging}/uwb/lc-rc.c (100%)
 rename drivers/{ => staging}/uwb/neh.c (100%)
 rename drivers/{ => staging}/uwb/pal.c (99%)
 rename drivers/{ => staging}/uwb/radio.c (99%)
 rename drivers/{ => staging}/uwb/reset.c (100%)
 rename drivers/{ => staging}/uwb/rsv.c (99%)
 rename drivers/{ => staging}/uwb/scan.c (100%)
 rename drivers/{ => staging}/uwb/umc-bus.c (99%)
 rename drivers/{ => staging}/uwb/umc-dev.c (98%)
 rename drivers/{ => staging}/uwb/umc-drv.c (96%)
 rename drivers/{ => staging}/uwb/uwb-debug.c (99%)
 rename drivers/{ => staging}/uwb/uwb-internal.h (99%)
 rename {include/linux => drivers/staging/uwb}/uwb.h (99%)
 rename drivers/{ => staging}/uwb/uwbd.c (100%)
 rename drivers/{ => staging}/uwb/whc-rc.c (99%)
 rename drivers/{ => staging}/uwb/whci.c (99%)
 rename {Documentation/usb => drivers/staging/wusbcore/Documentation}/wusb-cbaf (100%)
 rename {Documentation/usb => drivers/staging/wusbcore/Documentation}/wusb-design-overview.rst (100%)
 rename drivers/{usb => staging}/wusbcore/Kconfig (95%)
 rename drivers/{usb => staging}/wusbcore/Makefile (96%)
 create mode 100644 drivers/staging/wusbcore/TODO
 rename drivers/{usb => staging}/wusbcore/cbaf.c (99%)
 rename drivers/{usb => staging}/wusbcore/crypto.c (99%)
 rename drivers/{usb => staging}/wusbcore/dev-sysfs.c (100%)
 rename drivers/{usb => staging}/wusbcore/devconnect.c (100%)
 create mode 100644 drivers/staging/wusbcore/host/Kconfig
 create mode 100644 drivers/staging/wusbcore/host/Makefile
 rename drivers/{usb => staging/wusbcore}/host/hwa-hc.c (99%)
 rename drivers/{usb => staging/wusbcore}/host/whci/Makefile (100%)
 rename drivers/{usb => staging/wusbcore}/host/whci/asl.c (99%)
 rename drivers/{usb => staging/wusbcore}/host/whci/debug.c (99%)
 rename drivers/{usb => staging/wusbcore}/host/whci/hcd.c (99%)
 rename drivers/{usb => staging/wusbcore}/host/whci/hw.c (97%)
 rename drivers/{usb => staging/wusbcore}/host/whci/init.c (98%)
 rename drivers/{usb => staging/wusbcore}/host/whci/int.c (96%)
 rename drivers/{usb => staging/wusbcore}/host/whci/pzl.c (99%)
 rename drivers/{usb => staging/wusbcore}/host/whci/qset.c (99%)
 rename drivers/{usb => staging/wusbcore}/host/whci/whcd.h (98%)
 rename drivers/{usb => staging/wusbcore}/host/whci/whci-hc.h (100%)
 rename drivers/{usb => staging/wusbcore}/host/whci/wusb.c (98%)
 rename {include/linux/usb => drivers/staging/wusbcore/include}/association.h (100%)
 rename {include/linux/usb => drivers/staging/wusbcore/include}/wusb-wa.h (100%)
 rename {include/linux/usb => drivers/staging/wusbcore/include}/wusb.h (99%)
 rename drivers/{usb => staging}/wusbcore/mmc.c (99%)
 rename drivers/{usb => staging}/wusbcore/pal.c (100%)
 rename drivers/{usb => staging}/wusbcore/reservation.c (99%)
 rename drivers/{usb => staging}/wusbcore/rh.c (100%)
 rename drivers/{usb => staging}/wusbcore/security.c (100%)
 rename drivers/{usb => staging}/wusbcore/wa-hc.c (100%)
 rename drivers/{usb => staging}/wusbcore/wa-hc.h (99%)
 rename drivers/{usb => staging}/wusbcore/wa-nep.c (100%)
 rename drivers/{usb => staging}/wusbcore/wa-rpipe.c (100%)
 rename drivers/{usb => staging}/wusbcore/wa-xfer.c (100%)
 rename drivers/{usb => staging}/wusbcore/wusbhc.c (100%)
 rename drivers/{usb => staging}/wusbcore/wusbhc.h (99%)

diff --git a/MAINTAINERS b/MAINTAINERS
index 6426db5198f0..f4463fb48249 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3800,14 +3800,9 @@ F:	scripts/sign-file.c
 F:	scripts/extract-cert.c
 
 CERTIFIED WIRELESS USB (WUSB) SUBSYSTEM:
-L:	linux-usb@vger.kernel.org
+L:	devel@driverdev.osuosl.org
 S:	Orphan
-F:	Documentation/usb/wusb-design-overview.rst
-F:	Documentation/usb/wusb-cbaf
-F:	drivers/usb/host/hwa-hc.c
-F:	drivers/usb/host/whci/
-F:	drivers/usb/wusbcore/
-F:	include/linux/usb/wusb*
+F:	drivers/staging/wbusbcore/
 
 CFAG12864B LCD DRIVER
 M:	Miguel Ojeda Sandonis <miguel.ojeda.sandonis@gmail.com>
@@ -16447,11 +16442,9 @@ F:	drivers/usb/common/ulpi.c
 F:	include/linux/ulpi/
 
 ULTRA-WIDEBAND (UWB) SUBSYSTEM:
-L:	linux-usb@vger.kernel.org
+L:	devel@driverdev.osuosl.org
 S:	Orphan
-F:	drivers/uwb/
-F:	include/linux/uwb.h
-F:	include/linux/uwb/
+F:	drivers/staging/uwb/
 
 UNICODE SUBSYSTEM:
 M:	Gabriel Krisman Bertazi <krisman@collabora.com>
diff --git a/drivers/Kconfig b/drivers/Kconfig
index 61cf4ea2c229..e8852c09184b 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -108,8 +108,6 @@ source "drivers/hid/Kconfig"
 
 source "drivers/usb/Kconfig"
 
-source "drivers/uwb/Kconfig"
-
 source "drivers/mmc/Kconfig"
 
 source "drivers/memstick/Kconfig"
diff --git a/drivers/Makefile b/drivers/Makefile
index 6d37564e783c..cf046e9bd88c 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -100,7 +100,6 @@ obj-$(CONFIG_ZORRO)		+= zorro/
 obj-$(CONFIG_ATA_OVER_ETH)	+= block/aoe/
 obj-$(CONFIG_PARIDE) 		+= block/paride/
 obj-$(CONFIG_TC)		+= tc/
-obj-$(CONFIG_UWB)		+= uwb/
 obj-$(CONFIG_USB_PHY)		+= usb/
 obj-$(CONFIG_USB)		+= usb/
 obj-$(CONFIG_USB_SUPPORT)	+= usb/
diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index 7c96a01eef6c..cf419d9c942d 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -120,4 +120,7 @@ source "drivers/staging/kpc2000/Kconfig"
 
 source "drivers/staging/isdn/Kconfig"
 
+source "drivers/staging/wusbcore/Kconfig"
+source "drivers/staging/uwb/Kconfig"
+
 endif # STAGING
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index fcaac9693b83..38179bc842a8 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -50,3 +50,5 @@ obj-$(CONFIG_EROFS_FS)		+= erofs/
 obj-$(CONFIG_FIELDBUS_DEV)     += fieldbus/
 obj-$(CONFIG_KPC2000)		+= kpc2000/
 obj-$(CONFIG_ISDN_CAPI)		+= isdn/
+obj-$(CONFIG_UWB)		+= uwb/
+obj-$(CONFIG_USB_WUSB)		+= wusbcore/
diff --git a/drivers/uwb/Kconfig b/drivers/staging/uwb/Kconfig
similarity index 100%
rename from drivers/uwb/Kconfig
rename to drivers/staging/uwb/Kconfig
diff --git a/drivers/uwb/Makefile b/drivers/staging/uwb/Makefile
similarity index 100%
rename from drivers/uwb/Makefile
rename to drivers/staging/uwb/Makefile
diff --git a/drivers/staging/uwb/TODO b/drivers/staging/uwb/TODO
new file mode 100644
index 000000000000..abae57000534
--- /dev/null
+++ b/drivers/staging/uwb/TODO
@@ -0,0 +1,8 @@
+TODO: Remove in late 2019 unless there are users
+
+There seems to not be any real wireless USB devices anywhere in the wild
+anymore.  It turned out to be a failed technology :(
+
+This will be removed from the tree if no one objects.
+
+Greg Kroah-Hartman <gregkh@linuxfoundation.org>
diff --git a/drivers/uwb/address.c b/drivers/staging/uwb/address.c
similarity index 100%
rename from drivers/uwb/address.c
rename to drivers/staging/uwb/address.c
diff --git a/drivers/uwb/allocator.c b/drivers/staging/uwb/allocator.c
similarity index 99%
rename from drivers/uwb/allocator.c
rename to drivers/staging/uwb/allocator.c
index 2e1590124d5f..1f429fba20b7 100644
--- a/drivers/uwb/allocator.c
+++ b/drivers/staging/uwb/allocator.c
@@ -6,7 +6,7 @@
  */
 #include <linux/kernel.h>
 #include <linux/slab.h>
-#include <linux/uwb.h>
+#include "uwb.h"
 
 #include "uwb-internal.h"
 
diff --git a/drivers/uwb/beacon.c b/drivers/staging/uwb/beacon.c
similarity index 100%
rename from drivers/uwb/beacon.c
rename to drivers/staging/uwb/beacon.c
diff --git a/drivers/uwb/driver.c b/drivers/staging/uwb/driver.c
similarity index 100%
rename from drivers/uwb/driver.c
rename to drivers/staging/uwb/driver.c
diff --git a/drivers/uwb/drp-avail.c b/drivers/staging/uwb/drp-avail.c
similarity index 100%
rename from drivers/uwb/drp-avail.c
rename to drivers/staging/uwb/drp-avail.c
diff --git a/drivers/uwb/drp-ie.c b/drivers/staging/uwb/drp-ie.c
similarity index 99%
rename from drivers/uwb/drp-ie.c
rename to drivers/staging/uwb/drp-ie.c
index 4b545b41161c..b2a862cf76de 100644
--- a/drivers/uwb/drp-ie.c
+++ b/drivers/staging/uwb/drp-ie.c
@@ -8,8 +8,8 @@
 #include <linux/kernel.h>
 #include <linux/random.h>
 #include <linux/slab.h>
-#include <linux/uwb.h>
 
+#include "uwb.h"
 #include "uwb-internal.h"
 
 
diff --git a/drivers/uwb/drp.c b/drivers/staging/uwb/drp.c
similarity index 100%
rename from drivers/uwb/drp.c
rename to drivers/staging/uwb/drp.c
diff --git a/drivers/uwb/est.c b/drivers/staging/uwb/est.c
similarity index 100%
rename from drivers/uwb/est.c
rename to drivers/staging/uwb/est.c
diff --git a/drivers/uwb/hwa-rc.c b/drivers/staging/uwb/hwa-rc.c
similarity index 99%
rename from drivers/uwb/hwa-rc.c
rename to drivers/staging/uwb/hwa-rc.c
index cd03b7f827c1..b6effad749d7 100644
--- a/drivers/uwb/hwa-rc.c
+++ b/drivers/staging/uwb/hwa-rc.c
@@ -38,9 +38,9 @@
 #include <linux/module.h>
 #include <linux/slab.h>
 #include <linux/usb.h>
-#include <linux/usb/wusb.h>
-#include <linux/usb/wusb-wa.h>
-#include <linux/uwb.h>
+#include "../wusbcore/include/wusb.h"
+#include "../wusbcore/include/wusb-wa.h"
+#include "uwb.h"
 
 #include "uwb-internal.h"
 
diff --git a/drivers/uwb/i1480/Makefile b/drivers/staging/uwb/i1480/Makefile
similarity index 100%
rename from drivers/uwb/i1480/Makefile
rename to drivers/staging/uwb/i1480/Makefile
diff --git a/drivers/uwb/i1480/dfu/Makefile b/drivers/staging/uwb/i1480/dfu/Makefile
similarity index 100%
rename from drivers/uwb/i1480/dfu/Makefile
rename to drivers/staging/uwb/i1480/dfu/Makefile
diff --git a/drivers/uwb/i1480/dfu/dfu.c b/drivers/staging/uwb/i1480/dfu/dfu.c
similarity index 99%
rename from drivers/uwb/i1480/dfu/dfu.c
rename to drivers/staging/uwb/i1480/dfu/dfu.c
index ec1af858ead9..9d51ce8faad1 100644
--- a/drivers/uwb/i1480/dfu/dfu.c
+++ b/drivers/staging/uwb/i1480/dfu/dfu.c
@@ -17,9 +17,9 @@
 #include <linux/delay.h>
 #include <linux/pci.h>
 #include <linux/device.h>
-#include <linux/uwb.h>
 #include <linux/random.h>
 #include <linux/export.h>
+#include "../../uwb.h"
 
 /*
  * i1480_rceb_check - Check RCEB for expected field values
diff --git a/drivers/uwb/i1480/dfu/i1480-dfu.h b/drivers/staging/uwb/i1480/dfu/i1480-dfu.h
similarity index 99%
rename from drivers/uwb/i1480/dfu/i1480-dfu.h
rename to drivers/staging/uwb/i1480/dfu/i1480-dfu.h
index 9dd567d174b3..b21d058ecc23 100644
--- a/drivers/uwb/i1480/dfu/i1480-dfu.h
+++ b/drivers/staging/uwb/i1480/dfu/i1480-dfu.h
@@ -50,9 +50,9 @@
 #ifndef __i1480_DFU_H__
 #define __i1480_DFU_H__
 
-#include <linux/uwb/spec.h>
 #include <linux/types.h>
 #include <linux/completion.h>
+#include "../../include/spec.h"
 
 #define i1480_FW_UPLOAD_MODE_MASK (cpu_to_le32(0x00000018))
 
diff --git a/drivers/uwb/i1480/dfu/mac.c b/drivers/staging/uwb/i1480/dfu/mac.c
similarity index 99%
rename from drivers/uwb/i1480/dfu/mac.c
rename to drivers/staging/uwb/i1480/dfu/mac.c
index ddc224f01a7f..6e4d6c9cecf5 100644
--- a/drivers/uwb/i1480/dfu/mac.c
+++ b/drivers/staging/uwb/i1480/dfu/mac.c
@@ -15,7 +15,7 @@
 #include <linux/delay.h>
 #include <linux/firmware.h>
 #include <linux/slab.h>
-#include <linux/uwb.h>
+#include "../../uwb.h"
 #include "i1480-dfu.h"
 
 /*
diff --git a/drivers/uwb/i1480/dfu/phy.c b/drivers/staging/uwb/i1480/dfu/phy.c
similarity index 99%
rename from drivers/uwb/i1480/dfu/phy.c
rename to drivers/staging/uwb/i1480/dfu/phy.c
index 50da4527c113..13512c7dda0b 100644
--- a/drivers/uwb/i1480/dfu/phy.c
+++ b/drivers/staging/uwb/i1480/dfu/phy.c
@@ -15,7 +15,7 @@
 #include <linux/delay.h>
 #include <linux/device.h>
 #include <linux/firmware.h>
-#include <linux/usb/wusb.h>
+#include "../../../wusbcore/include/wusb.h"
 #include "i1480-dfu.h"
 
 
diff --git a/drivers/uwb/i1480/dfu/usb.c b/drivers/staging/uwb/i1480/dfu/usb.c
similarity index 99%
rename from drivers/uwb/i1480/dfu/usb.c
rename to drivers/staging/uwb/i1480/dfu/usb.c
index 6129a8f4b5f2..d41086bdd783 100644
--- a/drivers/uwb/i1480/dfu/usb.c
+++ b/drivers/staging/uwb/i1480/dfu/usb.c
@@ -25,9 +25,9 @@
 #include <linux/interrupt.h>
 #include <linux/slab.h>
 #include <linux/delay.h>
-#include <linux/uwb.h>
-#include <linux/usb/wusb.h>
-#include <linux/usb/wusb-wa.h>
+#include "../../uwb.h"
+#include "../../../wusbcore/include/wusb.h"
+#include "../../../wusbcore/include/wusb-wa.h"
 #include "i1480-dfu.h"
 
 struct i1480_usb {
diff --git a/drivers/uwb/i1480/i1480-est.c b/drivers/staging/uwb/i1480/i1480-est.c
similarity index 99%
rename from drivers/uwb/i1480/i1480-est.c
rename to drivers/staging/uwb/i1480/i1480-est.c
index 1346c409d10e..106e0a44b138 100644
--- a/drivers/uwb/i1480/i1480-est.c
+++ b/drivers/staging/uwb/i1480/i1480-est.c
@@ -12,7 +12,7 @@
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/usb.h>
-#include <linux/uwb.h>
+#include "../uwb.h"
 #include "dfu/i1480-dfu.h"
 
 
diff --git a/drivers/uwb/ie-rcv.c b/drivers/staging/uwb/ie-rcv.c
similarity index 100%
rename from drivers/uwb/ie-rcv.c
rename to drivers/staging/uwb/ie-rcv.c
diff --git a/drivers/uwb/ie.c b/drivers/staging/uwb/ie.c
similarity index 100%
rename from drivers/uwb/ie.c
rename to drivers/staging/uwb/ie.c
diff --git a/include/linux/uwb/debug-cmd.h b/drivers/staging/uwb/include/debug-cmd.h
similarity index 100%
rename from include/linux/uwb/debug-cmd.h
rename to drivers/staging/uwb/include/debug-cmd.h
diff --git a/include/linux/uwb/spec.h b/drivers/staging/uwb/include/spec.h
similarity index 100%
rename from include/linux/uwb/spec.h
rename to drivers/staging/uwb/include/spec.h
diff --git a/include/linux/uwb/umc.h b/drivers/staging/uwb/include/umc.h
similarity index 100%
rename from include/linux/uwb/umc.h
rename to drivers/staging/uwb/include/umc.h
diff --git a/include/linux/uwb/whci.h b/drivers/staging/uwb/include/whci.h
similarity index 100%
rename from include/linux/uwb/whci.h
rename to drivers/staging/uwb/include/whci.h
diff --git a/drivers/uwb/lc-dev.c b/drivers/staging/uwb/lc-dev.c
similarity index 100%
rename from drivers/uwb/lc-dev.c
rename to drivers/staging/uwb/lc-dev.c
diff --git a/drivers/uwb/lc-rc.c b/drivers/staging/uwb/lc-rc.c
similarity index 100%
rename from drivers/uwb/lc-rc.c
rename to drivers/staging/uwb/lc-rc.c
diff --git a/drivers/uwb/neh.c b/drivers/staging/uwb/neh.c
similarity index 100%
rename from drivers/uwb/neh.c
rename to drivers/staging/uwb/neh.c
diff --git a/drivers/uwb/pal.c b/drivers/staging/uwb/pal.c
similarity index 99%
rename from drivers/uwb/pal.c
rename to drivers/staging/uwb/pal.c
index 765fd426dbd1..a541e646a603 100644
--- a/drivers/uwb/pal.c
+++ b/drivers/staging/uwb/pal.c
@@ -6,9 +6,9 @@
  */
 #include <linux/kernel.h>
 #include <linux/debugfs.h>
-#include <linux/uwb.h>
 #include <linux/export.h>
 
+#include "uwb.h"
 #include "uwb-internal.h"
 
 /**
diff --git a/drivers/uwb/radio.c b/drivers/staging/uwb/radio.c
similarity index 99%
rename from drivers/uwb/radio.c
rename to drivers/staging/uwb/radio.c
index 240dd755927e..6afb75ce1b5f 100644
--- a/drivers/uwb/radio.c
+++ b/drivers/staging/uwb/radio.c
@@ -5,9 +5,9 @@
  * Copyright (C) 2008 Cambridge Silicon Radio Ltd.
  */
 #include <linux/kernel.h>
-#include <linux/uwb.h>
 #include <linux/export.h>
 
+#include "uwb.h"
 #include "uwb-internal.h"
 
 
diff --git a/drivers/uwb/reset.c b/drivers/staging/uwb/reset.c
similarity index 100%
rename from drivers/uwb/reset.c
rename to drivers/staging/uwb/reset.c
diff --git a/drivers/uwb/rsv.c b/drivers/staging/uwb/rsv.c
similarity index 99%
rename from drivers/uwb/rsv.c
rename to drivers/staging/uwb/rsv.c
index ec924deb0a32..f45a04ff7275 100644
--- a/drivers/uwb/rsv.c
+++ b/drivers/staging/uwb/rsv.c
@@ -5,11 +5,11 @@
  * Copyright (C) 2008 Cambridge Silicon Radio Ltd.
  */
 #include <linux/kernel.h>
-#include <linux/uwb.h>
 #include <linux/slab.h>
 #include <linux/random.h>
 #include <linux/export.h>
 
+#include "uwb.h"
 #include "uwb-internal.h"
 
 static void uwb_rsv_timer(struct timer_list *t);
diff --git a/drivers/uwb/scan.c b/drivers/staging/uwb/scan.c
similarity index 100%
rename from drivers/uwb/scan.c
rename to drivers/staging/uwb/scan.c
diff --git a/drivers/uwb/umc-bus.c b/drivers/staging/uwb/umc-bus.c
similarity index 99%
rename from drivers/uwb/umc-bus.c
rename to drivers/staging/uwb/umc-bus.c
index 0fdc38078eee..8b931f66a720 100644
--- a/drivers/uwb/umc-bus.c
+++ b/drivers/staging/uwb/umc-bus.c
@@ -8,8 +8,8 @@
 #include <linux/sysfs.h>
 #include <linux/workqueue.h>
 #include <linux/module.h>
-#include <linux/uwb/umc.h>
 #include <linux/pci.h>
+#include "include/umc.h"
 
 static int umc_bus_pre_reset_helper(struct device *dev, void *data)
 {
diff --git a/drivers/uwb/umc-dev.c b/drivers/staging/uwb/umc-dev.c
similarity index 98%
rename from drivers/uwb/umc-dev.c
rename to drivers/staging/uwb/umc-dev.c
index c845ca414bb2..0c71caae00be 100644
--- a/drivers/uwb/umc-dev.c
+++ b/drivers/staging/uwb/umc-dev.c
@@ -7,7 +7,7 @@
 #include <linux/kernel.h>
 #include <linux/export.h>
 #include <linux/slab.h>
-#include <linux/uwb/umc.h>
+#include "include/umc.h"
 
 static void umc_device_release(struct device *dev)
 {
diff --git a/drivers/uwb/umc-drv.c b/drivers/staging/uwb/umc-drv.c
similarity index 96%
rename from drivers/uwb/umc-drv.c
rename to drivers/staging/uwb/umc-drv.c
index b141d520efbf..ed3bd220e8c2 100644
--- a/drivers/uwb/umc-drv.c
+++ b/drivers/staging/uwb/umc-drv.c
@@ -6,7 +6,7 @@
  */
 #include <linux/kernel.h>
 #include <linux/export.h>
-#include <linux/uwb/umc.h>
+#include "include/umc.h"
 
 int __umc_driver_register(struct umc_driver *umc_drv, struct module *module,
 			  const char *mod_name)
diff --git a/drivers/uwb/uwb-debug.c b/drivers/staging/uwb/uwb-debug.c
similarity index 99%
rename from drivers/uwb/uwb-debug.c
rename to drivers/staging/uwb/uwb-debug.c
index 5457b6d42387..dd14df219ef8 100644
--- a/drivers/uwb/uwb-debug.c
+++ b/drivers/staging/uwb/uwb-debug.c
@@ -19,8 +19,7 @@
 #include <linux/uaccess.h>
 #include <linux/seq_file.h>
 
-#include <linux/uwb/debug-cmd.h>
-
+#include "include/debug-cmd.h"
 #include "uwb-internal.h"
 
 /*
diff --git a/drivers/uwb/uwb-internal.h b/drivers/staging/uwb/uwb-internal.h
similarity index 99%
rename from drivers/uwb/uwb-internal.h
rename to drivers/staging/uwb/uwb-internal.h
index 00de0a5333d2..4c2fdac7f610 100644
--- a/drivers/uwb/uwb-internal.h
+++ b/drivers/staging/uwb/uwb-internal.h
@@ -17,8 +17,8 @@
 
 #include <linux/kernel.h>
 #include <linux/device.h>
-#include <linux/uwb.h>
 #include <linux/mutex.h>
+#include "uwb.h"
 
 struct uwb_beca_e;
 
diff --git a/include/linux/uwb.h b/drivers/staging/uwb/uwb.h
similarity index 99%
rename from include/linux/uwb.h
rename to drivers/staging/uwb/uwb.h
index 6918a61e1ac1..6a59706ba3a0 100644
--- a/include/linux/uwb.h
+++ b/drivers/staging/uwb/uwb.h
@@ -18,8 +18,8 @@
 #include <linux/timer.h>
 #include <linux/wait.h>
 #include <linux/workqueue.h>
-#include <linux/uwb/spec.h>
 #include <asm/page.h>
+#include "include/spec.h"
 
 struct uwb_dev;
 struct uwb_beca_e;
diff --git a/drivers/uwb/uwbd.c b/drivers/staging/uwb/uwbd.c
similarity index 100%
rename from drivers/uwb/uwbd.c
rename to drivers/staging/uwb/uwbd.c
diff --git a/drivers/uwb/whc-rc.c b/drivers/staging/uwb/whc-rc.c
similarity index 99%
rename from drivers/uwb/whc-rc.c
rename to drivers/staging/uwb/whc-rc.c
index 22397f70dee2..34020ed351ab 100644
--- a/drivers/uwb/whc-rc.c
+++ b/drivers/staging/uwb/whc-rc.c
@@ -33,9 +33,9 @@
 #include <linux/interrupt.h>
 #include <linux/slab.h>
 #include <linux/workqueue.h>
-#include <linux/uwb.h>
-#include <linux/uwb/whci.h>
-#include <linux/uwb/umc.h>
+#include "uwb.h"
+#include "include/whci.h"
+#include "include/umc.h"
 
 #include "uwb-internal.h"
 
diff --git a/drivers/uwb/whci.c b/drivers/staging/uwb/whci.c
similarity index 99%
rename from drivers/uwb/whci.c
rename to drivers/staging/uwb/whci.c
index be8a8b8e857b..a8832f64d708 100644
--- a/drivers/uwb/whci.c
+++ b/drivers/staging/uwb/whci.c
@@ -10,8 +10,8 @@
 #include <linux/pci.h>
 #include <linux/dma-mapping.h>
 #include <linux/slab.h>
-#include <linux/uwb/whci.h>
-#include <linux/uwb/umc.h>
+#include "include/whci.h"
+#include "include/umc.h"
 
 struct whci_card {
 	struct pci_dev *pci;
diff --git a/Documentation/usb/wusb-cbaf b/drivers/staging/wusbcore/Documentation/wusb-cbaf
similarity index 100%
rename from Documentation/usb/wusb-cbaf
rename to drivers/staging/wusbcore/Documentation/wusb-cbaf
diff --git a/Documentation/usb/wusb-design-overview.rst b/drivers/staging/wusbcore/Documentation/wusb-design-overview.rst
similarity index 100%
rename from Documentation/usb/wusb-design-overview.rst
rename to drivers/staging/wusbcore/Documentation/wusb-design-overview.rst
diff --git a/drivers/usb/wusbcore/Kconfig b/drivers/staging/wusbcore/Kconfig
similarity index 95%
rename from drivers/usb/wusbcore/Kconfig
rename to drivers/staging/wusbcore/Kconfig
index abc0f361021f..056c60b4d57f 100644
--- a/drivers/usb/wusbcore/Kconfig
+++ b/drivers/staging/wusbcore/Kconfig
@@ -36,3 +36,4 @@ config USB_WUSB_CBAF_DEBUG
 	  to the system log. Select this if you are having a problem with
 	  CBA support and want to see more of what is going on.
 
+source "drivers/staging/wusbcore/host/Kconfig"
diff --git a/drivers/usb/wusbcore/Makefile b/drivers/staging/wusbcore/Makefile
similarity index 96%
rename from drivers/usb/wusbcore/Makefile
rename to drivers/staging/wusbcore/Makefile
index d604ccdd916f..b47b874268ac 100644
--- a/drivers/usb/wusbcore/Makefile
+++ b/drivers/staging/wusbcore/Makefile
@@ -24,3 +24,5 @@ wusb-wa-y :=		\
 	wa-nep.o	\
 	wa-rpipe.o	\
 	wa-xfer.o
+
+obj-y	+= host/
diff --git a/drivers/staging/wusbcore/TODO b/drivers/staging/wusbcore/TODO
new file mode 100644
index 000000000000..abae57000534
--- /dev/null
+++ b/drivers/staging/wusbcore/TODO
@@ -0,0 +1,8 @@
+TODO: Remove in late 2019 unless there are users
+
+There seems to not be any real wireless USB devices anywhere in the wild
+anymore.  It turned out to be a failed technology :(
+
+This will be removed from the tree if no one objects.
+
+Greg Kroah-Hartman <gregkh@linuxfoundation.org>
diff --git a/drivers/usb/wusbcore/cbaf.c b/drivers/staging/wusbcore/cbaf.c
similarity index 99%
rename from drivers/usb/wusbcore/cbaf.c
rename to drivers/staging/wusbcore/cbaf.c
index af77064c7456..57062eaf7558 100644
--- a/drivers/usb/wusbcore/cbaf.c
+++ b/drivers/staging/wusbcore/cbaf.c
@@ -80,9 +80,9 @@
 #include <linux/random.h>
 #include <linux/slab.h>
 #include <linux/mutex.h>
-#include <linux/uwb.h>
-#include <linux/usb/wusb.h>
-#include <linux/usb/association.h>
+#include "../uwb/uwb.h"
+#include "include/wusb.h"
+#include "include/association.h"
 
 #define CBA_NAME_LEN 0x40 /* [WUSB-AM] table 4-7 */
 
diff --git a/drivers/usb/wusbcore/crypto.c b/drivers/staging/wusbcore/crypto.c
similarity index 99%
rename from drivers/usb/wusbcore/crypto.c
rename to drivers/staging/wusbcore/crypto.c
index 9ee66483ee54..d7d55ed19a98 100644
--- a/drivers/usb/wusbcore/crypto.c
+++ b/drivers/staging/wusbcore/crypto.c
@@ -38,10 +38,10 @@
 #include <linux/crypto.h>
 #include <linux/module.h>
 #include <linux/err.h>
-#include <linux/uwb.h>
 #include <linux/slab.h>
-#include <linux/usb/wusb.h>
 #include <linux/scatterlist.h>
+#include "../uwb/uwb.h"
+#include "include/wusb.h"
 
 static int debug_crypto_verify;
 
diff --git a/drivers/usb/wusbcore/dev-sysfs.c b/drivers/staging/wusbcore/dev-sysfs.c
similarity index 100%
rename from drivers/usb/wusbcore/dev-sysfs.c
rename to drivers/staging/wusbcore/dev-sysfs.c
diff --git a/drivers/usb/wusbcore/devconnect.c b/drivers/staging/wusbcore/devconnect.c
similarity index 100%
rename from drivers/usb/wusbcore/devconnect.c
rename to drivers/staging/wusbcore/devconnect.c
diff --git a/drivers/staging/wusbcore/host/Kconfig b/drivers/staging/wusbcore/host/Kconfig
new file mode 100644
index 000000000000..9a73f9360a08
--- /dev/null
+++ b/drivers/staging/wusbcore/host/Kconfig
@@ -0,0 +1,28 @@
+# SPDX-License-Identifier: GPL-2.0
+
+config USB_WHCI_HCD
+	tristate "Wireless USB Host Controller Interface (WHCI) driver"
+	depends on USB_PCI && USB && UWB
+	select USB_WUSB
+	select UWB_WHCI
+	help
+	  A driver for PCI-based Wireless USB Host Controllers that are
+	  compliant with the WHCI specification.
+
+	  To compile this driver a module, choose M here: the module
+	  will be called "whci-hcd".
+
+config USB_HWA_HCD
+	tristate "Host Wire Adapter (HWA) driver"
+	depends on USB && UWB
+	select USB_WUSB
+	select UWB_HWA
+	help
+	  This driver enables you to connect Wireless USB devices to
+	  your system using a Host Wire Adaptor USB dongle. This is an
+	  UWB Radio Controller and WUSB Host Controller connected to
+	  your machine via USB (specified in WUSB1.0).
+
+	  To compile this driver a module, choose M here: the module
+	  will be called "hwa-hc".
+
diff --git a/drivers/staging/wusbcore/host/Makefile b/drivers/staging/wusbcore/host/Makefile
new file mode 100644
index 000000000000..d65ee8a73e21
--- /dev/null
+++ b/drivers/staging/wusbcore/host/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_USB_WHCI_HCD)	+= whci/
+obj-$(CONFIG_USB_HWA_HCD)	+= hwa-hc.o
diff --git a/drivers/usb/host/hwa-hc.c b/drivers/staging/wusbcore/host/hwa-hc.c
similarity index 99%
rename from drivers/usb/host/hwa-hc.c
rename to drivers/staging/wusbcore/host/hwa-hc.c
index 6968b9f2b76b..8d959e91fe27 100644
--- a/drivers/usb/host/hwa-hc.c
+++ b/drivers/staging/wusbcore/host/hwa-hc.c
@@ -45,8 +45,8 @@
 #include <linux/workqueue.h>
 #include <linux/wait.h>
 #include <linux/completion.h>
-#include "../wusbcore/wa-hc.h"
-#include "../wusbcore/wusbhc.h"
+#include "../wa-hc.h"
+#include "../wusbhc.h"
 
 struct hwahc {
 	struct wusbhc wusbhc;	/* has to be 1st */
diff --git a/drivers/usb/host/whci/Makefile b/drivers/staging/wusbcore/host/whci/Makefile
similarity index 100%
rename from drivers/usb/host/whci/Makefile
rename to drivers/staging/wusbcore/host/whci/Makefile
diff --git a/drivers/usb/host/whci/asl.c b/drivers/staging/wusbcore/host/whci/asl.c
similarity index 99%
rename from drivers/usb/host/whci/asl.c
rename to drivers/staging/wusbcore/host/whci/asl.c
index 276fb34c8efd..a2b9a50cfb80 100644
--- a/drivers/usb/host/whci/asl.c
+++ b/drivers/staging/wusbcore/host/whci/asl.c
@@ -7,10 +7,10 @@
 #include <linux/kernel.h>
 #include <linux/gfp.h>
 #include <linux/dma-mapping.h>
-#include <linux/uwb/umc.h>
 #include <linux/usb.h>
 
-#include "../../wusbcore/wusbhc.h"
+#include "../../../uwb/include/umc.h"
+#include "../../wusbhc.h"
 
 #include "whcd.h"
 
diff --git a/drivers/usb/host/whci/debug.c b/drivers/staging/wusbcore/host/whci/debug.c
similarity index 99%
rename from drivers/usb/host/whci/debug.c
rename to drivers/staging/wusbcore/host/whci/debug.c
index 8ddfe3f1f693..443da6719147 100644
--- a/drivers/usb/host/whci/debug.c
+++ b/drivers/staging/wusbcore/host/whci/debug.c
@@ -10,7 +10,7 @@
 #include <linux/seq_file.h>
 #include <linux/export.h>
 
-#include "../../wusbcore/wusbhc.h"
+#include "../../wusbhc.h"
 
 #include "whcd.h"
 
diff --git a/drivers/usb/host/whci/hcd.c b/drivers/staging/wusbcore/host/whci/hcd.c
similarity index 99%
rename from drivers/usb/host/whci/hcd.c
rename to drivers/staging/wusbcore/host/whci/hcd.c
index 8af9dcfea127..bee1ff2d35be 100644
--- a/drivers/usb/host/whci/hcd.c
+++ b/drivers/staging/wusbcore/host/whci/hcd.c
@@ -7,9 +7,9 @@
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/module.h>
-#include <linux/uwb/umc.h>
 
-#include "../../wusbcore/wusbhc.h"
+#include "../../../uwb/include/umc.h"
+#include "../../wusbhc.h"
 
 #include "whcd.h"
 
diff --git a/drivers/usb/host/whci/hw.c b/drivers/staging/wusbcore/host/whci/hw.c
similarity index 97%
rename from drivers/usb/host/whci/hw.c
rename to drivers/staging/wusbcore/host/whci/hw.c
index 22b3b7f7419d..e4e8914abf42 100644
--- a/drivers/usb/host/whci/hw.c
+++ b/drivers/staging/wusbcore/host/whci/hw.c
@@ -6,9 +6,9 @@
  */
 #include <linux/kernel.h>
 #include <linux/dma-mapping.h>
-#include <linux/uwb/umc.h>
 
-#include "../../wusbcore/wusbhc.h"
+#include "../../../uwb/include/umc.h"
+#include "../../wusbhc.h"
 
 #include "whcd.h"
 
diff --git a/drivers/usb/host/whci/init.c b/drivers/staging/wusbcore/host/whci/init.c
similarity index 98%
rename from drivers/usb/host/whci/init.c
rename to drivers/staging/wusbcore/host/whci/init.c
index 82416973f773..55fd458a8f30 100644
--- a/drivers/usb/host/whci/init.c
+++ b/drivers/staging/wusbcore/host/whci/init.c
@@ -7,9 +7,9 @@
 #include <linux/kernel.h>
 #include <linux/gfp.h>
 #include <linux/dma-mapping.h>
-#include <linux/uwb/umc.h>
 
-#include "../../wusbcore/wusbhc.h"
+#include "../../../uwb/include/umc.h"
+#include "../../wusbhc.h"
 
 #include "whcd.h"
 
diff --git a/drivers/usb/host/whci/int.c b/drivers/staging/wusbcore/host/whci/int.c
similarity index 96%
rename from drivers/usb/host/whci/int.c
rename to drivers/staging/wusbcore/host/whci/int.c
index 7e4ad1b8f3e3..bdbe35e9366f 100644
--- a/drivers/usb/host/whci/int.c
+++ b/drivers/staging/wusbcore/host/whci/int.c
@@ -5,9 +5,9 @@
  * Copyright (C) 2007 Cambridge Silicon Radio Ltd.
  */
 #include <linux/kernel.h>
-#include <linux/uwb/umc.h>
 
-#include "../../wusbcore/wusbhc.h"
+#include "../../../uwb/include/umc.h"
+#include "../../wusbhc.h"
 
 #include "whcd.h"
 
diff --git a/drivers/usb/host/whci/pzl.c b/drivers/staging/wusbcore/host/whci/pzl.c
similarity index 99%
rename from drivers/usb/host/whci/pzl.c
rename to drivers/staging/wusbcore/host/whci/pzl.c
index ef52aeb02fde..6dfc075f5798 100644
--- a/drivers/usb/host/whci/pzl.c
+++ b/drivers/staging/wusbcore/host/whci/pzl.c
@@ -7,10 +7,10 @@
 #include <linux/kernel.h>
 #include <linux/gfp.h>
 #include <linux/dma-mapping.h>
-#include <linux/uwb/umc.h>
 #include <linux/usb.h>
 
-#include "../../wusbcore/wusbhc.h"
+#include "../../../uwb/include/umc.h"
+#include "../../wusbhc.h"
 
 #include "whcd.h"
 
diff --git a/drivers/usb/host/whci/qset.c b/drivers/staging/wusbcore/host/whci/qset.c
similarity index 99%
rename from drivers/usb/host/whci/qset.c
rename to drivers/staging/wusbcore/host/whci/qset.c
index 925166a207aa..66459b77dc77 100644
--- a/drivers/usb/host/whci/qset.c
+++ b/drivers/staging/wusbcore/host/whci/qset.c
@@ -7,10 +7,10 @@
 #include <linux/kernel.h>
 #include <linux/dma-mapping.h>
 #include <linux/slab.h>
-#include <linux/uwb/umc.h>
 #include <linux/usb.h>
 
-#include "../../wusbcore/wusbhc.h"
+#include "../../../uwb/include/umc.h"
+#include "../../wusbhc.h"
 
 #include "whcd.h"
 
diff --git a/drivers/usb/host/whci/whcd.h b/drivers/staging/wusbcore/host/whci/whcd.h
similarity index 98%
rename from drivers/usb/host/whci/whcd.h
rename to drivers/staging/wusbcore/host/whci/whcd.h
index 139476997e7c..a442a2589e83 100644
--- a/drivers/usb/host/whci/whcd.h
+++ b/drivers/staging/wusbcore/host/whci/whcd.h
@@ -7,10 +7,10 @@
 #ifndef __WHCD_H
 #define __WHCD_H
 
-#include <linux/uwb/whci.h>
-#include <linux/uwb/umc.h>
 #include <linux/workqueue.h>
 
+#include "../../../uwb/include/whci.h"
+#include "../../../uwb/include/umc.h"
 #include "whci-hc.h"
 
 /* Generic command timeout. */
diff --git a/drivers/usb/host/whci/whci-hc.h b/drivers/staging/wusbcore/host/whci/whci-hc.h
similarity index 100%
rename from drivers/usb/host/whci/whci-hc.h
rename to drivers/staging/wusbcore/host/whci/whci-hc.h
diff --git a/drivers/usb/host/whci/wusb.c b/drivers/staging/wusbcore/host/whci/wusb.c
similarity index 98%
rename from drivers/usb/host/whci/wusb.c
rename to drivers/staging/wusbcore/host/whci/wusb.c
index 8a4d805ff63a..6d0068ab35e4 100644
--- a/drivers/usb/host/whci/wusb.c
+++ b/drivers/staging/wusbcore/host/whci/wusb.c
@@ -5,9 +5,9 @@
  * Copyright (C) 2007 Cambridge Silicon Radio Ltd.
  */
 #include <linux/kernel.h>
-#include <linux/uwb/umc.h>
 
-#include "../../wusbcore/wusbhc.h"
+#include "../../../uwb/include/umc.h"
+#include "../../wusbhc.h"
 
 #include "whcd.h"
 
diff --git a/include/linux/usb/association.h b/drivers/staging/wusbcore/include/association.h
similarity index 100%
rename from include/linux/usb/association.h
rename to drivers/staging/wusbcore/include/association.h
diff --git a/include/linux/usb/wusb-wa.h b/drivers/staging/wusbcore/include/wusb-wa.h
similarity index 100%
rename from include/linux/usb/wusb-wa.h
rename to drivers/staging/wusbcore/include/wusb-wa.h
diff --git a/include/linux/usb/wusb.h b/drivers/staging/wusbcore/include/wusb.h
similarity index 99%
rename from include/linux/usb/wusb.h
rename to drivers/staging/wusbcore/include/wusb.h
index 65adee629106..09771d1da7bc 100644
--- a/include/linux/usb/wusb.h
+++ b/drivers/staging/wusbcore/include/wusb.h
@@ -33,9 +33,9 @@
 
 #include <linux/types.h>
 #include <linux/kernel.h>
-#include <linux/uwb/spec.h>
 #include <linux/usb/ch9.h>
 #include <linux/param.h>
+#include "../../uwb/include/spec.h"
 
 /**
  * WUSB Information Element header
diff --git a/drivers/usb/wusbcore/mmc.c b/drivers/staging/wusbcore/mmc.c
similarity index 99%
rename from drivers/usb/wusbcore/mmc.c
rename to drivers/staging/wusbcore/mmc.c
index acce0d551eb2..881e1f20d718 100644
--- a/drivers/usb/wusbcore/mmc.c
+++ b/drivers/staging/wusbcore/mmc.c
@@ -22,9 +22,9 @@
  * FIXME:
  *  - add timers that autoremove intervalled IEs?
  */
-#include <linux/usb/wusb.h>
 #include <linux/slab.h>
 #include <linux/export.h>
+#include "include/wusb.h"
 #include "wusbhc.h"
 
 /* Initialize the MMCIEs handling mechanism */
diff --git a/drivers/usb/wusbcore/pal.c b/drivers/staging/wusbcore/pal.c
similarity index 100%
rename from drivers/usb/wusbcore/pal.c
rename to drivers/staging/wusbcore/pal.c
diff --git a/drivers/usb/wusbcore/reservation.c b/drivers/staging/wusbcore/reservation.c
similarity index 99%
rename from drivers/usb/wusbcore/reservation.c
rename to drivers/staging/wusbcore/reservation.c
index 6dcfc6825f55..b921faac698b 100644
--- a/drivers/usb/wusbcore/reservation.c
+++ b/drivers/staging/wusbcore/reservation.c
@@ -5,8 +5,8 @@
  * Copyright (C) 2007 Cambridge Silicon Radio Ltd.
  */
 #include <linux/kernel.h>
-#include <linux/uwb.h>
 
+#include "../uwb/uwb.h"
 #include "wusbhc.h"
 
 /*
diff --git a/drivers/usb/wusbcore/rh.c b/drivers/staging/wusbcore/rh.c
similarity index 100%
rename from drivers/usb/wusbcore/rh.c
rename to drivers/staging/wusbcore/rh.c
diff --git a/drivers/usb/wusbcore/security.c b/drivers/staging/wusbcore/security.c
similarity index 100%
rename from drivers/usb/wusbcore/security.c
rename to drivers/staging/wusbcore/security.c
diff --git a/drivers/usb/wusbcore/wa-hc.c b/drivers/staging/wusbcore/wa-hc.c
similarity index 100%
rename from drivers/usb/wusbcore/wa-hc.c
rename to drivers/staging/wusbcore/wa-hc.c
diff --git a/drivers/usb/wusbcore/wa-hc.h b/drivers/staging/wusbcore/wa-hc.h
similarity index 99%
rename from drivers/usb/wusbcore/wa-hc.h
rename to drivers/staging/wusbcore/wa-hc.h
index ec90fff21deb..5a38465724c2 100644
--- a/drivers/usb/wusbcore/wa-hc.h
+++ b/drivers/staging/wusbcore/wa-hc.h
@@ -70,9 +70,9 @@
 #include <linux/usb.h>
 #include <linux/mutex.h>
 #include <linux/spinlock.h>
-#include <linux/uwb.h>
-#include <linux/usb/wusb.h>
-#include <linux/usb/wusb-wa.h>
+#include "../uwb/uwb.h"
+#include "include/wusb.h"
+#include "include/wusb-wa.h"
 
 struct wusbhc;
 struct wahc;
diff --git a/drivers/usb/wusbcore/wa-nep.c b/drivers/staging/wusbcore/wa-nep.c
similarity index 100%
rename from drivers/usb/wusbcore/wa-nep.c
rename to drivers/staging/wusbcore/wa-nep.c
diff --git a/drivers/usb/wusbcore/wa-rpipe.c b/drivers/staging/wusbcore/wa-rpipe.c
similarity index 100%
rename from drivers/usb/wusbcore/wa-rpipe.c
rename to drivers/staging/wusbcore/wa-rpipe.c
diff --git a/drivers/usb/wusbcore/wa-xfer.c b/drivers/staging/wusbcore/wa-xfer.c
similarity index 100%
rename from drivers/usb/wusbcore/wa-xfer.c
rename to drivers/staging/wusbcore/wa-xfer.c
diff --git a/drivers/usb/wusbcore/wusbhc.c b/drivers/staging/wusbcore/wusbhc.c
similarity index 100%
rename from drivers/usb/wusbcore/wusbhc.c
rename to drivers/staging/wusbcore/wusbhc.c
diff --git a/drivers/usb/wusbcore/wusbhc.h b/drivers/staging/wusbcore/wusbhc.h
similarity index 99%
rename from drivers/usb/wusbcore/wusbhc.h
rename to drivers/staging/wusbcore/wusbhc.h
index 7681d796ca5b..716244a2ec44 100644
--- a/drivers/usb/wusbcore/wusbhc.h
+++ b/drivers/staging/wusbcore/wusbhc.h
@@ -45,8 +45,8 @@
 #include <linux/kref.h>
 #include <linux/workqueue.h>
 #include <linux/usb/hcd.h>
-#include <linux/uwb.h>
-#include <linux/usb/wusb.h>
+#include "../uwb/uwb.h"
+#include "include/wusb.h"
 
 /*
  * Time from a WUSB channel stop request to the last transmitted MMC.
diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
index 6e59d370ef81..9987c399819f 100644
--- a/drivers/usb/Kconfig
+++ b/drivers/usb/Kconfig
@@ -98,8 +98,6 @@ source "drivers/usb/core/Kconfig"
 
 source "drivers/usb/mon/Kconfig"
 
-source "drivers/usb/wusbcore/Kconfig"
-
 source "drivers/usb/host/Kconfig"
 
 source "drivers/usb/renesas_usbhs/Kconfig"
diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
index ecc2de1ffaae..db064dd59e08 100644
--- a/drivers/usb/Makefile
+++ b/drivers/usb/Makefile
@@ -35,8 +35,6 @@ obj-$(CONFIG_USB_MAX3421_HCD)	+= host/
 
 obj-$(CONFIG_USB_C67X00_HCD)	+= c67x00/
 
-obj-$(CONFIG_USB_WUSB)		+= wusbcore/
-
 obj-$(CONFIG_USB_ACM)		+= class/
 obj-$(CONFIG_USB_PRINTER)	+= class/
 obj-$(CONFIG_USB_WDM)		+= class/
diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 40b5de597112..d040408f5baa 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -717,32 +717,6 @@ config USB_RENESAS_USBHS_HCD
 	  To compile this driver as a module, choose M here: the
 	  module will be called renesas-usbhs.
 
-config USB_WHCI_HCD
-	tristate "Wireless USB Host Controller Interface (WHCI) driver"
-	depends on USB_PCI && USB && UWB
-	select USB_WUSB
-	select UWB_WHCI
-	help
-	  A driver for PCI-based Wireless USB Host Controllers that are
-	  compliant with the WHCI specification.
-
-	  To compile this driver a module, choose M here: the module
-	  will be called "whci-hcd".
-
-config USB_HWA_HCD
-	tristate "Host Wire Adapter (HWA) driver"
-	depends on USB && UWB
-	select USB_WUSB
-	select UWB_HWA
-	help
-	  This driver enables you to connect Wireless USB devices to
-	  your system using a Host Wire Adaptor USB dongle. This is an
-	  UWB Radio Controller and WUSB Host Controller connected to
-	  your machine via USB (specified in WUSB1.0).
-
-	  To compile this driver a module, choose M here: the module
-	  will be called "hwa-hc".
-
 config USB_IMX21_HCD
        tristate "i.MX21 HCD support"
        depends on ARM && ARCH_MXC
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index 84514f71ae44..59b39e6b350b 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -35,8 +35,6 @@ ifneq ($(CONFIG_DEBUG_FS),)
 	xhci-hcd-y		+= xhci-debugfs.o
 endif
 
-obj-$(CONFIG_USB_WHCI_HCD)	+= whci/
-
 obj-$(CONFIG_USB_PCI)	+= pci-quirks.o
 
 obj-$(CONFIG_USB_EHCI_HCD)	+= ehci-hcd.o
@@ -82,7 +80,6 @@ obj-$(CONFIG_USB_SL811_HCD)	+= sl811-hcd.o
 obj-$(CONFIG_USB_SL811_CS)	+= sl811_cs.o
 obj-$(CONFIG_USB_U132_HCD)	+= u132-hcd.o
 obj-$(CONFIG_USB_R8A66597_HCD)	+= r8a66597-hcd.o
-obj-$(CONFIG_USB_HWA_HCD)	+= hwa-hc.o
 obj-$(CONFIG_USB_IMX21_HCD)	+= imx21-hcd.o
 obj-$(CONFIG_USB_FSL_USB2)	+= fsl-mph-dr-of.o
 obj-$(CONFIG_USB_EHCI_FSL)	+= fsl-mph-dr-of.o
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

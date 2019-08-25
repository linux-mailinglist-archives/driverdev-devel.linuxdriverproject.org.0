Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DFD9C22D
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Aug 2019 07:55:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 743EA87DDE;
	Sun, 25 Aug 2019 05:55:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U3VYyi+LQb7k; Sun, 25 Aug 2019 05:55:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6548587DB2;
	Sun, 25 Aug 2019 05:55:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E0D81BF956
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 05:55:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5772385ADC
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 05:55:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IhLcIprvgoRE for <devel@linuxdriverproject.org>;
 Sun, 25 Aug 2019 05:55:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 855978506B
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 05:55:14 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE7242173E;
 Sun, 25 Aug 2019 05:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566712514;
 bh=WqDsH5W012CUCaMyJsxca2TIWS391JkXf1pOc73H0tA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZAR2K7Agj6SiL2jG4oX+yTlmTeApAsO49SPVQNPVoGrLxzW/VIrmoDxbH+Qujdqzy
 HFJeBhffLAuBegAapW52n9x59nQcw203Hp4CZNRQqR5VFW8i/oEa7GAvxU2n1CFIpo
 ViMHsbEyKUgGVNNu3LPEj2ZoAnxL4GghL12e56rQ=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org, elder@kernel.org,
 johan@kernel.org
Subject: [PATCH 8/9] staging: greybus: move the greybus core to drivers/greybus
Date: Sun, 25 Aug 2019 07:54:28 +0200
Message-Id: <20190825055429.18547-9-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190825055429.18547-1-gregkh@linuxfoundation.org>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The Greybus core code has been stable for a long time, and has been
shipping for many years in millions of phones.  With the advent of a
recent Google Summer of Code project, and a number of new devices in the
works from various companies, it is time to get the core greybus code
out of staging as it really is going to be with us for a while.

Cc: Johan Hovold <johan@kernel.org>
Cc: Alex Elder <elder@kernel.org>
Cc: linux-kernel@vger.kernel.org
Cc: greybus-dev@lists.linaro.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 MAINTAINERS                                   |  3 +++
 drivers/Kconfig                               |  2 ++
 drivers/Makefile                              |  1 +
 drivers/greybus/Kconfig                       | 16 ++++++++++++++++
 drivers/greybus/Makefile                      | 19 +++++++++++++++++++
 drivers/{staging => }/greybus/bundle.c        |  0
 drivers/{staging => }/greybus/connection.c    |  0
 drivers/{staging => }/greybus/control.c       |  0
 drivers/{staging => }/greybus/core.c          |  0
 drivers/{staging => }/greybus/debugfs.c       |  0
 drivers/{staging => }/greybus/greybus_trace.h |  0
 drivers/{staging => }/greybus/hd.c            |  0
 drivers/{staging => }/greybus/interface.c     |  0
 drivers/{staging => }/greybus/manifest.c      |  0
 drivers/{staging => }/greybus/module.c        |  0
 drivers/{staging => }/greybus/operation.c     |  0
 drivers/{staging => }/greybus/svc.c           |  0
 drivers/{staging => }/greybus/svc_watchdog.c  |  0
 drivers/staging/greybus/Kconfig               | 16 ----------------
 drivers/staging/greybus/Makefile              | 17 -----------------
 drivers/staging/greybus/es2.c                 |  2 +-
 21 files changed, 42 insertions(+), 34 deletions(-)
 create mode 100644 drivers/greybus/Kconfig
 create mode 100644 drivers/greybus/Makefile
 rename drivers/{staging => }/greybus/bundle.c (100%)
 rename drivers/{staging => }/greybus/connection.c (100%)
 rename drivers/{staging => }/greybus/control.c (100%)
 rename drivers/{staging => }/greybus/core.c (100%)
 rename drivers/{staging => }/greybus/debugfs.c (100%)
 rename drivers/{staging => }/greybus/greybus_trace.h (100%)
 rename drivers/{staging => }/greybus/hd.c (100%)
 rename drivers/{staging => }/greybus/interface.c (100%)
 rename drivers/{staging => }/greybus/manifest.c (100%)
 rename drivers/{staging => }/greybus/module.c (100%)
 rename drivers/{staging => }/greybus/operation.c (100%)
 rename drivers/{staging => }/greybus/svc.c (100%)
 rename drivers/{staging => }/greybus/svc_watchdog.c (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index 0f38cba2c581..e3242687cd19 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7003,6 +7003,9 @@ M:	Alex Elder <elder@kernel.org>
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
 S:	Maintained
 F:	drivers/staging/greybus/
+F:	drivers/greybus/
+F:	include/linux/greybus.h
+F:	include/linux/greybus/
 L:	greybus-dev@lists.linaro.org (moderated for non-subscribers)
 
 GREYBUS UART PROTOCOLS DRIVERS
diff --git a/drivers/Kconfig b/drivers/Kconfig
index 61cf4ea2c229..7dce76ae7369 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -146,6 +146,8 @@ source "drivers/hv/Kconfig"
 
 source "drivers/xen/Kconfig"
 
+source "drivers/greybus/Kconfig"
+
 source "drivers/staging/Kconfig"
 
 source "drivers/platform/Kconfig"
diff --git a/drivers/Makefile b/drivers/Makefile
index 6d37564e783c..73df8e5a2fce 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -148,6 +148,7 @@ obj-$(CONFIG_BCMA)		+= bcma/
 obj-$(CONFIG_VHOST_RING)	+= vhost/
 obj-$(CONFIG_VHOST)		+= vhost/
 obj-$(CONFIG_VLYNQ)		+= vlynq/
+obj-$(CONFIG_GREYBUS)		+= greybus/
 obj-$(CONFIG_STAGING)		+= staging/
 obj-y				+= platform/
 
diff --git a/drivers/greybus/Kconfig b/drivers/greybus/Kconfig
new file mode 100644
index 000000000000..158d8893114c
--- /dev/null
+++ b/drivers/greybus/Kconfig
@@ -0,0 +1,16 @@
+# SPDX-License-Identifier: GPL-2.0
+menuconfig GREYBUS
+	tristate "Greybus support"
+	depends on SYSFS
+	---help---
+	  This option enables the Greybus driver core.  Greybus is an
+	  hardware protocol that was designed to provide Unipro with a
+	  sane application layer.  It was originally designed for the
+	  ARA project, a module phone system, but has shown up in other
+	  phones, and can be tunneled over other busses in order to
+	  control hardware devices.
+
+	  Say Y here to enable support for these types of drivers.
+
+	  To compile this code as a module, chose M here: the module
+	  will be called greybus.ko
diff --git a/drivers/greybus/Makefile b/drivers/greybus/Makefile
new file mode 100644
index 000000000000..03b22616ec7d
--- /dev/null
+++ b/drivers/greybus/Makefile
@@ -0,0 +1,19 @@
+# SPDX-License-Identifier: GPL-2.0
+# Greybus core
+greybus-y :=	core.o		\
+		debugfs.o	\
+		hd.o		\
+		manifest.o	\
+		module.o	\
+		interface.o	\
+		bundle.o	\
+		connection.o	\
+		control.o	\
+		svc.o		\
+		svc_watchdog.o	\
+		operation.o
+
+obj-$(CONFIG_GREYBUS)		+= greybus.o
+
+# needed for trace events
+ccflags-y += -I$(src)
diff --git a/drivers/staging/greybus/bundle.c b/drivers/greybus/bundle.c
similarity index 100%
rename from drivers/staging/greybus/bundle.c
rename to drivers/greybus/bundle.c
diff --git a/drivers/staging/greybus/connection.c b/drivers/greybus/connection.c
similarity index 100%
rename from drivers/staging/greybus/connection.c
rename to drivers/greybus/connection.c
diff --git a/drivers/staging/greybus/control.c b/drivers/greybus/control.c
similarity index 100%
rename from drivers/staging/greybus/control.c
rename to drivers/greybus/control.c
diff --git a/drivers/staging/greybus/core.c b/drivers/greybus/core.c
similarity index 100%
rename from drivers/staging/greybus/core.c
rename to drivers/greybus/core.c
diff --git a/drivers/staging/greybus/debugfs.c b/drivers/greybus/debugfs.c
similarity index 100%
rename from drivers/staging/greybus/debugfs.c
rename to drivers/greybus/debugfs.c
diff --git a/drivers/staging/greybus/greybus_trace.h b/drivers/greybus/greybus_trace.h
similarity index 100%
rename from drivers/staging/greybus/greybus_trace.h
rename to drivers/greybus/greybus_trace.h
diff --git a/drivers/staging/greybus/hd.c b/drivers/greybus/hd.c
similarity index 100%
rename from drivers/staging/greybus/hd.c
rename to drivers/greybus/hd.c
diff --git a/drivers/staging/greybus/interface.c b/drivers/greybus/interface.c
similarity index 100%
rename from drivers/staging/greybus/interface.c
rename to drivers/greybus/interface.c
diff --git a/drivers/staging/greybus/manifest.c b/drivers/greybus/manifest.c
similarity index 100%
rename from drivers/staging/greybus/manifest.c
rename to drivers/greybus/manifest.c
diff --git a/drivers/staging/greybus/module.c b/drivers/greybus/module.c
similarity index 100%
rename from drivers/staging/greybus/module.c
rename to drivers/greybus/module.c
diff --git a/drivers/staging/greybus/operation.c b/drivers/greybus/operation.c
similarity index 100%
rename from drivers/staging/greybus/operation.c
rename to drivers/greybus/operation.c
diff --git a/drivers/staging/greybus/svc.c b/drivers/greybus/svc.c
similarity index 100%
rename from drivers/staging/greybus/svc.c
rename to drivers/greybus/svc.c
diff --git a/drivers/staging/greybus/svc_watchdog.c b/drivers/greybus/svc_watchdog.c
similarity index 100%
rename from drivers/staging/greybus/svc_watchdog.c
rename to drivers/greybus/svc_watchdog.c
diff --git a/drivers/staging/greybus/Kconfig b/drivers/staging/greybus/Kconfig
index 4894c3514955..d03c37e1e6e8 100644
--- a/drivers/staging/greybus/Kconfig
+++ b/drivers/staging/greybus/Kconfig
@@ -1,20 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-menuconfig GREYBUS
-	tristate "Greybus support"
-	depends on SYSFS
-	---help---
-	  This option enables the Greybus driver core.  Greybus is an
-	  hardware protocol that was designed to provide Unipro with a
-	  sane application layer.  It was originally designed for the
-	  ARA project, a module phone system, but has shown up in other
-	  phones, and can be tunneled over other busses in order to
-	  control hardware devices.
-
-	  Say Y here to enable support for these types of drivers.
-
-	  To compile this code as a module, chose M here: the module
-	  will be called greybus.ko
-
 if GREYBUS
 
 config GREYBUS_ES2
diff --git a/drivers/staging/greybus/Makefile b/drivers/staging/greybus/Makefile
index 2551ed16b742..d16853399c9a 100644
--- a/drivers/staging/greybus/Makefile
+++ b/drivers/staging/greybus/Makefile
@@ -1,24 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
-# Greybus core
-greybus-y :=	core.o		\
-		debugfs.o	\
-		hd.o		\
-		manifest.o	\
-		module.o	\
-		interface.o	\
-		bundle.o	\
-		connection.o	\
-		control.o	\
-		svc.o		\
-		svc_watchdog.o	\
-		operation.o
-
-obj-$(CONFIG_GREYBUS)		+= greybus.o
-
 # needed for trace events
 ccflags-y += -I$(src)
 
-
 # Greybus Host controller drivers
 gb-es2-y := es2.o
 
diff --git a/drivers/staging/greybus/es2.c b/drivers/staging/greybus/es2.c
index 366716f11b1a..5b755e76d8a4 100644
--- a/drivers/staging/greybus/es2.c
+++ b/drivers/staging/greybus/es2.c
@@ -15,7 +15,7 @@
 #include <asm/unaligned.h>
 
 #include "arpc.h"
-#include "greybus_trace.h"
+#include "../../greybus/greybus_trace.h"
 
 
 /* Default timeout for USB vendor requests. */
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

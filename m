Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA4B3063BD
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 20:08:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 46CC686C6E;
	Wed, 27 Jan 2021 19:08:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B0QSmrfLMHgZ; Wed, 27 Jan 2021 19:08:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D646386C6A;
	Wed, 27 Jan 2021 19:08:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C2FA61BF574
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 19:08:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BF01A86237
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 19:08:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 82_SNFqog_pf for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 19:08:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D10FE86224
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 19:08:25 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5611264D9E;
 Wed, 27 Jan 2021 19:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611774505;
 bh=FgdF3/j9kC28DkNxxg3f4OkSr9w5KVWgidBdlNC/9Kw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oO6UP2+gfRiSgO5QcjCiqtkMvju40NsgJ57Z+q/8IGLuDdLDYJBV089x7KWcaTUGL
 0aidPeNpxOoOqjL+sBK3lEDEx4tiqgxshVpnw7SRDB5OYcQLJQ3nC44y/E3G4XqfFS
 Et1mIF7vDm7zTKqMpeWHI1J1BCFu2DGV9kCAkEkCsmGSrCLMOPBxGXLMDah2AO1GRQ
 VXMJKuVrnn7Byrb22OxM/L1OJM92buzm4vI0sPAkOWiTcS6NleSZi0c7fjuMGyDKTx
 fekcOp7X5oHXUmUhSHrZF0Hbi7zjHL+EEOrXfxg7GXmx9uJ5NQoXj0veTeenRbHbgj
 bBo5rJv36M/Ew==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l4qAx-003n50-6N; Wed, 27 Jan 2021 20:08:23 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v6 5/7] mfd: hi6421-spmi-pmic: move driver from staging
Date: Wed, 27 Jan 2021 20:08:20 +0100
Message-Id: <2b0e6f6cef0aaa914956792088c554c57f5ec644.1611773727.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611773727.git.mchehab+huawei@kernel.org>
References: <cover.1611773727.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Wang Hai <wanghai38@huawei.com>, Mayulong <mayulong1@huawei.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 David Gow <davidgow@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This driver is ready for mainstream. So, move it out of staging.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../mfd}/hisilicon,hi6421-spmi-pmic.yaml        |  0
 MAINTAINERS                                     |  7 +++++++
 drivers/mfd/Kconfig                             | 15 +++++++++++++++
 drivers/mfd/Makefile                            |  1 +
 .../hikey9xx => mfd}/hi6421-spmi-pmic.c         |  0
 drivers/staging/hikey9xx/Kconfig                | 17 -----------------
 drivers/staging/hikey9xx/Makefile               |  1 -
 7 files changed, 23 insertions(+), 18 deletions(-)
 rename {drivers/staging/hikey9xx => Documentation/devicetree/bindings/mfd}/hisilicon,hi6421-spmi-pmic.yaml (100%)
 rename drivers/{staging/hikey9xx => mfd}/hi6421-spmi-pmic.c (100%)

diff --git a/drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
similarity index 100%
rename from drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
rename to Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
diff --git a/MAINTAINERS b/MAINTAINERS
index 406c2340f221..241f11b7d48a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8085,6 +8085,13 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
 F:	drivers/spmi/hisi-spmi-controller.c
 
+HISILICON SPMI PMIC DRIVER FOR HIKEY 6421v600
+M:	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
+L:	linux-kernel@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
+F:	drivers/mfd/hi6421-spmi-pmic.c
+
 HISILICON STAGING DRIVERS FOR HIKEY 960/970
 M:	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
 L:	devel@driverdev.osuosl.org
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index bdfce7b15621..d80ccbf50235 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -509,6 +509,21 @@ config MFD_HI6421_PMIC
 	  menus in order to enable them.
 	  We communicate with the Hi6421 via memory-mapped I/O.
 
+config MFD_HI6421_SPMI
+	tristate "HiSilicon Hi6421v600 SPMI PMU/Codec IC"
+	depends on OF
+	depends on SPMI
+	select MFD_CORE
+	help
+	  Add support for HiSilicon Hi6421v600 SPMI PMIC. Hi6421 includes
+	  multi-functions, such as regulators, RTC, codec, Coulomb counter,
+	  etc.
+
+	  This driver includes core APIs _only_. You have to select
+	  individual components like voltage regulators under corresponding
+	  menus in order to enable them.
+	  We communicate with the Hi6421v600 via a SPMI bus.
+
 config MFD_HI655X_PMIC
 	tristate "HiSilicon Hi655X series PMU/Codec IC"
 	depends on ARCH_HISI || COMPILE_TEST
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 14fdb188af02..b64e89ade44b 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -234,6 +234,7 @@ obj-$(CONFIG_MFD_IPAQ_MICRO)	+= ipaq-micro.o
 obj-$(CONFIG_MFD_IQS62X)	+= iqs62x.o
 obj-$(CONFIG_MFD_MENF21BMC)	+= menf21bmc.o
 obj-$(CONFIG_MFD_HI6421_PMIC)	+= hi6421-pmic-core.o
+obj-$(CONFIG_MFD_HI6421_SPMI)	+= hi6421-spmi-pmic.o
 obj-$(CONFIG_MFD_HI655X_PMIC)   += hi655x-pmic.o
 obj-$(CONFIG_MFD_DLN2)		+= dln2.o
 obj-$(CONFIG_MFD_RT5033)	+= rt5033.o
diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/mfd/hi6421-spmi-pmic.c
similarity index 100%
rename from drivers/staging/hikey9xx/hi6421-spmi-pmic.c
rename to drivers/mfd/hi6421-spmi-pmic.c
diff --git a/drivers/staging/hikey9xx/Kconfig b/drivers/staging/hikey9xx/Kconfig
index c2b16ebfd52c..1afb8648a2c4 100644
--- a/drivers/staging/hikey9xx/Kconfig
+++ b/drivers/staging/hikey9xx/Kconfig
@@ -1,22 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-# to be placed at drivers/mfd
-config MFD_HI6421_SPMI
-	tristate "HiSilicon Hi6421v600 SPMI PMU/Codec IC"
-	depends on HAS_IOMEM
-	depends on OF
-	depends on SPMI
-	select MFD_CORE
-	help
-	  Add support for HiSilicon Hi6421v600 SPMI PMIC. Hi6421 includes
-	  multi-functions, such as regulators, RTC, codec, Coulomb counter,
-	  etc.
-
-	  This driver includes core APIs _only_. You have to select
-	  individual components like voltage regulators under corresponding
-	  menus in order to enable them.
-	  We communicate with the Hi6421v600 via a SPMI bus.
-
 # to be placed at drivers/regulator
 config REGULATOR_HI6421V600
 	tristate "HiSilicon Hi6421v600 PMIC voltage regulator support"
diff --git a/drivers/staging/hikey9xx/Makefile b/drivers/staging/hikey9xx/Makefile
index 347880fd378f..4d63184e6086 100644
--- a/drivers/staging/hikey9xx/Makefile
+++ b/drivers/staging/hikey9xx/Makefile
@@ -1,4 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
 
-obj-$(CONFIG_MFD_HI6421_SPMI)		+= hi6421-spmi-pmic.o
 obj-$(CONFIG_REGULATOR_HI6421V600)	+= hi6421v600-regulator.o
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

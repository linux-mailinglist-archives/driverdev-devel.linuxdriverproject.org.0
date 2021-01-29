Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 74212308DC8
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 20:52:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD71A871D7;
	Fri, 29 Jan 2021 19:52:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xvP44CnK0pch; Fri, 29 Jan 2021 19:52:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 009C7871EC;
	Fri, 29 Jan 2021 19:52:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8AE771C113E
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 19:52:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 87B5E871EB
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 19:52:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dO10ByeoPyMX for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D42DE8734C
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 272D064E41;
 Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611949926;
 bh=idExJOQKDUq8o5Lu5BwR71SG3CciGbq5ixBXeetmiAI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dfHHwLrH3r7zICxv/JPylqHVcxENWH7J2hC+/W4glcSjm1Oo3U+2f4FG6IayJj7uG
 To1vspor68O/HGtOHZmE0/N7/O6DxGW66aj+r3pSSi5nzY2RiZzvF/L2YFWlDZN56T
 cvWIsxlZgosSJwm3icW5xZhThjIRM62EfRYt0ngzG7N3lDwbt6tVGHfCehjdSCO9jB
 8oi05bdo0lCIh24TQGtG4dpac+NUL8VN7wEfbCR/ooCEeiyddH4JfZr5+PugR8oXVy
 m5weRh0rXQB/b9HqS1PEsxUYpv8eJWal4cdhKuukJGV8yrDQVOAw6XDVHjTzVG/IKy
 80WNsf/iaHnDA==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l5ZoJ-007Wk3-9C; Fri, 29 Jan 2021 20:52:03 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v8 12/14] mfd: hi6421-spmi-pmic: move driver from staging
Date: Fri, 29 Jan 2021 20:51:58 +0100
Message-Id: <11c9f8051267dce6d9c30d84f62e6c1cdc5e7122.1611949675.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611949675.git.mchehab+huawei@kernel.org>
References: <cover.1611949675.git.mchehab+huawei@kernel.org>
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
 Mayulong <mayulong1@huawei.com>,
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
 .../mfd}/hisilicon,hi6421-spmi-pmic.yaml       |  0
 MAINTAINERS                                    |  7 +++++++
 drivers/mfd/Kconfig                            | 16 ++++++++++++++++
 drivers/mfd/Makefile                           |  1 +
 .../hikey9xx => mfd}/hi6421-spmi-pmic.c        |  0
 drivers/staging/hikey9xx/Kconfig               | 18 ------------------
 drivers/staging/hikey9xx/Makefile              |  1 -
 7 files changed, 24 insertions(+), 19 deletions(-)
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
index bdfce7b15621..1ad04fb6eefa 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -509,6 +509,22 @@ config MFD_HI6421_PMIC
 	  menus in order to enable them.
 	  We communicate with the Hi6421 via memory-mapped I/O.
 
+config MFD_HI6421_SPMI
+	tristate "HiSilicon Hi6421v600 SPMI PMU/Codec IC"
+	depends on OF
+	depends on SPMI
+	select MFD_CORE
+	select REGMAP_SPMI
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
index 49ce28ff55b2..b17c047aa700 100644
--- a/drivers/staging/hikey9xx/Kconfig
+++ b/drivers/staging/hikey9xx/Kconfig
@@ -1,23 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-# to be placed at drivers/mfd
-config MFD_HI6421_SPMI
-	tristate "HiSilicon Hi6421v600 SPMI PMU/Codec IC"
-	depends on HAS_IOMEM
-	depends on OF
-	depends on SPMI
-	select MFD_CORE
-	select REGMAP_SPMI
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

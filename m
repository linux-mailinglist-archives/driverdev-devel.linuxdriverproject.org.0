Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 923D43063C1
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 20:08:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2670887397;
	Wed, 27 Jan 2021 19:08:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uApBReqCigxB; Wed, 27 Jan 2021 19:08:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C35E387382;
	Wed, 27 Jan 2021 19:08:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 68AC91BF574
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 19:08:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6590286C4D
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 19:08:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r6587bm1fjoH for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 19:08:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7AC0886C50
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 19:08:26 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 725A564DBF;
 Wed, 27 Jan 2021 19:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611774505;
 bh=LB/l4OuOTRtyk9xHlpxof8ovDcLCW5uGGpujh/VAx5Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WATsIDLOsM2aX0TEcdQUxFZ7PyZ0j+iEqEsoUDFpoRNKLFDnAieCmsDRtLlRiepAd
 4OHL2IjO7cP+cw8KLENnBKIL5v3Dw2lbxY9m9dtz1eBwWZaZ3ktbg8SDsKEA0coHDH
 IfQLPGPrqh4fbeKk5AwXYzY/W5l8phXGnOZ0tKe1dEvAoyUJhbNqT/CetaMwaqH/sb
 8sq49cgD85qRoXPyE3CSh+9gsUPtoRUYybol1NAiDSurL6HBkPsWcDD5zG5Ru2HQhY
 BXMnmo4X75DtmxEMzibV/VineP8k8nuNj13GfzczAW4a+/4iG0g3n6qxfkc4eAhvsj
 25CIaTiQG52eQ==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l4qAx-003n4w-3g; Wed, 27 Jan 2021 20:08:23 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v6 3/7] phy: phy-hi3670-usb3: move driver from staging into phy
Date: Wed, 27 Jan 2021 20:08:18 +0100
Message-Id: <b74d127e45b586119dce5009b5630ddbd4a7f28d.1611773727.git.mchehab+huawei@kernel.org>
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, David Gow <davidgow@google.com>,
 Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The phy USB3 driver for Hisilicon 970 (hi3670) is ready
for mainstream. Mode it from staging into the main driver's
phy/ directory.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../bindings/phy/hisilicon,hi3670-usb3.yaml           |  0
 MAINTAINERS                                           |  9 ++++++++-
 drivers/phy/hisilicon/Kconfig                         | 10 ++++++++++
 drivers/phy/hisilicon/Makefile                        |  1 +
 .../hikey9xx => phy/hisilicon}/phy-hi3670-usb3.c      |  0
 drivers/staging/hikey9xx/Kconfig                      | 11 -----------
 drivers/staging/hikey9xx/Makefile                     |  2 --
 7 files changed, 19 insertions(+), 14 deletions(-)
 rename drivers/staging/hikey9xx/phy-hi3670-usb3.yaml => Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml (100%)
 rename drivers/{staging/hikey9xx => phy/hisilicon}/phy-hi3670-usb3.c (100%)

diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.yaml b/Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
similarity index 100%
rename from drivers/staging/hikey9xx/phy-hi3670-usb3.yaml
rename to Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
diff --git a/MAINTAINERS b/MAINTAINERS
index 992fe3b0900a..fb49e654a1db 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18371,7 +18371,7 @@ L:	linux-usb@vger.kernel.org
 S:	Maintained
 F:	drivers/usb/roles/intel-xhci-usb-role-switch.c
 
-USB IP DRIVER FOR HISILICON KIRIN
+USB IP DRIVER FOR HISILICON KIRIN 960
 M:	Yu Chen <chenyu56@huawei.com>
 M:	Binghui Wang <wangbinghui@hisilicon.com>
 L:	linux-usb@vger.kernel.org
@@ -18379,6 +18379,13 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/phy/hisilicon,hi3660-usb3.yaml
 F:	drivers/phy/hisilicon/phy-hi3660-usb3.c
 
+USB IP DRIVER FOR HISILICON KIRIN 970
+M:	Mauro Carvalho Chehab <mchehab@kernel.org>
+L:	linux-usb@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/hisilicon,kirin970-usb3.yaml
+F:	drivers/phy/hisilicon/phy-kirin970-usb3.c
+
 USB ISP116X DRIVER
 M:	Olav Kongas <ok@artecdesign.ee>
 L:	linux-usb@vger.kernel.org
diff --git a/drivers/phy/hisilicon/Kconfig b/drivers/phy/hisilicon/Kconfig
index 1c73053bcc98..4d008cfc279c 100644
--- a/drivers/phy/hisilicon/Kconfig
+++ b/drivers/phy/hisilicon/Kconfig
@@ -23,6 +23,16 @@ config PHY_HI3660_USB
 
 	  To compile this driver as a module, choose M here.
 
+config PHY_HI3670_USB
+	tristate "hi3670 USB PHY support"
+	depends on (ARCH_HISI && ARM64) || COMPILE_TEST
+	select GENERIC_PHY
+	select MFD_SYSCON
+	help
+	  Enable this to support the HISILICON HI3670 USB PHY.
+
+	  To compile this driver as a module, choose M here.
+
 config PHY_HISTB_COMBPHY
 	tristate "HiSilicon STB SoCs COMBPHY support"
 	depends on (ARCH_HISI && ARM64) || COMPILE_TEST
diff --git a/drivers/phy/hisilicon/Makefile b/drivers/phy/hisilicon/Makefile
index 92e874ae9c74..51729868145b 100644
--- a/drivers/phy/hisilicon/Makefile
+++ b/drivers/phy/hisilicon/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_PHY_HI6220_USB)		+= phy-hi6220-usb.o
 obj-$(CONFIG_PHY_HI3660_USB)		+= phy-hi3660-usb3.o
+obj-$(CONFIG_PHY_HI3670_USB)		+= phy-hi3670-usb3.o
 obj-$(CONFIG_PHY_HISTB_COMBPHY)		+= phy-histb-combphy.o
 obj-$(CONFIG_PHY_HISI_INNO_USB2)	+= phy-hisi-inno-usb2.o
 obj-$(CONFIG_PHY_HIX5HD2_SATA)		+= phy-hix5hd2-sata.o
diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/phy/hisilicon/phy-hi3670-usb3.c
similarity index 100%
rename from drivers/staging/hikey9xx/phy-hi3670-usb3.c
rename to drivers/phy/hisilicon/phy-hi3670-usb3.c
diff --git a/drivers/staging/hikey9xx/Kconfig b/drivers/staging/hikey9xx/Kconfig
index 2e48ded92a7e..cc1fc58866c5 100644
--- a/drivers/staging/hikey9xx/Kconfig
+++ b/drivers/staging/hikey9xx/Kconfig
@@ -1,16 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-# to be placed at drivers/phy
-config PHY_HI3670_USB
-	tristate "hi3670 USB PHY support"
-	depends on (ARCH_HISI && ARM64) || COMPILE_TEST
-	select GENERIC_PHY
-	select MFD_SYSCON
-	help
-	  Enable this to support the HISILICON HI3670 USB PHY.
-
-	  To compile this driver as a module, choose M here.
-
 # to be placed at drivers/spmi
 config SPMI_HISI3670
 	tristate "Hisilicon 3670 SPMI Controller"
diff --git a/drivers/staging/hikey9xx/Makefile b/drivers/staging/hikey9xx/Makefile
index 1924fadac952..9371dcc3d35b 100644
--- a/drivers/staging/hikey9xx/Makefile
+++ b/drivers/staging/hikey9xx/Makefile
@@ -1,7 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-obj-$(CONFIG_PHY_HI3670_USB)		+= phy-hi3670-usb3.o
-
 obj-$(CONFIG_SPMI_HISI3670)		+= hisi-spmi-controller.o
 obj-$(CONFIG_MFD_HI6421_SPMI)		+= hi6421-spmi-pmic.o
 obj-$(CONFIG_REGULATOR_HI6421V600)	+= hi6421v600-regulator.o
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

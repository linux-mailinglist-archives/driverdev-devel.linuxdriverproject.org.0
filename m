Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EE726D952
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 12:42:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D9C1E20010;
	Thu, 17 Sep 2020 10:42:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eIrFh-0LesiZ; Thu, 17 Sep 2020 10:42:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 60C122E18A;
	Thu, 17 Sep 2020 10:42:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A1A11BF387
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:42:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 817EA20406
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:42:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lqo+W-X8y5pw for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 10:42:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 995812038D
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 10:42:22 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5d2.dynamic.kabel-deutschland.de
 [95.90.213.210])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEA052072E;
 Thu, 17 Sep 2020 10:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600339342;
 bh=jkwdYYi0gSfy61DR572eLTQlbN0CK26Wx//c4LgB/gA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0vZ3hz26uQrIz38bnQSlYpdatcusbHn45bFoAU/3tYoNYZxEsviRhDoNU/C3udRJ9
 lPnp4BRBfjoSScBKHFIhsu/6pTAkNqBH0MBRq4pbpJXp9n3ryQUDp7ssSCunYR2Uq6
 iOSXbEf84M0EreEBYFKfNKDUkbPR7ExDTWdJmY58=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kIrMp-005WZU-MO; Thu, 17 Sep 2020 12:42:19 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH v4 2/8] staging: hikey9xx: add build for the Kirin 970 PHY
 driver
Date: Thu, 17 Sep 2020 12:42:06 +0200
Message-Id: <60aae73e91348430e940638cf9668a0a63a85c1c.1600338981.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1600338981.git.mchehab+huawei@kernel.org>
References: <cover.1600338981.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add the needed bits in order to build the Kirin 970 PHY
driver.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/Kconfig  | 11 +++++++++++
 drivers/staging/hikey9xx/Makefile |  2 ++
 2 files changed, 13 insertions(+)

diff --git a/drivers/staging/hikey9xx/Kconfig b/drivers/staging/hikey9xx/Kconfig
index b2ce886e1c4e..e3d1c00394cd 100644
--- a/drivers/staging/hikey9xx/Kconfig
+++ b/drivers/staging/hikey9xx/Kconfig
@@ -1,5 +1,16 @@
 # SPDX-License-Identifier: GPL-2.0
 
+# to be placed at drivers/phy
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
 # to be placed at drivers/spmi
 config SPMI_HISI3670
 	tristate "Hisilicon 3670 SPMI Controller"
diff --git a/drivers/staging/hikey9xx/Makefile b/drivers/staging/hikey9xx/Makefile
index 1a848d398ab6..7f3e86dddb38 100644
--- a/drivers/staging/hikey9xx/Makefile
+++ b/drivers/staging/hikey9xx/Makefile
@@ -1,5 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 
+obj-$(CONFIG_PHY_HI3670_USB)		+= phy-hi3670-usb3.o
+
 obj-$(CONFIG_SPMI_HISI3670)		+= hisi-spmi-controller.o
 obj-$(CONFIG_MFD_HI6421_SPMI)		+= hi6421-spmi-pmic.o
 obj-$(CONFIG_REGULATOR_HI6421V600)	+= hi6421v600-regulator.o
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2FC245D72
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:11:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F29E868B5;
	Mon, 17 Aug 2020 07:11:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p8a1OvDwN6Bc; Mon, 17 Aug 2020 07:11:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B1878688F;
	Mon, 17 Aug 2020 07:11:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 207C31BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1E03286722
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WSwZyz7PoOKm for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9C00A86702
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5CB6622DA7;
 Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648278;
 bh=0Ge6VswlmR80j30p2evfkj0Ci5lu2tDRSHfnYoCsjZI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nUQ+pDUWjXtgIT/h0n2o1c3O3AdqTpAnkvyf6yoWQyzILhF9HvAlJbC5cY7yzjnBw
 jTMPtRVmy3S1MHKBDZoeekmHV/NTxT4vITJSIpV/wgUwVhnmNypRpTKCpiE+UItsNR
 TOC5AXwHylTXcWwd2DEf5MZY+3gMlyylnD9qj4wE=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIa-00Bdl3-IR; Mon, 17 Aug 2020 09:11:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 39/44] staging: regulator: hi6421v600-regulator: add it to
 the building system
Date: Mon, 17 Aug 2020 09:10:58 +0200
Message-Id: <2992dc49945dcfb07c4bd96fa5c288c4e679701a.1597647359.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597647359.git.mchehab+huawei@kernel.org>
References: <cover.1597647359.git.mchehab+huawei@kernel.org>
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
Cc: mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 devel@driverdev.osuosl.org, linuxarm@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change the binding logic to ensure that the PMIC SPMI
driver will run before the regulator code and add it to the
building system.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/Kconfig  | 10 +++++++++-
 drivers/staging/hikey9xx/Makefile |  5 +++--
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/hikey9xx/Kconfig b/drivers/staging/hikey9xx/Kconfig
index 7ca083b7e94d..76267b9be562 100644
--- a/drivers/staging/hikey9xx/Kconfig
+++ b/drivers/staging/hikey9xx/Kconfig
@@ -15,7 +15,6 @@ config MFD_HI6421_SPMI
 	tristate "HiSilicon Hi6421v600 SPMI PMU/Codec IC"
 	depends on OF
 	select MFD_CORE
-	select REGMAP_MMIO
 	help
 	  Add support for HiSilicon Hi6421v600 SPMI PMIC. Hi6421 includes
 	  multi-functions, such as regulators, RTC, codec, Coulomb counter,
@@ -25,3 +24,12 @@ config MFD_HI6421_SPMI
 	  individual components like voltage regulators under corresponding
 	  menus in order to enable them.
 	  We communicate with the Hi6421v600 via a SPMI bus.
+
+# to be placed at drivers/regulator
+config REGULATOR_HI6421V600
+	tristate "HiSilicon Hi6421v600 PMIC voltage regulator support"
+	depends on MFD_HI6421_PMIC && OF
+	help
+	  This driver provides support for the voltage regulators on
+	  HiSilicon Hi6421v600 PMU / Codec IC.
+	  This is used on Kirin 3670 boards, like HiKey 970.
diff --git a/drivers/staging/hikey9xx/Makefile b/drivers/staging/hikey9xx/Makefile
index 79de37da7a8f..9371dcc3d35b 100644
--- a/drivers/staging/hikey9xx/Makefile
+++ b/drivers/staging/hikey9xx/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-obj-$(CONFIG_SPMI_HISI3670)	+= hisi-spmi-controller.o
-obj-$(CONFIG_MFD_HI6421_SPMI)	+= hi6421-spmi-pmic.o
+obj-$(CONFIG_SPMI_HISI3670)		+= hisi-spmi-controller.o
+obj-$(CONFIG_MFD_HI6421_SPMI)		+= hi6421-spmi-pmic.o
+obj-$(CONFIG_REGULATOR_HI6421V600)	+= hi6421v600-regulator.o
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C30A53063BF
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 20:08:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1335A862FB;
	Wed, 27 Jan 2021 19:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 16UqsdLwbgQw; Wed, 27 Jan 2021 19:08:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 482E98624A;
	Wed, 27 Jan 2021 19:08:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 41DCC1BF9B2
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 19:08:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3873622EE6
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 19:08:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fC3r3jGOhpDA for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 19:08:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 416E222E94
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 19:08:26 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5BE3364D9D;
 Wed, 27 Jan 2021 19:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611774505;
 bh=djkq0x3uFx4wmPDfmK9tCPXnv1njQDgmV0f0SEelkkA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YWZ2ozl6m88ZFiSvC4U7RFDJy2XRs90wHbn2Oj9g830p9nKGPTBVbzhcN+qa7+akY
 C/LQ8EwnO+rBs3DgfR/L6bf9Kbdg9UoUPgCFNw15A6ILkVowbkNpJN7/C4JM6rhG/l
 g95x33tygXhspt3nld87UtOAeMMLNywgvPvWApDSbwiLOVJmFTcp+4qv2bR1uS9Vtu
 C4WxTvrzaNTroCvgEVRSnx9herxEh/V0AueAEoXQj0kFPwLUyBI164HLKxuZs17K6n
 nsv9dN7y4Bjc3yvVCeP06RMDp2Tpx9oAHLjzcLtqkEs/deHAjmao+TgQOg3aOvFGny
 VptgLEBQrCybw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l4qAx-003n4y-4Y; Wed, 27 Jan 2021 20:08:23 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v6 4/7] spmi: hisi-spmi-controller: move driver from staging
Date: Wed, 27 Jan 2021 20:08:19 +0100
Message-Id: <d1de094c60c162a8509c6dbaf644d7c5ae2d0acb.1611773727.git.mchehab+huawei@kernel.org>
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
 Mayulong <mayulong1@huawei.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 David Gow <davidgow@google.com>, Colin Ian King <colin.king@canonical.com>,
 Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The Hisilicon 6421v600 SPMI driver is ready for mainstream.

So, move it from staging.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../spmi}/hisilicon,hisi-spmi-controller.yaml         |  0
 MAINTAINERS                                           |  7 +++++++
 drivers/spmi/Kconfig                                  |  9 +++++++++
 drivers/spmi/Makefile                                 |  1 +
 .../{staging/hikey9xx => spmi}/hisi-spmi-controller.c |  0
 drivers/staging/hikey9xx/Kconfig                      | 11 -----------
 drivers/staging/hikey9xx/Makefile                     |  1 -
 7 files changed, 17 insertions(+), 12 deletions(-)
 rename {drivers/staging/hikey9xx => Documentation/devicetree/bindings/spmi}/hisilicon,hisi-spmi-controller.yaml (100%)
 rename drivers/{staging/hikey9xx => spmi}/hisi-spmi-controller.c (100%)

diff --git a/drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml b/Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
similarity index 100%
rename from drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml
rename to Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
diff --git a/MAINTAINERS b/MAINTAINERS
index fb49e654a1db..406c2340f221 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8078,6 +8078,13 @@ F:	drivers/crypto/hisilicon/sec2/sec_crypto.c
 F:	drivers/crypto/hisilicon/sec2/sec_crypto.h
 F:	drivers/crypto/hisilicon/sec2/sec_main.c
 
+HISILICON SPMI CONTROLLER DRIVER FOR HIKEY 970
+M:	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
+L:	linux-kernel@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
+F:	drivers/spmi/hisi-spmi-controller.c
+
 HISILICON STAGING DRIVERS FOR HIKEY 960/970
 M:	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
 L:	devel@driverdev.osuosl.org
diff --git a/drivers/spmi/Kconfig b/drivers/spmi/Kconfig
index a53bad541f1a..2874b6c26028 100644
--- a/drivers/spmi/Kconfig
+++ b/drivers/spmi/Kconfig
@@ -11,6 +11,15 @@ menuconfig SPMI
 
 if SPMI
 
+config SPMI_HISI3670
+	tristate "Hisilicon 3670 SPMI Controller"
+	select IRQ_DOMAIN_HIERARCHY
+	depends on HAS_IOMEM
+	help
+	  If you say yes to this option, support will be included for the
+	  built-in SPMI PMIC Arbiter interface on Hisilicon 3670
+	  processors.
+
 config SPMI_MSM_PMIC_ARB
 	tristate "Qualcomm MSM SPMI Controller (PMIC Arbiter)"
 	select IRQ_DOMAIN_HIERARCHY
diff --git a/drivers/spmi/Makefile b/drivers/spmi/Makefile
index 55a94cadeffe..6e092e6f290c 100644
--- a/drivers/spmi/Makefile
+++ b/drivers/spmi/Makefile
@@ -4,4 +4,5 @@
 #
 obj-$(CONFIG_SPMI)	+= spmi.o
 
+obj-$(CONFIG_SPMI_HISI3670)	+= hisi-spmi-controller.o
 obj-$(CONFIG_SPMI_MSM_PMIC_ARB)	+= spmi-pmic-arb.o
diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/spmi/hisi-spmi-controller.c
similarity index 100%
rename from drivers/staging/hikey9xx/hisi-spmi-controller.c
rename to drivers/spmi/hisi-spmi-controller.c
diff --git a/drivers/staging/hikey9xx/Kconfig b/drivers/staging/hikey9xx/Kconfig
index cc1fc58866c5..c2b16ebfd52c 100644
--- a/drivers/staging/hikey9xx/Kconfig
+++ b/drivers/staging/hikey9xx/Kconfig
@@ -1,16 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-# to be placed at drivers/spmi
-config SPMI_HISI3670
-	tristate "Hisilicon 3670 SPMI Controller"
-	select IRQ_DOMAIN_HIERARCHY
-	depends on HAS_IOMEM
-	depends on SPMI
-	help
-	  If you say yes to this option, support will be included for the
-	  built-in SPMI PMIC Arbiter interface on Hisilicon 3670
-	  processors.
-
 # to be placed at drivers/mfd
 config MFD_HI6421_SPMI
 	tristate "HiSilicon Hi6421v600 SPMI PMU/Codec IC"
diff --git a/drivers/staging/hikey9xx/Makefile b/drivers/staging/hikey9xx/Makefile
index 9371dcc3d35b..347880fd378f 100644
--- a/drivers/staging/hikey9xx/Makefile
+++ b/drivers/staging/hikey9xx/Makefile
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 
-obj-$(CONFIG_SPMI_HISI3670)		+= hisi-spmi-controller.o
 obj-$(CONFIG_MFD_HI6421_SPMI)		+= hi6421-spmi-pmic.o
 obj-$(CONFIG_REGULATOR_HI6421V600)	+= hi6421v600-regulator.o
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

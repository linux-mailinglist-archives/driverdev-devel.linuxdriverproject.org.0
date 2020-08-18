Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95614248875
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 16:59:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 89F0885D21;
	Tue, 18 Aug 2020 14:59:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RQ4NG3M52v2E; Tue, 18 Aug 2020 14:59:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D18F981384;
	Tue, 18 Aug 2020 14:59:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C8CAB1BF283
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:59:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C57ED86E2C
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fhS2rcJ0PHWT for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 14:59:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5794B876F4
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 14:59:05 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7556207DE;
 Tue, 18 Aug 2020 14:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597762745;
 bh=DqlApqnoeh62N6nMDBl0bR6nhDhQK2yfyHxOyzgzSmo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tAFhwzV/KxZlFNRENnfytqfkdaOUy0xG5MGIuqy+NkveP6ggo/QGtME9+koNEJZ+8
 NPK+JXwYv7jrqrZsgg0amd6oBf7eiNNuXZB2U3Wc0Sct62WAiep7eX97afGAVXosxu
 0/NJPR1P4BHnXqHo+kcQTGdQO/ukP+mU4ZvZwQR8=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k834p-00EGAc-11; Tue, 18 Aug 2020 16:59:03 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/6] staging: hikey9xx: fix Kconfig dependency chain
Date: Tue, 18 Aug 2020 16:58:53 +0200
Message-Id: <1b7e23500e7449593393115cc0954af441b0c730.1597762400.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597762400.git.mchehab+huawei@kernel.org>
References: <cover.1597762400.git.mchehab+huawei@kernel.org>
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
 linux-kernel@vger.kernel.org, John Stultz <john.stultz@linaro.org>,
 mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Both the SPMI controller and the SPMI PMIC driver
depends on the SPMI bus support.

The dependency for the regulator is also wrong:
it should depends on the SPMI version of the HiSilicon 6421,
and not on the normal one.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/Kconfig | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/hikey9xx/Kconfig b/drivers/staging/hikey9xx/Kconfig
index 76267b9be562..a004839e8fa9 100644
--- a/drivers/staging/hikey9xx/Kconfig
+++ b/drivers/staging/hikey9xx/Kconfig
@@ -5,6 +5,7 @@ config SPMI_HISI3670
 	tristate "Hisilicon 3670 SPMI Controller"
 	select IRQ_DOMAIN_HIERARCHY
 	depends on HAS_IOMEM
+	depends on SPMI
 	help
 	  If you say yes to this option, support will be included for the
 	  built-in SPMI PMIC Arbiter interface on Hisilicon 3670
@@ -14,6 +15,7 @@ config SPMI_HISI3670
 config MFD_HI6421_SPMI
 	tristate "HiSilicon Hi6421v600 SPMI PMU/Codec IC"
 	depends on OF
+	depends on SPMI
 	select MFD_CORE
 	help
 	  Add support for HiSilicon Hi6421v600 SPMI PMIC. Hi6421 includes
@@ -28,7 +30,7 @@ config MFD_HI6421_SPMI
 # to be placed at drivers/regulator
 config REGULATOR_HI6421V600
 	tristate "HiSilicon Hi6421v600 PMIC voltage regulator support"
-	depends on MFD_HI6421_PMIC && OF
+	depends on MFD_HI6421_SPMI && OF
 	help
 	  This driver provides support for the voltage regulators on
 	  HiSilicon Hi6421v600 PMU / Codec IC.
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

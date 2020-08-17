Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 26052245E61
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:50:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C176D87846;
	Mon, 17 Aug 2020 07:50:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R0mfwXPQPeJV; Mon, 17 Aug 2020 07:50:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A0FE087801;
	Mon, 17 Aug 2020 07:50:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 11E841BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0A13A87ECB
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XFhLyeIZPsXq for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A174287CDD
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 325BE22B45;
 Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597650620;
 bh=HOfDmj8UoHuRegR0krfn2T5Wtujk1Lcw6hMZ/GcOEPs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Qy0J2xtwUnQFW5bq9l/SJPpRL+5JU+CWUnGl2nZKC8HBBbPrfo8UXyza96eHNVgIS
 9TbhMB3Pkc2d26NONKp3nTuuco5tjGLxdnrbDns++1mpLiWdfzLyZ1/Mm/Fm19qyRP
 XEqeSOQATa6Hf/0tHlmZkqt7OEd265WJLitVg+5Y=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZuM-00BfcL-B1; Mon, 17 Aug 2020 09:50:18 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 11/16] iommu: add Hisilicon Kirin970 iommu at the building
 system
Date: Mon, 17 Aug 2020 09:50:10 +0200
Message-Id: <5a6910720a629bdc39d013d8b45bd97a72c9ceb0.1597650455.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597650455.git.mchehab+huawei@kernel.org>
References: <cover.1597650455.git.mchehab+huawei@kernel.org>
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

Now that the iommu driver is ready, add it to the building
system.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/Kconfig  | 9 +++++++++
 drivers/staging/hikey9xx/Makefile | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/staging/hikey9xx/Kconfig b/drivers/staging/hikey9xx/Kconfig
index 76267b9be562..6487278a4144 100644
--- a/drivers/staging/hikey9xx/Kconfig
+++ b/drivers/staging/hikey9xx/Kconfig
@@ -33,3 +33,12 @@ config REGULATOR_HI6421V600
 	  This driver provides support for the voltage regulators on
 	  HiSilicon Hi6421v600 PMU / Codec IC.
 	  This is used on Kirin 3670 boards, like HiKey 970.
+
+# to be placed at drivers/iommu
+config HISI_IOMMU_LPAE
+	bool "Hisilicon IOMMU LPAE Support"
+	select IOMMU_API
+	select IODOMAIN_API
+	help
+	  This driver provides support for the IOMMU found on Kirin 970.
+	  This is used on Kirin 3670 boards, like HiKey 970.
diff --git a/drivers/staging/hikey9xx/Makefile b/drivers/staging/hikey9xx/Makefile
index 9371dcc3d35b..c6e4998c02dd 100644
--- a/drivers/staging/hikey9xx/Makefile
+++ b/drivers/staging/hikey9xx/Makefile
@@ -3,3 +3,4 @@
 obj-$(CONFIG_SPMI_HISI3670)		+= hisi-spmi-controller.o
 obj-$(CONFIG_MFD_HI6421_SPMI)		+= hi6421-spmi-pmic.o
 obj-$(CONFIG_REGULATOR_HI6421V600)	+= hi6421v600-regulator.o
+obj-$(CONFIG_HISI_IOMMU_LPAE)		+= hisi_smmu_lpae.o
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

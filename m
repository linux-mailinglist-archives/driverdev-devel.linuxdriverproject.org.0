Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CD9245E67
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:50:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 37A5121513;
	Mon, 17 Aug 2020 07:50:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jegnhrXsqYsi; Mon, 17 Aug 2020 07:50:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B1E7A204C9;
	Mon, 17 Aug 2020 07:50:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B1E11BF968
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1298C87647
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yxBM6t3azrv0 for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 947D18780E
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 280032224D;
 Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597650620;
 bh=fmYTNRmOukXTEcCF9oMdnQKxhH25ltseKK1ahgmXuZY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=yczP2SXEQ3j5hP+o97vBgh4a7KoBpsg/cAn38KbJElcEehR69+q6rCSvNzIv952QZ
 VeLpi3Qv+LDAtlgnnyFKLsannxxsFGSmdhWVGxF7HAAckXcXtu9rhoqul0tj/7rmNs
 pv4MEJsOc9upJD5shKL3L0glYjDFwBcpqwjGbRzs=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZuM-00BfcJ-9y; Mon, 17 Aug 2020 09:50:18 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 10/16] iommu: hisi_smmu_lpae: convert it to probe_device
Date: Mon, 17 Aug 2020 09:50:09 +0200
Message-Id: <4e0e8de1f472590b5ee3a45a79cd1c8948aa0479.1597650455.git.mchehab+huawei@kernel.org>
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

The add_device()/remove_device() was removed on Kernel 5.8.

Convert the driver to use probe_device/release_device.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hisi_smmu_lpae.c | 31 +++++------------------
 1 file changed, 6 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi_smmu_lpae.c b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
index 1fe57c10e745..c8c7e8e3dde2 100644
--- a/drivers/staging/hikey9xx/hisi_smmu_lpae.c
+++ b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
@@ -529,33 +529,14 @@ static bool hisi_smmu_capable(enum iommu_cap cap)
 	return false;
 }
 
-static int hisi_smmu_add_device(struct device *dev)
+static struct iommu_device *hisi_smmu_probe_device(struct device *dev)
 {
-	struct hisi_smmu_device_lpae *iommu = hisi_smmu_dev;
-	struct iommu_group *group;
-
-	if (iommu)
-		iommu_device_link(&iommu->iommu, dev);
-	else
-		return -ENODEV;
-
-	group = iommu_group_get_for_dev(dev);
-	if (IS_ERR(group))
-		return PTR_ERR(group);
-
-	iommu_group_put(group);
-
-	return 0;
+	return &hisi_smmu_dev->iommu;
 }
 
-static void hisi_smmu_remove_device(struct device *dev)
+static void hisi_smmu_release_device(struct device *dev)
 {
-	struct hisi_smmu_device_lpae *iommu = hisi_smmu_dev;
-
-	if (iommu)
-		iommu_device_unlink(&iommu->iommu, dev);
-
-	iommu_group_remove_device(dev);
+	/* As just one SMMU is possible, nothing to do here */
 }
 
 static struct iommu_ops hisi_smmu_ops = {
@@ -567,8 +548,8 @@ static struct iommu_ops hisi_smmu_ops = {
 	.map		= hisi_smmu_map_lpae,
 	.unmap		= hisi_smmu_unmap_lpae,
 	.iova_to_phys	= hisi_smmu_iova_to_phys_lpae,
-	.add_device	= hisi_smmu_add_device,
-	.remove_device	= hisi_smmu_remove_device,
+	.probe_device	= hisi_smmu_probe_device,
+	.release_device	= hisi_smmu_release_device,
 	.device_group	= generic_device_group,
 	.pgsize_bitmap	= SMMU_PAGE_SIZE,
 };
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

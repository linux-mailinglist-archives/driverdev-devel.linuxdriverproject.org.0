Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8816E245E6E
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:50:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 311CC88216;
	Mon, 17 Aug 2020 07:50:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GeOt-Nj5icXc; Mon, 17 Aug 2020 07:50:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68269881EC;
	Mon, 17 Aug 2020 07:50:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 373431BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 296AC20392
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XbmGns1QMTlT for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 2238020378
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA93520772;
 Mon, 17 Aug 2020 07:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597650620;
 bh=28N0YSDdInyo9NOOCTtQ2JysgmVncp+LnW70DxnQkSY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nTHbQZR3NTdGVJ0kLKvtj0XTCYs+GARSPxgYkniWc8YJp6NcmplPWRhfN9J+xFqWD
 NTkDmZ904Qx9CGr3FPFB+Pgof7RG4UBWYkKTssQ2So1/V/qT8zapzUv7ZiF1bl1seo
 YPK/07KKY7n3N70w62pg82YKm6Q80odv846Z0dQ8=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZuL-00Bfbv-Tw; Mon, 17 Aug 2020 09:50:17 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 02/16] iommu: hisilicon: remove default iommu_map_sg handler
Date: Mon, 17 Aug 2020 09:50:01 +0200
Message-Id: <d1935aa28fd49ed2195043906699388c56070c03.1597650455.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Joerg Roedel <jroedel@suse.de>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, John Stultz <john.stultz@linaro.org>,
 mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The code there is just a copy of the default iommu sg
handler. Well, callback fops was removed, as all iommu
drivers are doing the same.

Fixes: d88e61faad52 ("iommu: Remove the ->map_sg indirection")
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hisi_smmu_lpae.c | 42 -----------------------
 1 file changed, 42 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi_smmu_lpae.c b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
index 0ccd5c9ffeb1..c5c266fb1c0b 100644
--- a/drivers/staging/hikey9xx/hisi_smmu_lpae.c
+++ b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
@@ -720,48 +720,7 @@ static size_t hisi_smmu_unmap_tile_lpae(struct iommu_domain *domain,
 		unsigned long iova, size_t size)
 {
 	return hisi_smmu_unmap_lpae(domain, iova, size);
-}
 
-size_t hisi_iommu_map_sg_lpae(struct iommu_domain *domain, unsigned long iova,
-			 struct scatterlist *sg, unsigned int nents, int prot)
-{
-	struct scatterlist *s;
-	size_t mapped = 0;
-	unsigned int i, min_pagesz;
-	int ret;
-
-	if (domain->ops->pgsize_bitmap == 0UL)
-		return 0;
-
-	min_pagesz = (unsigned int)1 << __ffs(domain->ops->pgsize_bitmap);
-
-	for_each_sg(sg, s, nents, i) {
-		phys_addr_t phys = page_to_phys(sg_page(s)) + s->offset;
-
-		/*
-		 * We are mapping on IOMMU page boundaries, so offset within
-		 * the page must be 0. However, the IOMMU may support pages
-		 * smaller than PAGE_SIZE, so s->offset may still represent
-		 * an offset of that boundary within the CPU page.
-		 */
-		if (!IS_ALIGNED(s->offset, min_pagesz))
-			goto out_err;
-
-		ret = hisi_smmu_map_lpae(domain, iova + mapped, phys,
-					(size_t)s->length, prot);
-		if (ret)
-			goto out_err;
-
-		mapped += s->length;
-	}
-
-	return mapped;
-
-out_err:
-	/* undo mappings already done */
-	hisi_smmu_unmap_lpae(domain, iova, mapped);
-
-	return 0;
 }
 
 static struct iommu_ops hisi_smmu_ops = {
@@ -769,7 +728,6 @@ static struct iommu_ops hisi_smmu_ops = {
 	.domain_free	= hisi_smmu_domain_free_lpae,
 	.map		= hisi_smmu_map_lpae,
 	.unmap		= hisi_smmu_unmap_lpae,
-	.map_sg     = hisi_iommu_map_sg_lpae,
 	.attach_dev = hisi_attach_dev_lpae,
 	.detach_dev = hisi_detach_dev_lpae,
 	.iova_to_phys	= hisi_smmu_iova_to_phys_lpae,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8ACF245E6B
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:50:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AB00E881DE;
	Mon, 17 Aug 2020 07:50:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hfN4er45l-k5; Mon, 17 Aug 2020 07:50:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E342F87CD4;
	Mon, 17 Aug 2020 07:50:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66CCF1BF968
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 62F9687804
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z+7sM4eT9+xU for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 41F98877F5
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D242E207FB;
 Mon, 17 Aug 2020 07:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597650620;
 bh=5eopSBJ3EqYWC3PVo/2+SzawN6Ik93iYnKxJjLgDgxI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KUPFccODSE3t9n6VgxUeKaXbgKmBbntE8HLJXor6Ld59r2ZU1J/lwkIFsvsh+oHd/
 ynDTri00w8skW8gqziKfXOq/9+NF7/uSgMwqrluoNIRgCohhI4pnuUfzr3ZrXUo0YS
 T88NbZLm8gHUAHAk5rg3oGjm9Uu5/r99Wvv6wAKo=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZuL-00Bfby-VC; Mon, 17 Aug 2020 09:50:17 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 03/16] iommu: hisilicon: map and unmap ops gained new arguments
Date: Mon, 17 Aug 2020 09:50:02 +0200
Message-Id: <b104726cca6f943f08f4c47ecfb698545a0caa1b.1597650455.git.mchehab+huawei@kernel.org>
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

As both map() and unmap() ops gained new arguments upstream,
update their headers accordingly.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hisi_smmu_lpae.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi_smmu_lpae.c b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
index c5c266fb1c0b..b411ca97f2c2 100644
--- a/drivers/staging/hikey9xx/hisi_smmu_lpae.c
+++ b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
@@ -346,7 +346,8 @@ int hisi_smmu_handle_mapping_lpae(struct iommu_domain *domain,
 static int hisi_smmu_map_lpae(struct iommu_domain *domain,
 			      unsigned long iova,
 			      phys_addr_t paddr, size_t size,
-			      int prot)
+			      int prot,
+			      gfp_t gfp)
 {
 	unsigned long max_iova;
 	struct iommu_domain_data *data;
@@ -437,7 +438,8 @@ unsigned int hisi_smmu_handle_unmapping_lpae(struct iommu_domain *domain,
 }
 
 static size_t hisi_smmu_unmap_lpae(struct iommu_domain *domain,
-		unsigned long iova, size_t size)
+		unsigned long iova, size_t size,
+		struct iommu_iotlb_gather *iotlb_gather)
 {
 	unsigned long max_iova;
 	unsigned int ret;
@@ -593,7 +595,7 @@ static size_t hisi_map_tile_row_lpae(struct iommu_domain *domain, unsigned long
 		/*get the start physical address*/
 		phys_addr = (unsigned long)get_phys_addr_lpae(sg) + sg_offset;
 		ret = hisi_smmu_map_lpae(domain,
-				iova + mapped_size, phys_addr, map_size, prot);
+				iova + mapped_size, phys_addr, map_size, prot, GFP_KERNEL);
 		if (ret) {
 			dbg("[%s] hisi_smmu_map failed!\n", __func__);
 			break;
@@ -719,8 +721,7 @@ static int hisi_smmu_map_tile_lpae(struct iommu_domain *domain,
 static size_t hisi_smmu_unmap_tile_lpae(struct iommu_domain *domain,
 		unsigned long iova, size_t size)
 {
-	return hisi_smmu_unmap_lpae(domain, iova, size);
-
+	return hisi_smmu_unmap_lpae(domain, iova, size, NULL);
 }
 
 static struct iommu_ops hisi_smmu_ops = {
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

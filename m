Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DA2245E71
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:50:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A279421553;
	Mon, 17 Aug 2020 07:50:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HrFURSzh5Net; Mon, 17 Aug 2020 07:50:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D924C204E0;
	Mon, 17 Aug 2020 07:50:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2039D1BF969
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1CFE1857CE
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R1oFtwiNzNXe for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 772548560B
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0DC632078A;
 Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597650620;
 bh=mQ3WvTAGWgK2rmSELwujRqp54hJGC60batYeik6p+fw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OhyMpbfZ+LZu2GPSMY3c5rAeSH0dDmtRC1sj2lvdGpFh3OLP3+pwfzFJBPp2cwdbB
 XuvcrdLeCf09uaggkOJfj7Dby+DReR1cbVCXw6DOGVc8LC6ymx3Tm+lKQYZOxrLNWD
 d0z2U2LKocgwu3+aV6frqfOcAaFEvwbCb45kbJJo=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZuM-00BfcA-6B; Mon, 17 Aug 2020 09:50:18 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 07/16] iommu: hisi_smmu_lpae: get rid of IOMMU_SEC and
 IOMMU_DEVICE
Date: Mon, 17 Aug 2020 09:50:06 +0200
Message-Id: <c077956093a22113ab3d8bd4b74c49d10a9f336d.1597650455.git.mchehab+huawei@kernel.org>
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

Those prot bits aren't needed for Hikey970's GPU code, and depends
on some patch not on upstream.

So, get rid of them.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hisi_smmu_lpae.c | 41 +++++++++--------------
 1 file changed, 15 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi_smmu_lpae.c b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
index 5fdd91a6aa8e..9dae0a3067b6 100644
--- a/drivers/staging/hikey9xx/hisi_smmu_lpae.c
+++ b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
@@ -205,9 +205,6 @@ static int hisi_smmu_alloc_init_pte_lpae(smmu_pmd_t *ppmd,
 	}
 
 pte_ready:
-	if (prot & IOMMU_SEC)
-		*ppmd &= (~SMMU_PMD_NS);
-
 	start = (smmu_pte_t *)smmu_pte_page_vaddr_lpae(ppmd)
 		+ smmu_pte_index(addr);
 	pte = start;
@@ -215,30 +212,24 @@ static int hisi_smmu_alloc_init_pte_lpae(smmu_pmd_t *ppmd,
 		pteval |= SMMU_PROT_NORMAL;
 		pteval |= SMMU_PTE_NS;
 	} else {
-		if (prot & IOMMU_DEVICE) {
-			pteval |= SMMU_PROT_DEVICE_nGnRE;
-		} else {
-			if (prot & IOMMU_CACHE)
-				pteval |= SMMU_PROT_NORMAL_CACHE;
-			else
-				pteval |= SMMU_PROT_NORMAL_NC;
+		if (prot & IOMMU_CACHE)
+			pteval |= SMMU_PROT_NORMAL_CACHE;
+		else
+			pteval |= SMMU_PROT_NORMAL_NC;
 
-			if ((prot & IOMMU_READ) && (prot & IOMMU_WRITE))
-				pteval |= SMMU_PAGE_READWRITE;
-			else if ((prot & IOMMU_READ) && !(prot & IOMMU_WRITE))
-				pteval |= SMMU_PAGE_READONLY;
-			else
-				WARN_ON("you do not set read attribute!");
+		if ((prot & IOMMU_READ) && (prot & IOMMU_WRITE))
+			pteval |= SMMU_PAGE_READWRITE;
+		else if ((prot & IOMMU_READ) && !(prot & IOMMU_WRITE))
+			pteval |= SMMU_PAGE_READONLY;
+		else
+			WARN_ON("you do not set read attribute!");
 
-			if (prot & IOMMU_EXEC) {
-				pteval |= SMMU_PAGE_READONLY_EXEC;
-				pteval &= ~(SMMU_PTE_PXN | SMMU_PTE_UXN);
-			}
+		if (!(prot & IOMMU_NOEXEC)) {
+			pteval |= SMMU_PAGE_READONLY_EXEC;
+			pteval &= ~(SMMU_PTE_PXN | SMMU_PTE_UXN);
 		}
-		if (prot & IOMMU_SEC)
-			pteval &= (~SMMU_PTE_NS);
-		else
-			pteval |= SMMU_PTE_NS;
+
+		pteval |= SMMU_PTE_NS;
 	}
 
 	do {
@@ -287,8 +278,6 @@ static int hisi_smmu_alloc_init_pmd_lpae(smmu_pgd_t *ppgd,
 	}
 
 pmd_ready:
-	if (prot & IOMMU_SEC)
-		*ppgd &= (~SMMU_PGD_NS);
 	start = (smmu_pmd_t *)smmu_pmd_page_vaddr_lpae(ppgd)
 		+ smmu_pmd_index(addr);
 	ppmd = start;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

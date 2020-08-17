Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF84245E64
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:50:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F93486004;
	Mon, 17 Aug 2020 07:50:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gMRjqDY4A2pm; Mon, 17 Aug 2020 07:50:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE3A7857BE;
	Mon, 17 Aug 2020 07:50:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 295B21BF973
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2694C87CDD
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TDliKoXsKowe for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8F53787CDB
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27AD8221E2;
 Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597650620;
 bh=85lPGrCLwvRTJq/O/2q3um9Agh51fUJDSP4KusDSmGU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wX5lDi8M/3gvXmo+bB9cz2VpwZqZ6ZqiUr/cyd6G4MzLXO+fxtBcXQxEBe/Eot4rM
 54UlfbNJcwTV/p1vGaMHNGJGixMkKLM/vSa+7KdkJkZwBShKNABit4GYTFpGFWs8RA
 kJFEXzN5a1EiIMZcL4tbSJkbVoxr1ihBySBCRjAs=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZuM-00BfcG-8n; Mon, 17 Aug 2020 09:50:18 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 09/16] iommu: hisi_smmu_lpae: use the right code to get
 domain-priv data
Date: Mon, 17 Aug 2020 09:50:08 +0200
Message-Id: <e7fc0440f55a82bee764940d2ed5e4c7821c11a4.1597650455.git.mchehab+huawei@kernel.org>
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

The downstream code needed to use a priv data within the
domain struct. Change it to work like other iommu drivers:
use dev_iommu_priv_get() and dev_iommu_priv_set() instead.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hisi_smmu.h      | 17 ++++++++--
 drivers/staging/hikey9xx/hisi_smmu_lpae.c | 38 +++++++++++++----------
 2 files changed, 36 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi_smmu.h b/drivers/staging/hikey9xx/hisi_smmu.h
index b2d32ec6cb84..290f2e11c3be 100644
--- a/drivers/staging/hikey9xx/hisi_smmu.h
+++ b/drivers/staging/hikey9xx/hisi_smmu.h
@@ -94,7 +94,7 @@ struct hisi_smmu_device_lpae {
 	struct iommu_device iommu;
 };
 
-struct iommu_domain_data {
+struct hisi_smmu_domain_data {
 	unsigned int     iova_start;
 	unsigned int     iova_size;
 	phys_addr_t      phy_pgd_base;
@@ -102,13 +102,24 @@ struct iommu_domain_data {
 	struct list_head list;
 };
 
+struct hisi_smmu_domain {
+	struct iommu_domain		domain;
+	struct hisi_smmu_domain_data	*iommu_info;
+};
+
+static struct  hisi_smmu_domain_data *to_smmu(struct iommu_domain *dom)
+{
+	struct hisi_smmu_domain *hisi_dom;
+
+	hisi_dom = container_of(dom, struct hisi_smmu_domain, domain);
+	return hisi_dom->iommu_info;
+}
+
 struct hisi_map_tile_position_lpae {
 	struct scatterlist *sg;
 	unsigned long offset;
 };
 
-extern struct hisi_smmu_device_lpae *hisi_smmu_dev;
-
 static inline unsigned int smmu_pgd_none_lpae(smmu_pgd_t pgd)
 {
 	return !(pgd ? pgd : 0);
diff --git a/drivers/staging/hikey9xx/hisi_smmu_lpae.c b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
index a55b5a35b339..1fe57c10e745 100644
--- a/drivers/staging/hikey9xx/hisi_smmu_lpae.c
+++ b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
@@ -28,7 +28,7 @@
 #include <linux/bitops.h>
 #include "hisi_smmu.h"
 
-struct hisi_smmu_device_lpae *hisi_smmu_dev;
+static struct hisi_smmu_device_lpae *hisi_smmu_dev;
 
 /* transfer 64bit pte table pointer to struct page */
 static pgtable_t smmu_pgd_to_pte_lpae(unsigned int ppte_table)
@@ -57,7 +57,7 @@ static pgtable_t smmu_pmd_to_pte_lpae(unsigned long ppte_table)
 }
 
 static int get_domain_data_lpae(struct device_node *np,
-				struct iommu_domain_data *data)
+				struct hisi_smmu_domain_data *data)
 {
 	unsigned long long align;
 	struct device_node *node = NULL;
@@ -103,14 +103,16 @@ static int get_domain_data_lpae(struct device_node *np,
 static struct iommu_domain
 *hisi_smmu_domain_alloc_lpae(unsigned int iommu_domain_type)
 {
-	struct iommu_domain *domain;
+	struct hisi_smmu_domain *hisi_dom;
 
 	if (iommu_domain_type != IOMMU_DOMAIN_UNMANAGED)
 		return NULL;
 
-	domain = kzalloc(sizeof(*domain), GFP_KERNEL);
+	hisi_dom = kzalloc(sizeof(*hisi_dom), GFP_KERNEL);
 
-	return domain;
+	pr_debug("%s: domain allocated\n", __func__);
+
+	return &hisi_dom->domain;
 }
 
 static void hisi_smmu_flush_pgtable_lpae(void *addr, size_t size)
@@ -336,13 +338,13 @@ static int hisi_smmu_map_lpae(struct iommu_domain *domain,
 			      gfp_t gfp)
 {
 	unsigned long max_iova;
-	struct iommu_domain_data *data;
+	struct hisi_smmu_domain_data *data;
 
 	if (!domain) {
 		dbg("domain is null\n");
 		return -ENODEV;
 	}
-	data = domain->priv;
+	data = to_smmu(domain);
 	max_iova = data->iova_start + data->iova_size;
 	if (iova < data->iova_start) {
 		dbg("iova failed: iova = 0x%lx, start = 0x%8x\n",
@@ -429,13 +431,13 @@ static size_t hisi_smmu_unmap_lpae(struct iommu_domain *domain,
 {
 	unsigned long max_iova;
 	unsigned int ret;
-	struct iommu_domain_data *data;
+	struct hisi_smmu_domain_data *data;
 
 	if (!domain) {
 		dbg("domain is null\n");
 		return -ENODEV;
 	}
-	data = domain->priv;
+	data = to_smmu(domain);
 	/*calculate the max io virtual address */
 	max_iova = data->iova_start + data->iova_size;
 	/*check the iova */
@@ -490,28 +492,32 @@ static int hisi_attach_dev_lpae(struct iommu_domain *domain, struct device *dev)
 {
 	struct device_node *np = dev->of_node;
 	int ret = 0;
-	struct iommu_domain_data *iommu_info = NULL;
+	struct hisi_smmu_domain_data *iommu_info = NULL;
+	struct hisi_smmu_domain *hisi_dom;
 
 	iommu_info = kzalloc(sizeof(*iommu_info), GFP_KERNEL);
 	if (!iommu_info) {
-		dbg("alloc iommu_domain_data fail\n");
+		dbg("alloc hisi_smmu_domain_data fail\n");
 		return -EINVAL;
 	}
 	list_add(&iommu_info->list, &hisi_smmu_dev->domain_list);
-	domain->priv = iommu_info;
-	ret = get_domain_data_lpae(np, domain->priv);
+
+	hisi_dom = container_of(domain, struct hisi_smmu_domain, domain);
+	hisi_dom->iommu_info = iommu_info;
+	dev_iommu_priv_set(dev, iommu_info);
+	ret = get_domain_data_lpae(np, iommu_info);
 	return ret;
 }
 
 static void hisi_detach_dev_lpae(struct iommu_domain *domain,
 				 struct device *dev)
 {
-	struct iommu_domain_data *data;
+	struct hisi_smmu_domain_data *data;
 
-	data = (struct iommu_domain_data *)domain->priv;
+	data = dev_iommu_priv_get(dev);
 	if (data) {
 		list_del(&data->list);
-		domain->priv = NULL;
+		dev_iommu_priv_set(dev, NULL);
 		kfree(data);
 	} else {
 		dbg("%s:error! data entry has been delected\n", __func__);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

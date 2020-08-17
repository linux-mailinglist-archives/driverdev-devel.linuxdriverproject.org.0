Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1BB245E75
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:50:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC79887943;
	Mon, 17 Aug 2020 07:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V8FC-+LU+gU9; Mon, 17 Aug 2020 07:50:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 13CD487C4A;
	Mon, 17 Aug 2020 07:50:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B19B51BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 98A8B204B4
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dEzVf7kwOaxQ for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 85A5A203EF
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 013BA20855;
 Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597650620;
 bh=iVH5I7QqHxmtoN+Tfw/IxB2rIhtEqiY0/OCkG5zaf/g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y2t1u00F8ct4RI9+47E/BiKj2wdvKkSCJihbZlGj2MWxavxXeY8lrWd6AiQPx7QKb
 JX7t/sty5CBYRAGE5i2oYsShbb0XP1ZZs23L/OjS+4IZv8eXSaauhbWZD2f2LzPV+b
 jiie2BYN4utvAFccWJRMsPWpycfY+BuHPwR9jrhc=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZuM-00Bfc4-3B; Mon, 17 Aug 2020 09:50:18 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 06/16] iommu: hisilicon: cleanup its code style
Date: Mon, 17 Aug 2020 09:50:05 +0200
Message-Id: <dc47da5f5679196bcdb92f4877927b7056dcde70.1597650455.git.mchehab+huawei@kernel.org>
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

Fix most of the things complained by checkpatch on strict
mode:
	- Replaced BUG_ON to WARN_ON;
	- added SPDX headers;
	- adjusted alignments;
	- used --fix-inplace to solve other minor issues.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hisi_smmu.h      |  40 ++--
 drivers/staging/hikey9xx/hisi_smmu_lpae.c | 243 +++++++++++-----------
 2 files changed, 143 insertions(+), 140 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi_smmu.h b/drivers/staging/hikey9xx/hisi_smmu.h
index c84f854bf39f..b2d32ec6cb84 100644
--- a/drivers/staging/hikey9xx/hisi_smmu.h
+++ b/drivers/staging/hikey9xx/hisi_smmu.h
@@ -1,9 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
 #ifndef HISI_SMMU_H
 #define HISI_SMMU_H
 
 /*#define IOMMU_DEBUG*/
 #ifdef IOMMU_DEBUG
-#define dbg(format, arg...)  printk(KERN_ERR "[iommu]"format, ##arg);
+#define dbg(format, arg...)  printk(KERN_ERR "[iommu]" format, ##arg)
 #else
 #define dbg(format, arg...)
 #endif
@@ -18,15 +20,15 @@
 #define PAGE_TABLE_ADDR_MASK  (UL(0xFFFFFFF) << SMMU_PAGE_SHIFT)
 
 #define SMMU_PAGE_SIZE        BIT(SMMU_PAGE_SHIFT)
-#define SMMU_PAGE_MASK	      (~(SMMU_PAGE_SIZE-1))
+#define SMMU_PAGE_MASK	      (~(SMMU_PAGE_SIZE - 1))
 
 #define SMMU_PGDIR_SHIFT	  (30)
 #define SMMU_PGDIR_SIZE		  BIT(SMMU_PGDIR_SHIFT)
-#define SMMU_PGDIR_MASK		  (~(SMMU_PGDIR_SIZE-1))
+#define SMMU_PGDIR_MASK		  (~(SMMU_PGDIR_SIZE - 1))
 
 #define SMMU_PMDIR_SHIFT      (21)
 #define SMMU_PMDIR_SIZE        BIT(SMMU_PMDIR_SHIFT)
-#define SMMU_PMDIR_MASK       (~(SMMU_PMDIR_SIZE-1))
+#define SMMU_PMDIR_MASK       (~(SMMU_PMDIR_SIZE - 1))
 #define SMMU_PGD_TYPE         (BIT(0) | BIT(1))
 #define SMMU_PMD_TYPE         (BIT(0) | BIT(1))
 #define SMMU_PTE_TYPE         (BIT(0) | BIT(1))
@@ -41,7 +43,7 @@
 #define SMMU_PTE_RDONLY       BIT(7)                /* AP[2] */
 #define SMMU_PTE_SHARED       (BIT(8) | BIT(9))      /* SH[1:0], inner shareable */
 #define SMMU_PTE_AF           BIT(10)               /* Access Flag */
-#define SMMU_PTE_NG	          BIT(11)               /* nG */
+#define SMMU_PTE_NG		  BIT(11)               /* nG */
 #define SMMU_PTE_ATTRINDX(t)  ((t) << 2)
 /*
  * Memory types available.
@@ -52,7 +54,6 @@
 #define HISI_MT_NORMAL_NC        5
 #define HISI_MT_DEVICE_nGnRE     6
 
-
 #define SMMU_PAGE_DEFAULT        (SMMU_PTE_TYPE | SMMU_PTE_AF | SMMU_PTE_SHARED)
 
 #define SMMU_PROT_DEVICE_nGnRE  (SMMU_PAGE_DEFAULT | SMMU_PTE_PXN | \
@@ -82,7 +83,7 @@ typedef u64 smmu_pte_t;
 
 /*smmu device object*/
 struct hisi_smmu_device_lpae {
-	struct device      *dev ;
+	struct device      *dev;
 	struct list_head   domain_list;
 	unsigned int       ref_count;
 	spinlock_t         lock;
@@ -102,26 +103,30 @@ struct iommu_domain_data {
 };
 
 struct hisi_map_tile_position_lpae {
-	struct scatterlist *sg ;
+	struct scatterlist *sg;
 	unsigned long offset;
 };
 
 extern struct hisi_smmu_device_lpae *hisi_smmu_dev;
 
-static inline unsigned int smmu_pgd_none_lpae(smmu_pgd_t pgd) {
+static inline unsigned int smmu_pgd_none_lpae(smmu_pgd_t pgd)
+{
 	return !(pgd ? pgd : 0);
 }
 
-static inline unsigned int smmu_pmd_none_lpae(smmu_pmd_t pmd) {
+static inline unsigned int smmu_pmd_none_lpae(smmu_pmd_t pmd)
+{
 	return !(pmd ? pmd : 0);
 }
 
-static inline unsigned int smmu_pte_none_lpae(smmu_pte_t pte) {
+static inline unsigned int smmu_pte_none_lpae(smmu_pte_t pte)
+{
 	return !(pte ? pte : 0);
 }
 
-static inline unsigned int pte_is_valid_lpae(smmu_pte_t *ptep) {
-	return (unsigned int)((*(ptep)&SMMU_PTE_TYPE) ? 1 : 0);
+static inline unsigned int pte_is_valid_lpae(smmu_pte_t *ptep)
+{
+	return (unsigned int)((*(ptep) & SMMU_PTE_TYPE) ? 1 : 0);
 }
 
 /* Find an entry in the second-level page table.. */
@@ -136,7 +141,6 @@ static inline void *smmu_pte_page_vaddr_lpae(smmu_pmd_t *pmd)
 	return phys_to_virt(*pmd & PAGE_TABLE_ADDR_MASK);
 }
 
-
 /*fill the pgd entry, pgd value must be 64bit */
 static inline void smmu_set_pgd_lpae(smmu_pgd_t *pgdp, u64 pgd)
 {
@@ -148,7 +152,7 @@ static inline void smmu_set_pgd_lpae(smmu_pgd_t *pgdp, u64 pgd)
 /*fill the pmd entry, pgd value must be 64bit */
 static inline void smmu_set_pmd_lpae(smmu_pgd_t *pmdp, u64 pmd)
 {
-	dbg("smmu_set_pmd_lpae: pmd = 0x%lx \n", pmd);
+	dbg("smmu_set_pmd_lpae: pmd = 0x%lx\n", pmd);
 	*pmdp = pmd;
 	dsb(ishst);
 	isb();
@@ -179,10 +183,10 @@ static inline unsigned long  smmu_pmd_addr_end_lpae(unsigned long addr, unsigned
 }
 
 int hisi_smmu_handle_mapping_lpae(struct iommu_domain *domain,
-		unsigned long iova, phys_addr_t paddr,
-		size_t size, int prot);
+				  unsigned long iova, phys_addr_t paddr,
+				  size_t size, int prot);
 
 unsigned int hisi_smmu_handle_unmapping_lpae(struct iommu_domain *domain,
-		unsigned long iova, size_t size);
+					     unsigned long iova, size_t size);
 
 #endif
diff --git a/drivers/staging/hikey9xx/hisi_smmu_lpae.c b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
index fcaf97f92e7f..5fdd91a6aa8e 100644
--- a/drivers/staging/hikey9xx/hisi_smmu_lpae.c
+++ b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
@@ -1,4 +1,4 @@
-
+// SPDX-License-Identifier: GPL-2.0
 /*
  * hisi_smmu_lpae.c -- 3 layer pagetable
  *
@@ -30,7 +30,7 @@
 
 struct hisi_smmu_device_lpae *hisi_smmu_dev;
 
-/*transfer 64bit pte table pointer to struct page*/
+/* transfer 64bit pte table pointer to struct page */
 static pgtable_t smmu_pgd_to_pte_lpae(unsigned int ppte_table)
 {
 	unsigned long page_table_addr;
@@ -43,7 +43,7 @@ static pgtable_t smmu_pgd_to_pte_lpae(unsigned int ppte_table)
 	return phys_to_page(page_table_addr);
 }
 
-/*transfer 64bit pte table pointer to struct page*/
+/* transfer 64bit pte table pointer to struct page */
 static pgtable_t smmu_pmd_to_pte_lpae(unsigned long ppte_table)
 {
 	struct page *table = NULL;
@@ -57,40 +57,42 @@ static pgtable_t smmu_pmd_to_pte_lpae(unsigned long ppte_table)
 }
 
 static int get_domain_data_lpae(struct device_node *np,
-		struct iommu_domain_data *data)
+				struct iommu_domain_data *data)
 {
 	unsigned long long align;
 	struct device_node *node = NULL;
 	int ret = 0;
 
 	data->phy_pgd_base = hisi_smmu_dev->smmu_phy_pgtable_addr;
-	if (np) {
-		node = of_find_node_by_name(np, "iommu_info");
-		if (!node) {
-			dbg("find iommu_info node error\n");
-			return -ENODEV;
-		}
-		ret = of_property_read_u32(node, "start-addr",
-				&data->iova_start);
-		if (ret) {
-			dbg("read iova start address error\n");
-			goto read_error;
-		}
-		ret = of_property_read_u32(node, "size", &data->iova_size);
-		if (ret) {
-			dbg("read iova size error\n");
-			goto read_error;
-		}
-		ret = of_property_read_u64(node, "iova-align", &align);
-		if (!ret)
-			data->iova_align = (unsigned long)align;
-		else
-			data->iova_align = SZ_256K;
 
-		pr_err("%s:start_addr 0x%x, size 0x%x align 0x%lx\n",
-			__func__, data->iova_start,
-			data->iova_size, data->iova_align);
+	if (!np)
+		return 0;
+
+	node = of_find_node_by_name(np, "iommu_info");
+	if (!node) {
+		dbg("find iommu_info node error\n");
+		return -ENODEV;
+	}
+	ret = of_property_read_u32(node, "start-addr",
+				   &data->iova_start);
+	if (ret) {
+		dbg("read iova start address error\n");
+		goto read_error;
 	}
+	ret = of_property_read_u32(node, "size", &data->iova_size);
+	if (ret) {
+		dbg("read iova size error\n");
+		goto read_error;
+	}
+	ret = of_property_read_u64(node, "iova-align", &align);
+	if (!ret)
+		data->iova_align = (unsigned long)align;
+	else
+		data->iova_align = SZ_256K;
+
+	pr_err("%s:start_addr 0x%x, size 0x%x align 0x%lx\n",
+	       __func__, data->iova_start,
+		data->iova_size, data->iova_align);
 
 	return 0;
 
@@ -99,7 +101,7 @@ static int get_domain_data_lpae(struct device_node *np,
 }
 
 static struct iommu_domain
-*hisi_smmu_domain_alloc_lpae(unsigned iommu_domain_type)
+*hisi_smmu_domain_alloc_lpae(unsigned int iommu_domain_type)
 {
 	struct iommu_domain *domain;
 
@@ -107,15 +109,10 @@ static struct iommu_domain
 		return NULL;
 
 	domain = kzalloc(sizeof(*domain), GFP_KERNEL);
-	if (!domain) {
-		pr_err("%s: fail to kzalloc %lu bytes\n",
-				__func__, sizeof(*domain));
-	}
 
 	return domain;
 }
 
-
 static void hisi_smmu_flush_pgtable_lpae(void *addr, size_t size)
 {
 	__flush_dcache_area(addr, size);
@@ -133,7 +130,6 @@ static void hisi_smmu_free_ptes_lpae(smmu_pgd_t pmd)
 	smmu_set_pmd_lpae(&pmd, 0);
 }
 
-
 static void hisi_smmu_free_pmds_lpae(smmu_pgd_t pgd)
 {
 	pgtable_t table = smmu_pmd_to_pte_lpae(pgd);
@@ -174,15 +170,13 @@ static void hisi_smmu_free_pgtables_lpae(unsigned long *page_table_addr)
 static void hisi_smmu_domain_free_lpae(struct iommu_domain *domain)
 {
 	if (list_empty(&hisi_smmu_dev->domain_list))
-		hisi_smmu_free_pgtables_lpae((unsigned long *)
-				hisi_smmu_dev->va_pgtable_addr);
+		hisi_smmu_free_pgtables_lpae((unsigned long *)hisi_smmu_dev->va_pgtable_addr);
 
 	kfree(domain);
-
 }
 
 static int hisi_smmu_alloc_init_pte_lpae(smmu_pmd_t *ppmd,
-		unsigned long addr, unsigned long end,
+					 unsigned long addr, unsigned long end,
 		unsigned long pfn, u64 prot, unsigned long *flags)
 {
 	smmu_pte_t *pte, *start;
@@ -203,11 +197,12 @@ static int hisi_smmu_alloc_init_pte_lpae(smmu_pmd_t *ppmd,
 
 	if (smmu_pmd_none_lpae(*ppmd)) {
 		hisi_smmu_flush_pgtable_lpae(page_address(table),
-				SMMU_PAGE_SIZE);
-		smmu_pmd_populate_lpae(ppmd, table, SMMU_PMD_TYPE|SMMU_PMD_NS);
+					     SMMU_PAGE_SIZE);
+		smmu_pmd_populate_lpae(ppmd, table, SMMU_PMD_TYPE | SMMU_PMD_NS);
 		hisi_smmu_flush_pgtable_lpae(ppmd, sizeof(*ppmd));
-	} else
+	} else {
 		__free_page(table);
+	}
 
 pte_ready:
 	if (prot & IOMMU_SEC)
@@ -248,7 +243,7 @@ static int hisi_smmu_alloc_init_pte_lpae(smmu_pmd_t *ppmd,
 
 	do {
 		if (!pte_is_valid_lpae(pte))
-			*pte = (u64)(__pfn_to_phys(pfn)|pteval);
+			*pte = (u64)(__pfn_to_phys(pfn) | pteval);
 		else
 			WARN_ONCE(1, "map to same VA more times!\n");
 		pte++;
@@ -261,8 +256,9 @@ static int hisi_smmu_alloc_init_pte_lpae(smmu_pmd_t *ppmd,
 }
 
 static int hisi_smmu_alloc_init_pmd_lpae(smmu_pgd_t *ppgd,
-		unsigned long addr, unsigned long end,
-		unsigned long paddr, int prot, unsigned long *flags)
+					 unsigned long addr, unsigned long end,
+					 unsigned long paddr, int prot,
+					 unsigned long *flags)
 {
 	int ret = 0;
 	smmu_pmd_t *ppmd, *start;
@@ -283,11 +279,12 @@ static int hisi_smmu_alloc_init_pmd_lpae(smmu_pgd_t *ppgd,
 
 	if (smmu_pgd_none_lpae(*ppgd)) {
 		hisi_smmu_flush_pgtable_lpae(page_address(table),
-				SMMU_PAGE_SIZE);
-		smmu_pgd_populate_lpae(ppgd, table, SMMU_PGD_TYPE|SMMU_PGD_NS);
+					     SMMU_PAGE_SIZE);
+		smmu_pgd_populate_lpae(ppgd, table, SMMU_PGD_TYPE | SMMU_PGD_NS);
 		hisi_smmu_flush_pgtable_lpae(ppgd, sizeof(*ppgd));
-	} else
+	} else {
 		__free_page(table);
+	}
 
 pmd_ready:
 	if (prot & IOMMU_SEC)
@@ -298,8 +295,9 @@ static int hisi_smmu_alloc_init_pmd_lpae(smmu_pgd_t *ppgd,
 
 	do {
 		next = smmu_pmd_addr_end_lpae(addr, end);
-		ret = hisi_smmu_alloc_init_pte_lpae(ppmd,
-				addr, next, __phys_to_pfn(paddr), prot, flags);
+		ret = hisi_smmu_alloc_init_pte_lpae(ppmd, addr, next,
+						    __phys_to_pfn(paddr),
+						    prot, flags);
 		if (ret)
 			goto error;
 		paddr += (next - addr);
@@ -310,8 +308,8 @@ static int hisi_smmu_alloc_init_pmd_lpae(smmu_pgd_t *ppgd,
 }
 
 int hisi_smmu_handle_mapping_lpae(struct iommu_domain *domain,
-		unsigned long iova, phys_addr_t paddr,
-		size_t size, int prot)
+				  unsigned long iova, phys_addr_t paddr,
+				  size_t size, int prot)
 {
 	int ret;
 	unsigned long end;
@@ -331,7 +329,7 @@ int hisi_smmu_handle_mapping_lpae(struct iommu_domain *domain,
 	do {
 		next = smmu_pgd_addr_end_lpae(iova, end);
 		ret = hisi_smmu_alloc_init_pmd_lpae(pgd,
-				iova, next, paddr, prot, &flags);
+						    iova, next, paddr, prot, &flags);
 		if (ret)
 			goto out_unlock;
 		paddr += next - iova;
@@ -359,12 +357,12 @@ static int hisi_smmu_map_lpae(struct iommu_domain *domain,
 	max_iova = data->iova_start + data->iova_size;
 	if (iova < data->iova_start) {
 		dbg("iova failed: iova = 0x%lx, start = 0x%8x\n",
-				iova, data->iova_start);
+		    iova, data->iova_start);
 		goto error;
 	}
-	if ((iova+size) > max_iova) {
+	if ((iova + size) > max_iova) {
 		dbg("iova out of domain range, iova+size=0x%lx, end=0x%lx\n",
-				iova+size, max_iova);
+		    iova + size, max_iova);
 		goto error;
 	}
 	return hisi_smmu_handle_mapping_lpae(domain, iova, paddr, size, prot);
@@ -374,7 +372,7 @@ static int hisi_smmu_map_lpae(struct iommu_domain *domain,
 }
 
 static unsigned int hisi_smmu_clear_pte_lpae(smmu_pgd_t *pmdp,
-		unsigned int iova, unsigned int end)
+					     unsigned int iova, unsigned int end)
 {
 	smmu_pte_t *ptep = NULL;
 	smmu_pte_t *ppte = NULL;
@@ -390,7 +388,7 @@ static unsigned int hisi_smmu_clear_pte_lpae(smmu_pgd_t *pmdp,
 }
 
 static unsigned int hisi_smmu_clear_pmd_lpae(smmu_pgd_t *pgdp,
-		unsigned int iova, unsigned int end)
+					     unsigned int iova, unsigned int end)
 {
 	smmu_pmd_t *pmdp = NULL;
 	smmu_pmd_t *ppmd = NULL;
@@ -410,7 +408,7 @@ static unsigned int hisi_smmu_clear_pmd_lpae(smmu_pgd_t *pgdp,
 }
 
 unsigned int hisi_smmu_handle_unmapping_lpae(struct iommu_domain *domain,
-		unsigned long iova, size_t size)
+					     unsigned long iova, size_t size)
 {
 	smmu_pgd_t *pgdp = NULL;
 	unsigned int end = 0;
@@ -437,8 +435,8 @@ unsigned int hisi_smmu_handle_unmapping_lpae(struct iommu_domain *domain,
 }
 
 static size_t hisi_smmu_unmap_lpae(struct iommu_domain *domain,
-		unsigned long iova, size_t size,
-		struct iommu_iotlb_gather *iotlb_gather)
+				   unsigned long iova, size_t size,
+				   struct iommu_iotlb_gather *iotlb_gather)
 {
 	unsigned long max_iova;
 	unsigned int ret;
@@ -449,14 +447,14 @@ static size_t hisi_smmu_unmap_lpae(struct iommu_domain *domain,
 		return -ENODEV;
 	}
 	data = domain->priv;
-	/*caculate the max io virtual address */
+	/*calculate the max io virtual address */
 	max_iova = data->iova_start + data->iova_size;
 	/*check the iova */
 	if (iova < data->iova_start)
 		goto error;
-	if ((iova+size) > max_iova) {
+	if ((iova + size) > max_iova) {
 		dbg("iova out of domain range, iova+size=0x%lx, end=0x%lx\n",
-				iova+size, max_iova);
+		    iova + size, max_iova);
 		goto error;
 	}
 	/*unmapping the range of iova*/
@@ -472,8 +470,8 @@ static size_t hisi_smmu_unmap_lpae(struct iommu_domain *domain,
 	return -EINVAL;
 }
 
-static phys_addr_t hisi_smmu_iova_to_phys_lpae(
-		struct iommu_domain *domain, dma_addr_t iova)
+static phys_addr_t hisi_smmu_iova_to_phys_lpae(struct iommu_domain *domain,
+					       dma_addr_t iova)
 {
 	smmu_pgd_t *pgdp, pgd;
 	smmu_pmd_t pmd;
@@ -505,7 +503,7 @@ static int hisi_attach_dev_lpae(struct iommu_domain *domain, struct device *dev)
 	int ret = 0;
 	struct iommu_domain_data *iommu_info = NULL;
 
-	iommu_info = kzalloc(sizeof(struct iommu_domain_data), GFP_KERNEL);
+	iommu_info = kzalloc(sizeof(*iommu_info), GFP_KERNEL);
 	if (!iommu_info) {
 		dbg("alloc iommu_domain_data fail\n");
 		return -EINVAL;
@@ -517,7 +515,7 @@ static int hisi_attach_dev_lpae(struct iommu_domain *domain, struct device *dev)
 }
 
 static void hisi_detach_dev_lpae(struct iommu_domain *domain,
-		struct device *dev)
+				 struct device *dev)
 {
 	struct iommu_domain_data *data;
 
@@ -547,7 +545,8 @@ int iommu_map_tile(struct iommu_domain *domain, unsigned long iova,
 	if (unlikely(!(domain->ops->map_tile)))
 		return -ENODEV;
 
-	BUG_ON(iova & (~PAGE_MASK));
+	if (WARN_ON(iova & (~PAGE_MASK)))
+		return -EINVAL;
 
 	return domain->ops->map_tile(domain, iova, sg, size, prot, format);
 }
@@ -558,25 +557,29 @@ int iommu_unmap_tile(struct iommu_domain *domain, unsigned long iova,
 	if (unlikely(!(domain->ops->unmap_tile)))
 		return -ENODEV;
 
-	BUG_ON(iova & (~PAGE_MASK));
+	if (WARN_ON(iova & (~PAGE_MASK)))
+		return -EINVAL;
 
 	return domain->ops->unmap_tile(domain, iova, size);
 }
 
 /*
- *iova: the start address for tile mapping
- *size: the physical memory size
- *sg: the node of scatter list where are the start node of physical memory
- *sg_offset:the physical memory offset in the sg node ,where is the start
- position of physical memory
- *port: the pape property of virtual memory
+ * iova: the start address for tile mapping
+ * size: the physical memory size
+ * sg: the node of scatter list where are the start node of physical memory
+ * sg_offset: the physical memory offset in the sg node ,where is the start
+ *            position of physical memory
+ * prot: the pape property of virtual memory
+ *
  * this function complete one row mapping.
  */
-static size_t hisi_map_tile_row_lpae(struct iommu_domain *domain, unsigned long
-		iova, size_t size, struct scatterlist *sg, size_t sg_offset,
-		struct hisi_map_tile_position_lpae *map_position,
-		unsigned int prot){
-
+static size_t
+hisi_map_tile_row_lpae(struct iommu_domain *domain,
+		       unsigned long iova, size_t size, struct scatterlist *sg,
+		       size_t sg_offset,
+		       struct hisi_map_tile_position_lpae *map_position,
+		       unsigned int prot)
+{
 	unsigned long map_size; /*the memory size that will be mapped*/
 	unsigned long phys_addr;
 	unsigned long mapped_size = 0; /*memory size that has been mapped*/
@@ -591,15 +594,16 @@ static size_t hisi_map_tile_row_lpae(struct iommu_domain *domain, unsigned long
 		if (map_size > (sg->length - sg_offset))
 			map_size = (sg->length - sg_offset);
 
-		/*get the start physical address*/
+		/* get the start physical address */
 		phys_addr = (unsigned long)get_phys_addr_lpae(sg) + sg_offset;
 		ret = hisi_smmu_map_lpae(domain,
-				iova + mapped_size, phys_addr, map_size, prot, GFP_KERNEL);
+					 iova + mapped_size, phys_addr,
+					 map_size, prot, GFP_KERNEL);
 		if (ret) {
 			dbg("[%s] hisi_smmu_map failed!\n", __func__);
 			break;
 		}
-		/*update mapped memory size*/
+		/* update mapped memory size */
 		mapped_size += map_size;
 		/*
 		 * if finished mapping,
@@ -616,7 +620,7 @@ static size_t hisi_map_tile_row_lpae(struct iommu_domain *domain, unsigned long
 			}
 		} else {
 			sg_offset += map_size;
-			/*if physcial memory of this node is exhausted,
+			/* if physcial memory of this node is exhausted,
 			 * we choose next node
 			 */
 			if (sg_offset == sg->length) {
@@ -626,7 +630,7 @@ static size_t hisi_map_tile_row_lpae(struct iommu_domain *domain, unsigned long
 			break;
 		}
 	}
-	/*save current position*/
+	/* save current position */
 	map_position->sg = sg;
 	map_position->offset = sg_offset;
 
@@ -634,19 +638,20 @@ static size_t hisi_map_tile_row_lpae(struct iommu_domain *domain, unsigned long
 }
 
 /*
- *domain:the iommu domain for mapping
- *iova:the start virtual address
- *sg: the scatter list of physical memory
- *size:the total size of all virtual memory
- *port:the property of page table of virtual memory
- *format:the parameter of tile mapping
- *this function map physical memory in tile mode
+ * domain:the iommu domain for mapping
+ * iova:the start virtual address
+ * sg: the scatter list of physical memory
+ * size:the total size of all virtual memory
+ * port:the property of page table of virtual memory
+ * format:the parameter of tile mapping
+ * this function map physical memory in tile mode
  */
 static int hisi_smmu_map_tile_lpae(struct iommu_domain *domain,
-		unsigned long iova,
-		struct scatterlist *sg, size_t size, int prot,
-		struct tile_format *format){
-
+				   unsigned long iova,
+				   struct scatterlist *sg,
+				   size_t size, int prot,
+				   struct tile_format *format)
+{
 	unsigned int phys_length;
 	struct scatterlist *sg_node;
 	unsigned int row_number, row;
@@ -662,29 +667,29 @@ static int hisi_smmu_map_tile_lpae(struct iommu_domain *domain,
 
 	header_size = format->header_size;
 
-	/* calculate the number of raws*/
+	/* calculate the number of raws */
 	row_number = ((phys_length - header_size) >> PAGE_SHIFT)
 		/ format->phys_page_line;
 	dbg("phys_length: 0x%x, rows: 0x%x, header_size: 0x%x\n",
-			phys_length, row_number, header_size);
+	    phys_length, row_number, header_size);
 
-	/*caculate the need physical memory and virtual memory for one row*/
+	/* calculate the need physical memory and virtual memory for one row */
 	size_phys = (format->phys_page_line * PAGE_SIZE);
 	size_virt = (format->virt_page_line * PAGE_SIZE);
 
 	sg_offset = 0;
 	sg_node = sg;
 
-	/*set start position*/
+	/* set start position */
 	map_position.sg = sg;
 	map_position.offset = 0;
 
-	/*map header*/
+	/* map header */
 	if (header_size) {
 		mapped_size = hisi_map_tile_row_lpae(domain, iova,
-				header_size, sg_node,
-				sg_offset, &map_position,
-				prot);
+						     header_size, sg_node,
+						     sg_offset, &map_position,
+						     prot);
 		if (mapped_size != header_size) {
 			WARN(1, "map head fail\n");
 			ret = -EINVAL;
@@ -704,9 +709,9 @@ static int hisi_smmu_map_tile_lpae(struct iommu_domain *domain,
 		}
 		/* map one row*/
 		mapped_size = hisi_map_tile_row_lpae(domain,
-				iova + (size_virt * row),
-				size_phys, sg_node, sg_offset,
-				&map_position, prot);
+						     iova + (size_virt * row),
+						     size_phys, sg_node, sg_offset,
+						     &map_position, prot);
 		if (mapped_size != size_phys) {
 			WARN(1, "hisi_map_tile_row failed!\n");
 			ret = -EINVAL;
@@ -718,7 +723,7 @@ static int hisi_smmu_map_tile_lpae(struct iommu_domain *domain,
 }
 
 static size_t hisi_smmu_unmap_tile_lpae(struct iommu_domain *domain,
-		unsigned long iova, size_t size)
+					unsigned long iova, size_t size)
 {
 	return hisi_smmu_unmap_lpae(domain, iova, size, NULL);
 }
@@ -781,14 +786,13 @@ static int hisi_smmu_probe_lpae(struct platform_device *pdev)
 
 	dbg("enter %s\n", __func__);
 	hisi_smmu_dev = devm_kzalloc(dev,
-			sizeof(struct hisi_smmu_device_lpae), GFP_KERNEL);
+				     sizeof(struct hisi_smmu_device_lpae),
+				     GFP_KERNEL);
 
 	hisi_smmu_dev->smmu_pgd = devm_kzalloc(dev, SZ_64,
 					       GFP_KERNEL | __GFP_DMA);
-	if (!hisi_smmu_dev) {
-		ret = -ENOMEM;
-		goto smmu_device_error;
-	}
+	if (!hisi_smmu_dev)
+		return -ENOMEM;
 
 	hisi_smmu_dev->dev = dev;
 	INIT_LIST_HEAD(&hisi_smmu_dev->domain_list);
@@ -804,7 +808,7 @@ static int hisi_smmu_probe_lpae(struct platform_device *pdev)
 	hisi_smmu_dev->va_pgtable_addr = (unsigned long)(hisi_smmu_dev->smmu_pgd);
 
 	ret = iommu_device_sysfs_add(&hisi_smmu_dev->iommu, NULL, NULL,
-				    "hisi-iommu");
+				     "hisi-iommu");
 	if (ret)
 		goto fail_register;
 
@@ -821,8 +825,6 @@ static int hisi_smmu_probe_lpae(struct platform_device *pdev)
 
 fail_register:
 	iommu_device_sysfs_remove(&hisi_smmu_dev->iommu);
-
-smmu_device_error:
 	return ret;
 }
 
@@ -851,10 +853,7 @@ static struct platform_driver hisi_smmu_driver_lpae = {
 
 static int __init hisi_smmu_init_lpae(void)
 {
-	int ret = 0;
-
-	ret = platform_driver_register(&hisi_smmu_driver_lpae);
-	return ret;
+	return platform_driver_register(&hisi_smmu_driver_lpae);
 }
 
 static void __exit hisi_smmu_exit_lpae(void)
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

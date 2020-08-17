Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE92A245E76
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:51:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4B60C21519;
	Mon, 17 Aug 2020 07:51:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V2yf7znknyxt; Mon, 17 Aug 2020 07:50:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F18A32094D;
	Mon, 17 Aug 2020 07:50:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 63BF01BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 60E178560B
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MfBqZQOkJRgE for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 739CA85566
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC8412072D;
 Mon, 17 Aug 2020 07:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597650620;
 bh=yhjLSUXMOf/Zft93EHY5D+/rO33TEQIIc07WJoVDDBg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kSOnV7WnWMBkyEcdqpqWqBmMgXg42qe+OmcogPevVfe2rLV3c9rG7mOY1FaFz16BU
 WrcPZnTUDyWym/g/ZOFcYaY+yA8oLPwm/0ZLPFHKR+ojsTLp/NhZkjtiyY3S9amdmW
 ttjbJbjTQA0y+99GUrXtBfXMZax/+c66ZXtC/Ip0=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZuL-00Bfbt-RE; Mon, 17 Aug 2020 09:50:17 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 01/16] iommu: add support for HiSilicon Kirin 960/970 iommu
Date: Mon, 17 Aug 2020 09:50:00 +0200
Message-Id: <460c256355fccf8be02d73a491afa24678422162.1597650455.git.mchehab+huawei@kernel.org>
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Chenfeng <puck.chen@hisilicon.com>, Suzhuangluan <suzhuangluan@hisilicon.com>,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Chenfeng <puck.chen@hisilicon.com>

Add the IOMMU code used on Hikey 960/970 and required for its
DRM/KMS driver.

[john.stultz@linaro.org: split out all the ion changes, and kept just the iommu bits]
[mchehab+huawei@kernel.org: dropped ION and test code]

Signed-off-by: Chenfeng <puck.chen@hisilicon.com>
Reviewed-by: Suzhuangluan <suzhuangluan@hisilicon.com>
Signed-off-by: John Stultz <john.stultz@linaro.org>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hisi_smmu.h      | 178 +++++
 drivers/staging/hikey9xx/hisi_smmu_lpae.c | 849 ++++++++++++++++++++++
 include/linux/hisi/hisi-iommu.h           |  13 +
 3 files changed, 1040 insertions(+)
 create mode 100644 drivers/staging/hikey9xx/hisi_smmu.h
 create mode 100644 drivers/staging/hikey9xx/hisi_smmu_lpae.c
 create mode 100644 include/linux/hisi/hisi-iommu.h

diff --git a/drivers/staging/hikey9xx/hisi_smmu.h b/drivers/staging/hikey9xx/hisi_smmu.h
new file mode 100644
index 000000000000..4637244dba6b
--- /dev/null
+++ b/drivers/staging/hikey9xx/hisi_smmu.h
@@ -0,0 +1,178 @@
+#ifndef HISI_SMMU_H
+#define HISI_SMMU_H
+
+/*#define IOMMU_DEBUG*/
+#ifdef IOMMU_DEBUG
+#define dbg(format, arg...)  printk(KERN_ERR "[iommu]"format, ##arg);
+#else
+#define dbg(format, arg...)
+#endif
+
+#define SMMU_PHY_PTRS_PER_PTE (256)
+/*#define SMMU_PHY_PTRS_PER_PGD (4096)*/
+#define SMMU_PTRS_PER_PGD     (4)
+#define SMMU_PTRS_PER_PMD     (512)
+#define SMMU_PTRS_PER_PTE     (512)
+#define SMMU_PAGE_SHIFT       (12)
+
+#define PAGE_TABLE_ADDR_MASK  (UL(0xFFFFFFF) << SMMU_PAGE_SHIFT)
+
+#define SMMU_PAGE_SIZE        BIT(SMMU_PAGE_SHIFT)
+#define SMMU_PAGE_MASK	      (~(SMMU_PAGE_SIZE-1))
+
+#define SMMU_PGDIR_SHIFT	  (30)
+#define SMMU_PGDIR_SIZE		  BIT(SMMU_PGDIR_SHIFT)
+#define SMMU_PGDIR_MASK		  (~(SMMU_PGDIR_SIZE-1))
+
+#define SMMU_PMDIR_SHIFT      (21)
+#define SMMU_PMDIR_SIZE        BIT(SMMU_PMDIR_SHIFT)
+#define SMMU_PMDIR_MASK       (~(SMMU_PMDIR_SIZE-1))
+#define SMMU_PGD_TYPE         (BIT(0) | BIT(1))
+#define SMMU_PMD_TYPE         (BIT(0) | BIT(1))
+#define SMMU_PTE_TYPE         (BIT(0) | BIT(1))
+
+#define SMMU_PGD_NS           BIT(63)
+#define SMMU_PMD_NS           BIT(63)
+#define SMMU_PTE_NS           BIT(5)
+
+#define SMMU_PTE_PXN          BIT(53)               /* Privileged XN */
+#define SMMU_PTE_UXN          BIT(54)               /* User XN */
+#define SMMU_PTE_USER         BIT(6)                /* AP[1] */
+#define SMMU_PTE_RDONLY       BIT(7)                /* AP[2] */
+#define SMMU_PTE_SHARED       (BIT(8) | BIT(9))      /* SH[1:0], inner shareable */
+#define SMMU_PTE_AF           BIT(10)               /* Access Flag */
+#define SMMU_PTE_NG	          BIT(11)               /* nG */
+#define SMMU_PTE_ATTRINDX(t)  ((t) << 2)
+/*
+ * Memory types available.
+ * USED BY A7
+ */
+#define HISI_MT_NORMAL           0
+#define HISI_MT_NORMAL_CACHE     4
+#define HISI_MT_NORMAL_NC        5
+#define HISI_MT_DEVICE_nGnRE     6
+
+
+#define SMMU_PAGE_DEFAULT        (SMMU_PTE_TYPE | SMMU_PTE_AF | SMMU_PTE_SHARED)
+
+#define SMMU_PROT_DEVICE_nGnRE  (SMMU_PAGE_DEFAULT | SMMU_PTE_PXN | \
+		SMMU_PTE_UXN | SMMU_PTE_ATTRINDX(HISI_MT_DEVICE_nGnRE))
+#define SMMU_PROT_NORMAL_CACHE  (SMMU_PAGE_DEFAULT | SMMU_PTE_PXN | \
+		SMMU_PTE_UXN | SMMU_PTE_ATTRINDX(HISI_MT_NORMAL_CACHE))
+#define SMMU_PROT_NORMAL_NC     (SMMU_PAGE_DEFAULT | SMMU_PTE_PXN | \
+		SMMU_PTE_UXN | SMMU_PTE_ATTRINDX(HISI_MT_NORMAL_NC))
+#define SMMU_PROT_NORMAL        (SMMU_PAGE_DEFAULT | SMMU_PTE_PXN | \
+		SMMU_PTE_UXN | SMMU_PTE_ATTRINDX(HISI_MT_NORMAL))
+
+#define SMMU_PAGE_READWRITE     (SMMU_PAGE_DEFAULT | SMMU_PTE_USER | \
+		SMMU_PTE_NG | SMMU_PTE_PXN | SMMU_PTE_UXN)
+#define SMMU_PAGE_READONLY      (SMMU_PAGE_DEFAULT | SMMU_PTE_USER | \
+		SMMU_PTE_RDONLY | SMMU_PTE_NG | SMMU_PTE_PXN | SMMU_PTE_UXN)
+#define SMMU_PAGE_READONLY_EXEC (SMMU_PAGE_DEFAULT | SMMU_PTE_USER | \
+		SMMU_PTE_NG)
+
+#define smmu_pte_index(addr)        (((addr) >> SMMU_PAGE_SHIFT) & (SMMU_PTRS_PER_PTE - 1))
+#define smmu_pmd_index(addr)        (((addr) >> SMMU_PMDIR_SHIFT) & (SMMU_PTRS_PER_PMD - 1))
+#define smmu_pgd_index(addr)        (((addr) >> SMMU_PGDIR_SHIFT) & (SMMU_PTRS_PER_PGD - 1))
+#define SMMU_PAGE_ALIGN(addr)       ALIGN(addr, PAGE_SIZE)
+
+typedef u64 smmu_pgd_t;
+typedef u64 smmu_pmd_t;
+typedef u64 smmu_pte_t;
+
+/*smmu device object*/
+struct hisi_smmu_device_lpae {
+	struct device      *dev ;
+	struct list_head   domain_list;
+	unsigned int       ref_count;
+	spinlock_t         lock;
+	unsigned long      va_pgtable_addr;
+	phys_addr_t        smmu_phy_pgtable_addr;
+	smmu_pgd_t         *smmu_pgd;
+};
+
+struct hisi_map_tile_position_lpae {
+	struct scatterlist *sg ;
+	unsigned long offset;
+};
+
+extern struct hisi_smmu_device_lpae *hisi_smmu_dev;
+
+static inline unsigned int smmu_pgd_none_lpae(smmu_pgd_t pgd) {
+	return !(pgd ? pgd : 0);
+}
+
+static inline unsigned int smmu_pmd_none_lpae(smmu_pmd_t pmd) {
+	return !(pmd ? pmd : 0);
+}
+
+static inline unsigned int smmu_pte_none_lpae(smmu_pte_t pte) {
+	return !(pte ? pte : 0);
+}
+
+static inline unsigned int pte_is_valid_lpae(smmu_pte_t *ptep) {
+	return (unsigned int)((*(ptep)&SMMU_PTE_TYPE) ? 1 : 0);
+}
+
+/* Find an entry in the second-level page table.. */
+static inline void *smmu_pmd_page_vaddr_lpae(smmu_pmd_t *pgd)
+{
+	return phys_to_virt(*pgd & PAGE_TABLE_ADDR_MASK);
+}
+
+/* Find an entry in the third-level page table.. */
+static inline void *smmu_pte_page_vaddr_lpae(smmu_pmd_t *pmd)
+{
+	return phys_to_virt(*pmd & PAGE_TABLE_ADDR_MASK);
+}
+
+
+/*fill the pgd entry, pgd value must be 64bit */
+static inline void smmu_set_pgd_lpae(smmu_pgd_t *pgdp, u64 pgd)
+{
+	*pgdp = pgd;
+	dsb(ishst);
+	isb();
+}
+
+/*fill the pmd entry, pgd value must be 64bit */
+static inline void smmu_set_pmd_lpae(smmu_pgd_t *pmdp, u64 pmd)
+{
+	dbg("smmu_set_pmd_lpae: pmd = 0x%lx \n", pmd);
+	*pmdp = pmd;
+	dsb(ishst);
+	isb();
+}
+
+static inline void smmu_pmd_populate_lpae(smmu_pmd_t *pmdp, pgtable_t ptep, pgdval_t prot)
+{
+	smmu_set_pmd_lpae(pmdp, (u64)(page_to_phys(ptep) | prot));
+}
+
+static inline void smmu_pgd_populate_lpae(smmu_pgd_t *pgdp, pgtable_t pmdp, pgdval_t prot)
+{
+	smmu_set_pgd_lpae(pgdp, (u64)(page_to_phys(pmdp) | prot));
+}
+
+static inline unsigned long  smmu_pgd_addr_end_lpae(unsigned long addr, unsigned long end)
+{
+	unsigned long boundary = (addr + SMMU_PGDIR_SIZE) & SMMU_PGDIR_MASK;
+
+	return (boundary - 1 < end - 1) ? boundary : end;
+}
+
+static inline unsigned long  smmu_pmd_addr_end_lpae(unsigned long addr, unsigned long end)
+{
+	unsigned long boundary = (addr + SMMU_PMDIR_SIZE) & SMMU_PMDIR_MASK;
+
+	return (boundary - 1 < end - 1) ? boundary : end;
+}
+
+int hisi_smmu_handle_mapping_lpae(struct iommu_domain *domain,
+		unsigned long iova, phys_addr_t paddr,
+		size_t size, int prot);
+
+unsigned int hisi_smmu_handle_unmapping_lpae(struct iommu_domain *domain,
+		unsigned long iova, size_t size);
+
+#endif
diff --git a/drivers/staging/hikey9xx/hisi_smmu_lpae.c b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
new file mode 100644
index 000000000000..0ccd5c9ffeb1
--- /dev/null
+++ b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
@@ -0,0 +1,849 @@
+
+/*
+ * hisi_smmu_lpae.c -- 3 layer pagetable
+ *
+ * Copyright (c) 2014 Huawei Technologies CO., Ltd.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <linux/delay.h>
+#include <linux/dma-mapping.h>
+#include <linux/err.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/iommu.h>
+#include <linux/mm.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <linux/sizes.h>
+#include <linux/spinlock.h>
+#include <asm/pgalloc.h>
+#include <linux/debugfs.h>
+#include <linux/hisi/hisi-iommu.h>
+#include <linux/uaccess.h>
+#include <linux/bitops.h>
+#include "hisi_smmu.h"
+
+struct hisi_smmu_device_lpae *hisi_smmu_dev;
+
+/*transfer 64bit pte table pointer to struct page*/
+static pgtable_t smmu_pgd_to_pte_lpae(unsigned int ppte_table)
+{
+	unsigned long page_table_addr;
+
+	if (!ppte_table) {
+		dbg("error: the pointer of pte_table is NULL\n");
+		return NULL;
+	}
+	page_table_addr = (unsigned long)ppte_table;
+	return phys_to_page(page_table_addr);
+}
+
+/*transfer 64bit pte table pointer to struct page*/
+static pgtable_t smmu_pmd_to_pte_lpae(unsigned long ppte_table)
+{
+	struct page *table = NULL;
+
+	if (!ppte_table) {
+		dbg("error: the pointer of pte_table is NULL\n");
+		return NULL;
+	}
+	table = phys_to_page(ppte_table);
+	return table;
+}
+
+static int get_domain_data_lpae(struct device_node *np,
+		struct iommu_domain_data *data)
+{
+	unsigned long long align;
+	struct device_node *node = NULL;
+	int ret = 0;
+
+	data->phy_pgd_base = hisi_smmu_dev->smmu_phy_pgtable_addr;
+	if (np) {
+		node = of_find_node_by_name(np, "iommu_info");
+		if (!node) {
+			dbg("find iommu_info node error\n");
+			return -ENODEV;
+		}
+		ret = of_property_read_u32(node, "start-addr",
+				&data->iova_start);
+		if (ret) {
+			dbg("read iova start address error\n");
+			goto read_error;
+		}
+		ret = of_property_read_u32(node, "size", &data->iova_size);
+		if (ret) {
+			dbg("read iova size error\n");
+			goto read_error;
+		}
+		ret = of_property_read_u64(node, "iova-align", &align);
+		if (!ret)
+			data->iova_align = (unsigned long)align;
+		else
+			data->iova_align = SZ_256K;
+
+		pr_err("%s:start_addr 0x%x, size 0x%x align 0x%lx\n",
+			__func__, data->iova_start,
+			data->iova_size, data->iova_align);
+	}
+
+	return 0;
+
+read_error:
+	return ret;
+}
+
+static struct iommu_domain
+*hisi_smmu_domain_alloc_lpae(unsigned iommu_domain_type)
+{
+	struct iommu_domain *domain;
+
+	if (iommu_domain_type != IOMMU_DOMAIN_UNMANAGED)
+		return NULL;
+
+	domain = kzalloc(sizeof(*domain), GFP_KERNEL);
+	if (!domain) {
+		pr_err("%s: fail to kzalloc %lu bytes\n",
+				__func__, sizeof(*domain));
+	}
+
+	return domain;
+}
+
+
+static void hisi_smmu_flush_pgtable_lpae(void *addr, size_t size)
+{
+	__flush_dcache_area(addr, size);
+}
+
+static void hisi_smmu_free_ptes_lpae(smmu_pgd_t pmd)
+{
+	pgtable_t table = smmu_pgd_to_pte_lpae(pmd);
+
+	if (!table) {
+		dbg("pte table is null\n");
+		return;
+	}
+	__free_page(table);
+	smmu_set_pmd_lpae(&pmd, 0);
+}
+
+
+static void hisi_smmu_free_pmds_lpae(smmu_pgd_t pgd)
+{
+	pgtable_t table = smmu_pmd_to_pte_lpae(pgd);
+
+	if (!table) {
+		dbg("pte table is null\n");
+		return;
+	}
+	__free_page(table);
+	smmu_set_pgd_lpae(&pgd, 0);
+}
+
+static void hisi_smmu_free_pgtables_lpae(unsigned long *page_table_addr)
+{
+	int i, j;
+	smmu_pgd_t *pgd;
+	smmu_pmd_t *pmd;
+	unsigned long flags;
+
+	pgd = (smmu_pgd_t *)page_table_addr;
+	pmd = (smmu_pmd_t *)page_table_addr;
+
+	spin_lock_irqsave(&hisi_smmu_dev->lock, flags);
+	for (i = 0; i < SMMU_PTRS_PER_PGD; ++i) {
+		if ((smmu_pgd_none_lpae(*pgd)) & (smmu_pmd_none_lpae(*pmd)))
+			continue;
+		for (j = 0; j < SMMU_PTRS_PER_PMD; ++j) {
+			hisi_smmu_free_pmds_lpae(*pgd);
+			pmd++;
+		}
+		hisi_smmu_free_ptes_lpae(*pmd);
+		pgd++;
+	}
+	memset((void *)page_table_addr, 0, PAGE_SIZE);
+	spin_unlock_irqrestore(&hisi_smmu_dev->lock, flags);
+}
+
+static void hisi_smmu_domain_free_lpae(struct iommu_domain *domain)
+{
+	if (list_empty(&hisi_smmu_dev->domain_list))
+		hisi_smmu_free_pgtables_lpae((unsigned long *)
+				hisi_smmu_dev->va_pgtable_addr);
+
+	kfree(domain);
+
+}
+
+static int hisi_smmu_alloc_init_pte_lpae(smmu_pmd_t *ppmd,
+		unsigned long addr, unsigned long end,
+		unsigned long pfn, u64 prot, unsigned long *flags)
+{
+	smmu_pte_t *pte, *start;
+	pgtable_t table;
+	u64 pteval = SMMU_PTE_TYPE;
+
+	if (!smmu_pmd_none_lpae(*ppmd))
+		goto pte_ready;
+
+	/* Allocate a new set of tables */
+	spin_unlock_irqrestore(&hisi_smmu_dev->lock, *flags);
+	table = alloc_page(GFP_KERNEL | __GFP_ZERO | __GFP_DMA);
+	spin_lock_irqsave(&hisi_smmu_dev->lock, *flags);
+	if (!table) {
+		dbg("%s: alloc page fail\n", __func__);
+		return -ENOMEM;
+	}
+
+	if (smmu_pmd_none_lpae(*ppmd)) {
+		hisi_smmu_flush_pgtable_lpae(page_address(table),
+				SMMU_PAGE_SIZE);
+		smmu_pmd_populate_lpae(ppmd, table, SMMU_PMD_TYPE|SMMU_PMD_NS);
+		hisi_smmu_flush_pgtable_lpae(ppmd, sizeof(*ppmd));
+	} else
+		__free_page(table);
+
+pte_ready:
+	if (prot & IOMMU_SEC)
+		*ppmd &= (~SMMU_PMD_NS);
+
+	start = (smmu_pte_t *)smmu_pte_page_vaddr_lpae(ppmd)
+		+ smmu_pte_index(addr);
+	pte = start;
+	if (!prot) {
+		pteval |= SMMU_PROT_NORMAL;
+		pteval |= SMMU_PTE_NS;
+	} else {
+		if (prot & IOMMU_DEVICE) {
+			pteval |= SMMU_PROT_DEVICE_nGnRE;
+		} else {
+			if (prot & IOMMU_CACHE)
+				pteval |= SMMU_PROT_NORMAL_CACHE;
+			else
+				pteval |= SMMU_PROT_NORMAL_NC;
+
+			if ((prot & IOMMU_READ) && (prot & IOMMU_WRITE))
+				pteval |= SMMU_PAGE_READWRITE;
+			else if ((prot & IOMMU_READ) && !(prot & IOMMU_WRITE))
+				pteval |= SMMU_PAGE_READONLY;
+			else
+				WARN_ON("you do not set read attribute!");
+
+			if (prot & IOMMU_EXEC) {
+				pteval |= SMMU_PAGE_READONLY_EXEC;
+				pteval &= ~(SMMU_PTE_PXN | SMMU_PTE_UXN);
+			}
+		}
+		if (prot & IOMMU_SEC)
+			pteval &= (~SMMU_PTE_NS);
+		else
+			pteval |= SMMU_PTE_NS;
+	}
+
+	do {
+		if (!pte_is_valid_lpae(pte))
+			*pte = (u64)(__pfn_to_phys(pfn)|pteval);
+		else
+			WARN_ONCE(1, "map to same VA more times!\n");
+		pte++;
+		pfn++;
+		addr += SMMU_PAGE_SIZE;
+	} while (addr < end);
+
+	hisi_smmu_flush_pgtable_lpae(start, sizeof(*pte) * (pte - start));
+	return 0;
+}
+
+static int hisi_smmu_alloc_init_pmd_lpae(smmu_pgd_t *ppgd,
+		unsigned long addr, unsigned long end,
+		unsigned long paddr, int prot, unsigned long *flags)
+{
+	int ret = 0;
+	smmu_pmd_t *ppmd, *start;
+	u64 next;
+	pgtable_t table;
+
+	if (!smmu_pgd_none_lpae(*ppgd))
+		goto pmd_ready;
+
+	/* Allocate a new set of tables */
+	spin_unlock_irqrestore(&hisi_smmu_dev->lock, *flags);
+	table = alloc_page(GFP_KERNEL | __GFP_ZERO | __GFP_DMA);
+	spin_lock_irqsave(&hisi_smmu_dev->lock, *flags);
+	if (!table) {
+		dbg("%s: alloc page fail\n", __func__);
+		return -ENOMEM;
+	}
+
+	if (smmu_pgd_none_lpae(*ppgd)) {
+		hisi_smmu_flush_pgtable_lpae(page_address(table),
+				SMMU_PAGE_SIZE);
+		smmu_pgd_populate_lpae(ppgd, table, SMMU_PGD_TYPE|SMMU_PGD_NS);
+		hisi_smmu_flush_pgtable_lpae(ppgd, sizeof(*ppgd));
+	} else
+		__free_page(table);
+
+pmd_ready:
+	if (prot & IOMMU_SEC)
+		*ppgd &= (~SMMU_PGD_NS);
+	start = (smmu_pmd_t *)smmu_pmd_page_vaddr_lpae(ppgd)
+		+ smmu_pmd_index(addr);
+	ppmd = start;
+
+	do {
+		next = smmu_pmd_addr_end_lpae(addr, end);
+		ret = hisi_smmu_alloc_init_pte_lpae(ppmd,
+				addr, next, __phys_to_pfn(paddr), prot, flags);
+		if (ret)
+			goto error;
+		paddr += (next - addr);
+		addr = next;
+	} while (ppmd++, addr < end);
+error:
+	return ret;
+}
+
+int hisi_smmu_handle_mapping_lpae(struct iommu_domain *domain,
+		unsigned long iova, phys_addr_t paddr,
+		size_t size, int prot)
+{
+	int ret;
+	unsigned long end;
+	unsigned long next;
+	unsigned long flags;
+	smmu_pgd_t *pgd = (smmu_pgd_t *)hisi_smmu_dev->va_pgtable_addr;
+
+	if (!pgd) {
+		dbg("pgd is null\n");
+		return -EINVAL;
+	}
+	iova = ALIGN(iova, SMMU_PAGE_SIZE);
+	size = ALIGN(size, SMMU_PAGE_SIZE);
+	spin_lock_irqsave(&hisi_smmu_dev->lock, flags);
+	pgd += smmu_pgd_index(iova);
+	end = iova + size;
+	do {
+		next = smmu_pgd_addr_end_lpae(iova, end);
+		ret = hisi_smmu_alloc_init_pmd_lpae(pgd,
+				iova, next, paddr, prot, &flags);
+		if (ret)
+			goto out_unlock;
+		paddr += next - iova;
+		iova = next;
+	} while (pgd++, iova < end);
+out_unlock:
+	spin_unlock_irqrestore(&hisi_smmu_dev->lock, flags);
+	return ret;
+}
+
+static int hisi_smmu_map_lpae(struct iommu_domain *domain,
+			      unsigned long iova,
+			      phys_addr_t paddr, size_t size,
+			      int prot)
+{
+	unsigned long max_iova;
+	struct iommu_domain_data *data;
+
+	if (!domain) {
+		dbg("domain is null\n");
+		return -ENODEV;
+	}
+	data = domain->priv;
+	max_iova = data->iova_start + data->iova_size;
+	if (iova < data->iova_start) {
+		dbg("iova failed: iova = 0x%lx, start = 0x%8x\n",
+				iova, data->iova_start);
+		goto error;
+	}
+	if ((iova+size) > max_iova) {
+		dbg("iova out of domain range, iova+size=0x%lx, end=0x%lx\n",
+				iova+size, max_iova);
+		goto error;
+	}
+	return hisi_smmu_handle_mapping_lpae(domain, iova, paddr, size, prot);
+error:
+	dbg("iova is not in this range\n");
+	return -EINVAL;
+}
+
+static unsigned int hisi_smmu_clear_pte_lpae(smmu_pgd_t *pmdp,
+		unsigned int iova, unsigned int end)
+{
+	smmu_pte_t *ptep = NULL;
+	smmu_pte_t *ppte = NULL;
+	unsigned int size = end - iova;
+
+	ptep = smmu_pte_page_vaddr_lpae(pmdp);
+	ppte = ptep + smmu_pte_index(iova);
+
+	if (!!size)
+		memset(ppte, 0x0, (size / SMMU_PAGE_SIZE) * sizeof(*ppte));
+
+	return size;
+}
+
+static unsigned int hisi_smmu_clear_pmd_lpae(smmu_pgd_t *pgdp,
+		unsigned int iova, unsigned int end)
+{
+	smmu_pmd_t *pmdp = NULL;
+	smmu_pmd_t *ppmd = NULL;
+	unsigned int next = 0;
+	unsigned int size = end - iova;
+
+	pmdp = smmu_pmd_page_vaddr_lpae(pgdp);
+	ppmd = pmdp + smmu_pmd_index(iova);
+	do {
+		next = smmu_pmd_addr_end_lpae(iova, end);
+		hisi_smmu_clear_pte_lpae(ppmd, iova, next);
+		iova = next;
+		dbg("%s: iova=0x%lx, end=0x%lx\n", __func__, iova, end);
+	} while (ppmd++, iova < end);
+
+	return size;
+}
+
+unsigned int hisi_smmu_handle_unmapping_lpae(struct iommu_domain *domain,
+		unsigned long iova, size_t size)
+{
+	smmu_pgd_t *pgdp = NULL;
+	unsigned int end = 0;
+	unsigned int next = 0;
+	unsigned int unmap_size = 0;
+	unsigned long flags;
+
+	iova = SMMU_PAGE_ALIGN(iova);
+	size = SMMU_PAGE_ALIGN(size);
+	pgdp = (smmu_pgd_t *)hisi_smmu_dev->va_pgtable_addr;
+	end = iova + size;
+	dbg("%s:end=0x%x\n", __func__, end);
+	pgdp += smmu_pgd_index(iova);
+	spin_lock_irqsave(&hisi_smmu_dev->lock, flags);
+	do {
+		next = smmu_pgd_addr_end_lpae(iova, end);
+		unmap_size += hisi_smmu_clear_pmd_lpae(pgdp, iova, next);
+		iova = next;
+		dbg("%s: pgdp=%p, iova=0x%lx\n", __func__, pgdp, iova);
+	} while (pgdp++, iova < end);
+
+	spin_unlock_irqrestore(&hisi_smmu_dev->lock, flags);
+	return unmap_size;
+}
+
+static size_t hisi_smmu_unmap_lpae(struct iommu_domain *domain,
+		unsigned long iova, size_t size)
+{
+	unsigned long max_iova;
+	unsigned int ret;
+	struct iommu_domain_data *data;
+
+	if (!domain) {
+		dbg("domain is null\n");
+		return -ENODEV;
+	}
+	data = domain->priv;
+	/*caculate the max io virtual address */
+	max_iova = data->iova_start + data->iova_size;
+	/*check the iova */
+	if (iova < data->iova_start)
+		goto error;
+	if ((iova+size) > max_iova) {
+		dbg("iova out of domain range, iova+size=0x%lx, end=0x%lx\n",
+				iova+size, max_iova);
+		goto error;
+	}
+	/*unmapping the range of iova*/
+	ret = hisi_smmu_handle_unmapping_lpae(domain, iova, size);
+	if (ret == size) {
+		dbg("%s:unmap size:0x%x\n", __func__, (unsigned int)size);
+		return size;
+	} else {
+		return 0;
+	}
+error:
+	dbg("%s:the range of io address is wrong\n", __func__);
+	return -EINVAL;
+}
+
+static phys_addr_t hisi_smmu_iova_to_phys_lpae(
+		struct iommu_domain *domain, dma_addr_t iova)
+{
+	smmu_pgd_t *pgdp, pgd;
+	smmu_pmd_t pmd;
+	smmu_pte_t pte;
+
+	pgdp = (smmu_pgd_t *)hisi_smmu_dev->va_pgtable_addr;
+	if (!pgdp)
+		return 0;
+
+	pgd = *(pgdp + smmu_pgd_index(iova));
+	if (smmu_pgd_none_lpae(pgd))
+		return 0;
+
+	pmd = *((smmu_pmd_t *)smmu_pmd_page_vaddr_lpae(&pgd) +
+			smmu_pmd_index(iova));
+	if (smmu_pmd_none_lpae(pmd))
+		return 0;
+
+	pte = *((u64 *)smmu_pte_page_vaddr_lpae(&pmd) + smmu_pte_index(iova));
+	if (smmu_pte_none_lpae(pte))
+		return 0;
+
+	return __pfn_to_phys(pte_pfn(__pte(pte))) | (iova & ~SMMU_PAGE_MASK);
+}
+
+static int hisi_attach_dev_lpae(struct iommu_domain *domain, struct device *dev)
+{
+	struct device_node *np = dev->of_node;
+	int ret = 0;
+	struct iommu_domain_data *iommu_info = NULL;
+
+	iommu_info = kzalloc(sizeof(struct iommu_domain_data), GFP_KERNEL);
+	if (!iommu_info) {
+		dbg("alloc iommu_domain_data fail\n");
+		return -EINVAL;
+	}
+	list_add(&iommu_info->list, &hisi_smmu_dev->domain_list);
+	domain->priv = iommu_info;
+	ret = get_domain_data_lpae(np, domain->priv);
+	return ret;
+}
+
+static void hisi_detach_dev_lpae(struct iommu_domain *domain,
+		struct device *dev)
+{
+	struct iommu_domain_data *data;
+
+	data = (struct iommu_domain_data *)domain->priv;
+	if (data) {
+		list_del(&data->list);
+		domain->priv = NULL;
+		kfree(data);
+	} else {
+		dbg("%s:error! data entry has been delected\n", __func__);
+	}
+}
+
+static dma_addr_t get_phys_addr_lpae(struct scatterlist *sg)
+{
+	dma_addr_t dma_addr = sg_dma_address(sg);
+
+	if (!dma_addr)
+		dma_addr = sg_phys(sg);
+	return dma_addr;
+}
+
+int iommu_map_tile(struct iommu_domain *domain, unsigned long iova,
+		   struct scatterlist *sg, size_t size, int prot,
+		   struct tile_format *format)
+{
+	if (unlikely(!(domain->ops->map_tile)))
+		return -ENODEV;
+
+	BUG_ON(iova & (~PAGE_MASK));
+
+	return domain->ops->map_tile(domain, iova, sg, size, prot, format);
+}
+
+int iommu_unmap_tile(struct iommu_domain *domain, unsigned long iova,
+		     size_t size)
+{
+	if (unlikely(!(domain->ops->unmap_tile)))
+		return -ENODEV;
+
+	BUG_ON(iova & (~PAGE_MASK));
+
+	return domain->ops->unmap_tile(domain, iova, size);
+}
+
+/*
+ *iova: the start address for tile mapping
+ *size: the physical memory size
+ *sg: the node of scatter list where are the start node of physical memory
+ *sg_offset:the physical memory offset in the sg node ,where is the start
+ position of physical memory
+ *port: the pape property of virtual memory
+ * this function complete one row mapping.
+ */
+static size_t hisi_map_tile_row_lpae(struct iommu_domain *domain, unsigned long
+		iova, size_t size, struct scatterlist *sg, size_t sg_offset,
+		struct hisi_map_tile_position_lpae *map_position,
+		unsigned int prot){
+
+	unsigned long map_size; /*the memory size that will be mapped*/
+	unsigned long phys_addr;
+	unsigned long mapped_size = 0; /*memory size that has been mapped*/
+	int ret;
+
+	while (1) {
+		/*
+		 *get the remain memory,if current sg node is not enough memory,
+		 *we map the remain memory firstly.
+		 */
+		map_size = size - mapped_size;
+		if (map_size > (sg->length - sg_offset))
+			map_size = (sg->length - sg_offset);
+
+		/*get the start physical address*/
+		phys_addr = (unsigned long)get_phys_addr_lpae(sg) + sg_offset;
+		ret = hisi_smmu_map_lpae(domain,
+				iova + mapped_size, phys_addr, map_size, prot);
+		if (ret) {
+			dbg("[%s] hisi_smmu_map failed!\n", __func__);
+			break;
+		}
+		/*update mapped memory size*/
+		mapped_size += map_size;
+		/*
+		 * if finished mapping,
+		 * we update the memory offset of current node and
+		 * save the memory position. otherwise we clean the sg_offset
+		 * to zero and get next sg node.
+		 */
+		if (mapped_size < size) {
+			sg_offset = 0;
+			sg = sg_next(sg);
+			if (!sg) {
+				dbg("[%s] phy memory not enough\n", __func__);
+				break;
+			}
+		} else {
+			sg_offset += map_size;
+			/*if physcial memory of this node is exhausted,
+			 * we choose next node
+			 */
+			if (sg_offset == sg->length) {
+				sg_offset = 0;
+				sg = sg_next(sg);
+			}
+			break;
+		}
+	}
+	/*save current position*/
+	map_position->sg = sg;
+	map_position->offset = sg_offset;
+
+	return mapped_size;
+}
+
+/*
+ *domain:the iommu domain for mapping
+ *iova:the start virtual address
+ *sg: the scatter list of physical memory
+ *size:the total size of all virtual memory
+ *port:the property of page table of virtual memory
+ *format:the parameter of tile mapping
+ *this function map physical memory in tile mode
+ */
+static int hisi_smmu_map_tile_lpae(struct iommu_domain *domain,
+		unsigned long iova,
+		struct scatterlist *sg, size_t size, int prot,
+		struct tile_format *format){
+
+	unsigned int phys_length;
+	struct scatterlist *sg_node;
+	unsigned int row_number, row;
+	unsigned int size_virt, size_phys;
+	unsigned int sg_offset;
+	int ret = size;
+	unsigned int mapped_size, header_size;
+	struct hisi_map_tile_position_lpae map_position;
+
+	/* calculate the whole length of phys mem */
+	for (phys_length = 0, sg_node = sg; sg_node; sg_node = sg_next(sg_node))
+		phys_length += ALIGN(sg_node->length, PAGE_SIZE);
+
+	header_size = format->header_size;
+
+	/* calculate the number of raws*/
+	row_number = ((phys_length - header_size) >> PAGE_SHIFT)
+		/ format->phys_page_line;
+	dbg("phys_length: 0x%x, rows: 0x%x, header_size: 0x%x\n",
+			phys_length, row_number, header_size);
+
+	/*caculate the need physical memory and virtual memory for one row*/
+	size_phys = (format->phys_page_line * PAGE_SIZE);
+	size_virt = (format->virt_page_line * PAGE_SIZE);
+
+	sg_offset = 0;
+	sg_node = sg;
+
+	/*set start position*/
+	map_position.sg = sg;
+	map_position.offset = 0;
+
+	/*map header*/
+	if (header_size) {
+		mapped_size = hisi_map_tile_row_lpae(domain, iova,
+				header_size, sg_node,
+				sg_offset, &map_position,
+				prot);
+		if (mapped_size != header_size) {
+			WARN(1, "map head fail\n");
+			ret = -EINVAL;
+			goto error;
+		}
+		iova += ALIGN(header_size, size_virt);
+	}
+	/* map row by row */
+	for (row = 0; row < row_number; row++) {
+		/* get physical memory position */
+		if (map_position.sg) {
+			sg_node = map_position.sg;
+			sg_offset = map_position.offset;
+		} else {
+			dbg("[%s]:physical memory is not enough\n", __func__);
+			break;
+		}
+		/* map one row*/
+		mapped_size = hisi_map_tile_row_lpae(domain,
+				iova + (size_virt * row),
+				size_phys, sg_node, sg_offset,
+				&map_position, prot);
+		if (mapped_size != size_phys) {
+			WARN(1, "hisi_map_tile_row failed!\n");
+			ret = -EINVAL;
+			break;
+		}
+	};
+error:
+	return ret;
+}
+
+static size_t hisi_smmu_unmap_tile_lpae(struct iommu_domain *domain,
+		unsigned long iova, size_t size)
+{
+	return hisi_smmu_unmap_lpae(domain, iova, size);
+}
+
+size_t hisi_iommu_map_sg_lpae(struct iommu_domain *domain, unsigned long iova,
+			 struct scatterlist *sg, unsigned int nents, int prot)
+{
+	struct scatterlist *s;
+	size_t mapped = 0;
+	unsigned int i, min_pagesz;
+	int ret;
+
+	if (domain->ops->pgsize_bitmap == 0UL)
+		return 0;
+
+	min_pagesz = (unsigned int)1 << __ffs(domain->ops->pgsize_bitmap);
+
+	for_each_sg(sg, s, nents, i) {
+		phys_addr_t phys = page_to_phys(sg_page(s)) + s->offset;
+
+		/*
+		 * We are mapping on IOMMU page boundaries, so offset within
+		 * the page must be 0. However, the IOMMU may support pages
+		 * smaller than PAGE_SIZE, so s->offset may still represent
+		 * an offset of that boundary within the CPU page.
+		 */
+		if (!IS_ALIGNED(s->offset, min_pagesz))
+			goto out_err;
+
+		ret = hisi_smmu_map_lpae(domain, iova + mapped, phys,
+					(size_t)s->length, prot);
+		if (ret)
+			goto out_err;
+
+		mapped += s->length;
+	}
+
+	return mapped;
+
+out_err:
+	/* undo mappings already done */
+	hisi_smmu_unmap_lpae(domain, iova, mapped);
+
+	return 0;
+}
+
+static struct iommu_ops hisi_smmu_ops = {
+	.domain_alloc	= hisi_smmu_domain_alloc_lpae,
+	.domain_free	= hisi_smmu_domain_free_lpae,
+	.map		= hisi_smmu_map_lpae,
+	.unmap		= hisi_smmu_unmap_lpae,
+	.map_sg     = hisi_iommu_map_sg_lpae,
+	.attach_dev = hisi_attach_dev_lpae,
+	.detach_dev = hisi_detach_dev_lpae,
+	.iova_to_phys	= hisi_smmu_iova_to_phys_lpae,
+	.pgsize_bitmap	= SMMU_PAGE_SIZE,
+	.map_tile = hisi_smmu_map_tile_lpae,
+	.unmap_tile = hisi_smmu_unmap_tile_lpae,
+};
+
+static int hisi_smmu_probe_lpae(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+
+	dbg("enter %s\n", __func__);
+	hisi_smmu_dev = devm_kzalloc(dev,
+			sizeof(struct hisi_smmu_device_lpae), GFP_KERNEL);
+
+	hisi_smmu_dev->smmu_pgd = devm_kzalloc(dev, SZ_64, GFP_KERNEL | __GFP_DMA);
+	if (!hisi_smmu_dev)
+		goto smmu_device_error;
+	hisi_smmu_dev->dev = dev;
+	INIT_LIST_HEAD(&hisi_smmu_dev->domain_list);
+	spin_lock_init(&hisi_smmu_dev->lock);
+
+	hisi_smmu_dev->smmu_pgd =  (smmu_pgd_t *)(ALIGN((unsigned long)(hisi_smmu_dev->smmu_pgd), SZ_32));
+
+	hisi_smmu_dev->smmu_phy_pgtable_addr =
+		virt_to_phys(hisi_smmu_dev->smmu_pgd);
+	printk(KERN_ERR "%s, smmu_phy_pgtable_addr is = %llx\n", __func__, hisi_smmu_dev->smmu_phy_pgtable_addr);
+
+	hisi_smmu_dev->va_pgtable_addr = (unsigned long)(hisi_smmu_dev->smmu_pgd);
+	bus_set_iommu(&platform_bus_type, &hisi_smmu_ops);
+	return 0;
+
+smmu_device_error:
+	return -ENOMEM;
+}
+
+static int hisi_smmu_remove_lpae(struct platform_device *pdev)
+{
+	return 0;
+}
+
+static const struct of_device_id hisi_smmu_of_match_lpae[] = {
+	{ .compatible = "hisi,hisi-smmu-lpae"},
+	{ },
+};
+MODULE_DEVICE_TABLE(of, hisi_smmu_of_match_lpae);
+
+static struct platform_driver hisi_smmu_driver_lpae = {
+	.driver	= {
+		.owner		= THIS_MODULE,
+		.name		= "hisi-smmu-lpae",
+		.of_match_table	= of_match_ptr(hisi_smmu_of_match_lpae),
+	},
+	.probe	= hisi_smmu_probe_lpae,
+	.remove	= hisi_smmu_remove_lpae,
+};
+
+static int __init hisi_smmu_init_lpae(void)
+{
+	int ret = 0;
+
+	ret = platform_driver_register(&hisi_smmu_driver_lpae);
+	return ret;
+}
+
+static void __exit hisi_smmu_exit_lpae(void)
+{
+	return platform_driver_unregister(&hisi_smmu_driver_lpae);
+}
+
+subsys_initcall(hisi_smmu_init_lpae);
+module_exit(hisi_smmu_exit_lpae);
+
+MODULE_DESCRIPTION("IOMMU API for HI3660 architected SMMU implementations");
+MODULE_AUTHOR("huawei hisilicon company");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/hisi/hisi-iommu.h b/include/linux/hisi/hisi-iommu.h
new file mode 100644
index 000000000000..00dd5e97db59
--- /dev/null
+++ b/include/linux/hisi/hisi-iommu.h
@@ -0,0 +1,13 @@
+#ifndef _HI36XX_SMMU_H
+#define _HI36XX_SMMU_H
+
+#include <linux/types.h>
+struct iommu_domain_data {
+	unsigned int     iova_start;
+	unsigned int     iova_size;
+	phys_addr_t      phy_pgd_base;
+	unsigned long    iova_align;
+	struct list_head list;
+};
+
+#endif
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

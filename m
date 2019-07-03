Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 713C05DF97
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jul 2019 10:19:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A282D85F8A;
	Wed,  3 Jul 2019 08:19:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V8h_k2IC0Zqv; Wed,  3 Jul 2019 08:19:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 114AC85F66;
	Wed,  3 Jul 2019 08:19:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 13F4B1BF5A4
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 08:18:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0D841203FA
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 08:18:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9CIY-++DgcZ7 for <devel@linuxdriverproject.org>;
 Wed,  3 Jul 2019 08:18:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id E857920375
 for <devel@driverdev.osuosl.org>; Wed,  3 Jul 2019 08:18:57 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id u17so334660pgi.6
 for <devel@driverdev.osuosl.org>; Wed, 03 Jul 2019 01:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NDpTVJEZY96cI0Bri63ZGt0oe0YPW/V6BEF1IYGt9oY=;
 b=lEsX4CGUz0PxyYSaVWzu4x9i/Zj8Pb2IIyafCs8UbYPUsaw/A2IDombCiQ9cQL7FWG
 q2uIA3FmIIbvHNPiVQK0YZMgfQpkgSU6e7bvS3/b853maVP1SOu75c2XBsaHxR0oKyAE
 bk+tJpNT6mWAYhI3A4n4bizZ8GqQvv/zmCvx9Zmq8AByFgMmODjiibQp5Zr+a5EhCQhB
 78aGxVhqmYMR14gYDWgQqJf0p1tURg+Y3TPAmnbc1+sV4jij+xrV3F5ASqHeKpJnK92F
 O4/9xmC3tSrHKmoo4GoXQWofOn7E+zKPhT3eEmVrDMtUw78f4jW49CiVKXrd2KLKdfM5
 GSXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NDpTVJEZY96cI0Bri63ZGt0oe0YPW/V6BEF1IYGt9oY=;
 b=pQ3ILw5aY4DmsaV+aSf+tLCnv8yV1XxG0K0XaYkf3DtbOjaDluBUuOkIJvjG0zjeCH
 gwhZuBO26RVH63S6EVDoc5g8SCYrOPb956ttRQ7GwLvXgx5FjNLbQ5kBruip+IBepl5f
 wkDtILn70yp/0zYwllqv8dUPI5NfMaAFhhpZfSh4+D6FZTxiKv7d/vlZN0K0iciW1bfx
 Fjw/KKhn0C4+B8ntARdnq6oeuRVPTYi1YanGoXT0T5Pxq+9fAtFqjZw9IOWVfgOY6JaC
 QbRoLRiahBR4myM/RHp8xBFTltfzayic/97gkYOOErVhcf5Yy3iQ+KAAym/Y/qALY2k7
 DQaQ==
X-Gm-Message-State: APjAAAX61Mz2cFmsCbCgFFUBMHjpsk13JfhUmj2Wk8/Nt7uDakoWk9qU
 BxwMJ133ULMjI2PmvuouR8U=
X-Google-Smtp-Source: APXvYqz/yyBt36aPATu1QxOaeqZqe7jJanyH8rLs8VcGUpDO2xTt258e0O1z00Kg81KNgelHyF3V1Q==
X-Received: by 2002:a17:90a:2488:: with SMTP id
 i8mr10959594pje.123.1562141937533; 
 Wed, 03 Jul 2019 01:18:57 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id t17sm1488086pgg.48.2019.07.03.01.18.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 01:18:57 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: labbott@redhat.com, sumit.semwal@linaro.org, gregkh@linuxfoundation.org,
 arve@android.com, tkjos@android.com, maco@android.com,
 joel@joelfernandes.org, christian@brauner.io, devel@driverdev.osuosl.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
Subject: [PATCH 1/2] staging: android: ion: Remove file ion_carveout_heap.c
Date: Wed,  3 Jul 2019 13:48:41 +0530
Message-Id: <20190703081842.22872-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove file ion_carveout_heap.c as its functions and definitions are not
used anywhere.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/android/ion/Kconfig           |   9 --
 drivers/staging/android/ion/Makefile          |   1 -
 .../staging/android/ion/ion_carveout_heap.c   | 133 ------------------
 3 files changed, 143 deletions(-)
 delete mode 100644 drivers/staging/android/ion/ion_carveout_heap.c

diff --git a/drivers/staging/android/ion/Kconfig b/drivers/staging/android/ion/Kconfig
index 178df581a8fc..dff641451a89 100644
--- a/drivers/staging/android/ion/Kconfig
+++ b/drivers/staging/android/ion/Kconfig
@@ -18,15 +18,6 @@ config ION_SYSTEM_HEAP
 	  Choose this option to enable the Ion system heap. The system heap
 	  is backed by pages from the buddy allocator. If in doubt, say Y.
 
-config ION_CARVEOUT_HEAP
-	bool "Ion carveout heap support"
-	depends on ION
-	help
-	  Choose this option to enable carveout heaps with Ion. Carveout heaps
-	  are backed by memory reserved from the system. Allocation times are
-	  typically faster at the cost of memory not being used. Unless you
-	  know your system has these regions, you should say N here.
-
 config ION_CHUNK_HEAP
 	bool "Ion chunk heap support"
 	depends on ION
diff --git a/drivers/staging/android/ion/Makefile b/drivers/staging/android/ion/Makefile
index 17f3a7569e3d..0ac5465e2841 100644
--- a/drivers/staging/android/ion/Makefile
+++ b/drivers/staging/android/ion/Makefile
@@ -1,6 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_ION) += ion.o ion_heap.o
 obj-$(CONFIG_ION_SYSTEM_HEAP) += ion_system_heap.o ion_page_pool.o
-obj-$(CONFIG_ION_CARVEOUT_HEAP) += ion_carveout_heap.o
 obj-$(CONFIG_ION_CHUNK_HEAP) += ion_chunk_heap.o
 obj-$(CONFIG_ION_CMA_HEAP) += ion_cma_heap.o
diff --git a/drivers/staging/android/ion/ion_carveout_heap.c b/drivers/staging/android/ion/ion_carveout_heap.c
deleted file mode 100644
index bb9d614767a2..000000000000
--- a/drivers/staging/android/ion/ion_carveout_heap.c
+++ /dev/null
@@ -1,133 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * ION Memory Allocator carveout heap helper
- *
- * Copyright (C) 2011 Google, Inc.
- */
-
-#include <linux/dma-mapping.h>
-#include <linux/err.h>
-#include <linux/genalloc.h>
-#include <linux/io.h>
-#include <linux/mm.h>
-#include <linux/scatterlist.h>
-#include <linux/slab.h>
-
-#include "ion.h"
-
-#define ION_CARVEOUT_ALLOCATE_FAIL	-1
-
-struct ion_carveout_heap {
-	struct ion_heap heap;
-	struct gen_pool *pool;
-};
-
-static phys_addr_t ion_carveout_allocate(struct ion_heap *heap,
-					 unsigned long size)
-{
-	struct ion_carveout_heap *carveout_heap =
-		container_of(heap, struct ion_carveout_heap, heap);
-	unsigned long offset = gen_pool_alloc(carveout_heap->pool, size);
-
-	if (!offset)
-		return ION_CARVEOUT_ALLOCATE_FAIL;
-
-	return offset;
-}
-
-static void ion_carveout_free(struct ion_heap *heap, phys_addr_t addr,
-			      unsigned long size)
-{
-	struct ion_carveout_heap *carveout_heap =
-		container_of(heap, struct ion_carveout_heap, heap);
-
-	if (addr == ION_CARVEOUT_ALLOCATE_FAIL)
-		return;
-
-	gen_pool_free(carveout_heap->pool, addr, size);
-}
-
-static int ion_carveout_heap_allocate(struct ion_heap *heap,
-				      struct ion_buffer *buffer,
-				      unsigned long size,
-				      unsigned long flags)
-{
-	struct sg_table *table;
-	phys_addr_t paddr;
-	int ret;
-
-	table = kmalloc(sizeof(*table), GFP_KERNEL);
-	if (!table)
-		return -ENOMEM;
-	ret = sg_alloc_table(table, 1, GFP_KERNEL);
-	if (ret)
-		goto err_free;
-
-	paddr = ion_carveout_allocate(heap, size);
-	if (paddr == ION_CARVEOUT_ALLOCATE_FAIL) {
-		ret = -ENOMEM;
-		goto err_free_table;
-	}
-
-	sg_set_page(table->sgl, pfn_to_page(PFN_DOWN(paddr)), size, 0);
-	buffer->sg_table = table;
-
-	return 0;
-
-err_free_table:
-	sg_free_table(table);
-err_free:
-	kfree(table);
-	return ret;
-}
-
-static void ion_carveout_heap_free(struct ion_buffer *buffer)
-{
-	struct ion_heap *heap = buffer->heap;
-	struct sg_table *table = buffer->sg_table;
-	struct page *page = sg_page(table->sgl);
-	phys_addr_t paddr = PFN_PHYS(page_to_pfn(page));
-
-	ion_heap_buffer_zero(buffer);
-
-	ion_carveout_free(heap, paddr, buffer->size);
-	sg_free_table(table);
-	kfree(table);
-}
-
-static struct ion_heap_ops carveout_heap_ops = {
-	.allocate = ion_carveout_heap_allocate,
-	.free = ion_carveout_heap_free,
-	.map_user = ion_heap_map_user,
-	.map_kernel = ion_heap_map_kernel,
-	.unmap_kernel = ion_heap_unmap_kernel,
-};
-
-struct ion_heap *ion_carveout_heap_create(phys_addr_t base, size_t size)
-{
-	struct ion_carveout_heap *carveout_heap;
-	int ret;
-
-	struct page *page;
-
-	page = pfn_to_page(PFN_DOWN(base));
-	ret = ion_heap_pages_zero(page, size, pgprot_writecombine(PAGE_KERNEL));
-	if (ret)
-		return ERR_PTR(ret);
-
-	carveout_heap = kzalloc(sizeof(*carveout_heap), GFP_KERNEL);
-	if (!carveout_heap)
-		return ERR_PTR(-ENOMEM);
-
-	carveout_heap->pool = gen_pool_create(PAGE_SHIFT, -1);
-	if (!carveout_heap->pool) {
-		kfree(carveout_heap);
-		return ERR_PTR(-ENOMEM);
-	}
-	gen_pool_add(carveout_heap->pool, base, size, -1);
-	carveout_heap->heap.ops = &carveout_heap_ops;
-	carveout_heap->heap.type = ION_HEAP_TYPE_CARVEOUT;
-	carveout_heap->heap.flags = ION_HEAP_FLAG_DEFER_FREE;
-
-	return &carveout_heap->heap;
-}
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

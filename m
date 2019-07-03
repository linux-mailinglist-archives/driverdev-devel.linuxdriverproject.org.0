Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D235DF99
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jul 2019 10:19:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E969D85FA0;
	Wed,  3 Jul 2019 08:19:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tBVI-M1bGd7D; Wed,  3 Jul 2019 08:19:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A9EA685FA3;
	Wed,  3 Jul 2019 08:19:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 353D21BF5A4
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 08:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 24CCE86DDB
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 08:19:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DinLpWI25tdi for <devel@linuxdriverproject.org>;
 Wed,  3 Jul 2019 08:19:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 83EA486DA3
 for <devel@driverdev.osuosl.org>; Wed,  3 Jul 2019 08:19:02 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id b7so810522pls.6
 for <devel@driverdev.osuosl.org>; Wed, 03 Jul 2019 01:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0Og5Rsfjr6TCLMVHn890TBXeiZARTJqmRdQh9UbdeW4=;
 b=N3vBZJGaOtd3xdCESZT2MkkyoPdA9dDqwmGi7pVnme/Kvd4VgN2+wYLFwl874iq7SE
 1mZ/QkWPo2qXAfourhFIdECvbLMFWef+B9SaExL2svKohu+3hRTnonjqknMCeI/LIDaZ
 RL4oCn9kB1jv0pZl8p/qWIAhuWgRGYOsBmTHhBvW5774rgvwOw+aCGBDraffycNA72Ii
 F+dYbeiQgVVociPKpsS2zh2jm0wEi3L6OE4bE+9rILRJmnDIDMB1ZyqnU2fAEO+vc0QM
 c9JHgTi4w1uqS552tg4kLWV5lLnRuimFOf8N9sCp5/43jXtahPcMxY3ufBVX0ytc2Fro
 8Fuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0Og5Rsfjr6TCLMVHn890TBXeiZARTJqmRdQh9UbdeW4=;
 b=lh4MtUlFdn2FJNpyUQzM9ZP09FPcrVybWFzDdmUaLOfV4xpTMqKu01Rus/J7z84Fz8
 +TlDQFK676jr3lqB8PdPleoHaSeSI74Xv3WkC87vaJfdhnITzxTy/z3HQqzXOYCbkZec
 STLsnXkqy2Grmo3wZhaMsrd6by4FMz9xZYSM/gbYaVdSlNhNi9GUqEF871q7ot4Rf9A+
 Gh2enIVl+S0S1id4FPuSR/6fXb/U/cVhZOZWy6/69V31dvaXCvtnVVKw+x4Vjb9rwdFr
 ZFQP7Fo1iP7epcbCM4oUBjN1BXfVYFcxm7i7aB3OXPsOD334BZldGdzAIBCiIiYDvtR5
 VERw==
X-Gm-Message-State: APjAAAU9dzvT85e6y39852FeadlooS0P+X/cnie8fWZ7OnIbE+WYbweM
 thTvTQubD0VEfx5ik/Z27bc=
X-Google-Smtp-Source: APXvYqwlRYPeAKGkggZvTxpWjZjXngCpqLc92UVtlS++BxUL+OYAlGRNUr23Ilv9U3cIIJls59zO/Q==
X-Received: by 2002:a17:902:3a5:: with SMTP id
 d34mr40647704pld.239.1562141942165; 
 Wed, 03 Jul 2019 01:19:02 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id t17sm1488086pgg.48.2019.07.03.01.18.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 01:19:01 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: labbott@redhat.com, sumit.semwal@linaro.org, gregkh@linuxfoundation.org,
 arve@android.com, tkjos@android.com, maco@android.com,
 joel@joelfernandes.org, christian@brauner.io, devel@driverdev.osuosl.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
Subject: [PATCH 2/2] staging: android: ion: Remove file ion_chunk_heap.c
Date: Wed,  3 Jul 2019 13:48:42 +0530
Message-Id: <20190703081842.22872-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190703081842.22872-1-nishkadg.linux@gmail.com>
References: <20190703081842.22872-1-nishkadg.linux@gmail.com>
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

Remove file ion_chunk_heap.c as its functions and definitions are not
used anywhere else.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/android/ion/Kconfig          |   9 --
 drivers/staging/android/ion/Makefile         |   1 -
 drivers/staging/android/ion/ion_chunk_heap.c | 147 -------------------
 3 files changed, 157 deletions(-)
 delete mode 100644 drivers/staging/android/ion/ion_chunk_heap.c

diff --git a/drivers/staging/android/ion/Kconfig b/drivers/staging/android/ion/Kconfig
index dff641451a89..989fe84a9f9d 100644
--- a/drivers/staging/android/ion/Kconfig
+++ b/drivers/staging/android/ion/Kconfig
@@ -18,15 +18,6 @@ config ION_SYSTEM_HEAP
 	  Choose this option to enable the Ion system heap. The system heap
 	  is backed by pages from the buddy allocator. If in doubt, say Y.
 
-config ION_CHUNK_HEAP
-	bool "Ion chunk heap support"
-	depends on ION
-	help
-          Choose this option to enable chunk heaps with Ion. This heap is
-	  similar in function the carveout heap but memory is broken down
-	  into smaller chunk sizes, typically corresponding to a TLB size.
-	  Unless you know your system has these regions, you should say N here.
-
 config ION_CMA_HEAP
 	bool "Ion CMA heap support"
 	depends on ION && DMA_CMA
diff --git a/drivers/staging/android/ion/Makefile b/drivers/staging/android/ion/Makefile
index 0ac5465e2841..5f4487b1a224 100644
--- a/drivers/staging/android/ion/Makefile
+++ b/drivers/staging/android/ion/Makefile
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_ION) += ion.o ion_heap.o
 obj-$(CONFIG_ION_SYSTEM_HEAP) += ion_system_heap.o ion_page_pool.o
-obj-$(CONFIG_ION_CHUNK_HEAP) += ion_chunk_heap.o
 obj-$(CONFIG_ION_CMA_HEAP) += ion_cma_heap.o
diff --git a/drivers/staging/android/ion/ion_chunk_heap.c b/drivers/staging/android/ion/ion_chunk_heap.c
deleted file mode 100644
index 1e869f4bad45..000000000000
--- a/drivers/staging/android/ion/ion_chunk_heap.c
+++ /dev/null
@@ -1,147 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * ION memory allocator chunk heap helper
- *
- * Copyright (C) 2012 Google, Inc.
- */
-
-#include <linux/dma-mapping.h>
-#include <linux/err.h>
-#include <linux/genalloc.h>
-#include <linux/mm.h>
-#include <linux/scatterlist.h>
-#include <linux/slab.h>
-
-#include "ion.h"
-
-struct ion_chunk_heap {
-	struct ion_heap heap;
-	struct gen_pool *pool;
-	unsigned long chunk_size;
-	unsigned long size;
-	unsigned long allocated;
-};
-
-static int ion_chunk_heap_allocate(struct ion_heap *heap,
-				   struct ion_buffer *buffer,
-				   unsigned long size,
-				   unsigned long flags)
-{
-	struct ion_chunk_heap *chunk_heap =
-		container_of(heap, struct ion_chunk_heap, heap);
-	struct sg_table *table;
-	struct scatterlist *sg;
-	int ret, i;
-	unsigned long num_chunks;
-	unsigned long allocated_size;
-
-	allocated_size = ALIGN(size, chunk_heap->chunk_size);
-	num_chunks = allocated_size / chunk_heap->chunk_size;
-
-	if (allocated_size > chunk_heap->size - chunk_heap->allocated)
-		return -ENOMEM;
-
-	table = kmalloc(sizeof(*table), GFP_KERNEL);
-	if (!table)
-		return -ENOMEM;
-	ret = sg_alloc_table(table, num_chunks, GFP_KERNEL);
-	if (ret) {
-		kfree(table);
-		return ret;
-	}
-
-	sg = table->sgl;
-	for (i = 0; i < num_chunks; i++) {
-		unsigned long paddr = gen_pool_alloc(chunk_heap->pool,
-						     chunk_heap->chunk_size);
-		if (!paddr)
-			goto err;
-		sg_set_page(sg, pfn_to_page(PFN_DOWN(paddr)),
-			    chunk_heap->chunk_size, 0);
-		sg = sg_next(sg);
-	}
-
-	buffer->sg_table = table;
-	chunk_heap->allocated += allocated_size;
-	return 0;
-err:
-	sg = table->sgl;
-	for (i -= 1; i >= 0; i--) {
-		gen_pool_free(chunk_heap->pool, page_to_phys(sg_page(sg)),
-			      sg->length);
-		sg = sg_next(sg);
-	}
-	sg_free_table(table);
-	kfree(table);
-	return -ENOMEM;
-}
-
-static void ion_chunk_heap_free(struct ion_buffer *buffer)
-{
-	struct ion_heap *heap = buffer->heap;
-	struct ion_chunk_heap *chunk_heap =
-		container_of(heap, struct ion_chunk_heap, heap);
-	struct sg_table *table = buffer->sg_table;
-	struct scatterlist *sg;
-	int i;
-	unsigned long allocated_size;
-
-	allocated_size = ALIGN(buffer->size, chunk_heap->chunk_size);
-
-	ion_heap_buffer_zero(buffer);
-
-	for_each_sg(table->sgl, sg, table->nents, i) {
-		gen_pool_free(chunk_heap->pool, page_to_phys(sg_page(sg)),
-			      sg->length);
-	}
-	chunk_heap->allocated -= allocated_size;
-	sg_free_table(table);
-	kfree(table);
-}
-
-static struct ion_heap_ops chunk_heap_ops = {
-	.allocate = ion_chunk_heap_allocate,
-	.free = ion_chunk_heap_free,
-	.map_user = ion_heap_map_user,
-	.map_kernel = ion_heap_map_kernel,
-	.unmap_kernel = ion_heap_unmap_kernel,
-};
-
-struct ion_heap *ion_chunk_heap_create(phys_addr_t base, size_t size,
-				       size_t chunk_size)
-{
-	struct ion_chunk_heap *chunk_heap;
-	int ret;
-	struct page *page;
-
-	page = pfn_to_page(PFN_DOWN(base));
-	ret = ion_heap_pages_zero(page, size, pgprot_writecombine(PAGE_KERNEL));
-	if (ret)
-		return ERR_PTR(ret);
-
-	chunk_heap = kzalloc(sizeof(*chunk_heap), GFP_KERNEL);
-	if (!chunk_heap)
-		return ERR_PTR(-ENOMEM);
-
-	chunk_heap->chunk_size = chunk_size;
-	chunk_heap->pool = gen_pool_create(get_order(chunk_heap->chunk_size) +
-					   PAGE_SHIFT, -1);
-	if (!chunk_heap->pool) {
-		ret = -ENOMEM;
-		goto error_gen_pool_create;
-	}
-	chunk_heap->size = size;
-	chunk_heap->allocated = 0;
-
-	gen_pool_add(chunk_heap->pool, base, size, -1);
-	chunk_heap->heap.ops = &chunk_heap_ops;
-	chunk_heap->heap.type = ION_HEAP_TYPE_CHUNK;
-	chunk_heap->heap.flags = ION_HEAP_FLAG_DEFER_FREE;
-	pr_debug("%s: base %pa size %zu\n", __func__, &base, size);
-
-	return &chunk_heap->heap;
-
-error_gen_pool_create:
-	kfree(chunk_heap);
-	return ERR_PTR(ret);
-}
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

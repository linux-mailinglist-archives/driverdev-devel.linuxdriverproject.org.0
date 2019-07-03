Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D17DB5E2D5
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jul 2019 13:33:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC84C8637D;
	Wed,  3 Jul 2019 11:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m0g7rROk1t+l; Wed,  3 Jul 2019 11:33:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 984C7864E5;
	Wed,  3 Jul 2019 11:33:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3AD071BF389
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 11:33:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 382602037A
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 11:33:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OzbZv0ZtqhsE for <devel@linuxdriverproject.org>;
 Wed,  3 Jul 2019 11:33:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 4D9AD20004
 for <devel@driverdev.osuosl.org>; Wed,  3 Jul 2019 11:33:05 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id h21so196529qtn.13
 for <devel@driverdev.osuosl.org>; Wed, 03 Jul 2019 04:33:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8MePbn+BXdwOfPx3HhCHnLV7UIwNVrG3pkXBcPOEFd4=;
 b=qwNlplnP6rrMEgxQ+juASB3HeMob9B3pzJOwp7tgWN6CqYh0eXtygFowK2xmn8QXn7
 Tyi+Y/6/SMyPrYJJRAKzgc1yXGZg9E0or0Wh3IU9Lwi9Z2APAgAT5j9Z+QJ+Je4X6LSo
 lmUvz0h2hh3zCLNdZcXHOT7geJDrPO0YevfyCWzXagVup2+q/7fXjh//VdqV1PHv3D4o
 xZa8dGuOvzwcKkNfPo7VEA6RRZsvUWN059ZfYQu15nPfioSINuSf1ILjnSRxPM2mleu3
 z/vibyWv37kLKG5P2XN0I8Cxqa411PydnZTXQtckC9oljz06W6r+v6ty7rrH8kgmYYXa
 PctQ==
X-Gm-Message-State: APjAAAUqu/ZRE9FCwZ6/dLyW3Vva2GA88i1XJ+dA0UYgGf95AAGET54O
 i6FiZNU/HJV6X9Bm+5VBXu7Aug==
X-Google-Smtp-Source: APXvYqwNGXUs4bNFXCl7jVc4jyAwIX9kx2r5lZG1pKK0huj6LZlmkxPKTMq6/5+EDy6/bE2sw/YAMA==
X-Received: by 2002:ac8:2309:: with SMTP id a9mr29158070qta.103.1562153584406; 
 Wed, 03 Jul 2019 04:33:04 -0700 (PDT)
Received: from [192.168.1.157] (pool-96-235-39-235.pitbpa.fios.verizon.net.
 [96.235.39.235])
 by smtp.gmail.com with ESMTPSA id u4sm781653qkb.16.2019.07.03.04.33.03
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 04:33:03 -0700 (PDT)
Subject: Re: [PATCH 2/2] staging: android: ion: Remove file ion_chunk_heap.c
To: Nishka Dasgupta <nishkadg.linux@gmail.com>, sumit.semwal@linaro.org,
 gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, christian@brauner.io,
 devel@driverdev.osuosl.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20190703081842.22872-1-nishkadg.linux@gmail.com>
 <20190703081842.22872-2-nishkadg.linux@gmail.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <51794edf-4e1d-6c6f-2d4f-356f48098a2a@redhat.com>
Date: Wed, 3 Jul 2019 07:33:03 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190703081842.22872-2-nishkadg.linux@gmail.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/3/19 4:18 AM, Nishka Dasgupta wrote:
> Remove file ion_chunk_heap.c as its functions and definitions are not
> used anywhere else.
> Issue found with Coccinelle.
> 

Acked-by: Laura Abbott <labbott@redhat.com>

> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>   drivers/staging/android/ion/Kconfig          |   9 --
>   drivers/staging/android/ion/Makefile         |   1 -
>   drivers/staging/android/ion/ion_chunk_heap.c | 147 -------------------
>   3 files changed, 157 deletions(-)
>   delete mode 100644 drivers/staging/android/ion/ion_chunk_heap.c
> 
> diff --git a/drivers/staging/android/ion/Kconfig b/drivers/staging/android/ion/Kconfig
> index dff641451a89..989fe84a9f9d 100644
> --- a/drivers/staging/android/ion/Kconfig
> +++ b/drivers/staging/android/ion/Kconfig
> @@ -18,15 +18,6 @@ config ION_SYSTEM_HEAP
>   	  Choose this option to enable the Ion system heap. The system heap
>   	  is backed by pages from the buddy allocator. If in doubt, say Y.
>   
> -config ION_CHUNK_HEAP
> -	bool "Ion chunk heap support"
> -	depends on ION
> -	help
> -          Choose this option to enable chunk heaps with Ion. This heap is
> -	  similar in function the carveout heap but memory is broken down
> -	  into smaller chunk sizes, typically corresponding to a TLB size.
> -	  Unless you know your system has these regions, you should say N here.
> -
>   config ION_CMA_HEAP
>   	bool "Ion CMA heap support"
>   	depends on ION && DMA_CMA
> diff --git a/drivers/staging/android/ion/Makefile b/drivers/staging/android/ion/Makefile
> index 0ac5465e2841..5f4487b1a224 100644
> --- a/drivers/staging/android/ion/Makefile
> +++ b/drivers/staging/android/ion/Makefile
> @@ -1,5 +1,4 @@
>   # SPDX-License-Identifier: GPL-2.0
>   obj-$(CONFIG_ION) += ion.o ion_heap.o
>   obj-$(CONFIG_ION_SYSTEM_HEAP) += ion_system_heap.o ion_page_pool.o
> -obj-$(CONFIG_ION_CHUNK_HEAP) += ion_chunk_heap.o
>   obj-$(CONFIG_ION_CMA_HEAP) += ion_cma_heap.o
> diff --git a/drivers/staging/android/ion/ion_chunk_heap.c b/drivers/staging/android/ion/ion_chunk_heap.c
> deleted file mode 100644
> index 1e869f4bad45..000000000000
> --- a/drivers/staging/android/ion/ion_chunk_heap.c
> +++ /dev/null
> @@ -1,147 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0
> -/*
> - * ION memory allocator chunk heap helper
> - *
> - * Copyright (C) 2012 Google, Inc.
> - */
> -
> -#include <linux/dma-mapping.h>
> -#include <linux/err.h>
> -#include <linux/genalloc.h>
> -#include <linux/mm.h>
> -#include <linux/scatterlist.h>
> -#include <linux/slab.h>
> -
> -#include "ion.h"
> -
> -struct ion_chunk_heap {
> -	struct ion_heap heap;
> -	struct gen_pool *pool;
> -	unsigned long chunk_size;
> -	unsigned long size;
> -	unsigned long allocated;
> -};
> -
> -static int ion_chunk_heap_allocate(struct ion_heap *heap,
> -				   struct ion_buffer *buffer,
> -				   unsigned long size,
> -				   unsigned long flags)
> -{
> -	struct ion_chunk_heap *chunk_heap =
> -		container_of(heap, struct ion_chunk_heap, heap);
> -	struct sg_table *table;
> -	struct scatterlist *sg;
> -	int ret, i;
> -	unsigned long num_chunks;
> -	unsigned long allocated_size;
> -
> -	allocated_size = ALIGN(size, chunk_heap->chunk_size);
> -	num_chunks = allocated_size / chunk_heap->chunk_size;
> -
> -	if (allocated_size > chunk_heap->size - chunk_heap->allocated)
> -		return -ENOMEM;
> -
> -	table = kmalloc(sizeof(*table), GFP_KERNEL);
> -	if (!table)
> -		return -ENOMEM;
> -	ret = sg_alloc_table(table, num_chunks, GFP_KERNEL);
> -	if (ret) {
> -		kfree(table);
> -		return ret;
> -	}
> -
> -	sg = table->sgl;
> -	for (i = 0; i < num_chunks; i++) {
> -		unsigned long paddr = gen_pool_alloc(chunk_heap->pool,
> -						     chunk_heap->chunk_size);
> -		if (!paddr)
> -			goto err;
> -		sg_set_page(sg, pfn_to_page(PFN_DOWN(paddr)),
> -			    chunk_heap->chunk_size, 0);
> -		sg = sg_next(sg);
> -	}
> -
> -	buffer->sg_table = table;
> -	chunk_heap->allocated += allocated_size;
> -	return 0;
> -err:
> -	sg = table->sgl;
> -	for (i -= 1; i >= 0; i--) {
> -		gen_pool_free(chunk_heap->pool, page_to_phys(sg_page(sg)),
> -			      sg->length);
> -		sg = sg_next(sg);
> -	}
> -	sg_free_table(table);
> -	kfree(table);
> -	return -ENOMEM;
> -}
> -
> -static void ion_chunk_heap_free(struct ion_buffer *buffer)
> -{
> -	struct ion_heap *heap = buffer->heap;
> -	struct ion_chunk_heap *chunk_heap =
> -		container_of(heap, struct ion_chunk_heap, heap);
> -	struct sg_table *table = buffer->sg_table;
> -	struct scatterlist *sg;
> -	int i;
> -	unsigned long allocated_size;
> -
> -	allocated_size = ALIGN(buffer->size, chunk_heap->chunk_size);
> -
> -	ion_heap_buffer_zero(buffer);
> -
> -	for_each_sg(table->sgl, sg, table->nents, i) {
> -		gen_pool_free(chunk_heap->pool, page_to_phys(sg_page(sg)),
> -			      sg->length);
> -	}
> -	chunk_heap->allocated -= allocated_size;
> -	sg_free_table(table);
> -	kfree(table);
> -}
> -
> -static struct ion_heap_ops chunk_heap_ops = {
> -	.allocate = ion_chunk_heap_allocate,
> -	.free = ion_chunk_heap_free,
> -	.map_user = ion_heap_map_user,
> -	.map_kernel = ion_heap_map_kernel,
> -	.unmap_kernel = ion_heap_unmap_kernel,
> -};
> -
> -struct ion_heap *ion_chunk_heap_create(phys_addr_t base, size_t size,
> -				       size_t chunk_size)
> -{
> -	struct ion_chunk_heap *chunk_heap;
> -	int ret;
> -	struct page *page;
> -
> -	page = pfn_to_page(PFN_DOWN(base));
> -	ret = ion_heap_pages_zero(page, size, pgprot_writecombine(PAGE_KERNEL));
> -	if (ret)
> -		return ERR_PTR(ret);
> -
> -	chunk_heap = kzalloc(sizeof(*chunk_heap), GFP_KERNEL);
> -	if (!chunk_heap)
> -		return ERR_PTR(-ENOMEM);
> -
> -	chunk_heap->chunk_size = chunk_size;
> -	chunk_heap->pool = gen_pool_create(get_order(chunk_heap->chunk_size) +
> -					   PAGE_SHIFT, -1);
> -	if (!chunk_heap->pool) {
> -		ret = -ENOMEM;
> -		goto error_gen_pool_create;
> -	}
> -	chunk_heap->size = size;
> -	chunk_heap->allocated = 0;
> -
> -	gen_pool_add(chunk_heap->pool, base, size, -1);
> -	chunk_heap->heap.ops = &chunk_heap_ops;
> -	chunk_heap->heap.type = ION_HEAP_TYPE_CHUNK;
> -	chunk_heap->heap.flags = ION_HEAP_FLAG_DEFER_FREE;
> -	pr_debug("%s: base %pa size %zu\n", __func__, &base, size);
> -
> -	return &chunk_heap->heap;
> -
> -error_gen_pool_create:
> -	kfree(chunk_heap);
> -	return ERR_PTR(ret);
> -}
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

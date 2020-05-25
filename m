Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEE31E0759
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 May 2020 08:56:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3252E882A0;
	Mon, 25 May 2020 06:56:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rUe2hvEblRy6; Mon, 25 May 2020 06:56:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC40B880F9;
	Mon, 25 May 2020 06:56:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 31BF61BF21A
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E0F88639E
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hCuNnA37GGUj for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A7F6086D9A
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 06:56:16 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3EFF420812;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590389776;
 bh=vaJhpaXx7Ii1ATSJKTCvvsMgjUJuSHdbd2Rd6SPAvQM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aE5vAl17Q3rq9x9oVmT586AYowJA0P9tCdRhCTYX3z43zCRzInSBKRER1xQsyGheT
 iZqa1xQqANfp7jaLRnGY9o9tYYN//BkZM/Q7IunMZDd4zLARcM/bNNuYMl5Kq8jzkB
 OMTb+U/P4jPEeJ/ZJ3zFbe+v5glRK3RGY8+QJ8QQ=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jd71x-001d6f-UX; Mon, 25 May 2020 08:56:13 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 01/11] media: atomisp: get rid of hmm_vm.c
Date: Mon, 25 May 2020 08:56:00 +0200
Message-Id: <3013c369fd6cf9d97f0ce018cf1fd2cc00a2842f.1590389536.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590389536.git.mchehab+huawei@kernel.org>
References: <cover.1590389536.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is not used anywhere. So, let's trash it.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/Makefile        |   1 -
 .../media/atomisp/include/hmm/hmm_vm.h        |  65 -----
 .../media/atomisp/pci/hmm/hmm_dynamic_pool.c  | 233 ------------------
 .../staging/media/atomisp/pci/hmm/hmm_vm.c    | 212 ----------------
 4 files changed, 511 deletions(-)
 delete mode 100644 drivers/staging/media/atomisp/include/hmm/hmm_vm.h
 delete mode 100644 drivers/staging/media/atomisp/pci/hmm/hmm_dynamic_pool.c
 delete mode 100644 drivers/staging/media/atomisp/pci/hmm/hmm_vm.c

diff --git a/drivers/staging/media/atomisp/Makefile b/drivers/staging/media/atomisp/Makefile
index eedecd49bbf4..c7a55d059425 100644
--- a/drivers/staging/media/atomisp/Makefile
+++ b/drivers/staging/media/atomisp/Makefile
@@ -53,7 +53,6 @@ atomisp-objs += \
 	pci/hmm/hmm_dynamic_pool.o \
 	pci/hmm/hmm.o \
 	pci/hmm/hmm_reserved_pool.o \
-	pci/hmm/hmm_vm.o \
 	pci/hrt/hive_isp_css_mm_hrt.o \
 	pci/ia_css_device_access.o \
 	pci/ia_css_memory_access.o \
diff --git a/drivers/staging/media/atomisp/include/hmm/hmm_vm.h b/drivers/staging/media/atomisp/include/hmm/hmm_vm.h
deleted file mode 100644
index 93ac5e445137..000000000000
--- a/drivers/staging/media/atomisp/include/hmm/hmm_vm.h
+++ /dev/null
@@ -1,65 +0,0 @@
-/*
- * Support for Medifield PNW Camera Imaging ISP subsystem.
- *
- * Copyright (c) 2010 Intel Corporation. All Rights Reserved.
- *
- * Copyright (c) 2010 Silicon Hive www.siliconhive.com.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version
- * 2 as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- */
-
-#ifndef	__HMM_VM_H__
-#define	__HMM_VM_H__
-
-#include <linux/kernel.h>
-#include <linux/types.h>
-#include <linux/mutex.h>
-#include <linux/list.h>
-
-struct hmm_vm {
-	unsigned int start;
-	unsigned int pgnr;
-	unsigned int size;
-	struct list_head vm_node_list;
-	spinlock_t lock;
-	struct kmem_cache *cache;
-};
-
-struct hmm_vm_node {
-	struct list_head list;
-	unsigned int start;
-	unsigned int pgnr;
-	unsigned int size;
-	struct hmm_vm *vm;
-};
-
-#define	ISP_VM_START	0x0
-#define	ISP_VM_SIZE	(0x7FFFFFFF)	/* 2G address space */
-#define	ISP_PTR_NULL	NULL
-
-int hmm_vm_init(struct hmm_vm *vm, unsigned int start,
-		unsigned int size);
-
-void hmm_vm_clean(struct hmm_vm *vm);
-
-struct hmm_vm_node *hmm_vm_alloc_node(struct hmm_vm *vm,
-				      unsigned int pgnr);
-
-void hmm_vm_free_node(struct hmm_vm_node *node);
-
-struct hmm_vm_node *hmm_vm_find_node_start(struct hmm_vm *vm,
-	unsigned int addr);
-
-struct hmm_vm_node *hmm_vm_find_node_in_range(struct hmm_vm *vm,
-	unsigned int addr);
-
-#endif
diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm_dynamic_pool.c b/drivers/staging/media/atomisp/pci/hmm/hmm_dynamic_pool.c
deleted file mode 100644
index 1a87af68a924..000000000000
--- a/drivers/staging/media/atomisp/pci/hmm/hmm_dynamic_pool.c
+++ /dev/null
@@ -1,233 +0,0 @@
-/*
- * Support for Medifield PNW Camera Imaging ISP subsystem.
- *
- * Copyright (c) 2010 Intel Corporation. All Rights Reserved.
- *
- * Copyright (c) 2010 Silicon Hive www.siliconhive.com.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version
- * 2 as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- */
-/*
- * This file contains functions for dynamic memory pool management
- */
-#include <linux/kernel.h>
-#include <linux/types.h>
-#include <linux/mm.h>
-
-#include <asm/set_memory.h>
-
-#include "atomisp_internal.h"
-
-#include "hmm/hmm_pool.h"
-
-/*
- * dynamic memory pool ops.
- */
-static unsigned int get_pages_from_dynamic_pool(void *pool,
-	struct hmm_page_object *page_obj,
-	unsigned int size, bool cached)
-{
-	struct hmm_page *hmm_page;
-	unsigned long flags;
-	unsigned int i = 0;
-	struct hmm_dynamic_pool_info *dypool_info = pool;
-
-	if (!dypool_info)
-		return 0;
-
-	spin_lock_irqsave(&dypool_info->list_lock, flags);
-	if (dypool_info->initialized) {
-		while (!list_empty(&dypool_info->pages_list)) {
-			hmm_page = list_entry(dypool_info->pages_list.next,
-					      struct hmm_page, list);
-
-			list_del(&hmm_page->list);
-			dypool_info->pgnr--;
-			spin_unlock_irqrestore(&dypool_info->list_lock, flags);
-
-			page_obj[i].page = hmm_page->page;
-			page_obj[i++].type = HMM_PAGE_TYPE_DYNAMIC;
-			kmem_cache_free(dypool_info->pgptr_cache, hmm_page);
-
-			if (i == size)
-				return i;
-
-			spin_lock_irqsave(&dypool_info->list_lock, flags);
-		}
-	}
-	spin_unlock_irqrestore(&dypool_info->list_lock, flags);
-
-	return i;
-}
-
-static void free_pages_to_dynamic_pool(void *pool,
-				       struct hmm_page_object *page_obj)
-{
-	struct hmm_page *hmm_page;
-	unsigned long flags;
-	int ret;
-	struct hmm_dynamic_pool_info *dypool_info = pool;
-
-	if (!dypool_info)
-		return;
-
-	spin_lock_irqsave(&dypool_info->list_lock, flags);
-	if (!dypool_info->initialized) {
-		spin_unlock_irqrestore(&dypool_info->list_lock, flags);
-		return;
-	}
-	spin_unlock_irqrestore(&dypool_info->list_lock, flags);
-
-	if (page_obj->type == HMM_PAGE_TYPE_RESERVED)
-		return;
-
-	if (dypool_info->pgnr >= dypool_info->pool_size) {
-		/* free page directly back to system */
-		ret = set_pages_wb(page_obj->page, 1);
-		if (ret)
-			dev_err(atomisp_dev,
-				"set page to WB err ...ret=%d\n", ret);
-		/*
-		W/A: set_pages_wb seldom return value = -EFAULT
-		indicate that address of page is not in valid
-		range(0xffff880000000000~0xffffc7ffffffffff)
-		then, _free_pages would panic; Do not know why page
-		address be valid, it maybe memory corruption by lowmemory
-		*/
-		if (!ret) {
-			__free_pages(page_obj->page, 0);
-			hmm_mem_stat.sys_size--;
-		}
-		return;
-	}
-	hmm_page = kmem_cache_zalloc(dypool_info->pgptr_cache,
-				     GFP_KERNEL);
-	if (!hmm_page) {
-		/* free page directly */
-		ret = set_pages_wb(page_obj->page, 1);
-		if (ret)
-			dev_err(atomisp_dev,
-				"set page to WB err ...ret=%d\n", ret);
-		if (!ret) {
-			__free_pages(page_obj->page, 0);
-			hmm_mem_stat.sys_size--;
-		}
-		return;
-	}
-
-	hmm_page->page = page_obj->page;
-
-	/*
-	 * add to pages_list of pages_pool
-	 */
-	spin_lock_irqsave(&dypool_info->list_lock, flags);
-	list_add_tail(&hmm_page->list, &dypool_info->pages_list);
-	dypool_info->pgnr++;
-	spin_unlock_irqrestore(&dypool_info->list_lock, flags);
-	hmm_mem_stat.dyc_size++;
-}
-
-static int hmm_dynamic_pool_init(void **pool, unsigned int pool_size)
-{
-	struct hmm_dynamic_pool_info *dypool_info;
-
-	if (pool_size == 0)
-		return 0;
-
-	dypool_info = kmalloc(sizeof(struct hmm_dynamic_pool_info),
-			      GFP_KERNEL);
-	if (unlikely(!dypool_info))
-		return -ENOMEM;
-
-	dypool_info->pgptr_cache = kmem_cache_create("pgptr_cache",
-				   sizeof(struct hmm_page), 0,
-				   SLAB_HWCACHE_ALIGN, NULL);
-	if (!dypool_info->pgptr_cache) {
-		kfree(dypool_info);
-		return -ENOMEM;
-	}
-
-	INIT_LIST_HEAD(&dypool_info->pages_list);
-	spin_lock_init(&dypool_info->list_lock);
-	dypool_info->initialized = true;
-	dypool_info->pool_size = pool_size;
-	dypool_info->pgnr = 0;
-
-	*pool = dypool_info;
-
-	return 0;
-}
-
-static void hmm_dynamic_pool_exit(void **pool)
-{
-	struct hmm_dynamic_pool_info *dypool_info = *pool;
-	struct hmm_page *hmm_page;
-	unsigned long flags;
-	int ret;
-
-	if (!dypool_info)
-		return;
-
-	spin_lock_irqsave(&dypool_info->list_lock, flags);
-	if (!dypool_info->initialized) {
-		spin_unlock_irqrestore(&dypool_info->list_lock, flags);
-		return;
-	}
-	dypool_info->initialized = false;
-
-	while (!list_empty(&dypool_info->pages_list)) {
-		hmm_page = list_entry(dypool_info->pages_list.next,
-				      struct hmm_page, list);
-
-		list_del(&hmm_page->list);
-		spin_unlock_irqrestore(&dypool_info->list_lock, flags);
-
-		/* can cause thread sleep, so cannot be put into spin_lock */
-		ret = set_pages_wb(hmm_page->page, 1);
-		if (ret)
-			dev_err(atomisp_dev,
-				"set page to WB err...ret=%d\n", ret);
-		if (!ret) {
-			__free_pages(hmm_page->page, 0);
-			hmm_mem_stat.dyc_size--;
-			hmm_mem_stat.sys_size--;
-		}
-		kmem_cache_free(dypool_info->pgptr_cache, hmm_page);
-		spin_lock_irqsave(&dypool_info->list_lock, flags);
-	}
-
-	spin_unlock_irqrestore(&dypool_info->list_lock, flags);
-
-	kmem_cache_destroy(dypool_info->pgptr_cache);
-
-	kfree(dypool_info);
-
-	*pool = NULL;
-}
-
-static int hmm_dynamic_pool_inited(void *pool)
-{
-	struct hmm_dynamic_pool_info *dypool_info = pool;
-
-	if (!dypool_info)
-		return 0;
-
-	return dypool_info->initialized;
-}
-
-struct hmm_pool_ops dynamic_pops = {
-	.pool_init		= hmm_dynamic_pool_init,
-	.pool_exit		= hmm_dynamic_pool_exit,
-	.pool_alloc_pages	= get_pages_from_dynamic_pool,
-	.pool_free_pages	= free_pages_to_dynamic_pool,
-	.pool_inited		= hmm_dynamic_pool_inited,
-};
diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm_vm.c b/drivers/staging/media/atomisp/pci/hmm/hmm_vm.c
deleted file mode 100644
index 976a2cb51354..000000000000
--- a/drivers/staging/media/atomisp/pci/hmm/hmm_vm.c
+++ /dev/null
@@ -1,212 +0,0 @@
-/*
- * Support for Medifield PNW Camera Imaging ISP subsystem.
- *
- * Copyright (c) 2010 Intel Corporation. All Rights Reserved.
- *
- * Copyright (c) 2010 Silicon Hive www.siliconhive.com.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version
- * 2 as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- */
-/*
- * This file contains function for ISP virtual address management in ISP driver
- */
-#include <linux/kernel.h>
-#include <linux/types.h>
-#include <linux/mm.h>
-#include <linux/slab.h>
-#include <asm/page.h>
-
-#include "atomisp_internal.h"
-#include "mmu/isp_mmu.h"
-#include "hmm/hmm_vm.h"
-#include "hmm/hmm_common.h"
-
-static unsigned int vm_node_end(unsigned int start, unsigned int pgnr)
-{
-	return start + pgnr_to_size(pgnr);
-}
-
-static int addr_in_vm_node(unsigned int addr,
-			   struct hmm_vm_node *node)
-{
-	return (addr >= node->start) && (addr < (node->start + node->size));
-}
-
-int hmm_vm_init(struct hmm_vm *vm, unsigned int start,
-		unsigned int size)
-{
-	if (!vm)
-		return -1;
-
-	vm->start = start;
-	vm->pgnr = size_to_pgnr_ceil(size);
-	vm->size = pgnr_to_size(vm->pgnr);
-
-	INIT_LIST_HEAD(&vm->vm_node_list);
-	spin_lock_init(&vm->lock);
-	vm->cache = kmem_cache_create("atomisp_vm", sizeof(struct hmm_vm_node),
-				      0, 0, NULL);
-
-	return vm->cache ? 0 : -ENOMEM;
-}
-
-void hmm_vm_clean(struct hmm_vm *vm)
-{
-	struct hmm_vm_node *node, *tmp;
-	struct list_head new_head;
-
-	if (!vm)
-		return;
-
-	spin_lock(&vm->lock);
-	list_replace_init(&vm->vm_node_list, &new_head);
-	spin_unlock(&vm->lock);
-
-	list_for_each_entry_safe(node, tmp, &new_head, list) {
-		list_del(&node->list);
-		kmem_cache_free(vm->cache, node);
-	}
-
-	kmem_cache_destroy(vm->cache);
-}
-
-static struct hmm_vm_node *alloc_hmm_vm_node(unsigned int pgnr,
-	struct hmm_vm *vm)
-{
-	struct hmm_vm_node *node;
-
-	node = kmem_cache_alloc(vm->cache, GFP_KERNEL);
-	if (!node)
-		return NULL;
-
-	INIT_LIST_HEAD(&node->list);
-	node->pgnr = pgnr;
-	node->size = pgnr_to_size(pgnr);
-	node->vm = vm;
-
-	return node;
-}
-
-struct hmm_vm_node *hmm_vm_alloc_node(struct hmm_vm *vm, unsigned int pgnr)
-{
-	struct list_head *head;
-	struct hmm_vm_node *node, *cur, *next;
-	unsigned int vm_start, vm_end;
-	unsigned int addr;
-	unsigned int size;
-
-	if (!vm)
-		return NULL;
-
-	vm_start = vm->start;
-	vm_end = vm_node_end(vm->start, vm->pgnr);
-	size = pgnr_to_size(pgnr);
-
-	addr = vm_start;
-	head = &vm->vm_node_list;
-
-	node = alloc_hmm_vm_node(pgnr, vm);
-	if (!node) {
-		dev_err(atomisp_dev, "no memory to allocate hmm vm node.\n");
-		return NULL;
-	}
-
-	spin_lock(&vm->lock);
-	/*
-	 * if list is empty, the loop code will not be executed.
-	 */
-	list_for_each_entry(cur, head, list) {
-		/* Add gap between vm areas as helper to not hide overflow */
-		addr = PAGE_ALIGN(vm_node_end(cur->start, cur->pgnr) + 1);
-
-		if (list_is_last(&cur->list, head)) {
-			if (addr + size > vm_end) {
-				/* vm area does not have space anymore */
-				spin_unlock(&vm->lock);
-				kmem_cache_free(vm->cache, node);
-				dev_err(atomisp_dev,
-					"no enough virtual address space.\n");
-				return NULL;
-			}
-
-			/* We still have vm space to add new node to tail */
-			break;
-		}
-
-		next = list_entry(cur->list.next, struct hmm_vm_node, list);
-		if ((next->start - addr) > size)
-			break;
-	}
-	node->start = addr;
-	node->vm = vm;
-	list_add(&node->list, &cur->list);
-	spin_unlock(&vm->lock);
-
-	return node;
-}
-
-void hmm_vm_free_node(struct hmm_vm_node *node)
-{
-	struct hmm_vm *vm;
-
-	if (!node)
-		return;
-
-	vm = node->vm;
-
-	spin_lock(&vm->lock);
-	list_del(&node->list);
-	spin_unlock(&vm->lock);
-
-	kmem_cache_free(vm->cache, node);
-}
-
-struct hmm_vm_node *hmm_vm_find_node_start(struct hmm_vm *vm, unsigned int addr)
-{
-	struct hmm_vm_node *node;
-
-	if (!vm)
-		return NULL;
-
-	spin_lock(&vm->lock);
-
-	list_for_each_entry(node, &vm->vm_node_list, list) {
-		if (node->start == addr) {
-			spin_unlock(&vm->lock);
-			return node;
-		}
-	}
-
-	spin_unlock(&vm->lock);
-	return NULL;
-}
-
-struct hmm_vm_node *hmm_vm_find_node_in_range(struct hmm_vm *vm,
-	unsigned int addr)
-{
-	struct hmm_vm_node *node;
-
-	if (!vm)
-		return NULL;
-
-	spin_lock(&vm->lock);
-
-	list_for_each_entry(node, &vm->vm_node_list, list) {
-		if (addr_in_vm_node(addr, node)) {
-			spin_unlock(&vm->lock);
-			return node;
-		}
-	}
-
-	spin_unlock(&vm->lock);
-	return NULL;
-}
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

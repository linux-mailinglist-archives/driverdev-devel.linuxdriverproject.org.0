Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD601E575B
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 May 2020 08:14:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC1A188B3D;
	Thu, 28 May 2020 06:14:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GGRR2EfZgqSu; Thu, 28 May 2020 06:14:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26F4088973;
	Thu, 28 May 2020 06:14:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 75AF11BF9B5
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 06:14:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6F86986E71
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 06:14:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0nizWEzKkJOP for <devel@linuxdriverproject.org>;
 Thu, 28 May 2020 06:14:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2058D86D7B
 for <devel@driverdev.osuosl.org>; Thu, 28 May 2020 06:14:26 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A90AE208E4;
 Thu, 28 May 2020 06:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590646466;
 bh=WsVvzi9uhfGTujCG9iTqmDUj8mx9b/KZJKhMGHKz6B4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FlfcsWjUEHiOFOsYvIXkO6ANUTvegKSpunWzvNUybv9Id2Jx5mYU/N+/kQvLt65Fy
 WyPNW/ax2LQSjMKTdGV5QpAtYr+t34Enco8cqNN+5fAmv/eG7EjLHOhVvG9pVFrLOx
 KpFIuEN6des8DeiTwA5S5Z3WsobffyyRYEVOePPs=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jeBo7-000VH7-MG; Thu, 28 May 2020 08:14:23 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 02/20] media: atomisp: get rid of the hrt/hive_isp_css_mm_hrt
 abstraction layer
Date: Thu, 28 May 2020 08:14:02 +0200
Message-Id: <5297f518f7355f5fbfb003bbf98fd1f6d54eceeb.1590646166.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590646166.git.mchehab+huawei@kernel.org>
References: <cover.1590646166.git.mchehab+huawei@kernel.org>
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

Simplify the code by removing this extra memory management
abstraction layer.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/Makefile        |  1 -
 .../staging/media/atomisp/pci/atomisp_acc.c   | 24 ++++---
 .../staging/media/atomisp/pci/atomisp_cmd.c   |  2 +-
 .../media/atomisp/pci/atomisp_compat.h        |  2 +-
 .../media/atomisp/pci/atomisp_compat_css20.c  |  6 +-
 .../staging/media/atomisp/pci/atomisp_fops.c  |  2 -
 .../staging/media/atomisp/pci/atomisp_ioctl.c |  7 +-
 .../staging/media/atomisp/pci/atomisp_v4l2.c  |  2 -
 .../memory_access/memory_access.h             |  2 +-
 .../atomisp/pci/hrt/hive_isp_css_mm_hrt.c     | 71 -------------------
 .../atomisp/pci/hrt/hive_isp_css_mm_hrt.h     | 45 ------------
 .../media/atomisp/pci/ia_css_frame_public.h   |  2 +-
 .../media/atomisp/pci/ia_css_memory_access.c  | 43 ++++++-----
 .../atomisp/pci/runtime/frame/src/frame.c     |  4 +-
 14 files changed, 50 insertions(+), 163 deletions(-)
 delete mode 100644 drivers/staging/media/atomisp/pci/hrt/hive_isp_css_mm_hrt.c
 delete mode 100644 drivers/staging/media/atomisp/pci/hrt/hive_isp_css_mm_hrt.h

diff --git a/drivers/staging/media/atomisp/Makefile b/drivers/staging/media/atomisp/Makefile
index b48eb7946a58..889227dcebfe 100644
--- a/drivers/staging/media/atomisp/Makefile
+++ b/drivers/staging/media/atomisp/Makefile
@@ -53,7 +53,6 @@ atomisp-objs += \
 	pci/hmm/hmm_dynamic_pool.o \
 	pci/hmm/hmm.o \
 	pci/hmm/hmm_reserved_pool.o \
-	pci/hrt/hive_isp_css_mm_hrt.o \
 	pci/ia_css_device_access.o \
 	pci/ia_css_memory_access.o \
 	pci/isp/kernels/aa/aa_2/ia_css_aa2.host.o \
diff --git a/drivers/staging/media/atomisp/pci/atomisp_acc.c b/drivers/staging/media/atomisp/pci/atomisp_acc.c
index bb1f60fab786..5e7f4cd47c8f 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_acc.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_acc.c
@@ -28,7 +28,6 @@
 #include "atomisp_compat.h"
 #include "atomisp_cmd.h"
 
-#include "hrt/hive_isp_css_mm_hrt.h"
 #include "memory_access/memory_access.h"
 #include "ia_css.h"
 
@@ -353,16 +352,23 @@ int atomisp_acc_map(struct atomisp_sub_device *asd, struct atomisp_acc_map *map)
 		}
 
 		pgnr = DIV_ROUND_UP(map->length, PAGE_SIZE);
-		cssptr = hrt_isp_css_mm_alloc_user_ptr(map->length,
-						       map->user_ptr,
-						       pgnr,
-						       (map->flags & ATOMISP_MAP_FLAG_CACHED));
+		if (pgnr < ((PAGE_ALIGN(map->length)) >> PAGE_SHIFT)) {
+			dev_err(atomisp_dev,
+				"user space memory size is less than the expected size..\n");
+			return -ENOMEM;
+		} else if (pgnr > ((PAGE_ALIGN(map->length)) >> PAGE_SHIFT)) {
+			dev_err(atomisp_dev,
+				"user space memory size is large than the expected size..\n");
+			return -ENOMEM;
+		}
+
+		cssptr = hmm_alloc(map->length, HMM_BO_USER, 0, map->user_ptr,
+				   map->flags & ATOMISP_MAP_FLAG_CACHED);
+
 	} else {
 		/* Allocate private buffer. */
-		if (map->flags & ATOMISP_MAP_FLAG_CACHED)
-			cssptr = hrt_isp_css_mm_calloc_cached(map->length);
-		else
-			cssptr = hrt_isp_css_mm_calloc(map->length);
+		cssptr = hmm_alloc(map->length, HMM_BO_PRIVATE, 0, NULL,
+				   map->flags & ATOMISP_MAP_FLAG_CACHED);
 	}
 
 	if (!cssptr)
diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 900f1ccc25fe..4913469df2bb 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -44,7 +44,7 @@
 #include "atomisp_subdev.h"
 #include "atomisp_dfs_tables.h"
 
-#include "hrt/hive_isp_css_mm_hrt.h"
+#include <hmm/hmm.h>
 
 #include "sh_css_hrt.h"
 #include "sh_css_defs.h"
diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat.h b/drivers/staging/media/atomisp/pci/atomisp_compat.h
index 8847e104bb65..8693f228a875 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat.h
@@ -261,7 +261,7 @@ void atomisp_css_frame_free(struct ia_css_frame *frame);
 int atomisp_css_frame_map(struct ia_css_frame **frame,
 			  const struct ia_css_frame_info *info,
 			  const void __user *data, uint16_t attribute,
-			  void *context);
+			  unsigned int pgnr);
 
 int atomisp_css_set_black_frame(struct atomisp_sub_device *asd,
 				const struct ia_css_frame *raw_black_frame);
diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
index f1798b473dbd..f39b0ad85cfa 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
@@ -32,8 +32,6 @@
 #include "atomisp_ioctl.h"
 #include "atomisp_acc.h"
 
-#include "hrt/hive_isp_css_mm_hrt.h"
-
 #include <asm/intel-mid.h>
 
 #include "ia_css_debug.h"
@@ -2187,9 +2185,9 @@ void atomisp_css_frame_free(struct ia_css_frame *frame)
 int atomisp_css_frame_map(struct ia_css_frame **frame,
 			  const struct ia_css_frame_info *info,
 			  const void __user *data, uint16_t attribute,
-			  void *context)
+			  unsigned int pgnr)
 {
-	if (ia_css_frame_map(frame, info, data, attribute, context)
+	if (ia_css_frame_map(frame, info, data, attribute, pgnr)
 	    != IA_CSS_SUCCESS)
 		return -ENOMEM;
 
diff --git a/drivers/staging/media/atomisp/pci/atomisp_fops.c b/drivers/staging/media/atomisp/pci/atomisp_fops.c
index 0ed1142e69fc..fc3043bded46 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_fops.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_fops.c
@@ -34,8 +34,6 @@
 #include "atomisp-regs.h"
 #include "hmm/hmm.h"
 
-#include "hrt/hive_isp_css_mm_hrt.h"
-
 #include "type_support.h"
 #include "device_access/device_access.h"
 #include "memory_access/memory_access.h"
diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
index 8aea90ecd508..8783d4b59f6d 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
@@ -39,8 +39,6 @@
 #include "device_access.h"
 #include "irq.h"
 
-#include "hrt/hive_isp_css_mm_hrt.h"
-
 static const char *DRIVER = "atomisp";	/* max size 15 */
 static const char *CARD = "ATOM ISP";	/* max size 31 */
 
@@ -1183,8 +1181,6 @@ static int atomisp_qbuf(struct file *file, void *fh, struct v4l2_buffer *buf)
 	 * address and reprograme out page table properly
 	 */
 	if (buf->memory == V4L2_MEMORY_USERPTR) {
-		struct hrt_userbuffer_attr attributes;
-
 		vb = pipe->capq.bufs[buf->index];
 		vm_mem = vb->priv;
 		if (!vm_mem) {
@@ -1204,10 +1200,9 @@ static int atomisp_qbuf(struct file *file, void *fh, struct v4l2_buffer *buf)
 			goto error;
 		}
 
-		attributes.pgnr = pgnr;
 		ret = atomisp_css_frame_map(&handle, &frame_info,
 					    (void __user *)buf->m.userptr,
-					    0, &attributes);
+					    0, pgnr);
 		if (ret) {
 			dev_err(isp->dev, "Failed to map user buffer\n");
 			goto error;
diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index 5dc84c45965c..d795fe49130c 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -42,8 +42,6 @@
 #include "hmm/hmm.h"
 #include "atomisp_trace_event.h"
 
-#include "hrt/hive_isp_css_mm_hrt.h"
-
 #include "device_access.h"
 
 /* Timeouts to wait for all subdevs to be registered */
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/memory_access/memory_access.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/memory_access/memory_access.h
index dc63ff0c9c6a..cdba741dfdf2 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/memory_access/memory_access.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_include/memory_access/memory_access.h
@@ -140,7 +140,7 @@ hrt_vaddress mmgr_mmap(
     const void __user *ptr,
     const size_t size,
     u16 attribute,
-    void *context);
+    unsigned int pgnr);
 
 /*! Zero initialise an allocation in memory
 
diff --git a/drivers/staging/media/atomisp/pci/hrt/hive_isp_css_mm_hrt.c b/drivers/staging/media/atomisp/pci/hrt/hive_isp_css_mm_hrt.c
deleted file mode 100644
index 14e02fd76ddf..000000000000
--- a/drivers/staging/media/atomisp/pci/hrt/hive_isp_css_mm_hrt.c
+++ /dev/null
@@ -1,71 +0,0 @@
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
-#include "atomisp_internal.h"
-
-#include "hive_isp_css_mm_hrt.h"
-#include "hmm/hmm.h"
-
-#define __page_align(size)	(((size) + (PAGE_SIZE - 1)) & (~(PAGE_SIZE - 1)))
-
-ia_css_ptr hrt_isp_css_mm_alloc(size_t bytes)
-{
-	return hmm_alloc(bytes, HMM_BO_PRIVATE, 0, NULL, false);
-}
-
-ia_css_ptr hrt_isp_css_mm_alloc_user_ptr(size_t bytes,
-	const void __user *userptr,
-	unsigned int num_pages,
-	bool cached)
-{
-	if (num_pages < ((__page_align(bytes)) >> PAGE_SHIFT))
-		dev_err(atomisp_dev,
-			"user space memory size is less than the expected size..\n");
-	else if (num_pages > ((__page_align(bytes))
-				>> PAGE_SHIFT))
-		dev_err(atomisp_dev,
-			"user space memory size is large than the expected size..\n");
-
-	return hmm_alloc(bytes, HMM_BO_USER, 0,
-			    userptr, cached);
-}
-
-ia_css_ptr hrt_isp_css_mm_alloc_cached(size_t bytes)
-{
-	return hmm_alloc(bytes, HMM_BO_PRIVATE, 0, NULL,
-				 HMM_CACHED);
-}
-
-ia_css_ptr hrt_isp_css_mm_calloc(size_t bytes)
-{
-	ia_css_ptr ptr = hrt_isp_css_mm_alloc(bytes);
-
-	if (ptr)
-		hmm_set(ptr, 0, bytes);
-	return ptr;
-}
-
-ia_css_ptr hrt_isp_css_mm_calloc_cached(size_t bytes)
-{
-	ia_css_ptr ptr = hrt_isp_css_mm_alloc_cached(bytes);
-
-	if (ptr)
-		hmm_set(ptr, 0, bytes);
-	return ptr;
-}
diff --git a/drivers/staging/media/atomisp/pci/hrt/hive_isp_css_mm_hrt.h b/drivers/staging/media/atomisp/pci/hrt/hive_isp_css_mm_hrt.h
deleted file mode 100644
index e4c90c268c42..000000000000
--- a/drivers/staging/media/atomisp/pci/hrt/hive_isp_css_mm_hrt.h
+++ /dev/null
@@ -1,45 +0,0 @@
-/*
- * Support for Medfield PNW Camera Imaging ISP subsystem.
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
-#ifndef _hive_isp_css_mm_hrt_h_
-#define _hive_isp_css_mm_hrt_h_
-
-#include <hmm/hmm.h>
-#include <hrt/hive_isp_css_custom_host_hrt.h>
-
-#define HRT_BUF_FLAG_CACHED BIT(0)
-
-struct hrt_userbuffer_attr {
-	unsigned int		pgnr;
-};
-
-/* Allocate memory, returns a virtual address */
-ia_css_ptr hrt_isp_css_mm_alloc(size_t bytes);
-ia_css_ptr hrt_isp_css_mm_alloc_user_ptr(size_t bytes,
-	const void __user *userptr,
-	unsigned int num_pages,
-	bool cached);
-ia_css_ptr hrt_isp_css_mm_alloc_cached(size_t bytes);
-
-/* allocate memory and initialize with zeros,
-   returns a virtual address */
-ia_css_ptr hrt_isp_css_mm_calloc(size_t bytes);
-ia_css_ptr hrt_isp_css_mm_calloc_cached(size_t bytes);
-
-#endif /* _hive_isp_css_mm_hrt_h_ */
diff --git a/drivers/staging/media/atomisp/pci/ia_css_frame_public.h b/drivers/staging/media/atomisp/pci/ia_css_frame_public.h
index 69e9143e5418..ac7ed6c2e6fd 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_frame_public.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_frame_public.h
@@ -336,7 +336,7 @@ ia_css_frame_map(struct ia_css_frame **frame,
 		 const struct ia_css_frame_info *info,
 		 const void __user *data,
 		 u16 attribute,
-		 void *context);
+		 unsigned int pgnr);
 
 /* @brief Unmap a CSS frame structure.
  *
diff --git a/drivers/staging/media/atomisp/pci/ia_css_memory_access.c b/drivers/staging/media/atomisp/pci/ia_css_memory_access.c
index 6084d54acac3..ae9d453aed00 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_memory_access.c
+++ b/drivers/staging/media/atomisp/pci/ia_css_memory_access.c
@@ -17,7 +17,8 @@
 #include <assert_support.h>
 #include <memory_access.h>
 #include <ia_css_env.h>
-#include <hrt/hive_isp_css_mm_hrt.h>
+
+#include "atomisp_internal.h"
 
 const hrt_vaddress mmgr_NULL = (hrt_vaddress)0;
 const hrt_vaddress mmgr_EXCEPTION = (hrt_vaddress)-1;
@@ -31,20 +32,20 @@ mmgr_malloc(const size_t size)
 hrt_vaddress mmgr_alloc_attr(const size_t size, const uint16_t attrs)
 {
 	u16 masked_attrs = attrs & MMGR_ATTRIBUTE_MASK;
+	ia_css_ptr data;
 
 	WARN_ON(attrs & MMGR_ATTRIBUTE_CONTIGUOUS);
 
-	if (masked_attrs & MMGR_ATTRIBUTE_CLEARED) {
-		if (masked_attrs & MMGR_ATTRIBUTE_CACHED)
-			return (ia_css_ptr) hrt_isp_css_mm_calloc_cached(size);
-		else
-			return (ia_css_ptr) hrt_isp_css_mm_calloc(size);
-	} else {
-		if (masked_attrs & MMGR_ATTRIBUTE_CACHED)
-			return (ia_css_ptr) hrt_isp_css_mm_alloc_cached(size);
-		else
-			return (ia_css_ptr) hrt_isp_css_mm_alloc(size);
-	}
+	data = hmm_alloc(size, HMM_BO_PRIVATE, 0, NULL,
+			 masked_attrs & MMGR_ATTRIBUTE_CACHED);
+
+	if (!data)
+		return 0;
+
+	if (masked_attrs & MMGR_ATTRIBUTE_CLEARED)
+		hmm_set(data, 0, size);
+
+	return (ia_css_ptr)data;
 }
 
 hrt_vaddress
@@ -74,11 +75,19 @@ mmgr_store(const hrt_vaddress vaddr, const void *data, const size_t size)
 
 hrt_vaddress
 mmgr_mmap(const void __user *ptr, const size_t size,
-	  u16 attribute, void *context)
+	  u16 attribute, unsigned int pgnr)
 {
-	struct hrt_userbuffer_attr *userbuffer_attr = context;
+	if (pgnr < ((PAGE_ALIGN(size)) >> PAGE_SHIFT)) {
+		dev_err(atomisp_dev,
+			"user space memory size is less than the expected size..\n");
+		return -ENOMEM;
+	} else if (pgnr > ((PAGE_ALIGN(size)) >> PAGE_SHIFT)) {
+		dev_err(atomisp_dev,
+			"user space memory size is large than the expected size..\n");
+		return -ENOMEM;
+	}
+
+	return hmm_alloc(size, HMM_BO_USER, 0, ptr,
+			 attribute & MMGR_ATTRIBUTE_CACHED);
 
-	return hrt_isp_css_mm_alloc_user_ptr(
-		   size, ptr, userbuffer_attr->pgnr,
-		   attribute & HRT_BUF_FLAG_CACHED);
 }
diff --git a/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c b/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c
index fcd8b06034f2..0c1e30f2923b 100644
--- a/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c
+++ b/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c
@@ -152,7 +152,7 @@ enum ia_css_err ia_css_frame_map(struct ia_css_frame **frame,
 				 const struct ia_css_frame_info *info,
 				 const void __user *data,
 				 u16 attribute,
-				 void *context)
+				 unsigned int pgnr)
 {
 	enum ia_css_err err = IA_CSS_SUCCESS;
 	struct ia_css_frame *me;
@@ -169,7 +169,7 @@ enum ia_css_err ia_css_frame_map(struct ia_css_frame **frame,
 		/* use mmgr_mmap to map */
 		me->data = (ia_css_ptr) mmgr_mmap(data,
 						  me->data_bytes,
-						  attribute, context);
+						  attribute, pgnr);
 		if (me->data == mmgr_NULL)
 			err = IA_CSS_ERR_INVALID_ARGUMENTS;
 	}
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

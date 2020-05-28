Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E84341E5756
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 May 2020 08:14:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1988B25397;
	Thu, 28 May 2020 06:14:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QKWbMo+8A3OZ; Thu, 28 May 2020 06:14:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D72E725067;
	Thu, 28 May 2020 06:14:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C54751BF9B5
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 06:14:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C0F9686F13
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 06:14:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 71FGZq-QDDWg for <devel@linuxdriverproject.org>;
 Thu, 28 May 2020 06:14:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 21CA586E71
 for <devel@driverdev.osuosl.org>; Thu, 28 May 2020 06:14:26 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D51742151B;
 Thu, 28 May 2020 06:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590646466;
 bh=payUHdblQ9WpxUJ095ppuUef0wMW0WnZ1KqZslhe2T8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sxyPVnaTEOjaOw+xHmpAMALNN8CDFh7/ZnBZxYp3S7xbL4BBmZKHmPYzPQlm5+D0k
 rxjtr+Mi1u8iamGiZTZDiqRPjlLZIZfYB2U3B/rXcUCUZm0hNIyeCOwacpC/GBnL3p
 lK5INCE6WDkr6CP8tdVt3sJKCIlgsHd5mVe54J6I=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jeBo7-000VHQ-Sn; Thu, 28 May 2020 08:14:23 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 06/20] media: atomisp: get rid of unused memory_realloc code
Date: Thu, 28 May 2020 08:14:06 +0200
Message-Id: <2a29be97d37d18d15d1b64e70b36f93a4180ddd1.1590646166.git.mchehab+huawei@kernel.org>
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

The code for it is commented out, probably because it is
broken or uneeded for the driver to work. So, let's get
rid of it.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/Makefile        |  1 -
 .../pci/hive_isp_css_include/memory_realloc.h | 38 ---------
 .../media/atomisp/pci/memory_realloc.c        | 80 -------------------
 .../staging/media/atomisp/pci/sh_css_params.c |  4 +-
 4 files changed, 1 insertion(+), 122 deletions(-)
 delete mode 100644 drivers/staging/media/atomisp/pci/hive_isp_css_include/memory_realloc.h
 delete mode 100644 drivers/staging/media/atomisp/pci/memory_realloc.c

diff --git a/drivers/staging/media/atomisp/Makefile b/drivers/staging/media/atomisp/Makefile
index 889227dcebfe..4a77d6d6910d 100644
--- a/drivers/staging/media/atomisp/Makefile
+++ b/drivers/staging/media/atomisp/Makefile
@@ -115,7 +115,6 @@ atomisp-objs += \
 	pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.o \
 	pci/isp/kernels/ynr/ynr_1.0/ia_css_ynr.host.o \
 	pci/isp/kernels/ynr/ynr_2/ia_css_ynr2.host.o \
-	pci/memory_realloc.o \
 	pci/mmu/isp_mmu.o \
 	pci/mmu/sh_mmu_mrfld.o \
 	pci/runtime/binary/src/binary.o \
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/memory_realloc.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/memory_realloc.h
deleted file mode 100644
index 546b93ca1186..000000000000
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/memory_realloc.h
+++ /dev/null
@@ -1,38 +0,0 @@
-/**
-Support for Intel Camera Imaging ISP subsystem.
-Copyright (c) 2010 - 2015, Intel Corporation.
-
-This program is free software; you can redistribute it and/or modify it
-under the terms and conditions of the GNU General Public License,
-version 2, as published by the Free Software Foundation.
-
-This program is distributed in the hope it will be useful, but WITHOUT
-ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
-more details.
-*/
-#ifndef __MEMORY_REALLOC_H_INCLUDED__
-#define __MEMORY_REALLOC_H_INCLUDED__
-
-/*!
- * \brief
- * Define the internal reallocation of private css memory
- *
- */
-
-#include <type_support.h>
-/*
- * User provided file that defines the (sub)system address types:
- *	- hrt_vaddress	a type that can hold the (sub)system virtual address range
- */
-#include "system_types.h"
-#include "ia_css_err.h"
-
-bool reallocate_buffer(
-    hrt_vaddress *curr_buf,
-    size_t *curr_size,
-    size_t needed_size,
-    bool force,
-    enum ia_css_err *err);
-
-#endif /*__MEMORY_REALLOC_H_INCLUDED__*/
diff --git a/drivers/staging/media/atomisp/pci/memory_realloc.c b/drivers/staging/media/atomisp/pci/memory_realloc.c
deleted file mode 100644
index ec0a078e65f9..000000000000
--- a/drivers/staging/media/atomisp/pci/memory_realloc.c
+++ /dev/null
@@ -1,80 +0,0 @@
-/*
-Support for Intel Camera Imaging ISP subsystem.
-Copyright (c) 2010 - 2015, Intel Corporation.
-
-This program is free software; you can redistribute it and/or modify it
-under the terms and conditions of the GNU General Public License,
-version 2, as published by the Free Software Foundation.
-
-This program is distributed in the hope it will be useful, but WITHOUT
-ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
-more details.
-*/
-#include "memory_realloc.h"
-#include "ia_css_debug.h"
-#include "ia_css_refcount.h"
-#include "memory_access.h"
-
-static bool realloc_isp_css_mm_buf(
-    hrt_vaddress *curr_buf,
-    size_t *curr_size,
-    size_t needed_size,
-    bool force,
-    enum ia_css_err *err,
-    uint16_t mmgr_attribute);
-
-bool reallocate_buffer(
-    hrt_vaddress *curr_buf,
-    size_t *curr_size,
-    size_t needed_size,
-    bool force,
-    enum ia_css_err *err)
-{
-	bool ret;
-
-	IA_CSS_ENTER_PRIVATE("void");
-
-	ret = realloc_isp_css_mm_buf(curr_buf,
-				     curr_size, needed_size, force, err, 0);
-
-	IA_CSS_LEAVE_PRIVATE("ret=%d", ret);
-	return ret;
-}
-
-static bool realloc_isp_css_mm_buf(
-    hrt_vaddress *curr_buf,
-    size_t *curr_size,
-    size_t needed_size,
-    bool force,
-    enum ia_css_err *err,
-    uint16_t mmgr_attribute)
-{
-	s32 id;
-
-	*err = IA_CSS_SUCCESS;
-	/* Possible optimization: add a function sh_css_isp_css_mm_realloc()
-	 * and implement on top of hmm. */
-
-	IA_CSS_ENTER_PRIVATE("void");
-
-	if (ia_css_refcount_is_single(*curr_buf) && !force &&
-	    *curr_size >= needed_size) {
-		IA_CSS_LEAVE_PRIVATE("false");
-		return false;
-	}
-
-	id = IA_CSS_REFCOUNT_PARAM_BUFFER;
-	ia_css_refcount_decrement(id, *curr_buf);
-	*curr_buf = ia_css_refcount_increment(id, mmgr_alloc_attr(needed_size,
-					      mmgr_attribute));
-
-	if (!*curr_buf) {
-		*err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
-		*curr_size = 0;
-	} else {
-		*curr_size = needed_size;
-	}
-	IA_CSS_LEAVE_PRIVATE("true");
-	return true;
-}
diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.c b/drivers/staging/media/atomisp/pci/sh_css_params.c
index 890f8e74a85d..70a8e7ae765e 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_params.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_params.c
@@ -46,9 +46,7 @@
 #include "ia_css_pipeline.h"
 #include "ia_css_debug.h"
 #include "memory_access.h"
-#if 0   /* FIXME */
-#include "memory_realloc.h"
-#endif
+
 #include "ia_css_isp_param.h"
 #include "ia_css_isp_params.h"
 #include "ia_css_mipi.h"
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

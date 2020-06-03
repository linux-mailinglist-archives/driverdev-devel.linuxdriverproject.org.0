Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CDC1EC9F7
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jun 2020 09:01:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4A22722797;
	Wed,  3 Jun 2020 07:01:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K436YMQRwDBC; Wed,  3 Jun 2020 07:01:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3537021515;
	Wed,  3 Jun 2020 07:01:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 20D051BF9B3
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 07:01:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1D82588773
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 07:01:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J8G7LzPPBJH4 for <devel@linuxdriverproject.org>;
 Wed,  3 Jun 2020 07:01:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DEFEE88781
 for <devel@driverdev.osuosl.org>; Wed,  3 Jun 2020 07:01:05 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82E28207DA;
 Wed,  3 Jun 2020 07:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591167665;
 bh=726xFVF7IIAMWok/JzclpdaLkSETydAbYT1Vt3Cjp8E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vu9BNj2fM3gbZHbWhjuubDiMS4qI0xLAieNaacl7R6P2L575yK/TRs0dXm4ztihx6
 CUYFREUQ5pmlVqEBwd209t4YlMNmf0dGpLgpVkx6TEmAvajjlwXlhnf858E08zP5jM
 uewOtnehIHmdlfzbUswDdGDf0J9eMlkFaZpzCEWI=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jgNOZ-004j8C-75; Wed, 03 Jun 2020 09:01:03 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 03/15] media: atomisp: get rid of a duplicated file
Date: Wed,  3 Jun 2020 09:00:49 +0200
Message-Id: <5a1fbf15b2a720f74f0548edcd27690efbaffe67.1591167358.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1591167358.git.mchehab+huawei@kernel.org>
References: <cover.1591167358.git.mchehab+huawei@kernel.org>
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
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The contents of hive_isp_css_2401_irq_types_hrt.h and
hive_isp_css_common/irq_global.h are identical, except for
one unused enum:

On isp2401, this IRQ line has this name:

	hrt_isp_css_irq_is2401 = HIVE_GP_DEV_IRQ_ISP_PMEM_ERROR_BIT_ID,

While the same bit is named as:
	hrt_isp_css_irq_isp_pmem_error = HIVE_GP_DEV_IRQ_ISP_PMEM_ERROR_BIT_ID,

At the isp2400 version.

Remove one of them, in order to reduce the code differences
between those two versions.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../pci/hive_isp_css_2401_irq_types_hrt.h     | 69 -------------------
 .../pci/hive_isp_css_common/irq_global.h      | 10 +--
 ...sp_css_irq_types_hrt.h => irq_types_hrt.h} |  0
 3 files changed, 1 insertion(+), 78 deletions(-)
 delete mode 100644 drivers/staging/media/atomisp/pci/hive_isp_css_2401_irq_types_hrt.h
 rename drivers/staging/media/atomisp/pci/{css_2400_system/hrt/hive_isp_css_irq_types_hrt.h => irq_types_hrt.h} (100%)

diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_2401_irq_types_hrt.h b/drivers/staging/media/atomisp/pci/hive_isp_css_2401_irq_types_hrt.h
deleted file mode 100644
index 69fefe634a6a..000000000000
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_2401_irq_types_hrt.h
+++ /dev/null
@@ -1,69 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Support for Intel Camera Imaging ISP subsystem.
- * Copyright (c) 2015, Intel Corporation.
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#ifndef _HIVE_ISP_CSS_2401_IRQ_TYPES_HRT_H_
-#define _HIVE_ISP_CSS_2401_IRQ_TYPES_HRT_H_
-
-/*
- * These are the indices of each interrupt in the interrupt
- * controller's registers. these can be used as the irq_id
- * argument to the hrt functions irq_controller.h.
- *
- * The definitions are taken from <system>_defs.h
- */
-typedef enum hrt_isp_css_irq {
-	hrt_isp_css_irq_gpio_pin_0           = HIVE_GP_DEV_IRQ_GPIO_PIN_0_BIT_ID,
-	hrt_isp_css_irq_gpio_pin_1           = HIVE_GP_DEV_IRQ_GPIO_PIN_1_BIT_ID,
-	hrt_isp_css_irq_gpio_pin_2           = HIVE_GP_DEV_IRQ_GPIO_PIN_2_BIT_ID,
-	hrt_isp_css_irq_gpio_pin_3           = HIVE_GP_DEV_IRQ_GPIO_PIN_3_BIT_ID,
-	hrt_isp_css_irq_gpio_pin_4           = HIVE_GP_DEV_IRQ_GPIO_PIN_4_BIT_ID,
-	hrt_isp_css_irq_gpio_pin_5           = HIVE_GP_DEV_IRQ_GPIO_PIN_5_BIT_ID,
-	hrt_isp_css_irq_gpio_pin_6           = HIVE_GP_DEV_IRQ_GPIO_PIN_6_BIT_ID,
-	hrt_isp_css_irq_gpio_pin_7           = HIVE_GP_DEV_IRQ_GPIO_PIN_7_BIT_ID,
-	hrt_isp_css_irq_gpio_pin_8           = HIVE_GP_DEV_IRQ_GPIO_PIN_8_BIT_ID,
-	hrt_isp_css_irq_gpio_pin_9           = HIVE_GP_DEV_IRQ_GPIO_PIN_9_BIT_ID,
-	hrt_isp_css_irq_gpio_pin_10          = HIVE_GP_DEV_IRQ_GPIO_PIN_10_BIT_ID,
-	hrt_isp_css_irq_gpio_pin_11          = HIVE_GP_DEV_IRQ_GPIO_PIN_11_BIT_ID,
-	hrt_isp_css_irq_sp                   = HIVE_GP_DEV_IRQ_SP_BIT_ID,
-	hrt_isp_css_irq_isp                  = HIVE_GP_DEV_IRQ_ISP_BIT_ID,
-	hrt_isp_css_irq_isys                 = HIVE_GP_DEV_IRQ_ISYS_BIT_ID,
-	hrt_isp_css_irq_isel                 = HIVE_GP_DEV_IRQ_ISEL_BIT_ID,
-	hrt_isp_css_irq_ifmt                 = HIVE_GP_DEV_IRQ_IFMT_BIT_ID,
-	hrt_isp_css_irq_sp_stream_mon        = HIVE_GP_DEV_IRQ_SP_STREAM_MON_BIT_ID,
-	hrt_isp_css_irq_isp_stream_mon       = HIVE_GP_DEV_IRQ_ISP_STREAM_MON_BIT_ID,
-	hrt_isp_css_irq_mod_stream_mon       = HIVE_GP_DEV_IRQ_MOD_STREAM_MON_BIT_ID,
-	hrt_isp_css_irq_is2401               = HIVE_GP_DEV_IRQ_ISP_PMEM_ERROR_BIT_ID,
-	hrt_isp_css_irq_isp_bamem_error      = HIVE_GP_DEV_IRQ_ISP_BAMEM_ERROR_BIT_ID,
-	hrt_isp_css_irq_isp_dmem_error       = HIVE_GP_DEV_IRQ_ISP_DMEM_ERROR_BIT_ID,
-	hrt_isp_css_irq_sp_icache_mem_error  = HIVE_GP_DEV_IRQ_SP_ICACHE_MEM_ERROR_BIT_ID,
-	hrt_isp_css_irq_sp_dmem_error        = HIVE_GP_DEV_IRQ_SP_DMEM_ERROR_BIT_ID,
-	hrt_isp_css_irq_mmu_cache_mem_error  = HIVE_GP_DEV_IRQ_MMU_CACHE_MEM_ERROR_BIT_ID,
-	hrt_isp_css_irq_gp_timer_0           = HIVE_GP_DEV_IRQ_GP_TIMER_0_BIT_ID,
-	hrt_isp_css_irq_gp_timer_1           = HIVE_GP_DEV_IRQ_GP_TIMER_1_BIT_ID,
-	hrt_isp_css_irq_sw_pin_0             = HIVE_GP_DEV_IRQ_SW_PIN_0_BIT_ID,
-	hrt_isp_css_irq_sw_pin_1             = HIVE_GP_DEV_IRQ_SW_PIN_1_BIT_ID,
-	hrt_isp_css_irq_dma                  = HIVE_GP_DEV_IRQ_DMA_BIT_ID,
-	hrt_isp_css_irq_sp_stream_mon_b      = HIVE_GP_DEV_IRQ_SP_STREAM_MON_B_BIT_ID,
-	/* this must (obviously) be the last on in the enum */
-	hrt_isp_css_irq_num_irqs
-} hrt_isp_css_irq_t;
-
-typedef enum hrt_isp_css_irq_status {
-	hrt_isp_css_irq_status_error,
-	hrt_isp_css_irq_status_more_irqs,
-	hrt_isp_css_irq_status_success
-} hrt_isp_css_irq_status_t;
-
-#endif /* _HIVE_ISP_CSS_2401_IRQ_TYPES_HRT_H_ */
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/irq_global.h b/drivers/staging/media/atomisp/pci/hive_isp_css_common/irq_global.h
index f8e9005dc9c1..4a1dea6dfd40 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/irq_global.h
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/irq_global.h
@@ -23,15 +23,7 @@
 
 /* We cannot include the (hrt host ID) file defining the "CSS_RECEIVER" property without side effects */
 #ifndef HAS_NO_RX
-#if defined(IS_ISP_2400_MAMOIADA_SYSTEM)
-/*#define CSS_RECEIVER testbench_isp_inp_sys_csi_receiver*/
-#include "hive_isp_css_irq_types_hrt.h"	/* enum	hrt_isp_css_irq */
-#elif defined(IS_ISP_2401_MAMOIADA_SYSTEM)
-/*#define CSS_RECEIVER testbench_isp_is_2400_inp_sys_csi_receiver*/
-#include "hive_isp_css_2401_irq_types_hrt.h"	/* enum	hrt_isp_css_irq */
-#else
-#error "irq_global.h: 2400_SYSTEM must be one of {2400, 2401 }"
-#endif
+#include "irq_types_hrt.h"
 #endif
 
 /* The IRQ is not mapped uniformly on its related interfaces */
diff --git a/drivers/staging/media/atomisp/pci/css_2400_system/hrt/hive_isp_css_irq_types_hrt.h b/drivers/staging/media/atomisp/pci/irq_types_hrt.h
similarity index 100%
rename from drivers/staging/media/atomisp/pci/css_2400_system/hrt/hive_isp_css_irq_types_hrt.h
rename to drivers/staging/media/atomisp/pci/irq_types_hrt.h
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

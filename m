Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5992033C146
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 17:11:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65B494D107;
	Mon, 15 Mar 2021 16:11:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PCeqLVdLYQ5A; Mon, 15 Mar 2021 16:11:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CAA8E4CA63;
	Mon, 15 Mar 2021 16:11:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C2BE1BF2CF
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 16:10:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D6194CA63
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 16:10:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yd0XeZ9lA0MK for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 16:10:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x934.google.com (mail-ua1-x934.google.com
 [IPv6:2607:f8b0:4864:20::934])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6961C4B601
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 16:10:47 +0000 (UTC)
Received: by mail-ua1-x934.google.com with SMTP id b10so4367645uap.4
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 09:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LntY5VuM4pk23JBKYR/UXgMEA3p88B0Mj5MDWuGqh5Q=;
 b=PUN/47eY/xuf98cbeNLuh0hY5k8cfTgU4qENW9kOI6P2IawRQVdU3XKRVtix/gnLBT
 14ulgQ1IIf5XkKTseG7AA9COOouh550Mr/u12v7HiAEDJQCqsN+g5WNrWnDaNEu5aH4Z
 ypREjhzA1UWbl5tZ1Mroax9K95XYJKo0WrBtOnOYat5RT37jclC1gEeABVaq+y8Zl0GO
 3153fGVux5mBCYhROP28Cv9FMVucAZ64WG9fSC9XYfxfKw8vJF2GWSJIzqmx2L960Bxt
 DuuG+5ih3SMzq3O3BF2KbwhQNOKbeTi2hF0/FlI+Awer6yY5mZBJKOaazIItV0RVQBdN
 eP5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LntY5VuM4pk23JBKYR/UXgMEA3p88B0Mj5MDWuGqh5Q=;
 b=A27KIDdPIVu4/M/ZmBZZa1Rir63CxMLpK2XUjNBDWCLD04psocDIk0qP37SqeEQHbR
 mBOvw9ksLVx6QS6yM7wVD98zgqrZSJlolzU4z0o+rM42RtIAZyZWVA7cPPPcQe5i0j9/
 hfL9axXc1DJF9ZxnSJ7p2Z2pc0MC9THcFsR7NdbDe5xqMBC8yTsImf+/PZanAhb9Fz8I
 vw7Sb2xLT2LMAQAsoQBVmtcVyWY3dB+5HGFVGXGRR4oqQt/JRnBdlz3k+GJTFEh1Ieo1
 Ey4AN6wijgXgAQTOiJaZF6TuBDr4tMBroORkkMJt0H6o86LJfqBI1scHSu2RJFfPE7Ft
 po7A==
X-Gm-Message-State: AOAM532tpGCHzDqxJxlVtPZ30CfMcrR9uYSEKlvpudc6WsA9bGRJClo5
 eq7ndwErJFB3Uagxwh0wBwZLWs5nGPThkVL/st3JHA==
X-Google-Smtp-Source: ABdhPJyKnUE7U2jQBbhr99JIJ1r7oi++BpIgc95ZMEOLMeXObM9SCMvvNi5wd9XsxGIgzfT/gvjJaaOY2XkzBf1SKBE=
X-Received: by 2002:ab0:7406:: with SMTP id r6mr470471uap.28.1615824645486;
 Mon, 15 Mar 2021 09:10:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210315154413.3084149-1-gregkh@linuxfoundation.org>
In-Reply-To: <20210315154413.3084149-1-gregkh@linuxfoundation.org>
From: Rob Springer <rspringer@google.com>
Date: Mon, 15 Mar 2021 09:10:27 -0700
Message-ID: <CALTjKEP_+uBU8K-=Cnose8wCv9Wrv8oFnKfRUywLEHV4U_jWjQ@mail.gmail.com>
Subject: Re: [PATCH] staging: gasket: remove it from the kernel
To: gregkh@linuxfoundation.org
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
Cc: devel@driverdev.osuosl.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Richard Yeh <rcy@google.com>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Acked-by: Rob Springer <rspringer@google.com>


On Mon, Mar 15, 2021 at 8:44 AM <gregkh@linuxfoundation.org> wrote:
>
> From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
> As none of the proposed things that need to be changed in the gasket
> drivers have ever been done, and there has not been any forward progress
> to get this out of staging, it seems totally abandonded so remove the
> code entirely so that people do not spend their time doing tiny cleanups
> for code that will never get out of staging.
>
> If this code is actually being used, it can be reverted simply and then
> cleaned up properly, but as it is abandoned, let's just get rid of it.
>
> Cc: Rob Springer <rspringer@google.com>
> Cc: Todd Poynor <toddpoynor@google.com>
> Cc: Ben Chan <benchan@chromium.org>
> Cc: Richard Yeh <rcy@google.com>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  MAINTAINERS                                |    8 -
>  drivers/staging/Kconfig                    |    2 -
>  drivers/staging/Makefile                   |    1 -
>  drivers/staging/gasket/Kconfig             |   25 -
>  drivers/staging/gasket/Makefile            |   10 -
>  drivers/staging/gasket/TODO                |   22 -
>  drivers/staging/gasket/apex.h              |   30 -
>  drivers/staging/gasket/apex_driver.c       |  726 --------
>  drivers/staging/gasket/gasket.h            |  122 --
>  drivers/staging/gasket/gasket_constants.h  |   44 -
>  drivers/staging/gasket/gasket_core.c       | 1815 --------------------
>  drivers/staging/gasket/gasket_core.h       |  638 -------
>  drivers/staging/gasket/gasket_interrupt.c  |  515 ------
>  drivers/staging/gasket/gasket_interrupt.h  |   95 -
>  drivers/staging/gasket/gasket_ioctl.c      |  388 -----
>  drivers/staging/gasket/gasket_ioctl.h      |   28 -
>  drivers/staging/gasket/gasket_page_table.c | 1357 ---------------
>  drivers/staging/gasket/gasket_page_table.h |  249 ---
>  drivers/staging/gasket/gasket_sysfs.c      |  398 -----
>  drivers/staging/gasket/gasket_sysfs.h      |  175 --
>  20 files changed, 6648 deletions(-)
>  delete mode 100644 drivers/staging/gasket/Kconfig
>  delete mode 100644 drivers/staging/gasket/Makefile
>  delete mode 100644 drivers/staging/gasket/TODO
>  delete mode 100644 drivers/staging/gasket/apex.h
>  delete mode 100644 drivers/staging/gasket/apex_driver.c
>  delete mode 100644 drivers/staging/gasket/gasket.h
>  delete mode 100644 drivers/staging/gasket/gasket_constants.h
>  delete mode 100644 drivers/staging/gasket/gasket_core.c
>  delete mode 100644 drivers/staging/gasket/gasket_core.h
>  delete mode 100644 drivers/staging/gasket/gasket_interrupt.c
>  delete mode 100644 drivers/staging/gasket/gasket_interrupt.h
>  delete mode 100644 drivers/staging/gasket/gasket_ioctl.c
>  delete mode 100644 drivers/staging/gasket/gasket_ioctl.h
>  delete mode 100644 drivers/staging/gasket/gasket_page_table.c
>  delete mode 100644 drivers/staging/gasket/gasket_page_table.h
>  delete mode 100644 drivers/staging/gasket/gasket_sysfs.c
>  delete mode 100644 drivers/staging/gasket/gasket_sysfs.h
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index aa84121c5611..392647241626 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7385,14 +7385,6 @@ F:       Documentation/hwmon/gsc-hwmon.rst
>  F:     drivers/hwmon/gsc-hwmon.c
>  F:     include/linux/platform_data/gsc_hwmon.h
>
> -GASKET DRIVER FRAMEWORK
> -M:     Rob Springer <rspringer@google.com>
> -M:     Todd Poynor <toddpoynor@google.com>
> -M:     Ben Chan <benchan@chromium.org>
> -M:     Richard Yeh <rcy@google.com>
> -S:     Maintained
> -F:     drivers/staging/gasket/
> -
>  GCC PLUGINS
>  M:     Kees Cook <keescook@chromium.org>
>  L:     linux-hardening@vger.kernel.org
> diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
> index b22f73d7bfc4..efddc50c81f9 100644
> --- a/drivers/staging/Kconfig
> +++ b/drivers/staging/Kconfig
> @@ -98,8 +98,6 @@ source "drivers/staging/ralink-gdma/Kconfig"
>
>  source "drivers/staging/mt7621-dts/Kconfig"
>
> -source "drivers/staging/gasket/Kconfig"
> -
>  source "drivers/staging/axis-fifo/Kconfig"
>
>  source "drivers/staging/fieldbus/Kconfig"
> diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
> index 2245059e69c7..e2e95a20081a 100644
> --- a/drivers/staging/Makefile
> +++ b/drivers/staging/Makefile
> @@ -39,7 +39,6 @@ obj-$(CONFIG_PCI_MT7621)      += mt7621-pci/
>  obj-$(CONFIG_SOC_MT7621)       += mt7621-dma/
>  obj-$(CONFIG_DMA_RALINK)       += ralink-gdma/
>  obj-$(CONFIG_SOC_MT7621)       += mt7621-dts/
> -obj-$(CONFIG_STAGING_GASKET_FRAMEWORK) += gasket/
>  obj-$(CONFIG_XIL_AXIS_FIFO)    += axis-fifo/
>  obj-$(CONFIG_FIELDBUS_DEV)     += fieldbus/
>  obj-$(CONFIG_KPC2000)          += kpc2000/
> diff --git a/drivers/staging/gasket/Kconfig b/drivers/staging/gasket/Kconfig
> deleted file mode 100644
> index d9bef8ca41ef..000000000000
> --- a/drivers/staging/gasket/Kconfig
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -# SPDX-License-Identifier: GPL-2.0
> -menu "Gasket devices"
> -
> -config STAGING_GASKET_FRAMEWORK
> -       tristate "Gasket framework"
> -       depends on PCI && (X86_64 || ARM64)
> -       help
> -         This framework supports Gasket-compatible devices, such as Apex.
> -         It is required for any of the following module(s).
> -
> -         To compile this driver as a module, choose M here.  The module
> -         will be called "gasket".
> -
> -config STAGING_APEX_DRIVER
> -       tristate "Apex Driver"
> -       depends on STAGING_GASKET_FRAMEWORK
> -       help
> -         This driver supports the Apex Edge TPU device.  See
> -         https://cloud.google.com/edge-tpu/ for more information.
> -         Say Y if you want to include this driver in the kernel.
> -
> -         To compile this driver as a module, choose M here.  The module
> -         will be called "apex".
> -
> -endmenu
> diff --git a/drivers/staging/gasket/Makefile b/drivers/staging/gasket/Makefile
> deleted file mode 100644
> index ce03e256f501..000000000000
> --- a/drivers/staging/gasket/Makefile
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -# SPDX-License-Identifier: GPL-2.0
> -#
> -#  Makefile for Gasket framework and dependent drivers.
> -#
> -
> -obj-$(CONFIG_STAGING_GASKET_FRAMEWORK) += gasket.o
> -obj-$(CONFIG_STAGING_APEX_DRIVER)      += apex.o
> -
> -gasket-objs    := gasket_core.o gasket_ioctl.o gasket_interrupt.o gasket_page_table.o gasket_sysfs.o
> -apex-objs      := apex_driver.o
> diff --git a/drivers/staging/gasket/TODO b/drivers/staging/gasket/TODO
> deleted file mode 100644
> index 5b1865f8af2d..000000000000
> --- a/drivers/staging/gasket/TODO
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -This is a list of things that need to be done to get this driver out of the
> -staging directory.
> -
> -- Implement the gasket framework's functionality through UIO instead of
> -  introducing a new user-space drivers framework that is quite similar.
> -
> -  UIO provides the necessary bits to implement user-space drivers. Meanwhile
> -  the gasket APIs adds some extra conveniences like PCI BAR mapping, and
> -  MSI interrupts. Add these features to the UIO subsystem, then re-implement
> -  the Apex driver as a basic UIO driver instead (include/linux/uio_driver.h)
> -
> -- Document sysfs files with Documentation/ABI/ entries.
> -
> -- Use misc interface instead of major number for driver version description.
> -
> -- Add descriptions of module_param's
> -
> -- apex_get_status() should actually check status.
> -
> -- "drivers" should never be dealing with "raw" sysfs calls or mess around with
> -  kobjects at all. The driver core should handle all of this for you
> -  automaically. There should not be a need for raw attribute macros.
> diff --git a/drivers/staging/gasket/apex.h b/drivers/staging/gasket/apex.h
> deleted file mode 100644
> index 3bbceffff5e4..000000000000
> --- a/drivers/staging/gasket/apex.h
> +++ /dev/null
> @@ -1,30 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -/*
> - * Apex kernel-userspace interface definitions.
> - *
> - * Copyright (C) 2018 Google, Inc.
> - */
> -#ifndef __APEX_H__
> -#define __APEX_H__
> -
> -#include <linux/ioctl.h>
> -
> -/* Clock Gating ioctl. */
> -struct apex_gate_clock_ioctl {
> -       /* Enter or leave clock gated state. */
> -       u64 enable;
> -
> -       /* If set, enter clock gating state, regardless of custom block's
> -        * internal idle state
> -        */
> -       u64 force_idle;
> -};
> -
> -/* Base number for all Apex-common IOCTLs */
> -#define APEX_IOCTL_BASE 0x7F
> -
> -/* Enable/Disable clock gating. */
> -#define APEX_IOCTL_GATE_CLOCK                                                  \
> -       _IOW(APEX_IOCTL_BASE, 0, struct apex_gate_clock_ioctl)
> -
> -#endif /* __APEX_H__ */
> diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> deleted file mode 100644
> index f12f81c8dd2f..000000000000
> --- a/drivers/staging/gasket/apex_driver.c
> +++ /dev/null
> @@ -1,726 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0
> -/*
> - * Driver for the Apex chip.
> - *
> - * Copyright (C) 2018 Google, Inc.
> - */
> -
> -#include <linux/compiler.h>
> -#include <linux/delay.h>
> -#include <linux/device.h>
> -#include <linux/fs.h>
> -#include <linux/init.h>
> -#include <linux/mm.h>
> -#include <linux/module.h>
> -#include <linux/moduleparam.h>
> -#include <linux/pci.h>
> -#include <linux/printk.h>
> -#include <linux/sched.h>
> -#include <linux/uaccess.h>
> -
> -#include "apex.h"
> -
> -#include "gasket_core.h"
> -#include "gasket_interrupt.h"
> -#include "gasket_page_table.h"
> -#include "gasket_sysfs.h"
> -
> -/* Constants */
> -#define APEX_DEVICE_NAME "Apex"
> -#define APEX_DRIVER_VERSION "1.0"
> -
> -/* CSRs are in BAR 2. */
> -#define APEX_BAR_INDEX 2
> -
> -#define APEX_PCI_VENDOR_ID 0x1ac1
> -#define APEX_PCI_DEVICE_ID 0x089a
> -
> -/* Bar Offsets. */
> -#define APEX_BAR_OFFSET 0
> -#define APEX_CM_OFFSET 0x1000000
> -
> -/* The sizes of each Apex BAR 2. */
> -#define APEX_BAR_BYTES 0x100000
> -#define APEX_CH_MEM_BYTES (PAGE_SIZE * MAX_NUM_COHERENT_PAGES)
> -
> -/* The number of user-mappable memory ranges in BAR2 of a Apex chip. */
> -#define NUM_REGIONS 3
> -
> -/* The number of nodes in a Apex chip. */
> -#define NUM_NODES 1
> -
> -/*
> - * The total number of entries in the page table. Should match the value read
> - * from the register APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_SIZE.
> - */
> -#define APEX_PAGE_TABLE_TOTAL_ENTRIES 8192
> -
> -#define APEX_EXTENDED_SHIFT 63 /* Extended address bit position. */
> -
> -/* Check reset 120 times */
> -#define APEX_RESET_RETRY 120
> -/* Wait 100 ms between checks. Total 12 sec wait maximum. */
> -#define APEX_RESET_DELAY 100
> -
> -/* Enumeration of the supported sysfs entries. */
> -enum sysfs_attribute_type {
> -       ATTR_KERNEL_HIB_PAGE_TABLE_SIZE,
> -       ATTR_KERNEL_HIB_SIMPLE_PAGE_TABLE_SIZE,
> -       ATTR_KERNEL_HIB_NUM_ACTIVE_PAGES,
> -};
> -
> -/*
> - * Register offsets into BAR2 memory.
> - * Only values necessary for driver implementation are defined.
> - */
> -enum apex_bar2_regs {
> -       APEX_BAR2_REG_SCU_BASE = 0x1A300,
> -       APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_SIZE = 0x46000,
> -       APEX_BAR2_REG_KERNEL_HIB_EXTENDED_TABLE = 0x46008,
> -       APEX_BAR2_REG_KERNEL_HIB_TRANSLATION_ENABLE = 0x46010,
> -       APEX_BAR2_REG_KERNEL_HIB_INSTR_QUEUE_INTVECCTL = 0x46018,
> -       APEX_BAR2_REG_KERNEL_HIB_INPUT_ACTV_QUEUE_INTVECCTL = 0x46020,
> -       APEX_BAR2_REG_KERNEL_HIB_PARAM_QUEUE_INTVECCTL = 0x46028,
> -       APEX_BAR2_REG_KERNEL_HIB_OUTPUT_ACTV_QUEUE_INTVECCTL = 0x46030,
> -       APEX_BAR2_REG_KERNEL_HIB_SC_HOST_INTVECCTL = 0x46038,
> -       APEX_BAR2_REG_KERNEL_HIB_TOP_LEVEL_INTVECCTL = 0x46040,
> -       APEX_BAR2_REG_KERNEL_HIB_FATAL_ERR_INTVECCTL = 0x46048,
> -       APEX_BAR2_REG_KERNEL_HIB_DMA_PAUSE = 0x46050,
> -       APEX_BAR2_REG_KERNEL_HIB_DMA_PAUSE_MASK = 0x46058,
> -       APEX_BAR2_REG_KERNEL_HIB_STATUS_BLOCK_DELAY = 0x46060,
> -       APEX_BAR2_REG_KERNEL_HIB_MSIX_PENDING_BIT_ARRAY0 = 0x46068,
> -       APEX_BAR2_REG_KERNEL_HIB_MSIX_PENDING_BIT_ARRAY1 = 0x46070,
> -       APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT = 0x46078,
> -       APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT = 0x46080,
> -       APEX_BAR2_REG_KERNEL_WIRE_INT_PENDING_BIT_ARRAY = 0x48778,
> -       APEX_BAR2_REG_KERNEL_WIRE_INT_MASK_ARRAY = 0x48780,
> -       APEX_BAR2_REG_USER_HIB_DMA_PAUSE = 0x486D8,
> -       APEX_BAR2_REG_USER_HIB_DMA_PAUSED = 0x486E0,
> -       APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER = 0x4A000,
> -       APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE = 0x50000,
> -
> -       /* Error registers - Used mostly for debug */
> -       APEX_BAR2_REG_USER_HIB_ERROR_STATUS = 0x86f0,
> -       APEX_BAR2_REG_SCALAR_CORE_ERROR_STATUS = 0x41a0,
> -};
> -
> -/* Addresses for packed registers. */
> -#define APEX_BAR2_REG_AXI_QUIESCE (APEX_BAR2_REG_SCU_BASE + 0x2C)
> -#define APEX_BAR2_REG_GCB_CLOCK_GATE (APEX_BAR2_REG_SCU_BASE + 0x14)
> -#define APEX_BAR2_REG_SCU_0 (APEX_BAR2_REG_SCU_BASE + 0xc)
> -#define APEX_BAR2_REG_SCU_1 (APEX_BAR2_REG_SCU_BASE + 0x10)
> -#define APEX_BAR2_REG_SCU_2 (APEX_BAR2_REG_SCU_BASE + 0x14)
> -#define APEX_BAR2_REG_SCU_3 (APEX_BAR2_REG_SCU_BASE + 0x18)
> -#define APEX_BAR2_REG_SCU_4 (APEX_BAR2_REG_SCU_BASE + 0x1c)
> -#define APEX_BAR2_REG_SCU_5 (APEX_BAR2_REG_SCU_BASE + 0x20)
> -
> -#define SCU3_RG_PWR_STATE_OVR_BIT_OFFSET 26
> -#define SCU3_RG_PWR_STATE_OVR_MASK_WIDTH 2
> -#define SCU3_CUR_RST_GCB_BIT_MASK 0x10
> -#define SCU2_RG_RST_GCB_BIT_MASK 0xc
> -
> -/* Configuration for page table. */
> -static struct gasket_page_table_config apex_page_table_configs[NUM_NODES] = {
> -       {
> -               .id = 0,
> -               .mode = GASKET_PAGE_TABLE_MODE_NORMAL,
> -               .total_entries = APEX_PAGE_TABLE_TOTAL_ENTRIES,
> -               .base_reg = APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE,
> -               .extended_reg = APEX_BAR2_REG_KERNEL_HIB_EXTENDED_TABLE,
> -               .extended_bit = APEX_EXTENDED_SHIFT,
> -       },
> -};
> -
> -/* The regions in the BAR2 space that can be mapped into user space. */
> -static const struct gasket_mappable_region mappable_regions[NUM_REGIONS] = {
> -       { 0x40000, 0x1000 },
> -       { 0x44000, 0x1000 },
> -       { 0x48000, 0x1000 },
> -};
> -
> -/* Gasket device interrupts enums must be dense (i.e., no empty slots). */
> -enum apex_interrupt {
> -       APEX_INTERRUPT_INSTR_QUEUE = 0,
> -       APEX_INTERRUPT_INPUT_ACTV_QUEUE = 1,
> -       APEX_INTERRUPT_PARAM_QUEUE = 2,
> -       APEX_INTERRUPT_OUTPUT_ACTV_QUEUE = 3,
> -       APEX_INTERRUPT_SC_HOST_0 = 4,
> -       APEX_INTERRUPT_SC_HOST_1 = 5,
> -       APEX_INTERRUPT_SC_HOST_2 = 6,
> -       APEX_INTERRUPT_SC_HOST_3 = 7,
> -       APEX_INTERRUPT_TOP_LEVEL_0 = 8,
> -       APEX_INTERRUPT_TOP_LEVEL_1 = 9,
> -       APEX_INTERRUPT_TOP_LEVEL_2 = 10,
> -       APEX_INTERRUPT_TOP_LEVEL_3 = 11,
> -       APEX_INTERRUPT_FATAL_ERR = 12,
> -       APEX_INTERRUPT_COUNT = 13,
> -};
> -
> -/* Interrupt descriptors for Apex */
> -static struct gasket_interrupt_desc apex_interrupts[] = {
> -       {
> -               APEX_INTERRUPT_INSTR_QUEUE,
> -               APEX_BAR2_REG_KERNEL_HIB_INSTR_QUEUE_INTVECCTL,
> -               UNPACKED,
> -       },
> -       {
> -               APEX_INTERRUPT_INPUT_ACTV_QUEUE,
> -               APEX_BAR2_REG_KERNEL_HIB_INPUT_ACTV_QUEUE_INTVECCTL,
> -               UNPACKED
> -       },
> -       {
> -               APEX_INTERRUPT_PARAM_QUEUE,
> -               APEX_BAR2_REG_KERNEL_HIB_PARAM_QUEUE_INTVECCTL,
> -               UNPACKED
> -       },
> -       {
> -               APEX_INTERRUPT_OUTPUT_ACTV_QUEUE,
> -               APEX_BAR2_REG_KERNEL_HIB_OUTPUT_ACTV_QUEUE_INTVECCTL,
> -               UNPACKED
> -       },
> -       {
> -               APEX_INTERRUPT_SC_HOST_0,
> -               APEX_BAR2_REG_KERNEL_HIB_SC_HOST_INTVECCTL,
> -               PACK_0
> -       },
> -       {
> -               APEX_INTERRUPT_SC_HOST_1,
> -               APEX_BAR2_REG_KERNEL_HIB_SC_HOST_INTVECCTL,
> -               PACK_1
> -       },
> -       {
> -               APEX_INTERRUPT_SC_HOST_2,
> -               APEX_BAR2_REG_KERNEL_HIB_SC_HOST_INTVECCTL,
> -               PACK_2
> -       },
> -       {
> -               APEX_INTERRUPT_SC_HOST_3,
> -               APEX_BAR2_REG_KERNEL_HIB_SC_HOST_INTVECCTL,
> -               PACK_3
> -       },
> -       {
> -               APEX_INTERRUPT_TOP_LEVEL_0,
> -               APEX_BAR2_REG_KERNEL_HIB_TOP_LEVEL_INTVECCTL,
> -               PACK_0
> -       },
> -       {
> -               APEX_INTERRUPT_TOP_LEVEL_1,
> -               APEX_BAR2_REG_KERNEL_HIB_TOP_LEVEL_INTVECCTL,
> -               PACK_1
> -       },
> -       {
> -               APEX_INTERRUPT_TOP_LEVEL_2,
> -               APEX_BAR2_REG_KERNEL_HIB_TOP_LEVEL_INTVECCTL,
> -               PACK_2
> -       },
> -       {
> -               APEX_INTERRUPT_TOP_LEVEL_3,
> -               APEX_BAR2_REG_KERNEL_HIB_TOP_LEVEL_INTVECCTL,
> -               PACK_3
> -       },
> -       {
> -               APEX_INTERRUPT_FATAL_ERR,
> -               APEX_BAR2_REG_KERNEL_HIB_FATAL_ERR_INTVECCTL,
> -               UNPACKED
> -       },
> -};
> -
> -/* Allows device to enter power save upon driver close(). */
> -static int allow_power_save = 1;
> -
> -/* Allows SW based clock gating. */
> -static int allow_sw_clock_gating;
> -
> -/* Allows HW based clock gating. */
> -/* Note: this is not mutual exclusive with SW clock gating. */
> -static int allow_hw_clock_gating = 1;
> -
> -/* Act as if only GCB is instantiated. */
> -static int bypass_top_level;
> -
> -module_param(allow_power_save, int, 0644);
> -module_param(allow_sw_clock_gating, int, 0644);
> -module_param(allow_hw_clock_gating, int, 0644);
> -module_param(bypass_top_level, int, 0644);
> -
> -/* Check the device status registers and return device status ALIVE or DEAD. */
> -static int apex_get_status(struct gasket_dev *gasket_dev)
> -{
> -       /* TODO: Check device status. */
> -       return GASKET_STATUS_ALIVE;
> -}
> -
> -/* Enter GCB reset state. */
> -static int apex_enter_reset(struct gasket_dev *gasket_dev)
> -{
> -       if (bypass_top_level)
> -               return 0;
> -
> -       /*
> -        * Software reset:
> -        * Enable sleep mode
> -        *  - Software force GCB idle
> -        *    - Enable GCB idle
> -        */
> -       gasket_read_modify_write_64(gasket_dev, APEX_BAR_INDEX,
> -                                   APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER,
> -                                   0x0, 1, 32);
> -
> -       /*    - Initiate DMA pause */
> -       gasket_dev_write_64(gasket_dev, 1, APEX_BAR_INDEX,
> -                           APEX_BAR2_REG_USER_HIB_DMA_PAUSE);
> -
> -       /*    - Wait for DMA pause complete. */
> -       if (gasket_wait_with_reschedule(gasket_dev, APEX_BAR_INDEX,
> -                                       APEX_BAR2_REG_USER_HIB_DMA_PAUSED, 1, 1,
> -                                       APEX_RESET_DELAY, APEX_RESET_RETRY)) {
> -               dev_err(gasket_dev->dev,
> -                       "DMAs did not quiesce within timeout (%d ms)\n",
> -                       APEX_RESET_RETRY * APEX_RESET_DELAY);
> -               return -ETIMEDOUT;
> -       }
> -
> -       /*  - Enable GCB reset (0x1 to rg_rst_gcb) */
> -       gasket_read_modify_write_32(gasket_dev, APEX_BAR_INDEX,
> -                                   APEX_BAR2_REG_SCU_2, 0x1, 2, 2);
> -
> -       /*  - Enable GCB clock Gate (0x1 to rg_gated_gcb) */
> -       gasket_read_modify_write_32(gasket_dev, APEX_BAR_INDEX,
> -                                   APEX_BAR2_REG_SCU_2, 0x1, 2, 18);
> -
> -       /*  - Enable GCB memory shut down (0x3 to rg_force_ram_sd) */
> -       gasket_read_modify_write_32(gasket_dev, APEX_BAR_INDEX,
> -                                   APEX_BAR2_REG_SCU_3, 0x3, 2, 14);
> -
> -       /*    - Wait for RAM shutdown. */
> -       if (gasket_wait_with_reschedule(gasket_dev, APEX_BAR_INDEX,
> -                                       APEX_BAR2_REG_SCU_3, BIT(6), BIT(6),
> -                                       APEX_RESET_DELAY, APEX_RESET_RETRY)) {
> -               dev_err(gasket_dev->dev,
> -                       "RAM did not shut down within timeout (%d ms)\n",
> -                       APEX_RESET_RETRY * APEX_RESET_DELAY);
> -               return -ETIMEDOUT;
> -       }
> -
> -       return 0;
> -}
> -
> -/* Quit GCB reset state. */
> -static int apex_quit_reset(struct gasket_dev *gasket_dev)
> -{
> -       u32 val0, val1;
> -
> -       if (bypass_top_level)
> -               return 0;
> -
> -       /*
> -        * Disable sleep mode:
> -        *  - Disable GCB memory shut down:
> -        *    - b00: Not forced (HW controlled)
> -        *    - b1x: Force disable
> -        */
> -       gasket_read_modify_write_32(gasket_dev, APEX_BAR_INDEX,
> -                                   APEX_BAR2_REG_SCU_3, 0x0, 2, 14);
> -
> -       /*
> -        *  - Disable software clock gate:
> -        *    - b00: Not forced (HW controlled)
> -        *    - b1x: Force disable
> -        */
> -       gasket_read_modify_write_32(gasket_dev, APEX_BAR_INDEX,
> -                                   APEX_BAR2_REG_SCU_2, 0x0, 2, 18);
> -
> -       /*
> -        *  - Disable GCB reset (rg_rst_gcb):
> -        *    - b00: Not forced (HW controlled)
> -        *    - b1x: Force disable = Force not Reset
> -        */
> -       gasket_read_modify_write_32(gasket_dev, APEX_BAR_INDEX,
> -                                   APEX_BAR2_REG_SCU_2, 0x2, 2, 2);
> -
> -       /*    - Wait for RAM enable. */
> -       if (gasket_wait_with_reschedule(gasket_dev, APEX_BAR_INDEX,
> -                                       APEX_BAR2_REG_SCU_3, BIT(6), 0,
> -                                       APEX_RESET_DELAY, APEX_RESET_RETRY)) {
> -               dev_err(gasket_dev->dev,
> -                       "RAM did not enable within timeout (%d ms)\n",
> -                       APEX_RESET_RETRY * APEX_RESET_DELAY);
> -               return -ETIMEDOUT;
> -       }
> -
> -       /*    - Wait for Reset complete. */
> -       if (gasket_wait_with_reschedule(gasket_dev, APEX_BAR_INDEX,
> -                                       APEX_BAR2_REG_SCU_3,
> -                                       SCU3_CUR_RST_GCB_BIT_MASK, 0,
> -                                       APEX_RESET_DELAY, APEX_RESET_RETRY)) {
> -               dev_err(gasket_dev->dev,
> -                       "GCB did not leave reset within timeout (%d ms)\n",
> -                       APEX_RESET_RETRY * APEX_RESET_DELAY);
> -               return -ETIMEDOUT;
> -       }
> -
> -       if (!allow_hw_clock_gating) {
> -               val0 = gasket_dev_read_32(gasket_dev, APEX_BAR_INDEX,
> -                                         APEX_BAR2_REG_SCU_3);
> -               /* Inactive and Sleep mode are disabled. */
> -               gasket_read_modify_write_32(gasket_dev,
> -                                           APEX_BAR_INDEX,
> -                                           APEX_BAR2_REG_SCU_3, 0x3,
> -                                           SCU3_RG_PWR_STATE_OVR_MASK_WIDTH,
> -                                           SCU3_RG_PWR_STATE_OVR_BIT_OFFSET);
> -               val1 = gasket_dev_read_32(gasket_dev, APEX_BAR_INDEX,
> -                                         APEX_BAR2_REG_SCU_3);
> -               dev_dbg(gasket_dev->dev,
> -                       "Disallow HW clock gating 0x%x -> 0x%x\n", val0, val1);
> -       } else {
> -               val0 = gasket_dev_read_32(gasket_dev, APEX_BAR_INDEX,
> -                                         APEX_BAR2_REG_SCU_3);
> -               /* Inactive mode enabled - Sleep mode disabled. */
> -               gasket_read_modify_write_32(gasket_dev, APEX_BAR_INDEX,
> -                                           APEX_BAR2_REG_SCU_3, 2,
> -                                           SCU3_RG_PWR_STATE_OVR_MASK_WIDTH,
> -                                           SCU3_RG_PWR_STATE_OVR_BIT_OFFSET);
> -               val1 = gasket_dev_read_32(gasket_dev, APEX_BAR_INDEX,
> -                                         APEX_BAR2_REG_SCU_3);
> -               dev_dbg(gasket_dev->dev, "Allow HW clock gating 0x%x -> 0x%x\n",
> -                       val0, val1);
> -       }
> -
> -       return 0;
> -}
> -
> -/* Reset the Apex hardware. Called on final close via device_close_cb. */
> -static int apex_device_cleanup(struct gasket_dev *gasket_dev)
> -{
> -       u64 scalar_error;
> -       u64 hib_error;
> -       int ret = 0;
> -
> -       hib_error = gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
> -                                      APEX_BAR2_REG_USER_HIB_ERROR_STATUS);
> -       scalar_error = gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
> -                                         APEX_BAR2_REG_SCALAR_CORE_ERROR_STATUS);
> -
> -       dev_dbg(gasket_dev->dev,
> -               "%s 0x%p hib_error 0x%llx scalar_error 0x%llx\n",
> -               __func__, gasket_dev, hib_error, scalar_error);
> -
> -       if (allow_power_save)
> -               ret = apex_enter_reset(gasket_dev);
> -
> -       return ret;
> -}
> -
> -/* Determine if GCB is in reset state. */
> -static bool is_gcb_in_reset(struct gasket_dev *gasket_dev)
> -{
> -       u32 val = gasket_dev_read_32(gasket_dev, APEX_BAR_INDEX,
> -                                    APEX_BAR2_REG_SCU_3);
> -
> -       /* Masks rg_rst_gcb bit of SCU_CTRL_2 */
> -       return (val & SCU3_CUR_RST_GCB_BIT_MASK);
> -}
> -
> -/* Reset the hardware, then quit reset.  Called on device open. */
> -static int apex_reset(struct gasket_dev *gasket_dev)
> -{
> -       int ret;
> -
> -       if (bypass_top_level)
> -               return 0;
> -
> -       if (!is_gcb_in_reset(gasket_dev)) {
> -               /* We are not in reset - toggle the reset bit so as to force
> -                * re-init of custom block
> -                */
> -               dev_dbg(gasket_dev->dev, "%s: toggle reset\n", __func__);
> -
> -               ret = apex_enter_reset(gasket_dev);
> -               if (ret)
> -                       return ret;
> -       }
> -       return apex_quit_reset(gasket_dev);
> -}
> -
> -/*
> - * Check permissions for Apex ioctls.
> - * Returns true if the current user may execute this ioctl, and false otherwise.
> - */
> -static bool apex_ioctl_check_permissions(struct file *filp, uint cmd)
> -{
> -       return !!(filp->f_mode & FMODE_WRITE);
> -}
> -
> -/* Gates or un-gates Apex clock. */
> -static long apex_clock_gating(struct gasket_dev *gasket_dev,
> -                             struct apex_gate_clock_ioctl __user *argp)
> -{
> -       struct apex_gate_clock_ioctl ibuf;
> -
> -       if (bypass_top_level || !allow_sw_clock_gating)
> -               return 0;
> -
> -       if (copy_from_user(&ibuf, argp, sizeof(ibuf)))
> -               return -EFAULT;
> -
> -       dev_dbg(gasket_dev->dev, "%s %llu\n", __func__, ibuf.enable);
> -
> -       if (ibuf.enable) {
> -               /* Quiesce AXI, gate GCB clock. */
> -               gasket_read_modify_write_32(gasket_dev, APEX_BAR_INDEX,
> -                                           APEX_BAR2_REG_AXI_QUIESCE, 0x1, 1,
> -                                           16);
> -               gasket_read_modify_write_32(gasket_dev, APEX_BAR_INDEX,
> -                                           APEX_BAR2_REG_GCB_CLOCK_GATE, 0x1,
> -                                           2, 18);
> -       } else {
> -               /* Un-gate GCB clock, un-quiesce AXI. */
> -               gasket_read_modify_write_32(gasket_dev, APEX_BAR_INDEX,
> -                                           APEX_BAR2_REG_GCB_CLOCK_GATE, 0x0,
> -                                           2, 18);
> -               gasket_read_modify_write_32(gasket_dev, APEX_BAR_INDEX,
> -                                           APEX_BAR2_REG_AXI_QUIESCE, 0x0, 1,
> -                                           16);
> -       }
> -       return 0;
> -}
> -
> -/* Apex-specific ioctl handler. */
> -static long apex_ioctl(struct file *filp, uint cmd, void __user *argp)
> -{
> -       struct gasket_dev *gasket_dev = filp->private_data;
> -
> -       if (!apex_ioctl_check_permissions(filp, cmd))
> -               return -EPERM;
> -
> -       switch (cmd) {
> -       case APEX_IOCTL_GATE_CLOCK:
> -               return apex_clock_gating(gasket_dev, argp);
> -       default:
> -               return -ENOTTY; /* unknown command */
> -       }
> -}
> -
> -/* Display driver sysfs entries. */
> -static ssize_t sysfs_show(struct device *device, struct device_attribute *attr,
> -                         char *buf)
> -{
> -       int ret;
> -       struct gasket_dev *gasket_dev;
> -       struct gasket_sysfs_attribute *gasket_attr;
> -       enum sysfs_attribute_type type;
> -       struct gasket_page_table *gpt;
> -       uint val;
> -
> -       gasket_dev = gasket_sysfs_get_device_data(device);
> -       if (!gasket_dev) {
> -               dev_err(device, "No Apex device sysfs mapping found\n");
> -               return -ENODEV;
> -       }
> -
> -       gasket_attr = gasket_sysfs_get_attr(device, attr);
> -       if (!gasket_attr) {
> -               dev_err(device, "No Apex device sysfs attr data found\n");
> -               gasket_sysfs_put_device_data(device, gasket_dev);
> -               return -ENODEV;
> -       }
> -
> -       type = (enum sysfs_attribute_type)gasket_attr->data.attr_type;
> -       gpt = gasket_dev->page_table[0];
> -       switch (type) {
> -       case ATTR_KERNEL_HIB_PAGE_TABLE_SIZE:
> -               val = gasket_page_table_num_entries(gpt);
> -               break;
> -       case ATTR_KERNEL_HIB_SIMPLE_PAGE_TABLE_SIZE:
> -               val = gasket_page_table_num_simple_entries(gpt);
> -               break;
> -       case ATTR_KERNEL_HIB_NUM_ACTIVE_PAGES:
> -               val = gasket_page_table_num_active_pages(gpt);
> -               break;
> -       default:
> -               dev_dbg(gasket_dev->dev, "Unknown attribute: %s\n",
> -                       attr->attr.name);
> -               ret = 0;
> -               goto exit;
> -       }
> -       ret = scnprintf(buf, PAGE_SIZE, "%u\n", val);
> -exit:
> -       gasket_sysfs_put_attr(device, gasket_attr);
> -       gasket_sysfs_put_device_data(device, gasket_dev);
> -       return ret;
> -}
> -
> -static struct gasket_sysfs_attribute apex_sysfs_attrs[] = {
> -       GASKET_SYSFS_RO(node_0_page_table_entries, sysfs_show,
> -                       ATTR_KERNEL_HIB_PAGE_TABLE_SIZE),
> -       GASKET_SYSFS_RO(node_0_simple_page_table_entries, sysfs_show,
> -                       ATTR_KERNEL_HIB_SIMPLE_PAGE_TABLE_SIZE),
> -       GASKET_SYSFS_RO(node_0_num_mapped_pages, sysfs_show,
> -                       ATTR_KERNEL_HIB_NUM_ACTIVE_PAGES),
> -       GASKET_END_OF_ATTR_ARRAY
> -};
> -
> -/* On device open, perform a core reinit reset. */
> -static int apex_device_open_cb(struct gasket_dev *gasket_dev)
> -{
> -       return gasket_reset_nolock(gasket_dev);
> -}
> -
> -static const struct pci_device_id apex_pci_ids[] = {
> -       { PCI_DEVICE(APEX_PCI_VENDOR_ID, APEX_PCI_DEVICE_ID) }, { 0 }
> -};
> -
> -static int apex_pci_probe(struct pci_dev *pci_dev,
> -                         const struct pci_device_id *id)
> -{
> -       int ret;
> -       ulong page_table_ready, msix_table_ready;
> -       int retries = 0;
> -       struct gasket_dev *gasket_dev;
> -
> -       ret = pci_enable_device(pci_dev);
> -       if (ret) {
> -               dev_err(&pci_dev->dev, "error enabling PCI device\n");
> -               return ret;
> -       }
> -
> -       pci_set_master(pci_dev);
> -
> -       ret = gasket_pci_add_device(pci_dev, &gasket_dev);
> -       if (ret) {
> -               dev_err(&pci_dev->dev, "error adding gasket device\n");
> -               pci_disable_device(pci_dev);
> -               return ret;
> -       }
> -
> -       pci_set_drvdata(pci_dev, gasket_dev);
> -       apex_reset(gasket_dev);
> -
> -       while (retries < APEX_RESET_RETRY) {
> -               page_table_ready =
> -                       gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
> -                                          APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT);
> -               msix_table_ready =
> -                       gasket_dev_read_64(gasket_dev, APEX_BAR_INDEX,
> -                                          APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT);
> -               if (page_table_ready && msix_table_ready)
> -                       break;
> -               schedule_timeout(msecs_to_jiffies(APEX_RESET_DELAY));
> -               retries++;
> -       }
> -
> -       if (retries == APEX_RESET_RETRY) {
> -               if (!page_table_ready)
> -                       dev_err(gasket_dev->dev, "Page table init timed out\n");
> -               if (!msix_table_ready)
> -                       dev_err(gasket_dev->dev, "MSI-X table init timed out\n");
> -               ret = -ETIMEDOUT;
> -               goto remove_device;
> -       }
> -
> -       ret = gasket_sysfs_create_entries(gasket_dev->dev_info.device,
> -                                         apex_sysfs_attrs);
> -       if (ret)
> -               dev_err(&pci_dev->dev, "error creating device sysfs entries\n");
> -
> -       ret = gasket_enable_device(gasket_dev);
> -       if (ret) {
> -               dev_err(&pci_dev->dev, "error enabling gasket device\n");
> -               goto remove_device;
> -       }
> -
> -       /* Place device in low power mode until opened */
> -       if (allow_power_save)
> -               apex_enter_reset(gasket_dev);
> -
> -       return 0;
> -
> -remove_device:
> -       gasket_pci_remove_device(pci_dev);
> -       pci_disable_device(pci_dev);
> -       return ret;
> -}
> -
> -static void apex_pci_remove(struct pci_dev *pci_dev)
> -{
> -       struct gasket_dev *gasket_dev = pci_get_drvdata(pci_dev);
> -
> -       gasket_disable_device(gasket_dev);
> -       gasket_pci_remove_device(pci_dev);
> -       pci_disable_device(pci_dev);
> -}
> -
> -static const struct gasket_driver_desc apex_desc = {
> -       .name = "apex",
> -       .driver_version = APEX_DRIVER_VERSION,
> -       .major = 120,
> -       .minor = 0,
> -       .module = THIS_MODULE,
> -       .pci_id_table = apex_pci_ids,
> -
> -       .num_page_tables = NUM_NODES,
> -       .page_table_bar_index = APEX_BAR_INDEX,
> -       .page_table_configs = apex_page_table_configs,
> -       .page_table_extended_bit = APEX_EXTENDED_SHIFT,
> -
> -       .bar_descriptions = {
> -               GASKET_UNUSED_BAR,
> -               GASKET_UNUSED_BAR,
> -               { APEX_BAR_BYTES, (VM_WRITE | VM_READ), APEX_BAR_OFFSET,
> -                       NUM_REGIONS, mappable_regions, PCI_BAR },
> -               GASKET_UNUSED_BAR,
> -               GASKET_UNUSED_BAR,
> -               GASKET_UNUSED_BAR,
> -       },
> -       .coherent_buffer_description = {
> -               APEX_CH_MEM_BYTES,
> -               (VM_WRITE | VM_READ),
> -               APEX_CM_OFFSET,
> -       },
> -       .interrupt_type = PCI_MSIX,
> -       .interrupt_bar_index = APEX_BAR_INDEX,
> -       .num_interrupts = APEX_INTERRUPT_COUNT,
> -       .interrupts = apex_interrupts,
> -       .interrupt_pack_width = 7,
> -
> -       .device_open_cb = apex_device_open_cb,
> -       .device_close_cb = apex_device_cleanup,
> -
> -       .ioctl_handler_cb = apex_ioctl,
> -       .device_status_cb = apex_get_status,
> -       .hardware_revision_cb = NULL,
> -       .device_reset_cb = apex_reset,
> -};
> -
> -static struct pci_driver apex_pci_driver = {
> -       .name = "apex",
> -       .probe = apex_pci_probe,
> -       .remove = apex_pci_remove,
> -       .id_table = apex_pci_ids,
> -};
> -
> -static int __init apex_init(void)
> -{
> -       int ret;
> -
> -       ret = gasket_register_device(&apex_desc);
> -       if (ret)
> -               return ret;
> -       ret = pci_register_driver(&apex_pci_driver);
> -       if (ret)
> -               gasket_unregister_device(&apex_desc);
> -       return ret;
> -}
> -
> -static void apex_exit(void)
> -{
> -       pci_unregister_driver(&apex_pci_driver);
> -       gasket_unregister_device(&apex_desc);
> -}
> -MODULE_DESCRIPTION("Google Apex driver");
> -MODULE_VERSION(APEX_DRIVER_VERSION);
> -MODULE_LICENSE("GPL v2");
> -MODULE_AUTHOR("John Joseph <jnjoseph@google.com>");
> -MODULE_DEVICE_TABLE(pci, apex_pci_ids);
> -module_init(apex_init);
> -module_exit(apex_exit);
> diff --git a/drivers/staging/gasket/gasket.h b/drivers/staging/gasket/gasket.h
> deleted file mode 100644
> index a0f065c517a5..000000000000
> --- a/drivers/staging/gasket/gasket.h
> +++ /dev/null
> @@ -1,122 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -/*
> - * Common Gasket device kernel and user space declarations.
> - *
> - * Copyright (C) 2018 Google, Inc.
> - */
> -#ifndef __GASKET_H__
> -#define __GASKET_H__
> -
> -#include <linux/ioctl.h>
> -#include <linux/types.h>
> -
> -/* ioctl structure declarations */
> -
> -/* Ioctl structures are padded to a multiple of 64 bits */
> -/* and padded to put 64 bit values on 64 bit boundaries. */
> -/* Unsigned 64 bit integers are used to hold pointers. */
> -/* This helps compatibility between 32 and 64 bits. */
> -
> -/*
> - * Common structure for ioctls associating an eventfd with a device interrupt,
> - * when using the Gasket interrupt module.
> - */
> -struct gasket_interrupt_eventfd {
> -       u64 interrupt;
> -       u64 event_fd;
> -};
> -
> -/*
> - * Common structure for ioctls mapping and unmapping buffers when using the
> - * Gasket page_table module.
> - */
> -struct gasket_page_table_ioctl {
> -       u64 page_table_index;
> -       u64 size;
> -       u64 host_address;
> -       u64 device_address;
> -};
> -
> -/*
> - * Common structure for ioctls mapping and unmapping buffers when using the
> - * Gasket page_table module.
> - * dma_address: phys addr start of coherent memory, allocated by kernel
> - */
> -struct gasket_coherent_alloc_config_ioctl {
> -       u64 page_table_index;
> -       u64 enable;
> -       u64 size;
> -       u64 dma_address;
> -};
> -
> -/* Base number for all Gasket-common IOCTLs */
> -#define GASKET_IOCTL_BASE 0xDC
> -
> -/* Reset the device. */
> -#define GASKET_IOCTL_RESET _IO(GASKET_IOCTL_BASE, 0)
> -
> -/* Associate the specified [event]fd with the specified interrupt. */
> -#define GASKET_IOCTL_SET_EVENTFD                                               \
> -       _IOW(GASKET_IOCTL_BASE, 1, struct gasket_interrupt_eventfd)
> -
> -/*
> - * Clears any eventfd associated with the specified interrupt. The (ulong)
> - * argument is the interrupt number to clear.
> - */
> -#define GASKET_IOCTL_CLEAR_EVENTFD _IOW(GASKET_IOCTL_BASE, 2, unsigned long)
> -
> -/*
> - * [Loopbacks only] Requests that the loopback device send the specified
> - * interrupt to the host. The (ulong) argument is the number of the interrupt to
> - * send.
> - */
> -#define GASKET_IOCTL_LOOPBACK_INTERRUPT                                        \
> -       _IOW(GASKET_IOCTL_BASE, 3, unsigned long)
> -
> -/* Queries the kernel for the number of page tables supported by the device. */
> -#define GASKET_IOCTL_NUMBER_PAGE_TABLES _IOR(GASKET_IOCTL_BASE, 4, u64)
> -
> -/*
> - * Queries the kernel for the maximum size of the page table.  Only the size and
> - * page_table_index fields are used from the struct gasket_page_table_ioctl.
> - */
> -#define GASKET_IOCTL_PAGE_TABLE_SIZE                                           \
> -       _IOWR(GASKET_IOCTL_BASE, 5, struct gasket_page_table_ioctl)
> -
> -/*
> - * Queries the kernel for the current simple page table size.  Only the size and
> - * page_table_index fields are used from the struct gasket_page_table_ioctl.
> - */
> -#define GASKET_IOCTL_SIMPLE_PAGE_TABLE_SIZE                                    \
> -       _IOWR(GASKET_IOCTL_BASE, 6, struct gasket_page_table_ioctl)
> -
> -/*
> - * Tells the kernel to change the split between the number of simple and
> - * extended entries in the given page table. Only the size and page_table_index
> - * fields are used from the struct gasket_page_table_ioctl.
> - */
> -#define GASKET_IOCTL_PARTITION_PAGE_TABLE                                      \
> -       _IOW(GASKET_IOCTL_BASE, 7, struct gasket_page_table_ioctl)
> -
> -/*
> - * Tells the kernel to map size bytes at host_address to device_address in
> - * page_table_index page table.
> - */
> -#define GASKET_IOCTL_MAP_BUFFER                                                \
> -       _IOW(GASKET_IOCTL_BASE, 8, struct gasket_page_table_ioctl)
> -
> -/*
> - * Tells the kernel to unmap size bytes at host_address from device_address in
> - * page_table_index page table.
> - */
> -#define GASKET_IOCTL_UNMAP_BUFFER                                              \
> -       _IOW(GASKET_IOCTL_BASE, 9, struct gasket_page_table_ioctl)
> -
> -/* Clear the interrupt counts stored for this device. */
> -#define GASKET_IOCTL_CLEAR_INTERRUPT_COUNTS _IO(GASKET_IOCTL_BASE, 10)
> -
> -/* Enable/Disable and configure the coherent allocator. */
> -#define GASKET_IOCTL_CONFIG_COHERENT_ALLOCATOR                                 \
> -       _IOWR(GASKET_IOCTL_BASE, 11, struct gasket_coherent_alloc_config_ioctl)
> -
> -#endif /* __GASKET_H__ */
> diff --git a/drivers/staging/gasket/gasket_constants.h b/drivers/staging/gasket/gasket_constants.h
> deleted file mode 100644
> index 9ea9c8833f27..000000000000
> --- a/drivers/staging/gasket/gasket_constants.h
> +++ /dev/null
> @@ -1,44 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -/* Copyright (C) 2018 Google, Inc. */
> -#ifndef __GASKET_CONSTANTS_H__
> -#define __GASKET_CONSTANTS_H__
> -
> -#define GASKET_FRAMEWORK_VERSION "1.1.2"
> -
> -/*
> - * The maximum number of simultaneous device types supported by the framework.
> - */
> -#define GASKET_FRAMEWORK_DESC_MAX 2
> -
> -/* The maximum devices per each type. */
> -#define GASKET_DEV_MAX 256
> -
> -/* The number of supported Gasket page tables per device. */
> -#define GASKET_MAX_NUM_PAGE_TABLES 1
> -
> -/* Maximum length of device names (driver name + minor number suffix + NULL). */
> -#define GASKET_NAME_MAX 32
> -
> -/* Device status enumeration. */
> -enum gasket_status {
> -       /*
> -        * A device is DEAD if it has not been initialized or has had an error.
> -        */
> -       GASKET_STATUS_DEAD = 0,
> -       /*
> -        * A device is LAMED if the hardware is healthy but the kernel was
> -        * unable to enable some functionality (e.g. interrupts).
> -        */
> -       GASKET_STATUS_LAMED,
> -
> -       /* A device is ALIVE if it is ready for operation. */
> -       GASKET_STATUS_ALIVE,
> -
> -       /*
> -        * This status is set when the driver is exiting and waiting for all
> -        * handles to be closed.
> -        */
> -       GASKET_STATUS_DRIVER_EXIT,
> -};
> -
> -#endif
> diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
> deleted file mode 100644
> index 28dab302183b..000000000000
> --- a/drivers/staging/gasket/gasket_core.c
> +++ /dev/null
> @@ -1,1815 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0
> -/*
> - * Gasket generic driver framework. This file contains the implementation
> - * for the Gasket generic driver framework - the functionality that is common
> - * across Gasket devices.
> - *
> - * Copyright (C) 2018 Google, Inc.
> - */
> -
> -#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> -
> -#include "gasket_core.h"
> -
> -#include "gasket_interrupt.h"
> -#include "gasket_ioctl.h"
> -#include "gasket_page_table.h"
> -#include "gasket_sysfs.h"
> -
> -#include <linux/capability.h>
> -#include <linux/compiler.h>
> -#include <linux/delay.h>
> -#include <linux/device.h>
> -#include <linux/fs.h>
> -#include <linux/init.h>
> -#include <linux/of.h>
> -#include <linux/pid_namespace.h>
> -#include <linux/printk.h>
> -#include <linux/sched.h>
> -
> -#ifdef GASKET_KERNEL_TRACE_SUPPORT
> -#define CREATE_TRACE_POINTS
> -#include <trace/events/gasket_mmap.h>
> -#else
> -#define trace_gasket_mmap_exit(x)
> -#define trace_gasket_mmap_entry(x, ...)
> -#endif
> -
> -/*
> - * "Private" members of gasket_driver_desc.
> - *
> - * Contains internal per-device type tracking data, i.e., data not appropriate
> - * as part of the public interface for the generic framework.
> - */
> -struct gasket_internal_desc {
> -       /* Device-specific-driver-provided configuration information. */
> -       const struct gasket_driver_desc *driver_desc;
> -
> -       /* Protects access to per-driver data (i.e. this structure). */
> -       struct mutex mutex;
> -
> -       /* Kernel-internal device class. */
> -       struct class *class;
> -
> -       /* Instantiated / present devices of this type. */
> -       struct gasket_dev *devs[GASKET_DEV_MAX];
> -};
> -
> -/* do_map_region() needs be able to return more than just true/false. */
> -enum do_map_region_status {
> -       /* The region was successfully mapped. */
> -       DO_MAP_REGION_SUCCESS,
> -
> -       /* Attempted to map region and failed. */
> -       DO_MAP_REGION_FAILURE,
> -
> -       /* The requested region to map was not part of a mappable region. */
> -       DO_MAP_REGION_INVALID,
> -};
> -
> -/* Global data definitions. */
> -/* Mutex - only for framework-wide data. Other data should be protected by
> - * finer-grained locks.
> - */
> -static DEFINE_MUTEX(g_mutex);
> -
> -/* List of all registered device descriptions & their supporting data. */
> -static struct gasket_internal_desc g_descs[GASKET_FRAMEWORK_DESC_MAX];
> -
> -/* Mapping of statuses to human-readable strings. Must end with {0,NULL}. */
> -static const struct gasket_num_name gasket_status_name_table[] = {
> -       { GASKET_STATUS_DEAD, "DEAD" },
> -       { GASKET_STATUS_ALIVE, "ALIVE" },
> -       { GASKET_STATUS_LAMED, "LAMED" },
> -       { GASKET_STATUS_DRIVER_EXIT, "DRIVER_EXITING" },
> -       { 0, NULL },
> -};
> -
> -/* Enumeration of the automatic Gasket framework sysfs nodes. */
> -enum gasket_sysfs_attribute_type {
> -       ATTR_BAR_OFFSETS,
> -       ATTR_BAR_SIZES,
> -       ATTR_DRIVER_VERSION,
> -       ATTR_FRAMEWORK_VERSION,
> -       ATTR_DEVICE_TYPE,
> -       ATTR_HARDWARE_REVISION,
> -       ATTR_PCI_ADDRESS,
> -       ATTR_STATUS,
> -       ATTR_IS_DEVICE_OWNED,
> -       ATTR_DEVICE_OWNER,
> -       ATTR_WRITE_OPEN_COUNT,
> -       ATTR_RESET_COUNT,
> -       ATTR_USER_MEM_RANGES
> -};
> -
> -/* Perform a standard Gasket callback. */
> -static inline int
> -check_and_invoke_callback(struct gasket_dev *gasket_dev,
> -                         int (*cb_function)(struct gasket_dev *))
> -{
> -       int ret = 0;
> -
> -       if (cb_function) {
> -               mutex_lock(&gasket_dev->mutex);
> -               ret = cb_function(gasket_dev);
> -               mutex_unlock(&gasket_dev->mutex);
> -       }
> -       return ret;
> -}
> -
> -/* Perform a standard Gasket callback without grabbing gasket_dev->mutex. */
> -static inline int
> -gasket_check_and_invoke_callback_nolock(struct gasket_dev *gasket_dev,
> -                                       int (*cb_function)(struct gasket_dev *))
> -{
> -       int ret = 0;
> -
> -       if (cb_function)
> -               ret = cb_function(gasket_dev);
> -       return ret;
> -}
> -
> -/*
> - * Return nonzero if the gasket_cdev_info is owned by the current thread group
> - * ID.
> - */
> -static int gasket_owned_by_current_tgid(struct gasket_cdev_info *info)
> -{
> -       return (info->ownership.is_owned &&
> -               (info->ownership.owner == current->tgid));
> -}
> -
> -/*
> - * Find the next free gasket_internal_dev slot.
> - *
> - * Returns the located slot number on success or a negative number on failure.
> - */
> -static int gasket_find_dev_slot(struct gasket_internal_desc *internal_desc,
> -                               const char *kobj_name)
> -{
> -       int i;
> -
> -       mutex_lock(&internal_desc->mutex);
> -
> -       /* Search for a previous instance of this device. */
> -       for (i = 0; i < GASKET_DEV_MAX; i++) {
> -               if (internal_desc->devs[i] &&
> -                   strcmp(internal_desc->devs[i]->kobj_name, kobj_name) == 0) {
> -                       pr_err("Duplicate device %s\n", kobj_name);
> -                       mutex_unlock(&internal_desc->mutex);
> -                       return -EBUSY;
> -               }
> -       }
> -
> -       /* Find a free device slot. */
> -       for (i = 0; i < GASKET_DEV_MAX; i++) {
> -               if (!internal_desc->devs[i])
> -                       break;
> -       }
> -
> -       if (i == GASKET_DEV_MAX) {
> -               pr_err("Too many registered devices; max %d\n", GASKET_DEV_MAX);
> -               mutex_unlock(&internal_desc->mutex);
> -               return -EBUSY;
> -       }
> -
> -       mutex_unlock(&internal_desc->mutex);
> -       return i;
> -}
> -
> -/*
> - * Allocate and initialize a Gasket device structure, add the device to the
> - * device list.
> - *
> - * Returns 0 if successful, a negative error code otherwise.
> - */
> -static int gasket_alloc_dev(struct gasket_internal_desc *internal_desc,
> -                           struct device *parent, struct gasket_dev **pdev)
> -{
> -       int dev_idx;
> -       const struct gasket_driver_desc *driver_desc =
> -               internal_desc->driver_desc;
> -       struct gasket_dev *gasket_dev;
> -       struct gasket_cdev_info *dev_info;
> -       const char *parent_name = dev_name(parent);
> -
> -       pr_debug("Allocating a Gasket device, parent %s.\n", parent_name);
> -
> -       *pdev = NULL;
> -
> -       dev_idx = gasket_find_dev_slot(internal_desc, parent_name);
> -       if (dev_idx < 0)
> -               return dev_idx;
> -
> -       gasket_dev = *pdev = kzalloc(sizeof(*gasket_dev), GFP_KERNEL);
> -       if (!gasket_dev) {
> -               pr_err("no memory for device, parent %s\n", parent_name);
> -               return -ENOMEM;
> -       }
> -       internal_desc->devs[dev_idx] = gasket_dev;
> -
> -       mutex_init(&gasket_dev->mutex);
> -
> -       gasket_dev->internal_desc = internal_desc;
> -       gasket_dev->dev_idx = dev_idx;
> -       snprintf(gasket_dev->kobj_name, GASKET_NAME_MAX, "%s", parent_name);
> -       gasket_dev->dev = get_device(parent);
> -       /* gasket_bar_data is uninitialized. */
> -       gasket_dev->num_page_tables = driver_desc->num_page_tables;
> -       /* max_page_table_size and *page table are uninit'ed */
> -       /* interrupt_data is not initialized. */
> -       /* status is 0, or GASKET_STATUS_DEAD */
> -
> -       dev_info = &gasket_dev->dev_info;
> -       snprintf(dev_info->name, GASKET_NAME_MAX, "%s_%u", driver_desc->name,
> -                gasket_dev->dev_idx);
> -       dev_info->devt =
> -               MKDEV(driver_desc->major, driver_desc->minor +
> -                     gasket_dev->dev_idx);
> -       dev_info->device =
> -               device_create(internal_desc->class, parent, dev_info->devt,
> -                             gasket_dev, dev_info->name);
> -
> -       /* cdev has not yet been added; cdev_added is 0 */
> -       dev_info->gasket_dev_ptr = gasket_dev;
> -       /* ownership is all 0, indicating no owner or opens. */
> -
> -       return 0;
> -}
> -
> -/* Free a Gasket device. */
> -static void gasket_free_dev(struct gasket_dev *gasket_dev)
> -{
> -       struct gasket_internal_desc *internal_desc = gasket_dev->internal_desc;
> -
> -       mutex_lock(&internal_desc->mutex);
> -       internal_desc->devs[gasket_dev->dev_idx] = NULL;
> -       mutex_unlock(&internal_desc->mutex);
> -       put_device(gasket_dev->dev);
> -       kfree(gasket_dev);
> -}
> -
> -/*
> - * Maps the specified bar into kernel space.
> - *
> - * Returns 0 on success, a negative error code otherwise.
> - * A zero-sized BAR will not be mapped, but is not an error.
> - */
> -static int gasket_map_pci_bar(struct gasket_dev *gasket_dev, int bar_num)
> -{
> -       struct gasket_internal_desc *internal_desc = gasket_dev->internal_desc;
> -       const struct gasket_driver_desc *driver_desc =
> -               internal_desc->driver_desc;
> -       ulong desc_bytes = driver_desc->bar_descriptions[bar_num].size;
> -       struct gasket_bar_data *data;
> -       int ret;
> -
> -       if (desc_bytes == 0)
> -               return 0;
> -
> -       if (driver_desc->bar_descriptions[bar_num].type != PCI_BAR) {
> -               /* not PCI: skip this entry */
> -               return 0;
> -       }
> -
> -       data = &gasket_dev->bar_data[bar_num];
> -
> -       /*
> -        * pci_resource_start and pci_resource_len return a "resource_size_t",
> -        * which is safely castable to ulong (which itself is the arg to
> -        * request_mem_region).
> -        */
> -       data->phys_base =
> -               (ulong)pci_resource_start(gasket_dev->pci_dev, bar_num);
> -       if (!data->phys_base) {
> -               dev_err(gasket_dev->dev, "Cannot get BAR%u base address\n",
> -                       bar_num);
> -               return -EINVAL;
> -       }
> -
> -       data->length_bytes =
> -               (ulong)pci_resource_len(gasket_dev->pci_dev, bar_num);
> -       if (data->length_bytes < desc_bytes) {
> -               dev_err(gasket_dev->dev,
> -                       "PCI BAR %u space is too small: %lu; expected >= %lu\n",
> -                       bar_num, data->length_bytes, desc_bytes);
> -               return -ENOMEM;
> -       }
> -
> -       if (!request_mem_region(data->phys_base, data->length_bytes,
> -                               gasket_dev->dev_info.name)) {
> -               dev_err(gasket_dev->dev,
> -                       "Cannot get BAR %d memory region %p\n",
> -                       bar_num, &gasket_dev->pci_dev->resource[bar_num]);
> -               return -EINVAL;
> -       }
> -
> -       data->virt_base = ioremap(data->phys_base, data->length_bytes);
> -       if (!data->virt_base) {
> -               dev_err(gasket_dev->dev,
> -                       "Cannot remap BAR %d memory region %p\n",
> -                       bar_num, &gasket_dev->pci_dev->resource[bar_num]);
> -               ret = -ENOMEM;
> -               goto fail;
> -       }
> -
> -       dma_set_mask(&gasket_dev->pci_dev->dev, DMA_BIT_MASK(64));
> -       dma_set_coherent_mask(&gasket_dev->pci_dev->dev, DMA_BIT_MASK(64));
> -
> -       return 0;
> -
> -fail:
> -       iounmap(data->virt_base);
> -       release_mem_region(data->phys_base, data->length_bytes);
> -       return ret;
> -}
> -
> -/*
> - * Releases PCI BAR mapping.
> - *
> - * A zero-sized or not-mapped BAR will not be unmapped, but is not an error.
> - */
> -static void gasket_unmap_pci_bar(struct gasket_dev *dev, int bar_num)
> -{
> -       ulong base, bytes;
> -       struct gasket_internal_desc *internal_desc = dev->internal_desc;
> -       const struct gasket_driver_desc *driver_desc =
> -               internal_desc->driver_desc;
> -
> -       if (driver_desc->bar_descriptions[bar_num].size == 0 ||
> -           !dev->bar_data[bar_num].virt_base)
> -               return;
> -
> -       if (driver_desc->bar_descriptions[bar_num].type != PCI_BAR)
> -               return;
> -
> -       iounmap(dev->bar_data[bar_num].virt_base);
> -       dev->bar_data[bar_num].virt_base = NULL;
> -
> -       base = pci_resource_start(dev->pci_dev, bar_num);
> -       if (!base) {
> -               dev_err(dev->dev, "cannot get PCI BAR%u base address\n",
> -                       bar_num);
> -               return;
> -       }
> -
> -       bytes = pci_resource_len(dev->pci_dev, bar_num);
> -       release_mem_region(base, bytes);
> -}
> -
> -/*
> - * Setup PCI memory mapping for the specified device.
> - *
> - * Reads the BAR registers and sets up pointers to the device's memory mapped
> - * IO space.
> - *
> - * Returns 0 on success and a negative value otherwise.
> - */
> -static int gasket_setup_pci(struct pci_dev *pci_dev,
> -                           struct gasket_dev *gasket_dev)
> -{
> -       int i, mapped_bars, ret;
> -
> -       for (i = 0; i < PCI_STD_NUM_BARS; i++) {
> -               ret = gasket_map_pci_bar(gasket_dev, i);
> -               if (ret) {
> -                       mapped_bars = i;
> -                       goto fail;
> -               }
> -       }
> -
> -       return 0;
> -
> -fail:
> -       for (i = 0; i < mapped_bars; i++)
> -               gasket_unmap_pci_bar(gasket_dev, i);
> -
> -       return -ENOMEM;
> -}
> -
> -/* Unmaps memory for the specified device. */
> -static void gasket_cleanup_pci(struct gasket_dev *gasket_dev)
> -{
> -       int i;
> -
> -       for (i = 0; i < PCI_STD_NUM_BARS; i++)
> -               gasket_unmap_pci_bar(gasket_dev, i);
> -}
> -
> -/* Determine the health of the Gasket device. */
> -static int gasket_get_hw_status(struct gasket_dev *gasket_dev)
> -{
> -       int status;
> -       int i;
> -       const struct gasket_driver_desc *driver_desc =
> -               gasket_dev->internal_desc->driver_desc;
> -
> -       status = gasket_check_and_invoke_callback_nolock(gasket_dev,
> -                                                        driver_desc->device_status_cb);
> -       if (status != GASKET_STATUS_ALIVE) {
> -               dev_dbg(gasket_dev->dev, "Hardware reported status %d.\n",
> -                       status);
> -               return status;
> -       }
> -
> -       status = gasket_interrupt_system_status(gasket_dev);
> -       if (status != GASKET_STATUS_ALIVE) {
> -               dev_dbg(gasket_dev->dev,
> -                       "Interrupt system reported status %d.\n", status);
> -               return status;
> -       }
> -
> -       for (i = 0; i < driver_desc->num_page_tables; ++i) {
> -               status = gasket_page_table_system_status(gasket_dev->page_table[i]);
> -               if (status != GASKET_STATUS_ALIVE) {
> -                       dev_dbg(gasket_dev->dev,
> -                               "Page table %d reported status %d.\n",
> -                               i, status);
> -                       return status;
> -               }
> -       }
> -
> -       return GASKET_STATUS_ALIVE;
> -}
> -
> -static ssize_t
> -gasket_write_mappable_regions(char *buf,
> -                             const struct gasket_driver_desc *driver_desc,
> -                             int bar_index)
> -{
> -       int i;
> -       ssize_t written;
> -       ssize_t total_written = 0;
> -       ulong min_addr, max_addr;
> -       struct gasket_bar_desc bar_desc =
> -               driver_desc->bar_descriptions[bar_index];
> -
> -       if (bar_desc.permissions == GASKET_NOMAP)
> -               return 0;
> -       for (i = 0;
> -            i < bar_desc.num_mappable_regions && total_written < PAGE_SIZE;
> -            i++) {
> -               min_addr = bar_desc.mappable_regions[i].start -
> -                          driver_desc->legacy_mmap_address_offset;
> -               max_addr = bar_desc.mappable_regions[i].start -
> -                          driver_desc->legacy_mmap_address_offset +
> -                          bar_desc.mappable_regions[i].length_bytes;
> -               written = scnprintf(buf, PAGE_SIZE - total_written,
> -                                   "0x%08lx-0x%08lx\n", min_addr, max_addr);
> -               total_written += written;
> -               buf += written;
> -       }
> -       return total_written;
> -}
> -
> -static ssize_t gasket_sysfs_data_show(struct device *device,
> -                                     struct device_attribute *attr, char *buf)
> -{
> -       int i, ret = 0;
> -       ssize_t current_written = 0;
> -       const struct gasket_driver_desc *driver_desc;
> -       struct gasket_dev *gasket_dev;
> -       struct gasket_sysfs_attribute *gasket_attr;
> -       const struct gasket_bar_desc *bar_desc;
> -       enum gasket_sysfs_attribute_type sysfs_type;
> -
> -       gasket_dev = gasket_sysfs_get_device_data(device);
> -       if (!gasket_dev) {
> -               dev_err(device, "No sysfs mapping found for device\n");
> -               return 0;
> -       }
> -
> -       gasket_attr = gasket_sysfs_get_attr(device, attr);
> -       if (!gasket_attr) {
> -               dev_err(device, "No sysfs attr found for device\n");
> -               gasket_sysfs_put_device_data(device, gasket_dev);
> -               return 0;
> -       }
> -
> -       driver_desc = gasket_dev->internal_desc->driver_desc;
> -
> -       sysfs_type =
> -               (enum gasket_sysfs_attribute_type)gasket_attr->data.attr_type;
> -       switch (sysfs_type) {
> -       case ATTR_BAR_OFFSETS:
> -               for (i = 0; i < PCI_STD_NUM_BARS; i++) {
> -                       bar_desc = &driver_desc->bar_descriptions[i];
> -                       if (bar_desc->size == 0)
> -                               continue;
> -                       current_written =
> -                               snprintf(buf, PAGE_SIZE - ret, "%d: 0x%lx\n", i,
> -                                        (ulong)bar_desc->base);
> -                       buf += current_written;
> -                       ret += current_written;
> -               }
> -               break;
> -       case ATTR_BAR_SIZES:
> -               for (i = 0; i < PCI_STD_NUM_BARS; i++) {
> -                       bar_desc = &driver_desc->bar_descriptions[i];
> -                       if (bar_desc->size == 0)
> -                               continue;
> -                       current_written =
> -                               snprintf(buf, PAGE_SIZE - ret, "%d: 0x%lx\n", i,
> -                                        (ulong)bar_desc->size);
> -                       buf += current_written;
> -                       ret += current_written;
> -               }
> -               break;
> -       case ATTR_DRIVER_VERSION:
> -               ret = snprintf(buf, PAGE_SIZE, "%s\n",
> -                              gasket_dev->internal_desc->driver_desc->driver_version);
> -               break;
> -       case ATTR_FRAMEWORK_VERSION:
> -               ret = snprintf(buf, PAGE_SIZE, "%s\n",
> -                              GASKET_FRAMEWORK_VERSION);
> -               break;
> -       case ATTR_DEVICE_TYPE:
> -               ret = snprintf(buf, PAGE_SIZE, "%s\n",
> -                              gasket_dev->internal_desc->driver_desc->name);
> -               break;
> -       case ATTR_HARDWARE_REVISION:
> -               ret = snprintf(buf, PAGE_SIZE, "%d\n",
> -                              gasket_dev->hardware_revision);
> -               break;
> -       case ATTR_PCI_ADDRESS:
> -               ret = snprintf(buf, PAGE_SIZE, "%s\n", gasket_dev->kobj_name);
> -               break;
> -       case ATTR_STATUS:
> -               ret = snprintf(buf, PAGE_SIZE, "%s\n",
> -                              gasket_num_name_lookup(gasket_dev->status,
> -                                                     gasket_status_name_table));
> -               break;
> -       case ATTR_IS_DEVICE_OWNED:
> -               ret = snprintf(buf, PAGE_SIZE, "%d\n",
> -                              gasket_dev->dev_info.ownership.is_owned);
> -               break;
> -       case ATTR_DEVICE_OWNER:
> -               ret = snprintf(buf, PAGE_SIZE, "%d\n",
> -                              gasket_dev->dev_info.ownership.owner);
> -               break;
> -       case ATTR_WRITE_OPEN_COUNT:
> -               ret = snprintf(buf, PAGE_SIZE, "%d\n",
> -                              gasket_dev->dev_info.ownership.write_open_count);
> -               break;
> -       case ATTR_RESET_COUNT:
> -               ret = snprintf(buf, PAGE_SIZE, "%d\n", gasket_dev->reset_count);
> -               break;
> -       case ATTR_USER_MEM_RANGES:
> -               for (i = 0; i < PCI_STD_NUM_BARS; ++i) {
> -                       current_written =
> -                               gasket_write_mappable_regions(buf, driver_desc,
> -                                                             i);
> -                       buf += current_written;
> -                       ret += current_written;
> -               }
> -               break;
> -       default:
> -               dev_dbg(gasket_dev->dev, "Unknown attribute: %s\n",
> -                       attr->attr.name);
> -               ret = 0;
> -               break;
> -       }
> -
> -       gasket_sysfs_put_attr(device, gasket_attr);
> -       gasket_sysfs_put_device_data(device, gasket_dev);
> -       return ret;
> -}
> -
> -/* These attributes apply to all Gasket driver instances. */
> -static const struct gasket_sysfs_attribute gasket_sysfs_generic_attrs[] = {
> -       GASKET_SYSFS_RO(bar_offsets, gasket_sysfs_data_show, ATTR_BAR_OFFSETS),
> -       GASKET_SYSFS_RO(bar_sizes, gasket_sysfs_data_show, ATTR_BAR_SIZES),
> -       GASKET_SYSFS_RO(driver_version, gasket_sysfs_data_show,
> -                       ATTR_DRIVER_VERSION),
> -       GASKET_SYSFS_RO(framework_version, gasket_sysfs_data_show,
> -                       ATTR_FRAMEWORK_VERSION),
> -       GASKET_SYSFS_RO(device_type, gasket_sysfs_data_show, ATTR_DEVICE_TYPE),
> -       GASKET_SYSFS_RO(revision, gasket_sysfs_data_show,
> -                       ATTR_HARDWARE_REVISION),
> -       GASKET_SYSFS_RO(pci_address, gasket_sysfs_data_show, ATTR_PCI_ADDRESS),
> -       GASKET_SYSFS_RO(status, gasket_sysfs_data_show, ATTR_STATUS),
> -       GASKET_SYSFS_RO(is_device_owned, gasket_sysfs_data_show,
> -                       ATTR_IS_DEVICE_OWNED),
> -       GASKET_SYSFS_RO(device_owner, gasket_sysfs_data_show,
> -                       ATTR_DEVICE_OWNER),
> -       GASKET_SYSFS_RO(write_open_count, gasket_sysfs_data_show,
> -                       ATTR_WRITE_OPEN_COUNT),
> -       GASKET_SYSFS_RO(reset_count, gasket_sysfs_data_show, ATTR_RESET_COUNT),
> -       GASKET_SYSFS_RO(user_mem_ranges, gasket_sysfs_data_show,
> -                       ATTR_USER_MEM_RANGES),
> -       GASKET_END_OF_ATTR_ARRAY
> -};
> -
> -/* Add a char device and related info. */
> -static int gasket_add_cdev(struct gasket_cdev_info *dev_info,
> -                          const struct file_operations *file_ops,
> -                          struct module *owner)
> -{
> -       int ret;
> -
> -       cdev_init(&dev_info->cdev, file_ops);
> -       dev_info->cdev.owner = owner;
> -       ret = cdev_add(&dev_info->cdev, dev_info->devt, 1);
> -       if (ret) {
> -               dev_err(dev_info->gasket_dev_ptr->dev,
> -                       "cannot add char device [ret=%d]\n", ret);
> -               return ret;
> -       }
> -       dev_info->cdev_added = 1;
> -
> -       return 0;
> -}
> -
> -/* Disable device operations. */
> -void gasket_disable_device(struct gasket_dev *gasket_dev)
> -{
> -       const struct gasket_driver_desc *driver_desc =
> -               gasket_dev->internal_desc->driver_desc;
> -       int i;
> -
> -       /* Only delete the device if it has been successfully added. */
> -       if (gasket_dev->dev_info.cdev_added)
> -               cdev_del(&gasket_dev->dev_info.cdev);
> -
> -       gasket_dev->status = GASKET_STATUS_DEAD;
> -
> -       gasket_interrupt_cleanup(gasket_dev);
> -
> -       for (i = 0; i < driver_desc->num_page_tables; ++i) {
> -               if (gasket_dev->page_table[i]) {
> -                       gasket_page_table_reset(gasket_dev->page_table[i]);
> -                       gasket_page_table_cleanup(gasket_dev->page_table[i]);
> -               }
> -       }
> -}
> -EXPORT_SYMBOL(gasket_disable_device);
> -
> -/*
> - * Registered driver descriptor lookup for PCI devices.
> - *
> - * Precondition: Called with g_mutex held (to avoid a race on return).
> - * Returns NULL if no matching device was found.
> - */
> -static struct gasket_internal_desc *
> -lookup_pci_internal_desc(struct pci_dev *pci_dev)
> -{
> -       int i;
> -
> -       __must_hold(&g_mutex);
> -       for (i = 0; i < GASKET_FRAMEWORK_DESC_MAX; i++) {
> -               if (g_descs[i].driver_desc &&
> -                   g_descs[i].driver_desc->pci_id_table &&
> -                   pci_match_id(g_descs[i].driver_desc->pci_id_table, pci_dev))
> -                       return &g_descs[i];
> -       }
> -
> -       return NULL;
> -}
> -
> -/*
> - * Verifies that the user has permissions to perform the requested mapping and
> - * that the provided descriptor/range is of adequate size to hold the range to
> - * be mapped.
> - */
> -static bool gasket_mmap_has_permissions(struct gasket_dev *gasket_dev,
> -                                       struct vm_area_struct *vma,
> -                                       int bar_permissions)
> -{
> -       int requested_permissions;
> -       /* Always allow sysadmin to access. */
> -       if (capable(CAP_SYS_ADMIN))
> -               return true;
> -
> -       /* Never allow non-sysadmins to access to a dead device. */
> -       if (gasket_dev->status != GASKET_STATUS_ALIVE) {
> -               dev_dbg(gasket_dev->dev, "Device is dead.\n");
> -               return false;
> -       }
> -
> -       /* Make sure that no wrong flags are set. */
> -       requested_permissions =
> -               (vma->vm_flags & VM_ACCESS_FLAGS);
> -       if (requested_permissions & ~(bar_permissions)) {
> -               dev_dbg(gasket_dev->dev,
> -                       "Attempting to map a region with requested permissions 0x%x, but region has permissions 0x%x.\n",
> -                       requested_permissions, bar_permissions);
> -               return false;
> -       }
> -
> -       /* Do not allow a non-owner to write. */
> -       if ((vma->vm_flags & VM_WRITE) &&
> -           !gasket_owned_by_current_tgid(&gasket_dev->dev_info)) {
> -               dev_dbg(gasket_dev->dev,
> -                       "Attempting to mmap a region for write without owning device.\n");
> -               return false;
> -       }
> -
> -       return true;
> -}
> -
> -/*
> - * Verifies that the input address is within the region allocated to coherent
> - * buffer.
> - */
> -static bool
> -gasket_is_coherent_region(const struct gasket_driver_desc *driver_desc,
> -                         ulong address)
> -{
> -       struct gasket_coherent_buffer_desc coh_buff_desc =
> -               driver_desc->coherent_buffer_description;
> -
> -       if (coh_buff_desc.permissions != GASKET_NOMAP) {
> -               if ((address >= coh_buff_desc.base) &&
> -                   (address < coh_buff_desc.base + coh_buff_desc.size)) {
> -                       return true;
> -               }
> -       }
> -       return false;
> -}
> -
> -static int gasket_get_bar_index(const struct gasket_dev *gasket_dev,
> -                               ulong phys_addr)
> -{
> -       int i;
> -       const struct gasket_driver_desc *driver_desc;
> -
> -       driver_desc = gasket_dev->internal_desc->driver_desc;
> -       for (i = 0; i < PCI_STD_NUM_BARS; ++i) {
> -               struct gasket_bar_desc bar_desc =
> -                       driver_desc->bar_descriptions[i];
> -
> -               if (bar_desc.permissions != GASKET_NOMAP) {
> -                       if (phys_addr >= bar_desc.base &&
> -                           phys_addr < (bar_desc.base + bar_desc.size)) {
> -                               return i;
> -                       }
> -               }
> -       }
> -       /* If we haven't found the address by now, it is invalid. */
> -       return -EINVAL;
> -}
> -
> -/*
> - * Sets the actual bounds to map, given the device's mappable region.
> - *
> - * Given the device's mappable region, along with the user-requested mapping
> - * start offset and length of the user region, determine how much of this
> - * mappable region can be mapped into the user's region (start/end offsets),
> - * and the physical offset (phys_offset) into the BAR where the mapping should
> - * begin (either the VMA's or region lower bound).
> - *
> - * In other words, this calculates the overlap between the VMA
> - * (bar_offset, requested_length) and the given gasket_mappable_region.
> - *
> - * Returns true if there's anything to map, and false otherwise.
> - */
> -static bool
> -gasket_mm_get_mapping_addrs(const struct gasket_mappable_region *region,
> -                           ulong bar_offset, ulong requested_length,
> -                           struct gasket_mappable_region *mappable_region,
> -                           ulong *virt_offset)
> -{
> -       ulong range_start = region->start;
> -       ulong range_length = region->length_bytes;
> -       ulong range_end = range_start + range_length;
> -
> -       *virt_offset = 0;
> -       if (bar_offset + requested_length < range_start) {
> -               /*
> -                * If the requested region is completely below the range,
> -                * there is nothing to map.
> -                */
> -               return false;
> -       } else if (bar_offset <= range_start) {
> -               /* If the bar offset is below this range's start
> -                * but the requested length continues into it:
> -                * 1) Only map starting from the beginning of this
> -                *      range's phys. offset, so we don't map unmappable
> -                *      memory.
> -                * 2) The length of the virtual memory to not map is the
> -                *      delta between the bar offset and the
> -                *      mappable start (and since the mappable start is
> -                *      bigger, start - req.)
> -                * 3) The map length is the minimum of the mappable
> -                *      requested length (requested_length - virt_offset)
> -                *      and the actual mappable length of the range.
> -                */
> -               mappable_region->start = range_start;
> -               *virt_offset = range_start - bar_offset;
> -               mappable_region->length_bytes =
> -                       min(requested_length - *virt_offset, range_length);
> -               return true;
> -       } else if (bar_offset > range_start &&
> -                  bar_offset < range_end) {
> -               /*
> -                * If the bar offset is within this range:
> -                * 1) Map starting from the bar offset.
> -                * 2) Because there is no forbidden memory between the
> -                *      bar offset and the range start,
> -                *      virt_offset is 0.
> -                * 3) The map length is the minimum of the requested
> -                *      length and the remaining length in the buffer
> -                *      (range_end - bar_offset)
> -                */
> -               mappable_region->start = bar_offset;
> -               *virt_offset = 0;
> -               mappable_region->length_bytes =
> -                       min(requested_length, range_end - bar_offset);
> -               return true;
> -       }
> -
> -       /*
> -        * If the requested [start] offset is above range_end,
> -        * there's nothing to map.
> -        */
> -       return false;
> -}
> -
> -/*
> - * Calculates the offset where the VMA range begins in its containing BAR.
> - * The offset is written into bar_offset on success.
> - * Returns zero on success, anything else on error.
> - */
> -static int gasket_mm_vma_bar_offset(const struct gasket_dev *gasket_dev,
> -                                   const struct vm_area_struct *vma,
> -                                   ulong *bar_offset)
> -{
> -       ulong raw_offset;
> -       int bar_index;
> -       const struct gasket_driver_desc *driver_desc =
> -               gasket_dev->internal_desc->driver_desc;
> -
> -       raw_offset = (vma->vm_pgoff << PAGE_SHIFT) +
> -               driver_desc->legacy_mmap_address_offset;
> -       bar_index = gasket_get_bar_index(gasket_dev, raw_offset);
> -       if (bar_index < 0) {
> -               dev_err(gasket_dev->dev,
> -                       "Unable to find matching bar for address 0x%lx\n",
> -                       raw_offset);
> -               trace_gasket_mmap_exit(bar_index);
> -               return bar_index;
> -       }
> -       *bar_offset =
> -               raw_offset - driver_desc->bar_descriptions[bar_index].base;
> -
> -       return 0;
> -}
> -
> -int gasket_mm_unmap_region(const struct gasket_dev *gasket_dev,
> -                          struct vm_area_struct *vma,
> -                          const struct gasket_mappable_region *map_region)
> -{
> -       ulong bar_offset;
> -       ulong virt_offset;
> -       struct gasket_mappable_region mappable_region;
> -       int ret;
> -
> -       if (map_region->length_bytes == 0)
> -               return 0;
> -
> -       ret = gasket_mm_vma_bar_offset(gasket_dev, vma, &bar_offset);
> -       if (ret)
> -               return ret;
> -
> -       if (!gasket_mm_get_mapping_addrs(map_region, bar_offset,
> -                                        vma->vm_end - vma->vm_start,
> -                                        &mappable_region, &virt_offset))
> -               return 1;
> -
> -       /*
> -        * The length passed to zap_vma_ptes MUST BE A MULTIPLE OF
> -        * PAGE_SIZE! Trust me. I have the scars.
> -        *
> -        * Next multiple of y: ceil_div(x, y) * y
> -        */
> -       zap_vma_ptes(vma, vma->vm_start + virt_offset,
> -                    DIV_ROUND_UP(mappable_region.length_bytes, PAGE_SIZE) *
> -                    PAGE_SIZE);
> -       return 0;
> -}
> -EXPORT_SYMBOL(gasket_mm_unmap_region);
> -
> -/* Maps a virtual address + range to a physical offset of a BAR. */
> -static enum do_map_region_status
> -do_map_region(const struct gasket_dev *gasket_dev, struct vm_area_struct *vma,
> -             struct gasket_mappable_region *mappable_region)
> -{
> -       /* Maximum size of a single call to io_remap_pfn_range. */
> -       /* I pulled this number out of thin air. */
> -       const ulong max_chunk_size = 64 * 1024 * 1024;
> -       ulong chunk_size, mapped_bytes = 0;
> -
> -       const struct gasket_driver_desc *driver_desc =
> -               gasket_dev->internal_desc->driver_desc;
> -
> -       ulong bar_offset, virt_offset;
> -       struct gasket_mappable_region region_to_map;
> -       ulong phys_offset, map_length;
> -       ulong virt_base, phys_base;
> -       int bar_index, ret;
> -
> -       ret = gasket_mm_vma_bar_offset(gasket_dev, vma, &bar_offset);
> -       if (ret)
> -               return DO_MAP_REGION_INVALID;
> -
> -       if (!gasket_mm_get_mapping_addrs(mappable_region, bar_offset,
> -                                        vma->vm_end - vma->vm_start,
> -                                        &region_to_map, &virt_offset))
> -               return DO_MAP_REGION_INVALID;
> -       phys_offset = region_to_map.start;
> -       map_length = region_to_map.length_bytes;
> -
> -       virt_base = vma->vm_start + virt_offset;
> -       bar_index =
> -               gasket_get_bar_index(gasket_dev,
> -                                    (vma->vm_pgoff << PAGE_SHIFT) +
> -                                    driver_desc->legacy_mmap_address_offset);
> -
> -       if (bar_index < 0)
> -               return DO_MAP_REGION_INVALID;
> -
> -       phys_base = gasket_dev->bar_data[bar_index].phys_base + phys_offset;
> -       while (mapped_bytes < map_length) {
> -               /*
> -                * io_remap_pfn_range can take a while, so we chunk its
> -                * calls and call cond_resched between each.
> -                */
> -               chunk_size = min(max_chunk_size, map_length - mapped_bytes);
> -
> -               cond_resched();
> -               ret = io_remap_pfn_range(vma, virt_base + mapped_bytes,
> -                                        (phys_base + mapped_bytes) >>
> -                                        PAGE_SHIFT, chunk_size,
> -                                        vma->vm_page_prot);
> -               if (ret) {
> -                       dev_err(gasket_dev->dev,
> -                               "Error remapping PFN range.\n");
> -                       goto fail;
> -               }
> -               mapped_bytes += chunk_size;
> -       }
> -
> -       return DO_MAP_REGION_SUCCESS;
> -
> -fail:
> -       /* Unmap the partial chunk we mapped. */
> -       mappable_region->length_bytes = mapped_bytes;
> -       if (gasket_mm_unmap_region(gasket_dev, vma, mappable_region))
> -               dev_err(gasket_dev->dev,
> -                       "Error unmapping partial region 0x%lx (0x%lx bytes)\n",
> -                       (ulong)virt_offset,
> -                       (ulong)mapped_bytes);
> -
> -       return DO_MAP_REGION_FAILURE;
> -}
> -
> -/* Map a region of coherent memory. */
> -static int gasket_mmap_coherent(struct gasket_dev *gasket_dev,
> -                               struct vm_area_struct *vma)
> -{
> -       const struct gasket_driver_desc *driver_desc =
> -               gasket_dev->internal_desc->driver_desc;
> -       const ulong requested_length = vma->vm_end - vma->vm_start;
> -       int ret;
> -       ulong permissions;
> -
> -       if (requested_length == 0 || requested_length >
> -           gasket_dev->coherent_buffer.length_bytes) {
> -               trace_gasket_mmap_exit(-EINVAL);
> -               return -EINVAL;
> -       }
> -
> -       permissions = driver_desc->coherent_buffer_description.permissions;
> -       if (!gasket_mmap_has_permissions(gasket_dev, vma, permissions)) {
> -               dev_err(gasket_dev->dev, "Permission checking failed.\n");
> -               trace_gasket_mmap_exit(-EPERM);
> -               return -EPERM;
> -       }
> -
> -       vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
> -
> -       ret = remap_pfn_range(vma, vma->vm_start,
> -                             (gasket_dev->coherent_buffer.phys_base) >>
> -                             PAGE_SHIFT, requested_length, vma->vm_page_prot);
> -       if (ret) {
> -               dev_err(gasket_dev->dev, "Error remapping PFN range err=%d.\n",
> -                       ret);
> -               trace_gasket_mmap_exit(ret);
> -               return ret;
> -       }
> -
> -       /* Record the user virtual to dma_address mapping that was
> -        * created by the kernel.
> -        */
> -       gasket_set_user_virt(gasket_dev, requested_length,
> -                            gasket_dev->coherent_buffer.phys_base,
> -                            vma->vm_start);
> -       return 0;
> -}
> -
> -/* Map a device's BARs into user space. */
> -static int gasket_mmap(struct file *filp, struct vm_area_struct *vma)
> -{
> -       int i, ret;
> -       int bar_index;
> -       int has_mapped_anything = 0;
> -       ulong permissions;
> -       ulong raw_offset, vma_size;
> -       bool is_coherent_region;
> -       const struct gasket_driver_desc *driver_desc;
> -       struct gasket_dev *gasket_dev = (struct gasket_dev *)filp->private_data;
> -       const struct gasket_bar_desc *bar_desc;
> -       struct gasket_mappable_region *map_regions = NULL;
> -       int num_map_regions = 0;
> -       enum do_map_region_status map_status;
> -
> -       driver_desc = gasket_dev->internal_desc->driver_desc;
> -
> -       if (vma->vm_start & ~PAGE_MASK) {
> -               dev_err(gasket_dev->dev,
> -                       "Base address not page-aligned: 0x%lx\n",
> -                       vma->vm_start);
> -               trace_gasket_mmap_exit(-EINVAL);
> -               return -EINVAL;
> -       }
> -
> -       /* Calculate the offset of this range into physical mem. */
> -       raw_offset = (vma->vm_pgoff << PAGE_SHIFT) +
> -               driver_desc->legacy_mmap_address_offset;
> -       vma_size = vma->vm_end - vma->vm_start;
> -       trace_gasket_mmap_entry(gasket_dev->dev_info.name, raw_offset,
> -                               vma_size);
> -
> -       /*
> -        * Check if the raw offset is within a bar region. If not, check if it
> -        * is a coherent region.
> -        */
> -       bar_index = gasket_get_bar_index(gasket_dev, raw_offset);
> -       is_coherent_region = gasket_is_coherent_region(driver_desc, raw_offset);
> -       if (bar_index < 0 && !is_coherent_region) {
> -               dev_err(gasket_dev->dev,
> -                       "Unable to find matching bar for address 0x%lx\n",
> -                       raw_offset);
> -               trace_gasket_mmap_exit(bar_index);
> -               return bar_index;
> -       }
> -       if (bar_index > 0 && is_coherent_region) {
> -               dev_err(gasket_dev->dev,
> -                       "double matching bar and coherent buffers for address 0x%lx\n",
> -                       raw_offset);
> -               trace_gasket_mmap_exit(bar_index);
> -               return -EINVAL;
> -       }
> -
> -       vma->vm_private_data = gasket_dev;
> -
> -       if (is_coherent_region)
> -               return gasket_mmap_coherent(gasket_dev, vma);
> -
> -       /* Everything in the rest of this function is for normal BAR mapping. */
> -
> -       /*
> -        * Subtract the base of the bar from the raw offset to get the
> -        * memory location within the bar to map.
> -        */
> -       bar_desc = &driver_desc->bar_descriptions[bar_index];
> -       permissions = bar_desc->permissions;
> -       if (!gasket_mmap_has_permissions(gasket_dev, vma, permissions)) {
> -               dev_err(gasket_dev->dev, "Permission checking failed.\n");
> -               trace_gasket_mmap_exit(-EPERM);
> -               return -EPERM;
> -       }
> -
> -       if (driver_desc->get_mappable_regions_cb) {
> -               ret = driver_desc->get_mappable_regions_cb(gasket_dev,
> -                                                          bar_index,
> -                                                          &map_regions,
> -                                                          &num_map_regions);
> -               if (ret)
> -                       return ret;
> -       } else {
> -               if (!gasket_mmap_has_permissions(gasket_dev, vma,
> -                                                bar_desc->permissions)) {
> -                       dev_err(gasket_dev->dev,
> -                               "Permission checking failed.\n");
> -                       trace_gasket_mmap_exit(-EPERM);
> -                       return -EPERM;
> -               }
> -               num_map_regions = bar_desc->num_mappable_regions;
> -               map_regions = kcalloc(num_map_regions,
> -                                     sizeof(*bar_desc->mappable_regions),
> -                                     GFP_KERNEL);
> -               if (map_regions) {
> -                       memcpy(map_regions, bar_desc->mappable_regions,
> -                              num_map_regions *
> -                                       sizeof(*bar_desc->mappable_regions));
> -               }
> -       }
> -
> -       if (!map_regions || num_map_regions == 0) {
> -               dev_err(gasket_dev->dev, "No mappable regions returned!\n");
> -               return -EINVAL;
> -       }
> -
> -       /* Marks the VMA's pages as uncacheable. */
> -       vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
> -       for (i = 0; i < num_map_regions; i++) {
> -               map_status = do_map_region(gasket_dev, vma, &map_regions[i]);
> -               /* Try the next region if this one was not mappable. */
> -               if (map_status == DO_MAP_REGION_INVALID)
> -                       continue;
> -               if (map_status == DO_MAP_REGION_FAILURE) {
> -                       ret = -ENOMEM;
> -                       goto fail;
> -               }
> -
> -               has_mapped_anything = 1;
> -       }
> -
> -       kfree(map_regions);
> -
> -       /* If we could not map any memory, the request was invalid. */
> -       if (!has_mapped_anything) {
> -               dev_err(gasket_dev->dev,
> -                       "Map request did not contain a valid region.\n");
> -               trace_gasket_mmap_exit(-EINVAL);
> -               return -EINVAL;
> -       }
> -
> -       trace_gasket_mmap_exit(0);
> -       return 0;
> -
> -fail:
> -       /* Need to unmap any mapped ranges. */
> -       num_map_regions = i;
> -       for (i = 0; i < num_map_regions; i++)
> -               if (gasket_mm_unmap_region(gasket_dev, vma,
> -                                          &bar_desc->mappable_regions[i]))
> -                       dev_err(gasket_dev->dev, "Error unmapping range %d.\n",
> -                               i);
> -       kfree(map_regions);
> -
> -       return ret;
> -}
> -
> -/*
> - * Open the char device file.
> - *
> - * If the open is for writing, and the device is not owned, this process becomes
> - * the owner.  If the open is for writing and the device is already owned by
> - * some other process, it is an error.  If this process is the owner, increment
> - * the open count.
> - *
> - * Returns 0 if successful, a negative error number otherwise.
> - */
> -static int gasket_open(struct inode *inode, struct file *filp)
> -{
> -       int ret;
> -       struct gasket_dev *gasket_dev;
> -       const struct gasket_driver_desc *driver_desc;
> -       struct gasket_ownership *ownership;
> -       char task_name[TASK_COMM_LEN];
> -       struct gasket_cdev_info *dev_info =
> -           container_of(inode->i_cdev, struct gasket_cdev_info, cdev);
> -       struct pid_namespace *pid_ns = task_active_pid_ns(current);
> -       bool is_root = ns_capable(pid_ns->user_ns, CAP_SYS_ADMIN);
> -
> -       gasket_dev = dev_info->gasket_dev_ptr;
> -       driver_desc = gasket_dev->internal_desc->driver_desc;
> -       ownership = &dev_info->ownership;
> -       get_task_comm(task_name, current);
> -       filp->private_data = gasket_dev;
> -       inode->i_size = 0;
> -
> -       dev_dbg(gasket_dev->dev,
> -               "Attempting to open with tgid %u (%s) (f_mode: 0%03o, fmode_write: %d is_root: %u)\n",
> -               current->tgid, task_name, filp->f_mode,
> -               (filp->f_mode & FMODE_WRITE), is_root);
> -
> -       /* Always allow non-writing accesses. */
> -       if (!(filp->f_mode & FMODE_WRITE)) {
> -               dev_dbg(gasket_dev->dev, "Allowing read-only opening.\n");
> -               return 0;
> -       }
> -
> -       mutex_lock(&gasket_dev->mutex);
> -
> -       dev_dbg(gasket_dev->dev,
> -               "Current owner open count (owning tgid %u): %d.\n",
> -               ownership->owner, ownership->write_open_count);
> -
> -       /* Opening a node owned by another TGID is an error (unless root) */
> -       if (ownership->is_owned && ownership->owner != current->tgid &&
> -           !is_root) {
> -               dev_err(gasket_dev->dev,
> -                       "Process %u is opening a node held by %u.\n",
> -                       current->tgid, ownership->owner);
> -               mutex_unlock(&gasket_dev->mutex);
> -               return -EPERM;
> -       }
> -
> -       /* If the node is not owned, assign it to the current TGID. */
> -       if (!ownership->is_owned) {
> -               ret = gasket_check_and_invoke_callback_nolock(gasket_dev,
> -                                                             driver_desc->device_open_cb);
> -               if (ret) {
> -                       dev_err(gasket_dev->dev,
> -                               "Error in device open cb: %d\n", ret);
> -                       mutex_unlock(&gasket_dev->mutex);
> -                       return ret;
> -               }
> -               ownership->is_owned = 1;
> -               ownership->owner = current->tgid;
> -               dev_dbg(gasket_dev->dev, "Device owner is now tgid %u\n",
> -                       ownership->owner);
> -       }
> -
> -       ownership->write_open_count++;
> -
> -       dev_dbg(gasket_dev->dev, "New open count (owning tgid %u): %d\n",
> -               ownership->owner, ownership->write_open_count);
> -
> -       mutex_unlock(&gasket_dev->mutex);
> -       return 0;
> -}
> -
> -/*
> - * Called on a close of the device file.  If this process is the owner,
> - * decrement the open count.  On last close by the owner, free up buffers and
> - * eventfd contexts, and release ownership.
> - *
> - * Returns 0 if successful, a negative error number otherwise.
> - */
> -static int gasket_release(struct inode *inode, struct file *file)
> -{
> -       int i;
> -       struct gasket_dev *gasket_dev;
> -       struct gasket_ownership *ownership;
> -       const struct gasket_driver_desc *driver_desc;
> -       char task_name[TASK_COMM_LEN];
> -       struct gasket_cdev_info *dev_info =
> -               container_of(inode->i_cdev, struct gasket_cdev_info, cdev);
> -       struct pid_namespace *pid_ns = task_active_pid_ns(current);
> -       bool is_root = ns_capable(pid_ns->user_ns, CAP_SYS_ADMIN);
> -
> -       gasket_dev = dev_info->gasket_dev_ptr;
> -       driver_desc = gasket_dev->internal_desc->driver_desc;
> -       ownership = &dev_info->ownership;
> -       get_task_comm(task_name, current);
> -       mutex_lock(&gasket_dev->mutex);
> -
> -       dev_dbg(gasket_dev->dev,
> -               "Releasing device node. Call origin: tgid %u (%s) (f_mode: 0%03o, fmode_write: %d, is_root: %u)\n",
> -               current->tgid, task_name, file->f_mode,
> -               (file->f_mode & FMODE_WRITE), is_root);
> -       dev_dbg(gasket_dev->dev, "Current open count (owning tgid %u): %d\n",
> -               ownership->owner, ownership->write_open_count);
> -
> -       if (file->f_mode & FMODE_WRITE) {
> -               ownership->write_open_count--;
> -               if (ownership->write_open_count == 0) {
> -                       dev_dbg(gasket_dev->dev, "Device is now free\n");
> -                       ownership->is_owned = 0;
> -                       ownership->owner = 0;
> -
> -                       /* Forces chip reset before we unmap the page tables. */
> -                       driver_desc->device_reset_cb(gasket_dev);
> -
> -                       for (i = 0; i < driver_desc->num_page_tables; ++i) {
> -                               gasket_page_table_unmap_all(gasket_dev->page_table[i]);
> -                               gasket_page_table_garbage_collect(gasket_dev->page_table[i]);
> -                               gasket_free_coherent_memory_all(gasket_dev, i);
> -                       }
> -
> -                       /* Closes device, enters power save. */
> -                       gasket_check_and_invoke_callback_nolock(gasket_dev,
> -                                                               driver_desc->device_close_cb);
> -               }
> -       }
> -
> -       dev_dbg(gasket_dev->dev, "New open count (owning tgid %u): %d\n",
> -               ownership->owner, ownership->write_open_count);
> -       mutex_unlock(&gasket_dev->mutex);
> -       return 0;
> -}
> -
> -/*
> - * Gasket ioctl dispatch function.
> - *
> - * Check if the ioctl is a generic ioctl. If not, pass the ioctl to the
> - * ioctl_handler_cb registered in the driver description.
> - * If the ioctl is a generic ioctl, pass it to gasket_ioctl_handler.
> - */
> -static long gasket_ioctl(struct file *filp, uint cmd, ulong arg)
> -{
> -       struct gasket_dev *gasket_dev;
> -       const struct gasket_driver_desc *driver_desc;
> -       void __user *argp = (void __user *)arg;
> -       char path[256];
> -
> -       gasket_dev = (struct gasket_dev *)filp->private_data;
> -       driver_desc = gasket_dev->internal_desc->driver_desc;
> -       if (!driver_desc) {
> -               dev_dbg(gasket_dev->dev,
> -                       "Unable to find device descriptor for file %s\n",
> -                       d_path(&filp->f_path, path, 256));
> -               return -ENODEV;
> -       }
> -
> -       if (!gasket_is_supported_ioctl(cmd)) {
> -               /*
> -                * The ioctl handler is not a standard Gasket callback, since
> -                * it requires different arguments. This means we can't use
> -                * check_and_invoke_callback.
> -                */
> -               if (driver_desc->ioctl_handler_cb)
> -                       return driver_desc->ioctl_handler_cb(filp, cmd, argp);
> -
> -               dev_dbg(gasket_dev->dev, "Received unknown ioctl 0x%x\n", cmd);
> -               return -EINVAL;
> -       }
> -
> -       return gasket_handle_ioctl(filp, cmd, argp);
> -}
> -
> -/* File operations for all Gasket devices. */
> -static const struct file_operations gasket_file_ops = {
> -       .owner = THIS_MODULE,
> -       .llseek = no_llseek,
> -       .mmap = gasket_mmap,
> -       .open = gasket_open,
> -       .release = gasket_release,
> -       .unlocked_ioctl = gasket_ioctl,
> -};
> -
> -/* Perform final init and marks the device as active. */
> -int gasket_enable_device(struct gasket_dev *gasket_dev)
> -{
> -       int tbl_idx;
> -       int ret;
> -       const struct gasket_driver_desc *driver_desc =
> -               gasket_dev->internal_desc->driver_desc;
> -
> -       ret = gasket_interrupt_init(gasket_dev);
> -       if (ret) {
> -               dev_err(gasket_dev->dev,
> -                       "Critical failure to allocate interrupts: %d\n", ret);
> -               gasket_interrupt_cleanup(gasket_dev);
> -               return ret;
> -       }
> -
> -       for (tbl_idx = 0; tbl_idx < driver_desc->num_page_tables; tbl_idx++) {
> -               dev_dbg(gasket_dev->dev, "Initializing page table %d.\n",
> -                       tbl_idx);
> -               ret = gasket_page_table_init(&gasket_dev->page_table[tbl_idx],
> -                                            &gasket_dev->bar_data[driver_desc->page_table_bar_index],
> -                                            &driver_desc->page_table_configs[tbl_idx],
> -                                            gasket_dev->dev,
> -                                            gasket_dev->pci_dev);
> -               if (ret) {
> -                       dev_err(gasket_dev->dev,
> -                               "Couldn't init page table %d: %d\n",
> -                               tbl_idx, ret);
> -                       return ret;
> -               }
> -               /*
> -                * Make sure that the page table is clear and set to simple
> -                * addresses.
> -                */
> -               gasket_page_table_reset(gasket_dev->page_table[tbl_idx]);
> -       }
> -
> -       /*
> -        * hardware_revision_cb returns a positive integer (the rev) if
> -        * successful.)
> -        */
> -       ret = check_and_invoke_callback(gasket_dev,
> -                                       driver_desc->hardware_revision_cb);
> -       if (ret < 0) {
> -               dev_err(gasket_dev->dev,
> -                       "Error getting hardware revision: %d\n", ret);
> -               return ret;
> -       }
> -       gasket_dev->hardware_revision = ret;
> -
> -       /* device_status_cb returns a device status, not an error code. */
> -       gasket_dev->status = gasket_get_hw_status(gasket_dev);
> -       if (gasket_dev->status == GASKET_STATUS_DEAD)
> -               dev_err(gasket_dev->dev, "Device reported as unhealthy.\n");
> -
> -       ret = gasket_add_cdev(&gasket_dev->dev_info, &gasket_file_ops,
> -                             driver_desc->module);
> -       if (ret)
> -               return ret;
> -
> -       return 0;
> -}
> -EXPORT_SYMBOL(gasket_enable_device);
> -
> -static int __gasket_add_device(struct device *parent_dev,
> -                              struct gasket_internal_desc *internal_desc,
> -                              struct gasket_dev **gasket_devp)
> -{
> -       int ret;
> -       struct gasket_dev *gasket_dev;
> -       const struct gasket_driver_desc *driver_desc =
> -           internal_desc->driver_desc;
> -
> -       ret = gasket_alloc_dev(internal_desc, parent_dev, &gasket_dev);
> -       if (ret)
> -               return ret;
> -       if (IS_ERR(gasket_dev->dev_info.device)) {
> -               dev_err(parent_dev, "Cannot create %s device %s [ret = %ld]\n",
> -                       driver_desc->name, gasket_dev->dev_info.name,
> -                       PTR_ERR(gasket_dev->dev_info.device));
> -               ret = -ENODEV;
> -               goto free_gasket_dev;
> -       }
> -
> -       ret = gasket_sysfs_create_mapping(gasket_dev->dev_info.device,
> -                                         gasket_dev);
> -       if (ret)
> -               goto remove_device;
> -
> -       ret = gasket_sysfs_create_entries(gasket_dev->dev_info.device,
> -                                         gasket_sysfs_generic_attrs);
> -       if (ret)
> -               goto remove_sysfs_mapping;
> -
> -       *gasket_devp = gasket_dev;
> -       return 0;
> -
> -remove_sysfs_mapping:
> -       gasket_sysfs_remove_mapping(gasket_dev->dev_info.device);
> -remove_device:
> -       device_destroy(internal_desc->class, gasket_dev->dev_info.devt);
> -free_gasket_dev:
> -       gasket_free_dev(gasket_dev);
> -       return ret;
> -}
> -
> -static void __gasket_remove_device(struct gasket_internal_desc *internal_desc,
> -                                  struct gasket_dev *gasket_dev)
> -{
> -       gasket_sysfs_remove_mapping(gasket_dev->dev_info.device);
> -       device_destroy(internal_desc->class, gasket_dev->dev_info.devt);
> -       gasket_free_dev(gasket_dev);
> -}
> -
> -/*
> - * Add PCI gasket device.
> - *
> - * Called by Gasket device probe function.
> - * Allocates device metadata and maps device memory.  The device driver must
> - * call gasket_enable_device after driver init is complete to place the device
> - * in active use.
> - */
> -int gasket_pci_add_device(struct pci_dev *pci_dev,
> -                         struct gasket_dev **gasket_devp)
> -{
> -       int ret;
> -       struct gasket_internal_desc *internal_desc;
> -       struct gasket_dev *gasket_dev;
> -       struct device *parent;
> -
> -       dev_dbg(&pci_dev->dev, "add PCI gasket device\n");
> -
> -       mutex_lock(&g_mutex);
> -       internal_desc = lookup_pci_internal_desc(pci_dev);
> -       mutex_unlock(&g_mutex);
> -       if (!internal_desc) {
> -               dev_err(&pci_dev->dev,
> -                       "PCI add device called for unknown driver type\n");
> -               return -ENODEV;
> -       }
> -
> -       parent = &pci_dev->dev;
> -       ret = __gasket_add_device(parent, internal_desc, &gasket_dev);
> -       if (ret)
> -               return ret;
> -
> -       gasket_dev->pci_dev = pci_dev;
> -       ret = gasket_setup_pci(pci_dev, gasket_dev);
> -       if (ret)
> -               goto cleanup_pci;
> -
> -       /*
> -        * Once we've created the mapping structures successfully, attempt to
> -        * create a symlink to the pci directory of this object.
> -        */
> -       ret = sysfs_create_link(&gasket_dev->dev_info.device->kobj,
> -                               &pci_dev->dev.kobj, dev_name(&pci_dev->dev));
> -       if (ret) {
> -               dev_err(gasket_dev->dev,
> -                       "Cannot create sysfs pci link: %d\n", ret);
> -               goto cleanup_pci;
> -       }
> -
> -       *gasket_devp = gasket_dev;
> -       return 0;
> -
> -cleanup_pci:
> -       gasket_cleanup_pci(gasket_dev);
> -       __gasket_remove_device(internal_desc, gasket_dev);
> -       return ret;
> -}
> -EXPORT_SYMBOL(gasket_pci_add_device);
> -
> -/* Remove a PCI gasket device. */
> -void gasket_pci_remove_device(struct pci_dev *pci_dev)
> -{
> -       int i;
> -       struct gasket_internal_desc *internal_desc;
> -       struct gasket_dev *gasket_dev = NULL;
> -       /* Find the device desc. */
> -       mutex_lock(&g_mutex);
> -       internal_desc = lookup_pci_internal_desc(pci_dev);
> -       if (!internal_desc) {
> -               mutex_unlock(&g_mutex);
> -               return;
> -       }
> -       mutex_unlock(&g_mutex);
> -
> -       /* Now find the specific device */
> -       mutex_lock(&internal_desc->mutex);
> -       for (i = 0; i < GASKET_DEV_MAX; i++) {
> -               if (internal_desc->devs[i] &&
> -                   internal_desc->devs[i]->pci_dev == pci_dev) {
> -                       gasket_dev = internal_desc->devs[i];
> -                       break;
> -               }
> -       }
> -       mutex_unlock(&internal_desc->mutex);
> -
> -       if (!gasket_dev)
> -               return;
> -
> -       dev_dbg(gasket_dev->dev, "remove %s PCI gasket device\n",
> -               internal_desc->driver_desc->name);
> -
> -       gasket_cleanup_pci(gasket_dev);
> -       __gasket_remove_device(internal_desc, gasket_dev);
> -}
> -EXPORT_SYMBOL(gasket_pci_remove_device);
> -
> -/**
> - * Lookup a name by number in a num_name table.
> - * @num: Number to lookup.
> - * @table: Array of num_name structures, the table for the lookup.
> - *
> - * Description: Searches for num in the table.  If found, the
> - *             corresponding name is returned; otherwise NULL
> - *             is returned.
> - *
> - *             The table must have a NULL name pointer at the end.
> - */
> -const char *gasket_num_name_lookup(uint num,
> -                                  const struct gasket_num_name *table)
> -{
> -       uint i = 0;
> -
> -       while (table[i].snn_name) {
> -               if (num == table[i].snn_num)
> -                       break;
> -               ++i;
> -       }
> -
> -       return table[i].snn_name;
> -}
> -EXPORT_SYMBOL(gasket_num_name_lookup);
> -
> -int gasket_reset(struct gasket_dev *gasket_dev)
> -{
> -       int ret;
> -
> -       mutex_lock(&gasket_dev->mutex);
> -       ret = gasket_reset_nolock(gasket_dev);
> -       mutex_unlock(&gasket_dev->mutex);
> -       return ret;
> -}
> -EXPORT_SYMBOL(gasket_reset);
> -
> -int gasket_reset_nolock(struct gasket_dev *gasket_dev)
> -{
> -       int ret;
> -       int i;
> -       const struct gasket_driver_desc *driver_desc;
> -
> -       driver_desc = gasket_dev->internal_desc->driver_desc;
> -       if (!driver_desc->device_reset_cb)
> -               return 0;
> -
> -       ret = driver_desc->device_reset_cb(gasket_dev);
> -       if (ret) {
> -               dev_dbg(gasket_dev->dev, "Device reset cb returned %d.\n",
> -                       ret);
> -               return ret;
> -       }
> -
> -       /* Reinitialize the page tables and interrupt framework. */
> -       for (i = 0; i < driver_desc->num_page_tables; ++i)
> -               gasket_page_table_reset(gasket_dev->page_table[i]);
> -
> -       ret = gasket_interrupt_reinit(gasket_dev);
> -       if (ret) {
> -               dev_dbg(gasket_dev->dev, "Unable to reinit interrupts: %d.\n",
> -                       ret);
> -               return ret;
> -       }
> -
> -       /* Get current device health. */
> -       gasket_dev->status = gasket_get_hw_status(gasket_dev);
> -       if (gasket_dev->status == GASKET_STATUS_DEAD) {
> -               dev_dbg(gasket_dev->dev, "Device reported as dead.\n");
> -               return -EINVAL;
> -       }
> -
> -       return 0;
> -}
> -EXPORT_SYMBOL(gasket_reset_nolock);
> -
> -gasket_ioctl_permissions_cb_t
> -gasket_get_ioctl_permissions_cb(struct gasket_dev *gasket_dev)
> -{
> -       return gasket_dev->internal_desc->driver_desc->ioctl_permissions_cb;
> -}
> -EXPORT_SYMBOL(gasket_get_ioctl_permissions_cb);
> -
> -/* Get the driver structure for a given gasket_dev.
> - * @dev: pointer to gasket_dev, implementing the requested driver.
> - */
> -const struct gasket_driver_desc *gasket_get_driver_desc(struct gasket_dev *dev)
> -{
> -       return dev->internal_desc->driver_desc;
> -}
> -
> -/* Get the device structure for a given gasket_dev.
> - * @dev: pointer to gasket_dev, implementing the requested driver.
> - */
> -struct device *gasket_get_device(struct gasket_dev *dev)
> -{
> -       return dev->dev;
> -}
> -
> -/**
> - * Asynchronously waits on device.
> - * @gasket_dev: Device struct.
> - * @bar: Bar
> - * @offset: Register offset
> - * @mask: Register mask
> - * @val: Expected value
> - * @max_retries: number of sleep periods
> - * @delay_ms: Timeout in milliseconds
> - *
> - * Description: Busy waits for a specific combination of bits to be set on a
> - * Gasket register.
> - **/
> -int gasket_wait_with_reschedule(struct gasket_dev *gasket_dev, int bar,
> -                               u64 offset, u64 mask, u64 val,
> -                               uint max_retries, u64 delay_ms)
> -{
> -       uint retries = 0;
> -       u64 tmp;
> -
> -       while (retries < max_retries) {
> -               tmp = gasket_dev_read_64(gasket_dev, bar, offset);
> -               if ((tmp & mask) == val)
> -                       return 0;
> -               msleep(delay_ms);
> -               retries++;
> -       }
> -       dev_dbg(gasket_dev->dev, "%s timeout: reg %llx timeout (%llu ms)\n",
> -               __func__, offset, max_retries * delay_ms);
> -       return -ETIMEDOUT;
> -}
> -EXPORT_SYMBOL(gasket_wait_with_reschedule);
> -
> -/* See gasket_core.h for description. */
> -int gasket_register_device(const struct gasket_driver_desc *driver_desc)
> -{
> -       int i, ret;
> -       int desc_idx = -1;
> -       struct gasket_internal_desc *internal;
> -
> -       pr_debug("Loading %s driver version %s\n", driver_desc->name,
> -                driver_desc->driver_version);
> -       /* Check for duplicates and find a free slot. */
> -       mutex_lock(&g_mutex);
> -
> -       for (i = 0; i < GASKET_FRAMEWORK_DESC_MAX; i++) {
> -               if (g_descs[i].driver_desc == driver_desc) {
> -                       pr_err("%s driver already loaded/registered\n",
> -                              driver_desc->name);
> -                       mutex_unlock(&g_mutex);
> -                       return -EBUSY;
> -               }
> -       }
> -
> -       /* This and the above loop could be combined, but this reads easier. */
> -       for (i = 0; i < GASKET_FRAMEWORK_DESC_MAX; i++) {
> -               if (!g_descs[i].driver_desc) {
> -                       g_descs[i].driver_desc = driver_desc;
> -                       desc_idx = i;
> -                       break;
> -               }
> -       }
> -       mutex_unlock(&g_mutex);
> -
> -       if (desc_idx == -1) {
> -               pr_err("too many drivers loaded, max %d\n",
> -                      GASKET_FRAMEWORK_DESC_MAX);
> -               return -EBUSY;
> -       }
> -
> -       internal = &g_descs[desc_idx];
> -       mutex_init(&internal->mutex);
> -       memset(internal->devs, 0, sizeof(struct gasket_dev *) * GASKET_DEV_MAX);
> -       internal->class =
> -               class_create(driver_desc->module, driver_desc->name);
> -
> -       if (IS_ERR(internal->class)) {
> -               pr_err("Cannot register %s class [ret=%ld]\n",
> -                      driver_desc->name, PTR_ERR(internal->class));
> -               ret = PTR_ERR(internal->class);
> -               goto unregister_gasket_driver;
> -       }
> -
> -       ret = register_chrdev_region(MKDEV(driver_desc->major,
> -                                          driver_desc->minor), GASKET_DEV_MAX,
> -                                    driver_desc->name);
> -       if (ret) {
> -               pr_err("cannot register %s char driver [ret=%d]\n",
> -                      driver_desc->name, ret);
> -               goto destroy_class;
> -       }
> -
> -       return 0;
> -
> -destroy_class:
> -       class_destroy(internal->class);
> -
> -unregister_gasket_driver:
> -       mutex_lock(&g_mutex);
> -       g_descs[desc_idx].driver_desc = NULL;
> -       mutex_unlock(&g_mutex);
> -       return ret;
> -}
> -EXPORT_SYMBOL(gasket_register_device);
> -
> -/* See gasket_core.h for description. */
> -void gasket_unregister_device(const struct gasket_driver_desc *driver_desc)
> -{
> -       int i, desc_idx;
> -       struct gasket_internal_desc *internal_desc = NULL;
> -
> -       mutex_lock(&g_mutex);
> -       for (i = 0; i < GASKET_FRAMEWORK_DESC_MAX; i++) {
> -               if (g_descs[i].driver_desc == driver_desc) {
> -                       internal_desc = &g_descs[i];
> -                       desc_idx = i;
> -                       break;
> -               }
> -       }
> -
> -       if (!internal_desc) {
> -               mutex_unlock(&g_mutex);
> -               pr_err("request to unregister unknown desc: %s, %d:%d\n",
> -                      driver_desc->name, driver_desc->major,
> -                      driver_desc->minor);
> -               return;
> -       }
> -
> -       unregister_chrdev_region(MKDEV(driver_desc->major, driver_desc->minor),
> -                                GASKET_DEV_MAX);
> -
> -       class_destroy(internal_desc->class);
> -
> -       /* Finally, effectively "remove" the driver. */
> -       g_descs[desc_idx].driver_desc = NULL;
> -       mutex_unlock(&g_mutex);
> -
> -       pr_debug("removed %s driver\n", driver_desc->name);
> -}
> -EXPORT_SYMBOL(gasket_unregister_device);
> -
> -static int __init gasket_init(void)
> -{
> -       int i;
> -
> -       mutex_lock(&g_mutex);
> -       for (i = 0; i < GASKET_FRAMEWORK_DESC_MAX; i++) {
> -               g_descs[i].driver_desc = NULL;
> -               mutex_init(&g_descs[i].mutex);
> -       }
> -
> -       gasket_sysfs_init();
> -
> -       mutex_unlock(&g_mutex);
> -       return 0;
> -}
> -
> -MODULE_DESCRIPTION("Google Gasket driver framework");
> -MODULE_VERSION(GASKET_FRAMEWORK_VERSION);
> -MODULE_LICENSE("GPL v2");
> -MODULE_AUTHOR("Rob Springer <rspringer@google.com>");
> -module_init(gasket_init);
> diff --git a/drivers/staging/gasket/gasket_core.h b/drivers/staging/gasket/gasket_core.h
> deleted file mode 100644
> index c417acadb0d5..000000000000
> --- a/drivers/staging/gasket/gasket_core.h
> +++ /dev/null
> @@ -1,638 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -/*
> - * Gasket generic driver. Defines the set of data types and functions necessary
> - * to define a driver using the Gasket generic driver framework.
> - *
> - * Copyright (C) 2018 Google, Inc.
> - */
> -#ifndef __GASKET_CORE_H__
> -#define __GASKET_CORE_H__
> -
> -#include <linux/cdev.h>
> -#include <linux/compiler.h>
> -#include <linux/device.h>
> -#include <linux/init.h>
> -#include <linux/module.h>
> -#include <linux/pci.h>
> -#include <linux/sched.h>
> -#include <linux/slab.h>
> -
> -#include "gasket_constants.h"
> -
> -/**
> - * struct gasket_num_name - Map numbers to names.
> - * @ein_num: Number.
> - * @ein_name: Name associated with the number, a char pointer.
> - *
> - * This structure maps numbers to names. It is used to provide printable enum
> - * names, e.g {0, "DEAD"} or {1, "ALIVE"}.
> - */
> -struct gasket_num_name {
> -       uint snn_num;
> -       const char *snn_name;
> -};
> -
> -/*
> - * Register location for packed interrupts.
> - * Each value indicates the location of an interrupt field (in units of
> - * gasket_driver_desc->interrupt_pack_width) within the containing register.
> - * In other words, this indicates the shift to use when creating a mask to
> - * extract/set bits within a register for a given interrupt.
> - */
> -enum gasket_interrupt_packing {
> -       PACK_0 = 0,
> -       PACK_1 = 1,
> -       PACK_2 = 2,
> -       PACK_3 = 3,
> -       UNPACKED = 4,
> -};
> -
> -/* Type of the interrupt supported by the device. */
> -enum gasket_interrupt_type {
> -       PCI_MSIX = 0,
> -};
> -
> -/*
> - * Used to describe a Gasket interrupt. Contains an interrupt index, a register,
> - * and packing data for that interrupt. The register and packing data
> - * fields are relevant only for PCI_MSIX interrupt type and can be
> - * set to 0 for everything else.
> - */
> -struct gasket_interrupt_desc {
> -       /* Device-wide interrupt index/number. */
> -       int index;
> -       /* The register offset controlling this interrupt. */
> -       u64 reg;
> -       /* The location of this interrupt inside register reg, if packed. */
> -       int packing;
> -};
> -
> -/*
> - * This enum is used to identify memory regions being part of the physical
> - * memory that belongs to a device.
> - */
> -enum mappable_area_type {
> -       PCI_BAR = 0, /* Default */
> -       BUS_REGION,  /* For SYSBUS devices, i.e. AXI etc... */
> -       COHERENT_MEMORY
> -};
> -
> -/*
> - * Metadata for each BAR mapping.
> - * This struct is used so as to track PCI memory, I/O space, AXI and coherent
> - * memory area... i.e. memory objects which can be referenced in the device's
> - * mmap function.
> - */
> -struct gasket_bar_data {
> -       /* Virtual base address. */
> -       u8 __iomem *virt_base;
> -
> -       /* Physical base address. */
> -       ulong phys_base;
> -
> -       /* Length of the mapping. */
> -       ulong length_bytes;
> -
> -       /* Type of mappable area */
> -       enum mappable_area_type type;
> -};
> -
> -/* Maintains device open ownership data. */
> -struct gasket_ownership {
> -       /* 1 if the device is owned, 0 otherwise. */
> -       int is_owned;
> -
> -       /* TGID of the owner. */
> -       pid_t owner;
> -
> -       /* Count of current device opens in write mode. */
> -       int write_open_count;
> -};
> -
> -/* Page table modes of operation. */
> -enum gasket_page_table_mode {
> -       /* The page table is partitionable as normal, all simple by default. */
> -       GASKET_PAGE_TABLE_MODE_NORMAL,
> -
> -       /* All entries are always simple. */
> -       GASKET_PAGE_TABLE_MODE_SIMPLE,
> -
> -       /* All entries are always extended. No extended bit is used. */
> -       GASKET_PAGE_TABLE_MODE_EXTENDED,
> -};
> -
> -/* Page table configuration. One per table. */
> -struct gasket_page_table_config {
> -       /* The identifier/index of this page table. */
> -       int id;
> -
> -       /* The operation mode of this page table. */
> -       enum gasket_page_table_mode mode;
> -
> -       /* Total (first-level) entries in this page table. */
> -       ulong total_entries;
> -
> -       /* Base register for the page table. */
> -       int base_reg;
> -
> -       /*
> -        * Register containing the extended page table. This value is unused in
> -        * GASKET_PAGE_TABLE_MODE_SIMPLE and GASKET_PAGE_TABLE_MODE_EXTENDED
> -        * modes.
> -        */
> -       int extended_reg;
> -
> -       /* The bit index indicating whether a PT entry is extended. */
> -       int extended_bit;
> -};
> -
> -/* Maintains information about a device node. */
> -struct gasket_cdev_info {
> -       /* The internal name of this device. */
> -       char name[GASKET_NAME_MAX];
> -
> -       /* Device number. */
> -       dev_t devt;
> -
> -       /* Kernel-internal device structure. */
> -       struct device *device;
> -
> -       /* Character device for real. */
> -       struct cdev cdev;
> -
> -       /* Flag indicating if cdev_add has been called for the devices. */
> -       int cdev_added;
> -
> -       /* Pointer to the overall gasket_dev struct for this device. */
> -       struct gasket_dev *gasket_dev_ptr;
> -
> -       /* Ownership data for the device in question. */
> -       struct gasket_ownership ownership;
> -};
> -
> -/* Describes the offset and length of mmapable device BAR regions. */
> -struct gasket_mappable_region {
> -       u64 start;
> -       u64 length_bytes;
> -};
> -
> -/* Describe the offset, size, and permissions for a device bar. */
> -struct gasket_bar_desc {
> -       /*
> -        * The size of each PCI BAR range, in bytes. If a value is 0, that BAR
> -        * will not be mapped into kernel space at all.
> -        * For devices with 64 bit BARs, only elements 0, 2, and 4 should be
> -        * populated, and 1, 3, and 5 should be set to 0.
> -        * For example, for a device mapping 1M in each of the first two 64-bit
> -        * BARs, this field would be set as { 0x100000, 0, 0x100000, 0, 0, 0 }
> -        * (one number per bar_desc struct.)
> -        */
> -       u64 size;
> -       /* The permissions for this bar. (Should be VM_WRITE/VM_READ/VM_EXEC,
> -        * and can be or'd.) If set to GASKET_NOMAP, the bar will
> -        * not be used for mmapping.
> -        */
> -       ulong permissions;
> -       /* The memory address corresponding to the base of this bar, if used. */
> -       u64 base;
> -       /* The number of mappable regions in this bar. */
> -       int num_mappable_regions;
> -
> -       /* The mappable subregions of this bar. */
> -       const struct gasket_mappable_region *mappable_regions;
> -
> -       /* Type of mappable area */
> -       enum mappable_area_type type;
> -};
> -
> -/* Describes the offset, size, and permissions for a coherent buffer. */
> -struct gasket_coherent_buffer_desc {
> -       /* The size of the coherent buffer. */
> -       u64 size;
> -
> -       /* The permissions for this bar. (Should be VM_WRITE/VM_READ/VM_EXEC,
> -        * and can be or'd.) If set to GASKET_NOMAP, the bar will
> -        * not be used for mmaping.
> -        */
> -       ulong permissions;
> -
> -       /* device side address. */
> -       u64 base;
> -};
> -
> -/* Coherent buffer structure. */
> -struct gasket_coherent_buffer {
> -       /* Virtual base address. */
> -       u8 *virt_base;
> -
> -       /* Physical base address. */
> -       ulong phys_base;
> -
> -       /* Length of the mapping. */
> -       ulong length_bytes;
> -};
> -
> -/* Description of Gasket-specific permissions in the mmap field. */
> -enum gasket_mapping_options { GASKET_NOMAP = 0 };
> -
> -/* This struct represents an undefined bar that should never be mapped. */
> -#define GASKET_UNUSED_BAR                                                      \
> -       {                                                                      \
> -               0, GASKET_NOMAP, 0, 0, NULL, 0                                 \
> -       }
> -
> -/* Internal data for a Gasket device. See gasket_core.c for more information. */
> -struct gasket_internal_desc;
> -
> -#define MAX_NUM_COHERENT_PAGES 16
> -
> -/*
> - * Device data for Gasket device instances.
> - *
> - * This structure contains the data required to manage a Gasket device.
> - */
> -struct gasket_dev {
> -       /* Pointer to the internal driver description for this device. */
> -       struct gasket_internal_desc *internal_desc;
> -
> -       /* Device info */
> -       struct device *dev;
> -
> -       /* PCI subsystem metadata. */
> -       struct pci_dev *pci_dev;
> -
> -       /* This device's index into internal_desc->devs. */
> -       int dev_idx;
> -
> -       /* The name of this device, as reported by the kernel. */
> -       char kobj_name[GASKET_NAME_MAX];
> -
> -       /* Virtual address of mapped BAR memory range. */
> -       struct gasket_bar_data bar_data[PCI_STD_NUM_BARS];
> -
> -       /* Coherent buffer. */
> -       struct gasket_coherent_buffer coherent_buffer;
> -
> -       /* Number of page tables for this device. */
> -       int num_page_tables;
> -
> -       /* Address translations. Page tables have a private implementation. */
> -       struct gasket_page_table *page_table[GASKET_MAX_NUM_PAGE_TABLES];
> -
> -       /* Interrupt data for this device. */
> -       struct gasket_interrupt_data *interrupt_data;
> -
> -       /* Status for this device - GASKET_STATUS_ALIVE or _DEAD. */
> -       uint status;
> -
> -       /* Number of times this device has been reset. */
> -       uint reset_count;
> -
> -       /* Dev information for the cdev node. */
> -       struct gasket_cdev_info dev_info;
> -
> -       /* Hardware revision value for this device. */
> -       int hardware_revision;
> -
> -       /* Protects access to per-device data (i.e. this structure). */
> -       struct mutex mutex;
> -
> -       /* cdev hash tracking/membership structure, Accel and legacy. */
> -       /* Unused until Accel is upstreamed. */
> -       struct hlist_node hlist_node;
> -       struct hlist_node legacy_hlist_node;
> -};
> -
> -/* Type of the ioctl handler callback. */
> -typedef long (*gasket_ioctl_handler_cb_t)(struct file *file, uint cmd,
> -                                         void __user *argp);
> -/* Type of the ioctl permissions check callback. See below. */
> -typedef int (*gasket_ioctl_permissions_cb_t)(struct file *filp, uint cmd,
> -                                            void __user *argp);
> -
> -/*
> - * Device type descriptor.
> - *
> - * This structure contains device-specific data needed to identify and address a
> - * type of device to be administered via the Gasket generic driver.
> - *
> - * Device IDs are per-driver. In other words, two drivers using the Gasket
> - * framework will each have a distinct device 0 (for example).
> - */
> -struct gasket_driver_desc {
> -       /* The name of this device type. */
> -       const char *name;
> -
> -       /* The name of this specific device model. */
> -       const char *chip_model;
> -
> -       /* The version of the chip specified in chip_model. */
> -       const char *chip_version;
> -
> -       /* The version of this driver: "1.0.0", "2.1.3", etc. */
> -       const char *driver_version;
> -
> -       /*
> -        * Non-zero if we should create "legacy" (device and device-class-
> -        * specific) character devices and sysfs nodes.
> -        */
> -       /* Unused until Accel is upstreamed. */
> -       int legacy_support;
> -
> -       /* Major and minor numbers identifying the device. */
> -       int major, minor;
> -
> -       /* Module structure for this driver. */
> -       struct module *module;
> -
> -       /* PCI ID table. */
> -       const struct pci_device_id *pci_id_table;
> -
> -       /* The number of page tables handled by this driver. */
> -       int num_page_tables;
> -
> -       /* The index of the bar containing the page tables. */
> -       int page_table_bar_index;
> -
> -       /* Registers used to control each page table. */
> -       const struct gasket_page_table_config *page_table_configs;
> -
> -       /* The bit index indicating whether a PT entry is extended. */
> -       int page_table_extended_bit;
> -
> -       /*
> -        * Legacy mmap address adjusment for legacy devices only. Should be 0
> -        * for any new device.
> -        */
> -       ulong legacy_mmap_address_offset;
> -
> -       /* Set of 6 bar descriptions that describe all PCIe bars.
> -        * Note that BUS/AXI devices (i.e. non PCI devices) use those.
> -        */
> -       struct gasket_bar_desc bar_descriptions[PCI_STD_NUM_BARS];
> -
> -       /*
> -        * Coherent buffer description.
> -        */
> -       struct gasket_coherent_buffer_desc coherent_buffer_description;
> -
> -       /* Interrupt type. (One of gasket_interrupt_type). */
> -       int interrupt_type;
> -
> -       /* Index of the bar containing the interrupt registers to program. */
> -       int interrupt_bar_index;
> -
> -       /* Number of interrupts in the gasket_interrupt_desc array */
> -       int num_interrupts;
> -
> -       /* Description of the interrupts for this device. */
> -       const struct gasket_interrupt_desc *interrupts;
> -
> -       /*
> -        * If this device packs multiple interrupt->MSI-X mappings into a
> -        * single register (i.e., "uses packed interrupts"), only a single bit
> -        * width is supported for each interrupt mapping (unpacked/"full-width"
> -        * interrupts are always supported). This value specifies that width. If
> -        * packed interrupts are not used, this value is ignored.
> -        */
> -       int interrupt_pack_width;
> -
> -       /* Driver callback functions - all may be NULL */
> -       /*
> -        * device_open_cb: Callback for when a device node is opened in write
> -        * mode.
> -        * @dev: The gasket_dev struct for this driver instance.
> -        *
> -        * This callback should perform device-specific setup that needs to
> -        * occur only once when a device is first opened.
> -        */
> -       int (*device_open_cb)(struct gasket_dev *dev);
> -
> -       /*
> -        * device_release_cb: Callback when a device is closed.
> -        * @gasket_dev: The gasket_dev struct for this driver instance.
> -        *
> -        * This callback is called whenever a device node fd is closed, as
> -        * opposed to device_close_cb, which is called when the _last_
> -        * descriptor for an open file is closed. This call is intended to
> -        * handle any per-user or per-fd cleanup.
> -        */
> -       int (*device_release_cb)(struct gasket_dev *gasket_dev,
> -                                struct file *file);
> -
> -       /*
> -        * device_close_cb: Callback for when a device node is closed for the
> -        * last time.
> -        * @dev: The gasket_dev struct for this driver instance.
> -        *
> -        * This callback should perform device-specific cleanup that only
> -        * needs to occur when the last reference to a device node is closed.
> -        *
> -        * This call is intended to handle and device-wide cleanup, as opposed
> -        * to per-fd cleanup (which should be handled by device_release_cb).
> -        */
> -       int (*device_close_cb)(struct gasket_dev *dev);
> -
> -       /*
> -        * get_mappable_regions_cb: Get descriptors of mappable device memory.
> -        * @gasket_dev: Pointer to the struct gasket_dev for this device.
> -        * @bar_index: BAR for which to retrieve memory ranges.
> -        * @mappable_regions: Out-pointer to the list of mappable regions on the
> -        * device/BAR for this process.
> -        * @num_mappable_regions: Out-pointer for the size of mappable_regions.
> -        *
> -        * Called when handling mmap(), this callback is used to determine which
> -        * regions of device memory may be mapped by the current process. This
> -        * information is then compared to mmap request to determine which
> -        * regions to actually map.
> -        */
> -       int (*get_mappable_regions_cb)(struct gasket_dev *gasket_dev,
> -                                      int bar_index,
> -                                      struct gasket_mappable_region **mappable_regions,
> -                                      int *num_mappable_regions);
> -
> -       /*
> -        * ioctl_permissions_cb: Check permissions for generic ioctls.
> -        * @filp: File structure pointer describing this node usage session.
> -        * @cmd: ioctl number to handle.
> -        * @arg: ioctl-specific data pointer.
> -        *
> -        * Returns 1 if the ioctl may be executed, 0 otherwise. If this callback
> -        * isn't specified a default routine will be used, that only allows the
> -        * original device opener (i.e, the "owner") to execute state-affecting
> -        * ioctls.
> -        */
> -       gasket_ioctl_permissions_cb_t ioctl_permissions_cb;
> -
> -       /*
> -        * ioctl_handler_cb: Callback to handle device-specific ioctls.
> -        * @filp: File structure pointer describing this node usage session.
> -        * @cmd: ioctl number to handle.
> -        * @arg: ioctl-specific data pointer.
> -        *
> -        * Invoked whenever an ioctl is called that the generic Gasket
> -        * framework doesn't support. If no cb is registered, unknown ioctls
> -        * return -EINVAL. Should return an error status (either -EINVAL or
> -        * the error result of the ioctl being handled).
> -        */
> -       gasket_ioctl_handler_cb_t ioctl_handler_cb;
> -
> -       /*
> -        * device_status_cb: Callback to determine device health.
> -        * @dev: Pointer to the gasket_dev struct for this device.
> -        *
> -        * Called to determine if the device is healthy or not. Should return
> -        * a member of the gasket_status_type enum.
> -        *
> -        */
> -       int (*device_status_cb)(struct gasket_dev *dev);
> -
> -       /*
> -        * hardware_revision_cb: Get the device's hardware revision.
> -        * @dev: Pointer to the gasket_dev struct for this device.
> -        *
> -        * Called to determine the reported rev of the physical hardware.
> -        * Revision should be >0. A negative return value is an error.
> -        */
> -       int (*hardware_revision_cb)(struct gasket_dev *dev);
> -
> -       /*
> -        * device_reset_cb: Reset the hardware in question.
> -        * @dev: Pointer to the gasket_dev structure for this device.
> -        *
> -        * Called by reset ioctls. This function should not
> -        * lock the gasket_dev mutex. It should return 0 on success
> -        * and an error on failure.
> -        */
> -       int (*device_reset_cb)(struct gasket_dev *dev);
> -};
> -
> -/*
> - * Register the specified device type with the framework.
> - * @desc: Populated/initialized device type descriptor.
> - *
> - * This function does _not_ take ownership of desc; the underlying struct must
> - * exist until the matching call to gasket_unregister_device.
> - * This function should be called from your driver's module_init function.
> - */
> -int gasket_register_device(const struct gasket_driver_desc *desc);
> -
> -/*
> - * Remove the specified device type from the framework.
> - * @desc: Descriptor for the device type to unregister; it should have been
> - *        passed to gasket_register_device in a previous call.
> - *
> - * This function should be called from your driver's module_exit function.
> - */
> -void gasket_unregister_device(const struct gasket_driver_desc *desc);
> -
> -/* Add a PCI gasket device. */
> -int gasket_pci_add_device(struct pci_dev *pci_dev,
> -                         struct gasket_dev **gasket_devp);
> -/* Remove a PCI gasket device. */
> -void gasket_pci_remove_device(struct pci_dev *pci_dev);
> -
> -/* Enable a Gasket device. */
> -int gasket_enable_device(struct gasket_dev *gasket_dev);
> -
> -/* Disable a Gasket device. */
> -void gasket_disable_device(struct gasket_dev *gasket_dev);
> -
> -/*
> - * Reset the Gasket device.
> - * @gasket_dev: Gasket device struct.
> - *
> - * Calls device_reset_cb. Returns 0 on success and an error code othewrise.
> - * gasket_reset_nolock will not lock the mutex, gasket_reset will.
> - *
> - */
> -int gasket_reset(struct gasket_dev *gasket_dev);
> -int gasket_reset_nolock(struct gasket_dev *gasket_dev);
> -
> -/*
> - * Memory management functions. These will likely be spun off into their own
> - * file in the future.
> - */
> -
> -/* Unmaps the specified mappable region from a VMA. */
> -int gasket_mm_unmap_region(const struct gasket_dev *gasket_dev,
> -                          struct vm_area_struct *vma,
> -                          const struct gasket_mappable_region *map_region);
> -
> -/*
> - * Get the ioctl permissions callback.
> - * @gasket_dev: Gasket device structure.
> - */
> -gasket_ioctl_permissions_cb_t
> -gasket_get_ioctl_permissions_cb(struct gasket_dev *gasket_dev);
> -
> -/**
> - * Lookup a name by number in a num_name table.
> - * @num: Number to lookup.
> - * @table: Array of num_name structures, the table for the lookup.
> - *
> - */
> -const char *gasket_num_name_lookup(uint num,
> -                                  const struct gasket_num_name *table);
> -
> -/* Handy inlines */
> -static inline ulong gasket_dev_read_64(struct gasket_dev *gasket_dev, int bar,
> -                                      ulong location)
> -{
> -       return readq_relaxed(&gasket_dev->bar_data[bar].virt_base[location]);
> -}
> -
> -static inline void gasket_dev_write_64(struct gasket_dev *dev, u64 value,
> -                                      int bar, ulong location)
> -{
> -       writeq_relaxed(value, &dev->bar_data[bar].virt_base[location]);
> -}
> -
> -static inline void gasket_dev_write_32(struct gasket_dev *dev, u32 value,
> -                                      int bar, ulong location)
> -{
> -       writel_relaxed(value, &dev->bar_data[bar].virt_base[location]);
> -}
> -
> -static inline u32 gasket_dev_read_32(struct gasket_dev *dev, int bar,
> -                                    ulong location)
> -{
> -       return readl_relaxed(&dev->bar_data[bar].virt_base[location]);
> -}
> -
> -static inline void gasket_read_modify_write_64(struct gasket_dev *dev, int bar,
> -                                              ulong location, u64 value,
> -                                              u64 mask_width, u64 mask_shift)
> -{
> -       u64 mask, tmp;
> -
> -       tmp = gasket_dev_read_64(dev, bar, location);
> -       mask = ((1ULL << mask_width) - 1) << mask_shift;
> -       tmp = (tmp & ~mask) | (value << mask_shift);
> -       gasket_dev_write_64(dev, tmp, bar, location);
> -}
> -
> -static inline void gasket_read_modify_write_32(struct gasket_dev *dev, int bar,
> -                                              ulong location, u32 value,
> -                                              u32 mask_width, u32 mask_shift)
> -{
> -       u32 mask, tmp;
> -
> -       tmp = gasket_dev_read_32(dev, bar, location);
> -       mask = ((1 << mask_width) - 1) << mask_shift;
> -       tmp = (tmp & ~mask) | (value << mask_shift);
> -       gasket_dev_write_32(dev, tmp, bar, location);
> -}
> -
> -/* Get the Gasket driver structure for a given device. */
> -const struct gasket_driver_desc *gasket_get_driver_desc(struct gasket_dev *dev);
> -
> -/* Get the device structure for a given device. */
> -struct device *gasket_get_device(struct gasket_dev *dev);
> -
> -/* Helper function, Asynchronous waits on a given set of bits. */
> -int gasket_wait_with_reschedule(struct gasket_dev *gasket_dev, int bar,
> -                               u64 offset, u64 mask, u64 val,
> -                               uint max_retries, u64 delay_ms);
> -
> -#endif /* __GASKET_CORE_H__ */
> diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> deleted file mode 100644
> index 864342acfd86..000000000000
> --- a/drivers/staging/gasket/gasket_interrupt.c
> +++ /dev/null
> @@ -1,515 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0
> -/* Copyright (C) 2018 Google, Inc. */
> -
> -#include "gasket_interrupt.h"
> -
> -#include "gasket_constants.h"
> -#include "gasket_core.h"
> -#include "gasket_sysfs.h"
> -#include <linux/device.h>
> -#include <linux/interrupt.h>
> -#include <linux/printk.h>
> -#ifdef GASKET_KERNEL_TRACE_SUPPORT
> -#define CREATE_TRACE_POINTS
> -#include <trace/events/gasket_interrupt.h>
> -#else
> -#define trace_gasket_interrupt_event(x, ...)
> -#endif
> -/* Retry attempts if the requested number of interrupts aren't available. */
> -#define MSIX_RETRY_COUNT 3
> -
> -/* Instance interrupt management data. */
> -struct gasket_interrupt_data {
> -       /* The name associated with this interrupt data. */
> -       const char *name;
> -
> -       /* Interrupt type. See gasket_interrupt_type in gasket_core.h */
> -       int type;
> -
> -       /* The PCI device [if any] associated with the owning device. */
> -       struct pci_dev *pci_dev;
> -
> -       /* Set to 1 if MSI-X has successfully been configred, 0 otherwise. */
> -       int msix_configured;
> -
> -       /* The number of interrupts requested by the owning device. */
> -       int num_interrupts;
> -
> -       /* A pointer to the interrupt descriptor struct for this device. */
> -       const struct gasket_interrupt_desc *interrupts;
> -
> -       /* The index of the bar into which interrupts should be mapped. */
> -       int interrupt_bar_index;
> -
> -       /* The width of a single interrupt in a packed interrupt register. */
> -       int pack_width;
> -
> -       /*
> -        * Design-wise, these elements should be bundled together, but
> -        * pci_enable_msix's interface requires that they be managed
> -        * individually (requires array of struct msix_entry).
> -        */
> -
> -       /* The number of successfully configured interrupts. */
> -       int num_configured;
> -
> -       /* The MSI-X data for each requested/configured interrupt. */
> -       struct msix_entry *msix_entries;
> -
> -       /* The eventfd "callback" data for each interrupt. */
> -       struct eventfd_ctx **eventfd_ctxs;
> -
> -       /* The number of times each interrupt has been called. */
> -       ulong *interrupt_counts;
> -
> -       /* Linux IRQ number. */
> -       int irq;
> -};
> -
> -/* Structures to display interrupt counts in sysfs. */
> -enum interrupt_sysfs_attribute_type {
> -       ATTR_INTERRUPT_COUNTS,
> -};
> -
> -/* Set up device registers for interrupt handling. */
> -static void gasket_interrupt_setup(struct gasket_dev *gasket_dev)
> -{
> -       int i;
> -       int pack_shift;
> -       ulong mask;
> -       ulong value;
> -       struct gasket_interrupt_data *interrupt_data =
> -               gasket_dev->interrupt_data;
> -
> -       if (!interrupt_data) {
> -               dev_dbg(gasket_dev->dev, "Interrupt data is not initialized\n");
> -               return;
> -       }
> -
> -       dev_dbg(gasket_dev->dev, "Running interrupt setup\n");
> -
> -       /* Setup the MSIX table. */
> -
> -       for (i = 0; i < interrupt_data->num_interrupts; i++) {
> -               /*
> -                * If the interrupt is not packed, we can write the index into
> -                * the register directly. If not, we need to deal with a read-
> -                * modify-write and shift based on the packing index.
> -                */
> -               dev_dbg(gasket_dev->dev,
> -                       "Setting up interrupt index %d with index 0x%llx and packing %d\n",
> -                       interrupt_data->interrupts[i].index,
> -                       interrupt_data->interrupts[i].reg,
> -                       interrupt_data->interrupts[i].packing);
> -               if (interrupt_data->interrupts[i].packing == UNPACKED) {
> -                       value = interrupt_data->interrupts[i].index;
> -               } else {
> -                       switch (interrupt_data->interrupts[i].packing) {
> -                       case PACK_0:
> -                               pack_shift = 0;
> -                               break;
> -                       case PACK_1:
> -                               pack_shift = interrupt_data->pack_width;
> -                               break;
> -                       case PACK_2:
> -                               pack_shift = 2 * interrupt_data->pack_width;
> -                               break;
> -                       case PACK_3:
> -                               pack_shift = 3 * interrupt_data->pack_width;
> -                               break;
> -                       default:
> -                               dev_dbg(gasket_dev->dev,
> -                                       "Found interrupt description with unknown enum %d\n",
> -                                       interrupt_data->interrupts[i].packing);
> -                               return;
> -                       }
> -
> -                       mask = ~(0xFFFF << pack_shift);
> -                       value = gasket_dev_read_64(gasket_dev,
> -                                                  interrupt_data->interrupt_bar_index,
> -                                                  interrupt_data->interrupts[i].reg);
> -                       value &= mask;
> -                       value |= interrupt_data->interrupts[i].index
> -                                << pack_shift;
> -               }
> -               gasket_dev_write_64(gasket_dev, value,
> -                                   interrupt_data->interrupt_bar_index,
> -                                   interrupt_data->interrupts[i].reg);
> -       }
> -}
> -
> -static void
> -gasket_handle_interrupt(struct gasket_interrupt_data *interrupt_data,
> -                       int interrupt_index)
> -{
> -       struct eventfd_ctx *ctx;
> -
> -       trace_gasket_interrupt_event(interrupt_data->name, interrupt_index);
> -       ctx = interrupt_data->eventfd_ctxs[interrupt_index];
> -       if (ctx)
> -               eventfd_signal(ctx, 1);
> -
> -       ++(interrupt_data->interrupt_counts[interrupt_index]);
> -}
> -
> -static irqreturn_t gasket_msix_interrupt_handler(int irq, void *dev_id)
> -{
> -       struct gasket_interrupt_data *interrupt_data = dev_id;
> -       int interrupt = -1;
> -       int i;
> -
> -       /* If this linear lookup is a problem, we can maintain a map/hash. */
> -       for (i = 0; i < interrupt_data->num_interrupts; i++) {
> -               if (interrupt_data->msix_entries[i].vector == irq) {
> -                       interrupt = interrupt_data->msix_entries[i].entry;
> -                       break;
> -               }
> -       }
> -       if (interrupt == -1) {
> -               pr_err("Received unknown irq %d\n", irq);
> -               return IRQ_HANDLED;
> -       }
> -       gasket_handle_interrupt(interrupt_data, interrupt);
> -       return IRQ_HANDLED;
> -}
> -
> -static int
> -gasket_interrupt_msix_init(struct gasket_interrupt_data *interrupt_data)
> -{
> -       int ret = 1;
> -       int i;
> -
> -       interrupt_data->msix_entries =
> -               kcalloc(interrupt_data->num_interrupts,
> -                       sizeof(*interrupt_data->msix_entries), GFP_KERNEL);
> -       if (!interrupt_data->msix_entries)
> -               return -ENOMEM;
> -
> -       for (i = 0; i < interrupt_data->num_interrupts; i++) {
> -               interrupt_data->msix_entries[i].entry = i;
> -               interrupt_data->msix_entries[i].vector = 0;
> -               interrupt_data->eventfd_ctxs[i] = NULL;
> -       }
> -
> -       /* Retry MSIX_RETRY_COUNT times if not enough IRQs are available. */
> -       for (i = 0; i < MSIX_RETRY_COUNT && ret > 0; i++)
> -               ret = pci_enable_msix_exact(interrupt_data->pci_dev,
> -                                           interrupt_data->msix_entries,
> -                                           interrupt_data->num_interrupts);
> -
> -       if (ret)
> -               return ret > 0 ? -EBUSY : ret;
> -       interrupt_data->msix_configured = 1;
> -
> -       for (i = 0; i < interrupt_data->num_interrupts; i++) {
> -               ret = request_irq(interrupt_data->msix_entries[i].vector,
> -                                 gasket_msix_interrupt_handler, 0,
> -                                 interrupt_data->name, interrupt_data);
> -
> -               if (ret) {
> -                       dev_err(&interrupt_data->pci_dev->dev,
> -                               "Cannot get IRQ for interrupt %d, vector %d; "
> -                               "%d\n",
> -                               i, interrupt_data->msix_entries[i].vector, ret);
> -                       return ret;
> -               }
> -
> -               interrupt_data->num_configured++;
> -       }
> -
> -       return 0;
> -}
> -
> -/*
> - * On QCM DragonBoard, we exit gasket_interrupt_msix_init() and kernel interrupt
> - * setup code with MSIX vectors masked. This is wrong because nothing else in
> - * the driver will normally touch the MSIX vectors.
> - *
> - * As a temporary hack, force unmasking there.
> - *
> - * TODO: Figure out why QCM kernel doesn't unmask the MSIX vectors, after
> - * gasket_interrupt_msix_init(), and remove this code.
> - */
> -static void force_msix_interrupt_unmasking(struct gasket_dev *gasket_dev)
> -{
> -       int i;
> -#define MSIX_VECTOR_SIZE 16
> -#define MSIX_MASK_BIT_OFFSET 12
> -#define APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE 0x46800
> -       for (i = 0; i < gasket_dev->interrupt_data->num_configured; i++) {
> -               /* Check if the MSIX vector is unmasked */
> -               ulong location = APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE +
> -                                MSIX_MASK_BIT_OFFSET + i * MSIX_VECTOR_SIZE;
> -               u32 mask =
> -                       gasket_dev_read_32(gasket_dev,
> -                                          gasket_dev->interrupt_data->interrupt_bar_index,
> -                                          location);
> -               if (!(mask & 1))
> -                       continue;
> -               /* Unmask the msix vector (clear 32 bits) */
> -               gasket_dev_write_32(gasket_dev, 0,
> -                                   gasket_dev->interrupt_data->interrupt_bar_index,
> -                                   location);
> -       }
> -#undef MSIX_VECTOR_SIZE
> -#undef MSIX_MASK_BIT_OFFSET
> -#undef APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE
> -}
> -
> -static ssize_t interrupt_sysfs_show(struct device *device,
> -                                   struct device_attribute *attr, char *buf)
> -{
> -       int i, ret;
> -       ssize_t written = 0, total_written = 0;
> -       struct gasket_interrupt_data *interrupt_data;
> -       struct gasket_dev *gasket_dev;
> -       struct gasket_sysfs_attribute *gasket_attr;
> -       enum interrupt_sysfs_attribute_type sysfs_type;
> -
> -       gasket_dev = gasket_sysfs_get_device_data(device);
> -       if (!gasket_dev) {
> -               dev_dbg(device, "No sysfs mapping found for device\n");
> -               return 0;
> -       }
> -
> -       gasket_attr = gasket_sysfs_get_attr(device, attr);
> -       if (!gasket_attr) {
> -               dev_dbg(device, "No sysfs attr data found for device\n");
> -               gasket_sysfs_put_device_data(device, gasket_dev);
> -               return 0;
> -       }
> -
> -       sysfs_type = (enum interrupt_sysfs_attribute_type)
> -               gasket_attr->data.attr_type;
> -       interrupt_data = gasket_dev->interrupt_data;
> -       switch (sysfs_type) {
> -       case ATTR_INTERRUPT_COUNTS:
> -               for (i = 0; i < interrupt_data->num_interrupts; ++i) {
> -                       written =
> -                               scnprintf(buf, PAGE_SIZE - total_written,
> -                                         "0x%02x: %ld\n", i,
> -                                         interrupt_data->interrupt_counts[i]);
> -                       total_written += written;
> -                       buf += written;
> -               }
> -               ret = total_written;
> -               break;
> -       default:
> -               dev_dbg(gasket_dev->dev, "Unknown attribute: %s\n",
> -                       attr->attr.name);
> -               ret = 0;
> -               break;
> -       }
> -
> -       gasket_sysfs_put_attr(device, gasket_attr);
> -       gasket_sysfs_put_device_data(device, gasket_dev);
> -       return ret;
> -}
> -
> -static struct gasket_sysfs_attribute interrupt_sysfs_attrs[] = {
> -       GASKET_SYSFS_RO(interrupt_counts, interrupt_sysfs_show,
> -                       ATTR_INTERRUPT_COUNTS),
> -       GASKET_END_OF_ATTR_ARRAY,
> -};
> -
> -int gasket_interrupt_init(struct gasket_dev *gasket_dev)
> -{
> -       int ret;
> -       struct gasket_interrupt_data *interrupt_data;
> -       const struct gasket_driver_desc *driver_desc =
> -               gasket_get_driver_desc(gasket_dev);
> -
> -       interrupt_data = kzalloc(sizeof(*interrupt_data), GFP_KERNEL);
> -       if (!interrupt_data)
> -               return -ENOMEM;
> -       gasket_dev->interrupt_data = interrupt_data;
> -       interrupt_data->name = driver_desc->name;
> -       interrupt_data->type = driver_desc->interrupt_type;
> -       interrupt_data->pci_dev = gasket_dev->pci_dev;
> -       interrupt_data->num_interrupts = driver_desc->num_interrupts;
> -       interrupt_data->interrupts = driver_desc->interrupts;
> -       interrupt_data->interrupt_bar_index = driver_desc->interrupt_bar_index;
> -       interrupt_data->pack_width = driver_desc->interrupt_pack_width;
> -       interrupt_data->num_configured = 0;
> -
> -       interrupt_data->eventfd_ctxs =
> -               kcalloc(driver_desc->num_interrupts,
> -                       sizeof(*interrupt_data->eventfd_ctxs), GFP_KERNEL);
> -       if (!interrupt_data->eventfd_ctxs) {
> -               kfree(interrupt_data);
> -               return -ENOMEM;
> -       }
> -
> -       interrupt_data->interrupt_counts =
> -               kcalloc(driver_desc->num_interrupts,
> -                       sizeof(*interrupt_data->interrupt_counts), GFP_KERNEL);
> -       if (!interrupt_data->interrupt_counts) {
> -               kfree(interrupt_data->eventfd_ctxs);
> -               kfree(interrupt_data);
> -               return -ENOMEM;
> -       }
> -
> -       switch (interrupt_data->type) {
> -       case PCI_MSIX:
> -               ret = gasket_interrupt_msix_init(interrupt_data);
> -               if (ret)
> -                       break;
> -               force_msix_interrupt_unmasking(gasket_dev);
> -               break;
> -
> -       default:
> -               ret = -EINVAL;
> -       }
> -
> -       if (ret) {
> -               /* Failing to setup interrupts will cause the device to report
> -                * GASKET_STATUS_LAMED. But it is not fatal.
> -                */
> -               dev_warn(gasket_dev->dev,
> -                        "Couldn't initialize interrupts: %d\n", ret);
> -               return 0;
> -       }
> -
> -       gasket_interrupt_setup(gasket_dev);
> -       gasket_sysfs_create_entries(gasket_dev->dev_info.device,
> -                                   interrupt_sysfs_attrs);
> -
> -       return 0;
> -}
> -
> -static void
> -gasket_interrupt_msix_cleanup(struct gasket_interrupt_data *interrupt_data)
> -{
> -       int i;
> -
> -       for (i = 0; i < interrupt_data->num_configured; i++)
> -               free_irq(interrupt_data->msix_entries[i].vector,
> -                        interrupt_data);
> -       interrupt_data->num_configured = 0;
> -
> -       if (interrupt_data->msix_configured)
> -               pci_disable_msix(interrupt_data->pci_dev);
> -       interrupt_data->msix_configured = 0;
> -       kfree(interrupt_data->msix_entries);
> -}
> -
> -int gasket_interrupt_reinit(struct gasket_dev *gasket_dev)
> -{
> -       int ret;
> -
> -       if (!gasket_dev->interrupt_data) {
> -               dev_dbg(gasket_dev->dev,
> -                       "Attempted to reinit uninitialized interrupt data\n");
> -               return -EINVAL;
> -       }
> -
> -       switch (gasket_dev->interrupt_data->type) {
> -       case PCI_MSIX:
> -               gasket_interrupt_msix_cleanup(gasket_dev->interrupt_data);
> -               ret = gasket_interrupt_msix_init(gasket_dev->interrupt_data);
> -               if (ret)
> -                       break;
> -               force_msix_interrupt_unmasking(gasket_dev);
> -               break;
> -
> -       default:
> -               ret = -EINVAL;
> -       }
> -
> -       if (ret) {
> -               /* Failing to setup interrupts will cause the device
> -                * to report GASKET_STATUS_LAMED, but is not fatal.
> -                */
> -               dev_warn(gasket_dev->dev, "Couldn't reinit interrupts: %d\n",
> -                        ret);
> -               return 0;
> -       }
> -
> -       gasket_interrupt_setup(gasket_dev);
> -
> -       return 0;
> -}
> -
> -/* See gasket_interrupt.h for description. */
> -int gasket_interrupt_reset_counts(struct gasket_dev *gasket_dev)
> -{
> -       dev_dbg(gasket_dev->dev, "Clearing interrupt counts\n");
> -       memset(gasket_dev->interrupt_data->interrupt_counts, 0,
> -              gasket_dev->interrupt_data->num_interrupts *
> -                       sizeof(*gasket_dev->interrupt_data->interrupt_counts));
> -       return 0;
> -}
> -
> -/* See gasket_interrupt.h for description. */
> -void gasket_interrupt_cleanup(struct gasket_dev *gasket_dev)
> -{
> -       struct gasket_interrupt_data *interrupt_data =
> -               gasket_dev->interrupt_data;
> -       /*
> -        * It is possible to get an error code from gasket_interrupt_init
> -        * before interrupt_data has been allocated, so check it.
> -        */
> -       if (!interrupt_data)
> -               return;
> -
> -       switch (interrupt_data->type) {
> -       case PCI_MSIX:
> -               gasket_interrupt_msix_cleanup(interrupt_data);
> -               break;
> -
> -       default:
> -               break;
> -       }
> -
> -       kfree(interrupt_data->interrupt_counts);
> -       kfree(interrupt_data->eventfd_ctxs);
> -       kfree(interrupt_data);
> -       gasket_dev->interrupt_data = NULL;
> -}
> -
> -int gasket_interrupt_system_status(struct gasket_dev *gasket_dev)
> -{
> -       if (!gasket_dev->interrupt_data) {
> -               dev_dbg(gasket_dev->dev, "Interrupt data is null\n");
> -               return GASKET_STATUS_DEAD;
> -       }
> -
> -       if (gasket_dev->interrupt_data->num_configured !=
> -               gasket_dev->interrupt_data->num_interrupts) {
> -               dev_dbg(gasket_dev->dev,
> -                       "Not all interrupts were configured\n");
> -               return GASKET_STATUS_LAMED;
> -       }
> -
> -       return GASKET_STATUS_ALIVE;
> -}
> -
> -int gasket_interrupt_set_eventfd(struct gasket_interrupt_data *interrupt_data,
> -                                int interrupt, int event_fd)
> -{
> -       struct eventfd_ctx *ctx;
> -
> -       if (interrupt < 0 || interrupt >= interrupt_data->num_interrupts)
> -               return -EINVAL;
> -
> -       ctx = eventfd_ctx_fdget(event_fd);
> -
> -       if (IS_ERR(ctx))
> -               return PTR_ERR(ctx);
> -
> -       interrupt_data->eventfd_ctxs[interrupt] = ctx;
> -       return 0;
> -}
> -
> -int gasket_interrupt_clear_eventfd(struct gasket_interrupt_data *interrupt_data,
> -                                  int interrupt)
> -{
> -       if (interrupt < 0 || interrupt >= interrupt_data->num_interrupts)
> -               return -EINVAL;
> -
> -       if (interrupt_data->eventfd_ctxs[interrupt]) {
> -               eventfd_ctx_put(interrupt_data->eventfd_ctxs[interrupt]);
> -               interrupt_data->eventfd_ctxs[interrupt] = NULL;
> -       }
> -       return 0;
> -}
> diff --git a/drivers/staging/gasket/gasket_interrupt.h b/drivers/staging/gasket/gasket_interrupt.h
> deleted file mode 100644
> index 85526a1374a1..000000000000
> --- a/drivers/staging/gasket/gasket_interrupt.h
> +++ /dev/null
> @@ -1,95 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -/*
> - * Gasket common interrupt module. Defines functions for enabling
> - * eventfd-triggered interrupts between a Gasket device and a host process.
> - *
> - * Copyright (C) 2018 Google, Inc.
> - */
> -#ifndef __GASKET_INTERRUPT_H__
> -#define __GASKET_INTERRUPT_H__
> -
> -#include <linux/eventfd.h>
> -#include <linux/pci.h>
> -
> -#include "gasket_core.h"
> -
> -/* Note that this currently assumes that device interrupts are a dense set,
> - * numbered from 0 - (num_interrupts - 1). Should this have to change, these
> - * APIs will have to be updated.
> - */
> -
> -/* Opaque type used to hold interrupt subsystem data. */
> -struct gasket_interrupt_data;
> -
> -/*
> - * Initialize the interrupt module.
> - * @gasket_dev: The Gasket device structure for the device to be initted.
> - */
> -int gasket_interrupt_init(struct gasket_dev *gasket_dev);
> -
> -/*
> - * Clean up a device's interrupt structure.
> - * @gasket_dev: The Gasket information structure for this device.
> - *
> - * Cleans up the device's interrupts and deallocates data.
> - */
> -void gasket_interrupt_cleanup(struct gasket_dev *gasket_dev);
> -
> -/*
> - * Clean up and re-initialize the MSI-x subsystem.
> - * @gasket_dev: The Gasket information structure for this device.
> - *
> - * Performs a teardown of the MSI-x subsystem and re-initializes it. Does not
> - * free the underlying data structures. Returns 0 on success and an error code
> - * on error.
> - */
> -int gasket_interrupt_reinit(struct gasket_dev *gasket_dev);
> -
> -/*
> - * Reset the counts stored in the interrupt subsystem.
> - * @gasket_dev: The Gasket information structure for this device.
> - *
> - * Sets the counts of all interrupts in the subsystem to 0.
> - */
> -int gasket_interrupt_reset_counts(struct gasket_dev *gasket_dev);
> -
> -/*
> - * Associates an eventfd with a device interrupt.
> - * @data: Pointer to device interrupt data.
> - * @interrupt: The device interrupt to configure.
> - * @event_fd: The eventfd to associate with the interrupt.
> - *
> - * Prepares the host to receive notification of device interrupts by associating
> - * event_fd with interrupt. Upon receipt of a device interrupt, event_fd will be
> - * signaled, after successful configuration.
> - *
> - * Returns 0 on success, a negative error code otherwise.
> - */
> -int gasket_interrupt_set_eventfd(struct gasket_interrupt_data *interrupt_data,
> -                                int interrupt, int event_fd);
> -
> -/*
> - * Removes an interrupt-eventfd association.
> - * @data: Pointer to device interrupt data.
> - * @interrupt: The device interrupt to de-associate.
> - *
> - * Removes any eventfd associated with the specified interrupt, if any.
> - */
> -int gasket_interrupt_clear_eventfd(struct gasket_interrupt_data *interrupt_data,
> -                                  int interrupt);
> -
> -/*
> - * The below functions exist for backwards compatibility.
> - * No new uses should be written.
> - */
> -/*
> - * Get the health of the interrupt subsystem.
> - * @gasket_dev: The Gasket device struct.
> - *
> - * Returns DEAD if not set up, LAMED if initialization failed, and ALIVE
> - * otherwise.
> - */
> -
> -int gasket_interrupt_system_status(struct gasket_dev *gasket_dev);
> -
> -#endif
> diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
> deleted file mode 100644
> index aa65f4fbf860..000000000000
> --- a/drivers/staging/gasket/gasket_ioctl.c
> +++ /dev/null
> @@ -1,388 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0
> -/* Copyright (C) 2018 Google, Inc. */
> -#include "gasket.h"
> -#include "gasket_ioctl.h"
> -#include "gasket_constants.h"
> -#include "gasket_core.h"
> -#include "gasket_interrupt.h"
> -#include "gasket_page_table.h"
> -#include <linux/compiler.h>
> -#include <linux/device.h>
> -#include <linux/fs.h>
> -#include <linux/uaccess.h>
> -
> -#ifdef GASKET_KERNEL_TRACE_SUPPORT
> -#define CREATE_TRACE_POINTS
> -#include <trace/events/gasket_ioctl.h>
> -#else
> -#define trace_gasket_ioctl_entry(x, ...)
> -#define trace_gasket_ioctl_exit(x)
> -#define trace_gasket_ioctl_integer_data(x)
> -#define trace_gasket_ioctl_eventfd_data(x, ...)
> -#define trace_gasket_ioctl_page_table_data(x, ...)
> -#define trace_gasket_ioctl_config_coherent_allocator(x, ...)
> -#endif
> -
> -/* Associate an eventfd with an interrupt. */
> -static int gasket_set_event_fd(struct gasket_dev *gasket_dev,
> -                              struct gasket_interrupt_eventfd __user *argp)
> -{
> -       struct gasket_interrupt_eventfd die;
> -
> -       if (copy_from_user(&die, argp, sizeof(struct gasket_interrupt_eventfd)))
> -               return -EFAULT;
> -
> -       trace_gasket_ioctl_eventfd_data(die.interrupt, die.event_fd);
> -
> -       return gasket_interrupt_set_eventfd(gasket_dev->interrupt_data,
> -                                           die.interrupt, die.event_fd);
> -}
> -
> -/* Read the size of the page table. */
> -static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
> -                                      struct gasket_page_table_ioctl __user *argp)
> -{
> -       int ret = 0;
> -       struct gasket_page_table_ioctl ibuf;
> -       struct gasket_page_table *table;
> -
> -       if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
> -               return -EFAULT;
> -
> -       if (ibuf.page_table_index >= gasket_dev->num_page_tables)
> -               return -EFAULT;
> -
> -       table = gasket_dev->page_table[ibuf.page_table_index];
> -       ibuf.size = gasket_page_table_num_entries(table);
> -
> -       trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
> -                                          ibuf.host_address,
> -                                          ibuf.device_address);
> -
> -       if (copy_to_user(argp, &ibuf, sizeof(ibuf)))
> -               return -EFAULT;
> -
> -       return ret;
> -}
> -
> -/* Read the size of the simple page table. */
> -static int gasket_read_simple_page_table_size(struct gasket_dev *gasket_dev,
> -                                             struct gasket_page_table_ioctl __user *argp)
> -{
> -       int ret = 0;
> -       struct gasket_page_table_ioctl ibuf;
> -       struct gasket_page_table *table;
> -
> -       if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
> -               return -EFAULT;
> -
> -       if (ibuf.page_table_index >= gasket_dev->num_page_tables)
> -               return -EFAULT;
> -
> -       table = gasket_dev->page_table[ibuf.page_table_index];
> -       ibuf.size = gasket_page_table_num_simple_entries(table);
> -
> -       trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
> -                                          ibuf.host_address,
> -                                          ibuf.device_address);
> -
> -       if (copy_to_user(argp, &ibuf, sizeof(ibuf)))
> -               return -EFAULT;
> -
> -       return ret;
> -}
> -
> -/* Set the boundary between the simple and extended page tables. */
> -static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
> -                                      struct gasket_page_table_ioctl __user *argp)
> -{
> -       int ret;
> -       struct gasket_page_table_ioctl ibuf;
> -       uint max_page_table_size;
> -       struct gasket_page_table *table;
> -
> -       if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
> -               return -EFAULT;
> -
> -       trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
> -                                          ibuf.host_address,
> -                                          ibuf.device_address);
> -
> -       if (ibuf.page_table_index >= gasket_dev->num_page_tables)
> -               return -EFAULT;
> -       table = gasket_dev->page_table[ibuf.page_table_index];
> -       max_page_table_size = gasket_page_table_max_size(table);
> -
> -       if (ibuf.size > max_page_table_size) {
> -               dev_dbg(gasket_dev->dev,
> -                       "Partition request 0x%llx too large, max is 0x%x\n",
> -                       ibuf.size, max_page_table_size);
> -               return -EINVAL;
> -       }
> -
> -       mutex_lock(&gasket_dev->mutex);
> -
> -       ret = gasket_page_table_partition(table, ibuf.size);
> -       mutex_unlock(&gasket_dev->mutex);
> -
> -       return ret;
> -}
> -
> -/* Map a userspace buffer to a device virtual address. */
> -static int gasket_map_buffers(struct gasket_dev *gasket_dev,
> -                             struct gasket_page_table_ioctl __user *argp)
> -{
> -       struct gasket_page_table_ioctl ibuf;
> -       struct gasket_page_table *table;
> -
> -       if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
> -               return -EFAULT;
> -
> -       trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
> -                                          ibuf.host_address,
> -                                          ibuf.device_address);
> -
> -       if (ibuf.page_table_index >= gasket_dev->num_page_tables)
> -               return -EFAULT;
> -
> -       table = gasket_dev->page_table[ibuf.page_table_index];
> -       if (gasket_page_table_are_addrs_bad(table, ibuf.host_address,
> -                                           ibuf.device_address, ibuf.size))
> -               return -EINVAL;
> -
> -       return gasket_page_table_map(table, ibuf.host_address, ibuf.device_address,
> -                                    ibuf.size / PAGE_SIZE);
> -}
> -
> -/* Unmap a userspace buffer from a device virtual address. */
> -static int gasket_unmap_buffers(struct gasket_dev *gasket_dev,
> -                               struct gasket_page_table_ioctl __user *argp)
> -{
> -       struct gasket_page_table_ioctl ibuf;
> -       struct gasket_page_table *table;
> -
> -       if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
> -               return -EFAULT;
> -
> -       trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
> -                                          ibuf.host_address,
> -                                          ibuf.device_address);
> -
> -       if (ibuf.page_table_index >= gasket_dev->num_page_tables)
> -               return -EFAULT;
> -
> -       table = gasket_dev->page_table[ibuf.page_table_index];
> -       if (gasket_page_table_is_dev_addr_bad(table, ibuf.device_address, ibuf.size))
> -               return -EINVAL;
> -
> -       gasket_page_table_unmap(table, ibuf.device_address, ibuf.size / PAGE_SIZE);
> -
> -       return 0;
> -}
> -
> -/*
> - * Reserve structures for coherent allocation, and allocate or free the
> - * corresponding memory.
> - */
> -static int gasket_config_coherent_allocator(struct gasket_dev *gasket_dev,
> -                                           struct gasket_coherent_alloc_config_ioctl __user *argp)
> -{
> -       int ret;
> -       struct gasket_coherent_alloc_config_ioctl ibuf;
> -
> -       if (copy_from_user(&ibuf, argp,
> -                          sizeof(struct gasket_coherent_alloc_config_ioctl)))
> -               return -EFAULT;
> -
> -       trace_gasket_ioctl_config_coherent_allocator(ibuf.enable, ibuf.size,
> -                                                    ibuf.dma_address);
> -
> -       if (ibuf.page_table_index >= gasket_dev->num_page_tables)
> -               return -EFAULT;
> -
> -       if (ibuf.size > PAGE_SIZE * MAX_NUM_COHERENT_PAGES)
> -               return -ENOMEM;
> -
> -       if (ibuf.enable == 0) {
> -               ret = gasket_free_coherent_memory(gasket_dev, ibuf.size,
> -                                                 ibuf.dma_address,
> -                                                 ibuf.page_table_index);
> -       } else {
> -               ret = gasket_alloc_coherent_memory(gasket_dev, ibuf.size,
> -                                                  &ibuf.dma_address,
> -                                                  ibuf.page_table_index);
> -       }
> -       if (ret)
> -               return ret;
> -       if (copy_to_user(argp, &ibuf, sizeof(ibuf)))
> -               return -EFAULT;
> -
> -       return 0;
> -}
> -
> -/* Check permissions for Gasket ioctls. */
> -static bool gasket_ioctl_check_permissions(struct file *filp, uint cmd)
> -{
> -       bool alive;
> -       bool read, write;
> -       struct gasket_dev *gasket_dev = (struct gasket_dev *)filp->private_data;
> -
> -       alive = (gasket_dev->status == GASKET_STATUS_ALIVE);
> -       if (!alive)
> -               dev_dbg(gasket_dev->dev, "%s alive %d status %d\n",
> -                       __func__, alive, gasket_dev->status);
> -
> -       read = !!(filp->f_mode & FMODE_READ);
> -       write = !!(filp->f_mode & FMODE_WRITE);
> -
> -       switch (cmd) {
> -       case GASKET_IOCTL_RESET:
> -       case GASKET_IOCTL_CLEAR_INTERRUPT_COUNTS:
> -               return write;
> -
> -       case GASKET_IOCTL_PAGE_TABLE_SIZE:
> -       case GASKET_IOCTL_SIMPLE_PAGE_TABLE_SIZE:
> -       case GASKET_IOCTL_NUMBER_PAGE_TABLES:
> -               return read;
> -
> -       case GASKET_IOCTL_PARTITION_PAGE_TABLE:
> -       case GASKET_IOCTL_CONFIG_COHERENT_ALLOCATOR:
> -               return alive && write;
> -
> -       case GASKET_IOCTL_MAP_BUFFER:
> -       case GASKET_IOCTL_UNMAP_BUFFER:
> -               return alive && write;
> -
> -       case GASKET_IOCTL_CLEAR_EVENTFD:
> -       case GASKET_IOCTL_SET_EVENTFD:
> -               return alive && write;
> -       }
> -
> -       return false; /* unknown permissions */
> -}
> -
> -/*
> - * standard ioctl dispatch function.
> - * @filp: File structure pointer describing this node usage session.
> - * @cmd: ioctl number to handle.
> - * @argp: ioctl-specific data pointer.
> - *
> - * Standard ioctl dispatcher; forwards operations to individual handlers.
> - */
> -long gasket_handle_ioctl(struct file *filp, uint cmd, void __user *argp)
> -{
> -       struct gasket_dev *gasket_dev;
> -       unsigned long arg = (unsigned long)argp;
> -       gasket_ioctl_permissions_cb_t ioctl_permissions_cb;
> -       int retval;
> -
> -       gasket_dev = (struct gasket_dev *)filp->private_data;
> -       trace_gasket_ioctl_entry(gasket_dev->dev_info.name, cmd);
> -
> -       ioctl_permissions_cb = gasket_get_ioctl_permissions_cb(gasket_dev);
> -       if (ioctl_permissions_cb) {
> -               retval = ioctl_permissions_cb(filp, cmd, argp);
> -               if (retval < 0) {
> -                       trace_gasket_ioctl_exit(retval);
> -                       return retval;
> -               } else if (retval == 0) {
> -                       trace_gasket_ioctl_exit(-EPERM);
> -                       return -EPERM;
> -               }
> -       } else if (!gasket_ioctl_check_permissions(filp, cmd)) {
> -               trace_gasket_ioctl_exit(-EPERM);
> -               dev_dbg(gasket_dev->dev, "ioctl cmd=%x noperm\n", cmd);
> -               return -EPERM;
> -       }
> -
> -       /* Tracing happens in this switch statement for all ioctls with
> -        * an integer argrument, but ioctls with a struct argument
> -        * that needs copying and decoding, that tracing is done within
> -        * the handler call.
> -        */
> -       switch (cmd) {
> -       case GASKET_IOCTL_RESET:
> -               retval = gasket_reset(gasket_dev);
> -               break;
> -       case GASKET_IOCTL_SET_EVENTFD:
> -               retval = gasket_set_event_fd(gasket_dev, argp);
> -               break;
> -       case GASKET_IOCTL_CLEAR_EVENTFD:
> -               trace_gasket_ioctl_integer_data(arg);
> -               retval =
> -                       gasket_interrupt_clear_eventfd(gasket_dev->interrupt_data,
> -                                                      (int)arg);
> -               break;
> -       case GASKET_IOCTL_PARTITION_PAGE_TABLE:
> -               trace_gasket_ioctl_integer_data(arg);
> -               retval = gasket_partition_page_table(gasket_dev, argp);
> -               break;
> -       case GASKET_IOCTL_NUMBER_PAGE_TABLES:
> -               trace_gasket_ioctl_integer_data(gasket_dev->num_page_tables);
> -               if (copy_to_user(argp, &gasket_dev->num_page_tables,
> -                                sizeof(uint64_t)))
> -                       retval = -EFAULT;
> -               else
> -                       retval = 0;
> -               break;
> -       case GASKET_IOCTL_PAGE_TABLE_SIZE:
> -               retval = gasket_read_page_table_size(gasket_dev, argp);
> -               break;
> -       case GASKET_IOCTL_SIMPLE_PAGE_TABLE_SIZE:
> -               retval = gasket_read_simple_page_table_size(gasket_dev, argp);
> -               break;
> -       case GASKET_IOCTL_MAP_BUFFER:
> -               retval = gasket_map_buffers(gasket_dev, argp);
> -               break;
> -       case GASKET_IOCTL_CONFIG_COHERENT_ALLOCATOR:
> -               retval = gasket_config_coherent_allocator(gasket_dev, argp);
> -               break;
> -       case GASKET_IOCTL_UNMAP_BUFFER:
> -               retval = gasket_unmap_buffers(gasket_dev, argp);
> -               break;
> -       case GASKET_IOCTL_CLEAR_INTERRUPT_COUNTS:
> -               /* Clear interrupt counts doesn't take an arg, so use 0. */
> -               trace_gasket_ioctl_integer_data(0);
> -               retval = gasket_interrupt_reset_counts(gasket_dev);
> -               break;
> -       default:
> -               /* If we don't understand the ioctl, the best we can do is trace
> -                * the arg.
> -                */
> -               trace_gasket_ioctl_integer_data(arg);
> -               dev_dbg(gasket_dev->dev,
> -                       "Unknown ioctl cmd=0x%x not caught by gasket_is_supported_ioctl\n",
> -                       cmd);
> -               retval = -EINVAL;
> -               break;
> -       }
> -
> -       trace_gasket_ioctl_exit(retval);
> -       return retval;
> -}
> -
> -/*
> - * Determines if an ioctl is part of the standard Gasket framework.
> - * @cmd: The ioctl number to handle.
> - *
> - * Returns 1 if the ioctl is supported and 0 otherwise.
> - */
> -long gasket_is_supported_ioctl(uint cmd)
> -{
> -       switch (cmd) {
> -       case GASKET_IOCTL_RESET:
> -       case GASKET_IOCTL_SET_EVENTFD:
> -       case GASKET_IOCTL_CLEAR_EVENTFD:
> -       case GASKET_IOCTL_PARTITION_PAGE_TABLE:
> -       case GASKET_IOCTL_NUMBER_PAGE_TABLES:
> -       case GASKET_IOCTL_PAGE_TABLE_SIZE:
> -       case GASKET_IOCTL_SIMPLE_PAGE_TABLE_SIZE:
> -       case GASKET_IOCTL_MAP_BUFFER:
> -       case GASKET_IOCTL_UNMAP_BUFFER:
> -       case GASKET_IOCTL_CLEAR_INTERRUPT_COUNTS:
> -       case GASKET_IOCTL_CONFIG_COHERENT_ALLOCATOR:
> -               return 1;
> -       default:
> -               return 0;
> -       }
> -}
> diff --git a/drivers/staging/gasket/gasket_ioctl.h b/drivers/staging/gasket/gasket_ioctl.h
> deleted file mode 100644
> index 51f468c77f04..000000000000
> --- a/drivers/staging/gasket/gasket_ioctl.h
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -/* Copyright (C) 2018 Google, Inc. */
> -#ifndef __GASKET_IOCTL_H__
> -#define __GASKET_IOCTL_H__
> -
> -#include "gasket_core.h"
> -
> -#include <linux/compiler.h>
> -
> -/*
> - * Handle Gasket common ioctls.
> - * @filp: Pointer to the ioctl's file.
> - * @cmd: Ioctl command.
> - * @arg: Ioctl argument pointer.
> - *
> - * Returns 0 on success and nonzero on failure.
> - */
> -long gasket_handle_ioctl(struct file *filp, uint cmd, void __user *argp);
> -
> -/*
> - * Determines if an ioctl is part of the standard Gasket framework.
> - * @cmd: The ioctl number to handle.
> - *
> - * Returns 1 if the ioctl is supported and 0 otherwise.
> - */
> -long gasket_is_supported_ioctl(uint cmd);
> -
> -#endif
> diff --git a/drivers/staging/gasket/gasket_page_table.c b/drivers/staging/gasket/gasket_page_table.c
> deleted file mode 100644
> index 2dbf3d9b8f34..000000000000
> --- a/drivers/staging/gasket/gasket_page_table.c
> +++ /dev/null
> @@ -1,1357 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0
> -/*
> - * Implementation of Gasket page table support.
> - *
> - * Copyright (C) 2018 Google, Inc.
> - */
> -
> -/*
> - * Implementation of Gasket page table support.
> - *
> - * This file assumes 4kB pages throughout; can be factored out when necessary.
> - *
> - * There is a configurable number of page table entries, as well as a
> - * configurable bit index for the extended address flag. Both of these are
> - * specified in gasket_page_table_init through the page_table_config parameter.
> - *
> - * The following example assumes:
> - *   page_table_config->total_entries = 8192
> - *   page_table_config->extended_bit = 63
> - *
> - * Address format:
> - * Simple addresses - those whose containing pages are directly placed in the
> - * device's address translation registers - are laid out as:
> - * [ 63 - 25: 0 | 24 - 12: page index | 11 - 0: page offset ]
> - * page index:  The index of the containing page in the device's address
> - *              translation registers.
> - * page offset: The index of the address into the containing page.
> - *
> - * Extended address - those whose containing pages are contained in a second-
> - * level page table whose address is present in the device's address translation
> - * registers - are laid out as:
> - * [ 63: flag | 62 - 34: 0 | 33 - 21: dev/level 0 index |
> - *   20 - 12: host/level 1 index | 11 - 0: page offset ]
> - * flag:        Marker indicating that this is an extended address. Always 1.
> - * dev index:   The index of the first-level page in the device's extended
> - *              address translation registers.
> - * host index:  The index of the containing page in the [host-resident] second-
> - *              level page table.
> - * page offset: The index of the address into the containing [second-level]
> - *              page.
> - */
> -#include "gasket_page_table.h"
> -
> -#include <linux/device.h>
> -#include <linux/file.h>
> -#include <linux/init.h>
> -#include <linux/kernel.h>
> -#include <linux/module.h>
> -#include <linux/moduleparam.h>
> -#include <linux/pagemap.h>
> -#include <linux/vmalloc.h>
> -
> -#include "gasket_constants.h"
> -#include "gasket_core.h"
> -
> -/* Constants & utility macros */
> -/* The number of pages that can be mapped into each second-level page table. */
> -#define GASKET_PAGES_PER_SUBTABLE 512
> -
> -/* The starting position of the page index in a simple virtual address. */
> -#define GASKET_SIMPLE_PAGE_SHIFT 12
> -
> -/* Flag indicating that a [device] slot is valid for use. */
> -#define GASKET_VALID_SLOT_FLAG 1
> -
> -/*
> - * The starting position of the level 0 page index (i.e., the entry in the
> - * device's extended address registers) in an extended address.
> - * Also can be thought of as (log2(PAGE_SIZE) + log2(PAGES_PER_SUBTABLE)),
> - * or (12 + 9).
> - */
> -#define GASKET_EXTENDED_LVL0_SHIFT 21
> -
> -/*
> - * Number of first level pages that Gasket chips support. Equivalent to
> - * log2(NUM_LVL0_PAGE_TABLES)
> - *
> - * At a maximum, allowing for a 34 bits address space (or 16GB)
> - *   = GASKET_EXTENDED_LVL0_WIDTH + (log2(PAGE_SIZE) + log2(PAGES_PER_SUBTABLE)
> - * or, = 13 + 9 + 12
> - */
> -#define GASKET_EXTENDED_LVL0_WIDTH 13
> -
> -/*
> - * The starting position of the level 1 page index (i.e., the entry in the
> - * host second-level/sub- table) in an extended address.
> - */
> -#define GASKET_EXTENDED_LVL1_SHIFT 12
> -
> -/* Type declarations */
> -/* Valid states for a struct gasket_page_table_entry. */
> -enum pte_status {
> -       PTE_FREE,
> -       PTE_INUSE,
> -};
> -
> -/*
> - * Mapping metadata for a single page.
> - *
> - * In this file, host-side page table entries are referred to as that (or PTEs).
> - * Where device vs. host entries are differentiated, device-side or -visible
> - * entries are called "slots". A slot may be either an entry in the device's
> - * address translation table registers or an entry in a second-level page
> - * table ("subtable").
> - *
> - * The full data in this structure is visible on the host [of course]. Only
> - * the address contained in dma_addr is communicated to the device; that points
> - * to the actual page mapped and described by this structure.
> - */
> -struct gasket_page_table_entry {
> -       /* The status of this entry/slot: free or in use. */
> -       enum pte_status status;
> -
> -       /*
> -        * Index for alignment into host vaddrs.
> -        * When a user specifies a host address for a mapping, that address may
> -        * not be page-aligned. Offset is the index into the containing page of
> -        * the host address (i.e., host_vaddr & (PAGE_SIZE - 1)).
> -        * This is necessary for translating between user-specified addresses
> -        * and page-aligned addresses.
> -        */
> -       int offset;
> -
> -       /* Address of the page in DMA space. */
> -       dma_addr_t dma_addr;
> -
> -       /* Linux page descriptor for the page described by this structure. */
> -       struct page *page;
> -
> -       /*
> -        * If this is an extended and first-level entry, sublevel points
> -        * to the second-level entries underneath this entry.
> -        */
> -       struct gasket_page_table_entry *sublevel;
> -};
> -
> -/*
> - * Maintains virtual to physical address mapping for a coherent page that is
> - * allocated by this module for a given device.
> - * Note that coherent pages mappings virt mapping cannot be tracked by the
> - * Linux kernel, and coherent pages don't have a struct page associated,
> - * hence Linux kernel cannot perform a get_user_page_xx() on a phys address
> - * that was allocated coherent.
> - * This structure trivially implements this mechanism.
> - */
> -struct gasket_coherent_page_entry {
> -       /* Phys address, dma'able by the owner device */
> -       dma_addr_t paddr;
> -
> -       /* Kernel virtual address */
> -       u64 user_virt;
> -
> -       /* User virtual address that was mapped by the mmap kernel subsystem */
> -       u64 kernel_virt;
> -
> -       /*
> -        * Whether this page has been mapped into a user land process virtual
> -        * space
> -        */
> -       u32 in_use;
> -};
> -
> -/*
> - * [Host-side] page table descriptor.
> - *
> - * This structure tracks the metadata necessary to manage both simple and
> - * extended page tables.
> - */
> -struct gasket_page_table {
> -       /* The config used to create this page table. */
> -       struct gasket_page_table_config config;
> -
> -       /* The number of simple (single-level) entries in the page table. */
> -       uint num_simple_entries;
> -
> -       /* The number of extended (two-level) entries in the page table. */
> -       uint num_extended_entries;
> -
> -       /* Array of [host-side] page table entries. */
> -       struct gasket_page_table_entry *entries;
> -
> -       /* Number of actively mapped kernel pages in this table. */
> -       uint num_active_pages;
> -
> -       /* Device register: base of/first slot in the page table. */
> -       u64 __iomem *base_slot;
> -
> -       /* Device register: holds the offset indicating the start of the
> -        * extended address region of the device's address translation table.
> -        */
> -       u64 __iomem *extended_offset_reg;
> -
> -       /* Device structure for the underlying device. Only used for logging. */
> -       struct device *device;
> -
> -       /* PCI system descriptor for the underlying device. */
> -       struct pci_dev *pci_dev;
> -
> -       /* Location of the extended address bit for this Gasket device. */
> -       u64 extended_flag;
> -
> -       /* Mutex to protect page table internals. */
> -       struct mutex mutex;
> -
> -       /* Number of coherent pages accessible thru by this page table */
> -       int num_coherent_pages;
> -
> -       /*
> -        * List of coherent memory (physical) allocated for a device.
> -        *
> -        * This structure also remembers the user virtual mapping, this is
> -        * hacky, but we need to do this because the kernel doesn't keep track
> -        * of the user coherent pages (pfn pages), and virt to coherent page
> -        * mapping.
> -        * TODO: use find_vma() APIs to convert host address to vm_area, to
> -        * dma_addr_t instead of storing user virtu address in
> -        * gasket_coherent_page_entry
> -        *
> -        * Note that the user virtual mapping is created by the driver, in
> -        * gasket_mmap function, so user_virt belongs in the driver anyhow.
> -        */
> -       struct gasket_coherent_page_entry *coherent_pages;
> -};
> -
> -/* See gasket_page_table.h for description. */
> -int gasket_page_table_init(struct gasket_page_table **ppg_tbl,
> -                          const struct gasket_bar_data *bar_data,
> -                          const struct gasket_page_table_config *page_table_config,
> -                          struct device *device, struct pci_dev *pci_dev)
> -{
> -       ulong bytes;
> -       struct gasket_page_table *pg_tbl;
> -       ulong total_entries = page_table_config->total_entries;
> -
> -       /*
> -        * TODO: Verify config->total_entries against value read from the
> -        * hardware register that contains the page table size.
> -        */
> -       if (total_entries == ULONG_MAX) {
> -               dev_dbg(device,
> -                       "Error reading page table size. Initializing page table with size 0\n");
> -               total_entries = 0;
> -       }
> -
> -       dev_dbg(device,
> -               "Attempting to initialize page table of size 0x%lx\n",
> -               total_entries);
> -
> -       dev_dbg(device,
> -               "Table has base reg 0x%x, extended offset reg 0x%x\n",
> -               page_table_config->base_reg,
> -               page_table_config->extended_reg);
> -
> -       *ppg_tbl = kzalloc(sizeof(**ppg_tbl), GFP_KERNEL);
> -       if (!*ppg_tbl) {
> -               dev_dbg(device, "No memory for page table\n");
> -               return -ENOMEM;
> -       }
> -
> -       pg_tbl = *ppg_tbl;
> -       bytes = total_entries * sizeof(struct gasket_page_table_entry);
> -       if (bytes != 0) {
> -               pg_tbl->entries = vzalloc(bytes);
> -               if (!pg_tbl->entries) {
> -                       kfree(pg_tbl);
> -                       *ppg_tbl = NULL;
> -                       return -ENOMEM;
> -               }
> -       }
> -
> -       mutex_init(&pg_tbl->mutex);
> -       memcpy(&pg_tbl->config, page_table_config, sizeof(*page_table_config));
> -       if (pg_tbl->config.mode == GASKET_PAGE_TABLE_MODE_NORMAL ||
> -           pg_tbl->config.mode == GASKET_PAGE_TABLE_MODE_SIMPLE) {
> -               pg_tbl->num_simple_entries = total_entries;
> -               pg_tbl->num_extended_entries = 0;
> -               pg_tbl->extended_flag = 1ull << page_table_config->extended_bit;
> -       } else {
> -               pg_tbl->num_simple_entries = 0;
> -               pg_tbl->num_extended_entries = total_entries;
> -               pg_tbl->extended_flag = 0;
> -       }
> -       pg_tbl->num_active_pages = 0;
> -       pg_tbl->base_slot =
> -               (u64 __iomem *)&bar_data->virt_base[page_table_config->base_reg];
> -       pg_tbl->extended_offset_reg =
> -               (u64 __iomem *)&bar_data->virt_base[page_table_config->extended_reg];
> -       pg_tbl->device = get_device(device);
> -       pg_tbl->pci_dev = pci_dev;
> -
> -       dev_dbg(device, "Page table initialized successfully\n");
> -
> -       return 0;
> -}
> -
> -/*
> - * Check if a range of PTEs is free.
> - * The page table mutex must be held by the caller.
> - */
> -static bool gasket_is_pte_range_free(struct gasket_page_table_entry *ptes,
> -                                    uint num_entries)
> -{
> -       int i;
> -
> -       for (i = 0; i < num_entries; i++) {
> -               if (ptes[i].status != PTE_FREE)
> -                       return false;
> -       }
> -
> -       return true;
> -}
> -
> -/*
> - * Free a second level page [sub]table.
> - * The page table mutex must be held before this call.
> - */
> -static void gasket_free_extended_subtable(struct gasket_page_table *pg_tbl,
> -                                         struct gasket_page_table_entry *pte,
> -                                         u64 __iomem *slot)
> -{
> -       /* Release the page table from the driver */
> -       pte->status = PTE_FREE;
> -
> -       /* Release the page table from the device */
> -       writeq(0, slot);
> -
> -       if (pte->dma_addr)
> -               dma_unmap_page(pg_tbl->device, pte->dma_addr, PAGE_SIZE,
> -                              DMA_TO_DEVICE);
> -
> -       vfree(pte->sublevel);
> -
> -       if (pte->page)
> -               free_page((ulong)page_address(pte->page));
> -
> -       memset(pte, 0, sizeof(struct gasket_page_table_entry));
> -}
> -
> -/*
> - * Actually perform collection.
> - * The page table mutex must be held by the caller.
> - */
> -static void
> -gasket_page_table_garbage_collect_nolock(struct gasket_page_table *pg_tbl)
> -{
> -       struct gasket_page_table_entry *pte;
> -       u64 __iomem *slot;
> -
> -       /* XXX FIX ME XXX -- more efficient to keep a usage count */
> -       /* rather than scanning the second level page tables */
> -
> -       for (pte = pg_tbl->entries + pg_tbl->num_simple_entries,
> -            slot = pg_tbl->base_slot + pg_tbl->num_simple_entries;
> -            pte < pg_tbl->entries + pg_tbl->config.total_entries;
> -            pte++, slot++) {
> -               if (pte->status == PTE_INUSE) {
> -                       if (gasket_is_pte_range_free(pte->sublevel,
> -                                                    GASKET_PAGES_PER_SUBTABLE))
> -                               gasket_free_extended_subtable(pg_tbl, pte,
> -                                                             slot);
> -               }
> -       }
> -}
> -
> -/* See gasket_page_table.h for description. */
> -void gasket_page_table_garbage_collect(struct gasket_page_table *pg_tbl)
> -{
> -       mutex_lock(&pg_tbl->mutex);
> -       gasket_page_table_garbage_collect_nolock(pg_tbl);
> -       mutex_unlock(&pg_tbl->mutex);
> -}
> -
> -/* See gasket_page_table.h for description. */
> -void gasket_page_table_cleanup(struct gasket_page_table *pg_tbl)
> -{
> -       /* Deallocate free second-level tables. */
> -       gasket_page_table_garbage_collect(pg_tbl);
> -
> -       /* TODO: Check that all PTEs have been freed? */
> -
> -       vfree(pg_tbl->entries);
> -       pg_tbl->entries = NULL;
> -
> -       put_device(pg_tbl->device);
> -       kfree(pg_tbl);
> -}
> -
> -/* See gasket_page_table.h for description. */
> -int gasket_page_table_partition(struct gasket_page_table *pg_tbl,
> -                               uint num_simple_entries)
> -{
> -       int i, start;
> -
> -       mutex_lock(&pg_tbl->mutex);
> -       if (num_simple_entries > pg_tbl->config.total_entries) {
> -               mutex_unlock(&pg_tbl->mutex);
> -               return -EINVAL;
> -       }
> -
> -       gasket_page_table_garbage_collect_nolock(pg_tbl);
> -
> -       start = min(pg_tbl->num_simple_entries, num_simple_entries);
> -
> -       for (i = start; i < pg_tbl->config.total_entries; i++) {
> -               if (pg_tbl->entries[i].status != PTE_FREE) {
> -                       dev_err(pg_tbl->device, "entry %d is not free\n", i);
> -                       mutex_unlock(&pg_tbl->mutex);
> -                       return -EBUSY;
> -               }
> -       }
> -
> -       pg_tbl->num_simple_entries = num_simple_entries;
> -       pg_tbl->num_extended_entries =
> -               pg_tbl->config.total_entries - num_simple_entries;
> -       writeq(num_simple_entries, pg_tbl->extended_offset_reg);
> -
> -       mutex_unlock(&pg_tbl->mutex);
> -       return 0;
> -}
> -EXPORT_SYMBOL(gasket_page_table_partition);
> -
> -/*
> - * Return whether a host buffer was mapped as coherent memory.
> - *
> - * A Gasket page_table currently support one contiguous dma range, mapped to one
> - * contiguous virtual memory range. Check if the host_addr is within that range.
> - */
> -static int is_coherent(struct gasket_page_table *pg_tbl, ulong host_addr)
> -{
> -       u64 min, max;
> -
> -       /* whether the host address is within user virt range */
> -       if (!pg_tbl->coherent_pages)
> -               return 0;
> -
> -       min = (u64)pg_tbl->coherent_pages[0].user_virt;
> -       max = min + PAGE_SIZE * pg_tbl->num_coherent_pages;
> -
> -       return min <= host_addr && host_addr < max;
> -}
> -
> -/* Safely return a page to the OS. */
> -static bool gasket_release_page(struct page *page)
> -{
> -       if (!page)
> -               return false;
> -
> -       if (!PageReserved(page))
> -               SetPageDirty(page);
> -       unpin_user_page(page);
> -
> -       return true;
> -}
> -
> -/*
> - * Get and map last level page table buffers.
> - *
> - * slots is the location(s) to write device-mapped page address. If this is a
> - * simple mapping, these will be address translation registers. If this is
> - * an extended mapping, these will be within a second-level page table
> - * allocated by the host and so must have their __iomem attribute casted away.
> - */
> -static int gasket_perform_mapping(struct gasket_page_table *pg_tbl,
> -                                 struct gasket_page_table_entry *ptes,
> -                                 u64 __iomem *slots, ulong host_addr,
> -                                 uint num_pages, int is_simple_mapping)
> -{
> -       int ret;
> -       ulong offset;
> -       struct page *page;
> -       dma_addr_t dma_addr;
> -       ulong page_addr;
> -       int i;
> -
> -       for (i = 0; i < num_pages; i++) {
> -               page_addr = host_addr + i * PAGE_SIZE;
> -               offset = page_addr & (PAGE_SIZE - 1);
> -               if (is_coherent(pg_tbl, host_addr)) {
> -                       u64 off =
> -                               (u64)host_addr -
> -                               (u64)pg_tbl->coherent_pages[0].user_virt;
> -                       ptes[i].page = NULL;
> -                       ptes[i].offset = offset;
> -                       ptes[i].dma_addr = pg_tbl->coherent_pages[0].paddr +
> -                                          off + i * PAGE_SIZE;
> -               } else {
> -                       ret = pin_user_pages_fast(page_addr - offset, 1,
> -                                                 FOLL_WRITE, &page);
> -
> -                       if (ret <= 0) {
> -                               dev_err(pg_tbl->device,
> -                                       "pin user pages failed for addr=0x%lx, offset=0x%lx [ret=%d]\n",
> -                                       page_addr, offset, ret);
> -                               return ret ? ret : -ENOMEM;
> -                       }
> -                       ++pg_tbl->num_active_pages;
> -
> -                       ptes[i].page = page;
> -                       ptes[i].offset = offset;
> -
> -                       /* Map the page into DMA space. */
> -                       ptes[i].dma_addr =
> -                               dma_map_page(pg_tbl->device, page, 0, PAGE_SIZE,
> -                                            DMA_BIDIRECTIONAL);
> -
> -                       if (dma_mapping_error(pg_tbl->device,
> -                                             ptes[i].dma_addr)) {
> -                               if (gasket_release_page(ptes[i].page))
> -                                       --pg_tbl->num_active_pages;
> -
> -                               memset(&ptes[i], 0,
> -                                      sizeof(struct gasket_page_table_entry));
> -                               return -EINVAL;
> -                       }
> -               }
> -
> -               /* Make the DMA-space address available to the device. */
> -               dma_addr = (ptes[i].dma_addr + offset) | GASKET_VALID_SLOT_FLAG;
> -
> -               if (is_simple_mapping) {
> -                       writeq(dma_addr, &slots[i]);
> -               } else {
> -                       ((u64 __force *)slots)[i] = dma_addr;
> -                       /* Extended page table vectors are in DRAM,
> -                        * and so need to be synced each time they are updated.
> -                        */
> -                       dma_map_single(pg_tbl->device,
> -                                      (void *)&((u64 __force *)slots)[i],
> -                                      sizeof(u64), DMA_TO_DEVICE);
> -               }
> -               ptes[i].status = PTE_INUSE;
> -       }
> -       return 0;
> -}
> -
> -/*
> - * Return the index of the page for the address in the simple table.
> - * Does not perform validity checking.
> - */
> -static int gasket_simple_page_idx(struct gasket_page_table *pg_tbl,
> -                                 ulong dev_addr)
> -{
> -       return (dev_addr >> GASKET_SIMPLE_PAGE_SHIFT) &
> -               (pg_tbl->config.total_entries - 1);
> -}
> -
> -/*
> - * Return the level 0 page index for the given address.
> - * Does not perform validity checking.
> - */
> -static ulong gasket_extended_lvl0_page_idx(struct gasket_page_table *pg_tbl,
> -                                          ulong dev_addr)
> -{
> -       return (dev_addr >> GASKET_EXTENDED_LVL0_SHIFT) &
> -               (pg_tbl->config.total_entries - 1);
> -}
> -
> -/*
> - * Return the level 1 page index for the given address.
> - * Does not perform validity checking.
> - */
> -static ulong gasket_extended_lvl1_page_idx(struct gasket_page_table *pg_tbl,
> -                                          ulong dev_addr)
> -{
> -       return (dev_addr >> GASKET_EXTENDED_LVL1_SHIFT) &
> -              (GASKET_PAGES_PER_SUBTABLE - 1);
> -}
> -
> -/*
> - * Allocate page table entries in a simple table.
> - * The page table mutex must be held by the caller.
> - */
> -static int gasket_alloc_simple_entries(struct gasket_page_table *pg_tbl,
> -                                      ulong dev_addr, uint num_pages)
> -{
> -       if (!gasket_is_pte_range_free(pg_tbl->entries +
> -                                     gasket_simple_page_idx(pg_tbl, dev_addr),
> -                                     num_pages))
> -               return -EBUSY;
> -
> -       return 0;
> -}
> -
> -/*
> - * Unmap and release mapped pages.
> - * The page table mutex must be held by the caller.
> - */
> -static void gasket_perform_unmapping(struct gasket_page_table *pg_tbl,
> -                                    struct gasket_page_table_entry *ptes,
> -                                    u64 __iomem *slots, uint num_pages,
> -                                    int is_simple_mapping)
> -{
> -       int i;
> -       /*
> -        * For each page table entry and corresponding entry in the device's
> -        * address translation table:
> -        */
> -       for (i = 0; i < num_pages; i++) {
> -               /* release the address from the device, */
> -               if (is_simple_mapping || ptes[i].status == PTE_INUSE) {
> -                       writeq(0, &slots[i]);
> -               } else {
> -                       ((u64 __force *)slots)[i] = 0;
> -                       /* sync above PTE update before updating mappings */
> -                       wmb();
> -               }
> -
> -               /* release the address from the driver, */
> -               if (ptes[i].status == PTE_INUSE) {
> -                       if (ptes[i].page && ptes[i].dma_addr) {
> -                               dma_unmap_page(pg_tbl->device, ptes[i].dma_addr,
> -                                              PAGE_SIZE, DMA_BIDIRECTIONAL);
> -                       }
> -                       if (gasket_release_page(ptes[i].page))
> -                               --pg_tbl->num_active_pages;
> -               }
> -
> -               /* and clear the PTE. */
> -               memset(&ptes[i], 0, sizeof(struct gasket_page_table_entry));
> -       }
> -}
> -
> -/*
> - * Unmap and release pages mapped to simple addresses.
> - * The page table mutex must be held by the caller.
> - */
> -static void gasket_unmap_simple_pages(struct gasket_page_table *pg_tbl,
> -                                     ulong dev_addr, uint num_pages)
> -{
> -       uint slot = gasket_simple_page_idx(pg_tbl, dev_addr);
> -
> -       gasket_perform_unmapping(pg_tbl, pg_tbl->entries + slot,
> -                                pg_tbl->base_slot + slot, num_pages, 1);
> -}
> -
> -/*
> - * Unmap and release buffers to extended addresses.
> - * The page table mutex must be held by the caller.
> - */
> -static void gasket_unmap_extended_pages(struct gasket_page_table *pg_tbl,
> -                                       ulong dev_addr, uint num_pages)
> -{
> -       uint slot_idx, remain, len;
> -       struct gasket_page_table_entry *pte;
> -       u64 __iomem *slot_base;
> -
> -       remain = num_pages;
> -       slot_idx = gasket_extended_lvl1_page_idx(pg_tbl, dev_addr);
> -       pte = pg_tbl->entries + pg_tbl->num_simple_entries +
> -             gasket_extended_lvl0_page_idx(pg_tbl, dev_addr);
> -
> -       while (remain > 0) {
> -               /* TODO: Add check to ensure pte remains valid? */
> -               len = min(remain, GASKET_PAGES_PER_SUBTABLE - slot_idx);
> -
> -               if (pte->status == PTE_INUSE) {
> -                       slot_base = (u64 __iomem *)(page_address(pte->page) +
> -                                                   pte->offset);
> -                       gasket_perform_unmapping(pg_tbl,
> -                                                pte->sublevel + slot_idx,
> -                                                slot_base + slot_idx, len, 0);
> -               }
> -
> -               remain -= len;
> -               slot_idx = 0;
> -               pte++;
> -       }
> -}
> -
> -/* Evaluates to nonzero if the specified virtual address is simple. */
> -static inline bool gasket_addr_is_simple(struct gasket_page_table *pg_tbl,
> -                                        ulong addr)
> -{
> -       return !((addr) & (pg_tbl)->extended_flag);
> -}
> -
> -/*
> - * Convert (simple, page, offset) into a device address.
> - * Examples:
> - * Simple page 0, offset 32:
> - *  Input (1, 0, 32), Output 0x20
> - * Simple page 1000, offset 511:
> - *  Input (1, 1000, 511), Output 0x3E81FF
> - * Extended page 0, offset 32:
> - *  Input (0, 0, 32), Output 0x8000000020
> - * Extended page 1000, offset 511:
> - *  Input (0, 1000, 511), Output 0x8003E81FF
> - */
> -static ulong gasket_components_to_dev_address(struct gasket_page_table *pg_tbl,
> -                                             int is_simple, uint page_index,
> -                                             uint offset)
> -{
> -       ulong dev_addr = (page_index << GASKET_SIMPLE_PAGE_SHIFT) | offset;
> -
> -       return is_simple ? dev_addr : (pg_tbl->extended_flag | dev_addr);
> -}
> -
> -/*
> - * Validity checking for simple addresses.
> - *
> - * Verify that address translation commutes (from address to/from page + offset)
> - * and that the requested page range starts and ends within the set of
> - * currently-partitioned simple pages.
> - */
> -static bool gasket_is_simple_dev_addr_bad(struct gasket_page_table *pg_tbl,
> -                                         ulong dev_addr, uint num_pages)
> -{
> -       ulong page_offset = dev_addr & (PAGE_SIZE - 1);
> -       ulong page_index =
> -               (dev_addr / PAGE_SIZE) & (pg_tbl->config.total_entries - 1);
> -
> -       if (gasket_components_to_dev_address(pg_tbl, 1, page_index,
> -                                            page_offset) != dev_addr) {
> -               dev_err(pg_tbl->device, "address is invalid, 0x%lX\n",
> -                       dev_addr);
> -               return true;
> -       }
> -
> -       if (page_index >= pg_tbl->num_simple_entries) {
> -               dev_err(pg_tbl->device,
> -                       "starting slot at %lu is too large, max is < %u\n",
> -                       page_index, pg_tbl->num_simple_entries);
> -               return true;
> -       }
> -
> -       if (page_index + num_pages > pg_tbl->num_simple_entries) {
> -               dev_err(pg_tbl->device,
> -                       "ending slot at %lu is too large, max is <= %u\n",
> -                       page_index + num_pages, pg_tbl->num_simple_entries);
> -               return true;
> -       }
> -
> -       return false;
> -}
> -
> -/*
> - * Validity checking for extended addresses.
> - *
> - * Verify that address translation commutes (from address to/from page +
> - * offset) and that the requested page range starts and ends within the set of
> - * currently-partitioned extended pages.
> - */
> -static bool gasket_is_extended_dev_addr_bad(struct gasket_page_table *pg_tbl,
> -                                           ulong dev_addr, uint num_pages)
> -{
> -       /* Starting byte index of dev_addr into the first mapped page */
> -       ulong page_offset = dev_addr & (PAGE_SIZE - 1);
> -       ulong page_global_idx, page_lvl0_idx;
> -       ulong num_lvl0_pages;
> -       ulong addr;
> -
> -       /* check if the device address is out of bound */
> -       addr = dev_addr & ~((pg_tbl)->extended_flag);
> -       if (addr >> (GASKET_EXTENDED_LVL0_WIDTH + GASKET_EXTENDED_LVL0_SHIFT)) {
> -               dev_err(pg_tbl->device, "device address out of bounds: 0x%lx\n",
> -                       dev_addr);
> -               return true;
> -       }
> -
> -       /* Find the starting sub-page index in the space of all sub-pages. */
> -       page_global_idx = (dev_addr / PAGE_SIZE) &
> -               (pg_tbl->config.total_entries * GASKET_PAGES_PER_SUBTABLE - 1);
> -
> -       /* Find the starting level 0 index. */
> -       page_lvl0_idx = gasket_extended_lvl0_page_idx(pg_tbl, dev_addr);
> -
> -       /* Get the count of affected level 0 pages. */
> -       num_lvl0_pages = DIV_ROUND_UP(num_pages, GASKET_PAGES_PER_SUBTABLE);
> -
> -       if (gasket_components_to_dev_address(pg_tbl, 0, page_global_idx,
> -                                            page_offset) != dev_addr) {
> -               dev_err(pg_tbl->device, "address is invalid: 0x%lx\n",
> -                       dev_addr);
> -               return true;
> -       }
> -
> -       if (page_lvl0_idx >= pg_tbl->num_extended_entries) {
> -               dev_err(pg_tbl->device,
> -                       "starting level 0 slot at %lu is too large, max is < %u\n",
> -                       page_lvl0_idx, pg_tbl->num_extended_entries);
> -               return true;
> -       }
> -
> -       if (page_lvl0_idx + num_lvl0_pages > pg_tbl->num_extended_entries) {
> -               dev_err(pg_tbl->device,
> -                       "ending level 0 slot at %lu is too large, max is <= %u\n",
> -                       page_lvl0_idx + num_lvl0_pages,
> -                       pg_tbl->num_extended_entries);
> -               return true;
> -       }
> -
> -       return false;
> -}
> -
> -/*
> - * Non-locking entry to unmapping routines.
> - * The page table mutex must be held by the caller.
> - */
> -static void gasket_page_table_unmap_nolock(struct gasket_page_table *pg_tbl,
> -                                          ulong dev_addr, uint num_pages)
> -{
> -       if (!num_pages)
> -               return;
> -
> -       if (gasket_addr_is_simple(pg_tbl, dev_addr))
> -               gasket_unmap_simple_pages(pg_tbl, dev_addr, num_pages);
> -       else
> -               gasket_unmap_extended_pages(pg_tbl, dev_addr, num_pages);
> -}
> -
> -/*
> - * Allocate and map pages to simple addresses.
> - * If there is an error, no pages are mapped.
> - */
> -static int gasket_map_simple_pages(struct gasket_page_table *pg_tbl,
> -                                  ulong host_addr, ulong dev_addr,
> -                                  uint num_pages)
> -{
> -       int ret;
> -       uint slot_idx = gasket_simple_page_idx(pg_tbl, dev_addr);
> -
> -       ret = gasket_alloc_simple_entries(pg_tbl, dev_addr, num_pages);
> -       if (ret) {
> -               dev_err(pg_tbl->device,
> -                       "page table slots %u (@ 0x%lx) to %u are not available\n",
> -                       slot_idx, dev_addr, slot_idx + num_pages - 1);
> -               return ret;
> -       }
> -
> -       ret = gasket_perform_mapping(pg_tbl, pg_tbl->entries + slot_idx,
> -                                    pg_tbl->base_slot + slot_idx, host_addr,
> -                                    num_pages, 1);
> -
> -       if (ret) {
> -               gasket_page_table_unmap_nolock(pg_tbl, dev_addr, num_pages);
> -               dev_err(pg_tbl->device, "gasket_perform_mapping %d\n", ret);
> -       }
> -       return ret;
> -}
> -
> -/*
> - * Allocate a second level page table.
> - * The page table mutex must be held by the caller.
> - */
> -static int gasket_alloc_extended_subtable(struct gasket_page_table *pg_tbl,
> -                                         struct gasket_page_table_entry *pte,
> -                                         u64 __iomem *slot)
> -{
> -       ulong page_addr, subtable_bytes;
> -       dma_addr_t dma_addr;
> -
> -       /* XXX FIX ME XXX this is inefficient for non-4K page sizes */
> -
> -       /* GFP_DMA flag must be passed to architectures for which
> -        * part of the memory range is not considered DMA'able.
> -        * This seems to be the case for Juno board with 4.5.0 Linaro kernel
> -        */
> -       page_addr = get_zeroed_page(GFP_KERNEL | GFP_DMA);
> -       if (!page_addr)
> -               return -ENOMEM;
> -       pte->page = virt_to_page((void *)page_addr);
> -       pte->offset = 0;
> -
> -       subtable_bytes = sizeof(struct gasket_page_table_entry) *
> -               GASKET_PAGES_PER_SUBTABLE;
> -       pte->sublevel = vzalloc(subtable_bytes);
> -       if (!pte->sublevel) {
> -               free_page(page_addr);
> -               memset(pte, 0, sizeof(struct gasket_page_table_entry));
> -               return -ENOMEM;
> -       }
> -
> -       /* Map the page into DMA space. */
> -       pte->dma_addr = dma_map_page(pg_tbl->device, pte->page, 0, PAGE_SIZE,
> -                                    DMA_TO_DEVICE);
> -       if (dma_mapping_error(pg_tbl->device, pte->dma_addr)) {
> -               free_page(page_addr);
> -               vfree(pte->sublevel);
> -               memset(pte, 0, sizeof(struct gasket_page_table_entry));
> -               return -ENOMEM;
> -       }
> -
> -       /* make the addresses available to the device */
> -       dma_addr = (pte->dma_addr + pte->offset) | GASKET_VALID_SLOT_FLAG;
> -       writeq(dma_addr, slot);
> -
> -       pte->status = PTE_INUSE;
> -
> -       return 0;
> -}
> -
> -/*
> - * Allocate slots in an extended page table.  Check to see if a range of page
> - * table slots are available. If necessary, memory is allocated for second level
> - * page tables.
> - *
> - * Note that memory for second level page tables is allocated as needed, but
> - * that memory is only freed on the final close        of the device file, when the
> - * page tables are repartitioned, or the device is removed.  If there is an
> - * error or if the full range of slots is not available, any memory
> - * allocated for second level page tables remains allocated until final close,
> - * repartition, or device removal.
> - *
> - * The page table mutex must be held by the caller.
> - */
> -static int gasket_alloc_extended_entries(struct gasket_page_table *pg_tbl,
> -                                        ulong dev_addr, uint num_entries)
> -{
> -       int ret = 0;
> -       uint remain, subtable_slot_idx, len;
> -       struct gasket_page_table_entry *pte;
> -       u64 __iomem *slot;
> -
> -       remain = num_entries;
> -       subtable_slot_idx = gasket_extended_lvl1_page_idx(pg_tbl, dev_addr);
> -       pte = pg_tbl->entries + pg_tbl->num_simple_entries +
> -             gasket_extended_lvl0_page_idx(pg_tbl, dev_addr);
> -       slot = pg_tbl->base_slot + pg_tbl->num_simple_entries +
> -              gasket_extended_lvl0_page_idx(pg_tbl, dev_addr);
> -
> -       while (remain > 0) {
> -               len = min(remain,
> -                         GASKET_PAGES_PER_SUBTABLE - subtable_slot_idx);
> -
> -               if (pte->status == PTE_FREE) {
> -                       ret = gasket_alloc_extended_subtable(pg_tbl, pte, slot);
> -                       if (ret) {
> -                               dev_err(pg_tbl->device,
> -                                       "no memory for extended addr subtable\n");
> -                               return ret;
> -                       }
> -               } else {
> -                       if (!gasket_is_pte_range_free(pte->sublevel +
> -                                                     subtable_slot_idx, len))
> -                               return -EBUSY;
> -               }
> -
> -               remain -= len;
> -               subtable_slot_idx = 0;
> -               pte++;
> -               slot++;
> -       }
> -
> -       return 0;
> -}
> -
> -/*
> - * gasket_map_extended_pages - Get and map buffers to extended addresses.
> - * If there is an error, no pages are mapped.
> - */
> -static int gasket_map_extended_pages(struct gasket_page_table *pg_tbl,
> -                                    ulong host_addr, ulong dev_addr,
> -                                    uint num_pages)
> -{
> -       int ret;
> -       ulong dev_addr_end;
> -       uint slot_idx, remain, len;
> -       struct gasket_page_table_entry *pte;
> -       u64 __iomem *slot_base;
> -
> -       ret = gasket_alloc_extended_entries(pg_tbl, dev_addr, num_pages);
> -       if (ret) {
> -               dev_addr_end = dev_addr + (num_pages / PAGE_SIZE) - 1;
> -               dev_err(pg_tbl->device,
> -                       "page table slots (%lu,%lu) (@ 0x%lx) to (%lu,%lu) are not available\n",
> -                       gasket_extended_lvl0_page_idx(pg_tbl, dev_addr),
> -                       dev_addr,
> -                       gasket_extended_lvl1_page_idx(pg_tbl, dev_addr),
> -                       gasket_extended_lvl0_page_idx(pg_tbl, dev_addr_end),
> -                       gasket_extended_lvl1_page_idx(pg_tbl, dev_addr_end));
> -               return ret;
> -       }
> -
> -       remain = num_pages;
> -       slot_idx = gasket_extended_lvl1_page_idx(pg_tbl, dev_addr);
> -       pte = pg_tbl->entries + pg_tbl->num_simple_entries +
> -             gasket_extended_lvl0_page_idx(pg_tbl, dev_addr);
> -
> -       while (remain > 0) {
> -               len = min(remain, GASKET_PAGES_PER_SUBTABLE - slot_idx);
> -
> -               slot_base =
> -                       (u64 __iomem *)(page_address(pte->page) + pte->offset);
> -               ret = gasket_perform_mapping(pg_tbl, pte->sublevel + slot_idx,
> -                                            slot_base + slot_idx, host_addr,
> -                                            len, 0);
> -               if (ret) {
> -                       gasket_page_table_unmap_nolock(pg_tbl, dev_addr,
> -                                                      num_pages);
> -                       return ret;
> -               }
> -
> -               remain -= len;
> -               slot_idx = 0;
> -               pte++;
> -               host_addr += len * PAGE_SIZE;
> -       }
> -
> -       return 0;
> -}
> -
> -/*
> - * See gasket_page_table.h for general description.
> - *
> - * gasket_page_table_map calls either gasket_map_simple_pages() or
> - * gasket_map_extended_pages() to actually perform the mapping.
> - *
> - * The page table mutex is held for the entire operation.
> - */
> -int gasket_page_table_map(struct gasket_page_table *pg_tbl, ulong host_addr,
> -                         ulong dev_addr, uint num_pages)
> -{
> -       int ret;
> -
> -       if (!num_pages)
> -               return 0;
> -
> -       mutex_lock(&pg_tbl->mutex);
> -
> -       if (gasket_addr_is_simple(pg_tbl, dev_addr)) {
> -               ret = gasket_map_simple_pages(pg_tbl, host_addr, dev_addr,
> -                                             num_pages);
> -       } else {
> -               ret = gasket_map_extended_pages(pg_tbl, host_addr, dev_addr,
> -                                               num_pages);
> -       }
> -
> -       mutex_unlock(&pg_tbl->mutex);
> -       return ret;
> -}
> -EXPORT_SYMBOL(gasket_page_table_map);
> -
> -/*
> - * See gasket_page_table.h for general description.
> - *
> - * gasket_page_table_unmap takes the page table lock and calls either
> - * gasket_unmap_simple_pages() or gasket_unmap_extended_pages() to
> - * actually unmap the pages from device space.
> - *
> - * The page table mutex is held for the entire operation.
> - */
> -void gasket_page_table_unmap(struct gasket_page_table *pg_tbl, ulong dev_addr,
> -                            uint num_pages)
> -{
> -       if (!num_pages)
> -               return;
> -
> -       mutex_lock(&pg_tbl->mutex);
> -       gasket_page_table_unmap_nolock(pg_tbl, dev_addr, num_pages);
> -       mutex_unlock(&pg_tbl->mutex);
> -}
> -EXPORT_SYMBOL(gasket_page_table_unmap);
> -
> -static void gasket_page_table_unmap_all_nolock(struct gasket_page_table *pg_tbl)
> -{
> -       gasket_unmap_simple_pages(pg_tbl,
> -                                 gasket_components_to_dev_address(pg_tbl, 1, 0,
> -                                                                  0),
> -                                 pg_tbl->num_simple_entries);
> -       gasket_unmap_extended_pages(pg_tbl,
> -                                   gasket_components_to_dev_address(pg_tbl, 0,
> -                                                                    0, 0),
> -                                   pg_tbl->num_extended_entries *
> -                                   GASKET_PAGES_PER_SUBTABLE);
> -}
> -
> -/* See gasket_page_table.h for description. */
> -void gasket_page_table_unmap_all(struct gasket_page_table *pg_tbl)
> -{
> -       mutex_lock(&pg_tbl->mutex);
> -       gasket_page_table_unmap_all_nolock(pg_tbl);
> -       mutex_unlock(&pg_tbl->mutex);
> -}
> -EXPORT_SYMBOL(gasket_page_table_unmap_all);
> -
> -/* See gasket_page_table.h for description. */
> -void gasket_page_table_reset(struct gasket_page_table *pg_tbl)
> -{
> -       mutex_lock(&pg_tbl->mutex);
> -       gasket_page_table_unmap_all_nolock(pg_tbl);
> -       writeq(pg_tbl->config.total_entries, pg_tbl->extended_offset_reg);
> -       mutex_unlock(&pg_tbl->mutex);
> -}
> -
> -/* See gasket_page_table.h for description. */
> -int gasket_page_table_lookup_page(struct gasket_page_table *pg_tbl,
> -                                 ulong dev_addr, struct page **ppage,
> -                                 ulong *poffset)
> -{
> -       uint page_num;
> -       struct gasket_page_table_entry *pte;
> -
> -       mutex_lock(&pg_tbl->mutex);
> -       if (gasket_addr_is_simple(pg_tbl, dev_addr)) {
> -               page_num = gasket_simple_page_idx(pg_tbl, dev_addr);
> -               if (page_num >= pg_tbl->num_simple_entries)
> -                       goto fail;
> -
> -               pte = pg_tbl->entries + page_num;
> -               if (pte->status != PTE_INUSE)
> -                       goto fail;
> -       } else {
> -               /* Find the level 0 entry, */
> -               page_num = gasket_extended_lvl0_page_idx(pg_tbl, dev_addr);
> -               if (page_num >= pg_tbl->num_extended_entries)
> -                       goto fail;
> -
> -               pte = pg_tbl->entries + pg_tbl->num_simple_entries + page_num;
> -               if (pte->status != PTE_INUSE)
> -                       goto fail;
> -
> -               /* and its contained level 1 entry. */
> -               page_num = gasket_extended_lvl1_page_idx(pg_tbl, dev_addr);
> -               pte = pte->sublevel + page_num;
> -               if (pte->status != PTE_INUSE)
> -                       goto fail;
> -       }
> -
> -       *ppage = pte->page;
> -       *poffset = pte->offset;
> -       mutex_unlock(&pg_tbl->mutex);
> -       return 0;
> -
> -fail:
> -       *ppage = NULL;
> -       *poffset = 0;
> -       mutex_unlock(&pg_tbl->mutex);
> -       return -EINVAL;
> -}
> -
> -/* See gasket_page_table.h for description. */
> -bool gasket_page_table_are_addrs_bad(struct gasket_page_table *pg_tbl,
> -                                    ulong host_addr, ulong dev_addr,
> -                                    ulong bytes)
> -{
> -       if (host_addr & (PAGE_SIZE - 1)) {
> -               dev_err(pg_tbl->device,
> -                       "host mapping address 0x%lx must be page aligned\n",
> -                       host_addr);
> -               return true;
> -       }
> -
> -       return gasket_page_table_is_dev_addr_bad(pg_tbl, dev_addr, bytes);
> -}
> -EXPORT_SYMBOL(gasket_page_table_are_addrs_bad);
> -
> -/* See gasket_page_table.h for description. */
> -bool gasket_page_table_is_dev_addr_bad(struct gasket_page_table *pg_tbl,
> -                                      ulong dev_addr, ulong bytes)
> -{
> -       uint num_pages = bytes / PAGE_SIZE;
> -
> -       if (bytes & (PAGE_SIZE - 1)) {
> -               dev_err(pg_tbl->device,
> -                       "mapping size 0x%lX must be page aligned\n", bytes);
> -               return true;
> -       }
> -
> -       if (num_pages == 0) {
> -               dev_err(pg_tbl->device,
> -                       "requested mapping is less than one page: %lu / %lu\n",
> -                       bytes, PAGE_SIZE);
> -               return true;
> -       }
> -
> -       if (gasket_addr_is_simple(pg_tbl, dev_addr))
> -               return gasket_is_simple_dev_addr_bad(pg_tbl, dev_addr,
> -                                                    num_pages);
> -       return gasket_is_extended_dev_addr_bad(pg_tbl, dev_addr, num_pages);
> -}
> -EXPORT_SYMBOL(gasket_page_table_is_dev_addr_bad);
> -
> -/* See gasket_page_table.h for description. */
> -uint gasket_page_table_max_size(struct gasket_page_table *page_table)
> -{
> -       if (!page_table)
> -               return 0;
> -       return page_table->config.total_entries;
> -}
> -EXPORT_SYMBOL(gasket_page_table_max_size);
> -
> -/* See gasket_page_table.h for description. */
> -uint gasket_page_table_num_entries(struct gasket_page_table *pg_tbl)
> -{
> -       if (!pg_tbl)
> -               return 0;
> -       return pg_tbl->num_simple_entries + pg_tbl->num_extended_entries;
> -}
> -EXPORT_SYMBOL(gasket_page_table_num_entries);
> -
> -/* See gasket_page_table.h for description. */
> -uint gasket_page_table_num_simple_entries(struct gasket_page_table *pg_tbl)
> -{
> -       if (!pg_tbl)
> -               return 0;
> -       return pg_tbl->num_simple_entries;
> -}
> -EXPORT_SYMBOL(gasket_page_table_num_simple_entries);
> -
> -/* See gasket_page_table.h for description. */
> -uint gasket_page_table_num_active_pages(struct gasket_page_table *pg_tbl)
> -{
> -       if (!pg_tbl)
> -               return 0;
> -       return pg_tbl->num_active_pages;
> -}
> -EXPORT_SYMBOL(gasket_page_table_num_active_pages);
> -
> -/* See gasket_page_table.h */
> -int gasket_page_table_system_status(struct gasket_page_table *page_table)
> -{
> -       if (!page_table)
> -               return GASKET_STATUS_LAMED;
> -
> -       if (gasket_page_table_num_entries(page_table) == 0) {
> -               dev_dbg(page_table->device, "Page table size is 0\n");
> -               return GASKET_STATUS_LAMED;
> -       }
> -
> -       return GASKET_STATUS_ALIVE;
> -}
> -
> -/* Record the host_addr to coherent dma memory mapping. */
> -int gasket_set_user_virt(struct gasket_dev *gasket_dev, u64 size,
> -                        dma_addr_t dma_address, ulong vma)
> -{
> -       int j;
> -       struct gasket_page_table *pg_tbl;
> -
> -       unsigned int num_pages = size / PAGE_SIZE;
> -
> -       /*
> -        * TODO: for future chipset, better handling of the case where multiple
> -        * page tables are supported on a given device
> -        */
> -       pg_tbl = gasket_dev->page_table[0];
> -       if (!pg_tbl) {
> -               dev_dbg(gasket_dev->dev, "%s: invalid page table index\n",
> -                       __func__);
> -               return 0;
> -       }
> -       for (j = 0; j < num_pages; j++) {
> -               pg_tbl->coherent_pages[j].user_virt =
> -                       (u64)vma + j * PAGE_SIZE;
> -       }
> -       return 0;
> -}
> -
> -/* Allocate a block of coherent memory. */
> -int gasket_alloc_coherent_memory(struct gasket_dev *gasket_dev, u64 size,
> -                                dma_addr_t *dma_address, u64 index)
> -{
> -       dma_addr_t handle;
> -       void *mem;
> -       int j;
> -       unsigned int num_pages = DIV_ROUND_UP(size, PAGE_SIZE);
> -       const struct gasket_driver_desc *driver_desc =
> -               gasket_get_driver_desc(gasket_dev);
> -
> -       if (!gasket_dev->page_table[index])
> -               return -EFAULT;
> -
> -       if (num_pages == 0)
> -               return -EINVAL;
> -
> -       mem = dma_alloc_coherent(gasket_get_device(gasket_dev),
> -                                num_pages * PAGE_SIZE, &handle, GFP_KERNEL);
> -       if (!mem)
> -               goto nomem;
> -
> -       gasket_dev->page_table[index]->num_coherent_pages = num_pages;
> -
> -       /* allocate the physical memory block */
> -       gasket_dev->page_table[index]->coherent_pages =
> -               kcalloc(num_pages,
> -                       sizeof(*gasket_dev->page_table[index]->coherent_pages),
> -                       GFP_KERNEL);
> -       if (!gasket_dev->page_table[index]->coherent_pages)
> -               goto nomem;
> -
> -       gasket_dev->coherent_buffer.length_bytes =
> -               PAGE_SIZE * (num_pages);
> -       gasket_dev->coherent_buffer.phys_base = handle;
> -       gasket_dev->coherent_buffer.virt_base = mem;
> -
> -       *dma_address = driver_desc->coherent_buffer_description.base;
> -       for (j = 0; j < num_pages; j++) {
> -               gasket_dev->page_table[index]->coherent_pages[j].paddr =
> -                       handle + j * PAGE_SIZE;
> -               gasket_dev->page_table[index]->coherent_pages[j].kernel_virt =
> -                       (u64)mem + j * PAGE_SIZE;
> -       }
> -
> -       return 0;
> -
> -nomem:
> -       if (mem) {
> -               dma_free_coherent(gasket_get_device(gasket_dev),
> -                                 num_pages * PAGE_SIZE, mem, handle);
> -               gasket_dev->coherent_buffer.length_bytes = 0;
> -               gasket_dev->coherent_buffer.virt_base = NULL;
> -               gasket_dev->coherent_buffer.phys_base = 0;
> -       }
> -
> -       kfree(gasket_dev->page_table[index]->coherent_pages);
> -       gasket_dev->page_table[index]->coherent_pages = NULL;
> -       gasket_dev->page_table[index]->num_coherent_pages = 0;
> -       return -ENOMEM;
> -}
> -
> -/* Free a block of coherent memory. */
> -int gasket_free_coherent_memory(struct gasket_dev *gasket_dev, u64 size,
> -                               dma_addr_t dma_address, u64 index)
> -{
> -       const struct gasket_driver_desc *driver_desc;
> -
> -       if (!gasket_dev->page_table[index])
> -               return -EFAULT;
> -
> -       driver_desc = gasket_get_driver_desc(gasket_dev);
> -
> -       if (driver_desc->coherent_buffer_description.base != dma_address)
> -               return -EADDRNOTAVAIL;
> -
> -       if (gasket_dev->coherent_buffer.length_bytes) {
> -               dma_free_coherent(gasket_get_device(gasket_dev),
> -                                 gasket_dev->coherent_buffer.length_bytes,
> -                                 gasket_dev->coherent_buffer.virt_base,
> -                                 gasket_dev->coherent_buffer.phys_base);
> -               gasket_dev->coherent_buffer.length_bytes = 0;
> -               gasket_dev->coherent_buffer.virt_base = NULL;
> -               gasket_dev->coherent_buffer.phys_base = 0;
> -       }
> -
> -       kfree(gasket_dev->page_table[index]->coherent_pages);
> -       gasket_dev->page_table[index]->coherent_pages = NULL;
> -       gasket_dev->page_table[index]->num_coherent_pages = 0;
> -
> -       return 0;
> -}
> -
> -/* Release all coherent memory. */
> -void gasket_free_coherent_memory_all(struct gasket_dev *gasket_dev, u64 index)
> -{
> -       if (!gasket_dev->page_table[index])
> -               return;
> -
> -       if (gasket_dev->coherent_buffer.length_bytes) {
> -               dma_free_coherent(gasket_get_device(gasket_dev),
> -                                 gasket_dev->coherent_buffer.length_bytes,
> -                                 gasket_dev->coherent_buffer.virt_base,
> -                                 gasket_dev->coherent_buffer.phys_base);
> -               gasket_dev->coherent_buffer.length_bytes = 0;
> -               gasket_dev->coherent_buffer.virt_base = NULL;
> -               gasket_dev->coherent_buffer.phys_base = 0;
> -       }
> -}
> diff --git a/drivers/staging/gasket/gasket_page_table.h b/drivers/staging/gasket/gasket_page_table.h
> deleted file mode 100644
> index 7b01b73ea3e7..000000000000
> --- a/drivers/staging/gasket/gasket_page_table.h
> +++ /dev/null
> @@ -1,249 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -/*
> - * Gasket Page Table functionality. This file describes the address
> - * translation/paging functionality supported by the Gasket driver framework.
> - * As much as possible, internal details are hidden to simplify use -
> - * all calls are thread-safe (protected by an internal mutex) except where
> - * indicated otherwise.
> - *
> - * Copyright (C) 2018 Google, Inc.
> - */
> -
> -#ifndef __GASKET_PAGE_TABLE_H__
> -#define __GASKET_PAGE_TABLE_H__
> -
> -#include <linux/pci.h>
> -#include <linux/types.h>
> -
> -#include "gasket_constants.h"
> -#include "gasket_core.h"
> -
> -/*
> - * Structure used for managing address translation on a device. All details are
> - * internal to the implementation.
> - */
> -struct gasket_page_table;
> -
> -/*
> - * Allocate and init address translation data.
> - * @ppage_table: Pointer to Gasket page table pointer. Set by this call.
> - * @att_base_reg: [Mapped] pointer to the first entry in the device's address
> - *                translation table.
> - * @extended_offset_reg: [Mapped] pointer to the device's register containing
> - *                       the starting index of the extended translation table.
> - * @extended_bit_location: The index of the bit indicating whether an address
> - *                         is extended.
> - * @total_entries: The total number of entries in the device's address
> - *                 translation table.
> - * @device: Device structure for the underlying device. Only used for logging.
> - * @pci_dev: PCI system descriptor for the underlying device.
> - * whether the driver will supply its own.
> - *
> - * Description: Allocates and initializes data to track address translation -
> - * simple and extended page table metadata. Initially, the page table is
> - * partitioned such that all addresses are "simple" (single-level lookup).
> - * gasket_partition_page_table can be called to change this paritioning.
> - *
> - * Returns 0 on success, a negative error code otherwise.
> - */
> -int gasket_page_table_init(struct gasket_page_table **ppg_tbl,
> -                          const struct gasket_bar_data *bar_data,
> -                          const struct gasket_page_table_config *page_table_config,
> -                          struct device *device, struct pci_dev *pci_dev);
> -
> -/*
> - * Deallocate and cleanup page table data.
> - * @page_table: Gasket page table pointer.
> - *
> - * Description: The inverse of gasket_init; frees page_table and its contained
> - *              elements.
> - *
> - *             Because this call destroys the page table, it cannot be
> - *             thread-safe (mutex-protected)!
> - */
> -void gasket_page_table_cleanup(struct gasket_page_table *page_table);
> -
> -/*
> - * Sets the size of the simple page table.
> - * @page_table: Gasket page table pointer.
> - * @num_simple_entries: Desired size of the simple page table (in entries).
> - *
> - * Description: gasket_partition_page_table checks to see if the simple page
> - *              size can be changed (i.e., if there are no active extended
> - *              mappings in the new simple size range), and, if so,
> - *              sets the new simple and extended page table sizes.
> - *
> - *              Returns 0 if successful, or non-zero if the page table entries
> - *              are not free.
> - */
> -int gasket_page_table_partition(struct gasket_page_table *page_table,
> -                               uint num_simple_entries);
> -
> -/*
> - * Get and map [host] user space pages into device memory.
> - * @page_table: Gasket page table pointer.
> - * @host_addr: Starting host virtual memory address of the pages.
> - * @dev_addr: Starting device address of the pages.
> - * @num_pages: Number of [4kB] pages to map.
> - *
> - * Description: Maps the "num_pages" pages of host memory pointed to by
> - *              host_addr to the address "dev_addr" in device memory.
> - *
> - *              The caller is responsible for checking the addresses ranges.
> - *
> - *              Returns 0 if successful or a non-zero error number otherwise.
> - *              If there is an error, no pages are mapped.
> - */
> -int gasket_page_table_map(struct gasket_page_table *page_table, ulong host_addr,
> -                         ulong dev_addr, uint num_pages);
> -
> -/*
> - * Un-map host pages from device memory.
> - * @page_table: Gasket page table pointer.
> - * @dev_addr: Starting device address of the pages to unmap.
> - * @num_pages: The number of [4kB] pages to unmap.
> - *
> - * Description: The inverse of gasket_map_pages. Unmaps pages from the device.
> - */
> -void gasket_page_table_unmap(struct gasket_page_table *page_table,
> -                            ulong dev_addr, uint num_pages);
> -
> -/*
> - * Unmap ALL host pages from device memory.
> - * @page_table: Gasket page table pointer.
> - */
> -void gasket_page_table_unmap_all(struct gasket_page_table *page_table);
> -
> -/*
> - * Unmap all host pages from device memory and reset the table to fully simple
> - * addressing.
> - * @page_table: Gasket page table pointer.
> - */
> -void gasket_page_table_reset(struct gasket_page_table *page_table);
> -
> -/*
> - * Reclaims unused page table memory.
> - * @page_table: Gasket page table pointer.
> - *
> - * Description: Examines the page table and frees any currently-unused
> - *              allocations. Called internally on gasket_cleanup().
> - */
> -void gasket_page_table_garbage_collect(struct gasket_page_table *page_table);
> -
> -/*
> - * Retrieve the backing page for a device address.
> - * @page_table: Gasket page table pointer.
> - * @dev_addr: Gasket device address.
> - * @ppage: Pointer to a page pointer for the returned page.
> - * @poffset: Pointer to an unsigned long for the returned offset.
> - *
> - * Description: Interprets the address and looks up the corresponding page
> - *              in the page table and the offset in that page.  (We need an
> - *              offset because the host page may be larger than the Gasket chip
> - *              page it contains.)
> - *
> - *              Returns 0 if successful, -1 for an error.  The page pointer
> - *              and offset are returned through the pointers, if successful.
> - */
> -int gasket_page_table_lookup_page(struct gasket_page_table *page_table,
> -                                 ulong dev_addr, struct page **page,
> -                                 ulong *poffset);
> -
> -/*
> - * Checks validity for input addrs and size.
> - * @page_table: Gasket page table pointer.
> - * @host_addr: Host address to check.
> - * @dev_addr: Gasket device address.
> - * @bytes: Size of the range to check (in bytes).
> - *
> - * Description: This call performs a number of checks to verify that the ranges
> - * specified by both addresses and the size are valid for mapping pages into
> - * device memory.
> - *
> - * Returns true if the mapping is bad, false otherwise.
> - */
> -bool gasket_page_table_are_addrs_bad(struct gasket_page_table *page_table,
> -                                    ulong host_addr, ulong dev_addr,
> -                                    ulong bytes);
> -
> -/*
> - * Checks validity for input dev addr and size.
> - * @page_table: Gasket page table pointer.
> - * @dev_addr: Gasket device address.
> - * @bytes: Size of the range to check (in bytes).
> - *
> - * Description: This call performs a number of checks to verify that the range
> - * specified by the device address and the size is valid for mapping pages into
> - * device memory.
> - *
> - * Returns true if the address is bad, false otherwise.
> - */
> -bool gasket_page_table_is_dev_addr_bad(struct gasket_page_table *page_table,
> -                                      ulong dev_addr, ulong bytes);
> -
> -/*
> - * Gets maximum size for the given page table.
> - * @page_table: Gasket page table pointer.
> - */
> -uint gasket_page_table_max_size(struct gasket_page_table *page_table);
> -
> -/*
> - * Gets the total number of entries in the arg.
> - * @page_table: Gasket page table pointer.
> - */
> -uint gasket_page_table_num_entries(struct gasket_page_table *page_table);
> -
> -/*
> - * Gets the number of simple entries.
> - * @page_table: Gasket page table pointer.
> - */
> -uint gasket_page_table_num_simple_entries(struct gasket_page_table *page_table);
> -
> -/*
> - * Gets the number of actively pinned pages.
> - * @page_table: Gasket page table pointer.
> - */
> -uint gasket_page_table_num_active_pages(struct gasket_page_table *page_table);
> -
> -/*
> - * Get status of page table managed by @page_table.
> - * @page_table: Gasket page table pointer.
> - */
> -int gasket_page_table_system_status(struct gasket_page_table *page_table);
> -
> -/*
> - * Allocate a block of coherent memory.
> - * @gasket_dev: Gasket Device.
> - * @size: Size of the memory block.
> - * @dma_address: Dma address allocated by the kernel.
> - * @index: Index of the gasket_page_table within this Gasket device
> - *
> - * Description: Allocate a contiguous coherent memory block, DMA'ble
> - * by this device.
> - */
> -int gasket_alloc_coherent_memory(struct gasket_dev *gasket_dev, uint64_t size,
> -                                dma_addr_t *dma_address, uint64_t index);
> -/* Release a block of contiguous coherent memory, in use by a device. */
> -int gasket_free_coherent_memory(struct gasket_dev *gasket_dev, uint64_t size,
> -                               dma_addr_t dma_address, uint64_t index);
> -
> -/* Release all coherent memory. */
> -void gasket_free_coherent_memory_all(struct gasket_dev *gasket_dev,
> -                                    uint64_t index);
> -
> -/*
> - * Records the host_addr to coherent dma memory mapping.
> - * @gasket_dev: Gasket Device.
> - * @size: Size of the virtual address range to map.
> - * @dma_address: Dma address within the coherent memory range.
> - * @vma: Virtual address we wish to map to coherent memory.
> - *
> - * Description: For each page in the virtual address range, record the
> - * coherent page mapping.
> - *
> - * Does not perform validity checking.
> - */
> -int gasket_set_user_virt(struct gasket_dev *gasket_dev, uint64_t size,
> -                        dma_addr_t dma_address, ulong vma);
> -
> -#endif  /* __GASKET_PAGE_TABLE_H__ */
> diff --git a/drivers/staging/gasket/gasket_sysfs.c b/drivers/staging/gasket/gasket_sysfs.c
> deleted file mode 100644
> index c5658fdf4d28..000000000000
> --- a/drivers/staging/gasket/gasket_sysfs.c
> +++ /dev/null
> @@ -1,398 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0
> -/* Copyright (C) 2018 Google, Inc. */
> -#include "gasket_sysfs.h"
> -
> -#include "gasket_core.h"
> -
> -#include <linux/device.h>
> -#include <linux/printk.h>
> -
> -/*
> - * Pair of kernel device and user-specified pointer. Used in lookups in sysfs
> - * "show" functions to return user data.
> - */
> -
> -struct gasket_sysfs_mapping {
> -       /*
> -        * The device bound to this mapping. If this is NULL, then this mapping
> -        * is free.
> -        */
> -       struct device *device;
> -
> -       /* The Gasket descriptor for this device. */
> -       struct gasket_dev *gasket_dev;
> -
> -       /* This device's set of sysfs attributes/nodes. */
> -       struct gasket_sysfs_attribute *attributes;
> -
> -       /* The number of live elements in "attributes". */
> -       int attribute_count;
> -
> -       /* Protects structure from simultaneous access. */
> -       struct mutex mutex;
> -
> -       /* Tracks active users of this mapping. */
> -       struct kref refcount;
> -};
> -
> -/*
> - * Data needed to manage users of this sysfs utility.
> - * Currently has a fixed size; if space is a concern, this can be dynamically
> - * allocated.
> - */
> -/*
> - * 'Global' (file-scoped) list of mappings between devices and gasket_data
> - * pointers. This removes the requirement to have a gasket_sysfs_data
> - * handle in all files.
> - */
> -static struct gasket_sysfs_mapping dev_mappings[GASKET_SYSFS_NUM_MAPPINGS];
> -
> -/* Callback when a mapping's refcount goes to zero. */
> -static void release_entry(struct kref *ref)
> -{
> -       /* All work is done after the return from kref_put. */
> -}
> -
> -/* Look up mapping information for the given device. */
> -static struct gasket_sysfs_mapping *get_mapping(struct device *device)
> -{
> -       int i;
> -
> -       for (i = 0; i < GASKET_SYSFS_NUM_MAPPINGS; i++) {
> -               mutex_lock(&dev_mappings[i].mutex);
> -               if (dev_mappings[i].device == device) {
> -                       kref_get(&dev_mappings[i].refcount);
> -                       mutex_unlock(&dev_mappings[i].mutex);
> -                       return &dev_mappings[i];
> -               }
> -               mutex_unlock(&dev_mappings[i].mutex);
> -       }
> -
> -       dev_dbg(device, "%s: Mapping to device %s not found\n",
> -               __func__, device->kobj.name);
> -       return NULL;
> -}
> -
> -/* Put a reference to a mapping. */
> -static void put_mapping(struct gasket_sysfs_mapping *mapping)
> -{
> -       int i;
> -       int num_files_to_remove = 0;
> -       struct device_attribute *files_to_remove;
> -       struct device *device;
> -
> -       if (!mapping) {
> -               pr_debug("%s: Mapping should not be NULL\n", __func__);
> -               return;
> -       }
> -
> -       mutex_lock(&mapping->mutex);
> -       if (kref_put(&mapping->refcount, release_entry)) {
> -               dev_dbg(mapping->device, "Removing Gasket sysfs mapping\n");
> -               /*
> -                * We can't remove the sysfs nodes in the kref callback, since
> -                * device_remove_file() blocks until the node is free.
> -                * Readers/writers of sysfs nodes, though, will be blocked on
> -                * the mapping mutex, resulting in deadlock. To fix this, the
> -                * sysfs nodes are removed outside the lock.
> -                */
> -               device = mapping->device;
> -               num_files_to_remove = mapping->attribute_count;
> -               files_to_remove = kcalloc(num_files_to_remove,
> -                                         sizeof(*files_to_remove),
> -                                         GFP_KERNEL);
> -               if (files_to_remove)
> -                       for (i = 0; i < num_files_to_remove; i++)
> -                               files_to_remove[i] =
> -                                   mapping->attributes[i].attr;
> -               else
> -                       num_files_to_remove = 0;
> -
> -               kfree(mapping->attributes);
> -               mapping->attributes = NULL;
> -               mapping->attribute_count = 0;
> -               put_device(mapping->device);
> -               mapping->device = NULL;
> -               mapping->gasket_dev = NULL;
> -       }
> -       mutex_unlock(&mapping->mutex);
> -
> -       if (num_files_to_remove != 0) {
> -               for (i = 0; i < num_files_to_remove; ++i)
> -                       device_remove_file(device, &files_to_remove[i]);
> -               kfree(files_to_remove);
> -       }
> -}
> -
> -/*
> - * Put a reference to a mapping N times.
> - *
> - * In higher-level resource acquire/release function pairs, the release function
> - * will need to release a mapping 2x - once for the refcount taken in the
> - * release function itself, and once for the count taken in the acquire call.
> - */
> -static void put_mapping_n(struct gasket_sysfs_mapping *mapping, int times)
> -{
> -       int i;
> -
> -       for (i = 0; i < times; i++)
> -               put_mapping(mapping);
> -}
> -
> -void gasket_sysfs_init(void)
> -{
> -       int i;
> -
> -       for (i = 0; i < GASKET_SYSFS_NUM_MAPPINGS; i++) {
> -               dev_mappings[i].device = NULL;
> -               mutex_init(&dev_mappings[i].mutex);
> -       }
> -}
> -
> -int gasket_sysfs_create_mapping(struct device *device,
> -                               struct gasket_dev *gasket_dev)
> -{
> -       struct gasket_sysfs_mapping *mapping;
> -       int map_idx = -1;
> -
> -       /*
> -        * We need a function-level mutex to protect against the same device
> -        * being added [multiple times] simultaneously.
> -        */
> -       static DEFINE_MUTEX(function_mutex);
> -
> -       mutex_lock(&function_mutex);
> -       dev_dbg(device, "Creating sysfs entries for device\n");
> -
> -       /* Check that the device we're adding hasn't already been added. */
> -       mapping = get_mapping(device);
> -       if (mapping) {
> -               dev_err(device,
> -                       "Attempting to re-initialize sysfs mapping for device\n");
> -               put_mapping(mapping);
> -               mutex_unlock(&function_mutex);
> -               return -EBUSY;
> -       }
> -
> -       /* Find the first empty entry in the array. */
> -       for (map_idx = 0; map_idx < GASKET_SYSFS_NUM_MAPPINGS; ++map_idx) {
> -               mutex_lock(&dev_mappings[map_idx].mutex);
> -               if (!dev_mappings[map_idx].device)
> -                       /* Break with the mutex held! */
> -                       break;
> -               mutex_unlock(&dev_mappings[map_idx].mutex);
> -       }
> -
> -       if (map_idx == GASKET_SYSFS_NUM_MAPPINGS) {
> -               dev_err(device, "All mappings have been exhausted\n");
> -               mutex_unlock(&function_mutex);
> -               return -ENOMEM;
> -       }
> -
> -       dev_dbg(device, "Creating sysfs mapping for device %s\n",
> -               device->kobj.name);
> -
> -       mapping = &dev_mappings[map_idx];
> -       mapping->attributes = kcalloc(GASKET_SYSFS_MAX_NODES,
> -                                     sizeof(*mapping->attributes),
> -                                     GFP_KERNEL);
> -       if (!mapping->attributes) {
> -               dev_dbg(device, "Unable to allocate sysfs attribute array\n");
> -               mutex_unlock(&mapping->mutex);
> -               mutex_unlock(&function_mutex);
> -               return -ENOMEM;
> -       }
> -
> -       kref_init(&mapping->refcount);
> -       mapping->device = get_device(device);
> -       mapping->gasket_dev = gasket_dev;
> -       mapping->attribute_count = 0;
> -       mutex_unlock(&mapping->mutex);
> -       mutex_unlock(&function_mutex);
> -
> -       /* Don't decrement the refcount here! One open count keeps it alive! */
> -       return 0;
> -}
> -
> -int gasket_sysfs_create_entries(struct device *device,
> -                               const struct gasket_sysfs_attribute *attrs)
> -{
> -       int i;
> -       int ret;
> -       struct gasket_sysfs_mapping *mapping = get_mapping(device);
> -
> -       if (!mapping) {
> -               dev_dbg(device,
> -                       "Creating entries for device without first initializing mapping\n");
> -               return -EINVAL;
> -       }
> -
> -       mutex_lock(&mapping->mutex);
> -       for (i = 0; attrs[i].attr.attr.name; i++) {
> -               if (mapping->attribute_count == GASKET_SYSFS_MAX_NODES) {
> -                       dev_err(device,
> -                               "Maximum number of sysfs nodes reached for device\n");
> -                       mutex_unlock(&mapping->mutex);
> -                       put_mapping(mapping);
> -                       return -ENOMEM;
> -               }
> -
> -               ret = device_create_file(device, &attrs[i].attr);
> -               if (ret) {
> -                       dev_dbg(device, "Unable to create device entries\n");
> -                       mutex_unlock(&mapping->mutex);
> -                       put_mapping(mapping);
> -                       return ret;
> -               }
> -
> -               mapping->attributes[mapping->attribute_count] = attrs[i];
> -               ++mapping->attribute_count;
> -       }
> -
> -       mutex_unlock(&mapping->mutex);
> -       put_mapping(mapping);
> -       return 0;
> -}
> -EXPORT_SYMBOL(gasket_sysfs_create_entries);
> -
> -void gasket_sysfs_remove_mapping(struct device *device)
> -{
> -       struct gasket_sysfs_mapping *mapping = get_mapping(device);
> -
> -       if (!mapping) {
> -               dev_err(device,
> -                       "Attempted to remove non-existent sysfs mapping to device\n");
> -               return;
> -       }
> -
> -       put_mapping_n(mapping, 2);
> -}
> -
> -struct gasket_dev *gasket_sysfs_get_device_data(struct device *device)
> -{
> -       struct gasket_sysfs_mapping *mapping = get_mapping(device);
> -
> -       if (!mapping) {
> -               dev_err(device, "device not registered\n");
> -               return NULL;
> -       }
> -
> -       return mapping->gasket_dev;
> -}
> -EXPORT_SYMBOL(gasket_sysfs_get_device_data);
> -
> -void gasket_sysfs_put_device_data(struct device *device, struct gasket_dev *dev)
> -{
> -       struct gasket_sysfs_mapping *mapping = get_mapping(device);
> -
> -       if (!mapping)
> -               return;
> -
> -       /* See comment of put_mapping_n() for why the '2' is necessary. */
> -       put_mapping_n(mapping, 2);
> -}
> -EXPORT_SYMBOL(gasket_sysfs_put_device_data);
> -
> -struct gasket_sysfs_attribute *
> -gasket_sysfs_get_attr(struct device *device, struct device_attribute *attr)
> -{
> -       int i;
> -       int num_attrs;
> -       struct gasket_sysfs_mapping *mapping = get_mapping(device);
> -       struct gasket_sysfs_attribute *attrs = NULL;
> -
> -       if (!mapping)
> -               return NULL;
> -
> -       attrs = mapping->attributes;
> -       num_attrs = mapping->attribute_count;
> -       for (i = 0; i < num_attrs; ++i) {
> -               if (!strcmp(attrs[i].attr.attr.name, attr->attr.name))
> -                       return &attrs[i];
> -       }
> -
> -       dev_err(device, "Unable to find match for device_attribute %s\n",
> -               attr->attr.name);
> -       return NULL;
> -}
> -EXPORT_SYMBOL(gasket_sysfs_get_attr);
> -
> -void gasket_sysfs_put_attr(struct device *device,
> -                          struct gasket_sysfs_attribute *attr)
> -{
> -       int i;
> -       int num_attrs;
> -       struct gasket_sysfs_mapping *mapping = get_mapping(device);
> -       struct gasket_sysfs_attribute *attrs = NULL;
> -
> -       if (!mapping)
> -               return;
> -
> -       attrs = mapping->attributes;
> -       num_attrs = mapping->attribute_count;
> -       for (i = 0; i < num_attrs; ++i) {
> -               if (&attrs[i] == attr) {
> -                       put_mapping_n(mapping, 2);
> -                       return;
> -               }
> -       }
> -
> -       dev_err(device, "Unable to put unknown attribute: %s\n",
> -               attr->attr.attr.name);
> -       put_mapping(mapping);
> -}
> -EXPORT_SYMBOL(gasket_sysfs_put_attr);
> -
> -ssize_t gasket_sysfs_register_store(struct device *device,
> -                                   struct device_attribute *attr,
> -                                   const char *buf, size_t count)
> -{
> -       ulong parsed_value = 0;
> -       struct gasket_sysfs_mapping *mapping;
> -       struct gasket_dev *gasket_dev;
> -       struct gasket_sysfs_attribute *gasket_attr;
> -
> -       if (count < 3 || buf[0] != '0' || buf[1] != 'x') {
> -               dev_err(device,
> -                       "sysfs register write format: \"0x<hex value>\"\n");
> -               return -EINVAL;
> -       }
> -
> -       if (kstrtoul(buf, 16, &parsed_value) != 0) {
> -               dev_err(device,
> -                       "Unable to parse input as 64-bit hex value: %s\n", buf);
> -               return -EINVAL;
> -       }
> -
> -       mapping = get_mapping(device);
> -       if (!mapping) {
> -               dev_err(device, "Device driver may have been removed\n");
> -               return 0;
> -       }
> -
> -       gasket_dev = mapping->gasket_dev;
> -       if (!gasket_dev) {
> -               dev_err(device, "Device driver may have been removed\n");
> -               put_mapping(mapping);
> -               return 0;
> -       }
> -
> -       gasket_attr = gasket_sysfs_get_attr(device, attr);
> -       if (!gasket_attr) {
> -               put_mapping(mapping);
> -               return count;
> -       }
> -
> -       gasket_dev_write_64(gasket_dev, parsed_value,
> -                           gasket_attr->data.bar_address.bar,
> -                           gasket_attr->data.bar_address.offset);
> -
> -       if (gasket_attr->write_callback)
> -               gasket_attr->write_callback(gasket_dev, gasket_attr,
> -                                           parsed_value);
> -
> -       gasket_sysfs_put_attr(device, gasket_attr);
> -       put_mapping(mapping);
> -       return count;
> -}
> -EXPORT_SYMBOL(gasket_sysfs_register_store);
> diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
> deleted file mode 100644
> index d5e167dfbe76..000000000000
> --- a/drivers/staging/gasket/gasket_sysfs.h
> +++ /dev/null
> @@ -1,175 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -/*
> - * Set of common sysfs utilities.
> - *
> - * Copyright (C) 2018 Google, Inc.
> - */
> -
> -/* The functions described here are a set of utilities to allow each file in the
> - * Gasket driver framework to manage their own set of sysfs entries, instead of
> - * centralizing all that work in one file.
> - *
> - * The goal of these utilities is to allow for sysfs entries to be easily
> - * created without causing a proliferation of sysfs "show" functions. This
> - * requires O(N) string lookups during show function execution, but as reading
> - * sysfs entries is rarely performance-critical, this is likely acceptible.
> - */
> -#ifndef __GASKET_SYSFS_H__
> -#define __GASKET_SYSFS_H__
> -
> -#include "gasket_constants.h"
> -#include "gasket_core.h"
> -#include <linux/device.h>
> -#include <linux/stringify.h>
> -#include <linux/sysfs.h>
> -
> -/* The maximum number of mappings/devices a driver needs to support. */
> -#define GASKET_SYSFS_NUM_MAPPINGS (GASKET_FRAMEWORK_DESC_MAX * GASKET_DEV_MAX)
> -
> -/* The maximum number of sysfs nodes in a directory.
> - */
> -#define GASKET_SYSFS_MAX_NODES 196
> -
> -/*
> - * Terminator struct for a gasket_sysfs_attr array. Must be at the end of
> - * all gasket_sysfs_attribute arrays.
> - */
> -#define GASKET_END_OF_ATTR_ARRAY                                               \
> -       {                                                                      \
> -               .attr = __ATTR_NULL,                            \
> -               .data.attr_type = 0,                            \
> -       }
> -
> -/*
> - * Pairing of sysfs attribute and user data.
> - * Used in lookups in sysfs "show" functions to return attribute metadata.
> - */
> -struct gasket_sysfs_attribute {
> -       /* The underlying sysfs device attribute associated with this data. */
> -       struct device_attribute attr;
> -
> -       /* User-specified data to associate with the attribute. */
> -       union {
> -               struct bar_address_ {
> -                       ulong bar;
> -                       ulong offset;
> -               } bar_address;
> -               uint attr_type;
> -       } data;
> -
> -       /*
> -        * Function pointer to a callback to be invoked when this attribute is
> -        * written (if so configured). The arguments are to the Gasket device
> -        * pointer, the enclosing gasket_attr structure, and the value written.
> -        * The callback should perform any logging necessary, as errors cannot
> -        * be returned from the callback.
> -        */
> -       void (*write_callback)(struct gasket_dev *dev,
> -                              struct gasket_sysfs_attribute *attr,
> -                              ulong value);
> -};
> -
> -#define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
> -       {                                                                      \
> -               .attr = __ATTR(_name, 0444, _show_function, NULL),          \
> -               .data.attr_type = _attr_type                                   \
> -       }
> -
> -/* Initializes the Gasket sysfs subsystem.
> - *
> - * Description: Performs one-time initialization. Must be called before usage
> - * at [Gasket] module load time.
> - */
> -void gasket_sysfs_init(void);
> -
> -/*
> - * Create an entry in mapping_data between a device and a Gasket device.
> - * @device: Device struct to map to.
> - * @gasket_dev: The dev struct associated with the driver controlling @device.
> - *
> - * Description: This function maps a gasket_dev* to a device*. This mapping can
> - * be used in sysfs_show functions to get a handle to the gasket_dev struct
> - * controlling the device node.
> - *
> - * If this function is not called before gasket_sysfs_create_entries, a warning
> - * will be logged.
> - */
> -int gasket_sysfs_create_mapping(struct device *device,
> -                               struct gasket_dev *gasket_dev);
> -
> -/*
> - * Creates bulk entries in sysfs.
> - * @device: Kernel device structure.
> - * @attrs: List of attributes/sysfs entries to create.
> - *
> - * Description: Creates each sysfs entry described in "attrs". Can be called
> - * multiple times for a given @device. If the gasket_dev specified in
> - * gasket_sysfs_create_mapping had a legacy device, the entries will be created
> - * for it, as well.
> - */
> -int gasket_sysfs_create_entries(struct device *device,
> -                               const struct gasket_sysfs_attribute *attrs);
> -
> -/*
> - * Removes a device mapping from the global table.
> - * @device: Device to unmap.
> - *
> - * Description: Removes the device->Gasket device mapping from the internal
> - * table.
> - */
> -void gasket_sysfs_remove_mapping(struct device *device);
> -
> -/*
> - * User data lookup based on kernel device structure.
> - * @device: Kernel device structure.
> - *
> - * Description: Returns the user data associated with "device" in a prior call
> - * to gasket_sysfs_create_entries. Returns NULL if no mapping can be found.
> - * Upon success, this call take a reference to internal sysfs data that must be
> - * released with gasket_sysfs_put_device_data. While this reference is held, the
> - * underlying device sysfs information/structure will remain valid/will not be
> - * deleted.
> - */
> -struct gasket_dev *gasket_sysfs_get_device_data(struct device *device);
> -
> -/*
> - * Releases a references to internal data.
> - * @device: Kernel device structure.
> - * @dev: Gasket device descriptor (returned by gasket_sysfs_get_device_data).
> - */
> -void gasket_sysfs_put_device_data(struct device *device,
> -                                 struct gasket_dev *gasket_dev);
> -
> -/*
> - * Gasket-specific attribute lookup.
> - * @device: Kernel device structure.
> - * @attr: Device attribute to look up.
> - *
> - * Returns the Gasket sysfs attribute associated with the kernel device
> - * attribute and device structure itself. Upon success, this call will take a
> - * reference to internal sysfs data that must be released with a call to
> - * gasket_sysfs_put_attr. While this reference is held, the underlying device
> - * sysfs information/structure will remain valid/will not be deleted.
> - */
> -struct gasket_sysfs_attribute *
> -gasket_sysfs_get_attr(struct device *device, struct device_attribute *attr);
> -
> -/*
> - * Releases a references to internal data.
> - * @device: Kernel device structure.
> - * @attr: Gasket sysfs attribute descriptor (returned by
> - *        gasket_sysfs_get_attr).
> - */
> -void gasket_sysfs_put_attr(struct device *device,
> -                          struct gasket_sysfs_attribute *attr);
> -
> -/*
> - * Write to a register sysfs node.
> - * @buf: NULL-terminated data being written.
> - * @count: number of bytes in the "buf" argument.
> - */
> -ssize_t gasket_sysfs_register_store(struct device *device,
> -                                   struct device_attribute *attr,
> -                                   const char *buf, size_t count);
> -
> -#endif /* __GASKET_SYSFS_H__ */
> --
> 2.30.2
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA384150A70
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Feb 2020 17:00:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4D546204C3;
	Mon,  3 Feb 2020 16:00:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zDcu02wyWWRq; Mon,  3 Feb 2020 16:00:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E8EEC204DB;
	Mon,  3 Feb 2020 16:00:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 510B61BF380
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 16:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 42B11204D5
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 16:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Bk1QMs72YnE for <devel@linuxdriverproject.org>;
 Mon,  3 Feb 2020 16:00:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 52ACA204C3
 for <devel@driverdev.osuosl.org>; Mon,  3 Feb 2020 16:00:22 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id fa20so6553724pjb.1
 for <devel@driverdev.osuosl.org>; Mon, 03 Feb 2020 08:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=9O5VlB5D+5Lczks8n/kKkxHFLHAAIx2nx2qd2AYB/sE=;
 b=xSDnmR3IRbhXoMxUdJ7Uunngar7tIakBwMAWIuYuv7uiyLs4jCTHLxEFY4Yv8aUmFJ
 3uy41atFBp4VQd71dSWquiTLgFPKzlSpvUvH/UtOxp5mRJe3Zlp/YU3RS+Tyhl3hCiYy
 qWd8R0aQ1Q/flhBgPARUC1UfAGMuQhqaALpb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=9O5VlB5D+5Lczks8n/kKkxHFLHAAIx2nx2qd2AYB/sE=;
 b=Gp+9OaVOFLegzH2VMii2/W1w+3hW/a1xgbtL+2wO+1UgDffv2U0IW4Oc9XfFuiMQyV
 t7DUxsw8QQXHU1CXrpsR63AncC5xg5/JyGbyS9/ECzpHuQsllX50KFeuNJzXV55qFzIg
 LXz3tYd6iXiwqpKv+5Y+zZVWBNKYxfHtw9F/uyGDH8nXKrSWX+I0ILVeBqeLjnfPYw/w
 eDkwtuA04QJ2UeQ0Gglyu949aBWBGP/yzxJ6sNDI0pw7ViByYNW+og/tIxhgbafDGBHN
 hDOfR6fDVhW6f4JLhWdyM+kua9kAWNd5CzKsJQ0bVX26BrNvUhIUxYvG8V3quC68DmRW
 JV8w==
X-Gm-Message-State: APjAAAWF5IdraQJi/HxrBWDZVfx1BhAcvH18tZWp+BOpRfZLoqzorkPU
 rf5mp4FNSpCyfB0PLhpYqXUshA==
X-Google-Smtp-Source: APXvYqxlfPdRbcLrgL3RghS3igJj1U++yudcB+IRsXo5oAPebPpuL5X2OgGSW6p3TJuBZd/Yc+LCtQ==
X-Received: by 2002:a17:902:b587:: with SMTP id
 a7mr24594775pls.82.1580745621496; 
 Mon, 03 Feb 2020 08:00:21 -0800 (PST)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id hg11sm21412641pjb.14.2020.02.03.08.00.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 08:00:20 -0800 (PST)
Date: Mon, 3 Feb 2020 11:00:19 -0500
From: Joel Fernandes <joel@joelfernandes.org>
To: Alistair Delva <adelva@google.com>
Subject: Re: [PATCH] staging: android: Delete the 'vsoc' driver
Message-ID: <20200203160019.GA85781@google.com>
References: <20200203042254.80360-1-adelva@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203042254.80360-1-adelva@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Greg Hartman <ghartman@google.com>, linux-kernel@vger.kernel.org,
 cloud-android-devs@google.com, kernel-team@android.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 02, 2020 at 08:22:54PM -0800, Alistair Delva wrote:
> The 'vsoc' driver was required for an early iteration of the Android
> 'cuttlefish' virtual platform, but this platform has been wholly
> converted to use virtio drivers instead. Delete this old driver.
> =

> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Joel Fernandes <joel@joelfernandes.org>

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>

thanks,

 - Joel

> Cc: Greg Hartman <ghartman@google.com>
> Cc: kernel-team@android.com
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: Alistair Delva <adelva@google.com>
> ---
>  drivers/staging/android/Kconfig         |    8 -
>  drivers/staging/android/Makefile        |    1 -
>  drivers/staging/android/TODO            |    9 -
>  drivers/staging/android/uapi/vsoc_shm.h |  295 ------
>  drivers/staging/android/vsoc.c          | 1149 -----------------------
>  5 files changed, 1462 deletions(-)
>  delete mode 100644 drivers/staging/android/uapi/vsoc_shm.h
>  delete mode 100644 drivers/staging/android/vsoc.c
> =

> diff --git a/drivers/staging/android/Kconfig b/drivers/staging/android/Kc=
onfig
> index d6d605d5cbde..8d8fd5c29349 100644
> --- a/drivers/staging/android/Kconfig
> +++ b/drivers/staging/android/Kconfig
> @@ -14,14 +14,6 @@ config ASHMEM
>  	  It is, in theory, a good memory allocator for low-memory devices,
>  	  because it can discard shared memory units when under memory pressure.
>  =

> -config ANDROID_VSOC
> -	tristate "Android Virtual SoC support"
> -	depends on PCI_MSI
> -	help
> -	  This option adds support for the Virtual SoC driver needed to boot
> -	  a 'cuttlefish' Android image inside QEmu. The driver interacts with
> -	  a QEmu ivshmem device. If built as a module, it will be called vsoc.
> -
>  source "drivers/staging/android/ion/Kconfig"
>  =

>  endif # if ANDROID
> diff --git a/drivers/staging/android/Makefile b/drivers/staging/android/M=
akefile
> index 14bd9c6ce10d..3b66cd0b0ec5 100644
> --- a/drivers/staging/android/Makefile
> +++ b/drivers/staging/android/Makefile
> @@ -4,4 +4,3 @@ ccflags-y +=3D -I$(src)			# needed for trace events
>  obj-y					+=3D ion/
>  =

>  obj-$(CONFIG_ASHMEM)			+=3D ashmem.o
> -obj-$(CONFIG_ANDROID_VSOC)		+=3D vsoc.o
> diff --git a/drivers/staging/android/TODO b/drivers/staging/android/TODO
> index 767dd98fd92d..80eccfaf6db5 100644
> --- a/drivers/staging/android/TODO
> +++ b/drivers/staging/android/TODO
> @@ -9,14 +9,5 @@ ion/
>   - Split /dev/ion up into multiple nodes (e.g. /dev/ion/heap0)
>   - Better test framework (integration with VGEM was suggested)
>  =

> -vsoc.c, uapi/vsoc_shm.h
> - - The current driver uses the same wait queue for all of the futexes in=
 a
> -   region. This will cause false wakeups in regions with a large number =
of
> -   waiting threads. We should eventually use multiple queues and select =
the
> -   queue based on the region.
> - - Add debugfs support for examining the permissions of regions.
> - - Remove VSOC_WAIT_FOR_INCOMING_INTERRUPT ioctl. This functionality has=
 been
> -   superseded by the futex and is there for legacy reasons.
> -
>  Please send patches to Greg Kroah-Hartman <greg@kroah.com> and Cc:
>  Arve Hj=F8nnev=E5g <arve@android.com> and Riley Andrews <riandrews@andro=
id.com>
> diff --git a/drivers/staging/android/uapi/vsoc_shm.h b/drivers/staging/an=
droid/uapi/vsoc_shm.h
> deleted file mode 100644
> index 6291fb24efb2..000000000000
> --- a/drivers/staging/android/uapi/vsoc_shm.h
> +++ /dev/null
> @@ -1,295 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -/*
> - * Copyright (C) 2017 Google, Inc.
> - *
> - */
> -
> -#ifndef _UAPI_LINUX_VSOC_SHM_H
> -#define _UAPI_LINUX_VSOC_SHM_H
> -
> -#include <linux/types.h>
> -
> -/**
> - * A permission is a token that permits a receiver to read and/or write =
an area
> - * of memory within a Vsoc region.
> - *
> - * An fd_scoped permission grants both read and write access, and can be
> - * attached to a file description (see open(2)).
> - * Ownership of the area can then be shared by passing a file descriptor
> - * among processes.
> - *
> - * begin_offset and end_offset define the area of memory that is control=
led by
> - * the permission. owner_offset points to a word, also in shared memory,=
 that
> - * controls ownership of the area.
> - *
> - * ownership of the region expires when the associated file description =
is
> - * released.
> - *
> - * At most one permission can be attached to each file description.
> - *
> - * This is useful when implementing HALs like gralloc that scope and pass
> - * ownership of shared resources via file descriptors.
> - *
> - * The caller is responsibe for doing any fencing.
> - *
> - * The calling process will normally identify a currently free area of
> - * memory. It will construct a proposed fd_scoped_permission_arg structu=
re:
> - *
> - *   begin_offset and end_offset describe the area being claimed
> - *
> - *   owner_offset points to the location in shared memory that indicates=
 the
> - *   owner of the area.
> - *
> - *   owned_value is the value that will be stored in owner_offset iff the
> - *   permission can be granted. It must be different than VSOC_REGION_FR=
EE.
> - *
> - * Two fd_scoped_permission structures are compatible if they vary only =
by
> - * their owned_value fields.
> - *
> - * The driver ensures that, for any group of simultaneous callers propos=
ing
> - * compatible fd_scoped_permissions, it will accept exactly one of the
> - * propopsals. The other callers will get a failure with errno of EAGAIN.
> - *
> - * A process receiving a file descriptor can identify the region being
> - * granted using the VSOC_GET_FD_SCOPED_PERMISSION ioctl.
> - */
> -struct fd_scoped_permission {
> -	__u32 begin_offset;
> -	__u32 end_offset;
> -	__u32 owner_offset;
> -	__u32 owned_value;
> -};
> -
> -/*
> - * This value represents a free area of memory. The driver expects to se=
e this
> - * value at owner_offset when creating a permission otherwise it will no=
t do it,
> - * and will write this value back once the permission is no longer neede=
d.
> - */
> -#define VSOC_REGION_FREE ((__u32)0)
> -
> -/**
> - * ioctl argument for VSOC_CREATE_FD_SCOPE_PERMISSION
> - */
> -struct fd_scoped_permission_arg {
> -	struct fd_scoped_permission perm;
> -	__s32 managed_region_fd;
> -};
> -
> -#define VSOC_NODE_FREE ((__u32)0)
> -
> -/*
> - * Describes a signal table in shared memory. Each non-zero entry in the
> - * table indicates that the receiver should signal the futex at the given
> - * offset. Offsets are relative to the region, not the shared memory win=
dow.
> - *
> - * interrupt_signalled_offset is used to reliably signal interrupts acro=
ss the
> - * vmm boundary. There are two roles: transmitter and receiver. For exam=
ple,
> - * in the host_to_guest_signal_table the host is the transmitter and the
> - * guest is the receiver. The protocol is as follows:
> - *
> - * 1. The transmitter should convert the offset of the futex to an offset
> - *    in the signal table [0, (1 << num_nodes_lg2))
> - *    The transmitter can choose any appropriate hashing algorithm, incl=
uding
> - *    hash =3D futex_offset & ((1 << num_nodes_lg2) - 1)
> - *
> - * 3. The transmitter should atomically compare and swap futex_offset wi=
th 0
> - *    at hash. There are 3 possible outcomes
> - *      a. The swap fails because the futex_offset is already in the tab=
le.
> - *         The transmitter should stop.
> - *      b. Some other offset is in the table. This is a hash collision. =
The
> - *         transmitter should move to another table slot and try again. =
One
> - *         possible algorithm:
> - *         hash =3D (hash + 1) & ((1 << num_nodes_lg2) - 1)
> - *      c. The swap worked. Continue below.
> - *
> - * 3. The transmitter atomically swaps 1 with the value at the
> - *    interrupt_signalled_offset. There are two outcomes:
> - *      a. The prior value was 1. In this case an interrupt has already =
been
> - *         posted. The transmitter is done.
> - *      b. The prior value was 0, indicating that the receiver may be sl=
eeping.
> - *         The transmitter will issue an interrupt.
> - *
> - * 4. On waking the receiver immediately exchanges a 0 with the
> - *    interrupt_signalled_offset. If it receives a 0 then this a spurious
> - *    interrupt. That may occasionally happen in the current protocol, b=
ut
> - *    should be rare.
> - *
> - * 5. The receiver scans the signal table by atomicaly exchanging 0 at e=
ach
> - *    location. If a non-zero offset is returned from the exchange the
> - *    receiver wakes all sleepers at the given offset:
> - *      futex((int*)(region_base + old_value), FUTEX_WAKE, MAX_INT);
> - *
> - * 6. The receiver thread then does a conditional wait, waking immediate=
ly
> - *    if the value at interrupt_signalled_offset is non-zero. This catch=
es cases
> - *    here additional  signals were posted while the table was being sca=
nned.
> - *    On the guest the wait is handled via the VSOC_WAIT_FOR_INCOMING_IN=
TERRUPT
> - *    ioctl.
> - */
> -struct vsoc_signal_table_layout {
> -	/* log_2(Number of signal table entries) */
> -	__u32 num_nodes_lg2;
> -	/*
> -	 * Offset to the first signal table entry relative to the start of the
> -	 * region
> -	 */
> -	__u32 futex_uaddr_table_offset;
> -	/*
> -	 * Offset to an atomic_t / atomic uint32_t. A non-zero value indicates
> -	 * that one or more offsets are currently posted in the table.
> -	 * semi-unique access to an entry in the table
> -	 */
> -	__u32 interrupt_signalled_offset;
> -};
> -
> -#define VSOC_REGION_WHOLE ((__s32)0)
> -#define VSOC_DEVICE_NAME_SZ 16
> -
> -/**
> - * Each HAL would (usually) talk to a single device region
> - * Mulitple entities care about these regions:
> - * - The ivshmem_server will populate the regions in shared memory
> - * - The guest kernel will read the region, create minor device nodes, a=
nd
> - *   allow interested parties to register for FUTEX_WAKE events in the r=
egion
> - * - HALs will access via the minor device nodes published by the guest =
kernel
> - * - Host side processes will access the region via the ivshmem_server:
> - *   1. Pass name to ivshmem_server at a UNIX socket
> - *   2. ivshmemserver will reply with 2 fds:
> - *     - host->guest doorbell fd
> - *     - guest->host doorbell fd
> - *     - fd for the shared memory region
> - *     - region offset
> - *   3. Start a futex receiver thread on the doorbell fd pointed at the
> - *      signal_nodes
> - */
> -struct vsoc_device_region {
> -	__u16 current_version;
> -	__u16 min_compatible_version;
> -	__u32 region_begin_offset;
> -	__u32 region_end_offset;
> -	__u32 offset_of_region_data;
> -	struct vsoc_signal_table_layout guest_to_host_signal_table;
> -	struct vsoc_signal_table_layout host_to_guest_signal_table;
> -	/* Name of the device. Must always be terminated with a '\0', so
> -	 * the longest supported device name is 15 characters.
> -	 */
> -	char device_name[VSOC_DEVICE_NAME_SZ];
> -	/* There are two ways that permissions to access regions are handled:
> -	 *   - When subdivided_by is VSOC_REGION_WHOLE, any process that can
> -	 *     open the device node for the region gains complete access to it.
> -	 *   - When subdivided is set processes that open the region cannot
> -	 *     access it. Access to a sub-region must be established by invoking
> -	 *     the VSOC_CREATE_FD_SCOPE_PERMISSION ioctl on the region
> -	 *     referenced in subdivided_by, providing a fileinstance
> -	 *     (represented by a fd) opened on this region.
> -	 */
> -	__u32 managed_by;
> -};
> -
> -/*
> - * The vsoc layout descriptor.
> - * The first 4K should be reserved for the shm header and region descrip=
tors.
> - * The regions should be page aligned.
> - */
> -
> -struct vsoc_shm_layout_descriptor {
> -	__u16 major_version;
> -	__u16 minor_version;
> -
> -	/* size of the shm. This may be redundant but nice to have */
> -	__u32 size;
> -
> -	/* number of shared memory regions */
> -	__u32 region_count;
> -
> -	/* The offset to the start of region descriptors */
> -	__u32 vsoc_region_desc_offset;
> -};
> -
> -/*
> - * This specifies the current version that should be stored in
> - * vsoc_shm_layout_descriptor.major_version and
> - * vsoc_shm_layout_descriptor.minor_version.
> - * It should be updated only if the vsoc_device_region and
> - * vsoc_shm_layout_descriptor structures have changed.
> - * Versioning within each region is transferred
> - * via the min_compatible_version and current_version fields in
> - * vsoc_device_region. The driver does not consult these fields: they ar=
e left
> - * for the HALs and host processes and will change independently of the =
layout
> - * version.
> - */
> -#define CURRENT_VSOC_LAYOUT_MAJOR_VERSION 2
> -#define CURRENT_VSOC_LAYOUT_MINOR_VERSION 0
> -
> -#define VSOC_CREATE_FD_SCOPED_PERMISSION \
> -	_IOW(0xF5, 0, struct fd_scoped_permission)
> -#define VSOC_GET_FD_SCOPED_PERMISSION _IOR(0xF5, 1, struct fd_scoped_per=
mission)
> -
> -/*
> - * This is used to signal the host to scan the guest_to_host_signal_table
> - * for new futexes to wake. This sends an interrupt if one is not already
> - * in flight.
> - */
> -#define VSOC_MAYBE_SEND_INTERRUPT_TO_HOST _IO(0xF5, 2)
> -
> -/*
> - * When this returns the guest will scan host_to_guest_signal_table to
> - * check for new futexes to wake.
> - */
> -/* TODO(ghartman): Consider moving this to the bottom half */
> -#define VSOC_WAIT_FOR_INCOMING_INTERRUPT _IO(0xF5, 3)
> -
> -/*
> - * Guest HALs will use this to retrieve the region description after
> - * opening their device node.
> - */
> -#define VSOC_DESCRIBE_REGION _IOR(0xF5, 4, struct vsoc_device_region)
> -
> -/*
> - * Wake any threads that may be waiting for a host interrupt on this reg=
ion.
> - * This is mostly used during shutdown.
> - */
> -#define VSOC_SELF_INTERRUPT _IO(0xF5, 5)
> -
> -/*
> - * This is used to signal the host to scan the guest_to_host_signal_table
> - * for new futexes to wake. This sends an interrupt unconditionally.
> - */
> -#define VSOC_SEND_INTERRUPT_TO_HOST _IO(0xF5, 6)
> -
> -enum wait_types {
> -	VSOC_WAIT_UNDEFINED =3D 0,
> -	VSOC_WAIT_IF_EQUAL =3D 1,
> -	VSOC_WAIT_IF_EQUAL_TIMEOUT =3D 2
> -};
> -
> -/*
> - * Wait for a condition to be true
> - *
> - * Note, this is sized and aligned so the 32 bit and 64 bit layouts are
> - * identical.
> - */
> -struct vsoc_cond_wait {
> -	/* Input: Offset of the 32 bit word to check */
> -	__u32 offset;
> -	/* Input: Value that will be compared with the offset */
> -	__u32 value;
> -	/* Monotonic time to wake at in seconds */
> -	__u64 wake_time_sec;
> -	/* Input: Monotonic time to wait in nanoseconds */
> -	__u32 wake_time_nsec;
> -	/* Input: Type of wait */
> -	__u32 wait_type;
> -	/* Output: Number of times the thread woke before returning. */
> -	__u32 wakes;
> -	/* Ensure that we're 8-byte aligned and 8 byte length for 32/64 bit
> -	 * compatibility.
> -	 */
> -	__u32 reserved_1;
> -};
> -
> -#define VSOC_COND_WAIT _IOWR(0xF5, 7, struct vsoc_cond_wait)
> -
> -/* Wake any local threads waiting at the offset given in arg */
> -#define VSOC_COND_WAKE _IO(0xF5, 8)
> -
> -#endif /* _UAPI_LINUX_VSOC_SHM_H */
> diff --git a/drivers/staging/android/vsoc.c b/drivers/staging/android/vso=
c.c
> deleted file mode 100644
> index 1240bb0317d9..000000000000
> --- a/drivers/staging/android/vsoc.c
> +++ /dev/null
> @@ -1,1149 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0
> -/*
> - * drivers/android/staging/vsoc.c
> - *
> - * Android Virtual System on a Chip (VSoC) driver
> - *
> - * Copyright (C) 2017 Google, Inc.
> - *
> - * Author: ghartman@google.com
> - *
> - * Based on drivers/char/kvm_ivshmem.c - driver for KVM Inter-VM shared =
memory
> - *         Copyright 2009 Cam Macdonell <cam@cs.ualberta.ca>
> - *
> - * Based on cirrusfb.c and 8139cp.c:
> - *   Copyright 1999-2001 Jeff Garzik
> - *   Copyright 2001-2004 Jeff Garzik
> - */
> -
> -#include <linux/dma-mapping.h>
> -#include <linux/freezer.h>
> -#include <linux/futex.h>
> -#include <linux/init.h>
> -#include <linux/kernel.h>
> -#include <linux/module.h>
> -#include <linux/mutex.h>
> -#include <linux/pci.h>
> -#include <linux/proc_fs.h>
> -#include <linux/sched.h>
> -#include <linux/syscalls.h>
> -#include <linux/uaccess.h>
> -#include <linux/interrupt.h>
> -#include <linux/cdev.h>
> -#include <linux/file.h>
> -#include "uapi/vsoc_shm.h"
> -
> -#define VSOC_DEV_NAME "vsoc"
> -
> -/*
> - * Description of the ivshmem-doorbell PCI device used by QEmu. These
> - * constants follow docs/specs/ivshmem-spec.txt, which can be found in
> - * the QEmu repository. This was last reconciled with the version that
> - * came out with 2.8
> - */
> -
> -/*
> - * These constants are determined KVM Inter-VM shared memory device
> - * register offsets
> - */
> -enum {
> -	INTR_MASK =3D 0x00,	/* Interrupt Mask */
> -	INTR_STATUS =3D 0x04,	/* Interrupt Status */
> -	IV_POSITION =3D 0x08,	/* VM ID */
> -	DOORBELL =3D 0x0c,	/* Doorbell */
> -};
> -
> -static const int REGISTER_BAR;  /* Equal to 0 */
> -static const int MAX_REGISTER_BAR_LEN =3D 0x100;
> -/*
> - * The MSI-x BAR is not used directly.
> - *
> - * static const int MSI_X_BAR =3D 1;
> - */
> -static const int SHARED_MEMORY_BAR =3D 2;
> -
> -struct vsoc_region_data {
> -	char name[VSOC_DEVICE_NAME_SZ + 1];
> -	wait_queue_head_t interrupt_wait_queue;
> -	/* TODO(b/73664181): Use multiple futex wait queues */
> -	wait_queue_head_t futex_wait_queue;
> -	/* Flag indicating that an interrupt has been signalled by the host. */
> -	atomic_t *incoming_signalled;
> -	/* Flag indicating the guest has signalled the host. */
> -	atomic_t *outgoing_signalled;
> -	bool irq_requested;
> -	bool device_created;
> -};
> -
> -struct vsoc_device {
> -	/* Kernel virtual address of REGISTER_BAR. */
> -	void __iomem *regs;
> -	/* Physical address of SHARED_MEMORY_BAR. */
> -	phys_addr_t shm_phys_start;
> -	/* Kernel virtual address of SHARED_MEMORY_BAR. */
> -	void __iomem *kernel_mapped_shm;
> -	/* Size of the entire shared memory window in bytes. */
> -	size_t shm_size;
> -	/*
> -	 * Pointer to the virtual address of the shared memory layout structure.
> -	 * This is probably identical to kernel_mapped_shm, but saving this
> -	 * here saves a lot of annoying casts.
> -	 */
> -	struct vsoc_shm_layout_descriptor *layout;
> -	/*
> -	 * Points to a table of region descriptors in the kernel's virtual
> -	 * address space. Calculated from
> -	 * vsoc_shm_layout_descriptor.vsoc_region_desc_offset
> -	 */
> -	struct vsoc_device_region *regions;
> -	/* Head of a list of permissions that have been granted. */
> -	struct list_head permissions;
> -	struct pci_dev *dev;
> -	/* Per-region (and therefore per-interrupt) information. */
> -	struct vsoc_region_data *regions_data;
> -	/*
> -	 * Table of msi-x entries. This has to be separated from struct
> -	 * vsoc_region_data because the kernel deals with them as an array.
> -	 */
> -	struct msix_entry *msix_entries;
> -	/* Mutex that protectes the permission list */
> -	struct mutex mtx;
> -	/* Major number assigned by the kernel */
> -	int major;
> -	/* Character device assigned by the kernel */
> -	struct cdev cdev;
> -	/* Device class assigned by the kernel */
> -	struct class *class;
> -	/*
> -	 * Flags that indicate what we've initialized. These are used to do an
> -	 * orderly cleanup of the device.
> -	 */
> -	bool enabled_device;
> -	bool requested_regions;
> -	bool cdev_added;
> -	bool class_added;
> -	bool msix_enabled;
> -};
> -
> -static struct vsoc_device vsoc_dev;
> -
> -/*
> - * TODO(ghartman): Add a /sys filesystem entry that summarizes the permi=
ssions.
> - */
> -
> -struct fd_scoped_permission_node {
> -	struct fd_scoped_permission permission;
> -	struct list_head list;
> -};
> -
> -struct vsoc_private_data {
> -	struct fd_scoped_permission_node *fd_scoped_permission_node;
> -};
> -
> -static long vsoc_ioctl(struct file *, unsigned int, unsigned long);
> -static int vsoc_mmap(struct file *, struct vm_area_struct *);
> -static int vsoc_open(struct inode *, struct file *);
> -static int vsoc_release(struct inode *, struct file *);
> -static ssize_t vsoc_read(struct file *, char __user *, size_t, loff_t *);
> -static ssize_t vsoc_write(struct file *, const char __user *, size_t, lo=
ff_t *);
> -static loff_t vsoc_lseek(struct file *filp, loff_t offset, int origin);
> -static int
> -do_create_fd_scoped_permission(struct vsoc_device_region *region_p,
> -			       struct fd_scoped_permission_node *np,
> -			       struct fd_scoped_permission_arg __user *arg);
> -static void
> -do_destroy_fd_scoped_permission(struct vsoc_device_region *owner_region_=
p,
> -				struct fd_scoped_permission *perm);
> -static long do_vsoc_describe_region(struct file *,
> -				    struct vsoc_device_region __user *);
> -static ssize_t vsoc_get_area(struct file *filp, __u32 *perm_off);
> -
> -/**
> - * Validate arguments on entry points to the driver.
> - */
> -inline int vsoc_validate_inode(struct inode *inode)
> -{
> -	if (iminor(inode) >=3D vsoc_dev.layout->region_count) {
> -		dev_err(&vsoc_dev.dev->dev,
> -			"describe_region: invalid region %d\n", iminor(inode));
> -		return -ENODEV;
> -	}
> -	return 0;
> -}
> -
> -inline int vsoc_validate_filep(struct file *filp)
> -{
> -	int ret =3D vsoc_validate_inode(file_inode(filp));
> -
> -	if (ret)
> -		return ret;
> -	if (!filp->private_data) {
> -		dev_err(&vsoc_dev.dev->dev,
> -			"No private data on fd, region %d\n",
> -			iminor(file_inode(filp)));
> -		return -EBADFD;
> -	}
> -	return 0;
> -}
> -
> -/* Converts from shared memory offset to virtual address */
> -static inline void *shm_off_to_virtual_addr(__u32 offset)
> -{
> -	return (void __force *)vsoc_dev.kernel_mapped_shm + offset;
> -}
> -
> -/* Converts from shared memory offset to physical address */
> -static inline phys_addr_t shm_off_to_phys_addr(__u32 offset)
> -{
> -	return vsoc_dev.shm_phys_start + offset;
> -}
> -
> -/**
> - * Convenience functions to obtain the region from the inode or file.
> - * Dangerous to call before validating the inode/file.
> - */
> -static
> -inline struct vsoc_device_region *vsoc_region_from_inode(struct inode *i=
node)
> -{
> -	return &vsoc_dev.regions[iminor(inode)];
> -}
> -
> -static
> -inline struct vsoc_device_region *vsoc_region_from_filep(struct file *in=
ode)
> -{
> -	return vsoc_region_from_inode(file_inode(inode));
> -}
> -
> -static inline uint32_t vsoc_device_region_size(struct vsoc_device_region=
 *r)
> -{
> -	return r->region_end_offset - r->region_begin_offset;
> -}
> -
> -static const struct file_operations vsoc_ops =3D {
> -	.owner =3D THIS_MODULE,
> -	.open =3D vsoc_open,
> -	.mmap =3D vsoc_mmap,
> -	.read =3D vsoc_read,
> -	.unlocked_ioctl =3D vsoc_ioctl,
> -	.compat_ioctl =3D vsoc_ioctl,
> -	.write =3D vsoc_write,
> -	.llseek =3D vsoc_lseek,
> -	.release =3D vsoc_release,
> -};
> -
> -static struct pci_device_id vsoc_id_table[] =3D {
> -	{0x1af4, 0x1110, PCI_ANY_ID, PCI_ANY_ID, 0, 0, 0},
> -	{0},
> -};
> -
> -MODULE_DEVICE_TABLE(pci, vsoc_id_table);
> -
> -static void vsoc_remove_device(struct pci_dev *pdev);
> -static int vsoc_probe_device(struct pci_dev *pdev,
> -			     const struct pci_device_id *ent);
> -
> -static struct pci_driver vsoc_pci_driver =3D {
> -	.name =3D "vsoc",
> -	.id_table =3D vsoc_id_table,
> -	.probe =3D vsoc_probe_device,
> -	.remove =3D vsoc_remove_device,
> -};
> -
> -static int
> -do_create_fd_scoped_permission(struct vsoc_device_region *region_p,
> -			       struct fd_scoped_permission_node *np,
> -			       struct fd_scoped_permission_arg __user *arg)
> -{
> -	struct file *managed_filp;
> -	s32 managed_fd;
> -	atomic_t *owner_ptr =3D NULL;
> -	struct vsoc_device_region *managed_region_p;
> -
> -	if (copy_from_user(&np->permission,
> -			   &arg->perm, sizeof(np->permission)) ||
> -	    copy_from_user(&managed_fd,
> -			   &arg->managed_region_fd, sizeof(managed_fd))) {
> -		return -EFAULT;
> -	}
> -	managed_filp =3D fdget(managed_fd).file;
> -	/* Check that it's a valid fd, */
> -	if (!managed_filp || vsoc_validate_filep(managed_filp))
> -		return -EPERM;
> -	/* EEXIST if the given fd already has a permission. */
> -	if (((struct vsoc_private_data *)managed_filp->private_data)->
> -	    fd_scoped_permission_node)
> -		return -EEXIST;
> -	managed_region_p =3D vsoc_region_from_filep(managed_filp);
> -	/* Check that the provided region is managed by this one */
> -	if (&vsoc_dev.regions[managed_region_p->managed_by] !=3D region_p)
> -		return -EPERM;
> -	/* The area must be well formed and have non-zero size */
> -	if (np->permission.begin_offset >=3D np->permission.end_offset)
> -		return -EINVAL;
> -	/* The area must fit in the memory window */
> -	if (np->permission.end_offset >
> -	    vsoc_device_region_size(managed_region_p))
> -		return -ERANGE;
> -	/* The area must be in the region data section */
> -	if (np->permission.begin_offset <
> -	    managed_region_p->offset_of_region_data)
> -		return -ERANGE;
> -	/* The area must be page aligned */
> -	if (!PAGE_ALIGNED(np->permission.begin_offset) ||
> -	    !PAGE_ALIGNED(np->permission.end_offset))
> -		return -EINVAL;
> -	/* Owner offset must be naturally aligned in the window */
> -	if (np->permission.owner_offset &
> -	    (sizeof(np->permission.owner_offset) - 1))
> -		return -EINVAL;
> -	/* The owner flag must reside in the owner memory */
> -	if (np->permission.owner_offset + sizeof(np->permission.owner_offset) >
> -	    vsoc_device_region_size(region_p))
> -		return -ERANGE;
> -	/* The owner flag must reside in the data section */
> -	if (np->permission.owner_offset < region_p->offset_of_region_data)
> -		return -EINVAL;
> -	/* The owner value must change to claim the memory */
> -	if (np->permission.owned_value =3D=3D VSOC_REGION_FREE)
> -		return -EINVAL;
> -	owner_ptr =3D
> -	    (atomic_t *)shm_off_to_virtual_addr(region_p->region_begin_offset +
> -						np->permission.owner_offset);
> -	/* We've already verified that this is in the shared memory window, so
> -	 * it should be safe to write to this address.
> -	 */
> -	if (atomic_cmpxchg(owner_ptr,
> -			   VSOC_REGION_FREE,
> -			   np->permission.owned_value) !=3D VSOC_REGION_FREE) {
> -		return -EBUSY;
> -	}
> -	((struct vsoc_private_data *)managed_filp->private_data)->
> -	    fd_scoped_permission_node =3D np;
> -	/* The file offset needs to be adjusted if the calling
> -	 * process did any read/write operations on the fd
> -	 * before creating the permission.
> -	 */
> -	if (managed_filp->f_pos) {
> -		if (managed_filp->f_pos > np->permission.end_offset) {
> -			/* If the offset is beyond the permission end, set it
> -			 * to the end.
> -			 */
> -			managed_filp->f_pos =3D np->permission.end_offset;
> -		} else {
> -			/* If the offset is within the permission interval
> -			 * keep it there otherwise reset it to zero.
> -			 */
> -			if (managed_filp->f_pos < np->permission.begin_offset) {
> -				managed_filp->f_pos =3D 0;
> -			} else {
> -				managed_filp->f_pos -=3D
> -				    np->permission.begin_offset;
> -			}
> -		}
> -	}
> -	return 0;
> -}
> -
> -static void
> -do_destroy_fd_scoped_permission_node(struct vsoc_device_region *owner_re=
gion_p,
> -				     struct fd_scoped_permission_node *node)
> -{
> -	if (node) {
> -		do_destroy_fd_scoped_permission(owner_region_p,
> -						&node->permission);
> -		mutex_lock(&vsoc_dev.mtx);
> -		list_del(&node->list);
> -		mutex_unlock(&vsoc_dev.mtx);
> -		kfree(node);
> -	}
> -}
> -
> -static void
> -do_destroy_fd_scoped_permission(struct vsoc_device_region *owner_region_=
p,
> -				struct fd_scoped_permission *perm)
> -{
> -	atomic_t *owner_ptr =3D NULL;
> -	int prev =3D 0;
> -
> -	if (!perm)
> -		return;
> -	owner_ptr =3D (atomic_t *)shm_off_to_virtual_addr
> -		(owner_region_p->region_begin_offset + perm->owner_offset);
> -	prev =3D atomic_xchg(owner_ptr, VSOC_REGION_FREE);
> -	if (prev !=3D perm->owned_value)
> -		dev_err(&vsoc_dev.dev->dev,
> -			"%x-%x: owner (%s) %x: expected to be %x was %x",
> -			perm->begin_offset, perm->end_offset,
> -			owner_region_p->device_name, perm->owner_offset,
> -			perm->owned_value, prev);
> -}
> -
> -static long do_vsoc_describe_region(struct file *filp,
> -				    struct vsoc_device_region __user *dest)
> -{
> -	struct vsoc_device_region *region_p;
> -	int retval =3D vsoc_validate_filep(filp);
> -
> -	if (retval)
> -		return retval;
> -	region_p =3D vsoc_region_from_filep(filp);
> -	if (copy_to_user(dest, region_p, sizeof(*region_p)))
> -		return -EFAULT;
> -	return 0;
> -}
> -
> -/**
> - * Implements the inner logic of cond_wait. Copies to and from userspace=
 are
> - * done in the helper function below.
> - */
> -static int handle_vsoc_cond_wait(struct file *filp, struct vsoc_cond_wai=
t *arg)
> -{
> -	DEFINE_WAIT(wait);
> -	u32 region_number =3D iminor(file_inode(filp));
> -	struct vsoc_region_data *data =3D vsoc_dev.regions_data + region_number;
> -	struct hrtimer_sleeper timeout, *to =3D NULL;
> -	int ret =3D 0;
> -	struct vsoc_device_region *region_p =3D vsoc_region_from_filep(filp);
> -	atomic_t *address =3D NULL;
> -	ktime_t wake_time;
> -
> -	/* Ensure that the offset is aligned */
> -	if (arg->offset & (sizeof(uint32_t) - 1))
> -		return -EADDRNOTAVAIL;
> -	/* Ensure that the offset is within shared memory */
> -	if (((uint64_t)arg->offset) + region_p->region_begin_offset +
> -	    sizeof(uint32_t) > region_p->region_end_offset)
> -		return -E2BIG;
> -	address =3D shm_off_to_virtual_addr(region_p->region_begin_offset +
> -					  arg->offset);
> -
> -	/* Ensure that the type of wait is valid */
> -	switch (arg->wait_type) {
> -	case VSOC_WAIT_IF_EQUAL:
> -		break;
> -	case VSOC_WAIT_IF_EQUAL_TIMEOUT:
> -		to =3D &timeout;
> -		break;
> -	default:
> -		return -EINVAL;
> -	}
> -
> -	if (to) {
> -		/* Copy the user-supplied timesec into the kernel structure.
> -		 * We do things this way to flatten differences between 32 bit
> -		 * and 64 bit timespecs.
> -		 */
> -		if (arg->wake_time_nsec >=3D NSEC_PER_SEC)
> -			return -EINVAL;
> -		wake_time =3D ktime_set(arg->wake_time_sec, arg->wake_time_nsec);
> -
> -		hrtimer_init_sleeper_on_stack(to, CLOCK_MONOTONIC,
> -					      HRTIMER_MODE_ABS);
> -		hrtimer_set_expires_range_ns(&to->timer, wake_time,
> -					     current->timer_slack_ns);
> -	}
> -
> -	while (1) {
> -		prepare_to_wait(&data->futex_wait_queue, &wait,
> -				TASK_INTERRUPTIBLE);
> -		/*
> -		 * Check the sentinel value after prepare_to_wait. If the value
> -		 * changes after this check the writer will call signal,
> -		 * changing the task state from INTERRUPTIBLE to RUNNING. That
> -		 * will ensure that schedule() will eventually schedule this
> -		 * task.
> -		 */
> -		if (atomic_read(address) !=3D arg->value) {
> -			ret =3D 0;
> -			break;
> -		}
> -		if (to) {
> -			hrtimer_sleeper_start_expires(to, HRTIMER_MODE_ABS);
> -			if (likely(to->task))
> -				freezable_schedule();
> -			hrtimer_cancel(&to->timer);
> -			if (!to->task) {
> -				ret =3D -ETIMEDOUT;
> -				break;
> -			}
> -		} else {
> -			freezable_schedule();
> -		}
> -		/* Count the number of times that we woke up. This is useful
> -		 * for unit testing.
> -		 */
> -		++arg->wakes;
> -		if (signal_pending(current)) {
> -			ret =3D -EINTR;
> -			break;
> -		}
> -	}
> -	finish_wait(&data->futex_wait_queue, &wait);
> -	if (to)
> -		destroy_hrtimer_on_stack(&to->timer);
> -	return ret;
> -}
> -
> -/**
> - * Handles the details of copying from/to userspace to ensure that the c=
opies
> - * happen on all of the return paths of cond_wait.
> - */
> -static int do_vsoc_cond_wait(struct file *filp,
> -			     struct vsoc_cond_wait __user *untrusted_in)
> -{
> -	struct vsoc_cond_wait arg;
> -	int rval =3D 0;
> -
> -	if (copy_from_user(&arg, untrusted_in, sizeof(arg)))
> -		return -EFAULT;
> -	/* wakes is an out parameter. Initialize it to something sensible. */
> -	arg.wakes =3D 0;
> -	rval =3D handle_vsoc_cond_wait(filp, &arg);
> -	if (copy_to_user(untrusted_in, &arg, sizeof(arg)))
> -		return -EFAULT;
> -	return rval;
> -}
> -
> -static int do_vsoc_cond_wake(struct file *filp, uint32_t offset)
> -{
> -	struct vsoc_device_region *region_p =3D vsoc_region_from_filep(filp);
> -	u32 region_number =3D iminor(file_inode(filp));
> -	struct vsoc_region_data *data =3D vsoc_dev.regions_data + region_number;
> -	/* Ensure that the offset is aligned */
> -	if (offset & (sizeof(uint32_t) - 1))
> -		return -EADDRNOTAVAIL;
> -	/* Ensure that the offset is within shared memory */
> -	if (((uint64_t)offset) + region_p->region_begin_offset +
> -	    sizeof(uint32_t) > region_p->region_end_offset)
> -		return -E2BIG;
> -	/*
> -	 * TODO(b/73664181): Use multiple futex wait queues.
> -	 * We need to wake every sleeper when the condition changes. Typically
> -	 * only a single thread will be waiting on the condition, but there
> -	 * are exceptions. The worst case is about 10 threads.
> -	 */
> -	wake_up_interruptible_all(&data->futex_wait_queue);
> -	return 0;
> -}
> -
> -static long vsoc_ioctl(struct file *filp, unsigned int cmd, unsigned lon=
g arg)
> -{
> -	int rv =3D 0;
> -	struct vsoc_device_region *region_p;
> -	u32 reg_num;
> -	struct vsoc_region_data *reg_data;
> -	int retval =3D vsoc_validate_filep(filp);
> -
> -	if (retval)
> -		return retval;
> -	region_p =3D vsoc_region_from_filep(filp);
> -	reg_num =3D iminor(file_inode(filp));
> -	reg_data =3D vsoc_dev.regions_data + reg_num;
> -	switch (cmd) {
> -	case VSOC_CREATE_FD_SCOPED_PERMISSION:
> -		{
> -			struct fd_scoped_permission_node *node =3D NULL;
> -
> -			node =3D kzalloc(sizeof(*node), GFP_KERNEL);
> -			/* We can't allocate memory for the permission */
> -			if (!node)
> -				return -ENOMEM;
> -			INIT_LIST_HEAD(&node->list);
> -			rv =3D do_create_fd_scoped_permission
> -				(region_p,
> -				 node,
> -				 (struct fd_scoped_permission_arg __user *)arg);
> -			if (!rv) {
> -				mutex_lock(&vsoc_dev.mtx);
> -				list_add(&node->list, &vsoc_dev.permissions);
> -				mutex_unlock(&vsoc_dev.mtx);
> -			} else {
> -				kfree(node);
> -				return rv;
> -			}
> -		}
> -		break;
> -
> -	case VSOC_GET_FD_SCOPED_PERMISSION:
> -		{
> -			struct fd_scoped_permission_node *node =3D
> -			    ((struct vsoc_private_data *)filp->private_data)->
> -			    fd_scoped_permission_node;
> -			if (!node)
> -				return -ENOENT;
> -			if (copy_to_user
> -			    ((struct fd_scoped_permission __user *)arg,
> -			     &node->permission, sizeof(node->permission)))
> -				return -EFAULT;
> -		}
> -		break;
> -
> -	case VSOC_MAYBE_SEND_INTERRUPT_TO_HOST:
> -		if (!atomic_xchg(reg_data->outgoing_signalled, 1)) {
> -			writel(reg_num, vsoc_dev.regs + DOORBELL);
> -			return 0;
> -		} else {
> -			return -EBUSY;
> -		}
> -		break;
> -
> -	case VSOC_SEND_INTERRUPT_TO_HOST:
> -		writel(reg_num, vsoc_dev.regs + DOORBELL);
> -		return 0;
> -	case VSOC_WAIT_FOR_INCOMING_INTERRUPT:
> -		wait_event_interruptible
> -			(reg_data->interrupt_wait_queue,
> -			 (atomic_read(reg_data->incoming_signalled) !=3D 0));
> -		break;
> -
> -	case VSOC_DESCRIBE_REGION:
> -		return do_vsoc_describe_region
> -			(filp,
> -			 (struct vsoc_device_region __user *)arg);
> -
> -	case VSOC_SELF_INTERRUPT:
> -		atomic_set(reg_data->incoming_signalled, 1);
> -		wake_up_interruptible(&reg_data->interrupt_wait_queue);
> -		break;
> -
> -	case VSOC_COND_WAIT:
> -		return do_vsoc_cond_wait(filp,
> -					 (struct vsoc_cond_wait __user *)arg);
> -	case VSOC_COND_WAKE:
> -		return do_vsoc_cond_wake(filp, arg);
> -
> -	default:
> -		return -EINVAL;
> -	}
> -	return 0;
> -}
> -
> -static ssize_t vsoc_read(struct file *filp, char __user *buffer, size_t =
len,
> -			 loff_t *poffset)
> -{
> -	__u32 area_off;
> -	const void *area_p;
> -	ssize_t area_len;
> -	int retval =3D vsoc_validate_filep(filp);
> -
> -	if (retval)
> -		return retval;
> -	area_len =3D vsoc_get_area(filp, &area_off);
> -	area_p =3D shm_off_to_virtual_addr(area_off);
> -	area_p +=3D *poffset;
> -	area_len -=3D *poffset;
> -	if (area_len <=3D 0)
> -		return 0;
> -	if (area_len < len)
> -		len =3D area_len;
> -	if (copy_to_user(buffer, area_p, len))
> -		return -EFAULT;
> -	*poffset +=3D len;
> -	return len;
> -}
> -
> -static loff_t vsoc_lseek(struct file *filp, loff_t offset, int origin)
> -{
> -	ssize_t area_len =3D 0;
> -	int retval =3D vsoc_validate_filep(filp);
> -
> -	if (retval)
> -		return retval;
> -	area_len =3D vsoc_get_area(filp, NULL);
> -	switch (origin) {
> -	case SEEK_SET:
> -		break;
> -
> -	case SEEK_CUR:
> -		if (offset > 0 && offset + filp->f_pos < 0)
> -			return -EOVERFLOW;
> -		offset +=3D filp->f_pos;
> -		break;
> -
> -	case SEEK_END:
> -		if (offset > 0 && offset + area_len < 0)
> -			return -EOVERFLOW;
> -		offset +=3D area_len;
> -		break;
> -
> -	case SEEK_DATA:
> -		if (offset >=3D area_len)
> -			return -EINVAL;
> -		if (offset < 0)
> -			offset =3D 0;
> -		break;
> -
> -	case SEEK_HOLE:
> -		/* Next hole is always the end of the region, unless offset is
> -		 * beyond that
> -		 */
> -		if (offset < area_len)
> -			offset =3D area_len;
> -		break;
> -
> -	default:
> -		return -EINVAL;
> -	}
> -
> -	if (offset < 0 || offset > area_len)
> -		return -EINVAL;
> -	filp->f_pos =3D offset;
> -
> -	return offset;
> -}
> -
> -static ssize_t vsoc_write(struct file *filp, const char __user *buffer,
> -			  size_t len, loff_t *poffset)
> -{
> -	__u32 area_off;
> -	void *area_p;
> -	ssize_t area_len;
> -	int retval =3D vsoc_validate_filep(filp);
> -
> -	if (retval)
> -		return retval;
> -	area_len =3D vsoc_get_area(filp, &area_off);
> -	area_p =3D shm_off_to_virtual_addr(area_off);
> -	area_p +=3D *poffset;
> -	area_len -=3D *poffset;
> -	if (area_len <=3D 0)
> -		return 0;
> -	if (area_len < len)
> -		len =3D area_len;
> -	if (copy_from_user(area_p, buffer, len))
> -		return -EFAULT;
> -	*poffset +=3D len;
> -	return len;
> -}
> -
> -static irqreturn_t vsoc_interrupt(int irq, void *region_data_v)
> -{
> -	struct vsoc_region_data *region_data =3D
> -	    (struct vsoc_region_data *)region_data_v;
> -	int reg_num =3D region_data - vsoc_dev.regions_data;
> -
> -	if (unlikely(!region_data))
> -		return IRQ_NONE;
> -
> -	if (unlikely(reg_num < 0 ||
> -		     reg_num >=3D vsoc_dev.layout->region_count)) {
> -		dev_err(&vsoc_dev.dev->dev,
> -			"invalid irq @%p reg_num=3D0x%04x\n",
> -			region_data, reg_num);
> -		return IRQ_NONE;
> -	}
> -	if (unlikely(vsoc_dev.regions_data + reg_num !=3D region_data)) {
> -		dev_err(&vsoc_dev.dev->dev,
> -			"irq not aligned @%p reg_num=3D0x%04x\n",
> -			region_data, reg_num);
> -		return IRQ_NONE;
> -	}
> -	wake_up_interruptible(&region_data->interrupt_wait_queue);
> -	return IRQ_HANDLED;
> -}
> -
> -static int vsoc_probe_device(struct pci_dev *pdev,
> -			     const struct pci_device_id *ent)
> -{
> -	int result;
> -	int i;
> -	resource_size_t reg_size;
> -	dev_t devt;
> -
> -	vsoc_dev.dev =3D pdev;
> -	result =3D pci_enable_device(pdev);
> -	if (result) {
> -		dev_err(&pdev->dev,
> -			"pci_enable_device failed %s: error %d\n",
> -			pci_name(pdev), result);
> -		return result;
> -	}
> -	vsoc_dev.enabled_device =3D true;
> -	result =3D pci_request_regions(pdev, "vsoc");
> -	if (result < 0) {
> -		dev_err(&pdev->dev, "pci_request_regions failed\n");
> -		vsoc_remove_device(pdev);
> -		return -EBUSY;
> -	}
> -	vsoc_dev.requested_regions =3D true;
> -	/* Set up the control registers in BAR 0 */
> -	reg_size =3D pci_resource_len(pdev, REGISTER_BAR);
> -	if (reg_size > MAX_REGISTER_BAR_LEN)
> -		vsoc_dev.regs =3D
> -		    pci_iomap(pdev, REGISTER_BAR, MAX_REGISTER_BAR_LEN);
> -	else
> -		vsoc_dev.regs =3D pci_iomap(pdev, REGISTER_BAR, reg_size);
> -
> -	if (!vsoc_dev.regs) {
> -		dev_err(&pdev->dev,
> -			"cannot map registers of size %zu\n",
> -		       (size_t)reg_size);
> -		vsoc_remove_device(pdev);
> -		return -EBUSY;
> -	}
> -
> -	/* Map the shared memory in BAR 2 */
> -	vsoc_dev.shm_phys_start =3D pci_resource_start(pdev, SHARED_MEMORY_BAR);
> -	vsoc_dev.shm_size =3D pci_resource_len(pdev, SHARED_MEMORY_BAR);
> -
> -	dev_info(&pdev->dev, "shared memory @ DMA %pa size=3D0x%zx\n",
> -		 &vsoc_dev.shm_phys_start, vsoc_dev.shm_size);
> -	vsoc_dev.kernel_mapped_shm =3D pci_iomap_wc(pdev, SHARED_MEMORY_BAR, 0);
> -	if (!vsoc_dev.kernel_mapped_shm) {
> -		dev_err(&vsoc_dev.dev->dev, "cannot iomap region\n");
> -		vsoc_remove_device(pdev);
> -		return -EBUSY;
> -	}
> -
> -	vsoc_dev.layout =3D (struct vsoc_shm_layout_descriptor __force *)
> -				vsoc_dev.kernel_mapped_shm;
> -	dev_info(&pdev->dev, "major_version: %d\n",
> -		 vsoc_dev.layout->major_version);
> -	dev_info(&pdev->dev, "minor_version: %d\n",
> -		 vsoc_dev.layout->minor_version);
> -	dev_info(&pdev->dev, "size: 0x%x\n", vsoc_dev.layout->size);
> -	dev_info(&pdev->dev, "regions: %d\n", vsoc_dev.layout->region_count);
> -	if (vsoc_dev.layout->major_version !=3D
> -	    CURRENT_VSOC_LAYOUT_MAJOR_VERSION) {
> -		dev_err(&vsoc_dev.dev->dev,
> -			"driver supports only major_version %d\n",
> -			CURRENT_VSOC_LAYOUT_MAJOR_VERSION);
> -		vsoc_remove_device(pdev);
> -		return -EBUSY;
> -	}
> -	result =3D alloc_chrdev_region(&devt, 0, vsoc_dev.layout->region_count,
> -				     VSOC_DEV_NAME);
> -	if (result) {
> -		dev_err(&vsoc_dev.dev->dev, "alloc_chrdev_region failed\n");
> -		vsoc_remove_device(pdev);
> -		return -EBUSY;
> -	}
> -	vsoc_dev.major =3D MAJOR(devt);
> -	cdev_init(&vsoc_dev.cdev, &vsoc_ops);
> -	vsoc_dev.cdev.owner =3D THIS_MODULE;
> -	result =3D cdev_add(&vsoc_dev.cdev, devt, vsoc_dev.layout->region_count=
);
> -	if (result) {
> -		dev_err(&vsoc_dev.dev->dev, "cdev_add error\n");
> -		vsoc_remove_device(pdev);
> -		return -EBUSY;
> -	}
> -	vsoc_dev.cdev_added =3D true;
> -	vsoc_dev.class =3D class_create(THIS_MODULE, VSOC_DEV_NAME);
> -	if (IS_ERR(vsoc_dev.class)) {
> -		dev_err(&vsoc_dev.dev->dev, "class_create failed\n");
> -		vsoc_remove_device(pdev);
> -		return PTR_ERR(vsoc_dev.class);
> -	}
> -	vsoc_dev.class_added =3D true;
> -	vsoc_dev.regions =3D (struct vsoc_device_region __force *)
> -		((void *)vsoc_dev.layout +
> -		 vsoc_dev.layout->vsoc_region_desc_offset);
> -	vsoc_dev.msix_entries =3D
> -		kcalloc(vsoc_dev.layout->region_count,
> -			sizeof(vsoc_dev.msix_entries[0]), GFP_KERNEL);
> -	if (!vsoc_dev.msix_entries) {
> -		dev_err(&vsoc_dev.dev->dev,
> -			"unable to allocate msix_entries\n");
> -		vsoc_remove_device(pdev);
> -		return -ENOSPC;
> -	}
> -	vsoc_dev.regions_data =3D
> -		kcalloc(vsoc_dev.layout->region_count,
> -			sizeof(vsoc_dev.regions_data[0]), GFP_KERNEL);
> -	if (!vsoc_dev.regions_data) {
> -		dev_err(&vsoc_dev.dev->dev,
> -			"unable to allocate regions' data\n");
> -		vsoc_remove_device(pdev);
> -		return -ENOSPC;
> -	}
> -	for (i =3D 0; i < vsoc_dev.layout->region_count; ++i)
> -		vsoc_dev.msix_entries[i].entry =3D i;
> -
> -	result =3D pci_enable_msix_exact(vsoc_dev.dev, vsoc_dev.msix_entries,
> -				       vsoc_dev.layout->region_count);
> -	if (result) {
> -		dev_info(&pdev->dev, "pci_enable_msix failed: %d\n", result);
> -		vsoc_remove_device(pdev);
> -		return -ENOSPC;
> -	}
> -	/* Check that all regions are well formed */
> -	for (i =3D 0; i < vsoc_dev.layout->region_count; ++i) {
> -		const struct vsoc_device_region *region =3D vsoc_dev.regions + i;
> -
> -		if (!PAGE_ALIGNED(region->region_begin_offset) ||
> -		    !PAGE_ALIGNED(region->region_end_offset)) {
> -			dev_err(&vsoc_dev.dev->dev,
> -				"region %d not aligned (%x:%x)", i,
> -				region->region_begin_offset,
> -				region->region_end_offset);
> -			vsoc_remove_device(pdev);
> -			return -EFAULT;
> -		}
> -		if (region->region_begin_offset >=3D region->region_end_offset ||
> -		    region->region_end_offset > vsoc_dev.shm_size) {
> -			dev_err(&vsoc_dev.dev->dev,
> -				"region %d offsets are wrong: %x %x %zx",
> -				i, region->region_begin_offset,
> -				region->region_end_offset, vsoc_dev.shm_size);
> -			vsoc_remove_device(pdev);
> -			return -EFAULT;
> -		}
> -		if (region->managed_by >=3D vsoc_dev.layout->region_count) {
> -			dev_err(&vsoc_dev.dev->dev,
> -				"region %d has invalid owner: %u",
> -				i, region->managed_by);
> -			vsoc_remove_device(pdev);
> -			return -EFAULT;
> -		}
> -	}
> -	vsoc_dev.msix_enabled =3D true;
> -	for (i =3D 0; i < vsoc_dev.layout->region_count; ++i) {
> -		const struct vsoc_device_region *region =3D vsoc_dev.regions + i;
> -		size_t name_sz =3D sizeof(vsoc_dev.regions_data[i].name) - 1;
> -		const struct vsoc_signal_table_layout *h_to_g_signal_table =3D
> -			&region->host_to_guest_signal_table;
> -		const struct vsoc_signal_table_layout *g_to_h_signal_table =3D
> -			&region->guest_to_host_signal_table;
> -
> -		vsoc_dev.regions_data[i].name[name_sz] =3D '\0';
> -		memcpy(vsoc_dev.regions_data[i].name, region->device_name,
> -		       name_sz);
> -		dev_info(&pdev->dev, "region %d name=3D%s\n",
> -			 i, vsoc_dev.regions_data[i].name);
> -		init_waitqueue_head
> -			(&vsoc_dev.regions_data[i].interrupt_wait_queue);
> -		init_waitqueue_head(&vsoc_dev.regions_data[i].futex_wait_queue);
> -		vsoc_dev.regions_data[i].incoming_signalled =3D
> -			shm_off_to_virtual_addr(region->region_begin_offset) +
> -			h_to_g_signal_table->interrupt_signalled_offset;
> -		vsoc_dev.regions_data[i].outgoing_signalled =3D
> -			shm_off_to_virtual_addr(region->region_begin_offset) +
> -			g_to_h_signal_table->interrupt_signalled_offset;
> -		result =3D request_irq(vsoc_dev.msix_entries[i].vector,
> -				     vsoc_interrupt, 0,
> -				     vsoc_dev.regions_data[i].name,
> -				     vsoc_dev.regions_data + i);
> -		if (result) {
> -			dev_info(&pdev->dev,
> -				 "request_irq failed irq=3D%d vector=3D%d\n",
> -				i, vsoc_dev.msix_entries[i].vector);
> -			vsoc_remove_device(pdev);
> -			return -ENOSPC;
> -		}
> -		vsoc_dev.regions_data[i].irq_requested =3D true;
> -		if (!device_create(vsoc_dev.class, NULL,
> -				   MKDEV(vsoc_dev.major, i),
> -				   NULL, vsoc_dev.regions_data[i].name)) {
> -			dev_err(&vsoc_dev.dev->dev, "device_create failed\n");
> -			vsoc_remove_device(pdev);
> -			return -EBUSY;
> -		}
> -		vsoc_dev.regions_data[i].device_created =3D true;
> -	}
> -	return 0;
> -}
> -
> -/*
> - * This should undo all of the allocations in the probe function in reve=
rse
> - * order.
> - *
> - * Notes:
> - *
> - *   The device may have been partially initialized, so double check
> - *   that the allocations happened.
> - *
> - *   This function may be called multiple times, so mark resources as fr=
eed
> - *   as they are deallocated.
> - */
> -static void vsoc_remove_device(struct pci_dev *pdev)
> -{
> -	int i;
> -	/*
> -	 * pdev is the first thing to be set on probe and the last thing
> -	 * to be cleared here. If it's NULL then there is no cleanup.
> -	 */
> -	if (!pdev || !vsoc_dev.dev)
> -		return;
> -	dev_info(&pdev->dev, "remove_device\n");
> -	if (vsoc_dev.regions_data) {
> -		for (i =3D 0; i < vsoc_dev.layout->region_count; ++i) {
> -			if (vsoc_dev.regions_data[i].device_created) {
> -				device_destroy(vsoc_dev.class,
> -					       MKDEV(vsoc_dev.major, i));
> -				vsoc_dev.regions_data[i].device_created =3D false;
> -			}
> -			if (vsoc_dev.regions_data[i].irq_requested)
> -				free_irq(vsoc_dev.msix_entries[i].vector, NULL);
> -			vsoc_dev.regions_data[i].irq_requested =3D false;
> -		}
> -		kfree(vsoc_dev.regions_data);
> -		vsoc_dev.regions_data =3D NULL;
> -	}
> -	if (vsoc_dev.msix_enabled) {
> -		pci_disable_msix(pdev);
> -		vsoc_dev.msix_enabled =3D false;
> -	}
> -	kfree(vsoc_dev.msix_entries);
> -	vsoc_dev.msix_entries =3D NULL;
> -	vsoc_dev.regions =3D NULL;
> -	if (vsoc_dev.class_added) {
> -		class_destroy(vsoc_dev.class);
> -		vsoc_dev.class_added =3D false;
> -	}
> -	if (vsoc_dev.cdev_added) {
> -		cdev_del(&vsoc_dev.cdev);
> -		vsoc_dev.cdev_added =3D false;
> -	}
> -	if (vsoc_dev.major && vsoc_dev.layout) {
> -		unregister_chrdev_region(MKDEV(vsoc_dev.major, 0),
> -					 vsoc_dev.layout->region_count);
> -		vsoc_dev.major =3D 0;
> -	}
> -	vsoc_dev.layout =3D NULL;
> -	if (vsoc_dev.kernel_mapped_shm) {
> -		pci_iounmap(pdev, vsoc_dev.kernel_mapped_shm);
> -		vsoc_dev.kernel_mapped_shm =3D NULL;
> -	}
> -	if (vsoc_dev.regs) {
> -		pci_iounmap(pdev, vsoc_dev.regs);
> -		vsoc_dev.regs =3D NULL;
> -	}
> -	if (vsoc_dev.requested_regions) {
> -		pci_release_regions(pdev);
> -		vsoc_dev.requested_regions =3D false;
> -	}
> -	if (vsoc_dev.enabled_device) {
> -		pci_disable_device(pdev);
> -		vsoc_dev.enabled_device =3D false;
> -	}
> -	/* Do this last: it indicates that the device is not initialized. */
> -	vsoc_dev.dev =3D NULL;
> -}
> -
> -static void __exit vsoc_cleanup_module(void)
> -{
> -	vsoc_remove_device(vsoc_dev.dev);
> -	pci_unregister_driver(&vsoc_pci_driver);
> -}
> -
> -static int __init vsoc_init_module(void)
> -{
> -	int err =3D -ENOMEM;
> -
> -	INIT_LIST_HEAD(&vsoc_dev.permissions);
> -	mutex_init(&vsoc_dev.mtx);
> -
> -	err =3D pci_register_driver(&vsoc_pci_driver);
> -	if (err < 0)
> -		return err;
> -	return 0;
> -}
> -
> -static int vsoc_open(struct inode *inode, struct file *filp)
> -{
> -	/* Can't use vsoc_validate_filep because filp is still incomplete */
> -	int ret =3D vsoc_validate_inode(inode);
> -
> -	if (ret)
> -		return ret;
> -	filp->private_data =3D
> -		kzalloc(sizeof(struct vsoc_private_data), GFP_KERNEL);
> -	if (!filp->private_data)
> -		return -ENOMEM;
> -	return 0;
> -}
> -
> -static int vsoc_release(struct inode *inode, struct file *filp)
> -{
> -	struct vsoc_private_data *private_data =3D NULL;
> -	struct fd_scoped_permission_node *node =3D NULL;
> -	struct vsoc_device_region *owner_region_p =3D NULL;
> -	int retval =3D vsoc_validate_filep(filp);
> -
> -	if (retval)
> -		return retval;
> -	private_data =3D (struct vsoc_private_data *)filp->private_data;
> -	if (!private_data)
> -		return 0;
> -
> -	node =3D private_data->fd_scoped_permission_node;
> -	if (node) {
> -		owner_region_p =3D vsoc_region_from_inode(inode);
> -		if (owner_region_p->managed_by !=3D VSOC_REGION_WHOLE) {
> -			owner_region_p =3D
> -			    &vsoc_dev.regions[owner_region_p->managed_by];
> -		}
> -		do_destroy_fd_scoped_permission_node(owner_region_p, node);
> -		private_data->fd_scoped_permission_node =3D NULL;
> -	}
> -	kfree(private_data);
> -	filp->private_data =3D NULL;
> -
> -	return 0;
> -}
> -
> -/*
> - * Returns the device relative offset and length of the area specified b=
y the
> - * fd scoped permission. If there is no fd scoped permission set, a defa=
ult
> - * permission covering the entire region is assumed, unless the region i=
s owned
> - * by another one, in which case the default is a permission with zero s=
ize.
> - */
> -static ssize_t vsoc_get_area(struct file *filp, __u32 *area_offset)
> -{
> -	__u32 off =3D 0;
> -	ssize_t length =3D 0;
> -	struct vsoc_device_region *region_p;
> -	struct fd_scoped_permission *perm;
> -
> -	region_p =3D vsoc_region_from_filep(filp);
> -	off =3D region_p->region_begin_offset;
> -	perm =3D &((struct vsoc_private_data *)filp->private_data)->
> -		fd_scoped_permission_node->permission;
> -	if (perm) {
> -		off +=3D perm->begin_offset;
> -		length =3D perm->end_offset - perm->begin_offset;
> -	} else if (region_p->managed_by =3D=3D VSOC_REGION_WHOLE) {
> -		/* No permission set and the regions is not owned by another,
> -		 * default to full region access.
> -		 */
> -		length =3D vsoc_device_region_size(region_p);
> -	} else {
> -		/* return zero length, access is denied. */
> -		length =3D 0;
> -	}
> -	if (area_offset)
> -		*area_offset =3D off;
> -	return length;
> -}
> -
> -static int vsoc_mmap(struct file *filp, struct vm_area_struct *vma)
> -{
> -	unsigned long len =3D vma->vm_end - vma->vm_start;
> -	__u32 area_off;
> -	phys_addr_t mem_off;
> -	ssize_t area_len;
> -	int retval =3D vsoc_validate_filep(filp);
> -
> -	if (retval)
> -		return retval;
> -	area_len =3D vsoc_get_area(filp, &area_off);
> -	/* Add the requested offset */
> -	area_off +=3D (vma->vm_pgoff << PAGE_SHIFT);
> -	area_len -=3D (vma->vm_pgoff << PAGE_SHIFT);
> -	if (area_len < len)
> -		return -EINVAL;
> -	vma->vm_page_prot =3D pgprot_noncached(vma->vm_page_prot);
> -	mem_off =3D shm_off_to_phys_addr(area_off);
> -	if (io_remap_pfn_range(vma, vma->vm_start, mem_off >> PAGE_SHIFT,
> -			       len, vma->vm_page_prot))
> -		return -EAGAIN;
> -	return 0;
> -}
> -
> -module_init(vsoc_init_module);
> -module_exit(vsoc_cleanup_module);
> -
> -MODULE_LICENSE("GPL");
> -MODULE_AUTHOR("Greg Hartman <ghartman@google.com>");
> -MODULE_DESCRIPTION("VSoC interpretation of QEmu's ivshmem device");
> -MODULE_VERSION("1.0");
> -- =

> 2.25.0.341.g760bfbb309-goog
> =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

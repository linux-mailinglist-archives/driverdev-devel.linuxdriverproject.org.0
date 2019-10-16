Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC261D95DD
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 17:43:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC13786A2D;
	Wed, 16 Oct 2019 15:43:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sCVbFn3EzgL1; Wed, 16 Oct 2019 15:43:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 823C6869FE;
	Wed, 16 Oct 2019 15:43:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D08891BF38B
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 15:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B8A4087846
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 15:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uhqx8Hyc0tBK for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 15:43:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3B86687842
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 15:43:09 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id 7so24523239ljw.7
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 08:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QeqGb38nou+CUua7H0tNVsw7j00ya/FpEqqjOhe3ueE=;
 b=GVaH1QP9UOoOYeUbamoHn42dSMeY6iwWUPIzPWGWMtBv+Dz4nvrI9E3mETBnAni+FU
 Izf2uj7TozLnDGFsViAzRH5E5P9lRykxkWZQxW4jNbamOx8Pwj0nhzog9wEMwwf7h3+1
 TAVixD/gVp4y+zhTqAZ2kCc70Y+hG1Vcf05E5xrBV7rxLcVGDNLnedYxOnlVXY4AFvFp
 HPjjoKVRNRPJTlLxMCr9sfIG/pBbDtAoFajV0bcDAmh0DkSu7ZgbNySCWdk9+XUPs8Om
 EinmHfDMTwgyD83GTK/OCBHdWw4FS4RANsM/37w2QgaHo74SkGBgSacUT5xcjcsqkNue
 Mjpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QeqGb38nou+CUua7H0tNVsw7j00ya/FpEqqjOhe3ueE=;
 b=OcPeo9ch12IDRokUbb3ZQXrPWJbtMbO1uZ0U7saZwoeuOJ6PN5hajaxDXFQAB6R+Co
 cLh4ZUaMsq2qUC/esDW5drJh22HRiFK9sauwOSYNTUP1HrLymobTSvBPirb1ICkvSH7+
 ncYiGLDzgMD9I+NWQnbMHXhO3iqaPDu/dBcXx5tBoHCclgzUGILqjOPaefa2ve8pxTEY
 GQTbhIknQnhGcTV5c8i5gxJ3w1cn2RCKYhTza3UDMFyeCHYhiO8cIyumKBTL9P2P5/vy
 +o6macDvmnKQCEuEJX6Er+ncVLMZpwLeyN27MR9BR6+mLefqRNwU74TrGdVcbL47yRwd
 02Vw==
X-Gm-Message-State: APjAAAWPrvw0tPsErkLlPWfDG6bOwLV2p0/Di46J49ZrKC1kJSsFHCyF
 DyGm/HrhHFW4A2e8UD3xmekiTgzfgnJvXYyfpI/Q/Q==
X-Google-Smtp-Source: APXvYqwfVkyBVf9Gcz5SLet11Xgcyz7eXQvQnjb1yZRklRq/5kKYUDGlrdEABoVnDojKHa0a21jdyHcz+Yf3yZkM3Lc=
X-Received: by 2002:a2e:9b02:: with SMTP id u2mr26382578lji.18.1571240586761; 
 Wed, 16 Oct 2019 08:43:06 -0700 (PDT)
MIME-Version: 1.0
References: <20191016150119.154756-1-jannh@google.com>
In-Reply-To: <20191016150119.154756-1-jannh@google.com>
From: Todd Kjos <tkjos@google.com>
Date: Wed, 16 Oct 2019 08:42:55 -0700
Message-ID: <CAHRSSEwGqM84KA-V-V384RNQFRJbj2SHMy_8-D9mnO9=8noZ3Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] binder: Don't modify VMA bounds in ->mmap handler
To: Jann Horn <jannh@google.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 16, 2019 at 8:01 AM Jann Horn <jannh@google.com> wrote:
>
> binder_mmap() tries to prevent the creation of overly big binder mappings
> by silently truncating the size of the VMA to 4MiB. However, this violates
> the API contract of mmap(). If userspace attempts to create a large binder
> VMA, and later attempts to unmap that VMA, it will call munmap() on a range
> beyond the end of the VMA, which may have been allocated to another VMA in
> the meantime. This can lead to userspace memory corruption.
>
> The following sequence of calls leads to a segfault without this commit:
>
> int main(void) {
>   int binder_fd = open("/dev/binder", O_RDWR);
>   if (binder_fd == -1) err(1, "open binder");
>   void *binder_mapping = mmap(NULL, 0x800000UL, PROT_READ, MAP_SHARED,
>                               binder_fd, 0);
>   if (binder_mapping == MAP_FAILED) err(1, "mmap binder");
>   void *data_mapping = mmap(NULL, 0x400000UL, PROT_READ|PROT_WRITE,
>                             MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
>   if (data_mapping == MAP_FAILED) err(1, "mmap data");
>   munmap(binder_mapping, 0x800000UL);
>   *(char*)data_mapping = 1;
>   return 0;
> }
>
> Cc: stable@vger.kernel.org
> Signed-off-by: Jann Horn <jannh@google.com>

Acked-by: Todd Kjos <tkjos@google.com>

> ---
>  drivers/android/binder.c       | 7 -------
>  drivers/android/binder_alloc.c | 6 ++++--
>  2 files changed, 4 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 5b9ac2122e89..265d9dd46a5e 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -97,10 +97,6 @@ DEFINE_SHOW_ATTRIBUTE(proc);
>  #define SZ_1K                               0x400
>  #endif
>
> -#ifndef SZ_4M
> -#define SZ_4M                               0x400000
> -#endif
> -
>  #define FORBIDDEN_MMAP_FLAGS                (VM_WRITE)
>
>  enum {
> @@ -5177,9 +5173,6 @@ static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
>         if (proc->tsk != current->group_leader)
>                 return -EINVAL;
>
> -       if ((vma->vm_end - vma->vm_start) > SZ_4M)
> -               vma->vm_end = vma->vm_start + SZ_4M;
> -
>         binder_debug(BINDER_DEBUG_OPEN_CLOSE,
>                      "%s: %d %lx-%lx (%ld K) vma %lx pagep %lx\n",
>                      __func__, proc->pid, vma->vm_start, vma->vm_end,
> diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
> index d42a8b2f636a..eb76a823fbb2 100644
> --- a/drivers/android/binder_alloc.c
> +++ b/drivers/android/binder_alloc.c
> @@ -22,6 +22,7 @@
>  #include <asm/cacheflush.h>
>  #include <linux/uaccess.h>
>  #include <linux/highmem.h>
> +#include <linux/sizes.h>
>  #include "binder_alloc.h"
>  #include "binder_trace.h"
>
> @@ -689,7 +690,9 @@ int binder_alloc_mmap_handler(struct binder_alloc *alloc,
>         alloc->buffer = (void __user *)vma->vm_start;
>         mutex_unlock(&binder_alloc_mmap_lock);
>
> -       alloc->pages = kcalloc((vma->vm_end - vma->vm_start) / PAGE_SIZE,
> +       alloc->buffer_size = min_t(unsigned long, vma->vm_end - vma->vm_start,
> +                                  SZ_4M);
> +       alloc->pages = kcalloc(alloc->buffer_size / PAGE_SIZE,
>                                sizeof(alloc->pages[0]),
>                                GFP_KERNEL);
>         if (alloc->pages == NULL) {
> @@ -697,7 +700,6 @@ int binder_alloc_mmap_handler(struct binder_alloc *alloc,
>                 failure_string = "alloc page array";
>                 goto err_alloc_pages_failed;
>         }
> -       alloc->buffer_size = vma->vm_end - vma->vm_start;
>
>         buffer = kzalloc(sizeof(*buffer), GFP_KERNEL);
>         if (!buffer) {
> --
> 2.23.0.700.g56cf767bdb-goog
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

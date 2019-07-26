Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE2C764EC
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 13:53:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 21C082616F;
	Fri, 26 Jul 2019 11:53:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B0VwR1Lv6PCD; Fri, 26 Jul 2019 11:53:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 97D4D261F6;
	Fri, 26 Jul 2019 11:53:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D6C3D1BF3EC
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 11:53:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CE35C89C1E
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 11:53:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mWvVUbvoHidI for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 11:53:41 +0000 (UTC)
X-Greylist: delayed 00:08:10 by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D0F1D89C19
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 11:53:40 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id d24so51197739ljg.8
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 04:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IIyzRbatR38ttllEYMMotwwVkanyqchmaJcpYBpIki0=;
 b=pETxnGiWkSphfi8/+4c4u+22brSho8PFLYphcLagT7bB4i3SZD16fRKJ1ZGb4qp9QL
 XlEsF8oKodWUi4PTu9/XdlUG9gA1pNqyjoA1KsmDLbgysBzBCd4nQcFsDELuCIbpAPhL
 21AoZAsF7HFuXv/4+6Ros9QR2I6qyBtvICViA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IIyzRbatR38ttllEYMMotwwVkanyqchmaJcpYBpIki0=;
 b=q5kuf637ifzYRrUIEtDTszgJzZZD2oFcrzP7/Hc0D6H6mPT0FqSjIvCn3HZne9Njrg
 nQErqGGNmh16dj1ORkgyJh3lkUl12/5J9em08nuYoOGBtD0oNaLv13JbRoocCRgxzIrh
 sj+M4roAutPYaA7WeDWX99FfUU6SPe+S85qguKE7gUb70nre40oEF1ytcAaN2Te1IlT9
 0ac2uqdDhh54n3ZfTZx5KrG2dWLwKMCFDZQp+HH9JleEoRUyUgfamWeKkgyzYY9HvrQR
 WlCKyk54K9Tft5foa/lNlUA8tgJRGvD3eW29GSMdwQQ3Y0pqJwkRUed2UF789yldEmTg
 C7fQ==
X-Gm-Message-State: APjAAAXdMqRPic1B7bQjnX/0M35uKmWQmHQMhP7vY5EXTMHhB07a72R9
 GBxh8SFRLyZ0TudklpPIcnyLPn2fqWfvcF255xI=
X-Google-Smtp-Source: APXvYqy1v+K91LR9Uqf7ttTOrc82KHvHW4Tm7nxGruwvykh6mSwzjj9McmHGuJKaCGbsiBx37LheJaMcKc4BiMCDW/c=
X-Received: by 2002:a2e:3602:: with SMTP id d2mr13542107lja.112.1564141528767; 
 Fri, 26 Jul 2019 04:45:28 -0700 (PDT)
MIME-Version: 1.0
References: <3b922aa4-c6d4-e4a4-766d-f324ff77f7b5@linux.com>
 <40f8b7d8-fafa-ad99-34fb-9c63e34917e2@redhat.com>
 <CALAqxLU199ATrMFa2ARmHOZ3K6ZnOuDLSAqNrTfwOWJaYiW7Yg@mail.gmail.com>
 <CALAqxLU0VUp=PGx5=JuVp6c5gwLqpSZJxs7ieL631QhdzNQTyA@mail.gmail.com>
In-Reply-To: <CALAqxLU0VUp=PGx5=JuVp6c5gwLqpSZJxs7ieL631QhdzNQTyA@mail.gmail.com>
From: Joel Fernandes <joel@joelfernandes.org>
Date: Fri, 26 Jul 2019 07:45:17 -0400
Message-ID: <CAEXW_YQFKhfS=2-LkkDkSg_1XzWh9WUa__nWjqxL0Uts9yyDdg@mail.gmail.com>
Subject: Re: Limits for ION Memory Allocator
To: John Stultz <john.stultz@linaro.org>
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
Cc: dri-devel <dri-devel@lists.freedesktop.org>, Linux-MM <linux-mm@kvack.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 driverdevel <devel@driverdev.osuosl.org>,
 Christian Brauner <christian@brauner.io>, Dmitry Vyukov <dvyukov@google.com>,
 alex.popov@linux.com, Alistair Delva <adelva@google.com>,
 Todd Kjos <tkjos@android.com>, Andrey Konovalov <andreyknvl@google.com>,
 Chenbo Feng <fengc@google.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Riley Andrews <riandrews@android.com>, syzkaller <syzkaller@googlegroups.com>,
 Martijn Coenen <maco@android.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Mark Brown <broonie@kernel.org>, Hridya Valsaraju <hridya@google.com>,
 Brian Starkey <brian.starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 24, 2019 at 4:24 PM John Stultz <john.stultz@linaro.org> wrote:
>
> On Wed, Jul 24, 2019 at 1:18 PM John Stultz <john.stultz@linaro.org> wrote:
> >
> > On Wed, Jul 24, 2019 at 12:36 PM Laura Abbott <labbott@redhat.com> wrote:
> > >
> > > On 7/17/19 12:31 PM, Alexander Popov wrote:
> > > > Hello!
> > > >
> > > > The syzkaller [1] has a trouble with fuzzing the Linux kernel with ION Memory
> > > > Allocator.
> > > >
> > > > Syzkaller uses several methods [2] to limit memory consumption of the userspace
> > > > processes calling the syscalls for testing the kernel:
> > > >   - setrlimit(),
> > > >   - cgroups,
> > > >   - various sysctl.
> > > > But these methods don't work for ION Memory Allocator, so any userspace process
> > > > that has access to /dev/ion can bring the system to the out-of-memory state.
> > > >
> > > > An example of a program doing that:
> > > >
> > > >
> > > > #include <sys/types.h>
> > > > #include <sys/stat.h>
> > > > #include <fcntl.h>
> > > > #include <stdio.h>
> > > > #include <linux/types.h>
> > > > #include <sys/ioctl.h>
> > > >
> > > > #define ION_IOC_MAGIC         'I'
> > > > #define ION_IOC_ALLOC         _IOWR(ION_IOC_MAGIC, 0, \
> > > >                                     struct ion_allocation_data)
> > > >
> > > > struct ion_allocation_data {
> > > >       __u64 len;
> > > >       __u32 heap_id_mask;
> > > >       __u32 flags;
> > > >       __u32 fd;
> > > >       __u32 unused;
> > > > };
> > > >
> > > > int main(void)
> > > > {
> > > >       unsigned long i = 0;
> > > >       int fd = -1;
> > > >       struct ion_allocation_data data = {
> > > >               .len = 0x13f65d8c,
> > > >               .heap_id_mask = 1,
> > > >               .flags = 0,
> > > >               .fd = -1,
> > > >               .unused = 0
> > > >       };
> > > >
> > > >       fd = open("/dev/ion", 0);
> > > >       if (fd == -1) {
> > > >               perror("[-] open /dev/ion");
> > > >               return 1;
> > > >       }
> > > >
> > > >       while (1) {
> > > >               printf("iter %lu\n", i);
> > > >               ioctl(fd, ION_IOC_ALLOC, &data);
> > > >               i++;
> > > >       }
> > > >
> > > >       return 0;
> > > > }
> > > >
> > > >
> > > > I looked through the code of ion_alloc() and didn't find any limit checks.
> > > > Is it currently possible to limit ION kernel allocations for some process?
> > > >
> > > > If not, is it a right idea to do that?
> > > > Thanks!
> > > >
> > >
> > > Yes, I do think that's the right approach. We're working on moving Ion
> > > out of staging and this is something I mentioned to John Stultz. I don't
> > > think we've thought too hard about how to do the actual limiting so
> > > suggestions are welcome.
> >
> > In part the dmabuf heaps allow for separate heap devices, so we can
> > have finer grained permissions to the specific heaps.  But that
> > doesn't provide any controls on how much memory one process could
> > allocate using the device if it has permission.
> >
> > I suspect the same issue is present with any of the dmabuf exporters
> > (gpu/display drivers, etc), so this is less of an ION/dmabuf heap
> > issue and more of a dmabuf core accounting issue.
> >
>
> Also, do unmapped memfd buffers have similar accounting issues?
>

The syzcaller bot didn't complain about this for memfd yet, so I suspect not ;-)

With memfd since it uses shmem underneath, __vm_enough_memory() is
called during shmem_acct_block() which should take per-process memory
into account already and fail if there is not enough memory.

Should ION be doing something similar to fail if there's not enough memory?

thanks,

- Joel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

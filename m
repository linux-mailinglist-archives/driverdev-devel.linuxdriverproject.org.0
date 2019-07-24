Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EFE73E53
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 22:24:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2A99221548;
	Wed, 24 Jul 2019 20:24:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vAENac3SyZht; Wed, 24 Jul 2019 20:24:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EE3CB20770;
	Wed, 24 Jul 2019 20:24:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 393351BF97F
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 20:24:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 358F084081
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 20:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gghaytPIKD6j for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 20:24:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2091981389
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 20:24:04 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id l2so42720904wmg.0
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 13:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QhT2aDY6DDwFo4u6pSSbFcjckneqY/fJmJSPh2en2QU=;
 b=exDKJ9fgAtICWDsB/RyvdCl1jI5YfgCIMwTNcxzkx1dyGll/JyL2AkvfnRrYbEirOB
 SEerS90nbZ0Y7uMtaafsNIrKrn2E8fDeOQgPH6N7PGG/abR8nOS6fvcaIr90v+MoUQKL
 Ya6XED0C/nS/Tu4DavDXSBDkL98MKY8aQ7cX7xm2OvAUaFe02AX21Q5ZVMnonR86zf17
 jiYfPhij00tvovhGp4mpN1FJt4aO8yIzLriVTZilkdXv0YgY3MVNNVFA64d7rNVzPt7/
 uDoAdw/I9wt7F4M+AoQ+DsbgfrLlirjsYmK30WF8s1pOpJ9mOGqbMiO76979hv3CBGmj
 6/GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QhT2aDY6DDwFo4u6pSSbFcjckneqY/fJmJSPh2en2QU=;
 b=X/5JcKfH3s/dDBGdIr3O+ub2A61OVpYcjKu/ixBDM9nK6G82XTUH+yPud0UW47xeNl
 GtQGef1PUP0gohQX7nBk8okwbXTaAn/Z4qjsuw/oCArWdUNpxmk1YsbWtkg2LJZukPPg
 1p64vV5bQ+xB2DVM9y8mZnlvcYPDwtiT49d1G0qjJOi3dr4OVI8nCrFSfizvQA4Ss3MS
 OQbqMpzVbsZAqR3ms6mm1OMVzPj/YYPy/qb2ilIQ+P3YM5ycRfd/ycE9xrjy5t9vi6wk
 +wisoft2dwL/rtkjGXBPG2fgQal7PsED/SswLEk+1Sw8jgMxPWlx3aJD5lLGdg6aCHx6
 GmIg==
X-Gm-Message-State: APjAAAUbBySY0XMaISbkjcRElrFnZCrCHVidDMed7ps1QXoNgJppImS5
 xFYhK/xg6UZDDaJSBDkAzGNnmeufn0TBDmRk64T77Q==
X-Google-Smtp-Source: APXvYqxenlGpviTUKajhjd5h70fbVtfBZYjpg7adyab446NPvnKr6jujmjoqrk0eooFifFaFDgKzniRhKNTV1qCOUmI=
X-Received: by 2002:a1c:dc07:: with SMTP id t7mr78697953wmg.164.1563999842462; 
 Wed, 24 Jul 2019 13:24:02 -0700 (PDT)
MIME-Version: 1.0
References: <3b922aa4-c6d4-e4a4-766d-f324ff77f7b5@linux.com>
 <40f8b7d8-fafa-ad99-34fb-9c63e34917e2@redhat.com>
 <CALAqxLU199ATrMFa2ARmHOZ3K6ZnOuDLSAqNrTfwOWJaYiW7Yg@mail.gmail.com>
In-Reply-To: <CALAqxLU199ATrMFa2ARmHOZ3K6ZnOuDLSAqNrTfwOWJaYiW7Yg@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 24 Jul 2019 13:23:50 -0700
Message-ID: <CALAqxLU0VUp=PGx5=JuVp6c5gwLqpSZJxs7ieL631QhdzNQTyA@mail.gmail.com>
Subject: Re: Limits for ION Memory Allocator
To: Laura Abbott <labbott@redhat.com>
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
 Joel Fernandes <joel@joelfernandes.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 driverdevel <devel@driverdev.osuosl.org>,
 Christian Brauner <christian@brauner.io>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, alex.popov@linux.com,
 Alistair Delva <adelva@google.com>, Todd Kjos <tkjos@android.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Riley Andrews <riandrews@android.com>, syzkaller <syzkaller@googlegroups.com>,
 Martijn Coenen <maco@android.com>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Mark Brown <broonie@kernel.org>, Hridya Valsaraju <hridya@google.com>,
 Brian Starkey <brian.starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 24, 2019 at 1:18 PM John Stultz <john.stultz@linaro.org> wrote:
>
> On Wed, Jul 24, 2019 at 12:36 PM Laura Abbott <labbott@redhat.com> wrote:
> >
> > On 7/17/19 12:31 PM, Alexander Popov wrote:
> > > Hello!
> > >
> > > The syzkaller [1] has a trouble with fuzzing the Linux kernel with ION Memory
> > > Allocator.
> > >
> > > Syzkaller uses several methods [2] to limit memory consumption of the userspace
> > > processes calling the syscalls for testing the kernel:
> > >   - setrlimit(),
> > >   - cgroups,
> > >   - various sysctl.
> > > But these methods don't work for ION Memory Allocator, so any userspace process
> > > that has access to /dev/ion can bring the system to the out-of-memory state.
> > >
> > > An example of a program doing that:
> > >
> > >
> > > #include <sys/types.h>
> > > #include <sys/stat.h>
> > > #include <fcntl.h>
> > > #include <stdio.h>
> > > #include <linux/types.h>
> > > #include <sys/ioctl.h>
> > >
> > > #define ION_IOC_MAGIC         'I'
> > > #define ION_IOC_ALLOC         _IOWR(ION_IOC_MAGIC, 0, \
> > >                                     struct ion_allocation_data)
> > >
> > > struct ion_allocation_data {
> > >       __u64 len;
> > >       __u32 heap_id_mask;
> > >       __u32 flags;
> > >       __u32 fd;
> > >       __u32 unused;
> > > };
> > >
> > > int main(void)
> > > {
> > >       unsigned long i = 0;
> > >       int fd = -1;
> > >       struct ion_allocation_data data = {
> > >               .len = 0x13f65d8c,
> > >               .heap_id_mask = 1,
> > >               .flags = 0,
> > >               .fd = -1,
> > >               .unused = 0
> > >       };
> > >
> > >       fd = open("/dev/ion", 0);
> > >       if (fd == -1) {
> > >               perror("[-] open /dev/ion");
> > >               return 1;
> > >       }
> > >
> > >       while (1) {
> > >               printf("iter %lu\n", i);
> > >               ioctl(fd, ION_IOC_ALLOC, &data);
> > >               i++;
> > >       }
> > >
> > >       return 0;
> > > }
> > >
> > >
> > > I looked through the code of ion_alloc() and didn't find any limit checks.
> > > Is it currently possible to limit ION kernel allocations for some process?
> > >
> > > If not, is it a right idea to do that?
> > > Thanks!
> > >
> >
> > Yes, I do think that's the right approach. We're working on moving Ion
> > out of staging and this is something I mentioned to John Stultz. I don't
> > think we've thought too hard about how to do the actual limiting so
> > suggestions are welcome.
>
> In part the dmabuf heaps allow for separate heap devices, so we can
> have finer grained permissions to the specific heaps.  But that
> doesn't provide any controls on how much memory one process could
> allocate using the device if it has permission.
>
> I suspect the same issue is present with any of the dmabuf exporters
> (gpu/display drivers, etc), so this is less of an ION/dmabuf heap
> issue and more of a dmabuf core accounting issue.
>

Also, do unmapped memfd buffers have similar accounting issues?

thanks
-john
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

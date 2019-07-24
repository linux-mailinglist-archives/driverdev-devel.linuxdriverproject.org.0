Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A904273DAC
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 22:19:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0FBF521552;
	Wed, 24 Jul 2019 20:19:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fnED6XcBByNk; Wed, 24 Jul 2019 20:19:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9F14320513;
	Wed, 24 Jul 2019 20:19:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B8F791BF97F
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 20:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B37B785550
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 20:19:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HJ01qpy-U6gC for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 20:19:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A2FB885078
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 20:19:02 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id w9so34219140wmd.1
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 13:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uCyHvJVkRZumARLm11LdjYU2wgRDrjk7Xpd2Pm/4CUM=;
 b=MMFhBM5Pt5Bu3rS3QrPnpjTF3l1IJpk1QmQmjGaPFr5PvBQwNLRpzX+5/gr6aNSdCZ
 vvEAbsdi+zHpVh40gCBAf96lB7k/+P16YkMaax7BCa3VCjo20+sJY/pvmfXxP7jDAlzc
 AWhRW16LHsMMAlx9kYR+te6xxCZz9DYQkUb9cIX+Eig3VWNu65JSMjOmny0yf4uDVhLR
 DU2YrYMoOP8itf1qPvplk8lYCeENSprEH141M2gm8iDVRP/7Xr9nbG+sdjrPUHqfrU+6
 3k8U622iHi2XDVcsN54oFxmrEi6aL45ohjJEk/gDD0CN++uyO007eaD6Cs6hCiJ9dklQ
 2oNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uCyHvJVkRZumARLm11LdjYU2wgRDrjk7Xpd2Pm/4CUM=;
 b=o2+EVbNlO+Pt7x0ACnV+xVXY/2Dbn+CcFSNpb0f+xMelQye4z0iGJPrdLAlS+eNxgX
 Cv7Qxc/RqhAPulUH+QlbnSNz0htJLW9bDTywCwXZ8inonOSh+oBN5NRucSlx1Y4CAiPy
 y4oG8FAJB/Haw57oThCC7usCJ9459eLWpTVBt/J4OOk5vmNfdAVy5g48eLREsBpQdxXT
 tCgCsWqAAajSyPd9CNBdEV7R80C+mEpOzjy3oQNuwkFnPx8rUkbQDtItgJY2T6K3ft4h
 nmX9S/oXZHUfRcJJhozEezH/EKeRlhoeLFovudIC/41VfuUbqx/TJQGcy1AGHxkKdAuZ
 9g4Q==
X-Gm-Message-State: APjAAAVsXeqLSwUIfV8XDH6jgq06P7fXglqztD4gor9jXCI1EZmOa0iC
 iMnCnB2oZ34iT0tJyH/OOrGkz2ZNkUQKwE2VXOoLKA==
X-Google-Smtp-Source: APXvYqzne6wuqU7LConXTs0S6lFIYeqa69IIJz0V4W6ONH7N7hOznm+a/z9PghQX0bLW04gOZC7ziRyCGieZewzto2s=
X-Received: by 2002:a1c:d10c:: with SMTP id i12mr75821649wmg.152.1563999540296; 
 Wed, 24 Jul 2019 13:19:00 -0700 (PDT)
MIME-Version: 1.0
References: <3b922aa4-c6d4-e4a4-766d-f324ff77f7b5@linux.com>
 <40f8b7d8-fafa-ad99-34fb-9c63e34917e2@redhat.com>
In-Reply-To: <40f8b7d8-fafa-ad99-34fb-9c63e34917e2@redhat.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 24 Jul 2019 13:18:47 -0700
Message-ID: <CALAqxLU199ATrMFa2ARmHOZ3K6ZnOuDLSAqNrTfwOWJaYiW7Yg@mail.gmail.com>
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

On Wed, Jul 24, 2019 at 12:36 PM Laura Abbott <labbott@redhat.com> wrote:
>
> On 7/17/19 12:31 PM, Alexander Popov wrote:
> > Hello!
> >
> > The syzkaller [1] has a trouble with fuzzing the Linux kernel with ION Memory
> > Allocator.
> >
> > Syzkaller uses several methods [2] to limit memory consumption of the userspace
> > processes calling the syscalls for testing the kernel:
> >   - setrlimit(),
> >   - cgroups,
> >   - various sysctl.
> > But these methods don't work for ION Memory Allocator, so any userspace process
> > that has access to /dev/ion can bring the system to the out-of-memory state.
> >
> > An example of a program doing that:
> >
> >
> > #include <sys/types.h>
> > #include <sys/stat.h>
> > #include <fcntl.h>
> > #include <stdio.h>
> > #include <linux/types.h>
> > #include <sys/ioctl.h>
> >
> > #define ION_IOC_MAGIC         'I'
> > #define ION_IOC_ALLOC         _IOWR(ION_IOC_MAGIC, 0, \
> >                                     struct ion_allocation_data)
> >
> > struct ion_allocation_data {
> >       __u64 len;
> >       __u32 heap_id_mask;
> >       __u32 flags;
> >       __u32 fd;
> >       __u32 unused;
> > };
> >
> > int main(void)
> > {
> >       unsigned long i = 0;
> >       int fd = -1;
> >       struct ion_allocation_data data = {
> >               .len = 0x13f65d8c,
> >               .heap_id_mask = 1,
> >               .flags = 0,
> >               .fd = -1,
> >               .unused = 0
> >       };
> >
> >       fd = open("/dev/ion", 0);
> >       if (fd == -1) {
> >               perror("[-] open /dev/ion");
> >               return 1;
> >       }
> >
> >       while (1) {
> >               printf("iter %lu\n", i);
> >               ioctl(fd, ION_IOC_ALLOC, &data);
> >               i++;
> >       }
> >
> >       return 0;
> > }
> >
> >
> > I looked through the code of ion_alloc() and didn't find any limit checks.
> > Is it currently possible to limit ION kernel allocations for some process?
> >
> > If not, is it a right idea to do that?
> > Thanks!
> >
>
> Yes, I do think that's the right approach. We're working on moving Ion
> out of staging and this is something I mentioned to John Stultz. I don't
> think we've thought too hard about how to do the actual limiting so
> suggestions are welcome.

In part the dmabuf heaps allow for separate heap devices, so we can
have finer grained permissions to the specific heaps.  But that
doesn't provide any controls on how much memory one process could
allocate using the device if it has permission.

I suspect the same issue is present with any of the dmabuf exporters
(gpu/display drivers, etc), so this is less of an ION/dmabuf heap
issue and more of a dmabuf core accounting issue.

Another practical complication is that with Android these days, I
believe the gralloc code lives in the HIDL-ized
android.hardware.graphics.allocator@2.0-service HAL, which does the
buffer allocations on behalf of requests sent over the binder IPC
interface. So with all dma-buf allocations effectively going through
that single process, I'm not sure we would want to put per-process
limits on the allocator.  Instead, I suspect we'd want the memory
covered by the dmabuf to be accounted against processes that have the
dmabuf fd still open?

I know Android has some logic with their memtrack HAL to I believe try
to do accounting of gpu memory against various processes, but I've not
looked at that in detail recently.

Todd/Joel: Any input here?

thanks
-john
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

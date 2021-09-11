Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0881C4078E6
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Sep 2021 16:41:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D47BD607F6;
	Sat, 11 Sep 2021 14:41:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3xqZ6hBV3xgO; Sat, 11 Sep 2021 14:41:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2B64607D0;
	Sat, 11 Sep 2021 14:41:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D6E6D1BF834
 for <devel@linuxdriverproject.org>; Sat, 11 Sep 2021 14:41:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C60E883503
 for <devel@linuxdriverproject.org>; Sat, 11 Sep 2021 14:41:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lezpqF4Fj-sI for <devel@linuxdriverproject.org>;
 Sat, 11 Sep 2021 14:41:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com
 [IPv6:2607:f8b0:4864:20::330])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BA9F8834F7
 for <devel@driverdev.osuosl.org>; Sat, 11 Sep 2021 14:41:04 +0000 (UTC)
Received: by mail-ot1-x330.google.com with SMTP id
 i8-20020a056830402800b0051afc3e373aso6582553ots.5
 for <devel@driverdev.osuosl.org>; Sat, 11 Sep 2021 07:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fFjRCOC/yLi1rkOQD0FElAa5I0Sz2Wl7RZeK3u/D954=;
 b=UdVklislpmBiSo+9ipSnPeqoCSKJ9yKVW1ad//vjTOVNZtiIGGzIEuN8vBKqCmkGYL
 XRzmltOHuPAdFZuBBKavF1gCfk7vcoCuL1RBM0a7A6wiZxFu3/ofEefTMXiXSgjsj5v4
 CFoJZrCrIShCLpJf96yb3qJcRYGqrGNbKsPOuugWsV0wEuOZlVSqc88rTQ9lZ3AFycAh
 m9/42xedq8IilU3J/J7wJsZ/vcQyAFw4TokGQcS1bybm6ZHZe5oKmwutMh/Wyxru3BNM
 aEdIt7EEDVo6ET/mWwmjNjGhQa3N8ZMptBfikfAOqU40cGrugeMg4sGtOgBUrG2X1S7f
 N0sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fFjRCOC/yLi1rkOQD0FElAa5I0Sz2Wl7RZeK3u/D954=;
 b=NKuPLI2+gAEi1TWyyWlQGDVw/A42VQcwz94hXn0K4Fp+qnfcT4C9AxJpRlZEJz09kq
 L17EpFOsv1Pbf3sPsuQcGGfeLFeJjSwZ2ZU315mPYFgPadALxLID7vhxhmnkzj5kBrQT
 rqB9zZkKyQ+K/wfcDRTQXNUSsxp8kiGxYQ/esj1Iuhfk04VTo41+IDjG4mb1MmofeEWE
 UWv9uIX0WPCF37LqoiJTYCNDvO39ykrnllKOzfPvBf8N5LPT9iSceJcBLJyo2jn1ZlnP
 uNeaZbN6Krm7IdYeXi8pKFvcntCdcdZ7AsSLHKxDDIOd8FhyPZMUEx1CdFpK8tiD1sRJ
 KyRQ==
X-Gm-Message-State: AOAM532OORHrkqCiP1MMYYP5X5dvmCpU66MoeuSNfXGSlXW9yLlgwdZ5
 oJfQOGLv37iI2j4c71mn8+u8J5qNFJsKWL3ZwwCSRkNlYQipqQ==
X-Google-Smtp-Source: ABdhPJyb/VDkPtrOOe6KvXMO7lY1GGIeZDVTP+AwOhHlUU9AYJfyu4SeH9eQz9SuTu1EOyKWpMRt3YQjWENKOlMAeXA=
X-Received: by 2002:a9d:74c5:: with SMTP id a5mr2569146otl.205.1631371263915; 
 Sat, 11 Sep 2021 07:41:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210911112115.47202-1-cs.os.kernel@gmail.com>
 <YTyY6ZALBhCm47T6@kroah.com>
 <CA+1SViD_my-MPyqXcQ2T=zxF8014u6N-n2Fqcbi9BJPfo3KaTA@mail.gmail.com>
In-Reply-To: <CA+1SViD_my-MPyqXcQ2T=zxF8014u6N-n2Fqcbi9BJPfo3KaTA@mail.gmail.com>
From: Cheng Chao <cs.os.kernel@gmail.com>
Date: Sat, 11 Sep 2021 22:40:52 +0800
Message-ID: <CA+1SViA9PN_uoykBtjukYGd-09=peWFCB147iSNnUMwtoT7b0w@mail.gmail.com>
Subject: Re: [PATCH] [PATCH 4.9] staging: android: ion: fix page is NULL
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, arve@android.com, stable@vger.kernel.org,
 riandrews@android.com, labbott@redhat.com,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

the bug has been introduced by the patch:
   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/drivers/staging/android/ion/ion_system_heap.c?h=v4.9.282&id=e7f63771b60e7802c5a9b437c5ab1a8e33a0bb35

On Sat, Sep 11, 2021 at 10:20 PM Cheng Chao <cs.os.kernel@gmail.com> wrote:
>
> for longterm v4.4.283, the code has checked if (!page)
>    https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/staging/android/ion/ion_system_heap.c?h=v4.4.283
>
>
> static struct page *alloc_buffer_page(struct ion_system_heap *heap,
>      struct ion_buffer *buffer,
>      unsigned long order)
> {
> ...
> if (!cached) {
> page = ion_page_pool_alloc(pool);
> } else {
> ...
> page = alloc_pages(gfp_flags | __GFP_COMP, order);
> if (!page)    <---
>    return NULL; <---
>
> ion_pages_sync_for_device(NULL, page, PAGE_SIZE << order,
> ...
> }
>
> ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
> for longterm v4.14.246, has no ion_pages_sync_for_device after
> ion_page_pool_alloc
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/staging/android/ion/ion_system_heap.c?h=v4.14.246
>
>
> static struct page *alloc_buffer_page(struct ion_system_heap *heap,
>      struct ion_buffer *buffer,
>      unsigned long order)
> {
> ...
> if (!cached)
> pool = heap->uncached_pools[order_to_index(order)];
> else
> pool = heap->cached_pools[order_to_index(order)];
>
> page = ion_page_pool_alloc(pool);
>
> return page;
> }
>
> ----------------------------------------------------------------------------------------------------------------------------------------------------------
> after longterm v4.19.206(include),
>
> static struct page *alloc_buffer_page(struct ion_system_heap *heap,
>      struct ion_buffer *buffer,
>      unsigned long order)
> {
> struct ion_page_pool *pool = heap->pools[order_to_index(order)];
>
> return ion_page_pool_alloc(pool);
> }
>
> On Sat, Sep 11, 2021 at 7:54 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Sat, Sep 11, 2021 at 07:21:15PM +0800, Cheng Chao wrote:
> > > kernel panic is here:
> > >
> > > Unable to handle kernel paging request at virtual address b0380000
> > > pgd = d9d94000
> > > [b0380000] *pgd=00000000
> > > Internal error: Oops: 2805 [#1] PREEMPT SMP ARM
> > > ...
> > > task: daa2dd00 task.stack: da194000
> > > PC is at v7_dma_clean_range+0x1c/0x34
> > > LR is at arm_dma_sync_single_for_device+0x44/0x58
> > > pc : [<c011aa0c>]    lr : [<c011645c>]    psr: 200f0013
> > > sp : da195da0  ip : dc1f9000  fp : c1043dc4
> > > r10: 00000000  r9 : c16f1f58  r8 : 00000001
> > > r7 : c1621f94  r6 : c0116418  r5 : 00000000  r4 : c011aa58
> > > r3 : 0000003f  r2 : 00000040  r1 : b0480000  r0 : b0380000
> > > Flags: nzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
> > > Control: 10c5383d  Table: 19d9406a  DAC: 00000051
> > > ...
> > > [<c011aa0c>] (v7_dma_clean_range) from [<c011645c>] (arm_dma_sync_single_for_device+0x44/0x58)
> > > [<c011645c>] (arm_dma_sync_single_for_device) from [<c0117088>] (arm_dma_sync_sg_for_device+0x50/0x7c)
> > > [<c0117088>] (arm_dma_sync_sg_for_device) from [<c0c033c4>] (ion_pages_sync_for_device+0xb0/0xec)
> > > [<c0c033c4>] (ion_pages_sync_for_device) from [<c0c054ac>] (ion_system_heap_allocate+0x2a0/0x2e0)
> > > [<c0c054ac>] (ion_system_heap_allocate) from [<c0c02c78>] (ion_alloc+0x12c/0x494)
> > > [<c0c02c78>] (ion_alloc) from [<c0c03eac>] (ion_ioctl+0x510/0x63c)
> > > [<c0c03eac>] (ion_ioctl) from [<c027c4b0>] (do_vfs_ioctl+0xa8/0x9b4)
> > > [<c027c4b0>] (do_vfs_ioctl) from [<c027ce28>] (SyS_ioctl+0x6c/0x7c)
> > > [<c027ce28>] (SyS_ioctl) from [<c0108a40>] (ret_fast_syscall+0x0/0x48)
> > > Code: e3a02004 e1a02312 e2423001 e1c00003 (ee070f3a)
> > > ---[ end trace 89278304932c0e87 ]---
> > > Kernel panic - not syncing: Fatal exception
> > >
> > > Signed-off-by: Cheng Chao <cs.os.kernel@gmail.com>
> > > ---
> > >  drivers/staging/android/ion/ion_system_heap.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
> > > index 22c481f2ae4f..2a35b99cf628 100644
> > > --- a/drivers/staging/android/ion/ion_system_heap.c
> > > +++ b/drivers/staging/android/ion/ion_system_heap.c
> > > @@ -75,7 +75,7 @@ static struct page *alloc_buffer_page(struct ion_system_heap *heap,
> > >
> > >       page = ion_page_pool_alloc(pool);
> > >
> > > -     if (cached)
> > > +     if (page && cached)
> > >               ion_pages_sync_for_device(NULL, page, PAGE_SIZE << order,
> > >                                         DMA_BIDIRECTIONAL);
> > >       return page;
> > > --
> > > 2.26.3
> > >
> >
> > Why is this just a 4.9 patch?  Ion didn't get removed until 5.11, so
> > wouldn't this be an issue for anything 5.10 and older?
> >
> > thanks,
> >
> > greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

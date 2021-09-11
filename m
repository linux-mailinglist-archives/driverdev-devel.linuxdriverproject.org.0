Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 215064078C6
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Sep 2021 16:21:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8ACDA607F5;
	Sat, 11 Sep 2021 14:21:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yanqAnkDF6ng; Sat, 11 Sep 2021 14:21:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8F49607AE;
	Sat, 11 Sep 2021 14:21:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2187A1BF834
 for <devel@linuxdriverproject.org>; Sat, 11 Sep 2021 14:20:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1107D82EAD
 for <devel@linuxdriverproject.org>; Sat, 11 Sep 2021 14:20:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jxTWWADmH4tw for <devel@linuxdriverproject.org>;
 Sat, 11 Sep 2021 14:20:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com
 [IPv6:2607:f8b0:4864:20::330])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1EC7582DDE
 for <devel@driverdev.osuosl.org>; Sat, 11 Sep 2021 14:20:53 +0000 (UTC)
Received: by mail-ot1-x330.google.com with SMTP id
 o16-20020a9d2210000000b0051b1e56c98fso6530982ota.8
 for <devel@driverdev.osuosl.org>; Sat, 11 Sep 2021 07:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TchOSq2FTehHU0M+irpNDU0xQwJtVSPxAFKgUmgWFfU=;
 b=iQEbvzlw3i5qo/wH8AFKLFIo1UXb+4bBMB6IEtYhe8+5DqkZnPetiH0Hzx2tEFAIvE
 ArWY7chcr3JhRJYbrGe2FsCSeymjD7gecRhV4bIHB5Z7NbJCYLPts455IwMzsOL2H+II
 tsSSjpAGY5Ci9mmhi5Ds3K0PRaHOkMk0xnBya6rN7ZHVKjI7lRvU+NWIdy8yt5njR86x
 L9xZUR24M9qyubgwIBrVdleaJ9yJyYDItydWQsYUwxnL3jkRZgFvY5IpiNCIWMfWQFJC
 eVA/alOmKmNVKPHkh5v+43cI37rG+yFpxqKGXEayhMWJXsMr3SaMlSeGJy2as1oNWjv3
 xXgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TchOSq2FTehHU0M+irpNDU0xQwJtVSPxAFKgUmgWFfU=;
 b=nUHYhU2FuK5gZsMR62nRJUYwOYnScJcbtgnHiMYlVemZ1g7D5prT3DiiYqScfs1pZi
 xZQ1SNyavdfG/tEhJhjxh8kF64HfpMLQPwNc1wQsdGa8Il/F92WSmbT6hhtwUnhTQd1e
 WzGoZWuMR6fZSwdq79XtjPXKkaIZpCSmgRNrNXzh8DZyNgz1f0WCtt7oOpkrulpJU51R
 JD8QULnfJFTIKwZDNVetnZas321LmXCqitS819BK/1zUImO2GdC8EjbA8/XWceW87Gh6
 YFUa8Nho7HFznXC3dDQ1WXP0vcp5f+qdLs7G4PLDohxNo99EBv55u+hrQpIHrn92nbaW
 D7Ig==
X-Gm-Message-State: AOAM532Fw2QPhalQXH7PURrNphZfynwCco5j13Yes44PSyyU5ELyZ42k
 4VjMuvRP+l3r8n+wYJn+Glxz6f1ByVO0jdlP1ls=
X-Google-Smtp-Source: ABdhPJzC2jwRJoXNC7JwqUXAFisW+Z2wca2sEukdfLBpcmFYRYGZr6QQ0m9bHZOz093lJTRIi1z3E03kw1L5i6rxfy8=
X-Received: by 2002:a9d:718a:: with SMTP id o10mr2448448otj.376.1631370052220; 
 Sat, 11 Sep 2021 07:20:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210911112115.47202-1-cs.os.kernel@gmail.com>
 <YTyY6ZALBhCm47T6@kroah.com>
In-Reply-To: <YTyY6ZALBhCm47T6@kroah.com>
From: Cheng Chao <cs.os.kernel@gmail.com>
Date: Sat, 11 Sep 2021 22:20:40 +0800
Message-ID: <CA+1SViD_my-MPyqXcQ2T=zxF8014u6N-n2Fqcbi9BJPfo3KaTA@mail.gmail.com>
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

for longterm v4.4.283, the code has checked if (!page)
   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/staging/android/ion/ion_system_heap.c?h=v4.4.283


static struct page *alloc_buffer_page(struct ion_system_heap *heap,
     struct ion_buffer *buffer,
     unsigned long order)
{
...
if (!cached) {
page = ion_page_pool_alloc(pool);
} else {
...
page = alloc_pages(gfp_flags | __GFP_COMP, order);
if (!page)    <---
   return NULL; <---

ion_pages_sync_for_device(NULL, page, PAGE_SIZE << order,
...
}

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
for longterm v4.14.246, has no ion_pages_sync_for_device after
ion_page_pool_alloc
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/drivers/staging/android/ion/ion_system_heap.c?h=v4.14.246


static struct page *alloc_buffer_page(struct ion_system_heap *heap,
     struct ion_buffer *buffer,
     unsigned long order)
{
...
if (!cached)
pool = heap->uncached_pools[order_to_index(order)];
else
pool = heap->cached_pools[order_to_index(order)];

page = ion_page_pool_alloc(pool);

return page;
}

----------------------------------------------------------------------------------------------------------------------------------------------------------
after longterm v4.19.206(include),

static struct page *alloc_buffer_page(struct ion_system_heap *heap,
     struct ion_buffer *buffer,
     unsigned long order)
{
struct ion_page_pool *pool = heap->pools[order_to_index(order)];

return ion_page_pool_alloc(pool);
}

On Sat, Sep 11, 2021 at 7:54 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sat, Sep 11, 2021 at 07:21:15PM +0800, Cheng Chao wrote:
> > kernel panic is here:
> >
> > Unable to handle kernel paging request at virtual address b0380000
> > pgd = d9d94000
> > [b0380000] *pgd=00000000
> > Internal error: Oops: 2805 [#1] PREEMPT SMP ARM
> > ...
> > task: daa2dd00 task.stack: da194000
> > PC is at v7_dma_clean_range+0x1c/0x34
> > LR is at arm_dma_sync_single_for_device+0x44/0x58
> > pc : [<c011aa0c>]    lr : [<c011645c>]    psr: 200f0013
> > sp : da195da0  ip : dc1f9000  fp : c1043dc4
> > r10: 00000000  r9 : c16f1f58  r8 : 00000001
> > r7 : c1621f94  r6 : c0116418  r5 : 00000000  r4 : c011aa58
> > r3 : 0000003f  r2 : 00000040  r1 : b0480000  r0 : b0380000
> > Flags: nzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
> > Control: 10c5383d  Table: 19d9406a  DAC: 00000051
> > ...
> > [<c011aa0c>] (v7_dma_clean_range) from [<c011645c>] (arm_dma_sync_single_for_device+0x44/0x58)
> > [<c011645c>] (arm_dma_sync_single_for_device) from [<c0117088>] (arm_dma_sync_sg_for_device+0x50/0x7c)
> > [<c0117088>] (arm_dma_sync_sg_for_device) from [<c0c033c4>] (ion_pages_sync_for_device+0xb0/0xec)
> > [<c0c033c4>] (ion_pages_sync_for_device) from [<c0c054ac>] (ion_system_heap_allocate+0x2a0/0x2e0)
> > [<c0c054ac>] (ion_system_heap_allocate) from [<c0c02c78>] (ion_alloc+0x12c/0x494)
> > [<c0c02c78>] (ion_alloc) from [<c0c03eac>] (ion_ioctl+0x510/0x63c)
> > [<c0c03eac>] (ion_ioctl) from [<c027c4b0>] (do_vfs_ioctl+0xa8/0x9b4)
> > [<c027c4b0>] (do_vfs_ioctl) from [<c027ce28>] (SyS_ioctl+0x6c/0x7c)
> > [<c027ce28>] (SyS_ioctl) from [<c0108a40>] (ret_fast_syscall+0x0/0x48)
> > Code: e3a02004 e1a02312 e2423001 e1c00003 (ee070f3a)
> > ---[ end trace 89278304932c0e87 ]---
> > Kernel panic - not syncing: Fatal exception
> >
> > Signed-off-by: Cheng Chao <cs.os.kernel@gmail.com>
> > ---
> >  drivers/staging/android/ion/ion_system_heap.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
> > index 22c481f2ae4f..2a35b99cf628 100644
> > --- a/drivers/staging/android/ion/ion_system_heap.c
> > +++ b/drivers/staging/android/ion/ion_system_heap.c
> > @@ -75,7 +75,7 @@ static struct page *alloc_buffer_page(struct ion_system_heap *heap,
> >
> >       page = ion_page_pool_alloc(pool);
> >
> > -     if (cached)
> > +     if (page && cached)
> >               ion_pages_sync_for_device(NULL, page, PAGE_SIZE << order,
> >                                         DMA_BIDIRECTIONAL);
> >       return page;
> > --
> > 2.26.3
> >
>
> Why is this just a 4.9 patch?  Ion didn't get removed until 5.11, so
> wouldn't this be an issue for anything 5.10 and older?
>
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

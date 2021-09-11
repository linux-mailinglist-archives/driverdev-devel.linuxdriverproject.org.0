Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30220407652
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Sep 2021 13:54:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A716340678;
	Sat, 11 Sep 2021 11:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ujcmh_f4iCLA; Sat, 11 Sep 2021 11:54:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8E0040346;
	Sat, 11 Sep 2021 11:54:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 06A571BF393
 for <devel@linuxdriverproject.org>; Sat, 11 Sep 2021 11:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E912240240
 for <devel@linuxdriverproject.org>; Sat, 11 Sep 2021 11:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dHmnzJhiHtkb for <devel@linuxdriverproject.org>;
 Sat, 11 Sep 2021 11:54:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3121F4011A
 for <devel@driverdev.osuosl.org>; Sat, 11 Sep 2021 11:54:20 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 457D86108B;
 Sat, 11 Sep 2021 11:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1631361259;
 bh=0PyyY5XyWadYSWBgfq6Ct159vY/Gcv1URpHd7P9SiwU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G4QmRNV4Y7pYdCEABSmKhou4oo9Tna/Bx4yCRyRuQvCpL5vCQ78offVHM5nOYh6FI
 QgsvaiharPWW5R9YmsMIoSY75JMenTaYxSgffXgADwaPmSUDWiJXu41xWiFgmiYxEF
 E5ltuUBlFfZvwHEYjBXxZuP76Ltybg19+4xyj9w8=
Date: Sat, 11 Sep 2021 13:54:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Cheng Chao <cs.os.kernel@gmail.com>
Subject: Re: [PATCH] [PATCH 4.9] staging: android: ion: fix page is NULL
Message-ID: <YTyY6ZALBhCm47T6@kroah.com>
References: <20210911112115.47202-1-cs.os.kernel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210911112115.47202-1-cs.os.kernel@gmail.com>
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
 riandrews@android.com, labbott@redhat.com, sumit.semwal@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Sep 11, 2021 at 07:21:15PM +0800, Cheng Chao wrote:
> kernel panic is here:
> 
> Unable to handle kernel paging request at virtual address b0380000
> pgd = d9d94000
> [b0380000] *pgd=00000000
> Internal error: Oops: 2805 [#1] PREEMPT SMP ARM
> ...
> task: daa2dd00 task.stack: da194000
> PC is at v7_dma_clean_range+0x1c/0x34
> LR is at arm_dma_sync_single_for_device+0x44/0x58
> pc : [<c011aa0c>]    lr : [<c011645c>]    psr: 200f0013
> sp : da195da0  ip : dc1f9000  fp : c1043dc4
> r10: 00000000  r9 : c16f1f58  r8 : 00000001
> r7 : c1621f94  r6 : c0116418  r5 : 00000000  r4 : c011aa58
> r3 : 0000003f  r2 : 00000040  r1 : b0480000  r0 : b0380000
> Flags: nzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
> Control: 10c5383d  Table: 19d9406a  DAC: 00000051
> ...
> [<c011aa0c>] (v7_dma_clean_range) from [<c011645c>] (arm_dma_sync_single_for_device+0x44/0x58)
> [<c011645c>] (arm_dma_sync_single_for_device) from [<c0117088>] (arm_dma_sync_sg_for_device+0x50/0x7c)
> [<c0117088>] (arm_dma_sync_sg_for_device) from [<c0c033c4>] (ion_pages_sync_for_device+0xb0/0xec)
> [<c0c033c4>] (ion_pages_sync_for_device) from [<c0c054ac>] (ion_system_heap_allocate+0x2a0/0x2e0)
> [<c0c054ac>] (ion_system_heap_allocate) from [<c0c02c78>] (ion_alloc+0x12c/0x494)
> [<c0c02c78>] (ion_alloc) from [<c0c03eac>] (ion_ioctl+0x510/0x63c)
> [<c0c03eac>] (ion_ioctl) from [<c027c4b0>] (do_vfs_ioctl+0xa8/0x9b4)
> [<c027c4b0>] (do_vfs_ioctl) from [<c027ce28>] (SyS_ioctl+0x6c/0x7c)
> [<c027ce28>] (SyS_ioctl) from [<c0108a40>] (ret_fast_syscall+0x0/0x48)
> Code: e3a02004 e1a02312 e2423001 e1c00003 (ee070f3a)
> ---[ end trace 89278304932c0e87 ]---
> Kernel panic - not syncing: Fatal exception
> 
> Signed-off-by: Cheng Chao <cs.os.kernel@gmail.com>
> ---
>  drivers/staging/android/ion/ion_system_heap.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
> index 22c481f2ae4f..2a35b99cf628 100644
> --- a/drivers/staging/android/ion/ion_system_heap.c
> +++ b/drivers/staging/android/ion/ion_system_heap.c
> @@ -75,7 +75,7 @@ static struct page *alloc_buffer_page(struct ion_system_heap *heap,
>  
>  	page = ion_page_pool_alloc(pool);
>  
> -	if (cached)
> +	if (page && cached)
>  		ion_pages_sync_for_device(NULL, page, PAGE_SIZE << order,
>  					  DMA_BIDIRECTIONAL);
>  	return page;
> -- 
> 2.26.3
> 

Why is this just a 4.9 patch?  Ion didn't get removed until 5.11, so
wouldn't this be an issue for anything 5.10 and older?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67964C142B
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Sep 2019 12:13:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0545187465;
	Sun, 29 Sep 2019 10:13:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gokn+6d2CC6P; Sun, 29 Sep 2019 10:13:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F81C85EF9;
	Sun, 29 Sep 2019 10:13:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C12A1BF38B
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 10:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 789828610F
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 10:12:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oAS1mH9jjLuZ for <devel@linuxdriverproject.org>;
 Sun, 29 Sep 2019 10:12:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E08BC85EF9
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 10:12:57 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91A76207FA;
 Sun, 29 Sep 2019 10:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569751977;
 bh=iA59w1NaMEWbdMwVd9RqjRIthDIUAHLMrP7xRK9GzCM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UsimsHhgmGlkho9Zjk2InZF3otI2sYSWm269oaYYRMVvh3u8CR0xguJunZyBa0UxB
 3FDThahbn9TSTlk93/fEXsvg5XkBgKbbrKkyd/dSytBUu+/o7a4kEhQuuI/jL3Vztg
 6VPLj7yBmwHhmYUr0BBy+/qBPnRldE5+7QGDRu8U=
Date: Sun, 29 Sep 2019 12:12:54 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: jun.zhang@intel.com
Subject: Re: [PATCH] ion_system_heap: support X86 archtecture
Message-ID: <20190929101254.GA1907778@kroah.com>
References: <20190929072841.14848-1-jun.zhang@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190929072841.14848-1-jun.zhang@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, Bai@osuosl.org,
 Jie A <jie.a.bai@intel.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, he@osuosl.org,
 arve@android.com, bo <bo.he@intel.com>, joel@joelfernandes.org,
 maco@android.com, sumit.semwal@linaro.org, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 29, 2019 at 03:28:41PM +0800, jun.zhang@intel.com wrote:
> From: zhang jun <jun.zhang@intel.com>
> 
> we see tons of warning like:
> [   45.846872] x86/PAT: NDK MediaCodec_:3753 map pfn RAM range req
> write-combining for [mem 0x1e7a80000-0x1e7a87fff], got write-back
> [   45.848827] x86/PAT: .vorbis.decoder:4088 map pfn RAM range req
> write-combining for [mem 0x1e7a58000-0x1e7a58fff], got write-back
> [   45.848875] x86/PAT: NDK MediaCodec_:3753 map pfn RAM range req
> write-combining for [mem 0x1e7a48000-0x1e7a4ffff], got write-back
> [   45.849403] x86/PAT: .vorbis.decoder:4088 map pfn RAM range
> req write-combining for [mem 0x1e7a70000-0x1e7a70fff], got write-back
> 
> check the kernel Documentation/x86/pat.txt, it says:
> A. Exporting pages to users with remap_pfn_range, io_remap_pfn_range,
> vm_insert_pfn
> Drivers wanting to export some pages to userspace do it by using
> mmap interface and a combination of
> 1) pgprot_noncached()
> 2) io_remap_pfn_range() or remap_pfn_range() or vm_insert_pfn()
> With PAT support, a new API pgprot_writecombine is being added.
> So, drivers can continue to use the above sequence, with either
> pgprot_noncached() or pgprot_writecombine() in step 1, followed by step 2.
> 
> In addition, step 2 internally tracks the region as UC or WC in
> memtype list in order to ensure no conflicting mapping.
> 
> Note that this set of APIs only works with IO (non RAM) regions.
> If driver ants to export a RAM region, it has to do set_memory_uc() or
> set_memory_wc() as step 0 above and also track the usage of those pages
> and use set_memory_wb() before the page is freed to free pool.
> 
> the fix follow the pat document, do set_memory_wc() as step 0 and
> use the set_memory_wb() before the page is freed.
> 
> Signed-off-by: he, bo <bo.he@intel.com>
> Signed-off-by: zhang jun <jun.zhang@intel.com>
> Signed-off-by: Bai, Jie A <jie.a.bai@intel.com>
> ---
>  drivers/staging/android/ion/ion_system_heap.c | 28 ++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
> index b83a1d16bd89..d298b8194820 100644
> --- a/drivers/staging/android/ion/ion_system_heap.c
> +++ b/drivers/staging/android/ion/ion_system_heap.c
> @@ -13,6 +13,7 @@
>  #include <linux/scatterlist.h>
>  #include <linux/slab.h>
>  #include <linux/vmalloc.h>
> +#include <asm/set_memory.h>
>  
>  #include "ion.h"
>  
> @@ -134,6 +135,13 @@ static int ion_system_heap_allocate(struct ion_heap *heap,
>  	sg = table->sgl;
>  	list_for_each_entry_safe(page, tmp_page, &pages, lru) {
>  		sg_set_page(sg, page, page_size(page), 0);
> +
> +#ifdef CONFIG_X86
> +	if (!(buffer->flags & ION_FLAG_CACHED))
> +		set_memory_wc((unsigned long)page_address(sg_page(sg)),
> +			      PAGE_ALIGN(sg->length) >> PAGE_SHIFT);
> +#endif

There is no way to do this without these #ifdefs?  That feels odd, why
can't you just always test for this?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

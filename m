Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D009C1986
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Sep 2019 23:05:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4B63020791;
	Sun, 29 Sep 2019 21:05:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RR-saqsyTXef; Sun, 29 Sep 2019 21:05:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 703D9204AD;
	Sun, 29 Sep 2019 21:05:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 846301BF580
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 21:04:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6BAA4820FC
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 21:04:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J4kL+pE0JYY9 for <devel@linuxdriverproject.org>;
 Sun, 29 Sep 2019 21:04:11 +0000 (UTC)
X-Greylist: delayed 00:06:55 by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6649481F70
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 21:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1569791050;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5jH4f4LZDZqaaEScj6lnIVv5jlaNTZBJty54S6GxOfw=;
 b=gFf7pVdzCGCpf7hEGeBJtqYQbROlCYQza8Zp4/mh0UI1beIWjKfcs0M2/ZL4BpQ76a6WqP
 Gmai4v94lYU620rqD7wn7NdNudT+i2fZtkO6o9apCreIhISmjQjpHV/zohyPMbAffjIEwg
 bwSPz9d5ugd4md6vS10kqj9NAILJN8U=
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com
 [209.85.221.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-174-fEjVo_-ONmK2cP9qfh0qEA-1; Sun, 29 Sep 2019 16:57:12 -0400
Received: by mail-vk1-f198.google.com with SMTP id h145so5747963vke.15
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 13:57:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gFvDTt7rQrsZZ2B9OPwXJlEOA+EfFx47BQVi5RhehjE=;
 b=gVkNdhRkoYMAKBWwZ8o0mADjOf699g3Vf+aoSczFtya4g/MpNf8ta0cP6ztj6w1k90
 ijUA3WlM/EnW1Rw0jAOs+HbU1/UFbx+eTvMh+1iZv/fSqH2VjPt6xZ4TDPtst+EBFReE
 /ImdlWM+TB+S0hfc+l7vq8oM5PRZpwvIKhoc382OUbSFIAzU0uqKmKLEzl8sxAs5YXBb
 /HrBtX9vgaH4K+RGbcreOi3gZ+fF3ikcQjjgY8+pOPT1IfPGuHvLod3p/wf1doXcMkxY
 sr+MQHZgLdShzQf1IM2XS/F0s+M9klLJE7BAFFc89D8U8y1hVlVi1WqNxVhVlJAPX1ZN
 ORNw==
X-Gm-Message-State: APjAAAUe0zSOXw+fl08DL4rUjGdRt5EzaMf5T10a95RkOdXh8q0SXwPc
 G+6jPdSVAGigwwH+xpwOGZV8gZB2pQ/D9G7Vidn1O1qICYAJ/uYreA48yfacKj3Br0v/pqP5hcl
 U9Y0zzeo+tOoty7w7wQy1Ww==
X-Received: by 2002:a67:e953:: with SMTP id p19mr7940250vso.79.1569790631758; 
 Sun, 29 Sep 2019 13:57:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzh4aLzX78Mglpneti4IO9tW37qPuzGkqqbl4KUInJc9W0aU/g8pfaIxVb+kTYNDJVDGxfudw==
X-Received: by 2002:a67:e953:: with SMTP id p19mr7940242vso.79.1569790631423; 
 Sun, 29 Sep 2019 13:57:11 -0700 (PDT)
Received: from ?IPv6:2601:342:8200:6edc::b073? ([2601:342:8200:6edc::b073])
 by smtp.gmail.com with ESMTPSA id n189sm3395140vkf.40.2019.09.29.13.57.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Sep 2019 13:57:10 -0700 (PDT)
Subject: Re: [PATCH] ion_system_heap: support X86 archtecture
To: jun.zhang@intel.com, sumit.semwal@linaro.org, gregkh@linuxfoundation.org, 
 arve@android.com, tkjos@android.com, maco@android.com,
 joel@joelfernandes.org, christian@brauner.io
References: <20190929072841.14848-1-jun.zhang@intel.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <7aad1995-4bb2-a74e-954f-872ea21a752b@redhat.com>
Date: Sun, 29 Sep 2019 16:57:08 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190929072841.14848-1-jun.zhang@intel.com>
Content-Language: en-US
X-MC-Unique: fEjVo_-ONmK2cP9qfh0qEA-1
X-Mimecast-Spam-Score: 0
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
Cc: devel@driverdev.osuosl.org, Jie A <jie.a.bai@intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, bo <bo.he@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/29/19 3:28 AM, jun.zhang@intel.com wrote:
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

All this work needs to be done on the new dma-buf heap rework and I
don't think it makes sense to put it on the staging version

https://lore.kernel.org/lkml/20190906184712.91980-1-john.stultz@linaro.org/

(I also continue to question the value of uncached buffers, especially on
x86)

> Signed-off-by: he, bo <bo.he@intel.com>
> Signed-off-by: zhang jun <jun.zhang@intel.com>
> Signed-off-by: Bai, Jie A <jie.a.bai@intel.com>
> ---
>   drivers/staging/android/ion/ion_system_heap.c | 28 ++++++++++++++++++-
>   1 file changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
> index b83a1d16bd89..d298b8194820 100644
> --- a/drivers/staging/android/ion/ion_system_heap.c
> +++ b/drivers/staging/android/ion/ion_system_heap.c
> @@ -13,6 +13,7 @@
>   #include <linux/scatterlist.h>
>   #include <linux/slab.h>
>   #include <linux/vmalloc.h>
> +#include <asm/set_memory.h>
>   
>   #include "ion.h"
>   
> @@ -134,6 +135,13 @@ static int ion_system_heap_allocate(struct ion_heap *heap,
>   	sg = table->sgl;
>   	list_for_each_entry_safe(page, tmp_page, &pages, lru) {
>   		sg_set_page(sg, page, page_size(page), 0);
> +
> +#ifdef CONFIG_X86
> +	if (!(buffer->flags & ION_FLAG_CACHED))
> +		set_memory_wc((unsigned long)page_address(sg_page(sg)),
> +			      PAGE_ALIGN(sg->length) >> PAGE_SHIFT);
> +#endif
> +
>   		sg = sg_next(sg);
>   		list_del(&page->lru);
>   	}
> @@ -162,8 +170,15 @@ static void ion_system_heap_free(struct ion_buffer *buffer)
>   	if (!(buffer->private_flags & ION_PRIV_FLAG_SHRINKER_FREE))
>   		ion_heap_buffer_zero(buffer);
>   
> -	for_each_sg(table->sgl, sg, table->nents, i)
> +	for_each_sg(table->sgl, sg, table->nents, i) {
> +#ifdef CONFIG_X86
> +		if (!(buffer->flags & ION_FLAG_CACHED))
> +			set_memory_wb((unsigned long)page_address(sg_page(sg)),
> +				      PAGE_ALIGN(sg->length) >> PAGE_SHIFT);
> +#endif
> +
>   		free_buffer_page(sys_heap, buffer, sg_page(sg));
> +	}
>   	sg_free_table(table);
>   	kfree(table);
>   }
> @@ -316,6 +331,12 @@ static int ion_system_contig_heap_allocate(struct ion_heap *heap,
>   
>   	buffer->sg_table = table;
>   
> +#ifdef CONFIG_X86
> +	if (!(buffer->flags & ION_FLAG_CACHED))
> +		set_memory_wc((unsigned long)page_address(page),
> +			      PAGE_ALIGN(len) >> PAGE_SHIFT);
> +#endif
> +
>   	return 0;
>   
>   free_table:
> @@ -334,6 +355,11 @@ static void ion_system_contig_heap_free(struct ion_buffer *buffer)
>   	unsigned long pages = PAGE_ALIGN(buffer->size) >> PAGE_SHIFT;
>   	unsigned long i;
>   
> +#ifdef CONFIG_X86
> +	if (!(buffer->flags & ION_FLAG_CACHED))
> +		set_memory_wb((unsigned long)page_address(page), pages);
> +#endif
> +
>   	for (i = 0; i < pages; i++)
>   		__free_page(page + i);
>   	sg_free_table(table);
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

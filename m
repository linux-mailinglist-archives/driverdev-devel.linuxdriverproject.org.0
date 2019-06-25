Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F98054E5E
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 14:07:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03DF285F2F;
	Tue, 25 Jun 2019 12:07:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TTapKRuKXrMZ; Tue, 25 Jun 2019 12:07:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D00F485F31;
	Tue, 25 Jun 2019 12:07:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 335901BF41E
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 12:07:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 309F1203FE
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 12:07:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LZi+w6RWVl7A for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 12:07:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from newverein.lst.de (verein.lst.de [213.95.11.211])
 by silver.osuosl.org (Postfix) with ESMTPS id 9F4471FFFF
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 12:07:10 +0000 (UTC)
Received: by newverein.lst.de (Postfix, from userid 2407)
 id B21A868C65; Tue, 25 Jun 2019 14:06:37 +0200 (CEST)
Date: Tue, 25 Jun 2019 14:06:37 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [PATCH] staging: comedi: use dma_mmap_coherent for DMA-able
 buffer mmap
Message-ID: <20190625120637.GB3979@lst.de>
References: <20190625112659.13016-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625112659.13016-1-abbotti@mev.co.uk>
User-Agent: Mutt/1.5.17 (2007-11-01)
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
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


From the DMA point of view this looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

I still think that doing that SetPageReserved + remap_pfn_range
dance for the normal memory allocations is a bad idea.  Just use
vm_insert_page on the page, in which case it doesn't need to be
marked as Reserved.


On Tue, Jun 25, 2019 at 12:26:59PM +0100, Ian Abbott wrote:
> Comedi's acquisition buffer allocation code can allocate the buffer from
> normal kernel memory or from DMA coherent memory depending on the
> `dma_async_dir` value in the comedi subdevice.  (A value of `DMA_NONE`
> causes the buffer to be allocated from normal kernel memory.  Other
> values cause the buffer to be allocated from DMA coherent memory.)   The
> buffer currently consists of a bunch of page-sized blocks that are
> vmap'ed into a contiguous range of virtual addresses. The pages are also
> mmap'able into user address space.  For DMA'able buffers, these
> page-sized blocks are allocated by `dma_alloc_coherent()`.
> 
> For DMA-able buffers, the DMA API is currently abused in various ways,
> the most serious abuse being the calling of `virt_to_page()` on the
> blocks allocated by `dma_alloc_coherent()` and passing those pages to
> `vmap()` (for mapping to the kernels vmalloc address space) and via
> `page_to_pfn()` to `remap_pfn_range()` (for mmap'ing to user space).  it
> also uses the `__GFP_COMP` flag when allocating the blocks, and marks
> the allocated pages as reserved (which is unnecessary for DMA coherent
> allocations).
> 
> The code can be changed to get rid of the vmap'ed address altogether if
> necessary, since there are only a few places in the comedi code that use
> the vmap'ed address directly and we also keep a list of the kernel
> addresses for the individual pages prior to the vmap operation. This
> would add some run-time overhead to buffer accesses.  The real killer is
> the mmap operation.
> 
> For mmap, the address range specified in the VMA needs to be mmap'ed to
> the individually allocated page-sized blocks.  That is not a problem
> when the pages are allocated from normal kernel memory as the individual
> pages can be remapped by `remap_pfn_range()`, but it is a problem when
> the page-sized blocks are allocated by `dma_alloc_coherent()` because
> the DMA API currently has no support for splitting a VMA across multiple
> blocks of DMA coherent memory (or rather, no support for mapping part of
> a VMA range to a single block of DMA coherent memory).
> 
> In order to comply with the DMA API and allow the buffer to be mmap'ed,
> the buffer needs to be allocated as a single block by a single call to
> `dma_alloc_coherent()`, freed by a single call to `dma_free_coherent()`,
> and mmap'ed to user space by a single call to `dma_mmap_coherent()`.
> This patch changes the buffer allocation, freeing, and mmap'ing code to
> do that, with the unfortunate consequence that buffer allocation is more
> likely to fail.  It also no longer uses the `__GFP_COMP` flag when
> allocating DMA coherent memory, no longer marks the
> allocated pages of DMA coherent memory as reserved, and no longer vmap's
> the DMA coherent memory pages (since they are contiguous anyway).
> 
> Cc: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  drivers/staging/comedi/comedi_buf.c  | 150 ++++++++++++++++++---------
>  drivers/staging/comedi/comedi_fops.c |  39 ++++---
>  2 files changed, 125 insertions(+), 64 deletions(-)
> 
> diff --git a/drivers/staging/comedi/comedi_buf.c b/drivers/staging/comedi/comedi_buf.c
> index d2c8cc72a99d..3ef3ddabf139 100644
> --- a/drivers/staging/comedi/comedi_buf.c
> +++ b/drivers/staging/comedi/comedi_buf.c
> @@ -27,18 +27,19 @@ static void comedi_buf_map_kref_release(struct kref *kref)
>  	unsigned int i;
>  
>  	if (bm->page_list) {
> -		for (i = 0; i < bm->n_pages; i++) {
> -			buf = &bm->page_list[i];
> -			clear_bit(PG_reserved,
> -				  &(virt_to_page(buf->virt_addr)->flags));
> -			if (bm->dma_dir != DMA_NONE) {
> -#ifdef CONFIG_HAS_DMA
> -				dma_free_coherent(bm->dma_hw_dev,
> -						  PAGE_SIZE,
> -						  buf->virt_addr,
> -						  buf->dma_addr);
> -#endif
> -			} else {
> +		if (bm->dma_dir != DMA_NONE) {
> +			/*
> +			 * DMA buffer was allocated as a single block.
> +			 * Address is in page_list[0].
> +			 */
> +			buf = &bm->page_list[0];
> +			dma_free_coherent(bm->dma_hw_dev,
> +					  PAGE_SIZE * bm->n_pages,
> +					  buf->virt_addr, buf->dma_addr);
> +		} else {
> +			for (i = 0; i < bm->n_pages; i++) {
> +				buf = &bm->page_list[i];
> +				ClearPageReserved(virt_to_page(buf->virt_addr));
>  				free_page((unsigned long)buf->virt_addr);
>  			}
>  		}
> @@ -57,7 +58,8 @@ static void __comedi_buf_free(struct comedi_device *dev,
>  	unsigned long flags;
>  
>  	if (async->prealloc_buf) {
> -		vunmap(async->prealloc_buf);
> +		if (s->async_dma_dir == DMA_NONE)
> +			vunmap(async->prealloc_buf);
>  		async->prealloc_buf = NULL;
>  		async->prealloc_bufsz = 0;
>  	}
> @@ -69,6 +71,72 @@ static void __comedi_buf_free(struct comedi_device *dev,
>  	comedi_buf_map_put(bm);
>  }
>  
> +static struct comedi_buf_map *
> +comedi_buf_map_alloc(struct comedi_device *dev, enum dma_data_direction dma_dir,
> +		     unsigned int n_pages)
> +{
> +	struct comedi_buf_map *bm;
> +	struct comedi_buf_page *buf;
> +	unsigned int i;
> +
> +	bm = kzalloc(sizeof(*bm), GFP_KERNEL);
> +	if (!bm)
> +		return NULL;
> +
> +	kref_init(&bm->refcount);
> +	bm->dma_dir = dma_dir;
> +	if (bm->dma_dir != DMA_NONE) {
> +		/* Need ref to hardware device to free buffer later. */
> +		bm->dma_hw_dev = get_device(dev->hw_dev);
> +	}
> +
> +	bm->page_list = vzalloc(sizeof(*buf) * n_pages);
> +	if (!bm->page_list)
> +		goto err;
> +
> +	if (bm->dma_dir != DMA_NONE) {
> +		void *virt_addr;
> +		dma_addr_t dma_addr;
> +
> +		/*
> +		 * Currently, the DMA buffer needs to be allocated as a
> +		 * single block so that it can be mmap()'ed.
> +		 */
> +		virt_addr = dma_alloc_coherent(bm->dma_hw_dev,
> +					       PAGE_SIZE * n_pages, &dma_addr,
> +					       GFP_KERNEL);
> +		if (!virt_addr)
> +			goto err;
> +
> +		for (i = 0; i < n_pages; i++) {
> +			buf = &bm->page_list[i];
> +			buf->virt_addr = virt_addr + (i << PAGE_SHIFT);
> +			buf->dma_addr = dma_addr + (i << PAGE_SHIFT);
> +		}
> +
> +		bm->n_pages = i;
> +	} else {
> +		for (i = 0; i < n_pages; i++) {
> +			buf = &bm->page_list[i];
> +			buf->virt_addr = (void *)get_zeroed_page(GFP_KERNEL);
> +			if (!buf->virt_addr)
> +				break;
> +
> +			SetPageReserved(virt_to_page(buf->virt_addr));
> +		}
> +
> +		bm->n_pages = i;
> +		if (i < n_pages)
> +			goto err;
> +	}
> +
> +	return bm;
> +
> +err:
> +	comedi_buf_map_put(bm);
> +	return NULL;
> +}
> +
>  static void __comedi_buf_alloc(struct comedi_device *dev,
>  			       struct comedi_subdevice *s,
>  			       unsigned int n_pages)
> @@ -86,57 +154,37 @@ static void __comedi_buf_alloc(struct comedi_device *dev,
>  		return;
>  	}
>  
> -	bm = kzalloc(sizeof(*async->buf_map), GFP_KERNEL);
> +	bm = comedi_buf_map_alloc(dev, s->async_dma_dir, n_pages);
>  	if (!bm)
>  		return;
>  
> -	kref_init(&bm->refcount);
>  	spin_lock_irqsave(&s->spin_lock, flags);
>  	async->buf_map = bm;
>  	spin_unlock_irqrestore(&s->spin_lock, flags);
> -	bm->dma_dir = s->async_dma_dir;
> -	if (bm->dma_dir != DMA_NONE)
> -		/* Need ref to hardware device to free buffer later. */
> -		bm->dma_hw_dev = get_device(dev->hw_dev);
>  
> -	bm->page_list = vzalloc(sizeof(*buf) * n_pages);
> -	if (bm->page_list)
> +	if (bm->dma_dir != DMA_NONE) {
> +		/*
> +		 * DMA buffer was allocated as a single block.
> +		 * Address is in page_list[0].
> +		 */
> +		buf = &bm->page_list[0];
> +		async->prealloc_buf = buf->virt_addr;
> +	} else {
>  		pages = vmalloc(sizeof(struct page *) * n_pages);
> +		if (!pages)
> +			return;
>  
> -	if (!pages)
> -		return;
> -
> -	for (i = 0; i < n_pages; i++) {
> -		buf = &bm->page_list[i];
> -		if (bm->dma_dir != DMA_NONE)
> -#ifdef CONFIG_HAS_DMA
> -			buf->virt_addr = dma_alloc_coherent(bm->dma_hw_dev,
> -							    PAGE_SIZE,
> -							    &buf->dma_addr,
> -							    GFP_KERNEL |
> -							    __GFP_COMP);
> -#else
> -			break;
> -#endif
> -		else
> -			buf->virt_addr = (void *)get_zeroed_page(GFP_KERNEL);
> -		if (!buf->virt_addr)
> -			break;
> -
> -		set_bit(PG_reserved, &(virt_to_page(buf->virt_addr)->flags));
> -
> -		pages[i] = virt_to_page(buf->virt_addr);
> -	}
> -	spin_lock_irqsave(&s->spin_lock, flags);
> -	bm->n_pages = i;
> -	spin_unlock_irqrestore(&s->spin_lock, flags);
> +		for (i = 0; i < n_pages; i++) {
> +			buf = &bm->page_list[i];
> +			pages[i] = virt_to_page(buf->virt_addr);
> +		}
>  
> -	/* vmap the prealloc_buf if all the pages were allocated */
> -	if (i == n_pages)
> +		/* vmap the pages to prealloc_buf */
>  		async->prealloc_buf = vmap(pages, n_pages, VM_MAP,
>  					   COMEDI_PAGE_PROTECTION);
>  
> -	vfree(pages);
> +		vfree(pages);
> +	}
>  }
>  
>  void comedi_buf_map_get(struct comedi_buf_map *bm)
> diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> index f6d1287c7b83..08d1bbbebf2d 100644
> --- a/drivers/staging/comedi/comedi_fops.c
> +++ b/drivers/staging/comedi/comedi_fops.c
> @@ -2301,11 +2301,12 @@ static int comedi_mmap(struct file *file, struct vm_area_struct *vma)
>  	struct comedi_subdevice *s;
>  	struct comedi_async *async;
>  	struct comedi_buf_map *bm = NULL;
> +	struct comedi_buf_page *buf;
>  	unsigned long start = vma->vm_start;
>  	unsigned long size;
>  	int n_pages;
>  	int i;
> -	int retval;
> +	int retval = 0;
>  
>  	/*
>  	 * 'trylock' avoids circular dependency with current->mm->mmap_sem
> @@ -2361,24 +2362,36 @@ static int comedi_mmap(struct file *file, struct vm_area_struct *vma)
>  		retval = -EINVAL;
>  		goto done;
>  	}
> -	for (i = 0; i < n_pages; ++i) {
> -		struct comedi_buf_page *buf = &bm->page_list[i];
> +	if (bm->dma_dir != DMA_NONE) {
> +		/*
> +		 * DMA buffer was allocated as a single block.
> +		 * Address is in page_list[0].
> +		 */
> +		buf = &bm->page_list[0];
> +		retval = dma_mmap_coherent(bm->dma_hw_dev, vma, buf->virt_addr,
> +					   buf->dma_addr, n_pages * PAGE_SIZE);
> +	} else {
> +		for (i = 0; i < n_pages; ++i) {
> +			unsigned long pfn;
> +
> +			buf = &bm->page_list[i];
> +			pfn = page_to_pfn(virt_to_page(buf->virt_addr));
> +			retval = remap_pfn_range(vma, start, pfn, PAGE_SIZE,
> +						 PAGE_SHARED);
> +			if (retval)
> +				break;
>  
> -		if (remap_pfn_range(vma, start,
> -				    page_to_pfn(virt_to_page(buf->virt_addr)),
> -				    PAGE_SIZE, PAGE_SHARED)) {
> -			retval = -EAGAIN;
> -			goto done;
> +			start += PAGE_SIZE;
>  		}
> -		start += PAGE_SIZE;
>  	}
>  
> -	vma->vm_ops = &comedi_vm_ops;
> -	vma->vm_private_data = bm;
> +	if (retval == 0) {
> +		vma->vm_ops = &comedi_vm_ops;
> +		vma->vm_private_data = bm;
>  
> -	vma->vm_ops->open(vma);
> +		vma->vm_ops->open(vma);
> +	}
>  
> -	retval = 0;
>  done:
>  	up_read(&dev->attach_lock);
>  	comedi_buf_map_put(bm);	/* put reference to buf map - okay if NULL */
> -- 
> 2.20.1
---end quoted text---
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7DA298603
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 05:05:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 031938673E;
	Mon, 26 Oct 2020 04:05:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ELpmjXh5kHhk; Mon, 26 Oct 2020 04:05:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 80AD5865CF;
	Mon, 26 Oct 2020 04:05:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B67461BF2F0
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 04:04:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9F221864B8
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 04:04:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SMC9NIcRlqHI for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 04:04:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3FAD9864B2
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 04:04:58 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id o9so4099827plx.10
 for <devel@driverdev.osuosl.org>; Sun, 25 Oct 2020 21:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6mqY69tiDXKz38qbV/PrCkNMMGmymtOyyGrul1BEJ8E=;
 b=EZ/PRPeLBw+/oy8tM7oD1KFlPpbbrhwkx+uaijRvJ+RqSJY+VppaHPmrnzcOPtIGF1
 +P0/X5VJ5BAKX+hrQeUaO43UH/kwIaKh/MiMzqYd+MkJWrz2nmU1dL3ERo+81crAPhMh
 U4cyimh+YyYD8iqdR/WQ6qawjgieXj3wKw5Jx7G9AA/zl3Bq8BjIjN6mCIhHWHLi565l
 gNNe+AxG/Jvoqf96qe92wkgumchj1gnLobNbhbzQ2pjYzpWmtmPq5y4QQkG2hkLVxWsY
 Ibesg+Ig8j9Yhvg29KkVOwtOAcX7E0fxN4Hd6iAUeWh8HUIr2ntLZgMcjWz1EV/VnJMd
 lRFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6mqY69tiDXKz38qbV/PrCkNMMGmymtOyyGrul1BEJ8E=;
 b=JmPiFJUw4xEeMhTqSS7D/pcxbub4Rhrzyv5MM7BAIrPQelAZaoLDqPmY6jokWDVcV7
 vcTjQfbyhz3A5yvEZeLWGZvlQ5pgjttVEGGaKypwkcEmF59M6Wjm+fiHftXAzXwlCDhv
 ji1g5gGATxa26pYa8EJieuiTviTo25nhRiRbSIDIgm4EDjhtNVl7jkoxuL3qwZjnkwdp
 FK/7F2EJ8txSKmcXHkNZ71taac8neVgg7dIhZYoCQ9GYdnJIXC5lFJdreYGG/t4DyWCs
 bODXfvEg/QCdO/AWAWhyK/OpFWpd5ufGtEYXKfSR01Zbiyt5bw8lEvuecwP1gQoY33F4
 GUEw==
X-Gm-Message-State: AOAM5310yeHSzjmxgJKUleQ7gDFm9J10loynJ84vwJBCSTVzz84gXA/9
 W/qgIx2tE4GrFG6JofRKuGw=
X-Google-Smtp-Source: ABdhPJw+FxMIDnYgA4pl5R3YlzxihQ3fvk4EADldsqfr1Cw2+8zcmZjsf5bqQbkLwukpEExcqIKFLg==
X-Received: by 2002:a17:90a:5292:: with SMTP id
 w18mr5487372pjh.191.1603685097763; 
 Sun, 25 Oct 2020 21:04:57 -0700 (PDT)
Received: from my--box ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id n64sm10171261pfn.134.2020.10.25.21.04.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Oct 2020 21:04:57 -0700 (PDT)
Date: Mon, 26 Oct 2020 09:34:53 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 1/2] staging: kpc2000: kpc_dma: rearrange lines
 exceeding 100 columns
Message-ID: <20201026040453.GC5074@my--box>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
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
Cc: mh12gx2825@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 21, 2020 at 01:01:07PM +0530, Deepak R Varma wrote:

Hello,
Requesting a review / ack of this patch.

Thank you,
Deepak.

> Reformat lines that exceed 100 column in length. Issue reported by
> checkpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> Changes since v1:
>    - No change in this patch.
>    - Patch 2/2 has a change.
> 
>  drivers/staging/kpc2000/kpc_dma/dma.c         | 27 +++++++++---
>  drivers/staging/kpc2000/kpc_dma/fileops.c     | 44 +++++++++++++++----
>  .../staging/kpc2000/kpc_dma/kpc_dma_driver.c  |  9 ++--
>  3 files changed, 63 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
> index 452a3f7c835d..b8d8294aa4c3 100644
> --- a/drivers/staging/kpc2000/kpc_dma/dma.c
> +++ b/drivers/staging/kpc2000/kpc_dma/dma.c
> @@ -16,7 +16,8 @@ irqreturn_t  ndd_irq_handler(int irq, void *dev_id)
>  {
>  	struct kpc_dma_device *ldev = (struct kpc_dma_device *)dev_id;
>  
> -	if ((GetEngineControl(ldev) & ENG_CTL_IRQ_ACTIVE) || (ldev->desc_completed->MyDMAAddr != GetEngineCompletePtr(ldev)))
> +	if ((GetEngineControl(ldev) & ENG_CTL_IRQ_ACTIVE) ||
> +	    (ldev->desc_completed->MyDMAAddr != GetEngineCompletePtr(ldev)))
>  		schedule_work(&ldev->irq_work);
>  
>  	return IRQ_HANDLED;
> @@ -39,7 +40,9 @@ void  ndd_irq_worker(struct work_struct *ws)
>  	cur = eng->desc_completed;
>  	do {
>  		cur = cur->Next;
> -		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n", cur, cur->acd);
> +		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n",
> +			cur,
> +			cur->acd);
>  		BUG_ON(cur == eng->desc_next); // Ordering failure.
>  
>  		if (cur->DescControlFlags & DMA_DESC_CTL_SOP) {
> @@ -56,7 +59,9 @@ void  ndd_irq_worker(struct work_struct *ws)
>  
>  		if (cur->DescControlFlags & DMA_DESC_CTL_EOP) {
>  			if (cur->acd)
> -				transfer_complete_cb(cur->acd, eng->accumulated_bytes, eng->accumulated_flags | ACD_FLAG_DONE);
> +				transfer_complete_cb(cur->acd,
> +						     eng->accumulated_bytes,
> +						     eng->accumulated_flags | ACD_FLAG_DONE);
>  		}
>  
>  		eng->desc_completed = cur;
> @@ -103,7 +108,10 @@ int  setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt)
>  		eng->dir = DMA_TO_DEVICE;
>  
>  	eng->desc_pool_cnt = desc_cnt;
> -	eng->desc_pool = dma_pool_create("KPC DMA Descriptors", &eng->pldev->dev, sizeof(struct kpc_dma_descriptor), DMA_DESC_ALIGNMENT, 4096);
> +	eng->desc_pool = dma_pool_create("KPC DMA Descriptors",
> +					 &eng->pldev->dev,
> +					 sizeof(struct kpc_dma_descriptor),
> +					 DMA_DESC_ALIGNMENT, 4096);
>  
>  	eng->desc_pool_first = dma_pool_alloc(eng->desc_pool, GFP_KERNEL | GFP_DMA, &head_handle);
>  	if (!eng->desc_pool_first) {
> @@ -141,7 +149,11 @@ int  setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt)
>  	INIT_WORK(&eng->irq_work, ndd_irq_worker);
>  
>  	// Grab IRQ line
> -	rv = request_irq(eng->irq, ndd_irq_handler, IRQF_SHARED, KP_DRIVER_NAME_DMA_CONTROLLER, eng);
> +	rv = request_irq(eng->irq,
> +			 ndd_irq_handler,
> +			 IRQF_SHARED,
> +			 KP_DRIVER_NAME_DMA_CONTROLLER,
> +			 eng);
>  	if (rv) {
>  		dev_err(&eng->pldev->dev, "%s: failed to request_irq: %d\n", __func__, rv);
>  		return rv;
> @@ -195,7 +207,10 @@ void  stop_dma_engine(struct kpc_dma_device *eng)
>  	}
>  
>  	// Clear any persistent bits just to make sure there is no residue from the reset
> -	SetClearEngineControl(eng, (ENG_CTL_IRQ_ACTIVE | ENG_CTL_DESC_COMPLETE | ENG_CTL_DESC_ALIGN_ERR | ENG_CTL_DESC_FETCH_ERR | ENG_CTL_SW_ABORT_ERR | ENG_CTL_DESC_CHAIN_END | ENG_CTL_DMA_WAITING_PERSIST), 0);
> +	SetClearEngineControl(eng, (ENG_CTL_IRQ_ACTIVE | ENG_CTL_DESC_COMPLETE |
> +				    ENG_CTL_DESC_ALIGN_ERR | ENG_CTL_DESC_FETCH_ERR |
> +				    ENG_CTL_SW_ABORT_ERR | ENG_CTL_DESC_CHAIN_END |
> +				    ENG_CTL_DMA_WAITING_PERSIST), 0);
>  
>  	// Reset performance counters
>  
> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> index e1c7c04f16fe..b929987844ff 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -76,7 +76,11 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  
>  	// Lock the user buffer pages in memory, and hold on to the page pointers (for the sglist)
>  	mmap_read_lock(current->mm);      /*  get memory map semaphore */
> -	rv = pin_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE, acd->user_pages, NULL);
> +	rv = pin_user_pages(iov_base,
> +			    acd->page_count,
> +			    FOLL_TOUCH | FOLL_WRITE,
> +			    acd->user_pages,
> +			    NULL);
>  	mmap_read_unlock(current->mm);        /*  release the semaphore */
>  	if (rv != acd->page_count) {
>  		nr_pages = rv;
> @@ -89,16 +93,25 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  	nr_pages = acd->page_count;
>  
>  	// Allocate and setup the sg_table (scatterlist entries)
> -	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
> +	rv = sg_alloc_table_from_pages(&acd->sgt,
> +				       acd->user_pages,
> +				       acd->page_count,
> +				       iov_base & (PAGE_SIZE - 1),
> +				       iov_len, GFP_KERNEL);
>  	if (rv) {
>  		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%d)\n", rv);
>  		goto unpin_pages;
>  	}
>  
>  	// Setup the DMA mapping for all the sg entries
> -	acd->mapped_entry_count = dma_map_sg(&ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ldev->dir);
> +	acd->mapped_entry_count = dma_map_sg(&ldev->pldev->dev,
> +					     acd->sgt.sgl,
> +					     acd->sgt.nents,
> +					     ldev->dir);
>  	if (acd->mapped_entry_count <= 0) {
> -		dev_err(&priv->ldev->pldev->dev, "Couldn't dma_map_sg (%d)\n", acd->mapped_entry_count);
> +		dev_err(&priv->ldev->pldev->dev,
> +			"Couldn't dma_map_sg (%d)\n",
> +			acd->mapped_entry_count);
>  		goto free_table;
>  	}
>  
> @@ -111,14 +124,26 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  
>  	// Figoure out how many descriptors are available and return an error if there aren't enough
>  	num_descrs_avail = count_descriptors_available(ldev);
> -	dev_dbg(&priv->ldev->pldev->dev, "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d\n", acd->mapped_entry_count, desc_needed, num_descrs_avail);
> +	dev_dbg(&priv->ldev->pldev->dev,
> +		"    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d\n",
> +		acd->mapped_entry_count,
> +		desc_needed,
> +		num_descrs_avail);
>  	if (desc_needed >= ldev->desc_pool_cnt) {
> -		dev_warn(&priv->ldev->pldev->dev, "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    TOO MANY to ever complete!\n", acd->mapped_entry_count, desc_needed, num_descrs_avail);
> +		dev_warn(&priv->ldev->pldev->dev,
> +			 "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    TOO MANY to ever complete!\n",
> +			 acd->mapped_entry_count,
> +			 desc_needed,
> +			 num_descrs_avail);
>  		rv = -EAGAIN;
>  		goto err_descr_too_many;
>  	}
>  	if (desc_needed > num_descrs_avail) {
> -		dev_warn(&priv->ldev->pldev->dev, "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    Too many to complete right now.\n", acd->mapped_entry_count, desc_needed, num_descrs_avail);
> +		dev_warn(&priv->ldev->pldev->dev,
> +			 "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    Too many to complete right now.\n",
> +			 acd->mapped_entry_count,
> +			 desc_needed,
> +			 num_descrs_avail);
>  		rv = -EMSGSIZE;
>  		goto err_descr_too_many;
>  	}
> @@ -163,7 +188,10 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  			if (i == acd->mapped_entry_count - 1 && p == pcnt - 1)
>  				desc->acd = acd;
>  
> -			dev_dbg(&priv->ldev->pldev->dev, "  Filled descriptor %p (acd = %p)\n", desc, desc->acd);
> +			dev_dbg(&priv->ldev->pldev->dev,
> +				"  Filled descriptor %p (acd = %p)\n",
> +				desc,
> +				desc->acd);
>  
>  			ldev->desc_next = desc->Next;
>  			desc = desc->Next;
> diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> index 624d47bae4d1..7698e5ef2a7c 100644
> --- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> +++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> @@ -138,7 +138,8 @@ int  kpc_dma_probe(struct platform_device *pldev)
>  
>  	// Setup miscdev struct
>  	dev = MKDEV(assigned_major_num, pldev->id);
> -	ldev->kpc_dma_dev = device_create(kpc_dma_class, &pldev->dev, dev, ldev, "kpc_dma%d", pldev->id);
> +	ldev->kpc_dma_dev = device_create(kpc_dma_class, &pldev->dev,
> +					  dev, ldev, "kpc_dma%d", pldev->id);
>  	if (IS_ERR(ldev->kpc_dma_dev)) {
>  		rv = PTR_ERR(ldev->kpc_dma_dev);
>  		dev_err(&ldev->pldev->dev, "%s: device_create failed: %d\n", __func__, rv);
> @@ -205,9 +206,11 @@ int __init kpc_dma_driver_init(void)
>  {
>  	int err;
>  
> -	err = __register_chrdev(KPC_DMA_CHAR_MAJOR, 0, KPC_DMA_NUM_MINORS, "kpc_dma", &kpc_dma_fops);
> +	err = __register_chrdev(KPC_DMA_CHAR_MAJOR, 0,
> +				KPC_DMA_NUM_MINORS, "kpc_dma", &kpc_dma_fops);
>  	if (err < 0) {
> -		pr_err("Can't allocate a major number (%d) for kpc_dma (err = %d)\n", KPC_DMA_CHAR_MAJOR, err);
> +		pr_err("Can't allocate a major number (%d) for kpc_dma (err = %d)\n",
> +		       KPC_DMA_CHAR_MAJOR, err);
>  		goto fail_chrdev_register;
>  	}
>  	assigned_major_num = err;
> -- 
> 2.25.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

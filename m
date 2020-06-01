Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F5F1E9B6B
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jun 2020 03:45:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5B7EB204A3;
	Mon,  1 Jun 2020 01:45:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ePiOzs-IUc8i; Mon,  1 Jun 2020 01:45:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 544772040A;
	Mon,  1 Jun 2020 01:45:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 68C711BF37E
 for <devel@linuxdriverproject.org>; Mon,  1 Jun 2020 01:45:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 627B3867CC
 for <devel@linuxdriverproject.org>; Mon,  1 Jun 2020 01:45:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1th0Evk+GTqo for <devel@linuxdriverproject.org>;
 Mon,  1 Jun 2020 01:45:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from hqnvemgate26.nvidia.com (hqnvemgate26.nvidia.com
 [216.228.121.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 70B4D867A8
 for <devel@driverdev.osuosl.org>; Mon,  1 Jun 2020 01:45:00 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ed45d900000>; Sun, 31 May 2020 18:44:48 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Sun, 31 May 2020 18:45:00 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Sun, 31 May 2020 18:45:00 -0700
Received: from [10.2.56.10] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 1 Jun
 2020 01:44:59 +0000
Subject: Re: [PATCH] staging: kpc2000: kpc_dma: Convert get_user_pages() -->
 pin_user_pages()
To: Souptick Joarder <jrdr.linux@gmail.com>, <gregkh@linuxfoundation.org>,
 <jane.pnx9@gmail.com>, <simon@nikanor.nu>, <harshjain32@gmail.com>,
 <linux.bhar@gmail.com>, <festevam@gmail.com>, <jeremy@azazel.net>
References: <1590947491-11194-1-git-send-email-jrdr.linux@gmail.com>
From: John Hubbard <jhubbard@nvidia.com>
X-Nvconfidentiality: public
Message-ID: <7e725dd0-7423-b85b-ff56-9705419d13b9@nvidia.com>
Date: Sun, 31 May 2020 18:44:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <1590947491-11194-1-git-send-email-jrdr.linux@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1590975888; bh=M9GV6xaLkhJBGouXIJ6CG5x618w3wdb5bnBANGmrS34=;
 h=X-PGP-Universal:Subject:To:CC:References:From:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=RqVc/4sWSPLbUnPHouSnYX03vGKdECFMGfPXTg7jZzoHLrTTtR9MDAbwGEwbgGwsz
 8SNOMrS4VofywfYqKgRPwEGyPVfVbGL+SyvlUXI45d8SV0EyFBRskvWLlhC5Zf+1J/
 H8qR5ryZgO1jTbAWr9Zqe2/zJmA/S+sJoZjp7d4F7hvp+mUKJxFNCnUbSWZV9yyxU4
 0l/hlTk5U6xBQ1p/WFtSPwJ9UHh2l0xyKCNI6+1FJL9pwUdfyDFR7crAbuLL1ap6ZU
 FniGMIQX98aFFB6WuRwHQ/NZ13ehbZ9U8MKED3nWCqhvYcQXqS9ms+LB6WKVp8KMqe
 eUp8U1Ds7e/Eg==
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
Cc: devel@driverdev.osuosl.org, Bharath Vedartham <linux.bhar@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-05-31 10:51, Souptick Joarder wrote:
> In 2019, we introduced pin_user_pages*() and now we are converting
> get_user_pages*() to the new API as appropriate. [1] & [2] could
> be referred for more information.
> 
> When pin_user_pages() returns numbers of partially mapped pages,
> those pages were not unpinned as part of error handling. Fixed
> it as part of this patch.
> 

Hi Souptick,

btw, Bharath (+cc) attempted to do the "put" side of this, last year.
That got as far as a v4 patch [1], and then I asked him to let me put
it into my tree. But then it didn't directly apply anymore after the
whole design moved to pin+unpin, and so here we are now.


If Bharath is still doing kernel work, you might offer him a Co-Developed-by:
tag (see https://www.kernel.org/doc/html/v4.17/process/submitting-patches.html).

Anyway, I'd recommend splitting the bug fix(es) into it at least one
separate patch. That's a "best practice", and I don't see any reason
not to do it here, even though the bugs are not huge.

Also I think there may be more than one bug to fix, because I just
noticed that the pre-existing code is doing set_page_dirty(), when
it should be doing set_page_dirty_lock(). See below.


> [1] Documentation/core-api/pin_user_pages.rst
> 
> [2] "Explicit pinning of user-space pages":
>          https://lwn.net/Articles/807108/
> 
> Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> Cc: John Hubbard <jhubbard@nvidia.com>
> ---
> Hi,
> 
> I'm compile tested this, but unable to run-time test, so any testing
> help is much appriciated.
> 
>   drivers/staging/kpc2000/kpc_dma/fileops.c | 15 ++++++++-------
>   1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> index 8975346..29bab13 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -48,6 +48,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>   	u64 card_addr;
>   	u64 dma_addr;
>   	u64 user_ctl;
> +	int nr_pages = 0;

Probably best to correct the "rv" type as well: it should be an int, rather
than a long.

>   
>   	ldev = priv->ldev;
>   
> @@ -76,13 +77,15 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>   
>   	// Lock the user buffer pages in memory, and hold on to the page pointers (for the sglist)
>   	mmap_read_lock(current->mm);      /*  get memory map semaphore */
> -	rv = get_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE | FOLL_GET, acd->user_pages, NULL);
> +	rv = pin_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE, acd->user_pages, NULL);
>   	mmap_read_unlock(current->mm);        /*  release the semaphore */
>   	if (rv != acd->page_count) {
> -		dev_err(&priv->ldev->pldev->dev, "Couldn't get_user_pages (%ld)\n", rv);
> +		dev_err(&priv->ldev->pldev->dev, "Couldn't pin_user_pages (%ld)\n", rv);
> +		nr_pages = rv;
>   		goto err_get_user_pages;
>   	}
>   
> +	nr_pages = acd->page_count;
>   	// Allocate and setup the sg_table (scatterlist entries)
>   	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
>   	if (rv) {
> @@ -189,10 +192,9 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>   	sg_free_table(&acd->sgt);
>    err_dma_map_sg:
>    err_alloc_sg_table:

So now we end up with two unnecessary labels. Probably best to delete two of these
three and name the remaining one appropriately:

  err_dma_map_sg:
  err_alloc_sg_table:
  err_get_user_pages:

> -	for (i = 0 ; i < acd->page_count ; i++)
> -		put_page(acd->user_pages[i]);
> -
>    err_get_user_pages:
> +	if (nr_pages > 0)
> +		unpin_user_pages(acd->user_pages, nr_pages);
>   	kfree(acd->user_pages);
>    err_alloc_userpages:
>   	kfree(acd);
> @@ -217,8 +219,7 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
>   

There is code up here (not shown in this diff), that does a set_page_dirty().
First of all, that should be set_page_dirty_lock(), and second, maybe (or maybe not)
it can all be done after the dma_unmap_sg(), at the same time as the unpin, via
unpin_user_pages_dirty_lock(). In fact, it's misleading at best to leave those
pages mapped, because there is an interval in there after set_page_dirty() and
before put_page(), in which the device could be running and setting pages dirty.
(Remember that writeback attempts can be happening concurrently with all of this,
and writeback is deeply involved with page dirtiness.)

I remember Bharath wrestled with this in an earlier conversion attempt (back when
we were only converting the "put_page" side of things), let me see if I can dig up
that email thread for some guidance...OK, in [1] it appears that everyone
finally settled on keeping the PageReserved check, but OK to move everything below
the dma_unmap_sg() call.

[1] https://lore.kernel.org/r/20190720173214.GA4250@bharath12345-Inspiron-5559


>   	dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
>   
> -	for (i = 0 ; i < acd->page_count ; i++)
> -		put_page(acd->user_pages[i]);
> +	unpin_user_pages(acd->user_pages, acd->page_count);
>   
>   	sg_free_table(&acd->sgt);
>   
> 

thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

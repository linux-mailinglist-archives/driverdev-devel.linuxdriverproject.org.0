Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 613CB25F37D
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 09:01:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 969B6870BB;
	Mon,  7 Sep 2020 07:01:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HouInvxicKDv; Mon,  7 Sep 2020 07:01:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 071D686F9C;
	Mon,  7 Sep 2020 07:01:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A7801BF573
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 07:01:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 259692047B
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 07:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hc4+cClsPcIc for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 07:01:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 85A8120368
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 07:01:43 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F87320768;
 Mon,  7 Sep 2020 07:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599462102;
 bh=ZAj/I1uTuH7D1upBhwBN2EIGxNIlWwzeBuzktnN7cPg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dWgnC5aHFdj7QU+pJRFFdwbAPl8QNG56z+agDCDUgDDLL51W/mtGbd38rBklCd2hI
 YanKJxBRVc59P5+pa2WRqkKH9x+9BIphwalsxUyzEPAHD3wa8TTHkxn0krIjjQlMpJ
 Z4ei21H7kQR1p4R06BSf2ezf6GzJzfMqeuuOddLo=
Date: Mon, 7 Sep 2020 09:01:57 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Naveen Panwar <naveen.panwar27@gmail.com>
Subject: Re: [PATCH] Staging: Ralink: ralink-gdma: Fixed codestyle issue and
 warnings
Message-ID: <20200907070157.GA606215@kroah.com>
References: <20200907065745.21439-1-naveen.panwar27@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200907065745.21439-1-naveen.panwar27@gmail.com>
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
Cc: devel@driverdev.osuosl.org, mpe@ellerman.id.au, stern@rowland.harvard.edu,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 07, 2020 at 12:27:45PM +0530, Naveen Panwar wrote:
> Fixed checkpatch warnings two warnings still exits about DT
> compatible strings appers undocumented. Fixed the other codestyle
> errors, and some warnings about use of volatile and un-necessary
> out of memory errors.
> 
> Signed-off-by: Naveen Panwar <naveen.panwar27@gmail.com>
> ---
>  drivers/staging/ralink-gdma/ralink-gdma.c | 29 ++++++++++++-----------
>  1 file changed, 15 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index eabf10933..1c3388b7c 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -122,7 +122,8 @@ struct gdma_dma_dev {
>  	struct gdma_data *data;
>  	void __iomem *base;
>  	struct tasklet_struct task;
> -	volatile unsigned long chan_issued;
> +
> +	unsigned long chan_issued;
>  	atomic_t cnt;
>  
>  	struct gdma_dmaengine_chan chan[];
> @@ -135,8 +136,8 @@ struct gdma_data {
>  	int (*start_transfer)(struct gdma_dmaengine_chan *chan);
>  };
>  
> -static struct gdma_dma_dev *gdma_dma_chan_get_dev(
> -	struct gdma_dmaengine_chan *chan)
> +static struct gdma_dma_dev *gdma_dma_chan_get_dev
> +	(struct gdma_dmaengine_chan *chan)
>  {
>  	return container_of(chan->vchan.chan.device, struct gdma_dma_dev,
>  		ddev);
> @@ -510,10 +511,10 @@ static void gdma_dma_issue_pending(struct dma_chan *c)
>  	spin_unlock_irqrestore(&chan->vchan.lock, flags);
>  }
>  
> -static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg(
> -		struct dma_chan *c, struct scatterlist *sgl,
> -		unsigned int sg_len, enum dma_transfer_direction direction,
> -		unsigned long flags, void *context)
> +static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg
> +	(struct dma_chan *c, struct scatterlist *sgl,
> +	 unsigned int sg_len, enum dma_transfer_direction direction,
> +	 unsigned long flags, void *context)
>  {
>  	struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
>  	struct gdma_dma_desc *desc;
> @@ -522,7 +523,7 @@ static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg(
>  
>  	desc = kzalloc(struct_size(desc, sg, sg_len), GFP_ATOMIC);
>  	if (!desc) {
> -		dev_err(c->device->dev, "alloc sg decs error\n");
> +		goto free_rx_tx;
>  		return NULL;
>  	}
>  	desc->residue = 0;
> @@ -558,9 +559,9 @@ static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg(
>  	return NULL;
>  }
>  
> -static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy(
> -		struct dma_chan *c, dma_addr_t dest, dma_addr_t src,
> -		size_t len, unsigned long flags)
> +static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy
> +	(struct dma_chan *c, dma_addr_t dest, dma_addr_t src,
> +	 size_t len, unsigned long flags)
>  {
>  	struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
>  	struct gdma_dma_desc *desc;
> @@ -577,7 +578,7 @@ static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy(
>  
>  	desc = kzalloc(struct_size(desc, sg, num_periods), GFP_ATOMIC);
>  	if (!desc) {
> -		dev_err(c->device->dev, "alloc memcpy decs error\n");
> +		goto free_rx_tx;
>  		return NULL;
>  	}
>  	desc->residue = len;
> @@ -601,8 +602,8 @@ static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy(
>  	return vchan_tx_prep(&chan->vchan, &desc->vdesc, flags);
>  }
>  
> -static struct dma_async_tx_descriptor *gdma_dma_prep_dma_cyclic(
> -	struct dma_chan *c, dma_addr_t buf_addr, size_t buf_len,
> +static struct dma_async_tx_descriptor *gdma_dma_prep_dma_cyclic
> +	(struct dma_chan *c, dma_addr_t buf_addr, size_t buf_len,
>  	size_t period_len, enum dma_transfer_direction direction,
>  	unsigned long flags)
>  {
> -- 
> 2.17.1
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

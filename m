Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F45225F6CC
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 11:45:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D311820500;
	Mon,  7 Sep 2020 09:45:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qIONBNUQRV+b; Mon,  7 Sep 2020 09:45:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4B8AD204E0;
	Mon,  7 Sep 2020 09:45:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D22C71BF477
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 09:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE894866AB
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 09:45:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e8hyNi12h9g7 for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 09:45:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AE2C186693
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 09:45:06 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2F072075A;
 Mon,  7 Sep 2020 09:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599471906;
 bh=ae1s3vXkWrrOVQ13ofT0E0q9L+z+T0mPJ5tiyHOU1ho=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f86/c0rVNMSJRGV1Po1CPZE0xesrpD5CMp4eSOXQf3mGTyASDvEvNZkRUVbtvc+ks
 U2dBzCI5R6GqOeOy1C8+B5AhTBDTJ8au1Puj/Ze60u+W2sS1MWU8GAueLIt/dZie7O
 r2LivmV0NFkU1Kwy7x3+x3wHwmADoPFX55KmbHY0=
Date: Mon, 7 Sep 2020 11:45:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Naveen Panwar <naveen.panwar27@gmail.com>
Subject: Re: [PATCH] drivers: staging: ralink-gdma: fixing codestyle related
 changes
Message-ID: <20200907094520.GA1632129@kroah.com>
References: <20200907093503.27725-1-naveen.panwar27@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200907093503.27725-1-naveen.panwar27@gmail.com>
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
Cc: lokeshvutla@ti.com, mpe@ellerman.id.au, devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 07, 2020 at 03:05:03PM +0530, Naveen Panwar wrote:
> Fixing the codestyle related changes in the ralink-gdma driver
> 
> Signed-off-by: Naveen Panwar <naveen.panwar27@gmail.com>
> ---
>  drivers/staging/ralink-gdma/ralink-gdma.c | 23 ++++++++++++-----------
>  1 file changed, 12 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index eabf1093328e..8e3b4a699322 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -122,6 +122,7 @@ struct gdma_dma_dev {
>  	struct gdma_data *data;
>  	void __iomem *base;
>  	struct tasklet_struct task;
> +
>  	volatile unsigned long chan_issued;
>  	atomic_t cnt;
>  
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
> +	unsigned int sg_len, enum dma_transfer_direction direction,
> +	unsigned long flags, void *context)
>  {
>  	struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
>  	struct gdma_dma_desc *desc;
> @@ -558,9 +559,9 @@ static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg(
>  	return NULL;
>  }
>  
> -static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy(
> -		struct dma_chan *c, dma_addr_t dest, dma_addr_t src,
> -		size_t len, unsigned long flags)
> +static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy
> +	(struct dma_chan *c, dma_addr_t dest, dma_addr_t src,
> +	size_t len, unsigned long flags)
>  {
>  	struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
>  	struct gdma_dma_desc *desc;
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

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D7F3165FA
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 13:07:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 373F486739;
	Wed, 10 Feb 2021 12:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DHUG6saFD3WP; Wed, 10 Feb 2021 12:07:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 68ABD866F0;
	Wed, 10 Feb 2021 12:07:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E7C2F1BF861
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 12:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E4857870FC
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 12:07:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AtW9NaJotO5y for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 12:07:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 52C0886F65
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 12:07:21 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6A39564E2A;
 Wed, 10 Feb 2021 12:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612958841;
 bh=/KLTm1jFc8aXXde0ovdili+Cy21fYSRVYi8DZDefxl4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1ZVEWowsT/o+KOg1boDtZd+gXVOUPIu+5U/1tGH7wSUGLdldOVmsFgxovlD/d4vc8
 tNStQQPTWniAm8j550IbhgiXRGB8ThTj9qXn0eKQhK5ni5snmBQPpB1kFqDSNuj29u
 96l0gpjj6ZEWv8fU/PXw5qP0m98MsrgotaFt1gjI=
Date: Wed, 10 Feb 2021 13:07:18 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aakash Hemadri <aakashhemadri123@gmail.com>
Subject: Re: [PATCH] staging: ralink-gdma: Fix checkpatch.pl CHECK
Message-ID: <YCPMdv1K2kcfbfZM@kroah.com>
References: <20210210120348.262328-1-aakashhemadri123@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210120348.262328-1-aakashhemadri123@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel-mentees@lists.linuxfoundation.org,
 linux-kernel@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 05:33:48PM +0530, Aakash Hemadri wrote:
> Remove CHECK: Lines should not end with a '('
> 
> Signed-off-by: Aakash Hemadri <aakashhemadri123@gmail.com>
> ---
> 
>  drivers/staging/ralink-gdma/ralink-gdma.c | 28 ++++++++++++-----------
>  1 file changed, 15 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index 655df317d0ee..a11f915f3308 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -135,8 +135,7 @@ struct gdma_data {
>  	int (*start_transfer)(struct gdma_dmaengine_chan *chan);
>  };
> 
> -static struct gdma_dma_dev *gdma_dma_chan_get_dev(
> -	struct gdma_dmaengine_chan *chan)
> +static struct gdma_dma_dev *gdma_dma_chan_get_dev(struct gdma_dmaengine_chan *chan)
>  {
>  	return container_of(chan->vchan.chan.device, struct gdma_dma_dev,
>  		ddev);
> @@ -510,10 +509,11 @@ static void gdma_dma_issue_pending(struct dma_chan *c)
>  	spin_unlock_irqrestore(&chan->vchan.lock, flags);
>  }
> 
> -static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg(
> -		struct dma_chan *c, struct scatterlist *sgl,
> -		unsigned int sg_len, enum dma_transfer_direction direction,
> -		unsigned long flags, void *context)
> +static struct dma_async_tx_descriptor
> +	*gdma_dma_prep_slave_sg(struct dma_chan *c, struct scatterlist *sgl,
> +				unsigned int sg_len,
> +				enum dma_transfer_direction direction,
> +				unsigned long flags, void *context)
>  {
>  	struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
>  	struct gdma_dma_desc *desc;
> @@ -558,9 +558,10 @@ static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg(
>  	return NULL;
>  }
> 
> -static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy(
> -		struct dma_chan *c, dma_addr_t dest, dma_addr_t src,
> -		size_t len, unsigned long flags)
> +static struct dma_async_tx_descriptor
> +	*gdma_dma_prep_dma_memcpy(struct dma_chan *c,
> +				  dma_addr_t dest, dma_addr_t src,
> +				  size_t len, unsigned long flags)
>  {
>  	struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
>  	struct gdma_dma_desc *desc;
> @@ -601,10 +602,11 @@ static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy(
>  	return vchan_tx_prep(&chan->vchan, &desc->vdesc, flags);
>  }
> 
> -static struct dma_async_tx_descriptor *gdma_dma_prep_dma_cyclic(
> -	struct dma_chan *c, dma_addr_t buf_addr, size_t buf_len,
> -	size_t period_len, enum dma_transfer_direction direction,
> -	unsigned long flags)
> +static struct dma_async_tx_descriptor
> +	*gdma_dma_prep_dma_cyclic(struct dma_chan *c, dma_addr_t buf_addr,
> +				  size_t buf_len, size_t period_len,
> +				  enum dma_transfer_direction direction,
> +				  unsigned long flags)
>  {
>  	struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
>  	struct gdma_dma_desc *desc;
> --
> 2.30.0

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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6354540C
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 07:35:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 81A0C868AF;
	Fri, 14 Jun 2019 05:35:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vPFYiSx1NbG2; Fri, 14 Jun 2019 05:35:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A2BC868A2;
	Fri, 14 Jun 2019 05:35:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2871F1BF841
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 05:35:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 23D5587909
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 05:35:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cJVfWceixgv5 for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 05:35:18 +0000 (UTC)
X-Greylist: delayed 00:07:47 by SQLgrey-1.7.6
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au
 [98.124.60.144])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4C86687613
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 05:35:18 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by kvm5.telegraphics.com.au (Postfix) with ESMTP id 975A2293CA;
 Fri, 14 Jun 2019 01:27:27 -0400 (EDT)
Date: Fri, 14 Jun 2019 15:27:36 +1000 (AEST)
From: Finn Thain <fthain@telegraphics.com.au>
To: Ming Lei <ming.lei@redhat.com>, "Juergen E . Fischer" <fischer@norbit.de>
Subject: Re: [PATCH V3 10/15] scsi: aha152x: use sg helper to operate
 scatterlist
In-Reply-To: <20190614025316.7360-11-ming.lei@redhat.com>
Message-ID: <alpine.LNX.2.21.1906141404270.33@nippy.intranet>
References: <20190614025316.7360-1-ming.lei@redhat.com>
 <20190614025316.7360-11-ming.lei@redhat.com>
MIME-Version: 1.0
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
Cc: Michael Schmitz <schmitzmic@gmail.com>, devel@driverdev.osuosl.org,
 Hannes Reinecke <hare@suse.com>, Benjamin Block <bblock@linux.ibm.com>,
 linux-scsi@vger.kernel.org, "Martin K . Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 James Smart <james.smart@broadcom.com>, "Ewan D . Milne" <emilne@redhat.com>,
 Jim Gill <jgill@vmware.com>,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Brian King <brking@us.ibm.com>, Christoph Hellwig <hch@lst.de>,
 Dan Carpenter <dan.carpenter@oracle.com>, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Ming,

On Fri, 14 Jun 2019, Ming Lei wrote:

> Use the scatterlist iterators and remove direct indexing of the
> scatterlist array.
> 
> This way allows us to pre-allocate one small scatterlist, which can be
> chained with one runtime allocated scatterlist if the pre-allocated one
> isn't enough for the whole request.
> 
> Signed-off-by: Ming Lei <ming.lei@redhat.com>
> ---
>  drivers/scsi/aha152x.c | 29 +++++++++++++++++++----------
>  1 file changed, 19 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/scsi/aha152x.c b/drivers/scsi/aha152x.c
> index 97872838b983..bc9d12aa7880 100644
> --- a/drivers/scsi/aha152x.c
> +++ b/drivers/scsi/aha152x.c
> @@ -2033,7 +2033,7 @@ static void datai_run(struct Scsi_Host *shpnt)
>  				    CURRENT_SC->SCp.buffers_residual > 0) {
>  					/* advance to next buffer */
>  					CURRENT_SC->SCp.buffers_residual--;
> -					CURRENT_SC->SCp.buffer++;
> +					CURRENT_SC->SCp.buffer = sg_next(CURRENT_SC->SCp.buffer);
>  					CURRENT_SC->SCp.ptr           = SG_ADDRESS(CURRENT_SC->SCp.buffer);
>  					CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length;
>  				}
> @@ -2139,7 +2139,7 @@ static void datao_run(struct Scsi_Host *shpnt)
>  		if(CURRENT_SC->SCp.this_residual==0 && CURRENT_SC->SCp.buffers_residual>0) {
>  			/* advance to next buffer */
>  			CURRENT_SC->SCp.buffers_residual--;
> -			CURRENT_SC->SCp.buffer++;
> +			CURRENT_SC->SCp.buffer = sg_next(CURRENT_SC->SCp.buffer);
>  			CURRENT_SC->SCp.ptr           = SG_ADDRESS(CURRENT_SC->SCp.buffer);
>  			CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length;
>  		}
> @@ -2160,20 +2160,29 @@ static void datao_end(struct Scsi_Host *shpnt)
>  	if(TESTLO(DMASTAT, DFIFOEMP)) {
>  		int data_count = (DATA_LEN - scsi_get_resid(CURRENT_SC)) -
>  			GETSTCNT();

data_count appears to be the number of bytes remaining in the FIFO. (I 
have to infer that much from the surrounding code. I don't have 
documentation for this controller.)

Some comments would be nice.

> +		struct scatterlist *sg = scsi_sglist(CURRENT_SC);
> +		int left, i = 0;
>  
>  		CMD_INC_RESID(CURRENT_SC, data_count);
>  

Apparently the aim is to increase the residual by the number of bytes that 
will never leave the FIFO. Above we can see that increase performed by 
scsi_set_resid() and now the same has to be done to the SCp struct.

>  		data_count -= CURRENT_SC->SCp.ptr -
>  			SG_ADDRESS(CURRENT_SC->SCp.buffer);

Here, data_count effectively has SCp.this_residual subtracted from it.

> -		while(data_count>0) {
> -			CURRENT_SC->SCp.buffer--;
> -			CURRENT_SC->SCp.buffers_residual++;
> -			data_count -= CURRENT_SC->SCp.buffer->length;
> -		}

So far, so good.

> -		CURRENT_SC->SCp.ptr = SG_ADDRESS(CURRENT_SC->SCp.buffer) -
> -			data_count;
> -		CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length +
> -			data_count;

This is like saying ptr = buffer + residual, which is bogus. This must be 
an old bug, but we never hit it because the FIFO is always empty when we 
get a DISCONNECT message. Probably because every SG segment has a length 
that is a multiple of 128 bytes. (Juergen?)

> +
> +		left = CURRENT_SC->transfersize - data_count;

Are you sure about that? Perhaps you meant to write,
		left = scsi_bufflen(CURRENT_SC) - scsi_get_resid(CURRENT_SC);

Is there a better name for this variable? Maybe 'sent' or 'bytes_sent'?

> +		for (i = 0; left > 0 && !sg_is_last(sg); i++, sg = sg_next(sg)) {
> +			if (left < sg->length)
> +				break;
> +			left -= sg->length;
> +		}
> +
> +		if (data_count > 0) {
> +			CURRENT_SC->SCp.buffers_residual += i;

Shouldn't that be,
			CURRENT_SC->SCp.buffers_residual = i;

> +			CURRENT_SC->SCp.buffer = sg;
> +
> +			CURRENT_SC->SCp.ptr = SG_ADDRESS(CURRENT_SC->SCp.buffer) + left;
> +			CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length -
> +				left;
> +		}
>  	}
>  
>  	SETPORT(SXFRCTL0, CH1|CLRCH1|CLRSTCNT);
> 

BTW, datao_run() seems to guarantee that the FIFO will never contain more 
than min(128, SCp.this_residual) so I suspect that this code can be 
simplified. That's just BTW. I wouldn't attempt to optimize this branch as 
it will only run when the FIFO is not empty, if ever. So I'd prefer 
clarity. Besides, I don't have the hardware to test it on.

-- 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

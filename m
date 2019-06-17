Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3A447787
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 03:15:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F16EF2042C;
	Mon, 17 Jun 2019 01:15:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H0NiPj1WAG3I; Mon, 17 Jun 2019 01:15:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 43CF42041F;
	Mon, 17 Jun 2019 01:15:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E9AD81BF42D
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 01:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E5E872033B
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 01:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 12r73W-OSm6i for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 01:15:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by silver.osuosl.org (Postfix) with ESMTPS id CC51020032
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 01:15:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7DCFE1796;
 Mon, 17 Jun 2019 01:15:06 +0000 (UTC)
Received: from ming.t460p (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A00A60C18;
 Mon, 17 Jun 2019 01:14:36 +0000 (UTC)
Date: Mon, 17 Jun 2019 09:14:27 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Finn Thain <fthain@telegraphics.com.au>
Subject: Re: [PATCH V3 10/15] scsi: aha152x: use sg helper to operate
 scatterlist
Message-ID: <20190617011426.GB20122@ming.t460p>
References: <20190614025316.7360-1-ming.lei@redhat.com>
 <20190614025316.7360-11-ming.lei@redhat.com>
 <alpine.LNX.2.21.1906141404270.33@nippy.intranet>
 <20190614081732.GC24393@ming.t460p>
 <alpine.LNX.2.21.1906141931070.65@nippy.intranet>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.21.1906141931070.65@nippy.intranet>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Mon, 17 Jun 2019 01:15:07 +0000 (UTC)
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
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Brian King <brking@us.ibm.com>, "Juergen E . Fischer" <fischer@norbit.de>,
 Christoph Hellwig <hch@lst.de>, Dan Carpenter <dan.carpenter@oracle.com>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 14, 2019 at 08:36:38PM +1000, Finn Thain wrote:
> On Fri, 14 Jun 2019, Ming Lei wrote:
> 
> > 
> > Follows the fixed version, could you review again?
> > 
> > From f03484d4bac083c39d70665cfbadb641093b63de Mon Sep 17 00:00:00 2001
> > From: Ming Lei <ming.lei@redhat.com>
> > Date: Wed, 12 Jun 2019 20:37:35 +0800
> > Subject: [PATCH] scsi: aha152x: use sg helper to operate scatterlist
> > 
> > Use the scatterlist iterators and remove direct indexing of the
> > scatterlist array.
> > 
> > This way allows us to pre-allocate one small scatterlist, which can be
> > chained with one runtime allocated scatterlist if the pre-allocated one
> > isn't enough for the whole request.
> > 
> > Signed-off-by: Ming Lei <ming.lei@redhat.com>
> > ---
> >  drivers/scsi/aha152x.c | 34 ++++++++++++++++++++--------------
> >  1 file changed, 20 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/scsi/aha152x.c b/drivers/scsi/aha152x.c
> > index 97872838b983..7faecdefda56 100644
> > --- a/drivers/scsi/aha152x.c
> > +++ b/drivers/scsi/aha152x.c
> > @@ -2033,7 +2033,7 @@ static void datai_run(struct Scsi_Host *shpnt)
> >  				    CURRENT_SC->SCp.buffers_residual > 0) {
> >  					/* advance to next buffer */
> >  					CURRENT_SC->SCp.buffers_residual--;
> > -					CURRENT_SC->SCp.buffer++;
> > +					CURRENT_SC->SCp.buffer = sg_next(CURRENT_SC->SCp.buffer);
> >  					CURRENT_SC->SCp.ptr           = SG_ADDRESS(CURRENT_SC->SCp.buffer);
> >  					CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length;
> >  				}
> > @@ -2139,7 +2139,7 @@ static void datao_run(struct Scsi_Host *shpnt)
> >  		if(CURRENT_SC->SCp.this_residual==0 && CURRENT_SC->SCp.buffers_residual>0) {
> >  			/* advance to next buffer */
> >  			CURRENT_SC->SCp.buffers_residual--;
> > -			CURRENT_SC->SCp.buffer++;
> > +			CURRENT_SC->SCp.buffer = sg_next(CURRENT_SC->SCp.buffer);
> >  			CURRENT_SC->SCp.ptr           = SG_ADDRESS(CURRENT_SC->SCp.buffer);
> >  			CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length;
> >  		}
> > @@ -2158,22 +2158,28 @@ static void datao_run(struct Scsi_Host *shpnt)
> >  static void datao_end(struct Scsi_Host *shpnt)
> >  {
> >  	if(TESTLO(DMASTAT, DFIFOEMP)) {
> > -		int data_count = (DATA_LEN - scsi_get_resid(CURRENT_SC)) -
> > -			GETSTCNT();
> > +		int done = GETSTCNT();
> > +		int data_count = (DATA_LEN - scsi_get_resid(CURRENT_SC)) - done;
> 
> I think that's better than my suggestion.
> 
> > +		struct scatterlist *sg = scsi_sglist(CURRENT_SC);
> > +		int i;
> >  
> >  		CMD_INC_RESID(CURRENT_SC, data_count);
> >  
> > -		data_count -= CURRENT_SC->SCp.ptr -
> > -			SG_ADDRESS(CURRENT_SC->SCp.buffer);
> > -		while(data_count>0) {
> > -			CURRENT_SC->SCp.buffer--;
> > -			CURRENT_SC->SCp.buffers_residual++;
> > -			data_count -= CURRENT_SC->SCp.buffer->length;
> > +		/*
> > +		 * rewind where we have done, and we have to start from
> > +		 * the beginning
> > +		 */
> 
> How about, "Locate the first SG entry not yet sent".

OK.

> 
> We could use sg_nents_for_len() but it returns a count of sg entries not a 
> scatterlist pointer so it's not very helpful here.
> 
> > +		for (i = 0; done > 0 && !sg_is_last(sg); i++, sg = sg_next(sg)) {
> > +			if (done < sg->length)
> > +				break;
> > +			done -= sg->length;
> >  		}
> > -		CURRENT_SC->SCp.ptr = SG_ADDRESS(CURRENT_SC->SCp.buffer) -
> > -			data_count;
> > -		CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length +
> > -			data_count;
> > +
> > +		CURRENT_SC->SCp.buffers_residual = i;
> 
> Contradicting my previous email, that's still not right. I think it would 
> have to be,
> 
> 		CURRENT_SC->SCp.buffers_residual = scsi_sg_count(CURRENT_SC) - i;

Right, my fault.

> 
> But we could remove all references to SCp.buffers_residual, like I did in 
> patch 15/15 for NCR5380.c.
> 
> > +		CURRENT_SC->SCp.buffer = sg;
> > +		CURRENT_SC->SCp.ptr = SG_ADDRESS(CURRENT_SC->SCp.buffer) + done;
> > +		CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length -
> > +			done;
> >  	}
> >  
> >  	SETPORT(SXFRCTL0, CH1|CLRCH1|CLRSTCNT);
> > 
> 
> What do you think of the revised patch below?

Looks fine, I will include it in V4.

Thanks,
Ming
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

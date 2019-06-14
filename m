Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA5345742
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 10:18:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F06B887C37;
	Fri, 14 Jun 2019 08:18:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0L-Nd+X41wBu; Fri, 14 Jun 2019 08:18:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A37487C13;
	Fri, 14 Jun 2019 08:18:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 752C31BF3E9
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 08:17:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 71C9587C0E
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 08:17:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O81D3WMXlaDw for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 08:17:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4EA6B87C03
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 08:17:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4CAC330821F4;
 Fri, 14 Jun 2019 08:17:52 +0000 (UTC)
Received: from ming.t460p (ovpn-8-17.pek2.redhat.com [10.72.8.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B57882AA88;
 Fri, 14 Jun 2019 08:17:38 +0000 (UTC)
Date: Fri, 14 Jun 2019 16:17:33 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Finn Thain <fthain@telegraphics.com.au>
Subject: Re: [PATCH V3 10/15] scsi: aha152x: use sg helper to operate
 scatterlist
Message-ID: <20190614081732.GC24393@ming.t460p>
References: <20190614025316.7360-1-ming.lei@redhat.com>
 <20190614025316.7360-11-ming.lei@redhat.com>
 <alpine.LNX.2.21.1906141404270.33@nippy.intranet>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.21.1906141404270.33@nippy.intranet>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Fri, 14 Jun 2019 08:17:57 +0000 (UTC)
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

On Fri, Jun 14, 2019 at 03:27:36PM +1000, Finn Thain wrote:
> Hi Ming,
> 
> On Fri, 14 Jun 2019, Ming Lei wrote:
> 
> > Use the scatterlist iterators and remove direct indexing of the
> > scatterlist array.
> > 
> > This way allows us to pre-allocate one small scatterlist, which can be
> > chained with one runtime allocated scatterlist if the pre-allocated one
> > isn't enough for the whole request.
> > 
> > Signed-off-by: Ming Lei <ming.lei@redhat.com>
> > ---
> >  drivers/scsi/aha152x.c | 29 +++++++++++++++++++----------
> >  1 file changed, 19 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/scsi/aha152x.c b/drivers/scsi/aha152x.c
> > index 97872838b983..bc9d12aa7880 100644
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
> > @@ -2160,20 +2160,29 @@ static void datao_end(struct Scsi_Host *shpnt)
> >  	if(TESTLO(DMASTAT, DFIFOEMP)) {
> >  		int data_count = (DATA_LEN - scsi_get_resid(CURRENT_SC)) -
> >  			GETSTCNT();
> 
> data_count appears to be the number of bytes remaining in the FIFO. (I 
> have to infer that much from the surrounding code. I don't have 
> documentation for this controller.)

Yeah, it should be so, that is the data which need to transfer again.

> 
> Some comments would be nice.
> 
> > +		struct scatterlist *sg = scsi_sglist(CURRENT_SC);
> > +		int left, i = 0;
> >  
> >  		CMD_INC_RESID(CURRENT_SC, data_count);
> >  
> 
> Apparently the aim is to increase the residual by the number of bytes that 
> will never leave the FIFO. Above we can see that increase performed by 
> scsi_set_resid() and now the same has to be done to the SCp struct.

Agree.

> 
> >  		data_count -= CURRENT_SC->SCp.ptr -
> >  			SG_ADDRESS(CURRENT_SC->SCp.buffer);
> 
> Here, data_count effectively has SCp.this_residual subtracted from it.
> 
> > -		while(data_count>0) {
> > -			CURRENT_SC->SCp.buffer--;
> > -			CURRENT_SC->SCp.buffers_residual++;
> > -			data_count -= CURRENT_SC->SCp.buffer->length;
> > -		}
> 
> So far, so good.
> 
> > -		CURRENT_SC->SCp.ptr = SG_ADDRESS(CURRENT_SC->SCp.buffer) -
> > -			data_count;
> > -		CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length +
> > -			data_count;
> 
> This is like saying ptr = buffer + residual, which is bogus. This must be 
> an old bug, but we never hit it because the FIFO is always empty when we 
> get a DISCONNECT message. Probably because every SG segment has a length 
> that is a multiple of 128 bytes. (Juergen?)
> 
> > +
> > +		left = CURRENT_SC->transfersize - data_count;
> 
> Are you sure about that? Perhaps you meant to write,
> 		left = scsi_bufflen(CURRENT_SC) - scsi_get_resid(CURRENT_SC);
> 
> Is there a better name for this variable? Maybe 'sent' or 'bytes_sent'?

'left' can be renamed as 'done', and

	done =  GETSTCNT - (CURRENT_SC->SCp.ptr - SG_ADDRESS(CURRENT_SC->SCp.buffer))

> 
> > +		for (i = 0; left > 0 && !sg_is_last(sg); i++, sg = sg_next(sg)) {
> > +			if (left < sg->length)
> > +				break;
> > +			left -= sg->length;
> > +		}
> > +
> > +		if (data_count > 0) {
> > +			CURRENT_SC->SCp.buffers_residual += i;
> 
> Shouldn't that be,
> 			CURRENT_SC->SCp.buffers_residual = i;

Good catch.

> 
> > +			CURRENT_SC->SCp.buffer = sg;
> > +
> > +			CURRENT_SC->SCp.ptr = SG_ADDRESS(CURRENT_SC->SCp.buffer) + left;
> > +			CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length -
> > +				left;
> > +		}
> >  	}
> >  
> >  	SETPORT(SXFRCTL0, CH1|CLRCH1|CLRSTCNT);
> > 
> 
> BTW, datao_run() seems to guarantee that the FIFO will never contain more 
> than min(128, SCp.this_residual) so I suspect that this code can be 
> simplified. That's just BTW. I wouldn't attempt to optimize this branch as 
> it will only run when the FIFO is not empty, if ever. So I'd prefer 
> clarity. Besides, I don't have the hardware to test it on.

I'd suggest to simply translate into code which uses current sg helper.

Follows the fixed version, could you review again?

From f03484d4bac083c39d70665cfbadb641093b63de Mon Sep 17 00:00:00 2001
From: Ming Lei <ming.lei@redhat.com>
Date: Wed, 12 Jun 2019 20:37:35 +0800
Subject: [PATCH] scsi: aha152x: use sg helper to operate scatterlist

Use the scatterlist iterators and remove direct indexing of the
scatterlist array.

This way allows us to pre-allocate one small scatterlist, which can be
chained with one runtime allocated scatterlist if the pre-allocated one
isn't enough for the whole request.

Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 drivers/scsi/aha152x.c | 34 ++++++++++++++++++++--------------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/scsi/aha152x.c b/drivers/scsi/aha152x.c
index 97872838b983..7faecdefda56 100644
--- a/drivers/scsi/aha152x.c
+++ b/drivers/scsi/aha152x.c
@@ -2033,7 +2033,7 @@ static void datai_run(struct Scsi_Host *shpnt)
 				    CURRENT_SC->SCp.buffers_residual > 0) {
 					/* advance to next buffer */
 					CURRENT_SC->SCp.buffers_residual--;
-					CURRENT_SC->SCp.buffer++;
+					CURRENT_SC->SCp.buffer = sg_next(CURRENT_SC->SCp.buffer);
 					CURRENT_SC->SCp.ptr           = SG_ADDRESS(CURRENT_SC->SCp.buffer);
 					CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length;
 				}
@@ -2139,7 +2139,7 @@ static void datao_run(struct Scsi_Host *shpnt)
 		if(CURRENT_SC->SCp.this_residual==0 && CURRENT_SC->SCp.buffers_residual>0) {
 			/* advance to next buffer */
 			CURRENT_SC->SCp.buffers_residual--;
-			CURRENT_SC->SCp.buffer++;
+			CURRENT_SC->SCp.buffer = sg_next(CURRENT_SC->SCp.buffer);
 			CURRENT_SC->SCp.ptr           = SG_ADDRESS(CURRENT_SC->SCp.buffer);
 			CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length;
 		}
@@ -2158,22 +2158,28 @@ static void datao_run(struct Scsi_Host *shpnt)
 static void datao_end(struct Scsi_Host *shpnt)
 {
 	if(TESTLO(DMASTAT, DFIFOEMP)) {
-		int data_count = (DATA_LEN - scsi_get_resid(CURRENT_SC)) -
-			GETSTCNT();
+		int done = GETSTCNT();
+		int data_count = (DATA_LEN - scsi_get_resid(CURRENT_SC)) - done;
+		struct scatterlist *sg = scsi_sglist(CURRENT_SC);
+		int i;
 
 		CMD_INC_RESID(CURRENT_SC, data_count);
 
-		data_count -= CURRENT_SC->SCp.ptr -
-			SG_ADDRESS(CURRENT_SC->SCp.buffer);
-		while(data_count>0) {
-			CURRENT_SC->SCp.buffer--;
-			CURRENT_SC->SCp.buffers_residual++;
-			data_count -= CURRENT_SC->SCp.buffer->length;
+		/*
+		 * rewind where we have done, and we have to start from
+		 * the beginning
+		 */
+		for (i = 0; done > 0 && !sg_is_last(sg); i++, sg = sg_next(sg)) {
+			if (done < sg->length)
+				break;
+			done -= sg->length;
 		}
-		CURRENT_SC->SCp.ptr = SG_ADDRESS(CURRENT_SC->SCp.buffer) -
-			data_count;
-		CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length +
-			data_count;
+
+		CURRENT_SC->SCp.buffers_residual = i;
+		CURRENT_SC->SCp.buffer = sg;
+		CURRENT_SC->SCp.ptr = SG_ADDRESS(CURRENT_SC->SCp.buffer) + done;
+		CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length -
+			done;
 	}
 
 	SETPORT(SXFRCTL0, CH1|CLRCH1|CLRSTCNT);
-- 
2.20.1


thanks,
Ming
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

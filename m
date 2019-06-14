Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A8345A7F
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 12:36:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ED61122E96;
	Fri, 14 Jun 2019 10:36:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KuDXSXB5zVUH; Fri, 14 Jun 2019 10:36:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 91CD722D9E;
	Fri, 14 Jun 2019 10:36:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E431C1BF2C9
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 10:36:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E10DE8697C
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 10:36:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OF8N4K7CUECV for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 10:36:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au
 [98.124.60.144])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E374D86975
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 10:36:42 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by kvm5.telegraphics.com.au (Postfix) with ESMTP id 38E0522BFB;
 Fri, 14 Jun 2019 06:36:38 -0400 (EDT)
Date: Fri, 14 Jun 2019 20:36:38 +1000 (AEST)
From: Finn Thain <fthain@telegraphics.com.au>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V3 10/15] scsi: aha152x: use sg helper to operate
 scatterlist
In-Reply-To: <20190614081732.GC24393@ming.t460p>
Message-ID: <alpine.LNX.2.21.1906141931070.65@nippy.intranet>
References: <20190614025316.7360-1-ming.lei@redhat.com>
 <20190614025316.7360-11-ming.lei@redhat.com>
 <alpine.LNX.2.21.1906141404270.33@nippy.intranet>
 <20190614081732.GC24393@ming.t460p>
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
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Brian King <brking@us.ibm.com>, "Juergen E . Fischer" <fischer@norbit.de>,
 Christoph Hellwig <hch@lst.de>, Dan Carpenter <dan.carpenter@oracle.com>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 14 Jun 2019, Ming Lei wrote:

> 
> Follows the fixed version, could you review again?
> 
> From f03484d4bac083c39d70665cfbadb641093b63de Mon Sep 17 00:00:00 2001
> From: Ming Lei <ming.lei@redhat.com>
> Date: Wed, 12 Jun 2019 20:37:35 +0800
> Subject: [PATCH] scsi: aha152x: use sg helper to operate scatterlist
> 
> Use the scatterlist iterators and remove direct indexing of the
> scatterlist array.
> 
> This way allows us to pre-allocate one small scatterlist, which can be
> chained with one runtime allocated scatterlist if the pre-allocated one
> isn't enough for the whole request.
> 
> Signed-off-by: Ming Lei <ming.lei@redhat.com>
> ---
>  drivers/scsi/aha152x.c | 34 ++++++++++++++++++++--------------
>  1 file changed, 20 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/scsi/aha152x.c b/drivers/scsi/aha152x.c
> index 97872838b983..7faecdefda56 100644
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
> @@ -2158,22 +2158,28 @@ static void datao_run(struct Scsi_Host *shpnt)
>  static void datao_end(struct Scsi_Host *shpnt)
>  {
>  	if(TESTLO(DMASTAT, DFIFOEMP)) {
> -		int data_count = (DATA_LEN - scsi_get_resid(CURRENT_SC)) -
> -			GETSTCNT();
> +		int done = GETSTCNT();
> +		int data_count = (DATA_LEN - scsi_get_resid(CURRENT_SC)) - done;

I think that's better than my suggestion.

> +		struct scatterlist *sg = scsi_sglist(CURRENT_SC);
> +		int i;
>  
>  		CMD_INC_RESID(CURRENT_SC, data_count);
>  
> -		data_count -= CURRENT_SC->SCp.ptr -
> -			SG_ADDRESS(CURRENT_SC->SCp.buffer);
> -		while(data_count>0) {
> -			CURRENT_SC->SCp.buffer--;
> -			CURRENT_SC->SCp.buffers_residual++;
> -			data_count -= CURRENT_SC->SCp.buffer->length;
> +		/*
> +		 * rewind where we have done, and we have to start from
> +		 * the beginning
> +		 */

How about, "Locate the first SG entry not yet sent".

We could use sg_nents_for_len() but it returns a count of sg entries not a 
scatterlist pointer so it's not very helpful here.

> +		for (i = 0; done > 0 && !sg_is_last(sg); i++, sg = sg_next(sg)) {
> +			if (done < sg->length)
> +				break;
> +			done -= sg->length;
>  		}
> -		CURRENT_SC->SCp.ptr = SG_ADDRESS(CURRENT_SC->SCp.buffer) -
> -			data_count;
> -		CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length +
> -			data_count;
> +
> +		CURRENT_SC->SCp.buffers_residual = i;

Contradicting my previous email, that's still not right. I think it would 
have to be,

		CURRENT_SC->SCp.buffers_residual = scsi_sg_count(CURRENT_SC) - i;

But we could remove all references to SCp.buffers_residual, like I did in 
patch 15/15 for NCR5380.c.

> +		CURRENT_SC->SCp.buffer = sg;
> +		CURRENT_SC->SCp.ptr = SG_ADDRESS(CURRENT_SC->SCp.buffer) + done;
> +		CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length -
> +			done;
>  	}
>  
>  	SETPORT(SXFRCTL0, CH1|CLRCH1|CLRSTCNT);
> 

What do you think of the revised patch below?

diff --git a/drivers/scsi/aha152x.c b/drivers/scsi/aha152x.c
index 97872838b983..6d0518f616cb 100644
--- a/drivers/scsi/aha152x.c
+++ b/drivers/scsi/aha152x.c
@@ -948,7 +948,6 @@ static int aha152x_internal_queue(struct scsi_cmnd *SCpnt,
 	   SCp.ptr              : buffer pointer
 	   SCp.this_residual    : buffer length
 	   SCp.buffer           : next buffer
-	   SCp.buffers_residual : left buffers in list
 	   SCp.phase            : current state of the command */
 
 	if ((phase & resetting) || !scsi_sglist(SCpnt)) {
@@ -956,13 +955,11 @@ static int aha152x_internal_queue(struct scsi_cmnd *SCpnt,
 		SCpnt->SCp.this_residual = 0;
 		scsi_set_resid(SCpnt, 0);
 		SCpnt->SCp.buffer           = NULL;
-		SCpnt->SCp.buffers_residual = 0;
 	} else {
 		scsi_set_resid(SCpnt, scsi_bufflen(SCpnt));
 		SCpnt->SCp.buffer           = scsi_sglist(SCpnt);
 		SCpnt->SCp.ptr              = SG_ADDRESS(SCpnt->SCp.buffer);
 		SCpnt->SCp.this_residual    = SCpnt->SCp.buffer->length;
-		SCpnt->SCp.buffers_residual = scsi_sg_count(SCpnt) - 1;
 	}
 
 	DO_LOCK(flags);
@@ -2030,10 +2027,9 @@ static void datai_run(struct Scsi_Host *shpnt)
 				}
 
 				if (CURRENT_SC->SCp.this_residual == 0 &&
-				    CURRENT_SC->SCp.buffers_residual > 0) {
+				    !sg_is_last(CURRENT_SC->SCp.buffer)) {
 					/* advance to next buffer */
-					CURRENT_SC->SCp.buffers_residual--;
-					CURRENT_SC->SCp.buffer++;
+					CURRENT_SC->SCp.buffer = sg_next(CURRENT_SC->SCp.buffer);
 					CURRENT_SC->SCp.ptr           = SG_ADDRESS(CURRENT_SC->SCp.buffer);
 					CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length;
 				}
@@ -2136,10 +2132,10 @@ static void datao_run(struct Scsi_Host *shpnt)
 			CMD_INC_RESID(CURRENT_SC, -2 * data_count);
 		}
 
-		if(CURRENT_SC->SCp.this_residual==0 && CURRENT_SC->SCp.buffers_residual>0) {
+		if(CURRENT_SC->SCp.this_residual==0 &&
+		   !sg_is_last(CURRENT_SC->SCp.buffer)) {
 			/* advance to next buffer */
-			CURRENT_SC->SCp.buffers_residual--;
-			CURRENT_SC->SCp.buffer++;
+			CURRENT_SC->SCp.buffer = sg_next(CURRENT_SC->SCp.buffer);
 			CURRENT_SC->SCp.ptr           = SG_ADDRESS(CURRENT_SC->SCp.buffer);
 			CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length;
 		}
@@ -2158,22 +2154,24 @@ static void datao_run(struct Scsi_Host *shpnt)
 static void datao_end(struct Scsi_Host *shpnt)
 {
 	if(TESTLO(DMASTAT, DFIFOEMP)) {
-		int data_count = (DATA_LEN - scsi_get_resid(CURRENT_SC)) -
-			GETSTCNT();
+		int done = GETSTCNT();
+		int data_count = (DATA_LEN - scsi_get_resid(CURRENT_SC)) - done;
+		struct scatterlist *sg = scsi_sglist(CURRENT_SC);
 
 		CMD_INC_RESID(CURRENT_SC, data_count);
 
-		data_count -= CURRENT_SC->SCp.ptr -
-			SG_ADDRESS(CURRENT_SC->SCp.buffer);
-		while(data_count>0) {
-			CURRENT_SC->SCp.buffer--;
-			CURRENT_SC->SCp.buffers_residual++;
-			data_count -= CURRENT_SC->SCp.buffer->length;
+		/* Locate the first SG entry not yet sent */
+		while (done > 0 && !sg_is_last(sg)) {
+			if (done < sg->length)
+				break;
+			done -= sg->length;
+			sg = sg_next(sg);
 		}
-		CURRENT_SC->SCp.ptr = SG_ADDRESS(CURRENT_SC->SCp.buffer) -
-			data_count;
-		CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length +
-			data_count;
+
+		CURRENT_SC->SCp.buffer = sg;
+		CURRENT_SC->SCp.ptr = SG_ADDRESS(CURRENT_SC->SCp.buffer) + done;
+		CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length -
+			done;
 	}
 
 	SETPORT(SXFRCTL0, CH1|CLRCH1|CLRSTCNT);
@@ -2501,7 +2499,7 @@ static void get_command(struct seq_file *m, struct scsi_cmnd * ptr)
 
 	seq_printf(m, "); resid=%d; residual=%d; buffers=%d; phase |",
 		scsi_get_resid(ptr), ptr->SCp.this_residual,
-		ptr->SCp.buffers_residual);
+		sg_nents(ptr->SCp.buffer) - 1);
 
 	if (ptr->SCp.phase & not_issued)
 		seq_puts(m, "not issued|");

-- 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

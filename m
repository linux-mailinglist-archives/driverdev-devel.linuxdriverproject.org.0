Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE29E52051
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 03:19:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 85391204B2;
	Tue, 25 Jun 2019 01:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PQ9j-TgWthV3; Tue, 25 Jun 2019 01:19:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 35DB91FC71;
	Tue, 25 Jun 2019 01:19:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 007EA1BF255
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 01:19:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F116084AB2
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 01:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 99hilxuCpSgh for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 01:19:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D294984798
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 01:19:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DB5FD13A82;
 Tue, 25 Jun 2019 01:19:21 +0000 (UTC)
Received: from ming.t460p (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4094E5D9C5;
 Tue, 25 Jun 2019 01:19:06 +0000 (UTC)
Date: Tue, 25 Jun 2019 09:19:03 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Steffen Maier <maier@linux.ibm.com>
Subject: Re: [PATCH V5 10/16] s390: zfcp_fc: use sg helper to operate
 scatterlist
Message-ID: <20190625011902.GA23777@ming.t460p>
References: <20190618013757.22401-1-ming.lei@redhat.com>
 <20190618013757.22401-11-ming.lei@redhat.com>
 <95bfa1fb-d0eb-fc61-ecc0-001ae52a326f@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <95bfa1fb-d0eb-fc61-ecc0-001ae52a326f@linux.ibm.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 25 Jun 2019 01:19:39 +0000 (UTC)
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
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>, Jim Gill <jgill@vmware.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Finn Thain <fthain@telegraphics.com.au>, Christoph Hellwig <hch@lst.de>,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Hannes Reinecke <hare@suse.com>, Bart Van Assche <bvanassche@acm.org>,
 linux-scsi@vger.kernel.org, James Smart <james.smart@broadcom.com>,
 "Ewan D . Milne" <emilne@redhat.com>,
 "Juergen E . Fischer" <fischer@norbit.de>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Benjamin Block <bblock@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Michael Schmitz <schmitzmic@gmail.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Martin Schwidefsky <schwidefsky@de.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 24, 2019 at 05:13:24PM +0200, Steffen Maier wrote:
> Hi Ming,
> 
> On 6/18/19 3:37 AM, Ming Lei wrote:
> > Use the scatterlist iterators and remove direct indexing of the
> > scatterlist array.
> > 
> > This way allows us to pre-allocate one small scatterlist, which can be
> > chained with one runtime allocated scatterlist if the pre-allocated one
> > isn't enough for the whole request.
> > 
> > Cc: Steffen Maier <maier@linux.ibm.com>
> > Cc: Benjamin Block <bblock@linux.ibm.com>
> > Cc: Martin Schwidefsky <schwidefsky@de.ibm.com>
> > Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
> > Cc: linux-s390@vger.kernel.org
> > Acked-by: Benjamin Block <bblock@linux.ibm.com>
> > Reviewed-by: Christoph Hellwig <hch@lst.de>
> > Reviewed-by: Bart Van Assche <bvanassche@acm.org>
> > Signed-off-by: Ming Lei <ming.lei@redhat.com>
> > ---
> >   drivers/s390/scsi/zfcp_fc.c | 4 ++--
> >   1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/s390/scsi/zfcp_fc.c b/drivers/s390/scsi/zfcp_fc.c
> > index 33eddb02ee30..b018b61bd168 100644
> > --- a/drivers/s390/scsi/zfcp_fc.c
> > +++ b/drivers/s390/scsi/zfcp_fc.c
> > @@ -620,7 +620,7 @@ static void zfcp_fc_sg_free_table(struct scatterlist *sg, int count)
> >   {
> >   	int i;
> > -	for (i = 0; i < count; i++, sg++)
> > +	for (i = 0; i < count; i++, sg = sg_next(sg))
> >   		if (sg)
> >   			free_page((unsigned long) sg_virt(sg));
> >   		else
> > @@ -641,7 +641,7 @@ static int zfcp_fc_sg_setup_table(struct scatterlist *sg, int count)
> >   	int i;
> >   	sg_init_table(sg, count);
> > -	for (i = 0; i < count; i++, sg++) {
> > +	for (i = 0; i < count; i++, sg = sg_next(sg)) {
> >   		addr = (void *) get_zeroed_page(GFP_KERNEL);
> >   		if (!addr) {
> >   			zfcp_fc_sg_free_table(sg, i);
> > 
> 
> I'm still catching up with emails that came during my vacation, so I'm not
> fully up-to-date on the current state of this and how to bring in potential
> fixups on top.
> 
> I think, we also have two more (not so obvious) places in the corresponding
> response/completion code path, where we might need to introduce the proper
> iterator helper:
> 
> zfcp_fsf.c:
> 
> static int zfcp_fc_eval_gpn_ft(struct zfcp_fc_req *fc_req,
> 			       struct zfcp_adapter *adapter, int max_entries)
> {
> 	struct scatterlist *sg = &fc_req->sg_rsp;
> ...
> 	/* first entry is the header */
> 	for (x = 1; x < max_entries && !last; x++) {
> ...
> 		if (x % (ZFCP_FC_GPN_FT_ENT_PAGE + 1))
> ...
> 		else
> 			acc = sg_virt(++sg);
>                                       ^^^^
> 
> zfcp_dbf.c:
> 
> static u16 zfcp_dbf_san_res_cap_len_if_gpn_ft(char *tag,
> 					      struct zfcp_fsf_req *fsf,
> 					      u16 len)
> {
> 	struct scatterlist *resp_entry = ct_els->resp;
> ...
> 	/* the basic CT_IU preamble is the same size as one entry in the GPN_FT
> 	 * response, allowing us to skip special handling for it - just skip it
> 	 */
> 	for (x = 1; x < max_entries && !last; x++) {
> 		if (x % (ZFCP_FC_GPN_FT_ENT_PAGE + 1))
> ...
> 		else
> 			acc = sg_virt(++resp_entry);
>                                       ^^^^^^^^^^^^
> 
> 
> What do you think?

Yeah, looks this one is missed, so we need the following patch:

From c9c368308fefbf034d670984fe9746a4181fe514 Mon Sep 17 00:00:00 2001
From: Ming Lei <ming.lei@redhat.com>
Date: Tue, 25 Jun 2019 09:15:34 +0800
Subject: [PATCH] s390: scsi: use sg helper to iterate over scatterlist

Unlike the legacy I/O path, scsi-mq preallocates a large array to hold
the scatterlist for each request. This static allocation can consume
substantial amounts of memory on modern controllers which support a
large number of concurrently outstanding requests.

To facilitate a switch to a smaller static allocation combined with a
dynamic allocation for requests that need it, we need to make sure all
SCSI drivers handle chained scatterlists correctly.

Convert remaining drivers that directly dereference the scatterlist
array to using the iterator functions.

Cc: Steffen Maier <maier@linux.ibm.com>
Cc: Benjamin Block <bblock@linux.ibm.com>
Cc: Martin Schwidefsky <schwidefsky@de.ibm.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: linux-s390@vger.kernel.org
Cc: Benjamin Block <bblock@linux.ibm.com>
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 drivers/s390/scsi/zfcp_dbf.c | 2 +-
 drivers/s390/scsi/zfcp_fc.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/s390/scsi/zfcp_dbf.c b/drivers/s390/scsi/zfcp_dbf.c
index dccdb41bed8c..c7129f5234f0 100644
--- a/drivers/s390/scsi/zfcp_dbf.c
+++ b/drivers/s390/scsi/zfcp_dbf.c
@@ -552,7 +552,7 @@ static u16 zfcp_dbf_san_res_cap_len_if_gpn_ft(char *tag,
 		if (x % (ZFCP_FC_GPN_FT_ENT_PAGE + 1))
 			acc++;
 		else
-			acc = sg_virt(++resp_entry);
+			acc = sg_virt(resp_entry = sg_next(resp_entry));
 
 		last = acc->fp_flags & FC_NS_FID_LAST;
 	}
diff --git a/drivers/s390/scsi/zfcp_fc.c b/drivers/s390/scsi/zfcp_fc.c
index b018b61bd168..5048812ce660 100644
--- a/drivers/s390/scsi/zfcp_fc.c
+++ b/drivers/s390/scsi/zfcp_fc.c
@@ -742,7 +742,7 @@ static int zfcp_fc_eval_gpn_ft(struct zfcp_fc_req *fc_req,
 		if (x % (ZFCP_FC_GPN_FT_ENT_PAGE + 1))
 			acc++;
 		else
-			acc = sg_virt(++sg);
+			acc = sg_virt(sg = sg_next(sg));
 
 		last = acc->fp_flags & FC_NS_FID_LAST;
 		d_id = ntoh24(acc->fp_fid);
-- 
2.20.1


Thanks,
Ming
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

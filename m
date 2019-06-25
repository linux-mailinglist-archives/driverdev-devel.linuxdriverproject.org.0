Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A49F52151
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 05:42:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8294D85C5C;
	Tue, 25 Jun 2019 03:42:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8r8NjIyU5hFO; Tue, 25 Jun 2019 03:42:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2061285AA1;
	Tue, 25 Jun 2019 03:42:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A0491BF94B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 03:42:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0547284900
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 03:42:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iy0os9zVL0Gk for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 03:42:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au
 [98.124.60.144])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2C270848F5
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 03:42:48 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by kvm5.telegraphics.com.au (Postfix) with ESMTP id C559829B30;
 Mon, 24 Jun 2019 23:42:42 -0400 (EDT)
Date: Tue, 25 Jun 2019 13:42:40 +1000 (AEST)
From: Finn Thain <fthain@telegraphics.com.au>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V5 10/16] s390: zfcp_fc: use sg helper to operate
 scatterlist
In-Reply-To: <20190625023027.GF23777@ming.t460p>
Message-ID: <alpine.LNX.2.21.1906251342280.8@nippy.intranet>
References: <20190618013757.22401-1-ming.lei@redhat.com>
 <20190618013757.22401-11-ming.lei@redhat.com>
 <95bfa1fb-d0eb-fc61-ecc0-001ae52a326f@linux.ibm.com>
 <20190625011902.GA23777@ming.t460p>
 <alpine.LNX.2.21.1906251157160.8@nippy.intranet>
 <20190625023027.GF23777@ming.t460p>
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
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>, Jim Gill <jgill@vmware.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Christoph Hellwig <hch@lst.de>, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, Hannes Reinecke <hare@suse.com>,
 Bart Van Assche <bvanassche@acm.org>, linux-scsi@vger.kernel.org,
 James Smart <james.smart@broadcom.com>, "Ewan D . Milne" <emilne@redhat.com>,
 "Juergen E . Fischer" <fischer@norbit.de>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Benjamin Block <bblock@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Michael Schmitz <schmitzmic@gmail.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Steffen Maier <maier@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 25 Jun 2019, Ming Lei wrote:

> On Tue, Jun 25, 2019 at 12:01:24PM +1000, Finn Thain wrote:
> > > diff --git a/drivers/s390/scsi/zfcp_dbf.c b/drivers/s390/scsi/zfcp_dbf.c
> > > index dccdb41bed8c..c7129f5234f0 100644
> > > --- a/drivers/s390/scsi/zfcp_dbf.c
> > > +++ b/drivers/s390/scsi/zfcp_dbf.c
> > > @@ -552,7 +552,7 @@ static u16 zfcp_dbf_san_res_cap_len_if_gpn_ft(char *tag,
> > >  		if (x % (ZFCP_FC_GPN_FT_ENT_PAGE + 1))
> > >  			acc++;
> > >  		else
> > > -			acc = sg_virt(++resp_entry);
> > > +			acc = sg_virt(resp_entry = sg_next(resp_entry));
> > 
> > Shouldn't that be,
> > 
> > 			acc = sg_virt(sg_next(resp_entry));
> 
> resp_entry needs to be updated.
> 

Right, sorry for the noise.

-- 

> > 
> > >  
> > >  		last = acc->fp_flags & FC_NS_FID_LAST;
> > >  	}
> > > diff --git a/drivers/s390/scsi/zfcp_fc.c b/drivers/s390/scsi/zfcp_fc.c
> > > index b018b61bd168..5048812ce660 100644
> > > --- a/drivers/s390/scsi/zfcp_fc.c
> > > +++ b/drivers/s390/scsi/zfcp_fc.c
> > > @@ -742,7 +742,7 @@ static int zfcp_fc_eval_gpn_ft(struct zfcp_fc_req *fc_req,
> > >  		if (x % (ZFCP_FC_GPN_FT_ENT_PAGE + 1))
> > >  			acc++;
> > >  		else
> > > -			acc = sg_virt(++sg);
> > > +			acc = sg_virt(sg = sg_next(sg));
> > 
> > and
> > 
> > 			acc = sg_virt(sg_next(sg));
> > 
> > ?
> 
> Same with above.
> 
> Thanks,
> Ming
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

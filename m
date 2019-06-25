Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3A7520A4
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 04:30:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33BFA84AAD;
	Tue, 25 Jun 2019 02:30:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nmmEwdemvWDH; Tue, 25 Jun 2019 02:30:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C63B184DFE;
	Tue, 25 Jun 2019 02:30:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79AA01BF3DA
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 02:30:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6FF9085AE9
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 02:30:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EVz6f_EnpHDp for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 02:30:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4C63985AA1
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 02:30:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D6ED63086204;
 Tue, 25 Jun 2019 02:30:46 +0000 (UTC)
Received: from ming.t460p (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 29B1C60BE2;
 Tue, 25 Jun 2019 02:30:32 +0000 (UTC)
Date: Tue, 25 Jun 2019 10:30:28 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Finn Thain <fthain@telegraphics.com.au>
Subject: Re: [PATCH V5 10/16] s390: zfcp_fc: use sg helper to operate
 scatterlist
Message-ID: <20190625023027.GF23777@ming.t460p>
References: <20190618013757.22401-1-ming.lei@redhat.com>
 <20190618013757.22401-11-ming.lei@redhat.com>
 <95bfa1fb-d0eb-fc61-ecc0-001ae52a326f@linux.ibm.com>
 <20190625011902.GA23777@ming.t460p>
 <alpine.LNX.2.21.1906251157160.8@nippy.intranet>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.21.1906251157160.8@nippy.intranet>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 25 Jun 2019 02:30:47 +0000 (UTC)
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

On Tue, Jun 25, 2019 at 12:01:24PM +1000, Finn Thain wrote:
> > diff --git a/drivers/s390/scsi/zfcp_dbf.c b/drivers/s390/scsi/zfcp_dbf.c
> > index dccdb41bed8c..c7129f5234f0 100644
> > --- a/drivers/s390/scsi/zfcp_dbf.c
> > +++ b/drivers/s390/scsi/zfcp_dbf.c
> > @@ -552,7 +552,7 @@ static u16 zfcp_dbf_san_res_cap_len_if_gpn_ft(char *tag,
> >  		if (x % (ZFCP_FC_GPN_FT_ENT_PAGE + 1))
> >  			acc++;
> >  		else
> > -			acc = sg_virt(++resp_entry);
> > +			acc = sg_virt(resp_entry = sg_next(resp_entry));
> 
> Shouldn't that be,
> 
> 			acc = sg_virt(sg_next(resp_entry));

resp_entry needs to be updated.

> 
> >  
> >  		last = acc->fp_flags & FC_NS_FID_LAST;
> >  	}
> > diff --git a/drivers/s390/scsi/zfcp_fc.c b/drivers/s390/scsi/zfcp_fc.c
> > index b018b61bd168..5048812ce660 100644
> > --- a/drivers/s390/scsi/zfcp_fc.c
> > +++ b/drivers/s390/scsi/zfcp_fc.c
> > @@ -742,7 +742,7 @@ static int zfcp_fc_eval_gpn_ft(struct zfcp_fc_req *fc_req,
> >  		if (x % (ZFCP_FC_GPN_FT_ENT_PAGE + 1))
> >  			acc++;
> >  		else
> > -			acc = sg_virt(++sg);
> > +			acc = sg_virt(sg = sg_next(sg));
> 
> and
> 
> 			acc = sg_virt(sg_next(sg));
> 
> ?

Same with above.

Thanks,
Ming
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

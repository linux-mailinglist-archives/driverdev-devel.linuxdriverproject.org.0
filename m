Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A463B52088
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 04:01:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E5C4C2045A;
	Tue, 25 Jun 2019 02:01:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AeXCPs5aj5PQ; Tue, 25 Jun 2019 02:01:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 93C842045F;
	Tue, 25 Jun 2019 02:01:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AD5BE1BF255
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 02:01:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AA32585039
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 02:01:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qxHT7U2nv0RU for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 02:01:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au
 [98.124.60.144])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1DD2284FB2
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 02:01:31 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by kvm5.telegraphics.com.au (Postfix) with ESMTP id 97A1229AF7;
 Mon, 24 Jun 2019 22:01:26 -0400 (EDT)
Date: Tue, 25 Jun 2019 12:01:24 +1000 (AEST)
From: Finn Thain <fthain@telegraphics.com.au>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V5 10/16] s390: zfcp_fc: use sg helper to operate
 scatterlist
In-Reply-To: <20190625011902.GA23777@ming.t460p>
Message-ID: <alpine.LNX.2.21.1906251157160.8@nippy.intranet>
References: <20190618013757.22401-1-ming.lei@redhat.com>
 <20190618013757.22401-11-ming.lei@redhat.com>
 <95bfa1fb-d0eb-fc61-ecc0-001ae52a326f@linux.ibm.com>
 <20190625011902.GA23777@ming.t460p>
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

> diff --git a/drivers/s390/scsi/zfcp_dbf.c b/drivers/s390/scsi/zfcp_dbf.c
> index dccdb41bed8c..c7129f5234f0 100644
> --- a/drivers/s390/scsi/zfcp_dbf.c
> +++ b/drivers/s390/scsi/zfcp_dbf.c
> @@ -552,7 +552,7 @@ static u16 zfcp_dbf_san_res_cap_len_if_gpn_ft(char *tag,
>  		if (x % (ZFCP_FC_GPN_FT_ENT_PAGE + 1))
>  			acc++;
>  		else
> -			acc = sg_virt(++resp_entry);
> +			acc = sg_virt(resp_entry = sg_next(resp_entry));

Shouldn't that be,

			acc = sg_virt(sg_next(resp_entry));

>  
>  		last = acc->fp_flags & FC_NS_FID_LAST;
>  	}
> diff --git a/drivers/s390/scsi/zfcp_fc.c b/drivers/s390/scsi/zfcp_fc.c
> index b018b61bd168..5048812ce660 100644
> --- a/drivers/s390/scsi/zfcp_fc.c
> +++ b/drivers/s390/scsi/zfcp_fc.c
> @@ -742,7 +742,7 @@ static int zfcp_fc_eval_gpn_ft(struct zfcp_fc_req *fc_req,
>  		if (x % (ZFCP_FC_GPN_FT_ENT_PAGE + 1))
>  			acc++;
>  		else
> -			acc = sg_virt(++sg);
> +			acc = sg_virt(sg = sg_next(sg));

and

			acc = sg_virt(sg_next(sg));

?

-- 

>  
>  		last = acc->fp_flags & FC_NS_FID_LAST;
>  		d_id = ntoh24(acc->fp_fid);
> -- 
> 2.20.1
> 
> 
> Thanks,
> Ming
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

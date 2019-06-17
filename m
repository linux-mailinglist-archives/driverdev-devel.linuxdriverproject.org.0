Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8652B47E55
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 11:25:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E7C4585549;
	Mon, 17 Jun 2019 09:25:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AN9h1-iv60z7; Mon, 17 Jun 2019 09:25:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A79F849BE;
	Mon, 17 Jun 2019 09:25:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42AB81BF3D5
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 09:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3F5D286BC1
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 09:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jt5fFTL3E6bv for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 09:25:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from newverein.lst.de (verein.lst.de [213.95.11.211])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 88905869FE
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 09:25:18 +0000 (UTC)
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 1D06168AFE; Mon, 17 Jun 2019 11:24:47 +0200 (CEST)
Date: Mon, 17 Jun 2019 11:24:46 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V4 09/16] staging: rtsx: use sg helper to operate
 scatterlist
Message-ID: <20190617092446.GA8707@lst.de>
References: <20190617030349.26415-1-ming.lei@redhat.com>
 <20190617030349.26415-10-ming.lei@redhat.com> <20190617082706.GI7455@lst.de>
 <20190617091524.GB31002@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617091524.GB31002@ming.t460p>
User-Agent: Mutt/1.5.17 (2007-11-01)
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
 Bart Van Assche <bvanassche@acm.org>, linux-scsi@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 James Smart <james.smart@broadcom.com>, "Ewan D . Milne" <emilne@redhat.com>,
 Jim Gill <jgill@vmware.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Brian King <brking@us.ibm.com>, Finn Thain <fthain@telegraphics.com.au>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Kim Bradley <kim.jamie.bradley@gmail.com>,
 "Juergen E . Fischer" <fischer@norbit.de>, Christoph Hellwig <hch@lst.de>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> +		struct scatterlist *sg = *cur_sg ?:
> +				(struct scatterlist *)scsi_sglist(srb);
> +

No need for the cast here.  And I have to say I hate that GNU C
non-standard shortshut in ? :.

Why not simply:

		struct scatterlist *sg = *cur_sg;

		if (!sg)
			sg = scsi_sglist(srb);

Which is a little more verbose, but much more readabe.

The rest of the patch looks fine to me.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

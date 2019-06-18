Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C9549638
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 02:16:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8671E87829;
	Tue, 18 Jun 2019 00:16:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OoH7nFwRRPtu; Tue, 18 Jun 2019 00:16:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1489C870D7;
	Tue, 18 Jun 2019 00:16:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E25581BF38B
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 00:15:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DC43D84FB1
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 00:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nrbGD9PZE5U8 for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 00:15:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C36D484B8F
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 00:15:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C4ECDC057F3E;
 Tue, 18 Jun 2019 00:15:57 +0000 (UTC)
Received: from ming.t460p (ovpn-8-17.pek2.redhat.com [10.72.8.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2DA7D91F33;
 Tue, 18 Jun 2019 00:15:41 +0000 (UTC)
Date: Tue, 18 Jun 2019 08:15:37 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Finn Thain <fthain@telegraphics.com.au>
Subject: Re: [PATCH V4 11/16] scsi: aha152x: use sg helper to operate
 scatterlist
Message-ID: <20190618001536.GA5774@ming.t460p>
References: <20190617030349.26415-1-ming.lei@redhat.com>
 <20190617030349.26415-12-ming.lei@redhat.com>
 <alpine.LNX.2.21.1906171334330.168@nippy.intranet>
 <alpine.LNX.2.21.1906180901160.284@nippy.intranet>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.21.1906180901160.284@nippy.intranet>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Tue, 18 Jun 2019 00:15:58 +0000 (UTC)
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

On Tue, Jun 18, 2019 at 09:35:48AM +1000, Finn Thain wrote:
> On Mon, 17 Jun 2019, Finn Thain wrote:
> 
> > On Mon, 17 Jun 2019, Ming Lei wrote:
> > 
> > > Use the scatterlist iterators and remove direct indexing of the
> > > scatterlist array.
> > > 
> > > This way allows us to pre-allocate one small scatterlist, which can be
> > > chained with one runtime allocated scatterlist if the pre-allocated one
> > > isn't enough for the whole request.
> > > 
> > > Finn added the change to replace SCp.buffers_residual with sg_is_last()
> > > for fixing updating it, and the similar change has been applied on
> > > NCR5380.c
> > > 
> > > Cc: Finn Thain <fthain@telegraphics.com.au>
> > > Signed-off-by: Ming Lei <ming.lei@redhat.com>
> > 
> > Reviewed-by: Finn Thain <fthain@telegraphics.com.au>
> > 
> 
> I have to retract that. I think this patch is still wrong.
> 
> GETSTCNT() appears to be the number of bytes sent since datao_init() and 
> not the number of bytes sent since the start of the command. (Note the 
> CLRSTCNT in datao_init() which appears to clear the transfer counter.) I 
> don't see how the existing datao_end() could work otherwise. (Juergen?)
> 
> So here's another attempt. Ming, I'd be happy to take the blame/credit (in 
> the form of a From tag etc.) in case you don't want to spend more time on 
> this.

Sure, will do that in V5.

Thanks,
Ming
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

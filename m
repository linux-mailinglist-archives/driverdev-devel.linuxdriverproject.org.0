Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E68E54543E
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 07:48:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C93E48798E;
	Fri, 14 Jun 2019 05:48:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AajJgHEhX5fu; Fri, 14 Jun 2019 05:48:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 893CE876C2;
	Fri, 14 Jun 2019 05:48:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 95BE41BF841
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 05:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8AA84876C6
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 05:48:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UjjT82+POC-h for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 05:48:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0A375876C2
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 05:48:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60C122133D;
 Fri, 14 Jun 2019 05:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560491306;
 bh=VSW1Yi1WUX3bgXsbFbk8tVjvLE83E3JNc9bzd89Pv6g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0uw2nntHXiooJt2oxdTguna2RDTHM4B8zoHPe938P1k7E/G64rBj+gQy5a5XUouux
 M8tI1nKSCflY0bZ+Npg/a3TE7rWWinr0r+Oe28d4yQOosHp38spAv1p6yrB8dfpUb4
 /eyuz8SypS0Yr7qiHsdkQfDm7Eua5ONROwy8C5Us=
Date: Fri, 14 Jun 2019 07:48:24 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V3 08/15] staging: unisys: visorhba: use sg helper to
 operate scatterlist
Message-ID: <20190614054824.GA27319@kroah.com>
References: <20190614025316.7360-1-ming.lei@redhat.com>
 <20190614025316.7360-9-ming.lei@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614025316.7360-9-ming.lei@redhat.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
 linux-usb@vger.kernel.org, James Smart <james.smart@broadcom.com>,
 "Ewan D . Milne" <emilne@redhat.com>, Jim Gill <jgill@vmware.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Brian King <brking@us.ibm.com>, Finn Thain <fthain@telegraphics.com.au>,
 "Juergen E . Fischer" <fischer@norbit.de>, Christoph Hellwig <hch@lst.de>,
 Dan Carpenter <dan.carpenter@oracle.com>, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 14, 2019 at 10:53:09AM +0800, Ming Lei wrote:
> Use the scatterlist iterators and remove direct indexing of the
> scatterlist array.
> 
> This way allows us to pre-allocate one small scatterlist, which can be
> chained with one runtime allocated scatterlist if the pre-allocated one
> isn't enough for the whole request.
> 
> Cc: devel@driverdev.osuosl.org
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Ming Lei <ming.lei@redhat.com>
> ---
>  drivers/staging/unisys/visorhba/visorhba_main.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

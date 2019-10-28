Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF3AE7600
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 17:24:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0600985078;
	Mon, 28 Oct 2019 16:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RDfAevC2JRDR; Mon, 28 Oct 2019 16:24:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9DD35844B7;
	Mon, 28 Oct 2019 16:24:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 647A41BF330
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 16:24:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5E744204B2
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 16:24:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BibImt2LPStQ for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 16:24:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 83B9E20107
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 16:24:15 +0000 (UTC)
Received: from localhost (100.50.158.77.rev.sfr.net [77.158.50.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C9FB9214E0;
 Mon, 28 Oct 2019 16:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572279855;
 bh=9SYnGJBKGry8Ep/RmYvXUU7PE75/rx3zjc6eQOr/ZoU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IIOmHNqdIHOz+TOlaGKmDotsgeOIVao8TqVGu+dbGb6mmOWZ70bF6X17X86o5xrLc
 /T3pzH6rM1uUpzHUhpbC5KVykYGhV2YFfs6PNmoua+la/jkFHGX81u1SzXAdYDj3SN
 omsFCnSD+LDNRZV+1JPIBhn57cqcBH6WZxCIMHjA=
Date: Mon, 28 Oct 2019 17:24:12 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Davidlohr Bueso <dave@stgolabs.net>
Subject: Re: [PATCH] staging: vc04_services: replace g_free_fragments_mutex
 with spinlock
Message-ID: <20191028162412.GA321492@kroah.com>
References: <20191027221530.12080-1-dave@stgolabs.net>
 <20191028155354.s3bgq2wazwlh32km@linux-p48b>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028155354.s3bgq2wazwlh32km@linux-p48b>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, eric@anholt.net, wahrenst@gmx.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 28, 2019 at 08:53:54AM -0700, Davidlohr Bueso wrote:
> Cc devel@driverdev.osuosl.org
> 
> On Sun, 27 Oct 2019, Bueso wrote:
> 
> > There seems no need to be using a semaphore, or a sleeping lock
> > in the first place: critical region is extremely short, does not
> > call into any blocking calls and furthermore lock and unlocking
> > operations occur in the same context.
> > 
> > Get rid of another semaphore user by replacing it with a spinlock.
> > 
> > Signed-off-by: Davidlohr Bueso <dave@stgolabs.net>
> > ---
> > This is in an effort to further reduce semaphore users in the kernel.
> > 
> > .../staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 10 +++++-----
> > 1 file changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > index 8dc730cfe7a6..710d21654128 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > @@ -63,7 +63,7 @@ static char *g_free_fragments;
> > static struct semaphore g_free_fragments_sema;
> > static struct device *g_dev;
> > 
> > -static DEFINE_SEMAPHORE(g_free_fragments_mutex);
> > +static DEFINE_SPINLOCK(g_free_fragments_lock);
> > 
> > static irqreturn_t
> > vchiq_doorbell_irq(int irq, void *dev_id);
> > @@ -528,11 +528,11 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
> > 
> > 		WARN_ON(g_free_fragments == NULL);
> > 
> > -		down(&g_free_fragments_mutex);
> > +		spin_lock(&g_free_fragments_lock);
> > 		fragments = g_free_fragments;
> > 		WARN_ON(fragments == NULL);
> > 		g_free_fragments = *(char **) g_free_fragments;
> > -		up(&g_free_fragments_mutex);
> > +		spin_unlock(&g_free_fragments_lock);
> > 		pagelist->type = PAGELIST_READ_WITH_FRAGMENTS +
> > 			(fragments - g_fragments_base) / g_fragments_size;
> > 	}
> > @@ -591,10 +591,10 @@ free_pagelist(struct vchiq_pagelist_info *pagelistinfo,
> > 			kunmap(pages[num_pages - 1]);
> > 		}
> > 
> > -		down(&g_free_fragments_mutex);
> > +		spin_lock(&g_free_fragments_lock);
> > 		*(char **)fragments = g_free_fragments;
> > 		g_free_fragments = fragments;
> > -		up(&g_free_fragments_mutex);
> > +		spin_unlock(&g_free_fragments_lock);
> > 		up(&g_free_fragments_sema);
> > 	}
> > 
> > -- 
> > 2.16.4
> > 

This is obviously not in a format I can apply it in :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

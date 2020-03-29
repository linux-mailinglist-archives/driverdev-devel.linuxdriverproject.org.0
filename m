Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A170E196C37
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 11:47:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF43486781;
	Sun, 29 Mar 2020 09:47:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ILFA56O3-KiG; Sun, 29 Mar 2020 09:47:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7BCB2865AB;
	Sun, 29 Mar 2020 09:47:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5875E1BF346
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 09:47:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 49EFD86EA7
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 09:47:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JDtOerpWtlqR for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 09:47:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9221486A40
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 09:47:35 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.72,319,1580770800"; d="scan'208";a="442806325"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Mar 2020 11:47:33 +0200
Date: Sun, 29 Mar 2020 11:47:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: John Wyatt <jbwyatt4@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Replace udelay with
 preferred usleep_range
In-Reply-To: <2fccf96c3754e6319797a10856e438e023f734a7.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003291144460.2990@hadrien>
References: <20200329092204.770405-1-jbwyatt4@gmail.com>
 <alpine.DEB.2.21.2003291127230.2990@hadrien>
 <2fccf96c3754e6319797a10856e438e023f734a7.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Sun, 29 Mar 2020, John Wyatt wrote:

> On Sun, 2020-03-29 at 11:28 +0200, Julia Lawall wrote:
> >
> > On Sun, 29 Mar 2020, John B. Wyatt IV wrote:
> >
> > > Fix style issue with usleep_range being reported as preferred over
> > > udelay.
> > >
> > > Issue reported by checkpatch.
> > >
> > > Please review.
> > >
> > > As written in Documentation/timers/timers-howto.rst udelay is the
> > > generally preferred API. hrtimers, as noted in the docs, may be too
> > > expensive for this short timer.
> > >
> > > Are the docs out of date, or, is this a checkpatch issue?
> > >
> > > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > > ---
> > >  drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c
> > > b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > > index eeeeec97ad27..019c8cce6bab 100644
> > > --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> > > +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > > @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
> > >  	dev_dbg(par->info->device, "%s()\n", __func__);
> > >
> > >  	gpiod_set_value(par->gpio.reset, 0);
> > > -	udelay(20);
> > > +	usleep_range(20, 20);
> >
> > usleep_range should have a range, eg usleep_range(50, 100);.  But it
> > is
> > hard to know a priori what the range should be.  So it is probably
> > better
> > to leave the code alone.
>
> Understood.
>
> With the question I wrote in the commit message:
>
> "As written in Documentation/timers/timers-howto.rst udelay is the
> generally preferred API. hrtimers, as noted in the docs, may be too
> expensive for this short timer.
>
> Are the docs out of date, or, is this a checkpatch issue?"
>
> Is usleep_range too expensive for this operation?
>
> Why does checkpatch favor usleep_range while the docs favor udelay?

I don't know the answer in detail, but it is quite possible that
checkpatch doesn't pay any attention to the delay argument.  Checkpatch is
a perl script that highlights things that may be of concern.  It is not a
precise static analsis tool.

As a matter of form, all of your Please review comments should have been
put below the ---.  Currently, if someone had wanted to apply the patch,
you would make them do extra work to remove this information.

julia

>
> >
> > julia
> >
> > >  	gpiod_set_value(par->gpio.reset, 1);
> > >  	mdelay(120);
> > >  }
> > > --
> > > 2.25.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> > > Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it,
> > > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/20200329092204.770405-1-jbwyatt4%40gmail.com
> > > .
> > >
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B1927846
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 10:43:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5AC2987E8E;
	Thu, 23 May 2019 08:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jQ-Z652mubrh; Thu, 23 May 2019 08:42:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E075886512;
	Thu, 23 May 2019 08:42:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D6E451BF358
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 08:42:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D3D75868E7
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 08:42:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lpqJebVDbUPd for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 08:42:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D916481AB5
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 08:42:56 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2969920881;
 Thu, 23 May 2019 08:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558600976;
 bh=BuZkJfDpDKsBcnzErUlYWJxVb0Fb5383/quSQvg7bMc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HqaldpNdJ9Ff+CcLP19DojL0HVbQhgDlbWQInW3/wunoC16ErQ/U+lgM57mI+JDJh
 PpUmkENq2Orc0d+VdH3QRh+IdE3S2FX+NSSzAZ9isjz4EbSReOjnVLbJs0IuwM6qd7
 LrbPCwR0Jnibf8vIViJhOwzBDs8oAuHz/FmDfSlU=
Date: Thu, 23 May 2019 10:42:54 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: Remove unnecessary variables
Message-ID: <20190523084254.GA831@kroah.com>
References: <20190523063504.10530-1-nishka.dasgupta@yahoo.com>
 <20190523072220.GC24998@kroah.com>
 <b8cc12d9-2fe3-754b-be08-f23055a31ffe@yahoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8cc12d9-2fe3-754b-be08-f23055a31ffe@yahoo.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 23, 2019 at 01:51:18PM +0530, Nishka Dasgupta wrote:
> 
> 
> On 23/05/19 12:52 PM, Greg KH wrote:
> > On Thu, May 23, 2019 at 12:05:01PM +0530, Nishka Dasgupta wrote:
> > > In the functions export_reset_0 and export_reset_1 in arcx-anybus.c,
> > > the only operation performed before return is passing the variable cd
> > > (which takes the value of a function call on one of the parameters) as
> > > argument to another function. Hence the variable cd can be removed.
> > > Issue found using Coccinelle.
> > > 
> > > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > > ---
> > >   drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
> > >   1 file changed, 2 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/drivers/staging/fieldbus/anybuss/arcx-anybus.c b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
> > > index 2ecffa42e561..e245f940a5c4 100644
> > > --- a/drivers/staging/fieldbus/anybuss/arcx-anybus.c
> > > +++ b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
> > > @@ -87,16 +87,12 @@ static int anybuss_reset(struct controller_priv *cd,
> > >   static void export_reset_0(struct device *dev, bool assert)
> > >   {
> > > -	struct controller_priv *cd = dev_get_drvdata(dev);
> > > -
> > > -	anybuss_reset(cd, 0, assert);
> > > +	anybuss_reset(dev_get_drvdata(dev), 0, assert);
> > >   }
> > 
> > While your patch is "correct", it's not the nicest thing.  The way the
> > code looks today is to make it obvious we are passing a pointer to a
> > struct controller_priv() into anybuss_reset().  But with your change, it
> > looks like we are passing any random void pointer to it.
> > 
> > So I'd prefer the original code please.
> 
> Thank you, I'll drop this patch then.
> 
> > Also, you forgot to cc: Sven on this patch, please always use the output
> > of scripts/get_maintainer.pl.
> 
> Which arguments should I use? If I use --nokeywords, --nogit,
> --nogit-fallback and --norolestats then only your name and the two mailing
> lists show up.

I don't use any arguments at all:
$ ./scripts/get_maintainer.pl --file drivers/staging/fieldbus/anybuss/arcx-anybus.c
Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:STAGING SUBSYSTEM,commit_signer:2/2=100%)
Sven Van Asbroeck <thesven73@gmail.com> (commit_signer:2/2=100%,authored:2/2=100%,added_lines:412/412=100%,removed_lines:31/31=100%)
devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
linux-kernel@vger.kernel.org (open list)

> (Also, regarding the mailing lists: every mail sent to
> linux-kernel@vger.kernel.org is bouncing; should I not send to that list
> anymore?)

Please pick a reputable email server, yahoo.com emails are banned from
all vger.kernel.org mailing lists.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

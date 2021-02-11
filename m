Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F9A318918
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 12:10:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1A7D886E09;
	Thu, 11 Feb 2021 11:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BxIWlsEPIeko; Thu, 11 Feb 2021 11:10:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 049DF86B6D;
	Thu, 11 Feb 2021 11:10:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 03D201BF3EB
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 11:10:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 002BA86B71
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 11:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hLkleAeoo4aU for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 11:10:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6B4CB86B6D
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 11:10:49 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 332C964DCF;
 Thu, 11 Feb 2021 11:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613041849;
 bh=OwTvJKo3bWcGvzUymqiegcRj1ye0KUJE2umtbnsBJ5U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aNXOIUvO8KBBEQKTqAlcFhTmgkYC/twHPKgXGJThqiJdXEC2pU43ZI2rgtjErhsU9
 mdyCWivcrMHHlhE971JGp5LQj/9MDrY+pY942ceWNsPKn0IDXj8UZoC04QAjQoi+WI
 i9djr/n4a9oYQzqmwHVc9OXpH67StE3GtYwg4nvc=
Date: Thu, 11 Feb 2021 12:10:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Fatih YILDIRIM <yildirim.fatih@gmail.com>
Subject: Re: [PATCH -next] staging: ks7010: Macros with complex values
Message-ID: <YCUQtJk1XMsBRGBz@kroah.com>
References: <20210211092239.10291-1-yildirim.fatih@gmail.com>
 <YCUAy1VhLV3lwa3H@kroah.com>
 <20210211105704.GA10351@TRWS9215.usr.ingenico.loc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210211105704.GA10351@TRWS9215.usr.ingenico.loc>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 gustavo@embeddedor.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 01:57:04PM +0300, Fatih YILDIRIM wrote:
> On Thu, Feb 11, 2021 at 11:02:51AM +0100, Greg KH wrote:
> > On Thu, Feb 11, 2021 at 12:22:39PM +0300, Fatih Yildirim wrote:
> > > Fix for checkpatch.pl warning:
> > > Macros with complex values should be enclosed in parentheses.
> > > 
> > > Signed-off-by: Fatih Yildirim <yildirim.fatih@gmail.com>
> > > ---
> > >  drivers/staging/ks7010/ks_hostif.h | 24 ++++++++++++------------
> > >  1 file changed, 12 insertions(+), 12 deletions(-)
> > > 
> > > diff --git a/drivers/staging/ks7010/ks_hostif.h b/drivers/staging/ks7010/ks_hostif.h
> > > index 39138191a556..c62a494ed6bb 100644
> > > --- a/drivers/staging/ks7010/ks_hostif.h
> > > +++ b/drivers/staging/ks7010/ks_hostif.h
> > > @@ -498,20 +498,20 @@ struct hostif_mic_failure_request {
> > >  #define TX_RATE_FIXED		5
> > >  
> > >  /* 11b rate */
> > > -#define TX_RATE_1M	(u8)(10 / 5)	/* 11b 11g basic rate */
> > > -#define TX_RATE_2M	(u8)(20 / 5)	/* 11b 11g basic rate */
> > > -#define TX_RATE_5M	(u8)(55 / 5)	/* 11g basic rate */
> > > -#define TX_RATE_11M	(u8)(110 / 5)	/* 11g basic rate */
> > > +#define TX_RATE_1M	((u8)(10 / 5))	/* 11b 11g basic rate */
> > > +#define TX_RATE_2M	((u8)(20 / 5))	/* 11b 11g basic rate */
> > > +#define TX_RATE_5M	((u8)(55 / 5))	/* 11g basic rate */
> > > +#define TX_RATE_11M	((u8)(110 / 5))	/* 11g basic rate */
> > 
> > But these are not "complex macros" that need an extra () added to them,
> > right?
> > 
> > Checkpatch is a hint, it's not a code parser and can not always know
> > what is happening.  With your knowledge of C, does this look like
> > something that needs to be "fixed"?
> > 
> > thanks,
> > 
> > greg k-h
> 
> Hi Greg,
> 
> Thanks for your reply.
> Actually, I'm following the Eudyptula Challenge and I'm at task 10.

First rule of that challenge is that you are not allowed to talk about
it in public :)

That being said, you didn't answer any of my questions above :(

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F9027849
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 10:43:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2872430F6D;
	Thu, 23 May 2019 08:43:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SfrXr8ZnvRy1; Thu, 23 May 2019 08:43:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B0D8C23B44;
	Thu, 23 May 2019 08:43:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 26FB61BF358
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 08:43:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2304E226F3
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 08:43:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LahLZxpWYb3g for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 08:43:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id AB85D2206E
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 08:43:20 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EDE3C21019;
 Thu, 23 May 2019 08:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558601000;
 bh=OXEG3ImZ2eXX8KNRXnS3l2zhG1HunyO5thpIuSZ0PVk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B1b4DkIRb2OITYTbKqQDiZ8X1EyvG/ESTFwupm16zNCuuYoJwUdkbty0QyKnzWlCV
 v5Opug1jMOEp36PKSvZ80McmgfMrrRmxcnDdx+qBaDw+aZk/SMreDBudFveP8pyjgL
 //Yxrct3SxxCcBg+6IcgjVaa7mp5q1Wq/LltawIo=
Date: Thu, 23 May 2019 10:43:18 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: Remove variable
Message-ID: <20190523084318.GB831@kroah.com>
References: <20190523070531.13510-1-nishka.dasgupta@yahoo.com>
 <20190523072246.GD24998@kroah.com>
 <4a3d571f-5987-6735-be56-7976457d0797@yahoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4a3d571f-5987-6735-be56-7976457d0797@yahoo.com>
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

On Thu, May 23, 2019 at 01:52:29PM +0530, Nishka Dasgupta wrote:
> 
> 
> On 23/05/19 12:52 PM, Greg KH wrote:
> > On Thu, May 23, 2019 at 12:35:26PM +0530, Nishka Dasgupta wrote:
> > > Variable client, assigned to priv->client, is used only once in a
> > > function argument; hence, it can be removed and the function argument
> > > replaced with priv->client directly.
> > > Issue found with Coccinelle.
> > > 
> > > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > > ---
> > >   drivers/staging/fieldbus/anybuss/hms-profinet.c | 4 +---
> > >   1 file changed, 1 insertion(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/staging/fieldbus/anybuss/hms-profinet.c b/drivers/staging/fieldbus/anybuss/hms-profinet.c
> > > index 5446843e35f4..a7f85912fa92 100644
> > > --- a/drivers/staging/fieldbus/anybuss/hms-profinet.c
> > > +++ b/drivers/staging/fieldbus/anybuss/hms-profinet.c
> > > @@ -124,9 +124,7 @@ static int __profi_enable(struct profi_priv *priv)
> > >   static int __profi_disable(struct profi_priv *priv)
> > >   {
> > > -	struct anybuss_client *client = priv->client;
> > > -
> > > -	anybuss_set_power(client, false);
> > > +	anybuss_set_power(priv->client, false);
> > 
> > Same comments are relevant here as the last patch you sent.
> 
> So just to clarify this patch isn't necessary and I should cc Sven?

For future patches to any drivers/staging/fieldbus/ changes, yes.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

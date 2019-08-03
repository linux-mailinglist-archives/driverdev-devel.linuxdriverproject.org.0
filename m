Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE7A80600
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 13:24:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52D5E88231;
	Sat,  3 Aug 2019 11:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R9XyrR-eQYd0; Sat,  3 Aug 2019 11:24:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4885087CD4;
	Sat,  3 Aug 2019 11:24:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34CBE1BF32B
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 11:24:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 321B7203EF
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 11:24:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HVNk-udQRWJQ for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 11:24:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C048A20367
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 11:24:34 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1ACF6206A2;
 Sat,  3 Aug 2019 11:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564831474;
 bh=RNquwM047cDJ3xjYxGuVe7gjdVQs2ryGrrv4iEqUqIE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oH49PuNsqu/UXtMy1nOVlC8wXZ3KV6eOsVAY/nA7749RWn2ViX6s8kFbrjEVqoE8e
 vrnTwgfx+//1kfsaXgeLXehgA1fkJ29CVf3Z1kDrh+PAkLKeiRw7kydccpWBLoBOML
 RFja6KgzMQ0BfSk8v5JOliZeQWtDyK/N1jhvomww=
Date: Sat, 3 Aug 2019 13:24:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] isdn: hysdn: Fix error spaces around '*'
Message-ID: <20190803112432.GA22063@kroah.com>
References: <20190802195602.28414-1-joseespiriki@gmail.com>
 <20190803063246.GA10186@kroah.com>
 <6ff800ceda4b1c1f1d9e519aac13db42dc703294.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6ff800ceda4b1c1f1d9e519aac13db42dc703294.camel@perches.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org, isdn@linux-pingi.de,
 linux-kernel@vger.kernel.org,
 Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Aug 03, 2019 at 04:15:05AM -0700, Joe Perches wrote:
> On Sat, 2019-08-03 at 08:32 +0200, Greg KH wrote:
> > On Fri, Aug 02, 2019 at 07:56:02PM +0000, Jose Carlos Cazarin Filho wrote:
> > > Fix checkpath error:
> > > CHECK: spaces preferred around that '*' (ctx:WxV)
> > > +extern hysdn_card *card_root;        /* pointer to first card */
> []
> > > diff --git a/drivers/staging/isdn/hysdn/hysdn_defs.h b/drivers/staging/isdn/hysdn/hysdn_defs.h
> []
> > > @@ -220,7 +220,7 @@ typedef struct hycapictrl_info hycapictrl_info;
> > >  /*****************/
> > >  /* exported vars */
> > >  /*****************/
> > > -extern hysdn_card *card_root;	/* pointer to first card */
> > > +extern hysdn_card * card_root;	/* pointer to first card */
> > 
> > The original code here is correct, checkpatch must be reporting this
> > incorrectly.
> 
> Here checkpatch thinks that hydsn_card is an identifier rather
> than a typedef.
> 
> It's defined as:
> 	typedef struct HYSDN_CARD {
> 	...
> 	} hysdn_card;
> 
> And that confuses checkpatch.
> 
> kernel source code style would not use a typedef for a struct.
> 
> A change would be to remove the typedef and declare this as:
> 	struct hysdn_card {
> 		...
> 	};
> 
> And then do a global:
> 	sed 's/\bhysdn_card\b/struct hysdn_card/g'
> 
> But that's not necessary as the driver is likely to be removed.

Ah, that makes sense why checkpatch did this, thanks for the
information.

And yes, it's not worth being changed, as this is going to be deleted.
But, I bet we get this sent a lot until it is as it's "easy pickings" :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

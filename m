Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A8186746
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 18:40:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C635C8647F;
	Thu,  8 Aug 2019 16:40:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w-Wy3s4yfj2M; Thu,  8 Aug 2019 16:40:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B32786155;
	Thu,  8 Aug 2019 16:40:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57A7C1BF39A
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 16:40:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 534B68643D
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 16:40:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8VuJmAHcWwK4 for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 16:40:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7A42986432
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 16:40:22 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7930217F4;
 Thu,  8 Aug 2019 16:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565282422;
 bh=IHtsDi+gxFqVOzzgE355F6Bz9tWdXk5RvOnxv8yWTSk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ip5jOajFODXTFPX2Kfq71umTtXjA3AeD3LMdvALW23Wjjr+tleVlSk3OFqBgryeA4
 ujxfgjDFgTMyoBXzvg4ZZweNDvAe4orZN3vLo4kInvIc+cSoNbPmf1/ZJ77k+6zT7j
 6YXIRE/a3jJpoKI/vMWfGkNTdzdjxtZdwMAokCCo=
Date: Thu, 8 Aug 2019 18:40:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] isdn: hysdn: Fix error spaces around '*'
Message-ID: <20190808164020.GA9453@kroah.com>
References: <20190802195602.28414-1-joseespiriki@gmail.com>
 <20190802145506.168b576b@hermes.lan>
 <2ecfbf8dda354fe47912446bf5c3fe30ca905aa0.camel@perches.com>
 <20190808163905.GA9224@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808163905.GA9224@kroah.com>
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
Cc: devel@driverdev.osuosl.org, isdn@linux-pingi.de,
 Jose Carlos Cazarin Filho <joseespiriki@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 08, 2019 at 06:39:05PM +0200, Greg KH wrote:
> On Fri, Aug 02, 2019 at 03:05:05PM -0700, Joe Perches wrote:
> > On Fri, 2019-08-02 at 14:55 -0700, Stephen Hemminger wrote:
> > > On Fri,  2 Aug 2019 19:56:02 +0000
> > > Jose Carlos Cazarin Filho <joseespiriki@gmail.com> wrote:
> > > 
> > > > Fix checkpath error:
> > > > CHECK: spaces preferred around that '*' (ctx:WxV)
> > > > +extern hysdn_card *card_root;        /* pointer to first card */
> > > > 
> > > > Signed-off-by: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
> > > 
> > > Read the TODO, these drivers are scheduled for removal, so changes
> > > are not helpful at this time.
> > 
> > Maybe better to mark the MAINTAINERS entry obsolete so
> > checkpatch bleats a message about unnecessary changes.
> > ---
> >  MAINTAINERS | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 30bf852e6d6b..b5df91032574 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -8628,7 +8628,7 @@ M:	Karsten Keil <isdn@linux-pingi.de>
> >  L:	isdn4linux@listserv.isdn4linux.de (subscribers-only)
> >  L:	netdev@vger.kernel.org
> >  W:	http://www.isdn4linux.de
> > -S:	Odd Fixes
> > +S:	Obsolete
> >  F:	Documentation/isdn/
> >  F:	drivers/isdn/capi/
> >  F:	drivers/staging/isdn/
> > 
> 
> Good idea, will take this patch now, thanks.

Can you resend this with a s-o-b so I can apply it?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

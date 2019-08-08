Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4099586C87
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 23:37:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5EF5322005;
	Thu,  8 Aug 2019 21:37:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ng79Pxu9Mlt0; Thu,  8 Aug 2019 21:37:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D6FE8204D9;
	Thu,  8 Aug 2019 21:37:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7DC2B1BF388
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 21:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7AAE88830C
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 21:37:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e3iSO3wRvNxs for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 21:37:37 +0000 (UTC)
X-Greylist: delayed 04:49:10 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0191.hostedemail.com
 [216.40.44.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 53E9B88302
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 21:37:37 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 9726A180945C1
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 16:48:28 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id CE7B9100E86C3;
 Thu,  8 Aug 2019 16:48:25 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:967:973:979:988:989:1260:1263:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2560:2563:2682:2685:2693:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3622:3865:3867:3868:3870:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:4383:4384:4395:4605:4659:5007:7514:7903:9025:9389:10004:10049:10400:10848:10967:11232:11658:11914:12043:12296:12297:12555:12663:12679:12740:12760:12895:12986:13019:13069:13095:13311:13357:13439:14094:14096:14180:14181:14659:14721:14764:21080:21433:21450:21451:21611:21627:21691:30009:30054:30070:30090:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:non e
X-HE-Tag: apple91_8397350969e63
X-Filterd-Recvd-Size: 2983
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf11.hostedemail.com (Postfix) with ESMTPA;
 Thu,  8 Aug 2019 16:48:24 +0000 (UTC)
Message-ID: <89848a6b90c81be5bac50cdb49847462def5653c.camel@perches.com>
Subject: Re: [PATCH] isdn: hysdn: Fix error spaces around '*'
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Karsten Keil <isdn@linux-pingi.de>
Date: Thu, 08 Aug 2019 09:48:22 -0700
In-Reply-To: <20190808164020.GA9453@kroah.com>
References: <20190802195602.28414-1-joseespiriki@gmail.com>
 <20190802145506.168b576b@hermes.lan>
 <2ecfbf8dda354fe47912446bf5c3fe30ca905aa0.camel@perches.com>
 <20190808163905.GA9224@kroah.com> <20190808164020.GA9453@kroah.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
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
Cc: devel@driverdev.osuosl.org, isdn@linux-pingi.de,
 Jose Carlos Cazarin Filho <joseespiriki@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2019-08-08 at 18:40 +0200, Greg KH wrote:
> On Thu, Aug 08, 2019 at 06:39:05PM +0200, Greg KH wrote:
> > On Fri, Aug 02, 2019 at 03:05:05PM -0700, Joe Perches wrote:
> > > On Fri, 2019-08-02 at 14:55 -0700, Stephen Hemminger wrote:
> > > > On Fri,  2 Aug 2019 19:56:02 +0000
> > > > Jose Carlos Cazarin Filho <joseespiriki@gmail.com> wrote:
> > > > 
> > > > > Fix checkpath error:
> > > > > CHECK: spaces preferred around that '*' (ctx:WxV)
> > > > > +extern hysdn_card *card_root;        /* pointer to first card */
> > > > > 
> > > > > Signed-off-by: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
> > > > 
> > > > Read the TODO, these drivers are scheduled for removal, so changes
> > > > are not helpful at this time.
> > > 
> > > Maybe better to mark the MAINTAINERS entry obsolete so
> > > checkpatch bleats a message about unnecessary changes.
> > > ---
> > >  MAINTAINERS | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index 30bf852e6d6b..b5df91032574 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -8628,7 +8628,7 @@ M:	Karsten Keil <isdn@linux-pingi.de>
> > >  L:	isdn4linux@listserv.isdn4linux.de (subscribers-only)
> > >  L:	netdev@vger.kernel.org
> > >  W:	http://www.isdn4linux.de
> > > -S:	Odd Fixes
> > > +S:	Obsolete
> > >  F:	Documentation/isdn/
> > >  F:	drivers/isdn/capi/
> > >  F:	drivers/staging/isdn/
> > > 
> > 
> > Good idea, will take this patch now, thanks.
> 
> Can you resend this with a s-o-b so I can apply it?
> 
> thanks,

Hey Greg.  It was just an idea and an example.
I'm sure you can figure out if you want it.
No need for my SOB really.

btw: Karsten hasn't acked a patch or been active
in 3+ years.  Maybe he should go into CREDITS.



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

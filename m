Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8811F397D
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jun 2020 13:21:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C04285AA2;
	Tue,  9 Jun 2020 11:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GihP28llO8nW; Tue,  9 Jun 2020 11:21:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CBCD48577E;
	Tue,  9 Jun 2020 11:21:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 85F811BF3B0
 for <devel@linuxdriverproject.org>; Tue,  9 Jun 2020 11:21:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 82D2186F16
 for <devel@linuxdriverproject.org>; Tue,  9 Jun 2020 11:21:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y3KpX6F4-hu5 for <devel@linuxdriverproject.org>;
 Tue,  9 Jun 2020 11:21:06 +0000 (UTC)
X-Greylist: delayed 11:47:55 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0184.hostedemail.com
 [216.40.44.184])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D583686F06
 for <devel@driverdev.osuosl.org>; Tue,  9 Jun 2020 11:21:06 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id 9A188180A3EE3
 for <devel@driverdev.osuosl.org>; Mon,  8 Jun 2020 23:33:11 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 3E124485F;
 Mon,  8 Jun 2020 23:33:09 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2553:2559:2562:2828:2895:3138:3139:3140:3141:3142:3355:3622:3653:3865:3866:3867:3868:3870:3871:3872:3873:3874:4250:4321:5007:7875:7903:7904:8957:10004:10400:10450:10455:10471:10848:11232:11473:11658:11914:12043:12109:12114:12297:12663:12740:12760:12895:13132:13161:13229:13231:13255:13439:14181:14659:14721:19904:19999:21080:21451:21627:21740:30054:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: women05_3c11e0026dbd
X-Filterd-Recvd-Size: 3588
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf10.hostedemail.com (Postfix) with ESMTPA;
 Mon,  8 Jun 2020 23:33:07 +0000 (UTC)
Message-ID: <c25f5af83658ab9ef4ae8ef3825ea6540fe4e094.camel@perches.com>
Subject: Re: Forest Bond <forest@alittletooquiet.net>,Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
From: Joe Perches <joe@perches.com>
To: Rodolfo C Villordo <rodolfovillordo@gmail.com>, Julia Lawall
 <julia.lawall@inria.fr>, Al Viro <viro@zeniv.linux.org.uk>
Date: Mon, 08 Jun 2020 16:33:06 -0700
In-Reply-To: <20200608225838.GA26559@ip-172-31-24-31.ec2.internal>
References: <20200607224156.GA24090@ip-172-31-24-31.ec2.internal>
 <20200608054614.GO23230@ZenIV.linux.org.uk>
 <alpine.DEB.2.21.2006080758510.2430@hadrien>
 <e3d7cc965eccec881bc35ae18d63f4bc23c33dfc.camel@perches.com>
 <20200608225838.GA26559@ip-172-31-24-31.ec2.internal>
User-Agent: Evolution 3.36.2-0ubuntu1 
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-06-08 at 22:58 +0000, Rodolfo C Villordo wrote:
> On Mon, Jun 08, 2020 at 01:41:11AM -0700, Joe Perches wrote:
> > On Mon, 2020-06-08 at 07:59 +0200, Julia Lawall wrote:
> > > On Mon, 8 Jun 2020, Al Viro wrote:
> > > 
> > > > On Sun, Jun 07, 2020 at 10:41:56PM +0000, Rodolfo C. Villordo wrote:
> > > > > Multiple line over 80 characters fixes by splitting in multiple lines.
> > > > > Warning found by checkpatch.pl
> > > > 
> > > > I doubt that checkpatch.pl can catch the real problems there:
> > > > 
> > > > * Hungarian Notation Sucks.  Really.
> > > > * so does CamelCase, especially for wonders like s_uGetRTSCTSRsvTime
> 
> Yes, I agree with that.
> 
> > > Rodolfo,
> > > 
> > > If you work hard with Coccinelle and python scripting, it can help with
> > > the first two problems.
> > 
> > These VIA vt6655/vt6656 drivers have been in staging for more than
> > a decade.  There are relatively few checkpatch coding style
> > cleanups to do but there are many overall style issues to resolve.
> > 
> 
> Yes, vt6655/rxtx.c needs lots of work. I was avoiding submit bigger changes
> because this is my second patch submission.
> 
> Thank you all for the comments. I'm really sorry for the odd subject. 
> 
> How should I move forward with this?
> 
> 1 - Update this patch with the changes pointed by Dan Carpenter? 

Keep your changes small until you really know how this
style of linux kernel staging changes is done.

> 2 - Do a more elaborated and bigger change, like suggested by Al Viro
> and Joe Perches?

A patch series is much preferred to a single large change.

If you decide to refactor various functions, please do that
in separate, discrete patches.

Adding a #define and doing a sed like:

$ sed -i 's/(BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW/AL2230_RLEN_CTL/' drivers/staging/vt6655/*.[ch]

should be a single patch.

And if you do that, another should be done for AL7230

$ sed -i 's/(BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW/AL7230_RLEN_CTL/' drivers/staging/vt6655/*.[ch]

etc...

Maybe the #define BY_AL2230_REG_LEN should be 0x17 so that
the << 3 is more obviously constrained to the low byte

Maybe the + uses in the macros should be bitwise |.

Go wild after you figure out the process, just keep your
patches to obvious, small and verifiable changes.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

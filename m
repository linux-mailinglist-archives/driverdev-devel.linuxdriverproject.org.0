Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C712805EE
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 13:15:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C53072034E;
	Sat,  3 Aug 2019 11:15:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KG6zAILN5piv; Sat,  3 Aug 2019 11:15:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2C759203D7;
	Sat,  3 Aug 2019 11:15:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 78C641BF32B
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 11:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 755B786E89
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 11:15:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KAeFJTYLPk1F for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 11:15:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0095.hostedemail.com
 [216.40.44.95])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9004C87482
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 11:15:10 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id D179F180A76E1;
 Sat,  3 Aug 2019 11:15:07 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::,
 RULES_HIT:41:355:379:599:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3871:3872:3874:4250:4321:4384:4605:5007:7974:8604:9393:10004:10400:10848:11232:11657:11658:11914:12043:12296:12297:12679:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21451:21611:21627:30009:30012:30054:30070:30090:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: boat09_83f32473a9e60
X-Filterd-Recvd-Size: 2184
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf20.hostedemail.com (Postfix) with ESMTPA;
 Sat,  3 Aug 2019 11:15:06 +0000 (UTC)
Message-ID: <6ff800ceda4b1c1f1d9e519aac13db42dc703294.camel@perches.com>
Subject: Re: [PATCH] isdn: hysdn: Fix error spaces around '*'
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Jose Carlos Cazarin Filho
 <joseespiriki@gmail.com>
Date: Sat, 03 Aug 2019 04:15:05 -0700
In-Reply-To: <20190803063246.GA10186@kroah.com>
References: <20190802195602.28414-1-joseespiriki@gmail.com>
 <20190803063246.GA10186@kroah.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org, isdn@linux-pingi.de,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2019-08-03 at 08:32 +0200, Greg KH wrote:
> On Fri, Aug 02, 2019 at 07:56:02PM +0000, Jose Carlos Cazarin Filho wrote:
> > Fix checkpath error:
> > CHECK: spaces preferred around that '*' (ctx:WxV)
> > +extern hysdn_card *card_root;        /* pointer to first card */
[]
> > diff --git a/drivers/staging/isdn/hysdn/hysdn_defs.h b/drivers/staging/isdn/hysdn/hysdn_defs.h
[]
> > @@ -220,7 +220,7 @@ typedef struct hycapictrl_info hycapictrl_info;
> >  /*****************/
> >  /* exported vars */
> >  /*****************/
> > -extern hysdn_card *card_root;	/* pointer to first card */
> > +extern hysdn_card * card_root;	/* pointer to first card */
> 
> The original code here is correct, checkpatch must be reporting this
> incorrectly.

Here checkpatch thinks that hydsn_card is an identifier rather
than a typedef.

It's defined as:
	typedef struct HYSDN_CARD {
	...
	} hysdn_card;

And that confuses checkpatch.

kernel source code style would not use a typedef for a struct.

A change would be to remove the typedef and declare this as:
	struct hysdn_card {
		...
	};

And then do a global:
	sed 's/\bhysdn_card\b/struct hysdn_card/g'

But that's not necessary as the driver is likely to be removed.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C954C183B4B
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 22:26:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 75FBA86C2B;
	Thu, 12 Mar 2020 21:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J-R-tItlXvtd; Thu, 12 Mar 2020 21:26:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 95A6986C31;
	Thu, 12 Mar 2020 21:26:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9A7B1BF3C8
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 21:26:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A578322925
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 21:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SQ93PNxV40cu for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 21:26:46 +0000 (UTC)
X-Greylist: delayed 16:20:01 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0003.hostedemail.com
 [216.40.44.3])
 by silver.osuosl.org (Postfix) with ESMTPS id 93686203EE
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 21:26:46 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 696C418028932
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 00:17:01 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id E1657837F27B;
 Thu, 12 Mar 2020 00:16:58 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:5007:7807:7903:8957:10004:10400:10848:11232:11658:11914:12048:12297:12740:12760:12895:13069:13255:13311:13357:13439:14093:14096:14097:14180:14181:14659:14721:14777:21063:21080:21433:21627:21819:21939:21990:30012:30022:30054:30079:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: tree25_1f9cfc6638042
X-Filterd-Recvd-Size: 2861
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf19.hostedemail.com (Postfix) with ESMTPA;
 Thu, 12 Mar 2020 00:16:57 +0000 (UTC)
Message-ID: <2a080d9c5dc6206d9a255410a61d1d9cce26d944.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: sdio_halinit:
 Remove unnecessary conditions
From: Joe Perches <joe@perches.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>,
 gregkh@linuxfoundation.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,  outreachy-kernel@googlegroups.com,
 sbrivio@redhat.com, daniel.baluta@gmail.com,  nramas@linux.microsoft.com,
 hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
Date: Wed, 11 Mar 2020 17:15:14 -0700
In-Reply-To: <1CF27D55-EEB4-4A75-B767-A30845BD5E1B@gmail.com>
References: <20200311133811.2246-1-shreeya.patel23498@gmail.com>
 <0fed25f914c6f39b024dd3bbc4f11892c40f4a60.camel@perches.com>
 <1CF27D55-EEB4-4A75-B767-A30845BD5E1B@gmail.com>
User-Agent: Evolution 3.34.1-2 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2020-03-12 at 03:58 +0530, Shreeya Patel wrote:
> Hey Joe,
> 
> On March 11, 2020 10:56:29 PM GMT+05:30, Joe Perches <joe@perches.com> wrote:
> > On Wed, 2020-03-11 at 19:08 +0530, Shreeya Patel wrote:
> > > Remove if and else conditions since both are leading to the
> > > initialization of "valueDMATimeout" and "valueDMAPageCount" with
> > > the same value.
> > 
> > You might consider removing the
> > 	/* Timeout value is calculated by 34 / (2^n) */
> > comment entirely as it doesn't make much sense.
> > 
> 
> You want me to remove the other comments as well?
> Since Julia suggested in another email that the comments are not useful if we are removing the condition since they were applied to only one branch ( i.e. "if" branch )

It's not an either/or/both situation.

Code like:

	if (test) {
		[block 1]
	} else {
		[block 2]
	}

where the contents of block 1 and block 2 are identical
exist for many reasons.  All of them need situational
analysis to determine what the right thing to do is.

Sometimes it's a defect from a copy/paste where some other
code was intended on one of the blocks and so that one path
has a defect somewhere and actually needs to be changed.

Sometimes the blocks were originally different, but some
code was removed from one of the blocks that lead to the
blocks being identical.  Those can be consolidated.

Sometimes test can be removed, sometimes not.

For hardware drivers like this, it's sometimes useful to
look at the latest code from the vendor and sometimes it's
better to ask the vendor what the right thing do is.

It does appear in this case that the branches should be
consolidated and comments in both branches removed.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

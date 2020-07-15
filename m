Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C48220622
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 09:24:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 254868A888;
	Wed, 15 Jul 2020 07:24:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 08MUQPguyqQx; Wed, 15 Jul 2020 07:24:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85CC48A876;
	Wed, 15 Jul 2020 07:24:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F41791BF40F
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 07:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F0F5888CF5
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 07:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6n_7nCVuFFZd for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 07:24:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0035.hostedemail.com
 [216.40.44.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A7B5288C68
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 07:24:26 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 7CD20837F24D;
 Wed, 15 Jul 2020 07:24:24 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2560:2563:2682:2685:2828:2859:2914:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3151:3352:3622:3673:3865:3866:3867:3870:3871:3872:3873:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:7903:8700:8778:9010:9025:10004:10400:10848:11232:11658:11914:12043:12050:12297:12555:12740:12760:12895:12986:13019:13069:13311:13357:13439:13845:14180:14181:14659:14721:21060:21080:21600:21627:21811:30054:30060:30062:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: stew37_580af1526ef7
X-Filterd-Recvd-Size: 1850
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Wed, 15 Jul 2020 07:24:23 +0000 (UTC)
Message-ID: <23ef3ca9616418b702df891443d0f4864edd58ff.camel@perches.com>
Subject: Re: [PATCH v2] staging: gasket: core: Fix a coding style issue in
 gasket_core.c
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Zhixu Zhao <zhixu001@126.com>
Date: Wed, 15 Jul 2020 00:24:22 -0700
In-Reply-To: <20200715071748.GC2305231@kroah.com>
References: <20200617161127.32006-1-zhixu001@126.com>
 <20200714234440.27009-1-zhixu001@126.com>
 <20200715071748.GC2305231@kroah.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, rcy@google.com,
 rspringer@google.com, toddpoynor@google.com, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-07-15 at 09:17 +0200, Greg KH wrote:
> On Wed, Jul 15, 2020 at 07:44:40AM +0800, Zhixu Zhao wrote:
> > On Thu, Jun 18, 2020 at 12:11:27AM +0800, Zhixu Zhao wrote:
> > > A coding alignment issue is found by checkpatch.pl.
> > > Fix it by using a temporary for gasket_dev->bar_data[bar_num].
> > > 
> > > Signed-off-by: Zhixu Zhao <zhixu001@126.com>
> > 
> > Hi, there~
> > 
> > Does anybody have any further comments on this?
> > Can it be merged?
> 
> I never saw the first version of this, are you sure it got sent to the
> mailing list?  It's not in any archives anywhere.

I saw it.  It's here:
https://lore.kernel.org/lkml/20200617161127.32006-1-zhixu001@126.com/

> Also, 3 days is really fast for a simple coding style cleanup to be
> worried about.  Give it usually at least 2 weeks.

Originally sent June 17.



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

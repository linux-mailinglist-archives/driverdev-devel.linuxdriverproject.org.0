Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEA6EE5ED
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 18:25:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 535688A4F8;
	Mon,  4 Nov 2019 17:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N9uZJ4nLGjuR; Mon,  4 Nov 2019 17:25:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0137988EA9;
	Mon,  4 Nov 2019 17:25:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C483D1BF388
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 17:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C0C882043B
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 17:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ONVkwu4+1s4z for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 17:25:18 +0000 (UTC)
X-Greylist: delayed 00:17:20 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0211.hostedemail.com
 [216.40.44.211])
 by silver.osuosl.org (Postfix) with ESMTPS id C6AC62037B
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 17:25:18 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id D5A4E8010C15
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 17:07:58 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 0B472100E7B4B;
 Mon,  4 Nov 2019 17:07:56 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10, 1, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:599:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4250:4321:4384:5007:6119:7875:7903:10004:10400:11026:11232:11473:11658:11914:12043:12296:12297:12740:12760:12895:13069:13311:13357:13439:13523:13524:14659:14721:21080:21451:21627:21939:30009:30012:30054:30070:30090:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.14.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: cry91_2806dcf70c55d
X-Filterd-Recvd-Size: 2112
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf03.hostedemail.com (Postfix) with ESMTPA;
 Mon,  4 Nov 2019 17:07:54 +0000 (UTC)
Message-ID: <782ef430f9c92742e92d63f87a6e7716b38ea110.camel@perches.com>
Subject: Re: [PATCH] staging: rts5208: rewrite macro with GNU extension
 __auto_type
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Jules Irenge <jbi.octave@gmail.com>
Date: Mon, 04 Nov 2019 09:07:44 -0800
In-Reply-To: <20191104165148.GA2293059@kroah.com>
References: <20191104164400.9935-1-jbi.octave@gmail.com>
 <20191104165148.GA2293059@kroah.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2019-11-04 at 17:51 +0100, Greg KH wrote:
> On Mon, Nov 04, 2019 at 04:44:00PM +0000, Jules Irenge wrote:
> > Rewrite macro function with GNU extension __auto_type
> > to remove issue detected by checkpatch tool.
> > CHECK: MACRO argument reuse - possible side-effects?
[]
> > diff --git a/drivers/staging/rts5208/rtsx_chip.h b/drivers/staging/rts5208/rtsx_chip.h
[]
> > @@ -386,23 +386,31 @@ struct zone_entry {
> >  
> >  /* SD card */
> >  #define CHK_SD(sd_card)			(((sd_card)->sd_type & 0xFF) == TYPE_SD)
> > -#define CHK_SD_HS(sd_card)		(CHK_SD(sd_card) && \
> > -					 ((sd_card)->sd_type & SD_HS))
[]
> > +#define CHK_SD_HS(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> > +					 (_sd->sd_type & SD_HS); })
[]
> Ick, no.  These are obviously pointers, which can not be "evaluated
> twice" so this whole thing is just fine.
> 
> checkpatch is just a "hint" that you might want to look at the code.
> This stuff is just fine, look at how it is being used for proof of that.

This would also be the first introduction and use of
__auto_type in the kernel.

That's not OK as __auto_type was first supported in
gcc 4.9 and the kernel still compiles with gcc 4.6.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

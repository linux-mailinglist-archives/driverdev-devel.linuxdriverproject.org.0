Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBFA20C060
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 10:50:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D2408881F;
	Sat, 27 Jun 2020 08:50:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C56D0KVEPwgT; Sat, 27 Jun 2020 08:50:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A8B1E88354;
	Sat, 27 Jun 2020 08:50:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 055101BF3F4
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:50:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F274288354
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PZ9qzXB1Kk3O for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 08:50:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0230.hostedemail.com
 [216.40.44.230])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 17F7288349
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 08:50:48 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave04.hostedemail.com (Postfix) with ESMTP id EBC941800BC46
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 08:33:01 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 9F58615C5;
 Sat, 27 Jun 2020 08:32:59 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:355:379:599:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:4250:4321:5007:6119:7903:10004:10400:10848:11232:11658:11914:12043:12295:12296:12297:12683:12740:12760:12895:13069:13161:13229:13311:13357:13439:14096:14097:14659:14721:14777:21080:21433:21451:21627:21819:30022:30029:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: frame01_50165cf26e5c
X-Filterd-Recvd-Size: 2354
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf07.hostedemail.com (Postfix) with ESMTPA;
 Sat, 27 Jun 2020 08:32:58 +0000 (UTC)
Message-ID: <7120d8c862b2e647acac0302a8d014bb02d9150e.camel@perches.com>
Subject: Re: RT_TRACE in drivers/staging/rtl8188eu
From: Joe Perches <joe@perches.com>
To: Greg KH <greg@kroah.com>
Date: Sat, 27 Jun 2020 01:32:57 -0700
In-Reply-To: <20200627081834.GA1550330@kroah.com>
References: <ddebd1bd14f5a8dd0b01a02e794662224894f46f.camel@perches.com>
 <20200627080128.GA1547070@kroah.com>
 <fa75f7c44c296ab7aae8755d84717b0020c2e115.camel@perches.com>
 <20200627081834.GA1550330@kroah.com>
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
Cc: devel <devel@driverdev.osuosl.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2020-06-27 at 10:18 +0200, Greg KH wrote:
> On Sat, Jun 27, 2020 at 01:12:42AM -0700, Joe Perches wrote:
> > On Sat, 2020-06-27 at 10:01 +0200, Greg KH wrote:
> > > On Sat, Jun 27, 2020 at 12:33:56AM -0700, Joe Perches wrote:
> > > > There are 3 parts of the email.
> > > > 
> > > > 1: A description and patch for a logging defect
> > > > 2: A script to go along with the patch to do conversions
> > > > 3: Current diff for this defect
> > > > 
> > > > ------------------------------------------------------------------------
> > > > -
> > > > 
> > > > The macro below in drivers/staging/rtl8188eu/include/rtw_debug.h
> > > > is defective as it emits multiple pr_info calls for each use
> > > > so the logging in dmesg is discontinuous.
> > > 
> > > I recommend just deleting it.  As it's obviously incorrect, and any
> > > "real" tracing should just use the real tracing infrastructure, this is
> > > not needed and can be removed.
> > 
> > Don't get hung up on the name.
> > 
> > It's not used for tracing, it's effectively just
> > a debugging mechanism, the same in all the other
> > rtl staging drivers.
> 
> Ok, then it should be converted to "normal" dev_*() functions, where
> needed, the others deleted entirely (the dev_info attempts...)

Nope.

These are the same as uses in drivers/net/wireless/realtek/rtlwifi.

$ git grep -w RT_TRACE drivers/net/wireless/realtek | wc -l
2847


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

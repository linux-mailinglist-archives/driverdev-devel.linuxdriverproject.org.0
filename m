Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 217FB150505
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Feb 2020 12:18:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 221BF857D8;
	Mon,  3 Feb 2020 11:18:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5WE5N87qcMBq; Mon,  3 Feb 2020 11:18:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 08E7A85725;
	Mon,  3 Feb 2020 11:18:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C0ED1BF400
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 11:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 183E3204CD
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 11:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uPGBpWvLrhn3 for <devel@linuxdriverproject.org>;
 Mon,  3 Feb 2020 11:17:57 +0000 (UTC)
X-Greylist: delayed 00:36:01 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0215.hostedemail.com
 [216.40.44.215])
 by silver.osuosl.org (Postfix) with ESMTPS id 0F692204B1
 for <devel@driverdev.osuosl.org>; Mon,  3 Feb 2020 11:17:56 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id 611C91801BD9F
 for <devel@driverdev.osuosl.org>; Mon,  3 Feb 2020 10:41:57 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id D32D5121A;
 Mon,  3 Feb 2020 10:41:54 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::::,
 RULES_HIT:41:355:379:599:968:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2691:2828:3138:3139:3140:3141:3142:3353:3622:3865:3867:3868:3870:3871:3874:4321:5007:6119:6691:8531:8957:9010:10004:10400:10848:11232:11658:11914:12050:12297:12740:12760:12895:13069:13311:13357:13439:14096:14097:14659:14721:21080:21611:21627:21740:21810:30012:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: range25_4ab6e8725fd55
X-Filterd-Recvd-Size: 2515
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf03.hostedemail.com (Postfix) with ESMTPA;
 Mon,  3 Feb 2020 10:41:53 +0000 (UTC)
Message-ID: <5f67af4339e0b9b56b43fb78ebab73e05009e307.camel@perches.com>
Subject: Re: [PATCH 1/2] staging: exfat: remove DOSNAMEs.
From: Joe Perches <joe@perches.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Matthew Wilcox
 <willy@infradead.org>
Date: Mon, 03 Feb 2020 02:40:43 -0800
In-Reply-To: <20200203094601.GA3040887@kroah.com>
References: <20200203163118.31332-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
 <20200203080532.GF8731@bombadil.infradead.org>
 <20200203081559.GA3038628@kroah.com>
 <20200203082938.GG8731@bombadil.infradead.org>
 <20200203094601.GA3040887@kroah.com>
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
Cc: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.mitsubishielectric.co.jp>,
 devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org, motai.hirotaka@aj.mitsubishielectric.co.jp,
 Mori.Takahiro@ab.mitsubishielectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-02-03 at 09:46 +0000, Greg Kroah-Hartman wrote:
> On Mon, Feb 03, 2020 at 12:29:38AM -0800, Matthew Wilcox wrote:
> > On Mon, Feb 03, 2020 at 08:15:59AM +0000, Greg Kroah-Hartman wrote:
> > > On Mon, Feb 03, 2020 at 12:05:32AM -0800, Matthew Wilcox wrote:
> > > > On Tue, Feb 04, 2020 at 01:31:17AM +0900, Tetsuhiro Kohada wrote:
> > > > > remove 'dos_name','ShortName' and related definitions.
> > > > > 
> > > > > 'dos_name' and 'ShortName' are definitions before VFAT.
> > > > > These are never used in exFAT.
> > > > 
> > > > Why are we still seeing patches for the exfat in staging?
> > > 
> > > Because people like doing cleanup patches :)
> > 
> > Sure, but I think people also like to believe that their cleanup patches
> > are making a difference.  In this case, they're just churning code that's
> > only weeks away from deletion.
> > 
> > > > Why are people not working on the Samsung code base?
> > > 
> > > They are, see the patches on the list, hopefully they get merged after
> > > -rc1 is out.
> > 
> > I meant the cleanup people.  Obviously _some_ people are working on the
> > Samsung codebase.
> 
> We can't tell people to work on :)

That's more an argument to remove exfat from staging
sooner than later.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

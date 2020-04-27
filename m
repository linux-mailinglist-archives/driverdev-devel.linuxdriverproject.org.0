Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE761BAAE5
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 19:14:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03F2A8699B;
	Mon, 27 Apr 2020 17:14:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6pS-82GYMJmg; Mon, 27 Apr 2020 17:14:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD6C786ACD;
	Mon, 27 Apr 2020 17:14:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6BF01BF2A1
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 17:14:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C0A922012F
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 17:14:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nlLWr9H23Iqy for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 17:14:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0171.hostedemail.com
 [216.40.44.171])
 by silver.osuosl.org (Postfix) with ESMTPS id 8530420110
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 17:14:35 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id 38175181CA75C
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 17:14:33 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id 918CD180A7352;
 Mon, 27 Apr 2020 17:14:30 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2110:2198:2199:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3868:3871:4250:4321:5007:6119:6691:7522:7875:9545:10004:10400:10848:11232:11658:11914:12295:12297:12740:12760:12895:13069:13071:13161:13229:13255:13311:13357:13439:14180:14659:21060:21080:21451:21627:21740:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: land80_616b262899562
X-Filterd-Recvd-Size: 1600
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf15.hostedemail.com (Postfix) with ESMTPA;
 Mon, 27 Apr 2020 17:14:29 +0000 (UTC)
Message-ID: <ed61ea55a275e520e6245c9fe33f2f076d5cbe3c.camel@perches.com>
Subject: Re: [PATCH 2/2] drivers: staging: rts5208: rtsx.c fix Unbalanced
 braces around else-if statements
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, John Oldman
 <john.oldman@polehill.co.uk>
Date: Mon, 27 Apr 2020 10:14:28 -0700
In-Reply-To: <20200427160430.GA3549342@kroah.com>
References: <20200427152442.26597-1-john.oldman@polehill.co.uk>
 <20200427152442.26597-2-john.oldman@polehill.co.uk>
 <20200427160430.GA3549342@kroah.com>
User-Agent: Evolution 3.36.1-2 
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-04-27 at 18:04 +0200, Greg KH wrote:
> On Mon, Apr 27, 2020 at 04:24:42PM +0100, John Oldman wrote:
> > Make a better job of fixing coding style issues, this time fixing
> > all blocks as per Joe Perches' comment.
[]
> Why is this not just one patch?

Hi John.

These _should_ be one patch.

The subject line should be versioned and affirmative like:

Subject: [PATCH V2] staging: rts5208: rtsx: Use balanced braces for if/else if blocks

The subject should not include "fix", as this is a coding style
issue and not really a logical defect.

Lastly the "this time fixing" bit should be below the --- line.

cheers, Joe

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

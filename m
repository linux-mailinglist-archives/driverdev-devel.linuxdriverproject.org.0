Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1BE77126
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 20:21:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 673BF88EBE;
	Fri, 26 Jul 2019 18:21:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8TIC9CK7jsyr; Fri, 26 Jul 2019 18:21:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DB9C88EAB;
	Fri, 26 Jul 2019 18:21:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2100F1BF3BD
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:21:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1DDDC87DA3
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:21:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3NxRGl00luCp for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 18:21:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0121.hostedemail.com
 [216.40.44.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 14A4C87D50
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 18:21:40 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 8B0CE18225DE2;
 Fri, 26 Jul 2019 18:21:39 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:599:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2559:2562:2828:2915:3138:3139:3140:3141:3142:3352:3622:3653:3865:3867:3868:3870:3874:4321:5007:7903:7974:10004:10400:10848:11232:11658:11914:12043:12297:12679:12740:12760:12895:13069:13160:13229:13311:13357:13439:14181:14659:14721:21080:21451:21627:30054:30069:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: crate84_2b5cc4a52181d
X-Filterd-Recvd-Size: 1705
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf15.hostedemail.com (Postfix) with ESMTPA;
 Fri, 26 Jul 2019 18:21:37 +0000 (UTC)
Message-ID: <0440fc0b1e8599df3cf0728261f74faf25fc4408.camel@perches.com>
Subject: Re: [PATCH 1/6] staging: rtl8188eu: add spaces around '+' in
 usb_halinit.c
From: Joe Perches <joe@perches.com>
To: Michael Straube <straube.linux@gmail.com>, gregkh@linuxfoundation.org
Date: Fri, 26 Jul 2019 11:21:36 -0700
In-Reply-To: <20190726180448.2290-1-straube.linux@gmail.com>
References: <20190726180448.2290-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2019-07-26 at 20:04 +0200, Michael Straube wrote:
> Add spaces around '+' to improve readability and follow kernel
> coding style. Reported by checkpatch.

My preference would be to do all the horizontal whitespace
changes for the entire driver in one go without worrying
about long lines.

$ git ls-files -- 'drivers/staging/rtl8188eu/*.[ch]' | \
  xargs ./scripts/checkpatch.pl -f --types=SPACING --fix-inplace
$ git diff -w drivers/staging/rtl8188eu/
$ git diff --shortstat drivers/staging/rtl8188eu
 35 files changed, 603 insertions(+), 603 deletions(-)

Mention that git diff -w shows no difference and
verify that object files are unchanged and mention
both in the changelog.

Subject could be something like:

staging: rtl8188eu: Use typical kernel horizontal whitespace


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

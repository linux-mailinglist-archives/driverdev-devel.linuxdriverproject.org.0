Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 847E628E20
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 02:02:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E421F87F02;
	Fri, 24 May 2019 00:02:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NyI5ThWBy1c0; Fri, 24 May 2019 00:02:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71A7F87E84;
	Fri, 24 May 2019 00:02:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D3AF1BF973
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 00:02:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0AA66221FF
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 00:02:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sfUyOfYBScMS for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 00:02:27 +0000 (UTC)
X-Greylist: delayed 02:49:51 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0039.hostedemail.com
 [216.40.44.39])
 by silver.osuosl.org (Postfix) with ESMTPS id 1A08621574
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 00:02:26 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id A6D8318355100
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 21:02:26 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id A6868182CED28;
 Thu, 23 May 2019 21:02:23 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:421:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2110:2198:2199:2393:2553:2559:2562:2828:2911:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:4425:4470:5007:10004:10400:10848:11232:11658:11914:12740:12760:12895:13069:13149:13230:13311:13357:13439:14096:14097:14181:14659:14721:21080:21324:21451:21627:30054:30060:30070:30090:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:27,
 LUA_SUMMARY:none
X-HE-Tag: brick10_31daacd83bf3d
X-Filterd-Recvd-Size: 1862
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf13.hostedemail.com (Postfix) with ESMTPA;
 Thu, 23 May 2019 21:02:22 +0000 (UTC)
Message-ID: <a3c036b12979ab7269917247a683eeb63df71d58.camel@perches.com>
Subject: Re: [PATCH 1/2] MAINTAINERS: Add entry for fieldbus subsystem
From: Joe Perches <joe@perches.com>
To: Sven Van Asbroeck <thesven73@gmail.com>
Date: Thu, 23 May 2019 14:02:16 -0700
In-Reply-To: <CAGngYiUnRSSPLDhXeAg5E0pM_-ZbNV9qpOarSemDdpwLPRZeqA@mail.gmail.com>
References: <20190523195313.31008-1-TheSven73@gmail.com>
 <1b741b25b973e049948b3e490c13aad48716d5b0.camel@perches.com>
 <CAGngYiUnRSSPLDhXeAg5E0pM_-ZbNV9qpOarSemDdpwLPRZeqA@mail.gmail.com>
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2019-05-23 at 16:23 -0400, Sven Van Asbroeck wrote:
> On Thu, May 23, 2019 at 4:00 PM Joe Perches <joe@perches.com> wrote:
> > trivia: anybuss looks like a misspelling.
> > It might be better as anybus-s.
> This came up as well during the review process. When we insert a separator,
> the include files start looking like anybus-s-controller.h, and the structs
> become like struct anybus_s_ops. It then no longer looks like a misspelling,
> but becomes harder to read?
> 
> An alternative solution is to get rid of the 's' suffix altogether. Anybus-S
> is the only flavour we support right now. Although that may obviously
> change in the future.

anybuss just looked odd to me.

Whatever you choose is up to you and
no doubt you'll choose well.

cheers, Joe


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

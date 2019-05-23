Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 123F428B50
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 22:10:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D981E86B6A;
	Thu, 23 May 2019 20:10:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uu66rhgolMDK; Thu, 23 May 2019 20:10:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 48F0D84C44;
	Thu, 23 May 2019 20:10:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA7051BF3FD
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 20:10:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A769822798
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 20:10:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ltoamZYSmui1 for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 20:10:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0045.hostedemail.com
 [216.40.44.45])
 by silver.osuosl.org (Postfix) with ESMTPS id D5CDF2155E
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 20:10:40 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 14ACB18002297
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 20:00:56 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 297F1100E86C8;
 Thu, 23 May 2019 20:00:53 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3351:3622:3865:3866:3872:4321:5007:7514:7875:8957:10004:10400:10848:11232:11658:11914:12043:12555:12679:12740:12760:12895:13018:13019:13069:13161:13229:13311:13357:13439:14181:14659:14721:21080:21451:21627:30054:30060:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:60,
 LUA_SUMMARY:none
X-HE-Tag: hole85_5ee488a53b31a
X-Filterd-Recvd-Size: 1650
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Thu, 23 May 2019 20:00:51 +0000 (UTC)
Message-ID: <1b741b25b973e049948b3e490c13aad48716d5b0.camel@perches.com>
Subject: Re: [PATCH 1/2] MAINTAINERS: Add entry for fieldbus subsystem
From: Joe Perches <joe@perches.com>
To: Sven Van Asbroeck <thesven73@gmail.com>, Greg KH
 <gregkh@linuxfoundation.org>
Date: Thu, 23 May 2019 13:00:50 -0700
In-Reply-To: <20190523195313.31008-1-TheSven73@gmail.com>
References: <20190523195313.31008-1-TheSven73@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2019-05-23 at 15:53 -0400, Sven Van Asbroeck wrote:
> Add myself as the maintainer of the fieldbus subsystem.
[]
> diff --git a/MAINTAINERS b/MAINTAINERS
[]
> @@ -14905,6 +14905,11 @@ L:	linux-erofs@lists.ozlabs.org
>  S:	Maintained
>  F:	drivers/staging/erofs/
>  
> +STAGING - FIELDBUS SUBSYSTEM
> +M:	Sven Van Asbroeck <TheSven73@gmail.com>
> +S:	Maintained
> +F:	drivers/staging/fieldbus/*

The F: pattern above excludes subdirectories.

What about the drivers/staging/fieldbus/Documentation directory?

patch 2/2 specifically covers the anybuss directory,
but the Documentation directory has no matching pattern.

trivia: anybuss looks like a misspelling.
It might be better as anybus-s.




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

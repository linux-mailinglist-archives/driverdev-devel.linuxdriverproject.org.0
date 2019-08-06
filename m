Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A79833AF
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 16:14:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3CEAB860D1;
	Tue,  6 Aug 2019 14:14:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KWVngkZYI0h9; Tue,  6 Aug 2019 14:14:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6525F85FA3;
	Tue,  6 Aug 2019 14:14:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D6CE1BF3D9
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 14:14:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 886D987E5F
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 14:14:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qSQ-lx6A7fPy for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 14:14:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0121.hostedemail.com
 [216.40.44.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8E44F87E5C
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 14:14:03 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 307F71801530F
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 10:29:46 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 67B4B6121;
 Tue,  6 Aug 2019 10:29:43 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::,
 RULES_HIT:41:355:379:599:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:1801:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:4250:4321:4559:4605:5007:7809:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13095:13311:13357:13439:14181:14581:14659:14721:21080:21433:21451:21627:30012:30025:30054:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:27,
 LUA_SUMMARY:none
X-HE-Tag: goat74_37ab30b107b50
X-Filterd-Recvd-Size: 1545
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Tue,  6 Aug 2019 10:29:42 +0000 (UTC)
Message-ID: <b73f09c944625a40b2589e9bac7f8bd22a711ed3.camel@perches.com>
Subject: Re: [PATCH] USB: Move wusbcore and UWB to staging as it is obsolete
From: Joe Perches <joe@perches.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org
Date: Tue, 06 Aug 2019 03:29:40 -0700
In-Reply-To: <20190806101509.GA11280@kroah.com>
References: <20190806101509.GA11280@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2019-08-06 at 12:15 +0200, Greg Kroah-Hartman wrote:
> The UWB and wusbcore code is long obsolete, so let us just move the code
> out of the real part of the kernel and into the drivers/staging/
> location with plans to remove it entirely in a few releases.
[]
>  MAINTAINERS                                   | 15 +++-------
[]
> diff --git a/MAINTAINERS b/MAINTAINERS
[]
> @@ -3800,14 +3800,9 @@ F:	scripts/sign-file.c
>  F:	scripts/extract-cert.c
>  
>  CERTIFIED WIRELESS USB (WUSB) SUBSYSTEM:
> -L:	linux-usb@vger.kernel.org
> +L:	devel@driverdev.osuosl.org
>  S:	Orphan

Better to mark this as obsolete so checkpatch emits
a message saying "no unnecessary modifications"


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37372CD049
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 12:09:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C81EE871F4;
	Sun,  6 Oct 2019 10:09:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J-2UvcsD-aNG; Sun,  6 Oct 2019 10:09:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E4DE8708C;
	Sun,  6 Oct 2019 10:09:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2094A1BF2FF
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 10:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 199B120390
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 10:09:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JeXbAkDE-SqH for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 10:09:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0229.hostedemail.com
 [216.40.44.229])
 by silver.osuosl.org (Postfix) with ESMTPS id EAD5B20358
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 10:09:32 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 625081801A0BD
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 10:09:31 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 0D0B318224D86;
 Sun,  6 Oct 2019 10:09:28 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2553:2559:2562:2691:2828:3138:3139:3140:3141:3142:3351:3622:3865:3871:3872:3873:4250:4321:5007:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21451:21627:30012:30054:30070:30090:30091,
 0,
 RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: night97_5277490531e42
X-Filterd-Recvd-Size: 1619
Received: from XPS-9350.home (unknown [47.151.152.152])
 (Authenticated sender: joe@perches.com)
 by omf12.hostedemail.com (Postfix) with ESMTPA;
 Sun,  6 Oct 2019 10:09:26 +0000 (UTC)
Message-ID: <2ed3bf96312dbd9abcd626868ce84e01a066b201.camel@perches.com>
Subject: Re: [PATCH] staging: greybus: add blank line after declarations
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Gabriela Bittencourt
 <gabrielabittencourt00@gmail.com>
Date: Sun, 06 Oct 2019 03:09:25 -0700
In-Reply-To: <20191006095042.GA2918514@kroah.com>
References: <20191005210046.27224-1-gabrielabittencourt00@gmail.com>
 <20191006095042.GA2918514@kroah.com>
User-Agent: Evolution 3.32.1-2 
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, greybus-dev@lists.linaro.org,
 johan@kernel.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2019-10-06 at 11:50 +0200, Greg KH wrote:
> On Sat, Oct 05, 2019 at 06:00:46PM -0300, Gabriela Bittencourt wrote:
> > Fix CHECK: add blank line after declarations
[]
> > diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
[]
> > @@ -24,6 +24,7 @@ struct gb_control {
> >  	char *vendor_string;
> >  	char *product_string;
> >  };
> > +
> >  #define to_gb_control(d) container_of(d, struct gb_control, dev)
> 
> No, the original code is "better" here, it's a common pattern despite
> what checkpatch.pl tells you, sorry.

Statistics please.

I believe it's not a common pattern.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

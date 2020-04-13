Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1B81A6922
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 17:49:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4566A834BE;
	Mon, 13 Apr 2020 15:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YH1G2Rr94CSM; Mon, 13 Apr 2020 15:49:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D74B78242B;
	Mon, 13 Apr 2020 15:49:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CA7311BF97E
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 15:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AFAC7203A0
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 15:49:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id azJHsC1WX+5g for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 15:48:55 +0000 (UTC)
X-Greylist: delayed 00:06:56 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0186.hostedemail.com
 [216.40.44.186])
 by silver.osuosl.org (Postfix) with ESMTPS id AF7FC20006
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 15:48:55 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id C83B118027477
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 15:41:59 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 3BC1A18224504;
 Mon, 13 Apr 2020 15:41:57 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:42:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3351:3622:3865:3866:3867:3868:3870:3872:3873:4250:4321:5007:7223:10004:10400:10848:11232:11658:11914:12043:12295:12297:12740:12760:12895:13069:13095:13311:13357:13439:14180:14659:14777:21080:21433:21627:21819:21990:30022:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:4, LUA_SUMMARY:none
X-HE-Tag: dolls70_4b08d2e0a8857
X-Filterd-Recvd-Size: 1657
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Mon, 13 Apr 2020 15:41:55 +0000 (UTC)
Message-ID: <ba11f20b35eb1b4fbdcaf353eeec29950146af9f.camel@perches.com>
Subject: Re: [PATCH 1/2] staging: rtl8192u: Refactoring setKey function
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Camylla Goncalves Cantanheide
 <c.cantanheide@gmail.com>
Date: Mon, 13 Apr 2020 08:39:48 -0700
In-Reply-To: <20200413125015.GA3077651@kroah.com>
References: <20200413030129.861-1-c.cantanheide@gmail.com>
 <20200413125015.GA3077651@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org, nishkadg.linux@gmail.com,
 navid.emamdoost@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-04-13 at 14:50 +0200, Greg KH wrote:
> On Mon, Apr 13, 2020 at 03:01:28AM +0000, Camylla Goncalves Cantanheide wrote:
> > Changes of the local variable value and
> > modification in the seletive repetition structure.
[]
> > diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
[]
> You are receiving this message because of the following common error(s)
> as indicated below:
[]
> greg k-h's patch email bot

Hey Greg.

I think I wrote most (all?) of this as a suggestion
to Camylla.

It's a refactoring patch which would be difficult
or impossible to separate into multiple patches.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

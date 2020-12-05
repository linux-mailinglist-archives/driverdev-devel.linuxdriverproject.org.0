Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 389072CF7D9
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Dec 2020 01:16:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3D4022E34F;
	Sat,  5 Dec 2020 00:16:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c7+jdGU0uWnG; Sat,  5 Dec 2020 00:16:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C87D52E330;
	Sat,  5 Dec 2020 00:16:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D144E1BF9C2
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 00:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B57CC2044A
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 00:16:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pjqDCDzc1eMC for <devel@linuxdriverproject.org>;
 Sat,  5 Dec 2020 00:16:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0162.hostedemail.com
 [216.40.44.162])
 by silver.osuosl.org (Postfix) with ESMTPS id 7FD7B203F7
 for <devel@driverdev.osuosl.org>; Sat,  5 Dec 2020 00:16:35 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id 598A58123133
 for <devel@driverdev.osuosl.org>; Sat,  5 Dec 2020 00:16:33 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id D82A1837F24A;
 Sat,  5 Dec 2020 00:16:30 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1559:1593:1594:1711:1714:1730:1747:1777:1792:2393:2525:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3866:3873:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:9025:9391:10004:10400:10848:11658:11914:12043:12048:12297:12555:12740:12760:12895:12986:13069:13311:13357:13439:14181:14659:14721:14777:21080:21433:21627:21660:21811:21819:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: bone03_630ff5d273c8
X-Filterd-Recvd-Size: 1253
Received: from XPS-9350.home (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf20.hostedemail.com (Postfix) with ESMTPA;
 Sat,  5 Dec 2020 00:16:29 +0000 (UTC)
Message-ID: <8b81eed584f971b1dd61132ca4d04c0853653b31.camel@perches.com>
Subject: Re: [PATCH] staging:rkvdec: Fixed "replace comma with semicolon"
 Warning:
From: Joe Perches <joe@perches.com>
To: Travis Carter <traviscarter2@gmail.com>, ezequiel@collabora.com, 
 mchehab@kernel.org, gregkh@linuxfoundation.org
Date: Fri, 04 Dec 2020 16:16:28 -0800
In-Reply-To: <20201204233743.GA8530@linuxmint-midtower-pc>
References: <20201204233743.GA8530@linuxmint-midtower-pc>
User-Agent: Evolution 3.38.1-1 
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
Cc: devel@driverdev.osuosl.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2020-12-04 at 17:37 -0600, Travis Carter wrote:
> drivers/staging/media/rkvdec/rkvdec.c

You might consider using Julia Lawall's cocci script for all of
drivers/staging or subsets of staging like drivers/staging/media/

https://lore.kernel.org/lkml/1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr/


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93853290E52
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Oct 2020 02:11:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7D4488F9A;
	Sat, 17 Oct 2020 00:11:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ceQRcNR+e4pU; Sat, 17 Oct 2020 00:11:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9FC1C89086;
	Sat, 17 Oct 2020 00:11:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D9F061BF846
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 00:11:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D6E0088B46
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 00:11:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RSDf4aKLli2P for <devel@linuxdriverproject.org>;
 Sat, 17 Oct 2020 00:11:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0164.hostedemail.com
 [216.40.44.164])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0AB2188B2E
 for <devel@driverdev.osuosl.org>; Sat, 17 Oct 2020 00:11:47 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id C580C1802926E;
 Sat, 17 Oct 2020 00:11:46 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3870:3872:4321:4362:5007:6119:7576:7903:10004:10400:10848:11026:11232:11658:11914:12043:12048:12296:12297:12438:12555:12740:12760:12895:12986:13069:13311:13357:13439:14096:14097:14181:14659:14721:21080:21433:21451:21627:21939:30012:30054:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: act27_2117f0927221
X-Filterd-Recvd-Size: 1735
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf19.hostedemail.com (Postfix) with ESMTPA;
 Sat, 17 Oct 2020 00:11:45 +0000 (UTC)
Message-ID: <09cd7e609324d460afdf14829baf3c2f1a9cb9cd.camel@perches.com>
Subject: Re: [PATCH] staging: wfx: make a const array static, makes object
 smaller
From: Joe Perches <joe@perches.com>
To: Colin King <colin.king@canonical.com>, =?ISO-8859-1?Q?J=E9r=F4me?=
 Pouiller <jerome.pouiller@silabs.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  devel@driverdev.osuosl.org
Date: Fri, 16 Oct 2020 17:11:44 -0700
In-Reply-To: <20201016223303.687278-1-colin.king@canonical.com>
References: <20201016223303.687278-1-colin.king@canonical.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2020-10-16 at 23:33 +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Don't populate const array filter_ies on the stack but instead
> make it static. Makes the object code smaller by 261 bytes.
> 
> Before:
>    text	   data	    bss	    dec	    hex	filename
>   21674	   3166	    448	  25288	   62c8	drivers/staging/wfx/sta.o
> 
> After:
>    text	   data	    bss	    dec	    hex	filename
>   21349	   3230	    448	  25027	   61c3	drivers/staging/wfx/sta.o

Thanks.

It's odd to me it's so large a change as it's only
24 bytes of initialization. (3 entries, each 8 bytes)

This line in the same function:

		hif_set_beacon_filter_table(wvif, 3, filter_ies);

might as well use ARRAY_SIZE(filter_ies) instead of 3


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

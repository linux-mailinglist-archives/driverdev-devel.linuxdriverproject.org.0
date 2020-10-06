Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3ED285168
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Oct 2020 20:13:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73F3C870E2;
	Tue,  6 Oct 2020 18:13:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dNn+u5hh8Lme; Tue,  6 Oct 2020 18:13:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CBE32870E4;
	Tue,  6 Oct 2020 18:13:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F1B7D1BF3E1
 for <devel@linuxdriverproject.org>; Tue,  6 Oct 2020 18:13:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EE7EB846AD
 for <devel@linuxdriverproject.org>; Tue,  6 Oct 2020 18:13:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TAygB6aSG-Nm for <devel@linuxdriverproject.org>;
 Tue,  6 Oct 2020 18:13:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0172.hostedemail.com
 [216.40.44.172])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 03318828FA
 for <devel@driverdev.osuosl.org>; Tue,  6 Oct 2020 18:13:39 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id C308F837F24D;
 Tue,  6 Oct 2020 18:13:37 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3874:4321:4823:5007:8660:10004:10226:10400:10848:11232:11658:11914:12297:12740:12760:12895:13019:13069:13148:13230:13311:13357:13439:14659:14721:21080:21451:21627:21939:21990:30012:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:62, LUA_SUMMARY:none
X-HE-Tag: light72_11076f4271c8
X-Filterd-Recvd-Size: 1709
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf03.hostedemail.com (Postfix) with ESMTPA;
 Tue,  6 Oct 2020 18:13:35 +0000 (UTC)
Message-ID: <9a065558a24de42395d1175798f05272b07311c2.camel@perches.com>
Subject: Re: [PATCH 2/2] media: staging: atomisp: Removed else branch in
 function
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Leonid Kushnir
 <leonf008@gmail.com>
Date: Tue, 06 Oct 2020 11:13:34 -0700
In-Reply-To: <20201006180410.GH4282@kadam>
References: <20201006081721.GA35979@linux> <20201006180410.GH4282@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-10-06 at 21:04 +0300, Dan Carpenter wrote:
> Code should generally do "error handling" instead of "success handling".

Maybe something to add to coding-style
(in '6} Functions' maybe?)...

> That way the success path is always indented one tab and the error path
> is indented two tabs.  I like to say that the call and the error handling
> are part of the same thing, but with success handling, it's like
> do the call, do more stuff, go back to the error handling from the
> earlier call.
[]
> Anyway, TLDR, please write it like this:
> 
> 	if (on == 0)
>  		return power_down(sd);
> 
> 	ret = power_up(sd);
> 	if (ret)
> 		return ret;
> 
> 	return gc0310_init(sd);

Much nicer, thanks for taking the time to write it.



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

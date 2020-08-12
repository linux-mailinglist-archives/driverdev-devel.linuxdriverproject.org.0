Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DC7242F0D
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 21:18:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8EB6723B88;
	Wed, 12 Aug 2020 19:18:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id abGMnGjB0pG2; Wed, 12 Aug 2020 19:18:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 46BBB23449;
	Wed, 12 Aug 2020 19:18:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF4BC1BF37C
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 19:18:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9C3BB23449
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 19:18:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 55cVNB3EkFRa for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 19:18:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0024.hostedemail.com
 [216.40.44.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 373EA20419
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 19:18:19 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id EE53118289596
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 18:59:01 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 78FAA100E86C6;
 Wed, 12 Aug 2020 18:58:59 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:966:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1568:1593:1594:1711:1714:1730:1747:1777:1792:2110:2196:2199:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3622:3867:3871:3872:3873:3874:4321:4385:5007:6742:7901:7903:10004:10400:10848:10967:11232:11658:11914:12297:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21627:30054:30083:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: head53_0e1322226fed
X-Filterd-Recvd-Size: 1835
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf03.hostedemail.com (Postfix) with ESMTPA;
 Wed, 12 Aug 2020 18:58:56 +0000 (UTC)
Message-ID: <81cfca4309624b4f33cace78297872a526aa4763.camel@perches.com>
Subject: Re: [PATCH 00/44] SPMI patches needed by Hikey 970
From: Joe Perches <joe@perches.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Date: Wed, 12 Aug 2020 11:58:55 -0700
In-Reply-To: <20200812154752.3223b9d8@onda.lan>
References: <cover.1597247164.git.mchehab+huawei@kernel.org>
 <305f0df155e89e0c626b8f7366c4ab5f6741aedd.camel@perches.com>
 <20200812154752.3223b9d8@onda.lan>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linuxarm@huawei.com,
 Wei Xu <xuwei5@hisilicon.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 mauro.chehab@huawei.com, Lee Jones <lee.jones@linaro.org>, "David
 S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-08-12 at 15:47 -0300, Mauro Carvalho Chehab wrote:
> Em Wed, 12 Aug 2020 10:13:51 -0700
> Joe Perches <joe@perches.com> escreveu:
> 
> > Perhaps these trivial bits on top:
> 
> Sounds fine for me. Feel free to send it with your SOB, adding my reviewed by:
> 
> Reviewed-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

I don't know that your original
series is going to be applied as-is
so I think you should carry it.

cheers, Joe


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

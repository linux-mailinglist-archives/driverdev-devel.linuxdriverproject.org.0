Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2906E242CE8
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 18:13:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C423488320;
	Wed, 12 Aug 2020 16:13:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wg49iqnX5c0V; Wed, 12 Aug 2020 16:13:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0A7CD8826E;
	Wed, 12 Aug 2020 16:13:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C16D81BF4DD
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 16:13:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B5E12203D5
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 16:13:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oFiWP-fM2v7P for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 16:13:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0242.hostedemail.com
 [216.40.44.242])
 by silver.osuosl.org (Postfix) with ESMTPS id 5911920021
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 16:13:06 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave08.hostedemail.com (Postfix) with ESMTP id E20C11801452D
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 16:13:01 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 03A5618224D6A;
 Wed, 12 Aug 2020 16:12:59 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3350:3622:3865:3866:3872:3874:4321:5007:7903:10004:10400:10848:11026:11232:11658:11914:12043:12297:12438:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21627:30003:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: bikes50_180d8bd26fec
X-Filterd-Recvd-Size: 1729
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf11.hostedemail.com (Postfix) with ESMTPA;
 Wed, 12 Aug 2020 16:12:57 +0000 (UTC)
Message-ID: <89523042b8d574fa49e7d5c52ec12f1f5f848773.camel@perches.com>
Subject: Re: [PATCH 20/44] staging: mfd: hi6421-spmi-pmic: fix some coding
 style issues
From: Joe Perches <joe@perches.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Date: Wed, 12 Aug 2020 09:12:56 -0700
In-Reply-To: <867108ee50302f933fade56f8c25ef775ade36b3.1597247164.git.mchehab+huawei@kernel.org>
References: <cover.1597247164.git.mchehab+huawei@kernel.org>
 <867108ee50302f933fade56f8c25ef775ade36b3.1597247164.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, mauro.chehab@huawei.com,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-08-12 at 17:56 +0200, Mauro Carvalho Chehab wrote:
> Checkpatch complains about some minor issues inside this
> driver that were not addressed by the previous patch.
> 
> Address them.
[]
> diff --git a/include/linux/mfd/hi6421-spmi-pmic.h b/include/linux/mfd/hi6421-spmi-pmic.h
[]
> @@ -38,7 +38,8 @@ struct hi6421_spmi_pmic {
>  	unsigned int				*irqs;
>  	int					irqnum;
>  	int					irqarray;
> -	struct hi6421_spmi_irq_mask_info 	irq_mask_addr;
> +
> +	struct hi6421_spmi_irq_mask_info	irq_mask_addr;
>  	struct hi6421_spmi_irq_info		irq_addr;
>  };

Was adding a blank line one of checkpatch complaints?
I doubt it. 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

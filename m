Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3D222A055
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 21:56:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 77C1A87F72;
	Wed, 22 Jul 2020 19:56:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PbisitrN9zxr; Wed, 22 Jul 2020 19:56:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA8A9882EE;
	Wed, 22 Jul 2020 19:56:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E5321BF3F9
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 19:56:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5B28F868CB
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 19:56:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DzBgEk3u7mbj for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 19:56:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0136.hostedemail.com
 [216.40.44.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9617486C63
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 19:56:11 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id A23CF1826D217
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 19:56:10 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 7C27781EB13E;
 Wed, 22 Jul 2020 19:56:08 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:966:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2196:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3351:3622:3866:3867:3872:3873:4321:4385:4605:5007:6117:6119:7875:7903:10004:10400:10848:11026:11232:11473:11658:11914:12043:12048:12294:12297:12438:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21451:21627:30012:30034:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: event76_220415b26f38
X-Filterd-Recvd-Size: 1602
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Wed, 22 Jul 2020 19:56:07 +0000 (UTC)
Message-ID: <1e38634d0f1c94eaaa2c9312ffe112734029a316.camel@perches.com>
Subject: Re: [PATCH] staging: octeon: Indent with tabs instead of spaces
From: Joe Perches <joe@perches.com>
To: Muhammad Usama Anjum <musamaanjum@gmail.com>,
 gregkh@linuxfoundation.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Wed, 22 Jul 2020 12:56:06 -0700
In-Reply-To: <20200722171950.GA6176@PKL-UANJUM-LT.pkl.mentorg.com>
References: <20200722171950.GA6176@PKL-UANJUM-LT.pkl.mentorg.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-07-22 at 22:19 +0500, Muhammad Usama Anjum wrote:
> Remove a coding style error. It makes code more readable.
[]
> diff --git a/drivers/staging/octeon/ethernet-defines.h b/drivers/staging/octeon/ethernet-defines.h
[]
> @@ -27,14 +27,14 @@
>  #define REUSE_SKBUFFS_WITHOUT_FREE  1
>  #endif
>  
> -#define USE_ASYNC_IOBDMA            (CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE > 0)
> +#define USE_ASYNC_IOBDMA		(CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE > 0)
>  
>  /* Maximum number of SKBs to try to free per xmit packet. */
> -#define MAX_OUT_QUEUE_DEPTH 1000
> +#define MAX_OUT_QUEUE_DEPTH		1000
>  
>  #define FAU_TOTAL_TX_TO_CLEAN (CVMX_FAU_REG_END - sizeof(u32))

If you really like alignment to tabstop,
why not align FAU_TOTAL_TX_TO_CLEAN too?


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

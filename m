Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF99973959
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 21:39:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B19D8818F;
	Wed, 24 Jul 2019 19:39:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W5s0w0V6mlCB; Wed, 24 Jul 2019 19:39:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BDA9F88154;
	Wed, 24 Jul 2019 19:39:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 72C2B1BF3BF
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 19:39:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 46F1A8815C
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 19:39:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sxn8b8WlpgwT for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 19:39:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0109.hostedemail.com
 [216.40.44.109])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2402B88127
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 19:39:09 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id 9C89B180361A8
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 17:09:50 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 96310182251B2;
 Wed, 24 Jul 2019 17:09:47 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1714:1730:1747:1777:1792:2198:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3350:3622:3867:4321:5007:6642:10004:10400:10848:11026:11232:11473:11657:11658:11914:12043:12048:12297:12438:12555:12740:12760:12895:12986:13069:13311:13357:13439:14096:14097:14181:14659:14721:21080:21451:21627:30054:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: stop29_1b0e5232f4617
X-Filterd-Recvd-Size: 2157
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Wed, 24 Jul 2019 17:09:45 +0000 (UTC)
Message-ID: <be536d37a3b58557cdacd33943915d397bcb5037.camel@perches.com>
Subject: Re: [PATCH 11/12] staging: media: cedrus: Fix misuse of GENMASK macro
From: Joe Perches <joe@perches.com>
To: Andrew Morton <akpm@linux-foundation.org>, Maxime Ripard
 <maxime.ripard@bootlin.com>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>,  Chen-Yu Tsai <wens@csie.org>
Date: Wed, 24 Jul 2019 10:09:44 -0700
In-Reply-To: <cd543a5f26b031a0bbd3baa55e1f15813f59f107.1562734889.git.joe@perches.com>
References: <cover.1562734889.git.joe@perches.com>
 <cd543a5f26b031a0bbd3baa55e1f15813f59f107.1562734889.git.joe@perches.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2019-07-09 at 22:04 -0700, Joe Perches wrote:
> Arguments are supposed to be ordered high then low.
> 
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_regs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> index 3e9931416e45..ddd29788d685 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> @@ -110,7 +110,7 @@
>  #define VE_DEC_MPEG_MBADDR			(VE_ENGINE_DEC_MPEG + 0x10)
>  
>  #define VE_DEC_MPEG_MBADDR_X(w)			(((w) << 8) & GENMASK(15, 8))
> -#define VE_DEC_MPEG_MBADDR_Y(h)			(((h) << 0) & GENMASK(0, 7))
> +#define VE_DEC_MPEG_MBADDR_Y(h)			(((h) << 0) & GENMASK(7, 0))
>  
>  #define VE_DEC_MPEG_CTRL			(VE_ENGINE_DEC_MPEG + 0x14)

Greg?  ping?
 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

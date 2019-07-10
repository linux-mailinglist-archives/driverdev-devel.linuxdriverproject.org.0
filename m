Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 248D464EAE
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jul 2019 00:30:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6A0F722049;
	Wed, 10 Jul 2019 22:30:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kEQ5BtYWY8lU; Wed, 10 Jul 2019 22:30:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B99CA20429;
	Wed, 10 Jul 2019 22:30:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 589EE1BF426
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 22:30:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5224A203FE
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 22:30:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XRpL9VmTB6P4 for <devel@linuxdriverproject.org>;
 Wed, 10 Jul 2019 22:30:36 +0000 (UTC)
X-Greylist: delayed 17:25:38 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0010.hostedemail.com
 [216.40.44.10])
 by silver.osuosl.org (Postfix) with ESMTPS id 4C53520391
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 22:30:36 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id F376B182CF67C;
 Wed, 10 Jul 2019 22:30:34 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3873:4250:4321:5007:7514:7875:9040:10004:10400:10848:11026:11232:11473:11657:11658:11914:12043:12297:12438:12555:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21627:21810:30012:30054:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: group31_794d726ad7435
X-Filterd-Recvd-Size: 2043
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf10.hostedemail.com (Postfix) with ESMTPA;
 Wed, 10 Jul 2019 22:30:33 +0000 (UTC)
Message-ID: <bc0f21dd8753190c6fbba0d3f7469a2d8c87b341.camel@perches.com>
Subject: Re: [PATCH] Staging: rtl8723bs: hal: rtl8723bs_recv.c: Fix code style
From: Joe Perches <joe@perches.com>
To: Fatih ALTINPINAR <fatihaltinpinar@gmail.com>
Date: Wed, 10 Jul 2019 15:30:32 -0700
In-Reply-To: <20190708095652.18174-1-fatihaltinpinar@gmail.com>
References: <20190708095652.18174-1-fatihaltinpinar@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Josenivaldo Benito Jr <jrbenito@benito.qsl.br>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2019-07-08 at 12:56 +0300, Fatih ALTINPINAR wrote:
> Fixed a coding stlye issue. Removed braces from a single statement if
> block.
> 
> Signed-off-by: Fatih ALTINPINAR <fatihaltinpinar@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
> index e23b39ab16c5..71a4bcbeada9 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
> @@ -449,9 +449,8 @@ s32 rtl8723bs_init_recv_priv(struct adapter *padapter)
>  				skb_reserve(precvbuf->pskb, (RECVBUFF_ALIGN_SZ - alignment));
>  			}
>  
> -			if (!precvbuf->pskb) {
> +			if (!precvbuf->pskb)
>  				DBG_871X("%s: alloc_skb fail!\n", __func__);
> -			}

You could delete the block instead.
alloc_skb failures already do a dump_stack()


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

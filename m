Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB096A349A
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 12:04:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2F4AA2635C;
	Fri, 30 Aug 2019 10:04:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pSZ4YbuTd8Uo; Fri, 30 Aug 2019 10:04:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1FBD020443;
	Fri, 30 Aug 2019 10:04:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 12C121BF369
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 10:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C83B884E9
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 10:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id opcvexLqMXXJ for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 10:04:02 +0000 (UTC)
X-Greylist: delayed 06:27:39 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0221.hostedemail.com
 [216.40.44.221])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BDFBE87E56
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 10:04:02 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 9CCE918015CBD
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 10:04:01 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id ED946182CF665;
 Fri, 30 Aug 2019 10:03:58 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1801:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3870:4321:4384:4605:5007:10004:10400:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12740:12760:12895:13069:13095:13161:13229:13311:13357:13439:14181:14659:14721:21080:21433:21627:30009:30012:30054:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: town56_3fb8114aab143
X-Filterd-Recvd-Size: 1891
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Fri, 30 Aug 2019 10:03:57 +0000 (UTC)
Message-ID: <ef0c0782216006d187954e5b80f412bf4b8e6392.camel@perches.com>
Subject: Re: [PATCH] staging: rts5208: Fixed checkpath warning.
From: Joe Perches <joe@perches.com>
To: Prakhar Sinha <prakharsinha2808@gmail.com>, gregkh@linuxfoundation.org, 
 kim.jamie.bradley@gmail.com
Date: Fri, 30 Aug 2019 03:03:56 -0700
In-Reply-To: <20190830071144.GA29987@MeraComputer>
References: <20190830071144.GA29987@MeraComputer>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2019-08-30 at 12:41 +0530, Prakhar Sinha wrote:
> This patch solves the following checkpatch.pl's message in drivers/staging/rts5208/rtsx_transport.c:397.
> WARNING: line over 80 characters
> +                               option = RTSX_SG_VALID | RTSX_SG_END | RTSX_SG_TRANS_DATA;
[]
> diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
[]
> @@ -394,7 +394,8 @@ static int rtsx_transfer_sglist_adma_partial(struct rtsx_chip *chip, u8 card,
>  			*index = *index + 1;
>  		}
>  		if ((i == (sg_cnt - 1)) || !resid)
> -			option = RTSX_SG_VALID | RTSX_SG_END | RTSX_SG_TRANS_DATA;
> +			option = RTSX_SG_VALID | RTSX_SG_END | 
> +				 RTSX_SG_TRANS_DATA;
>  		else
>  			option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;

probably more readable as:

		option = RTXS_SG_VALID | RTSX_SG_TRANS_DATA;
		if (i == sg_cnt - 1 || !resid)
			option |= RTXS_SG_END;

The compiler should produce the same object code.

Add parentheses in the if to suit, but they are not
necessary.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

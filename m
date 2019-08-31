Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7085CA41D5
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Aug 2019 04:58:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 90CD48764C;
	Sat, 31 Aug 2019 02:58:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KVzA2GMJDqbc; Sat, 31 Aug 2019 02:58:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4965A87638;
	Sat, 31 Aug 2019 02:58:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA1921BF317
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 02:58:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A249987638
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 02:58:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Km7iLmxyHGCV for <devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 02:58:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0084.hostedemail.com
 [216.40.44.84])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CAA228762F
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 02:58:13 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 3E89718224508;
 Sat, 31 Aug 2019 02:58:11 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10, 1, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1801:2393:2559:2562:2828:2919:3138:3139:3140:3141:3142:3352:3622:3865:3867:3870:3871:3873:4321:4384:4605:5007:7904:10004:10400:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12740:12760:12895:13069:13311:13357:13439:13523:13524:14659:14721:21080:21627:30009:30054:30091,
 0,
 RBL:23.242.70.174:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: mouth58_2a3e073eed542
X-Filterd-Recvd-Size: 1882
Received: from XPS-9350 (cpe-23-242-70-174.socal.res.rr.com [23.242.70.174])
 (Authenticated sender: joe@perches.com)
 by omf19.hostedemail.com (Postfix) with ESMTPA;
 Sat, 31 Aug 2019 02:58:10 +0000 (UTC)
Message-ID: <3dc5ac616a3c2bfc48b8b3dfa1213532610b6431.camel@perches.com>
Subject: Re: [PATCH v3] staging: rts5208: Fix checkpath warning
From: Joe Perches <joe@perches.com>
To: P SAI PRASANTH <saip2823@gmail.com>, gregkh@linuxfoundation.org, 
 kim.jamie.bradley@gmail.com
Date: Fri, 30 Aug 2019 19:58:09 -0700
In-Reply-To: <20190831022515.GA4917@dell-inspiron>
References: <20190831022515.GA4917@dell-inspiron>
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

On Sat, 2019-08-31 at 07:55 +0530, P SAI PRASANTH wrote:
> This patch fixes the following checkpath warning
> in the file drivers/staging/rts5208/rtsx_transport.c:546
> 
> WARNING: line over 80 characters
> +                               option = RTSX_SG_VALID | RTSX_SG_END |
> RTSX_SG_TRANS_DATA;
[]
> diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
[]
> @@ -540,11 +540,10 @@ static int rtsx_transfer_sglist_adma(struct rtsx_chip *chip, u8 card,
>  
>  			dev_dbg(rtsx_dev(chip), "DMA addr: 0x%x, Len: 0x%x\n",
>  				(unsigned int)addr, len);
> -
> +

This same line delete then insert the same blank line
is very unusual.

What did you use to create this patch?

> +			option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
>  			if (j == (sg_cnt - 1))
> -				option = RTSX_SG_VALID | RTSX_SG_END | RTSX_SG_TRANS_DATA;
> -			else
> -				option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
> +				option |= RTSX_SG_END;
>  
>  			rtsx_add_sg_tbl(chip, (u32)addr, (u32)len, option);
>  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

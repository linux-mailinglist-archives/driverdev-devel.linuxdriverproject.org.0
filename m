Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 100C21C2A30
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 07:50:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B47488628;
	Sun,  3 May 2020 05:50:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1n00gOap6Bid; Sun,  3 May 2020 05:50:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 500FB88506;
	Sun,  3 May 2020 05:50:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4FA7D1BF5EA
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 05:50:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 47B808933B
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 05:50:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pmw6G6e9O6sO for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 05:50:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0207.hostedemail.com
 [216.40.44.207])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6EB99891B8
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 05:50:34 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id BC27A8124F98
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 05:11:48 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 40AC0837F24A;
 Sun,  3 May 2020 05:11:46 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2693:2828:2914:3138:3139:3140:3141:3142:3353:3622:3865:3867:3870:3871:4321:5007:6119:7903:8660:8957:10004:10400:10848:11026:11232:11473:11658:11914:12043:12048:12296:12297:12740:12760:12895:13069:13148:13161:13229:13230:13311:13357:13439:14096:14097:14659:14721:21080:21451:21627:21660:21990:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: smile70_669627d94555f
X-Filterd-Recvd-Size: 2698
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Sun,  3 May 2020 05:11:44 +0000 (UTC)
Message-ID: <e5166009d549f42b75e8d764bc9078538ce0ce4a.camel@perches.com>
Subject: Re: [PATCH 2/2] staging: vt6655: fix LONG_LINE warning
From: Joe Perches <joe@perches.com>
To: Matej Dujava <mdujava@kocurkovo.cz>, Forest Bond
 <forest@alittletooquiet.net>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Sat, 02 May 2020 22:11:43 -0700
In-Reply-To: <1588457794-31438-2-git-send-email-mdujava@kocurkovo.cz>
References: <1588457794-31438-1-git-send-email-mdujava@kocurkovo.cz>
 <1588457794-31438-2-git-send-email-mdujava@kocurkovo.cz>
User-Agent: Evolution 3.36.1-2 
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
Cc: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>,
 Stefano Brivio <sbrivio@redhat.com>, Briana Oursler <briana.oursler@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-05-03 at 00:16 +0200, Matej Dujava wrote:
> This patch will fix LONG_LINE error from checkpatch, by createing temporary
> variable so call to the function is not in if/else block.
[]
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
[]
> @@ -164,16 +164,24 @@ s_uGetTxRsvTime(
>  )
>  {
>  	unsigned int uDataTime, uAckTime;
> +	unsigned short basic_rate;
>  
>  	uDataTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, cbFrameLength, wRate);
>  
>  	if (!bNeedAck)
>  		return uDataTime;
>  
> -	if (byPktType == PK_TYPE_11B) /* llb,CCK mode */
> -		uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopCCKBasicRate);
> -	else /* 11g 2.4G OFDM mode & 11a 5G OFDM mode */
> -		uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, (unsigned short)pDevice->byTopOFDMBasicRate);
> +	/*
> +	 * CCK mode  - 11b
> +	 * OFDM mode - 11g 2.4G & 11a 5G
> +	 */
> +	if (byPktType == PK_TYPE_11B)
> +		basic_rate = (unsigned short)pDevice->byTopCCKBasicRate;
> +	else
> +		basic_rate = (unsigned short)pDevice->byTopOFDMBasicRate;
> +
> +	uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14,
> +				     basic_rate);
>  
>  	return uDataTime + pDevice->uSIFS + uAckTime;
>  }

perhaps simpler using a ?:

	uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14,
				     byPktType == PK_TYPE_11B
				     ? pDevice->byTopCCKBasicRate
				     : pDevice->byTopOFDMBasicRate);

the casts aren't necessary either as both by... fields are u8


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

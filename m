Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 609ECD4C67
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 05:23:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4B9F225DCD;
	Sat, 12 Oct 2019 03:23:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zPomwm2rzUke; Sat, 12 Oct 2019 03:23:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 225742046F;
	Sat, 12 Oct 2019 03:23:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 071FB1BF9B5
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 03:23:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 016018701F
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 03:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1S_9Z6pv4lpf for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 03:23:07 +0000 (UTC)
X-Greylist: delayed 04:41:14 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0106.hostedemail.com
 [216.40.44.106])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1404986FB4
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 03:23:06 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 2700E18014D18
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 02:07:13 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 8DE79182CED2A;
 Sat, 12 Oct 2019 02:07:10 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 80, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:4321:4605:5007:8957:10004:10400:11232:11658:11914:12043:12048:12296:12297:12740:12760:12895:13069:13311:13357:13439:14096:14097:14659:14721:21080:21451:21627:30003:30054:30091,
 0,
 RBL:23.242.70.174:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:28,
 LUA_SUMMARY:none
X-HE-Tag: bite17_4300371d6934
X-Filterd-Recvd-Size: 2049
Received: from XPS-9350 (cpe-23-242-70-174.socal.res.rr.com [23.242.70.174])
 (Authenticated sender: joe@perches.com)
 by omf07.hostedemail.com (Postfix) with ESMTPA;
 Sat, 12 Oct 2019 02:07:08 +0000 (UTC)
Message-ID: <8886b98ca936e7150abf36aa3c9d167073eaba86.camel@perches.com>
Subject: Re: [PATCH] staging: sm750fb: align arguments with open parenthesis
From: Joe Perches <joe@perches.com>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>, 
 outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com, 
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org, 
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
Date: Fri, 11 Oct 2019 19:07:06 -0700
In-Reply-To: <20191012011956.9452-1-gabrielabittencourt00@gmail.com>
References: <20191012011956.9452-1-gabrielabittencourt00@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2019-10-11 at 22:19 -0300, Gabriela Bittencourt wrote:
> Cleans up checks of "Alignment should match open parenthesis" in tree sm750fb
[]
> diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
[]
> @@ -289,7 +289,7 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
>  }
>  
>  int sm750_hw_imageblit(struct lynx_accel *accel,
> -		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
> +		       const char *pSrcbuf, /* pointer to start of source buffer in system memory */
>  		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */

checkpatch only warns on the first unaligned argument, but
all statement lines are meant to align to the open parenthesis.

>  		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
>  		 u32 dBase,    /* Address of destination: offset in frame buffer */


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

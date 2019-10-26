Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B80E5E32
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 19:38:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 425C58565B;
	Sat, 26 Oct 2019 17:38:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8d6b4mDocDa2; Sat, 26 Oct 2019 17:38:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 10AFD845D0;
	Sat, 26 Oct 2019 17:38:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 37AD11BF44A
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 17:38:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3159787327
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 17:38:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bDlD741WzxOP for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 17:38:01 +0000 (UTC)
X-Greylist: delayed 00:09:55 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0230.hostedemail.com
 [216.40.44.230])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 09D7387152
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 17:38:00 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id 88F22181C9B88
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 17:18:58 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id ED97F182CED34;
 Sat, 26 Oct 2019 17:18:55 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:599:966:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2196:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:4321:4385:5007:7903:9010:10004:10400:10848:11026:11232:11657:11658:11914:12043:12296:12297:12438:12740:12760:12895:13069:13255:13311:13357:13439:14659:14721:21080:21627:30012:30054:30070:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:23,
 LUA_SUMMARY:none
X-HE-Tag: maid80_30be03369d63b
X-Filterd-Recvd-Size: 1939
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Sat, 26 Oct 2019 17:18:54 +0000 (UTC)
Message-ID: <2bc9e96ec06fe94505b5e7d967d1453f072738a6.camel@perches.com>
Subject: Re: [PATCH 7/7] staging: rtl8188eu: reduce indentation level in
 rtw_alloc_stainfo
From: Joe Perches <joe@perches.com>
To: Michael Straube <straube.linux@gmail.com>, gregkh@linuxfoundation.org
Date: Sat, 26 Oct 2019 10:18:51 -0700
In-Reply-To: <20191026121135.181897-7-straube.linux@gmail.com>
References: <20191026121135.181897-1-straube.linux@gmail.com>
 <20191026121135.181897-7-straube.linux@gmail.com>
User-Agent: Evolution 3.34.1-2 
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2019-10-26 at 14:11 +0200, Michael Straube wrote:
> Remove else-arm from if-else statement. Move the else code out of the
> if-else and skip it by adding goto exit to the if block. The exit label
> was directly after the else-arm, so there is no change in behaviour.
> Reduces indentation level and clears a line over 80 characters
> checkpatch warning.
[]
> diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
[]
> @@ -181,70 +181,71 @@ struct sta_info *rtw_alloc_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
>  					struct sta_info, list);
>  	if (!psta) {
>  		spin_unlock_bh(&pfree_sta_queue->lock);

Because exit does no cleanup, it's probably simpler as
		return NULL;
and then remove the exit label

> +	if (index >= NUM_STA) {
> +		RT_TRACE(_module_rtl871x_sta_mgt_c_, _drv_err_,
> +			 ("ERROR => %s: index >= NUM_STA", __func__));
> +		psta = NULL;
> +		goto exit;

here too

[]

> +
>  exit:
>  	return psta;
>  }


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

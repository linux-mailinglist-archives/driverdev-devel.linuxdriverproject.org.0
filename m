Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 903CB141EFA
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jan 2020 17:08:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D55884F2E;
	Sun, 19 Jan 2020 16:08:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cz7M1cYECBfo; Sun, 19 Jan 2020 16:08:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 040DE8501A;
	Sun, 19 Jan 2020 16:08:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D45421BF28B
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 16:08:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C8CA984C09
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 16:08:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bg1QsNhUAa7U for <devel@linuxdriverproject.org>;
 Sun, 19 Jan 2020 16:08:46 +0000 (UTC)
X-Greylist: delayed 04:39:59 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0169.hostedemail.com
 [216.40.44.169])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 27AB384BF1
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 16:08:45 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 45F931801C1BC
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 05:33:09 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 43A46182251C0;
 Sun, 19 Jan 2020 05:33:06 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1362:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2691:2828:3138:3139:3140:3141:3142:3351:3622:3867:3868:3872:3873:4321:4605:5007:6119:10004:10400:10848:11026:11232:11657:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:12986:13069:13311:13357:13439:14659:14721:21080:21365:21627:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: wheel05_8f543acaa5616
X-Filterd-Recvd-Size: 1631
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf02.hostedemail.com (Postfix) with ESMTPA;
 Sun, 19 Jan 2020 05:33:04 +0000 (UTC)
Message-ID: <b1437d2f1543e73a20250342a764185772167658.camel@perches.com>
Subject: Re: [PATCH 3/3] Staging: comedi: usbdux: cleanup long line and
 align it
From: Joe Perches <joe@perches.com>
To: Simon Fong <simon.fongnt@gmail.com>, abbotti@mev.co.uk
Date: Sat, 18 Jan 2020 21:32:06 -0800
In-Reply-To: <20200119035243.7819-1-simon.fongnt@gmail.com>
References: <20200119035243.7819-1-simon.fongnt@gmail.com>
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
Cc: devel@driverdev.osuosl.org, colin.king@canonical.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-01-19 at 11:52 +0800, Simon Fong wrote:
> Clean up long line and align it
[]
> diff --git a/drivers/staging/comedi/drivers/usbdux.c b/drivers/staging/comedi/drivers/usbdux.c
[]
> @@ -204,7 +204,8 @@ struct usbdux_private {
>  	struct mutex mut;
>  };
>  
> -static void usbdux_unlink_urbs(struct urb **urbs, int num_urbs)

Why do you believe this to be a long line?
It's only 63 characters.

         1         2         3         4         5         6         7
1234567890123456789012345678901234567890123456789012345678901234567890

static void usbdux_unlink_urbs(struct urb **urbs, int num_urbs)

> +static void usbdux_unlink_urbs(struct urb **urbs,
> +			       int num_urbs)
>  {
>  	int i;
>   

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

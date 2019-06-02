Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EDE32658
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 04:03:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 787B986225;
	Mon,  3 Jun 2019 02:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id huTRZwQzpRpN; Mon,  3 Jun 2019 02:03:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 243D186151;
	Mon,  3 Jun 2019 02:03:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D4C2D1BF5F4
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 02:03:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D24BE85852
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 02:03:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XR7Yw5wwZ9cp for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 02:03:04 +0000 (UTC)
X-Greylist: delayed 02:20:12 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0115.hostedemail.com
 [216.40.44.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0BDE785817
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 02:03:03 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 4ECC018016C9F
 for <devel@driverdev.osuosl.org>; Sun,  2 Jun 2019 20:07:36 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 3F17E688F;
 Sun,  2 Jun 2019 20:07:33 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:599:968:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1567:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3867:3870:3871:3872:3873:4321:5007:10004:10400:10848:11026:11232:11473:11657:11658:11914:12043:12296:12555:12740:12760:12895:13069:13311:13357:13439:14659:14721:21063:21080:21451:21611:21627:30054:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: frog64_79a000550354
X-Filterd-Recvd-Size: 1430
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf12.hostedemail.com (Postfix) with ESMTPA;
 Sun,  2 Jun 2019 20:07:32 +0000 (UTC)
Message-ID: <9ca0c459d047c72fc459313ad570ecc59cf5d300.camel@perches.com>
Subject: Re: [PATCH 1/2] staging: rtl8188eu: remove redundant definition of
 ETH_ALEN
From: Joe Perches <joe@perches.com>
To: Michael Straube <straube.linux@gmail.com>, gregkh@linuxfoundation.org
Date: Sun, 02 Jun 2019 13:07:30 -0700
In-Reply-To: <20190602163528.28495-1-straube.linux@gmail.com>
References: <20190602163528.28495-1-straube.linux@gmail.com>
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
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

On Sun, 2019-06-02 at 18:35 +0200, Michael Straube wrote:
> ETH_ALEN is defined in linux/if_ether.h which is included by
> osdep_service.h, so remove the redundant definition from ieee80211.h.
[]
> diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
[]
> @@ -14,7 +14,6 @@
>  
>  #define MGMT_QUEUE_NUM 5
>  
> -#define ETH_ALEN	6
>  #define ETH_TYPE_LEN		2
>  #define PAYLOAD_TYPE_LEN	1

While you're at it:

neither ETH_TYPE_LEN nor PAYLOAD_TYPE_LEN appear to be used.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

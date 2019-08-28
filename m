Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09DEA08A1
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 19:36:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 667B788A64;
	Wed, 28 Aug 2019 17:36:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AYcJQchbcVGW; Wed, 28 Aug 2019 17:36:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AB96988927;
	Wed, 28 Aug 2019 17:36:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B56351BF300
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 17:36:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AFEFF888C4
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 17:36:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WmP4kEXcKCBd for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 17:36:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0253.hostedemail.com
 [216.40.44.253])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DCEE98851F
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 17:36:53 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 8F770180622AD
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 17:20:29 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id 9762B180A812D;
 Wed, 28 Aug 2019 17:20:26 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:599:960:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1461:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1801:2375:2393:2559:2562:2693:2828:3138:3139:3140:3141:3142:3353:3622:3866:3867:3868:3872:3873:4250:4321:4605:4823:5007:7903:9149:10004:10400:10848:11026:11232:11473:11658:11914:12297:12438:12555:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21162:21451:21627:30054:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:29,
 LUA_SUMMARY:none
X-HE-Tag: road64_7821b4d3ac041
X-Filterd-Recvd-Size: 2726
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf04.hostedemail.com (Postfix) with ESMTPA;
 Wed, 28 Aug 2019 17:20:25 +0000 (UTC)
Message-ID: <6b17910acdb7259b16a65265e8a6a8bbcd6c86cd.camel@perches.com>
Subject: Re: [PATCH v2 2/3] staging: rtl8192u: fix macro alignment in ieee80211
From: Joe Perches <joe@perches.com>
To: Stephen Brennan <stephen@brennan.io>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Wed, 28 Aug 2019 10:20:24 -0700
In-Reply-To: <20190821143540.4501-3-stephen@brennan.io>
References: <20190821143540.4501-1-stephen@brennan.io>
 <20190821143540.4501-3-stephen@brennan.io>
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

On Wed, 2019-08-21 at 07:35 -0700, Stephen Brennan wrote:
> Several macros display unaligned, due to mixes of tabs and spaces. These
> can be fixed by making spacing consistent, do this.
[]
> @@ -452,18 +452,19 @@ do { if (ieee80211_debug_level & (level)) \
>    printk(KERN_DEBUG "ieee80211: " fmt, ## args); } while (0)
>  //wb added to debug out data buf
>  //if you want print DATA buffer related BA, please set ieee80211_debug_level to DATA|BA
> -#define IEEE80211_DEBUG_DATA(level, data, datalen)	\
> -	do { if ((ieee80211_debug_level & (level)) == (level))	\
> -		{	\
> -			int i;					\
> -			u8 *pdata = (u8 *) data;			\
> -			printk(KERN_DEBUG "ieee80211: %s()\n", __func__);	\
> -			for (i = 0; i < (int)(datalen); i++) {		\
> -				printk("%2x ", pdata[i]);		\
> -				if ((i + 1) % 16 == 0) printk("\n");	\
> -			}				\
> -			printk("\n");			\
> -		}					\
> +#define IEEE80211_DEBUG_DATA(level, data, datalen)                             \
> +	do { if ((ieee80211_debug_level & (level)) == (level))                 \
> +		{                                                              \
> +			int i;                                                 \
> +			u8 *pdata = (u8 *) data;                               \
> +			printk(KERN_DEBUG "ieee80211: %s()\n", __func__);      \
> +			for (i = 0; i < (int)(datalen); i++) {                 \
> +				printk("%2x ", pdata[i]);                      \
> +				if ((i + 1) % 16 == 0)                         \
> +					printk("\n");                          \
> +			}                                                      \
> +			printk("\n");                                          \

without pr_cont/KERN_CONT, this will output a terrible mess.

It's probably better to use print_hex_dump_debug


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

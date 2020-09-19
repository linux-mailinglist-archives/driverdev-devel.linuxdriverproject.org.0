Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EF5270FA9
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Sep 2020 18:53:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B12D86C94;
	Sat, 19 Sep 2020 16:53:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 264qxjnRJ5LV; Sat, 19 Sep 2020 16:53:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2154886B4E;
	Sat, 19 Sep 2020 16:53:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D24D51BF45A
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 16:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C832720413
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 16:53:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KtbBkQcf1hhw for <devel@linuxdriverproject.org>;
 Sat, 19 Sep 2020 16:53:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0236.hostedemail.com
 [216.40.44.236])
 by silver.osuosl.org (Postfix) with ESMTPS id D6F9620358
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 16:53:21 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 873831801AB7F
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 16:15:17 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id B7670180A7FF9;
 Sat, 19 Sep 2020 16:15:10 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:968:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3350:3622:3867:3868:3870:4321:5007:8957:10004:10400:11026:11232:11473:11658:11914:12043:12297:12555:12740:12760:12895:13069:13161:13229:13311:13357:13439:14659:21080:21627:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: trip10_4805ed327135
X-Filterd-Recvd-Size: 1523
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf13.hostedemail.com (Postfix) with ESMTPA;
 Sat, 19 Sep 2020 16:15:09 +0000 (UTC)
Message-ID: <6c07f1238d48cef82668defcd9cba0e4ccdf4177.camel@perches.com>
Subject: Re: [PATCH 1/3] staging: rtl8192u: clean up blank line style issues
From: Joe Perches <joe@perches.com>
To: Michael Straube <straube.linux@gmail.com>, gregkh@linuxfoundation.org
Date: Sat, 19 Sep 2020 09:15:08 -0700
In-Reply-To: <20200919150823.16923-1-straube.linux@gmail.com>
References: <20200919150823.16923-1-straube.linux@gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
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

On Sat, 2020-09-19 at 17:08 +0200, Michael Straube wrote:
> Add missing and remove unnecessary blank lines to clear checkpatch
> issues.

unrelated trivia:

> diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
[]
> @@ -26,6 +26,7 @@ Major Change History:
>  static u32 edca_setting_DL[HT_IOT_PEER_MAX] = {
>  	0x5e4322, 0x5e4322, 0x5e4322, 0x604322, 0x00a44f, 0x5ea44f
>  };
> +
>  static u32 edca_setting_UL[HT_IOT_PEER_MAX] = {
>  	0x5e4322, 0x00a44f, 0x5e4322, 0x604322, 0x5ea44f, 0x5ea44f
>  };

These could be static const

Here and in drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
and drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.c


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

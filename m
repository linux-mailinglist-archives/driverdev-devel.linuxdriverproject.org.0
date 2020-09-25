Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB4B27915E
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 21:15:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1902B86DD5;
	Fri, 25 Sep 2020 19:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g8FVfuDSLGqd; Fri, 25 Sep 2020 19:15:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E57181E48;
	Fri, 25 Sep 2020 19:15:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E25A61BF25B
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:15:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D916C2E17D
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:15:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yDYrNQaY4gIs for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 19:15:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0208.hostedemail.com
 [216.40.44.208])
 by silver.osuosl.org (Postfix) with ESMTPS id 8B3E22E17B
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 19:15:52 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 3F0991800F748
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:36:09 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 0386C5010;
 Fri, 25 Sep 2020 18:36:07 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1568:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3867:3872:3873:4321:5007:6120:10004:10400:10848:11026:11232:11657:11658:11914:12043:12048:12297:12438:12679:12740:12760:12895:13069:13255:13311:13357:13439:14181:14659:14721:21080:21451:21627:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: story36_0500f6027169
X-Filterd-Recvd-Size: 1695
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Fri, 25 Sep 2020 18:36:05 +0000 (UTC)
Message-ID: <4d9210df1c70dfa9a2de4372252d90f039cfe480.camel@perches.com>
Subject: Re: [PATCH RFT/RFC v2 11/47] staging: media: zoran: zoran_device.c:
 convert pr_x to pci_x
From: Joe Perches <joe@perches.com>
To: Corentin Labbe <clabbe@baylibre.com>, gregkh@linuxfoundation.org, 
 mchehab@kernel.org, hverkuil@xs4all.nl, laurent.pinchart@ideasonboard.com
Date: Fri, 25 Sep 2020 11:36:03 -0700
In-Reply-To: <1601058657-14042-12-git-send-email-clabbe@baylibre.com>
References: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
 <1601058657-14042-12-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2020-09-25 at 18:30 +0000, Corentin Labbe wrote:
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
[]
> diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
[]
> @@ -198,15 +198,14 @@ void detect_guest_activity(struct zoran *zr)
[]
>  	for (i = 0; i < j; i++)
> -		pr_info("%s: %6d: %d => 0x%02x\n", ZR_DEVNAME(zr),
> -			change[i][0], change[i][1], change[i][2]);


> +		pci_info(zr->pci_dev, "%6d: %d => 0x%02x\n", change[i][0], change[i][1], change[i][2]);

IMO: this change does little for readability or makes it worse.
Can you please keep to 80 columns where it's already 80 columns?


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

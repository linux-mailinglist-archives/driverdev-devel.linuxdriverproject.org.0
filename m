Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3B0267C87
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Sep 2020 23:11:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 46D8786250;
	Sat, 12 Sep 2020 21:11:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2pa_LCzJRPbm; Sat, 12 Sep 2020 21:11:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D466861C9;
	Sat, 12 Sep 2020 21:11:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BE3E81BF215
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 21:10:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BAEA186C89
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 21:10:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6dAUaO4NpoNM for <devel@linuxdriverproject.org>;
 Sat, 12 Sep 2020 21:10:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0024.hostedemail.com
 [216.40.44.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1F7EC86C83
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 21:10:56 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave08.hostedemail.com (Postfix) with ESMTP id ECAD618049B7E
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 18:43:53 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 5B52F1803F9A8;
 Sat, 12 Sep 2020 18:43:51 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:960:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1568:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:4321:5007:10004:10400:10848:11026:11232:11657:11658:11914:12043:12114:12297:12438:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21627:21990:30012:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: shock79_1b09319270f9
X-Filterd-Recvd-Size: 1573
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf11.hostedemail.com (Postfix) with ESMTPA;
 Sat, 12 Sep 2020 18:43:50 +0000 (UTC)
Message-ID: <38299e7c135de26dc7cf3fbe25d6a74e4632bbd9.camel@perches.com>
Subject: Re: [PATCH 1/5] staging: rtl8723bs: refactor cckrates{only}_included
From: Joe Perches <joe@perches.com>
To: Michael Straube <straube.linux@gmail.com>, gregkh@linuxfoundation.org
Date: Sat, 12 Sep 2020 11:43:49 -0700
In-Reply-To: <f5fdb27843143dfefb1a1a416dab63931fef6d41.camel@perches.com>
References: <20200912084520.8383-1-straube.linux@gmail.com>
 <f5fdb27843143dfefb1a1a416dab63931fef6d41.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2020-09-12 at 11:22 -0700, Joe Perches wrote:
> On Sat, 2020-09-12 at 10:45 +0200, Michael Straube wrote:
> > Refactor cckrates_included() and cckratesonly_included() to simplify
> > the code and improve readability.
[]
> diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
[]
> bool cckratesonly_included(unsigned char *rate, int ratelen)
> {
[]
> 	if (i <= 0)
	if (ratelen <= 0)  of course...

> 		return false;
> 
> 	for (i = 0; i < ratelen; i++) {
> 		if (!is_cckrate(rate[i])
> 			return false;
> 	}
> 
> 	return true;
> }
> 
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DB61DFEEF
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 May 2020 14:35:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E093E85CFF;
	Sun, 24 May 2020 12:35:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qi54Bhse4ru7; Sun, 24 May 2020 12:35:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E4468855F6;
	Sun, 24 May 2020 12:35:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 739281BF313
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 12:35:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6FBB587F9C
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 12:35:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RUU8O8F969eR for <devel@linuxdriverproject.org>;
 Sun, 24 May 2020 12:35:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0136.hostedemail.com
 [216.40.44.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D28C87F50
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 12:35:40 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id 97A00812419C
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 11:18:00 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 2BCA318006CF4;
 Sun, 24 May 2020 11:17:58 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1567:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3868:3870:3873:3874:4321:5007:6119:7903:8603:10004:10400:10848:11026:11232:11658:11914:12043:12297:12438:12740:12760:12895:13069:13311:13357:13439:13869:14659:21080:21627:30005:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: eyes43_3a0b98a26d37
X-Filterd-Recvd-Size: 1344
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf20.hostedemail.com (Postfix) with ESMTPA;
 Sun, 24 May 2020 11:17:56 +0000 (UTC)
Message-ID: <9ac5f51837a2e4e86fc4009ebc4d56ecfe733598.camel@perches.com>
Subject: Re: [PATCH v2 2/2] staging: rtl8188eu: make some arrays static const
From: Joe Perches <joe@perches.com>
To: Michael Straube <straube.linux@gmail.com>, gregkh@linuxfoundation.org
Date: Sun, 24 May 2020 04:17:55 -0700
In-Reply-To: <20200524101514.20557-2-straube.linux@gmail.com>
References: <20200524101514.20557-1-straube.linux@gmail.com>
 <20200524101514.20557-2-straube.linux@gmail.com>
User-Agent: Evolution 3.36.2-0ubuntu1 
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

On Sun, 2020-05-24 at 12:15 +0200, Michael Straube wrote:
> Make some arrays in phy_iq_calibrate() static const and adjust
> the functions that take these arrays as parameters accordingly.
> Reduces object file size by 84 bytes (GCC 9.3.1 x86_64).

You could also do drivers/net/wireless/realtek/rtlwifi/rtl8192de/phy.c
and reduce data by a fair amount there too.

Just change the prototype for _rtl92d_phy_calc_curvindex there.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE99201F2
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 11:02:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F3BD8734A;
	Thu, 16 May 2019 09:02:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SZz5RbGq559q; Thu, 16 May 2019 09:02:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF5FF87288;
	Thu, 16 May 2019 09:02:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 83D631BF373
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 09:02:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7D075880C0
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 09:02:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7SUCBaW0HzBH for <devel@linuxdriverproject.org>;
 Thu, 16 May 2019 09:02:18 +0000 (UTC)
X-Greylist: delayed 15:15:44 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0031.hostedemail.com
 [216.40.44.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4DE5488081
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 09:02:18 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave04.hostedemail.com (Postfix) with ESMTP id F3A241800FE9D
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 17:46:31 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 018FE181D3368;
 Wed, 15 May 2019 17:46:29 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::,
 RULES_HIT:41:355:379:599:988:989:1042:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1566:1593:1594:1711:1714:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3867:4250:4321:5007:6691:10004:10400:10848:11232:11658:11914:12555:12663:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21627:30054:30090:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:27,
 LUA_SUMMARY:none
X-HE-Tag: glass02_3861a3593ad33
X-Filterd-Recvd-Size: 1537
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Wed, 15 May 2019 17:46:27 +0000 (UTC)
Message-ID: <611968bf390bd6ab669ba7311eb06a1977f74ab3.camel@perches.com>
Subject: Re: [PATCH] staging: Add rtl8821ce PCIe WiFi driver
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Kai-Heng Feng
 <kai.heng.feng@canonical.com>
Date: Wed, 15 May 2019 10:46:26 -0700
In-Reply-To: <20190515163945.GA5719@kroah.com>
References: <20190515112401.15373-1-kai.heng.feng@canonical.com>
 <20190515114022.GA18824@kroah.com>
 <6D5557B8-8140-48A8-BED7-9587936902D8@canonical.com>
 <20190515123319.GA435@kroah.com>
 <63833AA2-AC8B-4EEA-AF36-EF2A9BFD4F9F@canonical.com>
 <20190515163945.GA5719@kroah.com>
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
Cc: devel@driverdev.osuosl.org,
 Realtek linux nic maintainers <nic_swsd@realtek.com>,
 Yan-Hsuan Chuang <yhchuang@realtek.com>, linux-kernel@vger.kernel.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2019-05-15 at 18:39 +0200, Greg KH wrote:
> On Wed, May 15, 2019 at 09:06:44PM +0800, Kai-Heng Feng wrote:
> > 296 files changed, 206166 insertions(+)
> I'm not going to take another 200k lines for a simple wifi driver.

Good.

Realtek _really_ needs to improve the driver software.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

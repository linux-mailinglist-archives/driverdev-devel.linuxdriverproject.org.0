Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E1F169DB5
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 06:27:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B2CF886483;
	Mon, 24 Feb 2020 05:27:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6gmxWyNsWVNy; Mon, 24 Feb 2020 05:27:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A0DB686230;
	Mon, 24 Feb 2020 05:27:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E6AF1BF41C
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 05:27:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2B99785CE3
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 05:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pFDaUU5LVvHo for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 05:27:10 +0000 (UTC)
X-Greylist: delayed 05:16:02 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0047.hostedemail.com
 [216.40.44.47])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5DF3685CA8
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 05:27:10 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id 24DED1801E396
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 05:27:09 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id BF725100E7B42;
 Mon, 24 Feb 2020 05:27:06 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1559:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3590:3622:3865:3867:4321:5007:8957:10004:10400:10848:11658:11914:12296:12297:12438:12740:12760:12895:13069:13311:13357:13439:14659:21080:21611:21627:30029:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:24, LUA_SUMMARY:none
X-HE-Tag: cave85_3be75cfac61e
X-Filterd-Recvd-Size: 1078
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Mon, 24 Feb 2020 05:27:05 +0000 (UTC)
Message-ID: <5fb70429b277a714be52f2ca3d15fc4e42b870d9.camel@perches.com>
Subject: Re: [PATCH] staging: rtl8723bs: remove temporary variable CrystalCap
From: Joe Perches <joe@perches.com>
To: Colin King <colin.king@canonical.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Date: Sun, 23 Feb 2020 21:25:37 -0800
In-Reply-To: <20200223151438.415542-1-colin.king@canonical.com>
References: <20200223151438.415542-1-colin.king@canonical.com>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-02-23 at 15:14 +0000, Colin King wrote:
> odm_GetDefaultCrytaltalCap

Might change the likely function name typo too

from
	odm_GetDefaultCrytaltalCap
to
	odm_GetDefaultCrystalCap


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

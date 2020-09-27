Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E1D280666
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Oct 2020 20:19:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52BFE8738A;
	Thu,  1 Oct 2020 18:19:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tLTPqDSLkDN8; Thu,  1 Oct 2020 18:19:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6C13B87380;
	Thu,  1 Oct 2020 18:19:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7516C1BF2C3
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 18:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6D32B86AF6
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 18:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FwN8Vyqtc-06 for <devel@linuxdriverproject.org>;
 Thu,  1 Oct 2020 18:19:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0158.hostedemail.com
 [216.40.44.158])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5437182F92
 for <devel@driverdev.osuosl.org>; Thu,  1 Oct 2020 18:19:17 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 67B671802ACD1
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 16:45:25 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 7ECF818225E17;
 Sun, 27 Sep 2020 16:45:22 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:355:379:599:960:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3351:3622:3865:3867:3868:3870:3873:3874:4321:5007:6691:7264:7576:7875:9545:10004:10400:10848:11232:11658:11914:12043:12295:12297:12683:12740:12760:12895:13069:13071:13095:13161:13229:13311:13357:13439:14110:14180:14659:14721:14777:21060:21080:21433:21451:21627:21819:21939:30022:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: gate88_5f0387d2717a
X-Filterd-Recvd-Size: 1695
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Sun, 27 Sep 2020 16:45:20 +0000 (UTC)
Message-ID: <4bff3adc94d909be7132151b1af211ed862b4126.camel@perches.com>
Subject: Re: [PATCH v2] Staging: nvec: nvec: fix double next comment
From: Joe Perches <joe@perches.com>
To: Ryan Kosta <ryanpkosta@gmail.com>, gregkh@linuxfoundation.org
Date: Sun, 27 Sep 2020 09:45:19 -0700
In-Reply-To: <20200927163504.7546-1-ryanpkosta@gmail.com>
References: <20200927163504.7546-1-ryanpkosta@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, marvin24@gmx.de,
 p.zabel@pengutronix.de, linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-09-27 at 09:35 -0700, Ryan Kosta wrote:
> Changes since v1:
>  * Made commit message more clear
>  * Added description
> Note: previous patch named
>  "[PATCH] fix double next comment in drivers/staging/nvec/nvec.c"
> > 8------------------------------------------------------8<
> Fixes a comment typo.

Hi Ryan.

That comment should be _below_ the --- separator line

There's no need to double the nvec: word in the subject either.
And please use the imperative.

So the email message should look something like:

---------------------------------------------------------

From: <you>

Subject: [PATCH V2] staging: nvec: Remove repeated word typo in a comment

Fix a comment typo.

Signed-off-by: <you>
---

V2: Add a commit description

<patch>


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

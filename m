Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E940831253A
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 16:25:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2C4A186FE4;
	Sun,  7 Feb 2021 15:25:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N6IVjMPKy3nB; Sun,  7 Feb 2021 15:25:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7089986FFA;
	Sun,  7 Feb 2021 15:25:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D7EBB1BF3ED
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 15:25:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D3A398592F
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 15:25:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id un0B77hLIlX3 for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 15:25:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0130.hostedemail.com
 [216.40.44.130])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E5D3A85910
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 15:25:35 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id CD8B81801BD81
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 15:25:34 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 42D0C837F24A;
 Sun,  7 Feb 2021 15:25:32 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:982:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4250:4321:5007:6119:7652:7903:8531:10004:10400:10848:11026:11232:11658:11914:12297:12679:12740:12760:12895:13069:13161:13229:13255:13311:13357:13439:14096:14097:14659:14721:21080:21433:21451:21611:21627:21771:21990:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: road21_3c0a044275f7
X-Filterd-Recvd-Size: 2124
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Sun,  7 Feb 2021 15:25:30 +0000 (UTC)
Message-ID: <6d5c18f41277d4d926dbe411df070393b4418d6f.camel@perches.com>
Subject: Re: [PATCH] staging: octeon: convert all uses of strlcpy to strscpy
 in ethernet-mdio.c
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Phillip Potter
 <phil@philpotter.co.uk>
Date: Sun, 07 Feb 2021 07:25:29 -0800
In-Reply-To: <YB//SDQJEsHwewFb@kroah.com>
References: <20210207144804.88330-1-phil@philpotter.co.uk>
 <YB//SDQJEsHwewFb@kroah.com>
User-Agent: Evolution 3.38.1-1 
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, linux-kernel@vger.kernel.org,
 chris.packham@alliedtelesis.co.nz, alexander.sverdlin@nokia.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2021-02-07 at 15:55 +0100, Greg KH wrote:
> On Sun, Feb 07, 2021 at 02:48:04PM +0000, Phillip Potter wrote:
> > Convert three calls to strlcpy inside the cvm_oct_get_drvinfo function
> > to strscpy calls. Fixes a style warning.
> 
> Is it really safe to do this type of conversion here?

Yes.  No locks are taken by either strlcpy or strscpy, and the conversion
is only done where the return value is unused.

strscpy is:

lib/string.c: * Preferred to strlcpy() since the API doesn't require reading memory
lib/string.c- * from the src string beyond the specified "count" bytes, and since
lib/string.c: * the return value is easier to error-check than strlcpy()'s.
lib/string.c- * In addition, the implementation is robust to the string changing out
lib/string.c: * from underneath it, unlike the current strlcpy() implementation.

> If so, you need
> to provide evidence of it in the changelog, otherwise we could just do a
> search/replace across the whole kernel and be done with it :)

Yes please.

There's a cocci script for that in commit 75b1a8f9d62e
("ALSA: Convert strlcpy to strscpy when return value is unused")


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

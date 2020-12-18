Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4FB2DE0BB
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Dec 2020 11:08:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F675878BF;
	Fri, 18 Dec 2020 10:08:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id flkhb2W_SW89; Fri, 18 Dec 2020 10:08:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3FC52878AA;
	Fri, 18 Dec 2020 10:08:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 915C41BF385
 for <devel@linuxdriverproject.org>; Fri, 18 Dec 2020 10:08:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8C1C9878AA
 for <devel@linuxdriverproject.org>; Fri, 18 Dec 2020 10:08:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1wFdE3zYqvjW for <devel@linuxdriverproject.org>;
 Fri, 18 Dec 2020 10:08:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0184.hostedemail.com
 [216.40.44.184])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BCA0D878A8
 for <devel@driverdev.osuosl.org>; Fri, 18 Dec 2020 10:08:43 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 821BB18026431;
 Fri, 18 Dec 2020 10:08:42 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3870:3872:3874:4321:5007:7576:8879:10004:10400:10848:11026:11232:11658:11914:12296:12297:12740:12760:12895:13069:13311:13357:13439:14096:14097:14659:14721:21080:21627:21773:21796:30030:30036:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: rock88_2b13b822743c
X-Filterd-Recvd-Size: 2292
Received: from XPS-9350.home (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf19.hostedemail.com (Postfix) with ESMTPA;
 Fri, 18 Dec 2020 10:08:40 +0000 (UTC)
Message-ID: <c09401d003360cff41c949ccaea8ae9dc7b2c733.camel@perches.com>
Subject: Re: [PATCH] staging: most: video: fixed a parentheses coding style
 issue.
From: Joe Perches <joe@perches.com>
To: David Laight <David.Laight@ACULAB.COM>, Daniel West
 <daniel.west.dev@gmail.com>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>
Date: Fri, 18 Dec 2020 02:08:39 -0800
In-Reply-To: <d5993e314b134e038a1e4eeba32833ce@AcuMS.aculab.com>
References: <20201217234501.351725-1-daniel.west.dev@gmail.com>
 <04c331f6bfce57c253cb86208ebd28f6363e04c0.camel@perches.com>
 <d5993e314b134e038a1e4eeba32833ce@AcuMS.aculab.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "mchehab+huawei@kernel.org" <mchehab+huawei@kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hverkuil-cisco@xs4all.nl" <hverkuil-cisco@xs4all.nl>,
 "christian.gromm@microchip.com" <christian.gromm@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2020-12-18 at 09:49 +0000, David Laight wrote:
> From: Joe Perches
> > Sent: 17 December 2020 23:58
> > 
> > On Thu, 2020-12-17 at 15:45 -0800, Daniel West wrote:
> > > Fixed a coding style issue.
> > 
> > It may pass checkpatch without warning, but it's uncommon kernel coding style.
> 
> checkpatch probably shouldn't complain about lines that end in (
> if they are function definitions.

Opinons vary.

Very few function declaration/definitions in the linux kernel use the
one line per argument style (gnu indent -bfde)

type function(
	type argument1,
	type argument2,
	...
	)
{
	...
}

It probably shouldn't be encouraged.

> > or (> 80 columns)
> > static struct most_video_dev *get_comp_dev(struct most_interface *iface, int channel_idx)
> Or shorten the variable/type names a bit so it all fits.

Always a possibility but probably not a good one here as even
renaming channel_idx to idx doesn't make it < 80 columns


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

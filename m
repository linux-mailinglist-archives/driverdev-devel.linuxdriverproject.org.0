Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6B717D6F2
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Mar 2020 00:07:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D4B2988524;
	Sun,  8 Mar 2020 23:07:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yIWCpEdNdeOc; Sun,  8 Mar 2020 23:07:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2584788251;
	Sun,  8 Mar 2020 23:07:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 513F01BF287
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 23:07:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4C2E888248
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 23:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xVXLYVniHzbr for <devel@linuxdriverproject.org>;
 Sun,  8 Mar 2020 23:07:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0196.hostedemail.com
 [216.40.44.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 59E1088246
 for <devel@driverdev.osuosl.org>; Sun,  8 Mar 2020 23:07:08 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 1F50C4FFA;
 Sun,  8 Mar 2020 23:07:06 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:3872:3873:3874:4321:5007:6119:7514:7522:7903:10004:10400:10848:11232:11658:11914:12043:12048:12297:12555:12740:12760:12895:13069:13071:13161:13184:13229:13311:13357:13439:14096:14097:14180:14181:14659:14721:21080:21451:21627:30012:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: alarm80_77fb7776f6e04
X-Filterd-Recvd-Size: 2174
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Sun,  8 Mar 2020 23:07:04 +0000 (UTC)
Message-ID: <f1327099b774e141bbeaa8abc47f98b9c6d49264.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operators
From: Joe Perches <joe@perches.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>,
 gregkh@linuxfoundation.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,  outreachy-kernel@googlegroups.com,
 sbrivio@redhat.com, daniel.baluta@gmail.com,  nramas@linux.microsoft.com,
 hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
Date: Sun, 08 Mar 2020 16:05:25 -0700
In-Reply-To: <20200308220004.9960-1-shreeya.patel23498@gmail.com>
References: <20200308220004.9960-1-shreeya.patel23498@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-03-09 at 03:30 +0530, Shreeya Patel wrote:
> Add space around operators for improving the code
> readability.

Hello again Shreeya.

The subject isn't really quite appropriate as you
are not doing this space around operator addition
for the entire subsystem.

IMO, the subject should be:

[PATCH] staging: rtl8188eu: rtw_mlme: Add spaces around operators

because you are only performing this change on this
single file.

If you were to do this for every single file in the
subsystem, you could have many individual patches with
the exact same subject line.

And it would be good to show in the changelog that you
have compiled the file pre and post patch without object
code change.

Also, it's good to show that git diff -w shows no source
file changes.

> Reported by checkpatch.pl
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme.c | 40 +++++++++++------------
>  1 file changed, 20 insertions(+), 20 deletions(-)

When I try this using checkpatch --fix-inplace, I get
21 changes against the latest -next tree.

What tree are you doing this against?


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

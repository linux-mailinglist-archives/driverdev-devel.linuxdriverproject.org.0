Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 101AE18E986
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Mar 2020 16:11:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C9D8D204EE;
	Sun, 22 Mar 2020 15:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 64eCY6ECb87v; Sun, 22 Mar 2020 15:11:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A776920380;
	Sun, 22 Mar 2020 15:11:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FECF1BF2BA
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 15:11:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 279BD85EAC
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 15:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0BO9rwDnvPY7 for <devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 15:11:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0136.hostedemail.com
 [216.40.44.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4976185E93
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 15:11:17 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id EEC47181D2FE4;
 Sun, 22 Mar 2020 15:11:15 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3874:4250:4321:5007:6691:7903:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13161:13229:13255:13311:13357:13439:14096:14097:14181:14659:21080:21627:30012:30054:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: talk44_7f4b0ad682943
X-Filterd-Recvd-Size: 1813
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf11.hostedemail.com (Postfix) with ESMTPA;
 Sun, 22 Mar 2020 15:11:14 +0000 (UTC)
Message-ID: <e40d49aaa96a61019804255c2990d229b2eef7dc.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH 01/11] Staging: rtl8188eu: hal_com:
 Add space around operators
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Shreeya Patel
 <shreeya.patel23498@gmail.com>
Date: Sun, 22 Mar 2020 08:09:26 -0700
In-Reply-To: <20200322112744.GC75383@kroah.com>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>
 <19950c71482b3be0dd9518398af85e964f3b66b1.1584826154.git.shreeya.patel23498@gmail.com>
 <20200322112744.GC75383@kroah.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-03-22 at 12:27 +0100, Greg KH wrote:
> On Sun, Mar 22, 2020 at 03:51:13AM +0530, Shreeya Patel wrote:
> > Add space around operators for improving the code
> > readability.
> > Reported by checkpatch.pl
> > 
> > git diff -w shows no difference.
> > diff of the .o files before and after the changes shows no difference.
> 
> There is no need to have these two lines on every changelog comment in
> this series :(

In my opinion, there's no need for a series here.

Whitespace only changes _should_ be done all at once.

Whitespace changes _could_ have changed string constants.

So noting that the patch in only whitespace and that
there isn't a difference in object files is useful as
it shows any change has been compiled and tested.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

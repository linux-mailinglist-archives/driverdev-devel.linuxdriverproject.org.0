Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3008680298
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 00:12:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C62F2204DD;
	Fri,  2 Aug 2019 22:12:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d5PnkG7WAiSK; Fri,  2 Aug 2019 22:12:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 16AC820494;
	Fri,  2 Aug 2019 22:11:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B276D1BF831
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 22:11:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AD7D487708
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 22:11:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KQlk8icLji4W for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 22:11:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0213.hostedemail.com
 [216.40.44.213])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9A2E28766D
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 22:11:56 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id 66D9F1801D3EC
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 22:05:10 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 669D7100E806B;
 Fri,  2 Aug 2019 22:05:07 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::,
 RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1263:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3867:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4384:4605:4659:5007:7514:9025:9388:9389:10004:10049:10400:10848:10967:11232:11658:11914:12043:12296:12297:12555:12740:12760:12895:12986:13069:13095:13311:13357:13439:14096:14097:14181:14659:14721:14764:21080:21433:21451:21611:21627:21691:30009:30054:30070:30090:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: swing93_49a7a4bebce5e
X-Filterd-Recvd-Size: 2071
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf20.hostedemail.com (Postfix) with ESMTPA;
 Fri,  2 Aug 2019 22:05:06 +0000 (UTC)
Message-ID: <2ecfbf8dda354fe47912446bf5c3fe30ca905aa0.camel@perches.com>
Subject: Re: [PATCH] isdn: hysdn: Fix error spaces around '*'
From: Joe Perches <joe@perches.com>
To: Stephen Hemminger <stephen@networkplumber.org>, Jose Carlos Cazarin
 Filho <joseespiriki@gmail.com>
Date: Fri, 02 Aug 2019 15:05:05 -0700
In-Reply-To: <20190802145506.168b576b@hermes.lan>
References: <20190802195602.28414-1-joseespiriki@gmail.com>
 <20190802145506.168b576b@hermes.lan>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, isdn@linux-pingi.de,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2019-08-02 at 14:55 -0700, Stephen Hemminger wrote:
> On Fri,  2 Aug 2019 19:56:02 +0000
> Jose Carlos Cazarin Filho <joseespiriki@gmail.com> wrote:
> 
> > Fix checkpath error:
> > CHECK: spaces preferred around that '*' (ctx:WxV)
> > +extern hysdn_card *card_root;        /* pointer to first card */
> > 
> > Signed-off-by: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
> 
> Read the TODO, these drivers are scheduled for removal, so changes
> are not helpful at this time.

Maybe better to mark the MAINTAINERS entry obsolete so
checkpatch bleats a message about unnecessary changes.
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 30bf852e6d6b..b5df91032574 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8628,7 +8628,7 @@ M:	Karsten Keil <isdn@linux-pingi.de>
 L:	isdn4linux@listserv.isdn4linux.de (subscribers-only)
 L:	netdev@vger.kernel.org
 W:	http://www.isdn4linux.de
-S:	Odd Fixes
+S:	Obsolete
 F:	Documentation/isdn/
 F:	drivers/isdn/capi/
 F:	drivers/staging/isdn/

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

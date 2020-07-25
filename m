Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBBF22DA9F
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 01:26:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AD0652150A;
	Sat, 25 Jul 2020 23:25:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jmbYHhEnKB1c; Sat, 25 Jul 2020 23:25:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6B7B420796;
	Sat, 25 Jul 2020 23:25:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 956091BF59E
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 23:25:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 859748784E
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 23:25:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bn0sa1ov7VzR for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 23:25:50 +0000 (UTC)
X-Greylist: delayed 04:40:00 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0208.hostedemail.com
 [216.40.44.208])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 98B0487848
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 23:25:50 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave04.hostedemail.com (Postfix) with ESMTP id CEC7218004E90
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 18:39:31 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 610AD182CED2A;
 Sat, 25 Jul 2020 18:39:29 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 20, 1.5, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2328:2393:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3867:3870:3871:3872:3873:3874:4321:5007:7903:9040:10004:10400:10848:11026:11232:11657:11658:11914:12043:12297:12438:12740:12760:12895:13069:13141:13230:13311:13357:13439:14181:14659:14721:21080:21451:21627:21740:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: spoon68_5e0c79a26f52
X-Filterd-Recvd-Size: 2538
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf02.hostedemail.com (Postfix) with ESMTPA;
 Sat, 25 Jul 2020 18:39:27 +0000 (UTC)
Message-ID: <d4427fb12f9d4735ec82355bbe99f7b3098fc1a4.camel@perches.com>
Subject: Re: [PATCH 1/1] STAGING - REALTEK RTL8188EU DRIVERS: Fix Coding
 Style Error
From: Joe Perches <joe@perches.com>
To: Larry Finger <Larry.Finger@lwfinger.net>, Anant Thazhemadam
 <anant.thazhemadam@gmail.com>
Date: Sat, 25 Jul 2020 11:39:26 -0700
In-Reply-To: <aab59eb1-baff-5de1-4e14-88ffc42db1fe@lwfinger.net>
References: <20200725122041.5663-1-anant.thazhemadam@gmail.com>
 <aab59eb1-baff-5de1-4e14-88ffc42db1fe@lwfinger.net>
User-Agent: Evolution 3.36.3-0ubuntu1 
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
Cc: devel@driverdev.osuosl.org, Merwin Trever Ferrao <merwintf@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Anoop S <anoop.skumar1507@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2020-07-25 at 12:47 -0500, Larry Finger wrote:
> On 7/25/20 7:20 AM, Anant Thazhemadam wrote:
> > Running the checkpatch.pl script on the file for which patch was created, the
> > following error was found to exist.
> > ERROR: space required after that ',' (ctx:VxV)
> > 
> > Fixed the above error which was found on line #721 by inserting a blank
> > space at the appropriate position.
[]
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
[]
> > @@ -718,7 +718,7 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
> >   				res = _FAIL;
> >   			}
> >   		} else {
> > -			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n",__func__));
> > +			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n", __func__));
> >   			res = _FAIL;
> >   		}
> >   	}
> 
> In fixing one checkpatch.pl condition, you introduced another - the resulting 
> line is too long. You should fix only one such condition, but you should fix any 
> others that are introduced. You do need to document it.

I think that doesn't matter as it was also too long
before this change.

> Patch subjects for this driver should be written as "staging: rtl8188eu: .....".

How likely is it that this driver would ever be
moved to drivers/net/wireless/realtek/rtlwifi?


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

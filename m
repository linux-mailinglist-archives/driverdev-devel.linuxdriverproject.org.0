Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2541C3043
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 May 2020 01:30:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F3798875CB;
	Sun,  3 May 2020 23:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mJYkyP27IBuC; Sun,  3 May 2020 23:30:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34C53875D6;
	Sun,  3 May 2020 23:30:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CDF0B1BF33B
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 23:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CA45887FC3
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 23:29:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id riDycaTfrSFY for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 23:29:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0065.hostedemail.com
 [216.40.44.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6931487F79
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 23:29:58 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 2690716921;
 Sun,  3 May 2020 23:29:56 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:978:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2828:2901:3138:3139:3140:3141:3142:3352:3622:3865:3866:3871:3872:3873:4321:4605:5007:6238:7903:8603:10004:10293:10400:10848:11232:11658:11914:12043:12296:12297:12438:12555:12698:12737:12740:12760:12895:13069:13146:13230:13311:13357:13439:13870:14181:14659:14721:14777:21080:21433:21451:21627:21789:21819:21939:21990:30022:30034:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: brick38_5682053cb3621
X-Filterd-Recvd-Size: 2157
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf01.hostedemail.com (Postfix) with ESMTPA;
 Sun,  3 May 2020 23:29:54 +0000 (UTC)
Message-ID: <d3e07dfd0efe21192d172b2e4e7d4a489a4fcc62.camel@perches.com>
Subject: Re: [PATCH v2] staging: wilc1000: Increase the size of wid_list array
From: Joe Perches <joe@perches.com>
To: Ajay.Kathat@microchip.com, oscar.carter@gmx.com, 
 adham.abozaeid@microchip.com
Date: Sun, 03 May 2020 16:29:53 -0700
In-Reply-To: <d75b7f64-0ba0-65e9-ea4c-cc87b3a51a10@microchip.com>
References: <20200503075145.4563-1-oscar.carter@gmx.com>
 <d75b7f64-0ba0-65e9-ea4c-cc87b3a51a10@microchip.com>
User-Agent: Evolution 3.36.1-2 
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
Cc: rachel.kim@atmel.com, dean.lee@atmel.com, chris.park@atmel.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-wireless@vger.kernel.org, johnny.kim@atmel.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-05-03 at 14:52 +0000, Ajay.Kathat@microchip.com wrote:
> On 03/05/20 1:21 pm, Oscar Carter wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > Increase by one the size of wid_list array as index variable can reach a
> > value of 5. If this happens, an out-of-bounds access is performed.
> > 
> > Addresses-Coverity-ID: 1451981 ("Out-of-bounds access")
> > Fixes: f5a3cb90b802d ("staging: wilc1000: add passive scan support")
> > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
[]
> > diff --git a/drivers/staging/wilc1000/hif.c b/drivers/staging/wilc1000/hif.c
[]
> > @@ -151,7 +151,7 @@ int wilc_scan(struct wilc_vif *vif, u8 scan_source, u8 scan_type,
> >               void *user_arg, struct cfg80211_scan_request *request)
> >  {
> >         int result = 0;
> > -       struct wid wid_list[5];
> > +       struct wid wid_list[6];

This looks like it should be using a #define instead of
a hard-coded number.

> >         u32 index = 0;
> >         u32 i, scan_timeout;
> >         u8 *buffer;
> > --
> > 2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

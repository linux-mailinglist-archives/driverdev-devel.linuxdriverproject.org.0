Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACC11D6D16
	for <lists+driverdev-devel@lfdr.de>; Sun, 17 May 2020 22:57:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0232286949;
	Sun, 17 May 2020 20:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gp0vvqNuMWqz; Sun, 17 May 2020 20:57:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0643E86930;
	Sun, 17 May 2020 20:57:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 973161BF3F7
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 20:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8DB81884E9
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 20:57:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EOAkdWjDkFtL for <devel@linuxdriverproject.org>;
 Sun, 17 May 2020 20:57:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0196.hostedemail.com
 [216.40.44.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 99A1D884E6
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 20:57:11 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 0D8701801E8CA
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 20:49:55 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 4A25D18225E0F;
 Sun, 17 May 2020 20:49:52 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2198:2199:2200:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:4321:5007:6120:7875:8957:10004:10400:10848:11026:11232:11657:11658:11914:12043:12048:12296:12297:12555:12740:12760:12895:13069:13311:13357:13439:14096:14097:14181:14659:14721:21080:21451:21627:21990:30054:30064:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: bean20_5608517ad065c
X-Filterd-Recvd-Size: 1980
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Sun, 17 May 2020 20:49:51 +0000 (UTC)
Message-ID: <ec2fa70939ab20dc7c454897b0b8ed08570dca80.camel@perches.com>
Subject: Re: [RFC PATCH] staging: rtl8192u: indicate_packets() can be static
From: Joe Perches <joe@perches.com>
To: kbuild test robot <lkp@intel.com>, Pascal Terjan <pterjan@google.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Sun, 17 May 2020 13:49:50 -0700
In-Reply-To: <20200517202216.GA24634@8c544063f25c>
References: <20200517165819.136715-1-pterjan@google.com>
 <20200517202216.GA24634@8c544063f25c>
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
Cc: kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-05-18 at 04:22 +0800, kbuild test robot wrote:
> Signed-off-by: kbuild test robot <lkp@intel.com>
> ---

This doesn't apply on Linus' tree or -next so perhaps the
robot should put what tree and branch patches like these
are meant to be applied on after the --- line

>  ieee80211_rx.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 3309f64be4c94..bceff1ba3d7d4 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -520,7 +520,7 @@ static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *p
>  	return true;
>  }
>  
> -void indicate_packets(struct ieee80211_device *ieee, struct ieee80211_rxb *rxb)
> +static void indicate_packets(struct ieee80211_device *ieee, struct ieee80211_rxb *rxb)
>  {
>  	struct net_device_stats *stats = &ieee->stats;
>  	struct net_device *dev = ieee->dev;

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

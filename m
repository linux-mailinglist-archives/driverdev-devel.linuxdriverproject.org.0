Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBD9FEB00
	for <lists+driverdev-devel@lfdr.de>; Sat, 16 Nov 2019 07:46:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 251D5876C6;
	Sat, 16 Nov 2019 06:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yWq1b4+-kW9K; Sat, 16 Nov 2019 06:45:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D4FD387698;
	Sat, 16 Nov 2019 06:45:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3EA6F1BF852
 for <devel@linuxdriverproject.org>; Sat, 16 Nov 2019 06:45:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 35BF187E27
 for <devel@linuxdriverproject.org>; Sat, 16 Nov 2019 06:45:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rlCJ+vDxiDAA for <devel@linuxdriverproject.org>;
 Sat, 16 Nov 2019 06:45:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0140.hostedemail.com
 [216.40.44.140])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 40C3C87E09
 for <devel@driverdev.osuosl.org>; Sat, 16 Nov 2019 06:45:55 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 9BE6C18022F4F
 for <devel@driverdev.osuosl.org>; Sat, 16 Nov 2019 06:45:52 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 9DED6181D3417;
 Sat, 16 Nov 2019 06:45:49 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3870:3871:3874:4250:4321:4823:5007:6119:7576:7903:8957:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21099:21627:21740:30054:30083:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: wall56_6cf4312ecd835
X-Filterd-Recvd-Size: 2631
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf10.hostedemail.com (Postfix) with ESMTPA;
 Sat, 16 Nov 2019 06:45:48 +0000 (UTC)
Message-ID: <3fd995ebb9ec87b202942fa1f000755c2d3cc4cb.camel@perches.com>
Subject: Re: [PATCH] staging: rtl8192u: fix indentation issue
From: Joe Perches <joe@perches.com>
To: Colin King <colin.king@canonical.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Date: Fri, 15 Nov 2019 22:45:29 -0800
In-Reply-To: <20191114095430.132120-1-colin.king@canonical.com>
References: <20191114095430.132120-1-colin.king@canonical.com>
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

On Thu, 2019-11-14 at 09:54 +0000, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a block of statements that are indented
> too deeply, remove the extraneous tabs.
[]
> diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
[]
> @@ -169,19 +169,20 @@ static void cmdpkt_beacontimerinterrupt_819xusb(struct net_device *dev)
>  {
>  	struct r8192_priv *priv = ieee80211_priv(dev);
>  	u16 tx_rate;
> -		/* 87B have to S/W beacon for DTM encryption_cmn. */
> -		if (priv->ieee80211->current_network.mode == IEEE_A ||
> -		    priv->ieee80211->current_network.mode == IEEE_N_5G ||
> -		    (priv->ieee80211->current_network.mode == IEEE_N_24G &&
> -		     (!priv->ieee80211->pHTInfo->bCurSuppCCK))) {
> -			tx_rate = 60;
> -			DMESG("send beacon frame  tx rate is 6Mbpm\n");
> -		} else {
> -			tx_rate = 10;
> -			DMESG("send beacon frame  tx rate is 1Mbpm\n");
> -		}
>  
> -		rtl819xusb_beacon_tx(dev, tx_rate); /* HW Beacon */
> +	/* 87B have to S/W beacon for DTM encryption_cmn. */
> +	if (priv->ieee80211->current_network.mode == IEEE_A ||
> +	    priv->ieee80211->current_network.mode == IEEE_N_5G ||
> +	    (priv->ieee80211->current_network.mode == IEEE_N_24G &&
> +	     (!priv->ieee80211->pHTInfo->bCurSuppCCK))) {
> +		tx_rate = 60;
> +		DMESG("send beacon frame  tx rate is 6Mbpm\n");
> +	} else {
> +		tx_rate = 10;
> +		DMESG("send beacon frame  tx rate is 1Mbpm\n");
> +	}
> +
> +	rtl819xusb_beacon_tx(dev, tx_rate); /* HW Beacon */

This function might as well be deleted instead as
rtl819xusb_beacon_tx is a noop function in
drivers/staging/rtl8192u/r8192U_core.c

void rtl819xusb_beacon_tx(struct net_device *dev, u16  tx_rate)
{
}


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

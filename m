Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 581A323549F
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Aug 2020 01:28:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01B1F881DE;
	Sat,  1 Aug 2020 23:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZJDCFil9aqlK; Sat,  1 Aug 2020 23:28:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4C63A88072;
	Sat,  1 Aug 2020 23:28:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE1971BF40F
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 23:28:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B8C9284E88
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 23:28:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZfpePMEl9Nwa for <devel@linuxdriverproject.org>;
 Sat,  1 Aug 2020 23:28:27 +0000 (UTC)
X-Greylist: delayed 05:59:24 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0067.hostedemail.com
 [216.40.44.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D68EF84691
 for <devel@driverdev.osuosl.org>; Sat,  1 Aug 2020 23:28:27 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id 065BF1813C177
 for <devel@driverdev.osuosl.org>; Sat,  1 Aug 2020 17:29:05 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 953F718029137;
 Sat,  1 Aug 2020 17:29:02 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:966:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2196:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:4321:4385:5007:10004:10400:10848:11026:11232:11657:11658:11914:12043:12296:12297:12438:12740:12760:12895:13019:13069:13255:13311:13357:13439:14659:14721:21080:21451:21627:21990:30029:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: pets72_5b1482626f8e
X-Filterd-Recvd-Size: 2194
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf13.hostedemail.com (Postfix) with ESMTPA;
 Sat,  1 Aug 2020 17:29:01 +0000 (UTC)
Message-ID: <8a8d14b2dc7a977fbda6f5f96ffd08f167c085d7.camel@perches.com>
Subject: Re: [PATCH v2] staging: r8188eu: replace rtw_netdev_priv define
 with inline function
From: Joe Perches <joe@perches.com>
To: Ivan Safonov <insafonov@gmail.com>, Larry Finger
 <Larry.Finger@lwfinger.net>
Date: Sat, 01 Aug 2020 10:29:00 -0700
In-Reply-To: <20200801165220.29208-1-insafonov@gmail.com>
References: <20200801165220.29208-1-insafonov@gmail.com>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 B K Karthik <bkkarthik@pesu.pes.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2020-08-01 at 19:52 +0300, Ivan Safonov wrote:
> The function guarantees type checking of arguments and return value.
> 
> Result of rtw_netdev_priv macro can be assigned to pointer
> with incompatible type without warning. The function allow compiler
> to perform this check.
[]
> diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h b/drivers/staging/rtl8188eu/include/osdep_service.h
[]
> @@ -71,8 +71,11 @@ struct rtw_netdev_priv_indicator {
>  };
>  struct net_device *rtw_alloc_etherdev_with_old_priv(void *old_priv);
>  
> -#define rtw_netdev_priv(netdev)					\
> -	(((struct rtw_netdev_priv_indicator *)netdev_priv(netdev))->priv)
> +static inline struct adapter *rtw_netdev_priv(struct net_device *dev)
> +{
> +	return (((struct rtw_netdev_priv_indicator *)netdev_priv(dev))->priv);
> +}

To be similar to existing uses, this variable name should be
netdev not dev.  There are also unnecessary parentheses.

>  void rtw_free_netdev(struct net_device *netdev);

Better to use netdev like this one.

---
static inline struct adapter *rtw_netdev_priv(struct net_device *netdev)
{
	return ((struct rtw_netdev_priv_indicator *)netdev_priv(netdev))->priv;
}



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

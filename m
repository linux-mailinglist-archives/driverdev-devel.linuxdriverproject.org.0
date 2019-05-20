Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 026C322F59
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 10:52:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E62E85361;
	Mon, 20 May 2019 08:52:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9mZpHvHqXrkQ; Mon, 20 May 2019 08:52:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C5DE485135;
	Mon, 20 May 2019 08:52:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1761A1BF2EF
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:52:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 14C208733B
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 07kljf2p3dRf for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 08:52:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4D91787327
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 08:52:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0A6F20656;
 Mon, 20 May 2019 08:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558342338;
 bh=2JZbIA2YFI92P+FYkOjchwGvDWNBOClUnyvKflpine0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MrXEA+DjwGPDzsQ1jbpMCSrHtkCfLcLvlgBD5nJoM1mj0qR9y1xwqG4h/MFNKgzh8
 ZgS3ejUsmPR7/uJc8nv14qw0IRV+LoKxE1c0Do8WG8DQJ3uW4SKpC44t3/WD3u0n7p
 3GjG6tv0HMafZJWnbMmvI59g/p7T9T2JHZ/hKQpk=
Date: Mon, 20 May 2019 10:52:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Puranjay Mohan <puranjay12@gmail.com>
Subject: Re: [PATCH] Staging: rtl8723bs: os_dep: Remove unneeded variable for
 return
Message-ID: <20190520085215.GA19183@kroah.com>
References: <20190518065247.15348-1-puranjay12@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190518065247.15348-1-puranjay12@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 18, 2019 at 12:22:47PM +0530, Puranjay Mohan wrote:
> Remove unneeded variable "ret" and directly return 0 in functions.
> Fix following coccicheck warning:
> Unneeded variable: "ret". Return "0".
> 
> Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> index db553f2e4c0b..b105ba698d55 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> @@ -2441,20 +2441,18 @@ void rtw_cfg80211_indicate_sta_disassoc(struct adapter *padapter, unsigned char
>  
>  static int rtw_cfg80211_monitor_if_open(struct net_device *ndev)
>  {
> -	int ret = 0;
>  
>  	DBG_8192C("%s\n", __func__);
>  
> -	return ret;
> +	return 0;
>  }

As this function does nothing, it should just be removed.

>  
>  static int rtw_cfg80211_monitor_if_close(struct net_device *ndev)
>  {
> -	int ret = 0;
>  
>  	DBG_8192C("%s\n", __func__);
>  
> -	return ret;
> +	return 0;
>  }

Same here.

>  
>  static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struct net_device *ndev)
> @@ -2606,11 +2604,10 @@ static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struc
>  
>  static int rtw_cfg80211_monitor_if_set_mac_address(struct net_device *ndev, void *addr)
>  {
> -	int ret = 0;
>  
>  	DBG_8192C("%s\n", __func__);
>  
> -	return ret;
> +	return 0;
>  }

This should also be removed, as it does nothing, and it is faking out
the network core to say it really does support this option, but it does
not, which is not good at all.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

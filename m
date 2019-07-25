Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 373F174E69
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 14:45:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCC678630F;
	Thu, 25 Jul 2019 12:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ecCtTcEI3gTf; Thu, 25 Jul 2019 12:45:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A593862FB;
	Thu, 25 Jul 2019 12:45:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B4361BF3CD
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 12:45:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 386B1880E2
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 12:45:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v9g9-z6o-1xp for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 12:45:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 74C97880E0
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 12:45:31 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3ED9217F4;
 Thu, 25 Jul 2019 12:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564058731;
 bh=AW/J1bPuReTrZwkbmXMaygaa2ZUKlCuofWo3qYK9hik=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IVEzKj5PqjX8zQVV/Z59oc36IyvBDb24WnBDuYsfO8d9lqhRmD3ngB3DpZmiEdGT7
 5ivDRPhyvD53EhGkWD1hUBmXvqR2fkJFe3raSPc1WODzgtCt11/VmehtWjAPZ9MQTL
 Z9WZ9aQrtc0v/V/qZDrbB2ZK2H4pVgVRWoTcuFbk=
Date: Thu, 25 Jul 2019 14:45:28 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH] rtl8192_init_priv_variable: null check is missing for
 kzalloc
Message-ID: <20190725124528.GA21757@kroah.com>
References: <20190720202546.21111-1-navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190720202546.21111-1-navid.emamdoost@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, secalert@redhat.com, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, John Whitmore <johnfwhitmore@gmail.com>,
 emamd001@umn.edu, Nishka Dasgupta <nishkadg.linux@gmail.com>, smccaman@umn.edu,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 20, 2019 at 03:25:44PM -0500, Navid Emamdoost wrote:
> Allocation for priv->pFirmware may fail, so a null check is necessary.
> priv->pFirmware is accessed at line 2743. I added the check and made
> appropriate changes to propagate the errno to the caller.
> 
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index fe1f279ca368..5fb24b13ce5b 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -2096,7 +2096,7 @@ static void rtl8192_SetWirelessMode(struct net_device *dev, u8 wireless_mode)
>  }
>  
>  /* init priv variables here. only non_zero value should be initialized here. */
> -static void rtl8192_init_priv_variable(struct net_device *dev)
> +static int rtl8192_init_priv_variable(struct net_device *dev)
>  {
>  	struct r8192_priv *priv = ieee80211_priv(dev);
>  	u8 i;
> @@ -2223,6 +2223,10 @@ static void rtl8192_init_priv_variable(struct net_device *dev)
>  
>  	priv->AcmControl = 0;
>  	priv->pFirmware = kzalloc(sizeof(rt_firmware), GFP_KERNEL);
> +	if (!priv->pFirmware) {
> +		return -ENOMEM;
> +	}
> +
>  
>  	/* rx related queue */
>  	skb_queue_head_init(&priv->rx_queue);
> @@ -2236,6 +2240,8 @@ static void rtl8192_init_priv_variable(struct net_device *dev)
>  	for (i = 0; i < MAX_QUEUE_SIZE; i++)
>  		skb_queue_head_init(&priv->ieee80211->skb_drv_aggQ[i]);
>  	priv->rf_set_chan = rtl8192_phy_SwChnl;
> +
> +	return 0;
>  }
>  
>  /* init lock here */
> @@ -2605,7 +2611,10 @@ static short rtl8192_init(struct net_device *dev)
>  		memcpy(priv->txqueue_to_outpipemap, queuetopipe, 9);
>  	}
>  #endif
> -	rtl8192_init_priv_variable(dev);
> +	err = rtl8192_init_priv_variable(dev);
> +	if (err) {
> +		return err;
> +	}

Always run checkpatch.pl on your patch before sending it so you do not
get grumpy emails telling you to run checkpatch.pl before sending your
patch :)


thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

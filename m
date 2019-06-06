Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C580374A9
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 14:59:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC7A9863A4;
	Thu,  6 Jun 2019 12:59:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lpG_yjgCZNLH; Thu,  6 Jun 2019 12:59:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 64D76862A9;
	Thu,  6 Jun 2019 12:59:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 67D5F1BF23F
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 12:59:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 64CAA860FC
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 12:59:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R7TbG5ZsqObB for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 12:59:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EE3D8860FB
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 12:59:28 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4FE302070B;
 Thu,  6 Jun 2019 12:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559825968;
 bh=7RZShAsT5Ac6fwFUJ8T+626Y3eZ1PxJCUZdWLG205eg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wRh86ID9iECC18xel4NOQx4MuIWjxcTY7A/Cq7ChoLU+9djPc4mzch9FO8j9RzVoe
 YB2TtTqNJ86cfLEj3lXYWFy4KcmIKHe0HJ/VoyoDmU56sSSfr9QvhfSxY0MlluXH8T
 +rqSl8MdcxtcRlKLZ16dMMjN0BWHvYV+uXUpkF1A=
Date: Thu, 6 Jun 2019 14:59:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: rtl8188eu: core: Replace function
 rtw_free_network_nolock
Message-ID: <20190606125926.GA1140@kroah.com>
References: <20190604081222.12658-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604081222.12658-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, puranjay12@gmail.com, flbue@gmx.de,
 linux-kernel@vger.kernel.org, larry.finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 04, 2019 at 01:42:22PM +0530, Nishka Dasgupta wrote:
> Remove function rtw_free_network_nolock, as all it does is call
> _rtw_free_network_nolock, and rename _rtw_free_network_nolock to
> rtw_free_network_nolock.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> index 0abb2df32645..454c5795903d 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> @@ -159,7 +159,7 @@ static void _rtw_free_network(struct mlme_priv *pmlmepriv, struct wlan_network *
>  	spin_unlock_bh(&free_queue->lock);
>  }
>  
> -void _rtw_free_network_nolock(struct	mlme_priv *pmlmepriv, struct wlan_network *pnetwork)
> +void rtw_free_network_nolock(struct	mlme_priv *pmlmepriv, struct wlan_network *pnetwork)

Why is this function moved from being static to not being static?

that doesn't seem right to me, does it to you?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

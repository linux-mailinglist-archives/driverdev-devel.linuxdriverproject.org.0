Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA3C23518B
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Aug 2020 11:51:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D3331882E3;
	Sat,  1 Aug 2020 09:51:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9X-wV65Kw+Jm; Sat,  1 Aug 2020 09:51:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2868D8800F;
	Sat,  1 Aug 2020 09:51:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5BA091BF834
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 09:51:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 586A387E8E
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 09:51:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sXwlbSscaqRC for <devel@linuxdriverproject.org>;
 Sat,  1 Aug 2020 09:51:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DE28787C0C
 for <devel@driverdev.osuosl.org>; Sat,  1 Aug 2020 09:51:23 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15ABB20725;
 Sat,  1 Aug 2020 09:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596275483;
 bh=v2/+wm7/ZgJPVdDZ5fDV3AVWi0VZF9wUEj4ulC1C+2g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bnyoXCl5yo3Qywrx47QApLP9qsK4JomrJFDjiHlDxLf0G3jbLWDKLA2NHeyaDRBwU
 B9ANzpmijpStrTK3/juzfa4R7PgOaO//4gxJat2Ts5sP/D6G62eyNm72fbC1v8grkB
 YcY4vTtmiV3txsSGstN/BdKzjssF6jPp7m8J/PmE=
Date: Sat, 1 Aug 2020 11:51:08 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ivan Safonov <insafonov@gmail.com>
Subject: Re: [PATCH] staging: r8188eu: replace rtw_netdev_priv define with
 inline function
Message-ID: <20200801095108.GA2840539@kroah.com>
References: <20200801094707.13449-1-insafonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200801094707.13449-1-insafonov@gmail.com>
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
Cc: devel@driverdev.osuosl.org, B K Karthik <bkkarthik@pesu.pes.edu>,
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Aug 01, 2020 at 12:47:07PM +0300, Ivan Safonov wrote:
> The function guarantees type checking of arguments and return value.
> 
> Signed-off-by: Ivan Safonov <insafonov@gmail.com>
> ---
>  drivers/staging/rtl8188eu/include/osdep_service.h | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h b/drivers/staging/rtl8188eu/include/osdep_service.h
> index 31d897f1d21f..e0ccafdea9cd 100644
> --- a/drivers/staging/rtl8188eu/include/osdep_service.h
> +++ b/drivers/staging/rtl8188eu/include/osdep_service.h
> @@ -71,8 +71,10 @@ struct rtw_netdev_priv_indicator {
>  };
>  struct net_device *rtw_alloc_etherdev_with_old_priv(void *old_priv);
>  
> -#define rtw_netdev_priv(netdev)					\
> -	(((struct rtw_netdev_priv_indicator *)netdev_priv(netdev))->priv)
> +static inline struct adapter *rtw_netdev_priv(struct net_device *dev)
> +{
> +	return (((struct rtw_netdev_priv_indicator *)netdev_priv(dev))->priv);
> +}
>  void rtw_free_netdev(struct net_device *netdev);

Is the cast really needed?

And no blank line before the next function prototype?

And is this really needed?  Type checking is already happening as this
is a "simple" macro, right?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

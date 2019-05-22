Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 80869267F5
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 18:19:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 69169861DE;
	Wed, 22 May 2019 16:19:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Og64rZu6s3tz; Wed, 22 May 2019 16:19:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF63D85F15;
	Wed, 22 May 2019 16:19:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF6D61BF3EF
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 16:19:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A928D87DA4
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 16:19:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xLP4GX8-bLrK for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 16:19:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3D7D987B18
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 16:19:09 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E0A820868;
 Wed, 22 May 2019 16:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558541949;
 bh=HAnkNjlnoFEh0285sKUglhbhj52HYSBk+/u87MIxDsk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F5KLIyGJDC0asu5DY0ZApMmK2hdty43crwfdCJYyfQALzm1+LL0urR07Cu7fFha0J
 st1f/sxgmqyj/nw0BZK6ac/Z6tmA6AZmCFzCtxuGPd8GZ/CdgUbatJZiVHTrF0uKxE
 VhoFsMG9y6NPK/7zGYINfTvecWgQpyG8fqYnEeYk=
Date: Wed, 22 May 2019 18:19:06 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Puranjay Mohan <puranjay12@gmail.com>
Subject: Re: [PATCH] Staging: rtl8723bs: os_dep: Remove functions that don't
 perform any task
Message-ID: <20190522161906.GA30643@kroah.com>
References: <20190522160056.19564-1-puranjay12@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522160056.19564-1-puranjay12@gmail.com>
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

On Wed, May 22, 2019 at 09:30:56PM +0530, Puranjay Mohan wrote:
> Remove functions which return 0 without performing any task.
> Fix following warnings issued by coccicheck:
> Unneeded variable: "err". Return "0" on line 4484
> and similar other warnings.
> 
> Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
> ---
>  .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 41 -------------------
>  1 file changed, 41 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index bfbbcf0bded3..3b5f3e9ae5f7 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -4476,43 +4476,6 @@ static int rtw_pm_set(struct net_device *dev,
>  	return ret;
>  }
>  
> -static int rtw_mp_efuse_get(struct net_device *dev,
> -			struct iw_request_info *info,
> -			union iwreq_data *wdata, char *extra)
> -{
> -	int err = 0;
> -	return err;
> -}
> -
> -static int rtw_mp_efuse_set(struct net_device *dev,
> -			struct iw_request_info *info,
> -			union iwreq_data *wdata, char *extra)
> -{
> -	int err = 0;
> -	return err;
> -}
> -
> -static int rtw_tdls(struct net_device *dev,
> -				struct iw_request_info *info,
> -				union iwreq_data *wrqu, char *extra)
> -{
> -	int ret = 0;
> -	return ret;
> -}
> -
> -
> -static int rtw_tdls_get(struct net_device *dev,
> -				struct iw_request_info *info,
> -				union iwreq_data *wrqu, char *extra)
> -{
> -	int ret = 0;
> -	return ret;
> -}
> -
> -
> -
> -
> -
>  static int rtw_test(
>  	struct net_device *dev,
>  	struct iw_request_info *info,
> @@ -4789,15 +4752,11 @@ static iw_handler rtw_private_handler[] = {
>  	NULL,							/* 0x12 */
>  	rtw_p2p_get2,					/* 0x13 */
>  
> -	rtw_tdls,						/* 0x14 */
> -	rtw_tdls_get,					/* 0x15 */
>  
>  	rtw_pm_set,						/* 0x16 */
>  	rtw_wx_priv_null,				/* 0x17 */
>  	rtw_rereg_nd_name,				/* 0x18 */
>  	rtw_wx_priv_null,				/* 0x19 */
> -	rtw_mp_efuse_set,				/* 0x1A */
> -	rtw_mp_efuse_get,				/* 0x1B */
>  	NULL,							/*  0x1C is reserved for hostapd */
>  	rtw_test,						/*  0x1D */
>  };

Are you _SURE_ you can just delete those lines?

{hint I do not think so, prove me wrong...}

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

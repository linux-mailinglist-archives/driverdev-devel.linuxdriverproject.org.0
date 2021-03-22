Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC3D344AA4
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 17:09:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8FFC60794;
	Mon, 22 Mar 2021 16:09:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6WMQK-6jfmH9; Mon, 22 Mar 2021 16:09:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2387B605DC;
	Mon, 22 Mar 2021 16:09:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B4FE1BF319
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 16:09:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 78E074025E
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 16:09:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jDBWPhKaEvo4 for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 16:09:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F20840252
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 16:09:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D05DE6198C;
 Mon, 22 Mar 2021 16:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616429343;
 bh=S8egBBkG/IrGOXtnVBxf9LB7f8Mai2E3Qg6O7ER8j9g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=v+4c5GltO8jYY9el82VePesv7L/rhDopYckXvLs+RnlVc57UN3uSQ7T+ocvINkz0K
 R+QVPzd4eN8Jb8VH1328lkNsQDoTXABiCWIY7IjFsV5Fgj2aCVeGKxmHmypEGKdqtR
 asLIaFSCqFg45SvJnEi6UDf6MOtah3C+nXBfUXDc=
Date: Mon, 22 Mar 2021 17:09:00 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Subject: Re: [PATCH 03/11] staging: rtl8723bs: moved function prototype out
 of core/rtw_ioctl_set.c and core/rtw_mlme.c
Message-ID: <YFjBHNkQFlFzZKpV@kroah.com>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
 <81ccf18df5ca0acab5bb8da2b675a03626ef57ac.1616422773.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <81ccf18df5ca0acab5bb8da2b675a03626ef57ac.1616422773.git.fabioaiuto83@gmail.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 22, 2021 at 03:31:41PM +0100, Fabio Aiuto wrote:
> fix the following checkpatch issues:
> 
> WARNING: externs should be avoided in .c files
> 40: FILE: drivers/staging/rtl8723bs/core/rtw_ioctl_set.c:40:
> +u8 rtw_do_join(struct adapter *padapter);
> 
> WARNING: externs should be avoided in .c files
> 15: FILE: drivers/staging/rtl8723bs/core/rtw_mlme.c:15:
> +extern u8 rtw_do_join(struct adapter *padapter);
> 
> moved function prototype in include/rtw_ioctl_set.h
> 
> Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_ioctl_set.c    | 1 -
>  drivers/staging/rtl8723bs/core/rtw_mlme.c         | 2 --
>  drivers/staging/rtl8723bs/include/rtw_ioctl_set.h | 2 ++
>  3 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
> index cb14855742f7..7d858cae2395 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
> @@ -37,7 +37,6 @@ u8 rtw_validate_ssid(struct ndis_802_11_ssid *ssid)
>  	return ret;
>  }
>  
> -u8 rtw_do_join(struct adapter *padapter);
>  u8 rtw_do_join(struct adapter *padapter)
>  {
>  	struct list_head	*plist, *phead;
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> index 95cfef118a94..1ee86ec2dee7 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> @@ -12,8 +12,6 @@
>  #include <hal_btcoex.h>
>  #include <linux/jiffies.h>
>  
> -extern u8 rtw_do_join(struct adapter *padapter);
> -
>  int	rtw_init_mlme_priv(struct adapter *padapter)
>  {
>  	int	i;
> diff --git a/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h b/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
> index 4b929b84040a..55722c1366aa 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_ioctl_set.h
> @@ -28,6 +28,8 @@ u8 rtw_set_802_11_connect(struct adapter *padapter, u8 *bssid, struct ndis_802_1
>  u8 rtw_validate_bssid(u8 *bssid);
>  u8 rtw_validate_ssid(struct ndis_802_11_ssid *ssid);
>  
> +u8 rtw_do_join(struct adapter *padapter);
> +

This is already in drivers/staging/rtl8188eu/include/hal_intf.h, why
declare it again?

I'm stopping here on reviewing this patchset, please look closer at it
again and fix up and resend a v2.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

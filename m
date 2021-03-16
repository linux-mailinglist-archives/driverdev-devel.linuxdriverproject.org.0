Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CD333D337
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 12:39:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E568660600;
	Tue, 16 Mar 2021 11:39:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ODK0tk6RzKc; Tue, 16 Mar 2021 11:39:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 383EE605BC;
	Tue, 16 Mar 2021 11:39:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9EEBD1BF2FB
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C2524E734
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:39:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hZNLMGqM41Wx for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 11:39:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E389C4C51B
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 11:39:21 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0214265020;
 Tue, 16 Mar 2021 11:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615894761;
 bh=NZpxAyJTgfolHxBaoIjQXcV5Ku2XxqAWb889DbrpH18=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UblHxmrjtorTSrpz3/ycqYMoksG6QyPIZfpOUH7BIQQbYlbfZDaB0PJ1x9rn00qyV
 a1t4hJBQVCiCaeZPd1IQ5BeuDi2mN/upZ33VUfC728DVZdCwByIThsCSoqhdZ70bm6
 CrLaME8r5YPGglgpW7avwCKYZnM+3DPlGjhtZCmI=
Date: Tue, 16 Mar 2021 12:39:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Subject: Re: [PATCH 05/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_PM
Message-ID: <YFCY564YYio8lkUT@kroah.com>
References: <cover.1615801721.git.fabioaiuto83@gmail.com>
 <77ea39e63246fa4756afcf2bdea573f43fefc74c.1615801721.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77ea39e63246fa4756afcf2bdea573f43fefc74c.1615801721.git.fabioaiuto83@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 15, 2021 at 11:15:02AM +0100, Fabio Aiuto wrote:
> remove conditional code blocks checked by unused CONFIG_PM
> 
> cleaning required in TODO file:
> 
> find and remove code blocks guarded by never set CONFIG_FOO defines
> 
> Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> index 2ff71d001c07..5748e1c1a25c 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> @@ -3198,14 +3198,6 @@ static void rtw_cfg80211_preinit_wiphy(struct adapter *padapter, struct wiphy *w
>  	wiphy->flags |= WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL;
>  	wiphy->flags |= WIPHY_FLAG_OFFCHAN_TX | WIPHY_FLAG_HAVE_AP_SME;
>  
> -#if defined(CONFIG_PM)
> -	wiphy->max_sched_scan_reqs = 1;
> -#endif
> -
> -#if defined(CONFIG_PM)
> -	wiphy->wowlan = &wowlan_stub;
> -#endif

How this is "unused"?  This is a real config option, did you just change
the logic here?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

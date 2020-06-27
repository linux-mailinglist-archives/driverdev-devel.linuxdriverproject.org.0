Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA57320BEDD
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 07:21:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5487A884B7;
	Sat, 27 Jun 2020 05:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RTEuRfgpwUYR; Sat, 27 Jun 2020 05:21:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9786B883B3;
	Sat, 27 Jun 2020 05:21:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC6C01BF475
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 05:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A0A36204BC
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 05:21:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zp4+UjD9dTdu for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 05:21:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C6DCD204B6
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 05:21:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC7FB207FC;
 Sat, 27 Jun 2020 05:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593235278;
 bh=QBX0iOoDvH4E7eBeaNtyJFRNnTKPFd82DmfG3r/sihU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q97K3rLmsJ4CwVKEesmRcvRpSFXYqE1OqKOfWMJwmkB/bwwf/QOOTNoTWX7boGgRK
 gzn5buhTErjPIocgK4OAiXdi/+xsVF9ba7bY9IQxGVJKpuKRD5SP+CypB/Ratz8ajM
 XCgkIQ9suB7OCe5SXg0dfL61aqJWXiXajaQhQvjI=
Date: Sat, 27 Jun 2020 07:21:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Brooke Basile <brookebasile@gmail.com>
Subject: Re: [PATCH 4/4] staging: rtl8188eu: Replace function name with
 __func__
Message-ID: <20200627052115.GA248307@kroah.com>
References: <20200626153639.8097-1-brookebasile@gmail.com>
 <20200626153639.8097-2-brookebasile@gmail.com>
 <20200626153639.8097-3-brookebasile@gmail.com>
 <20200626153639.8097-4-brookebasile@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200626153639.8097-4-brookebasile@gmail.com>
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
Cc: colin.king@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 26, 2020 at 11:36:42AM -0400, Brooke Basile wrote:
> Fix the following checkpatch warning:
> 	WARNING: Prefer using '"%s...", __func__' to using 'rtw_get_bcn_info', this function's name, in a string
> 
> Signed-off-by: Brooke Basile <brookebasile@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ieee80211.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
> index bf6b2fe9735f..0c43c0dcf95c 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
> @@ -986,10 +986,10 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
>  		if (bencrypt)
>  			pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_WEP;
>  	}
> -	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
> -		 pnetwork->BcnInfo.encryp_protocol));
> -	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
> -		 pnetwork->BcnInfo.encryp_protocol));
> +	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: pnetwork->encryp_protocol is %x\n",
> +		 __func__, pnetwork->BcnInfo.encryp_protocol));
> +	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("%s: pnetwork->encryp_protocol is %x\n",
> +		 __func__, pnetwork->BcnInfo.encryp_protocol));
>  	rtw_get_cipher_info(pnetwork);
>  
>  	/* get bwmode and ch_offset */

This patch fails to apply to my latest branch, can you rebase it and
resend if it is still needed?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

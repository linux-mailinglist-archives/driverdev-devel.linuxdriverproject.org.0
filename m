Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE69345A53
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 10:05:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0CA183E67;
	Tue, 23 Mar 2021 09:05:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ruByW282NfAW; Tue, 23 Mar 2021 09:05:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A3BA83E02;
	Tue, 23 Mar 2021 09:05:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 144B51BF2AE
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 09:05:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0342283E02
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 09:05:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dicFJb6dBtac for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 09:05:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8777F83342
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 09:05:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6314F619B1;
 Tue, 23 Mar 2021 09:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616490334;
 bh=sOzjyAwHyRoht8QLAT7g78gd11n/MSMJneGdpUF80Ro=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lGcOg+mKoWZbV5c4hIZ0V2UTHcfXnKckhZpFcFXAqI1baT/qpXoTjC3iYJgs8470E
 Wrmm+4njRbXNTYmsN9E8IH9dn7mVIWuU30Ow9BRPlW0kToclm3nYq655OOjd0bl+Zi
 dzWzgwqyUUJwUcpoKcCelN9fO/9c7KZDsBYvFlaU=
Date: Tue, 23 Mar 2021 10:05:31 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: Trivial typo fix
Message-ID: <YFmvWzGZ0hHJbx6d@kroah.com>
References: <20210323010835.4061779-1-unixbhaskar@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210323010835.4061779-1-unixbhaskar@gmail.com>
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
Cc: devel@driverdev.osuosl.org, izabela.bakollari@gmail.com,
 yanaijie@huawei.com, linux-kernel@vger.kernel.org,
 matthew.v.deangelis@gmail.com, amarjargal16@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 23, 2021 at 06:38:35AM +0530, Bhaskar Chowdhury wrote:
> 
> s/netowrk/network/
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> index 2c9425e2a1e9..3888d3984ec0 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> @@ -599,7 +599,7 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
>  		}
> 
>  		if (rtw_roam_flags(adapter)) {
> -			/* TODO: don't  select netowrk in the same ess as oldest if it's new enough*/
> +			/* TODO: don't  select network in the same ess as oldest if it's new enough*/

Any reason you did not remove the two spaces at the same time?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

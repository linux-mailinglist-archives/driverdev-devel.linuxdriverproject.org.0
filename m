Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDD75B724
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:48:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 926AE87A0A;
	Mon,  1 Jul 2019 08:48:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VcKTYpuDVNeb; Mon,  1 Jul 2019 08:48:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3236387889;
	Mon,  1 Jul 2019 08:48:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E4841BF859
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 08:48:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 38ECF85BAE
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 08:48:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1cBy0M-V5hk7 for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 08:48:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4DBA985B94
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 08:48:40 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 831C02089C;
 Mon,  1 Jul 2019 08:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561970920;
 bh=F1WgnDLUK/r8Oj00Y523URg3kDsO2ODJzYHBN8bnDDE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sahkA7IsBV40FWesiBhlbFIlN2jyzCr+qXf4805Attevww01U2LVh7F/2kECBNLuI
 3Q/d37qPemAgzAzVbdeCwSOd3vGeSTSXxrwtMf621cGjHJXe/wear1uQO9ioZsTQmC
 lS1sl+nXNgHXgTzgBbtsKQ679vfRnBGdCuI4zCy4=
Date: Mon, 1 Jul 2019 10:48:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: rtl8192u: Replace function rtl8192_rx_enable()
Message-ID: <20190701084837.GA2285@kroah.com>
References: <20190701061902.2371-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701061902.2371-1-nishkadg.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 01, 2019 at 11:49:02AM +0530, Nishka Dasgupta wrote:
> Remove function rtl8192_rx_enable as all it does is call
> rtl8192_rx_initiate.
> Rename rtl8192_rx_initiate to rtl8192_rx_enable and change its type from
> static to non-static to maintain compatibility with call sites of
> rtl8192_rx_enable.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index e78806fef79f..9125c490bb37 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -713,7 +713,8 @@ static u32 get_rxpacket_shiftbytes_819xusb(struct ieee80211_rx_stats *pstats)
>  		+ pstats->RxBufShift);
>  }
>  
> -static void rtl8192_rx_initiate(struct net_device *dev)
> +/* wait to be removed */

I don't think the comment is needed anymore, as you just removed the
original function that had this :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 799E82E3EE0
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Dec 2020 15:33:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 451FE22B25;
	Mon, 28 Dec 2020 14:33:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LPN2Z+gEOC33; Mon, 28 Dec 2020 14:33:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5256720411;
	Mon, 28 Dec 2020 14:33:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D526F1BF37F
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 14:33:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CA29986644
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 14:33:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jbmsly4dM99v for <devel@linuxdriverproject.org>;
 Mon, 28 Dec 2020 14:33:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 687B7865AB
 for <devel@driverdev.osuosl.org>; Mon, 28 Dec 2020 14:33:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 93BA4225AB;
 Mon, 28 Dec 2020 14:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1609166007;
 bh=jVzPh64KOHpk2wtB0i1401+raWRvFMw+qX6VfNWNKVw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fsrNpcHBGtIt0x6DWFK8BlEvhp9YsDF5iDFpZ5i1B6moNuprAIC7kVq/ZpfewLdrE
 sOi5bEqN/F1siFzTQECaRyUZvdWd/L1ITXxFjRsuxLWhe4A0TialonZ2CmqUdd6KIJ
 gLAkTIUQnY0z1Uua5VRPWYehfhJ4Nfvz2j19Z9v0=
Date: Mon, 28 Dec 2020 15:11:14 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dinghao Liu <dinghao.liu@zju.edu.cn>
Subject: Re: [PATCH] staging: rtl8192u: Add null check in
 rtl8192_usb_initendpoints
Message-ID: <X+nngl0/JxETbSjT@kroah.com>
References: <20201226080258.6576-1-dinghao.liu@zju.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201226080258.6576-1-dinghao.liu@zju.edu.cn>
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
Cc: devel@driverdev.osuosl.org,
 Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>,
 Zhang Qilong <zhangqilong3@huawei.com>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, Colin Ian King <colin.king@canonical.com>,
 Allen Pais <apais@linux.microsoft.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Dec 26, 2020 at 04:02:56PM +0800, Dinghao Liu wrote:
> There is an allocation for priv->rx_urb[16] has no null check,
> which may lead to a null pointer dereference.
> 
> Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index 93676af98629..9fc4adc83d77 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -1608,6 +1608,8 @@ static short rtl8192_usb_initendpoints(struct net_device *dev)
>  		void *oldaddr, *newaddr;
>  
>  		priv->rx_urb[16] = usb_alloc_urb(0, GFP_KERNEL);
> +		if (!priv->rx_urb[16])
> +			return -ENOMEM;
>  		priv->oldaddr = kmalloc(16, GFP_KERNEL);
>  		if (!priv->oldaddr)
>  			return -ENOMEM;

There is a bug here, where the memory is not freed from the alloc urb
call, right?

Anyway, something to fix up in a leter patch, thanks.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C893174D52
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Mar 2020 13:25:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7569585D2B;
	Sun,  1 Mar 2020 12:25:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nnLk5bZ8i6ia; Sun,  1 Mar 2020 12:25:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9D8485487;
	Sun,  1 Mar 2020 12:25:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EFD7F1BF3DD
 for <devel@linuxdriverproject.org>; Sun,  1 Mar 2020 12:25:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E8E5484E3A
 for <devel@linuxdriverproject.org>; Sun,  1 Mar 2020 12:25:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nE--i7M0I4dX for <devel@linuxdriverproject.org>;
 Sun,  1 Mar 2020 12:25:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7A2A984CE6
 for <devel@driverdev.osuosl.org>; Sun,  1 Mar 2020 12:25:17 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CDD0520880;
 Sun,  1 Mar 2020 12:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583065517;
 bh=iwl45dktsriIQbBFVjaFO9PWC/Xfz0mIkUcdKvoKvP4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ud2jSOiCjXYngm+tP22PoFfyggtDCHH/5M/DC8QPtchPnlQhfvBmXWMa9aS2mK01x
 WMyf/NAiAVHt1o/VDwFrk+GgSZw7ZFx3gNEahQUAEZB+CzxO1OY1njUWM+KF0hs5Ek
 S+xql6mkqy0aKMUp5FzqVhcGfie/NO7LAY32b5ww=
Date: Sun, 1 Mar 2020 13:25:14 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Declare a few variables as __read_mostly
Message-ID: <20200301122514.GA1461917@kroah.com>
References: <20200301112620.7892-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301112620.7892-1-oscar.carter@gmx.com>
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 linux-kernel@vger.kernel.org, Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Mar 01, 2020 at 12:26:20PM +0100, Oscar Carter wrote:
> These include module parameters.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/vt6656/main_usb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> index 5e48b3ddb94c..701300202b21 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -49,12 +49,12 @@ MODULE_LICENSE("GPL");
>  MODULE_DESCRIPTION(DEVICE_FULL_DRV_NAM);
> 
>  #define RX_DESC_DEF0 64
> -static int vnt_rx_buffers = RX_DESC_DEF0;
> +static int __read_mostly vnt_rx_buffers = RX_DESC_DEF0;
>  module_param_named(rx_buffers, vnt_rx_buffers, int, 0644);
>  MODULE_PARM_DESC(rx_buffers, "Number of receive usb rx buffers");
> 
>  #define TX_DESC_DEF0 64
> -static int vnt_tx_buffers = TX_DESC_DEF0;
> +static int __read_mostly vnt_tx_buffers = TX_DESC_DEF0;
>  module_param_named(tx_buffers, vnt_tx_buffers, int, 0644);
>  MODULE_PARM_DESC(tx_buffers, "Number of receive usb tx buffers");
> 

Why?  What does this help with?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

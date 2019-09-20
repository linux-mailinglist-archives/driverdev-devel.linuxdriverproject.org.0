Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AC9B8AB6
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Sep 2019 08:06:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B669185FB6;
	Fri, 20 Sep 2019 06:06:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5o5PTFJKjgpa; Fri, 20 Sep 2019 06:06:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 600BB85C86;
	Fri, 20 Sep 2019 06:06:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 163581BF2AA
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 06:06:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 123A485D8E
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 06:06:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id emTJVHTxEk1C for <devel@linuxdriverproject.org>;
 Fri, 20 Sep 2019 06:06:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6689185C86
 for <devel@driverdev.osuosl.org>; Fri, 20 Sep 2019 06:06:06 +0000 (UTC)
Received: from localhost (unknown [145.15.244.23])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B657920640;
 Fri, 20 Sep 2019 06:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568959566;
 bh=0NS6Av10YtD0Vn0fLDttwo6ERRmj/WxyxPOpGzccm0c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cZUnqBsqeAcrrp6oAT+sVt0Vr/Z+1icFMFxfXMY2VMlYMLc3pJ7xe8AiD3TBmFoc2
 pIpDBOMgx6CsrRYb4AYkn6O2mfG+EMOAIyhqT1NsWtpVTGOogSJEmbptNhS9d+k18/
 2V7drzjSyRAUs0+w09CZveLw+HgVXYv3L1cbSNHY=
Date: Fri, 20 Sep 2019 08:05:07 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH] staging: rtl8192u: fix multiple memory leaks on error path
Message-ID: <20190920060507.GD473496@kroah.com>
References: <20190920025137.29407-1-navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920025137.29407-1-navid.emamdoost@gmail.com>
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
Cc: devel@driverdev.osuosl.org, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 emamd001@umn.edu, Nishka Dasgupta <nishkadg.linux@gmail.com>, smccaman@umn.edu,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 19, 2019 at 09:51:33PM -0500, Navid Emamdoost wrote:
> In rtl8192_tx on error handling path allocated urbs and also skb should
> be released.
> 
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index fe1f279ca368..b62b03802b1b 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -1422,7 +1422,7 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
>  		(struct tx_fwinfo_819x_usb *)(skb->data + USB_HWDESC_HEADER_LEN);
>  	struct usb_device *udev = priv->udev;
>  	int pend;
> -	int status;
> +	int status, rt = -1;
>  	struct urb *tx_urb = NULL, *tx_urb_zero = NULL;
>  	unsigned int idx_pipe;
>  
> @@ -1566,8 +1566,10 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
>  		}
>  		if (bSend0Byte) {
>  			tx_urb_zero = usb_alloc_urb(0, GFP_ATOMIC);
> -			if (!tx_urb_zero)
> -				return -ENOMEM;
> +			if (!tx_urb_zero) {
> +				rt = -ENOMEM;
> +				goto error;
> +			}
>  			usb_fill_bulk_urb(tx_urb_zero, udev,
>  					  usb_sndbulkpipe(udev, idx_pipe),
>  					  &zero, 0, tx_zero_isr, dev);
> @@ -1577,7 +1579,7 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
>  					 "Error TX URB for zero byte %d, error %d",
>  					 atomic_read(&priv->tx_pending[tcb_desc->queue_index]),
>  					 status);
> -				return -1;
> +				goto error;
>  			}
>  		}
>  		netif_trans_update(dev);
> @@ -1588,7 +1590,12 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
>  	RT_TRACE(COMP_ERR, "Error TX URB %d, error %d",
>  		 atomic_read(&priv->tx_pending[tcb_desc->queue_index]),
>  		 status);
> -	return -1;
> +
> +error:
> +	dev_kfree_skb_any(skb);
> +	usb_free_urb(tx_urb);
> +	usb_free_urb(tx_urb_zero);
> +	return rt;
>  }
>  
>  static short rtl8192_usb_initendpoints(struct net_device *dev)
> -- 
> 2.17.1
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel


Hi,

This is the friendly semi-automated patch-bot of Greg Kroah-Hartman.
You have sent him a patch that has triggered this response.

Right now, the development tree you have sent a patch for is "closed"
due to the timing of the merge window.  Don't worry, the patch(es) you
have sent are not lost, and will be looked at after the merge window is
over (after the -rc1 kernel is released by Linus).

So thank you for your patience and your patches will be reviewed at this
later time, you do not have to do anything further, this is just a short
note to let you know the patch status and so you don't worry they didn't
make it through.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

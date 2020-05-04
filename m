Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 156A21C3BCD
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 May 2020 15:55:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AB47123115;
	Mon,  4 May 2020 13:55:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZIhlxeN7f6fV; Mon,  4 May 2020 13:55:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 290E020447;
	Mon,  4 May 2020 13:55:53 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CBD451BF41E
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 13:55:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C4A518835D
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 13:55:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dk3BtxUAE4ZH
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 13:55:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4821888356
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 13:55:49 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AA49720721;
 Mon,  4 May 2020 13:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588600549;
 bh=//wk/rJKjZjGzgW6nnnwkVpN5FRy02OsbVLJoPkWcR8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fNTaKHW8Y7LW2KAKHA+IyxKwshq/YhlQGRw+gh+ZPeFcoRhSQHmKHGgX5i4PhGQKQ
 trPjzWe1XOq1vzG1JqLwdbeV2/usAX76n3LkwIT7M949oLLuwKKzUx+4NkXIGB/sEe
 q7Apop79MEirHu1z3zjXsHJl6g8EGcP4NC0MBNjg=
Date: Mon, 4 May 2020 15:55:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH] staging: most: usb: fix exception handling
Message-ID: <20200504135546.GB2311301@kroah.com>
References: <1588599840-13237-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588599840-13237-1-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 04, 2020 at 03:44:00PM +0200, Christian Gromm wrote:
> This patch fixes error handling on function parameters.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> ---
>  drivers/staging/most/usb/usb.c | 33 +++++++++++++++++----------------
>  1 file changed, 17 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
> index e8c5a8c..e5276524 100644
> --- a/drivers/staging/most/usb/usb.c
> +++ b/drivers/staging/most/usb/usb.c
> @@ -229,14 +229,14 @@ static unsigned int get_stream_frame_size(struct most_channel_config *cfg)
>   */
>  static int hdm_poison_channel(struct most_interface *iface, int channel)
>  {
> -	struct most_dev *mdev = to_mdev(iface);
> +	struct most_dev *mdev;
>  	unsigned long flags;
>  	spinlock_t *lock; /* temp. lock */
>  
>  	if (unlikely(!iface)) {
> -		dev_warn(&mdev->usb_device->dev, "Poison: Bad interface.\n");
> -		return -EIO;
> +		return -EFAULT;

-EFAULT is ONLY for when you have an error with copying memory to/from
userspace.

This should just be -EINVAL, right?

And how can iface ever be NULL?

And why unlikely() there, can you measure the difference with/without
it?  If not, please drop as the compiler/CPU can do it faster than you
ever can.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

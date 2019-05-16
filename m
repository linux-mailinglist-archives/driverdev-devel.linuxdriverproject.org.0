Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C96F202B7
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 11:40:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DB9388101;
	Thu, 16 May 2019 09:39:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k0aKX9sEuTda; Thu, 16 May 2019 09:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD4B3880C3;
	Thu, 16 May 2019 09:39:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F3D5C1BF36D
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 09:39:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F086586490
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 09:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fx8zhSzU0ATD for <devel@linuxdriverproject.org>;
 Thu, 16 May 2019 09:39:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6DC3386456
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 09:39:54 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE7A92082E;
 Thu, 16 May 2019 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557999594;
 bh=XseRSXpDbeN8fAIe7eoYSxHDQql0gFlqyNNJpUwaeOU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mNZB0M0EKrZSwi17NFMQMlL6OnOZ5ELBxdqD2H00WEgVTEYdY3NI8/z4ILSyr/GdD
 mOVU3LCrUJdLit9ZSp9MUOmsBYDz8nvACjNZOID/NQiD8EIePzPzLqYQOLCTDHeJg9
 xWB9gt4tjz62y6Vl0g+6vlS8xeX2UcSP0rFj6udI=
Date: Thu, 16 May 2019 11:39:51 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Subject: Re: [PATCH] staging: vt6656: remove unused variable
Message-ID: <20190516093951.GA19798@kroah.com>
References: <20190516093046.1400-1-quentin.deslandes@itdev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516093046.1400-1-quentin.deslandes@itdev.co.uk>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 Forest Bond <forest@alittletooquiet.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 16, 2019 at 09:31:05AM +0000, Quentin Deslandes wrote:
> Fixed 'set but not used' warning message on a status variable. The
> called function returning the status code 'vnt_start_interrupt_urb()'
> clean up after itself and the caller function
> 'vnt_int_start_interrupt()' does not returns any value.
> 
> Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> ---
>  drivers/staging/vt6656/int.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/int.c b/drivers/staging/vt6656/int.c
> index 504424b19fcf..ac30ce72db5a 100644
> --- a/drivers/staging/vt6656/int.c
> +++ b/drivers/staging/vt6656/int.c
> @@ -42,13 +42,12 @@ static const u8 fallback_rate1[5][5] = {
>  void vnt_int_start_interrupt(struct vnt_private *priv)
>  {
>  	unsigned long flags;
> -	int status;
>  
>  	dev_dbg(&priv->usb->dev, "---->Interrupt Polling Thread\n");
>  
>  	spin_lock_irqsave(&priv->lock, flags);
>  
> -	status = vnt_start_interrupt_urb(priv);
> +	vnt_start_interrupt_urb(priv);

Shouldn't you fix this by erroring out if this fails?  Why ignore the
errors?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

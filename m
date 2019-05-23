Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E37732843B
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 18:52:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B848B86CE2;
	Thu, 23 May 2019 16:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6J72wBEhs8m; Thu, 23 May 2019 16:52:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E757786C82;
	Thu, 23 May 2019 16:52:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C6A51BF3A4
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 16:52:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E48387E76
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 16:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7pRdvHKnYAuW for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 16:52:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8287086F92
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 16:52:00 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BF3E62070D;
 Thu, 23 May 2019 16:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558630320;
 bh=TCw7cKoRb0mNvs2XUEnU4+3yGCOFVTVy1RJc0z1Ogw0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yaCvTrdue+ruF5/+/4uQDCzrgFwtbSrks+PtpQpAJ8fQNoyl0AZFXYR41m8P0b6AZ
 RWHVm1Q2EQImnFPXFOU+0KUkHzWCf4dmAQNDWr/n6M1YR0tltL3ICmW0M02M3o0A6A
 GU5rSksqUXUmyhJn9xel9Ex9paNHOFXzYT6bmb2A=
Date: Thu, 23 May 2019 18:51:57 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: most: usb: Remove variable frame_size
Message-ID: <20190523165157.GA19908@kroah.com>
References: <20190523132334.29611-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523132334.29611-1-nishkadg.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, christian.gromm@microchip.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 23, 2019 at 06:53:34PM +0530, Nishka Dasgupta wrote:
> Remove variable frame_size as its multiple usages are all independent of
> each other and so can be returned separately.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/most/usb/usb.c | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
> index 360cb5b7a10b..751e82cf66c5 100644
> --- a/drivers/staging/most/usb/usb.c
> +++ b/drivers/staging/most/usb/usb.c
> @@ -186,32 +186,28 @@ static inline int start_sync_ep(struct usb_device *usb_dev, u16 ep)
>   */
>  static unsigned int get_stream_frame_size(struct most_channel_config *cfg)
>  {
> -	unsigned int frame_size = 0;
>  	unsigned int sub_size = cfg->subbuffer_size;
>  
>  	if (!sub_size) {
>  		pr_warn("Misconfig: Subbuffer size zero.\n");
> -		return frame_size;
> +		return 0;
>  	}
>  	switch (cfg->data_type) {
>  	case MOST_CH_ISOC:
> -		frame_size = AV_PACKETS_PER_XACT * sub_size;
> -		break;
> +		return AV_PACKETS_PER_XACT * sub_size;
>  	case MOST_CH_SYNC:
>  		if (cfg->packets_per_xact == 0) {
>  			pr_warn("Misconfig: Packets per XACT zero\n");
> -			frame_size = 0;
> +			return 0;
>  		} else if (cfg->packets_per_xact == 0xFF) {
> -			frame_size = (USB_MTU / sub_size) * sub_size;
> +			return (USB_MTU / sub_size) * sub_size;
>  		} else {
> -			frame_size = cfg->packets_per_xact * sub_size;
> +			return cfg->packets_per_xact * sub_size;
>  		}
> -		break;
>  	default:
>  		pr_warn("Query frame size of non-streaming channel\n");
> -		break;
> +		return 0;
>  	}
> -	return frame_size;
>  }

Now it just feels like you are doing "busy work" :(

frame_size makes sense here, right?  Why change this code?

Remember, code is written for developers first, the compiler second.
Reading this with frame_size makes it much more obvious what this code
does when you read it again in 5-10 years.  Why change this, you have
not made it faster, or smaller at all.

So no, I would not accept this, sorry.

We have so many _real_ things to do in the drivers/staging/ directory if
you are looking for stuff to clean up.  Don't try to micro-optimize
things that do not matter at the expense of understanding.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

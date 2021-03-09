Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6F2332607
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 14:05:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA9F6448EF;
	Tue,  9 Mar 2021 13:05:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rnPSnHhz7dGL; Tue,  9 Mar 2021 13:05:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82C074014E;
	Tue,  9 Mar 2021 13:05:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 784191BF2F0
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 13:05:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 73F644AA55
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 13:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Lc0k6JoR434 for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 13:05:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9E15247A21
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 13:05:14 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 809C765272;
 Tue,  9 Mar 2021 13:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615295113;
 bh=BJBJpVVoiY6gCZUtVubIMzNfBlkVauLEWMwsKwElL1w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wJBItVNZ/Rf6BYqvp1pv4sAaOBG4icG+Nv+1x6/ql225wtv8ohchgyPJN4ynowY3o
 CbW9B8MKlE/kTa5LY89OlfLifaAqEw7k3iGQzFpUqyBCSO9dID2k2qXYTrsYyDEOG5
 i5qlF1Ivyl+rJIiDa9hCmmiUbcm7+AScmVMmAHU4=
Date: Tue, 9 Mar 2021 14:05:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alexandru Ardelean <aardelean@deviqon.com>
Subject: Re: [PATCH 06/10] staging: greybus: spilib: use 'spi_delay_to_ns'
 for getting xfer delay
Message-ID: <YEdyhjayjbztoWI+@kroah.com>
References: <20210308145502.1075689-1-aardelean@deviqon.com>
 <20210308145502.1075689-7-aardelean@deviqon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210308145502.1075689-7-aardelean@deviqon.com>
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
Cc: devel@driverdev.osuosl.org, ldewangan@nvidia.com, elder@kernel.org,
 vireshk@kernel.org, broonie@kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, greybus-dev@lists.linaro.org,
 thierry.reding@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 linux-tegra@vger.kernel.org, f.fainelli@gmail.com, johan@kernel.org,
 jonathanh@nvidia.com, linux@deviqon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 08, 2021 at 04:54:58PM +0200, Alexandru Ardelean wrote:
> The intent is the removal of the 'delay_usecs' field from the
> spi_transfer struct, as there is a 'delay' field that does the same
> thing.
> 
> The spi_delay_to_ns() can be used to get the transfer delay. It works by
> using the 'delay_usecs' field first (if it is non-zero), and finally
> uses the 'delay' field.
> 
> Since the 'delay_usecs' field is going away, this change makes use of the
> spi_delay_to_ns() function. This also means dividing the return value of
> the function by 1000, to convert it to microseconds.
> To prevent any potential faults when converting to microseconds and since
> the result of spi_delay_to_ns() is int, the delay is being computed in 32
> bits and then clamped between 0 & U16_MAX.
> 
> Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
> ---
>  drivers/staging/greybus/spilib.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/spilib.c b/drivers/staging/greybus/spilib.c
> index 672d540d3365..30655153df6a 100644
> --- a/drivers/staging/greybus/spilib.c
> +++ b/drivers/staging/greybus/spilib.c
> @@ -245,6 +245,7 @@ static struct gb_operation *gb_spi_operation_create(struct gb_spilib *spi,
>  	/* Fill in the transfers array */
>  	xfer = spi->first_xfer;
>  	while (msg->state != GB_SPI_STATE_OP_DONE) {
> +		int xfer_delay;
>  		if (xfer == spi->last_xfer)
>  			xfer_len = spi->last_xfer_size;
>  		else
> @@ -259,7 +260,9 @@ static struct gb_operation *gb_spi_operation_create(struct gb_spilib *spi,
>  
>  		gb_xfer->speed_hz = cpu_to_le32(xfer->speed_hz);
>  		gb_xfer->len = cpu_to_le32(xfer_len);
> -		gb_xfer->delay_usecs = cpu_to_le16(xfer->delay_usecs);
> +		xfer_delay = spi_delay_to_ns(&xfer->delay, xfer) / 1000;
> +		xfer_delay = clamp_t(u16, xfer_delay, 0, U16_MAX);
> +		gb_xfer->delay_usecs = cpu_to_le16(xfer_delay);
>  		gb_xfer->cs_change = xfer->cs_change;
>  		gb_xfer->bits_per_word = xfer->bits_per_word;
>  

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

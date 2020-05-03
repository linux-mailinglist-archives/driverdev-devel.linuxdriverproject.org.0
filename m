Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE181C2BF0
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 13:51:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2995889128;
	Sun,  3 May 2020 11:38:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cQ1XF01-2DGM; Sun,  3 May 2020 11:38:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 637D888A9E;
	Sun,  3 May 2020 11:38:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3BC71BF326
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 11:37:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CFEB82042C
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 11:37:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nUrZfwxzbpAX for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 11:37:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id EE270203E9
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 11:37:57 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD391205ED;
 Sun,  3 May 2020 11:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588505877;
 bh=OGiegH7Y1FcxfJPta06unb8ZfPJOBLzHj+Vjm8Hkpx8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=vp6Y4Ep0lWA1Y4PuaJnYLumR21o8vn0i6qN0yzg0KEGVHySvo6IDkZwOGTDWN+dzb
 +8wwpQfi1mPsQwurWMoEtqL27el0vr9YVFcGPfcXjPg1e6eyurKUaLE/KgQUxw2TaN
 h7r/sjEF0kXYBQd8+gwnwPvNcB4gadGeY37nP3FI=
Date: Sun, 3 May 2020 12:37:53 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH] staging: iio: ad2s1210: Fix SPI reading
Message-ID: <20200503123753.29ea8be0@archlinux>
In-Reply-To: <20200429072129.81504-1-alexandru.ardelean@analog.com>
References: <20200429072129.81504-1-alexandru.ardelean@analog.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Dragos Bogdan <dragos.bogdan@analog.com>,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 29 Apr 2020 10:21:29 +0300
Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:

> From: Dragos Bogdan <dragos.bogdan@analog.com>
> 
> If the serial interface is used, the 8-bit address should be latched using
> the rising edge of the WR/FSYNC signal.
> 
> This basically means that a CS change is required between the first byte
> sent, and the second one.
> This change splits the single-transfer transfer of 2 bytes into 2 transfers
> with a single byte, and CS change in-between.
> 
> Signed-off-by: Dragos Bogdan <dragos.bogdan@analog.com>
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>

Fixes tag would have been nice. I've had a go by picking a patch where I
refactored this code, but I think the issue probably predates that one.
Its in 2011 so I doubt anyone will try going past that with backports ;)

Applied to the fixes-togreg branch of iio.git and marked for stable.

I'm guessing this means you have hardware and hope to get this one out
of staging shortly? *crosses fingers* :)

Jonathan

> ---
>  drivers/staging/iio/resolver/ad2s1210.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
> index 4b25a3a314ed..ed404355ea4c 100644
> --- a/drivers/staging/iio/resolver/ad2s1210.c
> +++ b/drivers/staging/iio/resolver/ad2s1210.c
> @@ -130,17 +130,24 @@ static int ad2s1210_config_write(struct ad2s1210_state *st, u8 data)
>  static int ad2s1210_config_read(struct ad2s1210_state *st,
>  				unsigned char address)
>  {
> -	struct spi_transfer xfer = {
> -		.len = 2,
> -		.rx_buf = st->rx,
> -		.tx_buf = st->tx,
> +	struct spi_transfer xfers[] = {
> +		{
> +			.len = 1,
> +			.rx_buf = &st->rx[0],
> +			.tx_buf = &st->tx[0],
> +			.cs_change = 1,
> +		}, {
> +			.len = 1,
> +			.rx_buf = &st->rx[1],
> +			.tx_buf = &st->tx[1],
> +		},
>  	};
>  	int ret = 0;
>  
>  	ad2s1210_set_mode(MOD_CONFIG, st);
>  	st->tx[0] = address | AD2S1210_MSB_IS_HIGH;
>  	st->tx[1] = AD2S1210_REG_FAULT;
> -	ret = spi_sync_transfer(st->sdev, &xfer, 1);
> +	ret = spi_sync_transfer(st->sdev, xfers, 2);
>  	if (ret < 0)
>  		return ret;
>  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

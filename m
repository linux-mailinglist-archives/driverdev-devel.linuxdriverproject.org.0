Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 851F6342D68
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Mar 2021 15:41:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3546F83B02;
	Sat, 20 Mar 2021 14:41:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0-9f0Q10H--O; Sat, 20 Mar 2021 14:41:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84BBE83AA7;
	Sat, 20 Mar 2021 14:41:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1966C1BF313
 for <devel@linuxdriverproject.org>; Sat, 20 Mar 2021 14:41:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 03D9983AA7
 for <devel@linuxdriverproject.org>; Sat, 20 Mar 2021 14:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XDkQj7N0DyMd for <devel@linuxdriverproject.org>;
 Sat, 20 Mar 2021 14:41:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7C0B183A99
 for <devel@driverdev.osuosl.org>; Sat, 20 Mar 2021 14:41:22 +0000 (UTC)
Received: from jic23-huawei (cpc108967-cmbg20-2-0-cust86.5-4.cable.virginm.net
 [81.101.6.87])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D65D861967;
 Sat, 20 Mar 2021 14:41:17 +0000 (UTC)
Date: Sat, 20 Mar 2021 14:41:15 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Mugilraj Dhavachelvan <dmugil2000@gmail.com>
Subject: Re: [PATCH] staging: iio: ad9832: kernel-doc fixes
Message-ID: <20210320144115.20137afe@jic23-huawei>
In-Reply-To: <20210315133711.26860-1-dmugil2000@gmail.com>
References: <20210315133711.26860-1-dmugil2000@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 15 Mar 2021 19:07:11 +0530
Mugilraj Dhavachelvan <dmugil2000@gmail.com> wrote:

> Fixes a W=1 warning.
> -Added ``:`` to lock parameter in 'ad9832_state' description.
> -It's a reference comment so removed /**
> 
> Signed-off-by: Mugilraj Dhavachelvan <dmugil2000@gmail.com>

Great.  Thanks for tidying this up.

Applied to the togreg branch of iio.git and pushed out for testing
to let the autobuilders poke at it.

thanks

Jonathan

> ---
>  drivers/staging/iio/frequency/ad9832.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
> index 74308a2e72db..e31ebba47a3c 100644
> --- a/drivers/staging/iio/frequency/ad9832.c
> +++ b/drivers/staging/iio/frequency/ad9832.c
> @@ -86,7 +86,7 @@
>   * @freq_msg:		tuning word spi message
>   * @phase_xfer:		tuning word spi transfer
>   * @phase_msg:		tuning word spi message
> - * @lock		protect sensor state
> + * @lock:		protect sensor state
>   * @data:		spi transmit buffer
>   * @phase_data:		tuning word spi transmit buffer
>   * @freq_data:		tuning word spi transmit buffer
> @@ -248,7 +248,7 @@ static ssize_t ad9832_write(struct device *dev, struct device_attribute *attr,
>  	return ret ? ret : len;
>  }
>  
> -/**
> +/*
>   * see dds.h for further information
>   */
>  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

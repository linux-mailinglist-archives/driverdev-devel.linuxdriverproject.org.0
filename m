Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A14D8890B7
	for <lists+driverdev-devel@lfdr.de>; Sun, 11 Aug 2019 10:43:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 12F0D863A6;
	Sun, 11 Aug 2019 08:43:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yMhXmWRwbEmh; Sun, 11 Aug 2019 08:43:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B641D8559F;
	Sun, 11 Aug 2019 08:43:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA0FA1BF577
 for <devel@linuxdriverproject.org>; Sun, 11 Aug 2019 08:43:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E6E2B85497
 for <devel@linuxdriverproject.org>; Sun, 11 Aug 2019 08:43:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pb6zEKFJMmaN for <devel@linuxdriverproject.org>;
 Sun, 11 Aug 2019 08:43:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 401BA8545E
 for <devel@driverdev.osuosl.org>; Sun, 11 Aug 2019 08:43:28 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B3302085B;
 Sun, 11 Aug 2019 08:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565513008;
 bh=Uz7UmkDTB6qXO93AGoCGWU8AydoXx37sRXoooqBiQa0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oeJ2in80mLxzLAcvOQcFuEU5/iKREKQza9/XYf9WyptF/ARMYv4sB7xnNfPgdcGOh
 Ah3QhwohPYQZ62kEGE8dbPAu/lxRP2zArFolU5EPpyyx8I5uMcmcdvkXb8oX0d86ot
 fCRd9Yyvn5MwRoP5sIq01bIflWU0H4E3LtlAQhjg=
Date: Sun, 11 Aug 2019 09:43:22 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rodrigo <rodrigorsdc@gmail.com>
Subject: Re: [PATCH] staging: iio: accel: adis16240: Improve readability on
 write_raw function
Message-ID: <20190811094322.063ad682@archlinux>
In-Reply-To: <20190810150058.3509-1-rodrigorsdc@gmail.com>
References: <20190810150058.3509-1-rodrigorsdc@gmail.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 kernel-usp@googlegroups.com, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 10 Aug 2019 12:00:58 -0300
Rodrigo <rodrigorsdc@gmail.com> wrote:

> From: Rodrigo Carvalho <rodrigorsdc@gmail.com>
> 
> Improve readability by using GENMASK macro, changing switch statement
> by if statement and removing unnecessary local variables.

From your description it sounds like multiple changes in one patch.
Always preferable to have one type of change in a patch and more
small patches.

Based on comments below, I would leave the switch statement alone,
but put in your GENMASK change as that one is good and gets
rid of the odd local variable 'bits' as well :)

Thanks,

Jonathan


> 
> Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>
> ---
>  drivers/staging/iio/accel/adis16240.c | 16 +++++++---------
>  1 file changed, 7 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
> index 62f4b3b1b457..68f165501389 100644
> --- a/drivers/staging/iio/accel/adis16240.c
> +++ b/drivers/staging/iio/accel/adis16240.c
> @@ -309,17 +309,15 @@ static int adis16240_write_raw(struct iio_dev *indio_dev,
>  			       long mask)
>  {
>  	struct adis *st = iio_priv(indio_dev);
> -	int bits = 10;
> -	s16 val16;
> +	int m;
>  	u8 addr;
>  
> -	switch (mask) {
> -	case IIO_CHAN_INFO_CALIBBIAS:
> -		val16 = val & ((1 << bits) - 1);
> -		addr = adis16240_addresses[chan->scan_index][0];
> -		return adis_write_reg_16(st, addr, val16);
> -	}
> -	return -EINVAL;
> +	if (mask != IIO_CHAN_INFO_CALIBBIAS)
> +		return -EINVAL;

Hmm. We generally encourage the use of switch statements in these
cases because they reduce churn as new features are added.

In this particular case, we don't have any control of sampling frequency
in the driver, but the hardware appears to support it (table 23 on the
datasheet).


> +
> +	m = GENMASK(9, 0);
> +	addr = adis16240_addresses[chan->scan_index][0];
> +	return adis_write_reg_16(st, addr, val & m);
Why the local variable m?  Can we not just do

	return adis_write_reg_16(st, addr, val & GENMASK(9, 0));

If anything I think that is a little more readable than your
version.  There is a reasonable argument for just having
addr inline as well. 

	return adis_write_reg_16(st,
			         adis16240_addresses[chan->scan_index][0],
				 val & GENMASK(9, 0));

However, given I'm suggesting you leave it as a switch statement, it
will be too long with addr inline.

>  }
>  
>  static const struct iio_chan_spec adis16240_channels[] = {

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

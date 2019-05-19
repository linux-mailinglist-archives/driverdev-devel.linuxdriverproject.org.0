Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A53226B1
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 13:00:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9FB7B85B80;
	Sun, 19 May 2019 11:00:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dOUIGwppZ9zZ; Sun, 19 May 2019 11:00:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 506FD857C5;
	Sun, 19 May 2019 11:00:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 312791BF2EB
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 11:00:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2C26B228A0
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 11:00:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XNqrb8ajzL0Z for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 11:00:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id BDE0022610
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 11:00:35 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C32E521743;
 Sun, 19 May 2019 11:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558263634;
 bh=N2AfJUm5S/n9kNq0ukcJ2NfhgtOc6Fh2mApK13sY1b0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SfbqQ7URvAiUBaaGq9YorAgNZZLsiTxuY5c9iLHuYslS1D7htpDvUt3W57XB0XUoH
 0zjJ5/Zn7wODiPbFk+6Y6AZPCjsSKyhLMq0tDxtQQqeAEL7ooS1e4Q1o+OeXJ63eH3
 dODoRh9i8LZw9gAe42T6vDok5ihEq3zYXmkwhELo=
Date: Sun, 19 May 2019 12:00:29 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Lucas Oshiro <lucasseikioshiro@gmail.com>
Subject: Re: [PATCH v2] staging: iio: adis16240: add device to module device
 table
Message-ID: <20190519120029.1da8f41c@archlinux>
In-Reply-To: <20190518214434.23660-1-lucasseikioshiro@gmail.com>
References: <20190518214434.23660-1-lucasseikioshiro@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
 Rodrigo Ribeiro <rodrigorsdc@gmail.com>, kernel-usp@googlegroups.com,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 18 May 2019 18:44:34 -0300
Lucas Oshiro <lucasseikioshiro@gmail.com> wrote:

> Add a of_device_id struct and MODULE_DEVICE_TABLE call, in order to add
> device-tree support for this driver.
> 
> Signed-off-by: Lucas Oshiro <lucasseikioshiro@gmail.com>
> Signed-off-by: Rodrigo Ribeiro <rodrigorsdc@gmail.com>
> Co-developed-by: Rodrigo Ribeiro <rodrigorsdc@gmail.com>

Hi Lucas, Rodrigo,

The description isn't 100% accurate but it's close enough.
Ever since devicetree was introduced, there has been a fallback mode for
i2c and spi devices in which, in the absence of either a devicetree match table
or an ACPI one, an attempt is made to match against the older i2c_device_id
table entries.

So it'll 'work' for devicetree bindings without this patch, but by a less
controlled route and one that doesn't allow for the possibility of
multiple manufacturers using the same part number.

Hence these are good changes to make.  Simplifying the description to enabling
devicetree probing is fine though.

Under drivers/spi.c, devices probed via a device tree binding use:
of_register_spi_device (applied to all children of an spi bus, so the slave
devices).  This calls of_modalias_node which performs a copy of the
compatible without the manufacturer ID into the modalias field.
Later, spi_match_device is called, which first attempts
of_driver_match_device which I think does the precise match.

If that fails, it tries ACPI, and failing that it falls back to matching
the modalias against the id_table entries.   Thus it can still
work without these entries but they do make it simpler and more consistent.

Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to play with it.

Thanks,

Jonathan


> ---
>  drivers/staging/iio/accel/adis16240.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
> index b80e0d248b0f..8c6d23604eca 100644
> --- a/drivers/staging/iio/accel/adis16240.c
> +++ b/drivers/staging/iio/accel/adis16240.c
> @@ -435,6 +435,12 @@ static int adis16240_remove(struct spi_device *spi)
>  	return 0;
>  }
>  
> +static const struct of_device_id adis16240_of_match[] = {
> +	{ .compatible = "adi,adis16240" },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, adis16240_of_match);
> +
>  static struct spi_driver adis16240_driver = {
>  	.driver = {
>  		.name = "adis16240",

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B807448DB2
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 21:14:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 33BAA20488;
	Mon, 17 Jun 2019 19:14:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qx4O7FTRsOg2; Mon, 17 Jun 2019 19:14:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B1B3E20473;
	Mon, 17 Jun 2019 19:14:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3BAC1BF29E
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 19:13:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F048020473
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 19:13:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id djFtq8YxVNTq for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 19:13:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B28A520464
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 19:13:57 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2637B20863;
 Mon, 17 Jun 2019 19:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560798837;
 bh=bxdIj4oZhzXoAyPDV43bDSTTIrA2bAYTv/gI2O7GXU0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oKh//xU+4f7KGn6jEAMPhNRHWPWFLkX1le2j4IEJZtEu5H3wEaGvmxT445aLftyjN
 0Q/ZnyR3N/Wu8avi87z2rzfHn1dv1C/cDK1uaotjsOGwWWBbIvCrYrw46N7xAnh5w+
 HdFtKuUeN+UGAs3aKHiO8kcLQonVLAlIa7x0wl3s=
Date: Mon, 17 Jun 2019 20:13:51 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] Staging: iio: adt7316: use correct headers for gpio
Message-ID: <20190617201351.46537983@archlinux>
In-Reply-To: <20190617110951.2085648-1-arnd@arndb.de>
References: <20190617110951.2085648-1-arnd@arndb.de>
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
 Shreeya Patel <shreeya.patel23498@gmail.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-kernel@vger.kernel.org, Stefan Popa <stefan.popa@analog.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Jeremy Fertic <jeremyfertic@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 17 Jun 2019 13:09:20 +0200
Arnd Bergmann <arnd@arndb.de> wrote:

> When building without CONFIG_GPIOLIB, we get a compile-time failure:
> 
> drivers/staging/iio/addac/adt7316.c:947:3: error: implicit declaration of function 'gpiod_set_value' [-Werror,-Wimplicit-function-declaration]
>                 gpiod_set_value(chip->ldac_pin, 0);
>                 ^
> drivers/staging/iio/addac/adt7316.c:947:3: note: did you mean 'gpio_set_value'?
> include/linux/gpio.h:169:20: note: 'gpio_set_value' declared here
> static inline void gpio_set_value(unsigned gpio, int value)
>                    ^
> drivers/staging/iio/addac/adt7316.c:947:3: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
>                 gpiod_set_value(chip->ldac_pin, 0);
>                 ^
> drivers/staging/iio/addac/adt7316.c:1805:13: error: implicit declaration of function 'irqd_get_trigger_type' [-Werror,-Wimplicit-function-declaration]
>         irq_type = irqd_get_trigger_type(irq_get_irq_data(chip->bus.irq));
> 
> Include the correct headers that contain the declarations for these
> functions.
> 
> Fixes: c63460c4298f ("Staging: iio: adt7316: Use device tree data to set ldac_pin")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Sorry, this is me being exceedingly slow on getting the fix upstream.

I've just sent a pull request for the fix I've had queued up for a few weeks.

Jonathan
> ---
>  drivers/staging/iio/addac/adt7316.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
> index 37ce563cb0e1..9cb3d0e42c38 100644
> --- a/drivers/staging/iio/addac/adt7316.c
> +++ b/drivers/staging/iio/addac/adt7316.c
> @@ -6,7 +6,8 @@
>   */
>  
>  #include <linux/interrupt.h>
> -#include <linux/gpio.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/irq.h>
>  #include <linux/workqueue.h>
>  #include <linux/device.h>
>  #include <linux/kernel.h>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

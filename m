Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2521A298FCC
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 15:48:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DBA3486830;
	Mon, 26 Oct 2020 14:48:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kPQmrp3IYQs6; Mon, 26 Oct 2020 14:48:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B65E68681B;
	Mon, 26 Oct 2020 14:48:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B7ABB1BF2CF
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 14:48:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B42D885FA3
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 14:48:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6t8py1aoZ1oH for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 14:48:28 +0000 (UTC)
X-Greylist: delayed 00:07:20 by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3D46F858BA
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 14:48:28 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id p5so13961931ejj.2
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 07:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lDYrLy8MUIe7IoCpuFE7hK+pFTNu/TtbAvwKtQzdYkQ=;
 b=sLh9lD/aEhUvcqIQXEWD7t5aDKLUDdR+uqzwDNqjQgdKANR+b3CYvFxcSZbZoia/vr
 4pV66OyowpCbPkWGTKaHkNzEXXDXDLVs/2Au+libKtUB44Y6qk/gYUIc1eebF4oFDt79
 tTk8TkWc5arOSKs7iOkVrAE4WBBMtrp5xmxj63/dFYZRAqMhUvGZwfvkRD1JUaLztwtP
 fySCKqaIs4Gnn3iOsEGE1OUB2KaEzABTkDBjuG/jvsvUkYTH2qRjZb0Fsk2Hc5H1w8Xh
 zWDPI2Bf93CUBZCgaf7WwQXZOvxC0mzLBEEwrf0fS1WQ4fobts9ef4tCi6yBGIBGpTF9
 InFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lDYrLy8MUIe7IoCpuFE7hK+pFTNu/TtbAvwKtQzdYkQ=;
 b=VKelIa24+8eEEPZISkhgJKiwcc6zpIfZkx2e16q9QQsb0zYTEfGK7VcHjd1msEg0Je
 fB3hgM7vFQLHuSsE/pOXW88Hx9JDGaB2fNpnatj2Y9LP4CFJYk63UvZnNZCHatXGmZE8
 NHHn+4SfA2PyC6G9zFsUfItCEU7gby42Ah7MxTfaAhl1pftRRxCCOMk0sIYtF1xHiMpr
 Eg0om7ySR6oSWXIrrLXOSf4MKlDU++/zLEGVP6E7efDfB/8/1H6q+Xh8sRL2IQO19Sij
 xLRjVJjm6Rimc7dvscmAw6CAEgrVuKlMQZORogJvrGq6t/Qs2gh/IpfJfi9UEhnVxgR1
 ZLcg==
X-Gm-Message-State: AOAM5339ZNNFKv3wen91rbIaffZinVJL/jVbvALzgpU87qDVCTe91MST
 cW5JvWR7eR2mO15rXZc+eVzmgW52w8d4BMOPq7E123NAR8U=
X-Google-Smtp-Source: ABdhPJxQDYouxITNJmwaaThzvVD1XAnzZMqtFtlNEJHpFQRcHDR6KLCgV7rHNgQP+OYdjgQSxIklzpD34tDNLPLfNDQ=
X-Received: by 2002:a17:906:3146:: with SMTP id
 e6mr15297794eje.363.1603723266555; 
 Mon, 26 Oct 2020 07:41:06 -0700 (PDT)
MIME-Version: 1.0
References: <20201022155858.20867-1-nsaenzjulienne@suse.de>
 <20201022155858.20867-4-nsaenzjulienne@suse.de>
In-Reply-To: <20201022155858.20867-4-nsaenzjulienne@suse.de>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Mon, 26 Oct 2020 15:40:55 +0100
Message-ID: <CAMpxmJXw12hKYCuMDjG-Ns6n=mXmr4B2x3HJaAJ19wH_xDUMag@mail.gmail.com>
Subject: Re: [PATCH v2 03/10] gpio: raspberrypi-exp: Release firmware handle
 on unbind
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 linux-devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Input <linux-input@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 22, 2020 at 5:59 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Upon unbinding the device make sure we release RPi's firmware interface.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/gpio/gpio-raspberrypi-exp.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpio/gpio-raspberrypi-exp.c b/drivers/gpio/gpio-raspberrypi-exp.c
> index bb100e0124e6..c008336e1131 100644
> --- a/drivers/gpio/gpio-raspberrypi-exp.c
> +++ b/drivers/gpio/gpio-raspberrypi-exp.c
> @@ -231,8 +231,19 @@ static int rpi_exp_gpio_probe(struct platform_device *pdev)
>         rpi_gpio->gc.get = rpi_exp_gpio_get;
>         rpi_gpio->gc.set = rpi_exp_gpio_set;
>         rpi_gpio->gc.can_sleep = true;
> +       platform_set_drvdata(pdev, rpi_gpio);
>
> -       return devm_gpiochip_add_data(dev, &rpi_gpio->gc, rpi_gpio);
> +       return gpiochip_add_data(&rpi_gpio->gc, rpi_gpio);
> +}
> +
> +static int rpi_exp_gpio_remove(struct platform_device *pdev)
> +{
> +       struct rpi_exp_gpio *rpi_gpio = platform_get_drvdata(pdev);
> +
> +       gpiochip_remove(&rpi_gpio->gc);
> +       rpi_firmware_put(rpi_gpio->fw);
> +
> +       return 0;
>  }
>
>  static const struct of_device_id rpi_exp_gpio_ids[] = {
> @@ -247,6 +258,7 @@ static struct platform_driver rpi_exp_gpio_driver = {
>                 .of_match_table = of_match_ptr(rpi_exp_gpio_ids),
>         },
>         .probe  = rpi_exp_gpio_probe,
> +       .remove = rpi_exp_gpio_remove,
>  };
>  module_platform_driver(rpi_exp_gpio_driver);
>
> --
> 2.28.0
>

Why not introduce devm_rpi_firmware_get()? That would allow you to
keep the driver elegant without re-adding remove().

Bartosz
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

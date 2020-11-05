Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E33B82A7A12
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 10:09:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DCA91853E3;
	Thu,  5 Nov 2020 09:09:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oQBRmQtjjtRL; Thu,  5 Nov 2020 09:09:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6364A84FE6;
	Thu,  5 Nov 2020 09:09:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 90A2D1BF4E2
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 09:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8D024865F6
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 09:09:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uQxiJ0FPdE5Q for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 09:09:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DB30E865EE
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 09:09:08 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id k9so731415edo.5
 for <devel@driverdev.osuosl.org>; Thu, 05 Nov 2020 01:09:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DAVVTcqOtshkqa//jG0tMqJnAZn8lkJ/jC3ZQlpD4iI=;
 b=gnCWxb3A2YT1XunheHSuiLH9SajfLtYxFoSSt/SMRqAjsx1al/ZDjdmGmdcaRCgATD
 VjIP7kiSbjNExGEXiLiKkUKac6IoHWJ/Fimd03ck22Y3TV8a4rMz01X4WGQkmlH9oyFA
 9esubFwVfP/2m1vKPl5C03O/MKjH3usvIu/M/u1jCtkmZsVaRlPUI4GOMG2G25yqE1WE
 FkwCiZzuIp80ijwg2sDMrq/aDxArFsCDn2GSr7ejg4GkjzXoXRmPg7sE+KMD8rfx5UT2
 P0rDV2vx/4uXjrJDE1VHH5s96ArZURV9t0QiVse/pLv22O/+my2jfZQspbaaigUdqAgS
 xSDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DAVVTcqOtshkqa//jG0tMqJnAZn8lkJ/jC3ZQlpD4iI=;
 b=H9RonXvhACG30gJQQewKVSbXkMHsGrQYesSyMjwOE/elBMvLxQ/7+ls3X9kWqeCFXh
 sJXvfcW87HworulPY0v31vNY9RVRvUfe+b2HXf5miw0di/RF5JlxdYXzGzCtFeMh/zD1
 f7bMhuXKp1tCBWAWUjgQHkHvcHbSr/heItQBzYBRNXe++2e4Zbnp0n5cLN15pBW3msXo
 6mdBQlguJXGAJYPv5S0xd2arEAu2xwCz5hMyD/bVg3qwIPlTQuUlY+RIV6XGG8G3AwTO
 7hlMCI0zrXHD40Z7fbNu4m2+YOjYQh5QADoBWwsKt3MqrCR+hH3yvIWVDjeA9HyXgV/B
 jc3Q==
X-Gm-Message-State: AOAM531RC7DO3TuzdmlNSrnq+Z8vH7u3OKBrGF0WdGXih4cZ00HQOOkh
 5Dx3GDu2fmZKUkhW/q4CvjeVQwB77bTA/T77MNqTzQ==
X-Google-Smtp-Source: ABdhPJyqANWyJ3aSTbJtEhMCIaR58Dz9yl2OLSrIAItWEawq6opjRvdm8/eux/hxk+LAgMAS7EPN7dAVW7T2X8+w+iU=
X-Received: by 2002:a05:6402:283:: with SMTP id
 l3mr1593849edv.232.1604567347374; 
 Thu, 05 Nov 2020 01:09:07 -0800 (PST)
MIME-Version: 1.0
References: <20201104103938.1286-1-nsaenzjulienne@suse.de>
 <20201104103938.1286-4-nsaenzjulienne@suse.de>
In-Reply-To: <20201104103938.1286-4-nsaenzjulienne@suse.de>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 5 Nov 2020 10:08:56 +0100
Message-ID: <CAMpxmJWv3nfD2xpS4jEq+vJvr=+cD7BV3AFDnsRjCG5qB60c-A@mail.gmail.com>
Subject: Re: [PATCH v3 03/11] gpio: raspberrypi-exp: Release firmware handle
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
 linux-gpio <linux-gpio@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 4, 2020 at 11:39 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Use devm_rpi_firmware_get() so as to make sure we release RPi's firmware
> interface when unbinding the device.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>
> ---
>
> Changes since v2:
>  - Use devm_rpi_firmware_get(), instead of remove function
>
>  drivers/gpio/gpio-raspberrypi-exp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpio/gpio-raspberrypi-exp.c b/drivers/gpio/gpio-raspberrypi-exp.c
> index bb100e0124e6..64a552ecc2ad 100644
> --- a/drivers/gpio/gpio-raspberrypi-exp.c
> +++ b/drivers/gpio/gpio-raspberrypi-exp.c
> @@ -208,7 +208,7 @@ static int rpi_exp_gpio_probe(struct platform_device *pdev)
>                 return -ENOENT;
>         }
>
> -       fw = rpi_firmware_get(fw_node);
> +       fw = devm_rpi_firmware_get(&pdev->dev, fw_node);
>         of_node_put(fw_node);
>         if (!fw)
>                 return -EPROBE_DEFER;
> --
> 2.29.1
>

Acked-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

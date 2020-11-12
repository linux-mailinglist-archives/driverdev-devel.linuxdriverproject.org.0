Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 349172B0B3F
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 18:26:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9D1268701E;
	Thu, 12 Nov 2020 17:26:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k6xrrElPgX-9; Thu, 12 Nov 2020 17:26:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9F77087777;
	Thu, 12 Nov 2020 17:26:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E68E1BF2EB
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 17:26:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 815D98725D
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 17:26:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GB-nNqIUtVbd for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 17:26:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8F8078721F
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 17:25:58 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id e18so7263131edy.6
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 09:25:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EYH3xwiXEDAnNYFH6sRlnj0nrx9OC5GkHU2BEsYeg8c=;
 b=V1er74VJGkYMqey/iyOXhUJFrbfBMej3NDgDK/+Dsn878FmHqTP2crY3RgRv+amk6x
 qmjtEZmsJbcY0UAfQUB4Uy/Au7ucKUx4UikT7GphdZINd4kjRqdu7vhLTTTpV1YG4zaU
 7eSTqs1Ajd5b1s8r6edLBGVp0ADsMSfZVuRn4RIbtxiHxKc5NzogmuBfiG1TJ59nrTi8
 jDtqKDS+c/qmN9QYU5oKIdKjsCTqT85+uPsYArzF81ZO2o053KEPLRhdaNUI7gbS37YR
 ZYP6gYur4aoMH+k6trf/kSpCgk7T8XZUUHJ5JjANSOs0Y1Wmvue8yKT61v8pLlOtGbuv
 QViA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EYH3xwiXEDAnNYFH6sRlnj0nrx9OC5GkHU2BEsYeg8c=;
 b=jnEcE9IPlToaEXUGGDim+i7UCUK+410ngbx7VqMK7CjMAkErbMYoNh1yzR3irJygv1
 fMAgz6vPziOLHRO9FcgIRWMqUUm+H7hxOtPAcSgDpng87bgyXBwVlCYsm487jRpvPpQz
 hd2vu68KdAKVK0j8HDZUflffY6OzAtoEF3oVe29596+DpBYpJD7zREjFxwbAHsoxQHAs
 AvPXoTC2+Fifsk3J+pqEmpPdJG0PAT/VgJhFWkHKk9SxmpV0jwReUzdTco0LRR0mW5MX
 BoNluWzbY+KGbV7a4vZA1GNBXkS1ayV0WsOzZsdcK13SvpcSzptg19k/qjhpg5p/5d49
 KKxQ==
X-Gm-Message-State: AOAM531Mq+Bj95snW7wMoqhBjie+DWaI3sENtoCxETMc7UffCVKVYpvK
 RYLEFZXiqdSf+wtvNFIjfceoOoCzzk+mzrGzZh2qeA==
X-Google-Smtp-Source: ABdhPJwDBX/NfTxaAUg6N/MVUgyGIi6++bAnqswSeUgMd0WUV9wPeIj1nATdpL6JniiSVSiXHWRN6oFLXiRoHp9hbx0=
X-Received: by 2002:aa7:d54b:: with SMTP id u11mr878250edr.341.1605201957042; 
 Thu, 12 Nov 2020 09:25:57 -0800 (PST)
MIME-Version: 1.0
References: <20201112163630.17177-1-nsaenzjulienne@suse.de>
 <20201112163630.17177-3-nsaenzjulienne@suse.de>
In-Reply-To: <20201112163630.17177-3-nsaenzjulienne@suse.de>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 12 Nov 2020 18:25:46 +0100
Message-ID: <CAMpxmJWZsqfkkTP99a_8mu+O4xHwNWDqHuvgt7Cs88bA-iMvQA@mail.gmail.com>
Subject: Re: [PATCH v4 02/11] firmware: raspberrypi: Introduce
 devm_rpi_firmware_get()
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
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 linux-devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Input <linux-input@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
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

On Thu, Nov 12, 2020 at 5:44 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Itroduce devm_rpi_firmware_get(), it'll simplify the firmware handling
> for most consumers.
>
> Suggested-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>
> Changes since v2:
> - Introduce devm_rpi_firmware_get()
>
>  drivers/firmware/raspberrypi.c             | 31 +++++++++++++++++++++-
>  include/soc/bcm2835/raspberrypi-firmware.h |  8 ++++++
>  2 files changed, 38 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberrypi.c
> index 438e17074a97..4ab2dfdc82ad 100644
> --- a/drivers/firmware/raspberrypi.c
> +++ b/drivers/firmware/raspberrypi.c
> @@ -237,10 +237,17 @@ static void rpi_firmware_delete(struct kref *kref)
>         kfree(fw);
>  }
>
> -void rpi_firmware_put(struct rpi_firmware *fw)
> +static void __rpi_firmware_put(void *data)
>  {

The '__' prefix is very vague and usually used for unlocked variants
of functions. The casting to void * in rpi_firmware_put() is also
unneeded. I would much prefer that the devres release callback be
called devm_rpi_firmware_put() and that it call rpi_firmware_put()
which would then call kref_put().

Bartosz

> +       struct rpi_firmware *fw = data;
> +
>         kref_put(&fw->consumers, rpi_firmware_delete);
>  }
> +
> +void rpi_firmware_put(struct rpi_firmware *fw)
> +{
> +       __rpi_firmware_put(fw);
> +}
>  EXPORT_SYMBOL_GPL(rpi_firmware_put);
>
>  static int rpi_firmware_probe(struct platform_device *pdev)
> @@ -326,6 +333,28 @@ struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node)
>  }
>  EXPORT_SYMBOL_GPL(rpi_firmware_get);
>
> +/**
> + * devm_rpi_firmware_get - Get pointer to rpi_firmware structure.
> + * @firmware_node:    Pointer to the firmware Device Tree node.
> + *
> + * Returns NULL is the firmware device is not ready.
> + */
> +struct rpi_firmware *devm_rpi_firmware_get(struct device *dev,
> +                                          struct device_node *firmware_node)
> +{
> +       struct rpi_firmware *fw;
> +
> +       fw = rpi_firmware_get(firmware_node);
> +       if (!fw)
> +               return NULL;
> +
> +       if (devm_add_action_or_reset(dev, __rpi_firmware_put, fw))
> +               return NULL;
> +
> +       return fw;
> +}
> +EXPORT_SYMBOL_GPL(devm_rpi_firmware_get);
> +
>  static const struct of_device_id rpi_firmware_of_match[] = {
>         { .compatible = "raspberrypi,bcm2835-firmware", },
>         {},
> diff --git a/include/soc/bcm2835/raspberrypi-firmware.h b/include/soc/bcm2835/raspberrypi-firmware.h
> index fdfef7fe40df..73ad784fca96 100644
> --- a/include/soc/bcm2835/raspberrypi-firmware.h
> +++ b/include/soc/bcm2835/raspberrypi-firmware.h
> @@ -142,6 +142,8 @@ int rpi_firmware_property_list(struct rpi_firmware *fw,
>                                void *data, size_t tag_size);
>  void rpi_firmware_put(struct rpi_firmware *fw);
>  struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node);
> +struct rpi_firmware *devm_rpi_firmware_get(struct device *dev,
> +                                          struct device_node *firmware_node);
>  #else
>  static inline int rpi_firmware_property(struct rpi_firmware *fw, u32 tag,
>                                         void *data, size_t len)
> @@ -160,6 +162,12 @@ static inline struct rpi_firmware *rpi_firmware_get(struct device_node *firmware
>  {
>         return NULL;
>  }
> +
> +static inline struct rpi_firmware *devm_rpi_firmware_get(struct device *dev,
> +                                       struct device_node *firmware_node)
> +{
> +       return NULL;
> +}
>  #endif
>
>  #endif /* __SOC_RASPBERRY_FIRMWARE_H__ */
> --
> 2.29.2
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

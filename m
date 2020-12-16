Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2012E2DBEB0
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Dec 2020 11:36:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26CB186913;
	Wed, 16 Dec 2020 10:36:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dBwyjq0D9+pc; Wed, 16 Dec 2020 10:36:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B61A6868F9;
	Wed, 16 Dec 2020 10:35:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06DD51BF2FA
 for <devel@linuxdriverproject.org>; Wed, 16 Dec 2020 10:35:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EF1CB203E7
 for <devel@linuxdriverproject.org>; Wed, 16 Dec 2020 10:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dwk6k+UGnNcu for <devel@linuxdriverproject.org>;
 Wed, 16 Dec 2020 10:35:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by silver.osuosl.org (Postfix) with ESMTPS id 13B6D1FEB7
 for <devel@driverdev.osuosl.org>; Wed, 16 Dec 2020 10:35:56 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id cw27so24259128edb.5
 for <devel@driverdev.osuosl.org>; Wed, 16 Dec 2020 02:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eY8G+T0bh4LN6y+cxgn4OGYQRTzOO5yifrdrjlzP4xo=;
 b=uevDLfBCO9sybtFyuI9g0Jolsd9EIBafOCpuddeg/PnCFSM0EIJre/eAALMhnVHa1v
 83YoKSEg+yR8N+zEKwZfM7aMKPgHaCtkF/tcxOzNRi5oANZuwiXZpP3j13oNGY09WA5v
 yXWleMUI961UX04vP2i+JyTBwDg3gmTwFBaJG21MyjvPIvS0q42WPOr9DxCrikyW+maS
 mLTgJuAGMEVcbKP4H62TiepZhlR8xOao/xrd8/bwY3yyBlt1asvDICr7SDTW2gcOQTnG
 8YPueB0fePMYSHsf+E2QxDnkCb5EsA562nE6n44yZbys+7ZFEl/PaVizHAPgH7MdhjAV
 a70w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eY8G+T0bh4LN6y+cxgn4OGYQRTzOO5yifrdrjlzP4xo=;
 b=OSkQKTtW815fqL2VJQ6T2r13d7f8/2MV2CgTaF8AS32NF5q+O1ugRoa8jkYA07+vLs
 0zBJUcDs9+4LVURIs7/X4tYOOR/puXGRxvxnHjskP5BDiQGj6gjhCi1RogxtpgGvl0Js
 ZtHHoDgJ4jnvDDgE9z2qkv/W5iwAaEaOaXWrrK9cPiciFHnkWu3oIKFkIk+v56Vu1FEw
 3h9/XRJ4z84aFoADTpqRNzwi4Fiw68AMNx3nwD9Widdanfz94WevvwnvKvrek0Ssh4rT
 CaS0x8uOKrnMRsgmzIfJtWSsgyPlZVpiL1vlNKMVL5a5R059jNLU5ThfEgZHHinEu/4D
 XG+w==
X-Gm-Message-State: AOAM530gQX3grUgcFtkbL7Y8qAz5CZul2eVNIUVfoZb0amplyxPLeXZM
 9Eo8D9b1fFV5ZZUlyOklDolGIOOg2AdiM3BE1mxncA==
X-Google-Smtp-Source: ABdhPJyahnUh0rw5wbWB1tMgwq0uvYik/i1xvch+qmo0s2+lLe+wAf2QZmn9/oHa2jA6RYanoM46HmiqgQq+MjTAhu8=
X-Received: by 2002:aa7:cc15:: with SMTP id q21mr29018379edt.213.1608114954502; 
 Wed, 16 Dec 2020 02:35:54 -0800 (PST)
MIME-Version: 1.0
References: <20201211164801.7838-1-nsaenzjulienne@suse.de>
 <20201211164801.7838-3-nsaenzjulienne@suse.de>
In-Reply-To: <20201211164801.7838-3-nsaenzjulienne@suse.de>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 16 Dec 2020 11:35:43 +0100
Message-ID: <CAMpxmJX5t=LWpLkY=uYNK9r4rmStuSfmGc7=zcnu4_oHkQevWQ@mail.gmail.com>
Subject: Re: [PATCH v6 02/11] firmware: raspberrypi: Introduce
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

On Fri, Dec 11, 2020 at 5:48 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> It'll simplify the firmware handling for most consumers.
>
> Suggested-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>
> Changes since v4:
>  - Rearrange function calls for clarity, same functionality
>
> Changes since v2:
> - Create devm_rpi_firmware_get()
>
>  drivers/firmware/raspberrypi.c             | 29 ++++++++++++++++++++++
>  include/soc/bcm2835/raspberrypi-firmware.h |  8 ++++++
>  2 files changed, 37 insertions(+)
>
> diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberrypi.c
> index b65e4c495772..250e01680742 100644
> --- a/drivers/firmware/raspberrypi.c
> +++ b/drivers/firmware/raspberrypi.c
> @@ -243,6 +243,13 @@ void rpi_firmware_put(struct rpi_firmware *fw)
>  }
>  EXPORT_SYMBOL_GPL(rpi_firmware_put);
>
> +static void devm_rpi_firmware_put(void *data)
> +{
> +       struct rpi_firmware *fw = data;
> +
> +       rpi_firmware_put(fw);
> +}
> +
>  static int rpi_firmware_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
> @@ -331,6 +338,28 @@ struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node)
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
> +       if (devm_add_action_or_reset(dev, devm_rpi_firmware_put, fw))
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

Reviewed-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D4430781E
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Jan 2021 15:33:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFE4886D9C;
	Thu, 28 Jan 2021 14:33:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L6wj4FhTEYlZ; Thu, 28 Jan 2021 14:33:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BD7B86D9A;
	Thu, 28 Jan 2021 14:33:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB84B1BF41B
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 14:33:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C811E8672E
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 14:33:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q9opxCIvkAo2 for <devel@linuxdriverproject.org>;
 Thu, 28 Jan 2021 14:33:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 03A7086722
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 14:33:20 +0000 (UTC)
Received: by mail-pj1-f53.google.com with SMTP id l18so4412302pji.3
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 06:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=00AnnnxbvHqhiLog3KtyVq86J2iHZsP1rdfFuFi4dKs=;
 b=t1lZGPaSTxfsfGKmBb1FEFj9WPlagFlHU8kST7jAmClJ/QQnKPa9Lvx6nTNGW4yvlx
 q1Fh2NfhRXx6D+jXCxPzuFX3rx09Mh+2Cu/KwJoHYArJx82d4YuhT3SQMWZ1QsxBxlIL
 HRQLQopuqgQQ/z2MzI4WURF/ealrUwt20T9eRbLQI4VBnKSY8JgyVFo8Tc2rlQMXtzko
 yuZNe+7LX55p0n/UUirwwa0V0qpPHHWULNYYZOkOMo0n+U4pO7PIyBwnJvxYJXoUHCza
 LW6UT7VmbdSZCOY2U7q9k2Hda8Jurq7qLAjuFUKw7eafGhycgOLTghnmz88yM2vqSIfN
 SmEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=00AnnnxbvHqhiLog3KtyVq86J2iHZsP1rdfFuFi4dKs=;
 b=qxBCnQucB0V97yknbCRRx+RXT6ibyE3Xnrwt62mQcEpR/wnYPjb9IWTjz8CgNRieSy
 qF289ydTTMHR1/G+kvUtk27tcIQQbDEmCH5wpthaE14pLtZTglVQqVYHinKHRN0K4DH0
 U5XReVtPclklBqFM+gC8Z5xPtUoI8H9+fIV9PhBh5K2BDeWtRltassEUpZZxH/9HQ8j4
 rV0cT/pSIJ4FpWtYgsMach4QMVIvZe0Qr/iOx78d1+nfarQXqqyqLSmAiSKegKCzYS9D
 oOYdfj7YY6pJ8rkOAA7Qgwwh7LJ10HwEDDDMOBpxoUyxAaYOyVkIDTOzKt28J8TpREzF
 doAw==
X-Gm-Message-State: AOAM533TYdR9qhtTbpAV3UBo/NU2GdAK0oQKdcOyf7IPWDsDQ27zS7oB
 GINPtaPIH3cfpfOmg3/lhOf5r1zmjhbo0ri4/t4=
X-Google-Smtp-Source: ABdhPJxvsuDPnLVEisa0gTU4TS0iGn5ck2Xg+E6xV7cc8w4Jne9XNQAhZQ2FQiyxh3KJG/Wjb+m+u3OWkMGHowImQ30=
X-Received: by 2002:a17:90a:c84:: with SMTP id
 v4mr11549430pja.228.1611844399298; 
 Thu, 28 Jan 2021 06:33:19 -0800 (PST)
MIME-Version: 1.0
References: <1611838435-151774-1-git-send-email-zhangxuezhi3@gmail.com>
In-Reply-To: <1611838435-151774-1-git-send-email-zhangxuezhi3@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 28 Jan 2021 16:33:02 +0200
Message-ID: <CAHp75Vd=ijxnamuSYuxNLeyhGMCod=HaXWrQ0W0+3QCsQAychg@mail.gmail.com>
Subject: Re: [PATCH v12] staging: fbtft: add tearing signal detect
To: Carlis <zhangxuezhi3@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 "open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>,
 Deepak R Varma <mh12gx2825@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 oliver.graute@kococonnector.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Stefano Brivio <sbrivio@redhat.com>, Colin King <colin.king@canonical.com>,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jan 28, 2021 at 2:58 PM Carlis <zhangxuezhi3@gmail.com> wrote:

Thanks for your contribution, my comments below.

> From: zhangxuezhi <zhangxuezhi1@yulong.com>

You probably have to configure your Git to use the same account for
author and committer.

> For st7789v ic,when we need continuous full screen refresh, it is best to

'ic,when' -> 'IC, when'

> wait for the TE signal arrive to avoid screen tearing

Decode TE for people who are not familiar with the abbreviation.

Missed period at the end of sentence.

...

>  #include <linux/delay.h>
>  #include <linux/init.h>
>  #include <linux/kernel.h>
> +#include <linux/interrupt.h>
> +#include <linux/completion.h>
>  #include <linux/module.h>
> +#include <linux/gpio/consumer.h>
> +

Good, but I would rather squeeze it above to be more or less ordered,
like just after delay.h inclusion.

>  #include <video/mipi_display.h>

...

> +#define SPI_PANEL_TE_TIMEOUT   400 /* msecs */

Useless comment. Instead use _MS suffix in the name of constant.
Besides that please add a comment explaining why this value has been
chosen.

...

> +static struct completion spi_panel_te;

As Greg said.

...

>  static int init_display(struct fbtft_par *par)
>  {
> +       int rc;
> +       struct device *dev = par->info->device;

Keep reversed xmas tree order:

       struct device *dev = par->info->device;
       int rc;

...

> +       par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0, GPIOD_IN);

No need to have it requested for all time since you use it as an IRQ
later on. The IRQ chip will call the GPIO library framework to lock a
pin as IRQ anyway.

> +       if (IS_ERR(par->gpio.te))
> +               return dev_err_probe(par->info->device, PTR_ERR(par->gpio.te),
> +                                    "Failed to request te gpio\n");

> +       if (par->gpio.te) {

Instead you should probably do the following:

int irq;

irq = gpiod_to_irq(...);
if (irq > 0)

> +               init_completion(&spi_panel_te);
> +               rc = devm_request_irq(dev,

> +                                     gpiod_to_irq(par->gpio.te),

...and here simply use irq.

> +                                    spi_panel_te_handler, IRQF_TRIGGER_RISING,
> +                                    "TE_GPIO", par);

> +               if (IS_ERR(rc))

This is wrong. rc is integer no IS_ERR() is required. Ditto for
PTR_ERR(). Have you even looked for these macros implementations?

> +                       return dev_err_probe(par->info->device, PTR_ERR(rc),

Use your temporary variable and move...

> +                                            "TE request_irq failed.\n");

...this on the previous line.

> +               disable_irq_nosync(gpiod_to_irq(par->gpio.te));

Why do you call gpio_to_irq() twice?


> +       } else {
> +               dev_info(par->info->device, "%s:%d, TE gpio not specified\n",
> +                        __func__, __LINE__);

Remove this noise (besides the fact that we don't use __file__ and
__LINE__ in messages like this.

> +       }

Taking all together you probably need to create a helper and use it
inside init_display(), like

static int init_tearing_effect_line(struct fbtft_par *par)
{
  struct device *dev = par->info->device;
  struct gpio_desc *te;
  int irq, rc;

  te = gpiod_get_optional(dev, "te", GPIOD_IN);
  if (IS_ERR(te))
           return dev_err_probe(dev, PTR_ERR(te), "Failed to request
te GPIO\n");

  irq = gpiod_to_irq(te); // this value you have to save in the
driver's (per device) data structure.

  /* GPIO is locked as an IRQ, we may drop the reference */
  gpiod_put(te);

  init_completion(&spi_panel_te); // should be in the (per device)
data structure
  rc = devm_request_irq(dev, irq,  spi_panel_te_handler,
IRQF_TRIGGER_RISING, "TE_GPIO", par);
  if (rc)
                return dev_err_probe(dev, rc, "TE IRQ request failed.\n");
  disable_irq_nosync(irq);
  return irq;
}

Note, when you define proper fields for IRQ line and completion in the
data structure the above can be amended accordingly.

...

> +       /* tearing effect line on */
> +       if (par->gpio.te)
> +               write_reg(par, 0x35, 0x00);

0x35 is defined. use it and drop useless comments.

...

>  /**
> + * st7789v_write_vmem16_bus8() -  write data to display

> + *

Redundant blank line.

> + * @par: FBTFT parameter object
> + * @offset: offset from screen_buffer
> + * @len: the length of data to be written
> + *
> + * 16 bit pixel over 8-bit databus
> + *
> + * Return: 0 on success, < 0 if error occurred.

", or a negative error code otherwise"

> + */

> +
Redundant blank line

> +static int st7789v_write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
> +{
> +       u16 *vmem16;
> +       __be16 *txbuf16 = par->txbuf.buf;
> +       size_t remain;
> +       size_t to_copy;
> +       size_t tx_array_size;
> +       int i;
> +       int ret = 0;
> +       size_t startbyte_size = 0;

Reversed xmas tree order.

> +       fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "st7789v ---%s(offset=%zu, len=%zu)\n",
> +                     __func__, offset, len);
> +
> +       remain = len / 2;
> +       vmem16 = (u16 *)(par->info->screen_buffer + offset);

> +       if (par->gpio.dc)

Useless duplicate check.

> +               gpiod_set_value(par->gpio.dc, 1);

> +       if (par->gpio.te) {
> +               enable_irq(gpiod_to_irq(par->gpio.te));

Here you should use the IRQ line rather than the GPIO descriptor. See above.

> +               reinit_completion(&spi_panel_te);
> +               ret = wait_for_completion_timeout(&spi_panel_te,
> +                                                 msecs_to_jiffies(SPI_PANEL_TE_TIMEOUT));
> +               if (ret == 0)
> +                       dev_err(par->info->device, "wait panel TE time out\n");
> +
> +               disable_irq(gpiod_to_irq(par->gpio.te));
> +       }

> +
> +       while (remain) {
> +               to_copy = min(tx_array_size, remain);

> +               dev_dbg(par->info->device, "    to_copy=%zu, remain=%zu\n",
> +                       to_copy, remain - to_copy);

Like in previous functions create a temporary variable to keep a
pointer to struct device and use it here and everywhere else. It might
save you LOCs and make code easier to read and understand.

> +               for (i = 0; i < to_copy; i++)
> +                       txbuf16[i] = cpu_to_be16(vmem16[i]);

If both of them are 16-bit wide, consider moving this to a helper
which somebody can move to byteorder/generic.h in the future.

> +               vmem16 = vmem16 + to_copy;
> +               ret = par->fbtftops.write(par, par->txbuf.buf,
> +                                        startbyte_size + to_copy * 2);
> +               if (ret < 0)
> +                       return ret;
> +               remain -= to_copy;
> +       }
> +
> +       return ret;
> +}

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

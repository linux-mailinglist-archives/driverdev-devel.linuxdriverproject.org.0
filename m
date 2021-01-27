Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC03F305E1E
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 15:22:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7CD8285C37;
	Wed, 27 Jan 2021 14:22:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FNvEe2MKeBGM; Wed, 27 Jan 2021 14:22:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B04385B94;
	Wed, 27 Jan 2021 14:22:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 727C91BF301
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 14:22:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6EF11866D2
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 14:22:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vGsY9B81TJ1p for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 14:22:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BC43186483
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 14:22:00 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id a109so1812109otc.1
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 06:22:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=587D5sQwzOQpISnpuw/zLfl/khiQsRKiyrXe7742FuI=;
 b=J9NOvRlyqXHhkQNGgk5BPbPcZs7jS+iV4GCXErC8Dv4pFzFDp7uXWOTlU25GBUiQlb
 jk8pGeHt/mVgOOvGZ5fu2UmQFdSrYn9rzdWYtch+S8ZGFHEW3z/fBt1xJB5ImtG3Rz0P
 YzX+uqQ55fNAdKuKQUdYXoQGaERMUvU14W88n4uba7IH4HfqA7kH0cLcaGjjifH64rLd
 JI+ZRl+IC9b44i/M897QeGfswm4c6q58FNQhZqeJvxOvX1QtDYAUUZCidj0nTrg3muLz
 mcEdYJYAEwPHf29joBqpbCzojY+fGLEz7tp5/k2EMwb6UrjvTI5RXQ0Tzxt908SRCBpS
 Y2zg==
X-Gm-Message-State: AOAM5339ab8+AafWajCbHD36EKXD0dWUDXjNGgfzWN205Dn70X4xKjK5
 t48Sj3sx19YqDNkvIoagd7nAvpb8dh6Z1wMPGyI=
X-Google-Smtp-Source: ABdhPJwldt+lZlYPhu/osH7yMBd55aPChuGJkaBrux0jWPyiIyO2mGqr+Ap0Sk51b3A5BrSya3weIUzfrYMlEzvbK80=
X-Received: by 2002:a05:6830:15cc:: with SMTP id
 j12mr7855321otr.145.1611757320011; 
 Wed, 27 Jan 2021 06:22:00 -0800 (PST)
MIME-Version: 1.0
References: <1611756149-165287-1-git-send-email-zhangxuezhi3@gmail.com>
In-Reply-To: <1611756149-165287-1-git-send-email-zhangxuezhi3@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 27 Jan 2021 15:21:48 +0100
Message-ID: <CAMuHMdV81xSOBkw9Rfeuc8U4g3vRcucXMvVv1_1hoMexX62s7A@mail.gmail.com>
Subject: Re: [PATCH v11] staging: fbtft: add tearing signal detect
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 mh12gx2825@gmail.com, Greg KH <gregkh@linuxfoundation.org>,
 oliver.graute@kococonnector.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Stefano Brivio <sbrivio@redhat.com>, Colin King <colin.king@canonical.com>,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Carlis,

On Wed, Jan 27, 2021 at 3:07 PM Carlis <zhangxuezhi3@gmail.com> wrote:
> From: zhangxuezhi <zhangxuezhi1@yulong.com>
>
> For st7789v ic,when we need continuous full screen refresh, it is best to
> wait for the TE signal arrive to avoid screen tearing
>
> Signed-off-by: zhangxuezhi <zhangxuezhi1@yulong.com>
> ---
> v11: remove devm_gpio_put and change a dev_err to dev_info

> --- a/drivers/staging/fbtft/fb_st7789v.c
> +++ b/drivers/staging/fbtft/fb_st7789v.c

> @@ -82,6 +111,32 @@ enum st7789v_command {
>   */
>  static int init_display(struct fbtft_par *par)
>  {
> +       int rc;
> +       struct device *dev = par->info->device;
> +
> +       par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0, GPIOD_IN);
> +       if (IS_ERR(par->gpio.te)) {
> +               rc = PTR_ERR(par->gpio.te);
> +               dev_info(par->info->device, "Failed to request te gpio: %d\n", rc);

Please slow down and read the feedback.
I said "dev_err_probe()", not "dev_info()".

> +               return rc;
> +       }
> +       if (par->gpio.te) {
> +               init_completion(&spi_panel_te);
> +               mutex_init(&te_mutex);
> +               rc = devm_request_irq(dev,
> +                                     gpiod_to_irq(par->gpio.te),
> +                                    spi_panel_te_handler, IRQF_TRIGGER_RISING,
> +                                    "TE_GPIO", par);
> +               if (rc) {
> +                       dev_err(par->info->device, "TE request_irq failed.\n");

Same here.

> +                       return rc;
> +               }
> +
> +               disable_irq_nosync(gpiod_to_irq(par->gpio.te));
> +       } else {
> +               dev_info(par->info->device, "%s:%d, TE gpio not specified\n",
> +                        __func__, __LINE__);
> +       }
>         /* turn off sleep mode */
>         write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
>         mdelay(120);

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

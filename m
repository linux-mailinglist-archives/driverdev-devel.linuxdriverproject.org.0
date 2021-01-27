Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F13D2305652
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 10:00:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D10442094D;
	Wed, 27 Jan 2021 09:00:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id spP2Nozv1C4P; Wed, 27 Jan 2021 09:00:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 96D102078C;
	Wed, 27 Jan 2021 09:00:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5DE321BF2B0
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 09:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5912920798
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 09:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d2SxVb+ic7sn for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 09:00:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 by silver.osuosl.org (Postfix) with ESMTPS id 545782078C
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 09:00:25 +0000 (UTC)
Received: by mail-oi1-f180.google.com with SMTP id k25so1383231oik.13
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 01:00:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+6RprSXYvoMC4UVhQo7yoMn9BtMVGW5pIMAX/4sOotk=;
 b=Wxlw3BInFPvCtPCbW2tmtt/Oa4kv2LziJNUSFo0APa2XLArQS6PAdJv2KXsby8jxSj
 QxBCuoJU/yB6Bf1Dm1ZFf0Pn4jQ31sI9Q2s4XwyRW4Yy9LmEFpkdBIUDkYyd7cyiuw3x
 cEN+SHXkIQP14N+12YUv77vSpWMkHCqhWHhItYDavQfxVc+Liayf/OXXQ9W0Dird5sx5
 DybXsaBTtwsNIhEqElgJ5yVcTzwWs4ehfvH9Vy6qgOGa2Eb9xF3zOQTQd4bt+gXw6Dod
 17ZbU8Y4uRafJvqnzyf5cLaIKGvH+5n3yxPVTzrmvAb+5hseY0o8j6Rwm6J3lqBWSCsc
 Mztw==
X-Gm-Message-State: AOAM533C2pJ30ApRvvFPFsqKhcSlIlk4w2oh5mt0gu+loNTcB1jTzq8M
 esRsHoCQg71LhnsHeLpLcuwa0vTnWisfhRpEEpk=
X-Google-Smtp-Source: ABdhPJyoJzAs8/wKsxJ/K1jb7LeAbfGa10f2NI3SY3Q2AP1Px64nQ1dkLKkwuvc9IT5UbP+RktcFytWHSl+rDLQ8KQg=
X-Received: by 2002:a54:4e88:: with SMTP id c8mr2476402oiy.148.1611738024632; 
 Wed, 27 Jan 2021 01:00:24 -0800 (PST)
MIME-Version: 1.0
References: <1611732502-99639-1-git-send-email-zhangxuezhi3@gmail.com>
In-Reply-To: <1611732502-99639-1-git-send-email-zhangxuezhi3@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 27 Jan 2021 10:00:13 +0100
Message-ID: <CAMuHMdV5VxNBNV-UMswKKZmQRFUvG+pnBbOOW8XJT8pbbvmp5Q@mail.gmail.com>
Subject: Re: [PATCH v6] fbtft: add tearing signal detect
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

On Wed, Jan 27, 2021 at 9:52 AM Carlis <zhangxuezhi3@gmail.com> wrote:
> From: zhangxuezhi <zhangxuezhi1@yulong.com>
>
> For st7789v ic,add tearing signal detect to avoid screen tearing
>
> Signed-off-by: zhangxuezhi <zhangxuezhi1@yulong.com>

Thanks for your patch!

> --- a/drivers/staging/fbtft/fb_st7789v.c
> +++ b/drivers/staging/fbtft/fb_st7789v.c

> @@ -82,6 +111,34 @@ enum st7789v_command {
>   */
>  static int init_display(struct fbtft_par *par)
>  {
> +       int rc;
> +       struct device *dev = par->info->device;
> +
> +       par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0, GPIOD_IN);
> +       if (IS_ERR(par->gpio.te)) {
> +               rc = PTR_ERR(par->gpio.te);
> +               pr_err("Failed to request te gpio: %d\n", rc);
> +               par->gpio.te = NULL;

Errors (e.g. -EPROBE_DEFER) should be propagated upstream,
not ignored.

> +       }
> +       if (par->gpio.te) {
> +               init_completion(&spi_panel_te);
> +               mutex_init(&te_mutex);
> +               rc = devm_request_irq(dev,
> +                                     gpiod_to_irq(par->gpio.te),
> +                                    spi_panel_te_handler, IRQF_TRIGGER_RISING,
> +                                    "TE_GPIO", par);
> +               if (rc) {
> +                       pr_err("TE request_irq failed.\n");
> +                       devm_gpiod_put(dev, par->gpio.te);
> +                       par->gpio.te = NULL;

Errors (e.g. -EPROBE_DEFER) should be propagated upstream,
not ignored.

> +               } else {
> +                       disable_irq_nosync(gpiod_to_irq(par->gpio.te));
> +                       pr_info("TE request_irq completion.\n");
> +               }
> +       } else {
> +               pr_info("%s:%d, TE gpio not specified\n",
> +                       __func__, __LINE__);
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

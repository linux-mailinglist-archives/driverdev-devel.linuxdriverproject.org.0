Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 216D030748C
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Jan 2021 12:15:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5CD0086C39;
	Thu, 28 Jan 2021 11:15:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6UkkX10rBwbW; Thu, 28 Jan 2021 11:15:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4214886BDF;
	Thu, 28 Jan 2021 11:15:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2035F1BF316
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 11:15:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D33972DADE
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 11:15:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WGtfk9yR9jnO for <devel@linuxdriverproject.org>;
 Thu, 28 Jan 2021 11:15:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 by silver.osuosl.org (Postfix) with ESMTPS id 422C9203CD
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 11:15:41 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id k25so5585092oik.13
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 03:15:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wd5PNi4LgX7OKjGEh2rWr1MKY8PE+Pg7m1CEP8sv6GY=;
 b=qA4LI4uUjCnLKsXnGQsfViLnp5h3qSMQvY7nHnhmCRzK+lss1+5mUj3u9igmDurUEJ
 jpNlIBKFgNmxOdY7SCS07YCLB9+lCUA2XakKEI626wTk3PEyWe9QPun5LDecaDfNKw+q
 qJ5XRuizBR17xgmcScBAjMbFgbM67tvL+J16ZcrxDzRv8hIANsq6YdS+Do5aXEp5Mm9G
 BmdrRZjRGtAkRVxajSbwNgZ9i7rCbTY0uxYKjJ3BuuUmK5zQA0uLhhPGu1DVsLwYbHLS
 Fd8ULxQejEv0wjL0o5vbKxq1ZIP4sty5CFQoqOHRvflDf8l277d4iTXlgyygGC86iZLa
 92xA==
X-Gm-Message-State: AOAM532yomZADtKa7dAsSuj7AuP1roV0fQakUu+MJ8wi/60dw8xebAIB
 Fn5zvHFwcolJP8Xs88VBAaVlsynaENcfHo5ho6c=
X-Google-Smtp-Source: ABdhPJyZxo7oaV1z7wTWsc6iUF4z5GhFU+GNZ7f4+addjArPHWz87F5g7De+F5c7WDnpI8dzJr3s11uSeCtqxFL4kZw=
X-Received: by 2002:a54:4e88:: with SMTP id c8mr6107548oiy.148.1611832540494; 
 Thu, 28 Jan 2021 03:15:40 -0800 (PST)
MIME-Version: 1.0
References: <1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com>
 <20210127223222.3lavtl3roc4cabso@kari-VirtualBox>
 <20210128094258.000012c3@gmail.com>
 <20210128065233.ji4b7ea54ihyu2l5@kari-VirtualBox>
 <CAMuHMdWK0wbMVJNwSW=pafsyjDVg14h2AX=haJeAkyivehP=JQ@mail.gmail.com>
 <20210128190301.00007ebe@gmail.com>
In-Reply-To: <20210128190301.00007ebe@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 28 Jan 2021 12:15:28 +0100
Message-ID: <CAMuHMdX50YJ6_=maJveDk=dh+suFeCEtarWrqoP_gNMP9k922Q@mail.gmail.com>
Subject: Re: [PATCH v10] staging: fbtft: add tearing signal detect
To: carlis <zhangxuezhi3@gmail.com>
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
 mh12gx2825@gmail.com, Stefano Brivio <sbrivio@redhat.com>,
 Greg KH <gregkh@linuxfoundation.org>, oliver.graute@kococonnector.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Kari Argillander <kari.argillander@gmail.com>,
 Colin King <colin.king@canonical.com>, zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Carlis,

On Thu, Jan 28, 2021 at 12:03 PM carlis <zhangxuezhi3@gmail.com> wrote:
> On Thu, 28 Jan 2021 10:42:54 +0100
> Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Thu, Jan 28, 2021 at 7:53 AM Kari Argillander
> > <kari.argillander@gmail.com> wrote:
> > > On Thu, Jan 28, 2021 at 09:42:58AM +0800, carlis wrote:
> > > > On Thu, 28 Jan 2021 00:32:22 +0200
> > > > Kari Argillander <kari.argillander@gmail.com> wrote:
> > > > > >  #include "fbtft.h"
> > > > > >
> > > > > >  #define DRVNAME "fb_st7789v"
> > > > > > @@ -66,6 +69,32 @@ enum st7789v_command {
> > > > > >  #define MADCTL_MX BIT(6) /* bitmask for column address order
> > > > > > */ #define MADCTL_MY BIT(7) /* bitmask for page address order
> > > > > > */
> > > > > >
> > > > > > +#define SPI_PANEL_TE_TIMEOUT     400 /* msecs */
> > > > > > +static struct mutex te_mutex;/* mutex for set te gpio irq
> > > > > > status */
> > > > >
> > > > > Space after ;
> > > > hi, i have fix it in the patch v11
> > > > >
> > >
> > > Yeah sorry. I accidentally review wrong patch. But mostly stuff are
> > > still relevant.
> > >
> > > > > > @@ -82,6 +111,33 @@ enum st7789v_command {
> > > > > >   */
> > > > > >  static int init_display(struct fbtft_par *par)
> > > > > >  {
> > > > > > + int rc;
> > > > > > + struct device *dev = par->info->device;
> > > > > > +
> > > > > > + par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
> > > > > > GPIOD_IN);
> > > > > > + if (IS_ERR(par->gpio.te)) {
> > > > > > +         rc = PTR_ERR(par->gpio.te);
> > > > > > +         dev_err(par->info->device, "Failed to request te
> > > > > > gpio: %d\n", rc);
> > > > > > +         return rc;
> > > > > > + }
> > > > >
> > > > > You request with optinal and you still want to error out? We
> > > > > could just continue and not care about that error. User will be
> > > > > happier if device still works somehow.
> >
> > devm_gpiod_get_index_optional() returns NULL, not an error, if the
> > GPIO is not found.  So if IS_ERR() is the right check.
> >
> > And checks for -EPROBE_DEFER can be handled automatically
> > by using dev_err_probe() instead of dev_err().
> >
> hi, i fix it like below!?
>         par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
>         GPIOD_IN); if (IS_ERR(par->gpio.te)) {
>                 rc = PTR_ERR(par->gpio.te);
>                 dev_err_probe(par->info->device, rc, "Failed to request
>         te gpio\n"); return rc;
>         }
>         if (par->gpio.te) {
>                 init_completion(&spi_panel_te);
>                 rc = devm_request_irq(dev,
>                                       gpiod_to_irq(par->gpio.te),
>                                      spi_panel_te_handler,
>         IRQF_TRIGGER_RISING, "TE_GPIO", par);
>                 if (rc) {
>                         dev_err(par->info->device, "TE request_irq
>         failed.\n"); return rc;

dev_err_probe()

>                 }
>
>                 disable_irq_nosync(gpiod_to_irq(par->gpio.te));
>         } else {
>                 dev_info(par->info->device, "%s:%d, TE gpio not
>                 specified\n", __func__, __LINE__);
>         }

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

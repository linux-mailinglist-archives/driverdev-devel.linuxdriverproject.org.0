Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D9F3072FB
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Jan 2021 10:43:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 338D7873D4;
	Thu, 28 Jan 2021 09:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jfNxkF58Mb65; Thu, 28 Jan 2021 09:43:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 729E1873AC;
	Thu, 28 Jan 2021 09:43:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E3D9B1BF3F7
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 09:43:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DFD3C873AB
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 09:43:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PXBndr4Jfta4 for <devel@linuxdriverproject.org>;
 Thu, 28 Jan 2021 09:43:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 16B86873A8
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 09:43:07 +0000 (UTC)
Received: by mail-oi1-f175.google.com with SMTP id m13so5359751oig.8
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 01:43:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0UQD5rzLUItAad2Pj4MS3WUwxXLDc49HJgM9YhC9w4E=;
 b=sXh0R1izgXss/wTJSGfON+5DVZ6aNu3n4//Dx24TlEiruphJBOW4U3HVQ/DcWzyowN
 1O6DbokuSARTvI9DV3QHzkyke2xbX2eZq4A4cgScOGLsIPjVcyseypdJuZsZTVXdBqHF
 GmjeY4lBnVMreAFeATgyHCLRwLWP78QMuSb41AxBQqDt6rx16goSgAkrPwGzDnbZs93M
 C/tIwu44t0BFDyL7g3FMnBPFCscmMfOSp+ku9CJ7G2t8YHeEKQWtQUgstlWojfLb9xlK
 aQr1DC7qE5IFasTHjv0W1PKeZ6JN7DEpZTT31YH6zI2HX2Os0ooeJU7zfL0L73HCWyrK
 m0Kg==
X-Gm-Message-State: AOAM533TZwhgR+jI0d0WLw2jNDenK4/r2gzKDqIhEACuW1jEQUPLeAoT
 8uw086BMmkqFn4DugBAbwa5eNzBHWEd4gtiHvuY=
X-Google-Smtp-Source: ABdhPJxoZOzI4xZTWdYHcsO/prgFXGQqxvTaD/BSBKbTP3NgRRBKa973/1xtxNzdsgrR5mdE52PMmLLYLmNTUlRGhEM=
X-Received: by 2002:aca:1219:: with SMTP id 25mr6108127ois.54.1611826986355;
 Thu, 28 Jan 2021 01:43:06 -0800 (PST)
MIME-Version: 1.0
References: <1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com>
 <20210127223222.3lavtl3roc4cabso@kari-VirtualBox>
 <20210128094258.000012c3@gmail.com>
 <20210128065233.ji4b7ea54ihyu2l5@kari-VirtualBox>
In-Reply-To: <20210128065233.ji4b7ea54ihyu2l5@kari-VirtualBox>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 28 Jan 2021 10:42:54 +0100
Message-ID: <CAMuHMdWK0wbMVJNwSW=pafsyjDVg14h2AX=haJeAkyivehP=JQ@mail.gmail.com>
Subject: Re: [PATCH v10] staging: fbtft: add tearing signal detect
To: Kari Argillander <kari.argillander@gmail.com>
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
 Stefano Brivio <sbrivio@redhat.com>, carlis <zhangxuezhi3@gmail.com>,
 Colin King <colin.king@canonical.com>, zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Kari,

On Thu, Jan 28, 2021 at 7:53 AM Kari Argillander
<kari.argillander@gmail.com> wrote:
> On Thu, Jan 28, 2021 at 09:42:58AM +0800, carlis wrote:
> > On Thu, 28 Jan 2021 00:32:22 +0200
> > Kari Argillander <kari.argillander@gmail.com> wrote:
> > > >  #include "fbtft.h"
> > > >
> > > >  #define DRVNAME "fb_st7789v"
> > > > @@ -66,6 +69,32 @@ enum st7789v_command {
> > > >  #define MADCTL_MX BIT(6) /* bitmask for column address order */
> > > >  #define MADCTL_MY BIT(7) /* bitmask for page address order */
> > > >
> > > > +#define SPI_PANEL_TE_TIMEOUT     400 /* msecs */
> > > > +static struct mutex te_mutex;/* mutex for set te gpio irq status
> > > > */
> > >
> > > Space after ;
> > hi, i have fix it in the patch v11
> > >
>
> Yeah sorry. I accidentally review wrong patch. But mostly stuff are
> still relevant.
>
> > > > @@ -82,6 +111,33 @@ enum st7789v_command {
> > > >   */
> > > >  static int init_display(struct fbtft_par *par)
> > > >  {
> > > > + int rc;
> > > > + struct device *dev = par->info->device;
> > > > +
> > > > + par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
> > > > GPIOD_IN);
> > > > + if (IS_ERR(par->gpio.te)) {
> > > > +         rc = PTR_ERR(par->gpio.te);
> > > > +         dev_err(par->info->device, "Failed to request te
> > > > gpio: %d\n", rc);
> > > > +         return rc;
> > > > + }
> > >
> > > You request with optinal and you still want to error out? We could
> > > just continue and not care about that error. User will be happier if
> > > device still works somehow.

devm_gpiod_get_index_optional() returns NULL, not an error, if the
GPIO is not found.  So if IS_ERR() is the right check.

And checks for -EPROBE_DEFER can be handled automatically
by using dev_err_probe() instead of dev_err().

> > You mean i just delete this dev_err print ?!
> > like this:
> >       par->gpio.te = devm_gpiod_get_index_optional(dev, "te",
> > 0,GPIOD_IN);
> >         if (IS_ERR(par->gpio.te))
> >               return PTR_ERR(par->gpio.te);
>
> Not exactly. I'm suggesting something like this.
>
> if (IS_ERR(par->gpio.te) == -EPROBE_DEFER) {
>         return -EPROBE_DEFER;
>
> if (IS_ERR(par->gpio.te))
>         par-gpio.te = NULL;
>
> This like beginning of your patch series but the difference is that if
> EPROBE_DEFER then we will try again later. Any other error and we will
> just ignore TE gpio. But this is up to you what you want to do. To me
> this just seems place where this kind of logic can work.

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

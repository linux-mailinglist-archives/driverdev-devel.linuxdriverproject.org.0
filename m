Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB090298FC2
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 15:45:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A796385FAD;
	Mon, 26 Oct 2020 14:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2tV9r0AqE4sy; Mon, 26 Oct 2020 14:45:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7DBBE858BF;
	Mon, 26 Oct 2020 14:45:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 458DE1BF2CF
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 14:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3FAEC2741E
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 14:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WRgten56Qrvw for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 14:45:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 2FD4F21515
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 14:45:33 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id l24so9632029edj.8
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 07:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=108wjdzd0/xglJPKdUFBrU/U8qTH53Q7ViQVBUZc56k=;
 b=1OrMnfHHqDBoo2mYxJrLQ9UlNNI6ec8McsUQXHPbq7sKgz+s/nXE8wC/tcI/BwH3BA
 YcAIrjszEI+afPxnRmUMsSafZo++P4xTvrdEqggzBABUFDbbV/e9xn+YZ3cB/dPnf3kl
 9ZGuOQRnd6APa67+wQwTCEP61nfTjrToUqGBWbolTmKWKeyz73rYrmvMumShSk9TWAF9
 +MREeJUOnaLftLucXz5QGIgOkw2duaObvPbDmqRNRkJj959McPu1ur7Zk48voZsuQ9ZO
 vX1M9rjAraSINox0yzNORVihGBwgnebY6oKbYvqhxGWZ/XB/jl58QutvGrPjQrUPCTJW
 JjqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=108wjdzd0/xglJPKdUFBrU/U8qTH53Q7ViQVBUZc56k=;
 b=bMxNzx4vM/w5h40aoiDzVf1EogoYXTy0F7wYz1YL8izXCL55hDRBRzSqVcM9T+oc4k
 zAqdXc7XZ6yLM31obHeq9Y79a5jBcNa1LwMYYXterYCbdPV5W+sVo6BHlVrovBEazQg5
 DoWNcf/A7mkMu1QGQSVPmXXLFBmWSMbWWmdwdgf6J1aqnhBDi4P38Qhmxuq/ZI3tr5HR
 M2uEWFiRVZ6YgZVSibwdCbetRtkppP/fuVVW2TPbxbIvL4HOanl3MFFIjwmScZUcJLcx
 H19JRmvzBjTiF43bDqRkKFDbRzTqXPHgZJCwBiy1KdFqPdtkyu1dHtWreuii5KtJPmkm
 Gx4A==
X-Gm-Message-State: AOAM532s7d4/CvtnkF4mFgLRisGXXQgy6skf2TX2jD3vKkkidLYuAPbP
 V8RoCHzAZ4jBH9TCVjOemZXYJYJuGgFYB84nfM6yAA==
X-Google-Smtp-Source: ABdhPJwpLZGnNpfAXvm5XX2UTeeOpwB6YzeBR/r0R25NPP/c93Zb+pjiQMB4mwWWBByibX0wj7kl731YGtPxH+pE/SM=
X-Received: by 2002:a50:e442:: with SMTP id e2mr16721662edm.186.1603723528358; 
 Mon, 26 Oct 2020 07:45:28 -0700 (PDT)
MIME-Version: 1.0
References: <20201022155858.20867-1-nsaenzjulienne@suse.de>
 <20201022155858.20867-4-nsaenzjulienne@suse.de>
 <CAMpxmJXw12hKYCuMDjG-Ns6n=mXmr4B2x3HJaAJ19wH_xDUMag@mail.gmail.com>
 <700a149849222f3efbec73cb8a6be56b4b1c5bcb.camel@suse.de>
In-Reply-To: <700a149849222f3efbec73cb8a6be56b4b1c5bcb.camel@suse.de>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Mon, 26 Oct 2020 15:45:17 +0100
Message-ID: <CAMpxmJWTuREXQKLtc37uo6+6aG_-Tkb-P+8Ozjkz+7-DixvpDQ@mail.gmail.com>
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

On Mon, Oct 26, 2020 at 3:42 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> On Mon, 2020-10-26 at 15:40 +0100, Bartosz Golaszewski wrote:
> > On Thu, Oct 22, 2020 at 5:59 PM Nicolas Saenz Julienne
> > <nsaenzjulienne@suse.de> wrote:
> > > Upon unbinding the device make sure we release RPi's firmware interface.
> > >
> > > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > ---
> > >  drivers/gpio/gpio-raspberrypi-exp.c | 14 +++++++++++++-
> > >  1 file changed, 13 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpio/gpio-raspberrypi-exp.c b/drivers/gpio/gpio-raspberrypi-exp.c
> > > index bb100e0124e6..c008336e1131 100644
> > > --- a/drivers/gpio/gpio-raspberrypi-exp.c
> > > +++ b/drivers/gpio/gpio-raspberrypi-exp.c
> > > @@ -231,8 +231,19 @@ static int rpi_exp_gpio_probe(struct platform_device *pdev)
> > >         rpi_gpio->gc.get = rpi_exp_gpio_get;
> > >         rpi_gpio->gc.set = rpi_exp_gpio_set;
> > >         rpi_gpio->gc.can_sleep = true;
> > > +       platform_set_drvdata(pdev, rpi_gpio);
> > >
> > > -       return devm_gpiochip_add_data(dev, &rpi_gpio->gc, rpi_gpio);
> > > +       return gpiochip_add_data(&rpi_gpio->gc, rpi_gpio);
> > > +}
> > > +
> > > +static int rpi_exp_gpio_remove(struct platform_device *pdev)
> > > +{
> > > +       struct rpi_exp_gpio *rpi_gpio = platform_get_drvdata(pdev);
> > > +
> > > +       gpiochip_remove(&rpi_gpio->gc);
> > > +       rpi_firmware_put(rpi_gpio->fw);
> > > +
> > > +       return 0;
> > >  }
> > >
> > >  static const struct of_device_id rpi_exp_gpio_ids[] = {
> > > @@ -247,6 +258,7 @@ static struct platform_driver rpi_exp_gpio_driver = {
> > >                 .of_match_table = of_match_ptr(rpi_exp_gpio_ids),
> > >         },
> > >         .probe  = rpi_exp_gpio_probe,
> > > +       .remove = rpi_exp_gpio_remove,
> > >  };
> > >  module_platform_driver(rpi_exp_gpio_driver);
> > >
> > > --
> > > 2.28.0
> > >
> >
> > Why not introduce devm_rpi_firmware_get()? That would allow you to
> > keep the driver elegant without re-adding remove().
>
> I like the idea, I'll look into it.
>
> Thanks,
> Nicolas
>

If you can't do it for some reason, then even using devm_add_action() is fine.

Bartosz
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

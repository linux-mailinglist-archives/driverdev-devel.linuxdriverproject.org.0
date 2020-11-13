Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D882B165E
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 08:26:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DC7342E1A6;
	Fri, 13 Nov 2020 07:26:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LP2AyR1cnxXA; Fri, 13 Nov 2020 07:26:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 99DFA2048A;
	Fri, 13 Nov 2020 07:26:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E33371BF868
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 07:26:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DE2B487650
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 07:26:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OVZvKmPldJgq for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 07:26:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B2DAD875A7
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 07:26:19 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id k7so4159042plk.3
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 23:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=bVc4aZk4rKy/6/VqEhMXbEQ5ZVosOHXwKRbVIxDDoGY=;
 b=GMiotV0GyRZSn0pn1dgPWm/1yR1DzPikBgKi5Lbkr2+y/iNDlpqYBVO7SfIvAgqAbf
 uIaCVLY528t7w5yWehm/+G4BNoS1lB69IH4dB9iSPueZ2vY4/XYJoWpU0aQEMS570PMt
 gfyrGW2DRdfuIkQPiOQfGiyd6Icf9TqwlJVhKT9GlbO7q/Mj4/7h6vRa/vNWfxW1mehI
 GBBBTEzl+JU36/Sc52m4n+V0gVtafzPbCLB2RuMl1UZyUSG2LeWJBlAiNPu5ZgflYKFh
 dBz3JOOX0NRmiUfmf22A+yolC5R2dAEyS/GcPJGRpS4tu3Prtj7hQV+cpG105mS2OmpU
 cB8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bVc4aZk4rKy/6/VqEhMXbEQ5ZVosOHXwKRbVIxDDoGY=;
 b=absIR6ITTh4M9zFYXHsMy/xiLYm35x9xIix2LTZWCRjw6zw/DOrAZWvxLzjtRiqrB8
 M0X+D5yfUeNMtP2d/N68T7DQjIfu0FtQ+H+mJvyT6OSt2pXv/KzJfEHQyu/7RJ38HG65
 0+jV8iZga6hw9I0rvTJdAVOfXOl3uQY6uv+apXsDmkOIhaCUjh+lD7cNmaxccOAXAr1U
 ndymUXb+VN+FUMpAKP9rDpsF+dGkUwdynYDVtjnj0e12I/2AvhaFvrMVeQESbs5KM2ZY
 SkNR9leRX7pZBwPNUIhNKi63njFM5ii8V3LAPMnAlRSoDEv+KsVXyiXqfGfVPZrRLQr0
 5ZWw==
X-Gm-Message-State: AOAM533UCsJ0Ukid/2MEYEhgIZ2xCHbrd/QzVdkkbuCKyqtXVHkq5SZt
 KmjWnkmCrrwMJ91U/ezqZv4=
X-Google-Smtp-Source: ABdhPJwxvk3sEiTwtCGzh6+CErNAzuUpI0fhTqrV5pUBqPIIf6eT7t4y2GPOTdCy6tzoqSvWpYqfbA==
X-Received: by 2002:a17:902:c016:b029:d7:1a0:7cf0 with SMTP id
 v22-20020a170902c016b02900d701a07cf0mr878425plx.64.1605252379251; 
 Thu, 12 Nov 2020 23:26:19 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id l20sm9170507pfd.103.2020.11.12.23.26.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 23:26:18 -0800 (PST)
Date: Thu, 12 Nov 2020 23:26:15 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v4 01/11] firmware: raspberrypi: Keep count of all
 consumers
Message-ID: <20201113072615.GE356503@dtor-ws>
References: <20201112163630.17177-1-nsaenzjulienne@suse.de>
 <20201112163630.17177-2-nsaenzjulienne@suse.de>
 <CAHp75Vf9E7UWVDMs=eRjLjoSN6SVOWw9thNdnR8ruCL6GmY7JQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75Vf9E7UWVDMs=eRjLjoSN6SVOWw9thNdnR8ruCL6GmY7JQ@mail.gmail.com>
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
 linux-pwm@vger.kernel.org,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-input <linux-input@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 12, 2020 at 07:52:14PM +0200, Andy Shevchenko wrote:
> On Thu, Nov 12, 2020 at 6:40 PM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> >
> > When unbinding the firmware device we need to make sure it has no
> > consumers left. Otherwise we'd leave them with a firmware handle
> > pointing at freed memory.
> >
> > Keep a reference count of all consumers and introduce rpi_firmware_put()
> > which will permit automatically decrease the reference count upon
> > unbinding consumer drivers.
> 
> ...
> 
> >  /**
> > - * rpi_firmware_get - Get pointer to rpi_firmware structure.
> >   * @firmware_node:    Pointer to the firmware Device Tree node.
> >   *
> > + * The reference to rpi_firmware has to be released with rpi_firmware_put().
> > + *
> >   * Returns NULL is the firmware device is not ready.
> >   */
> >  struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node)
> >  {
> >         struct platform_device *pdev = of_find_device_by_node(firmware_node);
> > +       struct rpi_firmware *fw;
> >
> >         if (!pdev)
> >                 return NULL;
> >
> > -       return platform_get_drvdata(pdev);
> > +       fw = platform_get_drvdata(pdev);
> > +       if (!fw)
> > +               return NULL;
> > +
> > +       if (!kref_get_unless_zero(&fw->consumers))
> > +               return NULL;
> 
> Don't we have a more traditional way of doing this, i.e.
> try_module_get() coupled with get_device() ?

get_device() will make sure that device is there, but gives no
assurances that device is bound to a driver, so it will not help with
the racy access to firmware via platform_get_drvdata() call.

Thanks.

-- 
Dmitry
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

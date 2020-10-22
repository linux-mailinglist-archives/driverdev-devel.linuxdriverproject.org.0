Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CB32964E2
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 20:52:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9C3FF20439;
	Thu, 22 Oct 2020 18:52:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id le3AAwN9OuoB; Thu, 22 Oct 2020 18:52:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 37A9920408;
	Thu, 22 Oct 2020 18:52:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ADBB21BF357
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 18:52:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A5B6E877AC
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 18:52:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OAH-8QbglGOV for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 18:52:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0441387183
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 18:52:47 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id h7so1732025pfn.2
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 11:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UPboJfWy2G3Fl7hwjyzYX4I9qIst4Uk/OLfG5LU/e2E=;
 b=VtKxX3880Ktn0xTFSYzIwEDHPTS945FNbgy5Gr9ePYlOcjKHowJfessighc9v6F0en
 LuknoiQUlSBxsAQPLJLt/drziu0AAwrOEzyhUcwmwHsfzlAgokLQ53YfZOV0mJ1FzJeD
 V/RcTixiSCbFKJCyLRQHl4yc2COxVriX0ZwYQmav4pYgvvT+EjnkpaVicrejbnDloVIk
 X69NaHzfPbEZYDyIKTszJJWoesjJRt/Mfyo263Y91yBXzQopSm8wFrQjL6KANAn1UNJ9
 np8MAbILaQqiWKg9w2R6c4aSkw1MLko9EBT4X7A/ELdcmFYyNndVmSZdwaD+9LAAHuWE
 zOiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UPboJfWy2G3Fl7hwjyzYX4I9qIst4Uk/OLfG5LU/e2E=;
 b=EOr6TprpHd+6hOHqh+SI5Pa0ysEh2SsaZjQt8xAcLjIyjPcp6CzMnIiuIx2xGHvGO1
 Cr7UjXTWqMcUblxNEx/DOnj1IXgEKy0/VjQKGOPf2Xc1liPontD2qz/0fSE8S2wQ75Ad
 qrBURMkJ6WMFAkPsnMKlsYkVOLS9qRnXBP/elYxOTMH+rPtzAVmYvyJU70QSyS4v2Ab2
 n4TlS9bG87+5UUcR5TzjtEpAbW9uT1FxR7tQfB6dMd7kZxROMCfgEDxDTOywwVq8Ygd3
 ISWKaugmRBnRMQUGKff9wOyOq2e2ZF4ATqU48GqQLf9KNHirwgdvguNzrQAA8pCZokic
 7Kqg==
X-Gm-Message-State: AOAM530xzjl7yzVV/JHXMALrSRUU5Kaz7hmzdLA5GaAs2lsIFzZeC9nW
 kqcB4Yi7SDVqbgWl9K1tUOdL0P+F1fWofKC8Fhk=
X-Google-Smtp-Source: ABdhPJxuxwguwZIz0oJ2B/3sUWcXzpnVtRm/MOSafV+Mdym/oG+j6niWLg7KAllKTq7L+Rkez2tw5MM5pbQzsafKqk0=
X-Received: by 2002:a05:6a00:22c2:b029:156:543:7c1d with SMTP id
 f2-20020a056a0022c2b029015605437c1dmr3771716pfj.40.1603392766581; Thu, 22 Oct
 2020 11:52:46 -0700 (PDT)
MIME-Version: 1.0
References: <20201022155858.20867-1-nsaenzjulienne@suse.de>
 <20201022155858.20867-11-nsaenzjulienne@suse.de>
In-Reply-To: <20201022155858.20867-11-nsaenzjulienne@suse.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 22 Oct 2020 21:53:35 +0300
Message-ID: <CAHp75VcB5oxXs38UH5taVGj21wUi3sHYdRPOj3wxa3yXg0vmUA@mail.gmail.com>
Subject: Re: [PATCH v2 10/10] pwm: Add Raspberry Pi Firmware based PWM bus
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-input <linux-input@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 22, 2020 at 9:05 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Adds support to control the PWM bus available in official Raspberry Pi
> PoE HAT. Only RPi's co-processor has access to it, so commands have to
> be sent through RPi's firmware mailbox interface.

>  drivers/pwm/pwm-raspberrypi.c | 221 ++++++++++++++++++++++++++++++++++

Name is completely confusing.
Please, make it unique enough to understand that this is exactly the
device it serves for.

For example, pwm-rpi-poe is better.

...

> + *  - Only normal polarity

Can't it be emulated? Isn't it 100% - duty cycle % ?


> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/pwm.h>

...

> +       ret = rpi_firmware_property(firmware, RPI_FIRMWARE_SET_POE_HAT_VAL,
> +                                   &msg, sizeof(msg));
> +       if (ret)
> +               return ret;

> +       else if (msg.ret)

Redundant 'else'

> +               return -EIO;

...

> +       ret = rpi_firmware_property(firmware, RPI_FIRMWARE_GET_POE_HAT_VAL,
> +                                   &msg, sizeof(msg));
> +       if (ret)
> +               return ret;

> +       else if (msg.ret)

Ditto.

> +               return -EIO;

...

> +       firmware_node = of_get_parent(dev->of_node);
> +       if (!firmware_node) {
> +               dev_err(dev, "Missing firmware node\n");
> +               return -ENOENT;
> +       }
> +
> +       firmware = rpi_firmware_get(firmware_node);
> +       of_node_put(firmware_node);
> +       if (!firmware)
> +               return -EPROBE_DEFER;

Looks like a hack.

...

> +       ret = pwmchip_remove(&rpipwm->chip);
> +       if (!ret)
> +               rpi_firmware_put(rpipwm->firmware);
> +
> +       return ret;

Can't you use the usual pattern?

  ret = ...
  if (ret)
    return ret;
  ...
  return 0;

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

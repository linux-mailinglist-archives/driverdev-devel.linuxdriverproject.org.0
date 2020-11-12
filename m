Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6938D2B0BA0
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 18:51:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C836987273;
	Thu, 12 Nov 2020 17:51:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pmcApacMIQdG; Thu, 12 Nov 2020 17:51:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B7BC87270;
	Thu, 12 Nov 2020 17:51:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C0AD1BF2EB
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 17:51:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7294E2E203
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 17:51:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4g-Zj4kh+Omu for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 17:51:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id B116F2E1CF
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 17:51:25 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id z24so4823183pgk.3
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 09:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EywCTDkeiYnus//+DkG9p7x5uOXcjsUoW/CpBJQjGh4=;
 b=V5FRj9dv8LZyKY//w8MnGopC83oSkh3/f67EKu2H49jcmyUNYveReXkMJBzGvyFd4q
 mKcvNnhVICd/UhAL/HH1jUpFUyrBz0394onSteeXHeV50i9Ez+UPXVRJ/ggkQfCzqgGm
 kZTUJSpVayCtwC4cSeh7i9ajykTWfmMo/ei8+RErGCyLv9pJdlXF4oU6ddtDfkVU1QZ3
 C/k7/c7VYeacSw8c3j9jFOs+fpuV13Cto+tr+PxtXt9xpKbVtuE00030bzHITnLQ8DGM
 vefvzjW/M2wcH5x0dDt9q//PluUhKPH7ylVjCzGUXYm7NdXATfhWLzirDL/eJBFpUpwn
 k6TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EywCTDkeiYnus//+DkG9p7x5uOXcjsUoW/CpBJQjGh4=;
 b=njGOcjyEsG/42ICa2hKiLaFC2kRUvur28wgRbdoo94HEf4FzB5zP6DuehQMYUaH4KV
 f24kIFdc7WItV6sHRKrY9vjodmEnGiQvO3qE860m8XpgdwShjG16jIGjedxIPAJvqZK6
 gabCk8OR9Oq33nkzGkeW38lT0ebslZjIZurxMituhS82Vg9iJorCqP4p4whTiMFcsamk
 mcIueGk7XUe5fZepThKmXwuIZGROm3m/AdtJLAm/fEF/Ei85JEXa07zyXsxSEZibPo4D
 2ySHxEcVhEoiZ4b0Sin0G2KXRUiAXrNiESJay5OmvA93WUzFDL50CAbjGv19qwgk8aZK
 go1g==
X-Gm-Message-State: AOAM531OVRQdEyI5D80c6Y5O7zn2xxHkimS4NB05TddGPbPm5CxZFgEh
 U92f7yYWi2edYTCHnIsB5CERamXaI+CxMJtRGHQ=
X-Google-Smtp-Source: ABdhPJxXX/B6x0+15Jl1eMPJKowvsEayj1f13ku4DPhKXTBbwSAC5XSxvuq5WfIMJ/rZXp3ScqiK3LDy0pqYaPrr47I=
X-Received: by 2002:a17:90b:fc6:: with SMTP id
 gd6mr287022pjb.181.1605203485218; 
 Thu, 12 Nov 2020 09:51:25 -0800 (PST)
MIME-Version: 1.0
References: <20201112163630.17177-1-nsaenzjulienne@suse.de>
 <20201112163630.17177-2-nsaenzjulienne@suse.de>
In-Reply-To: <20201112163630.17177-2-nsaenzjulienne@suse.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 12 Nov 2020 19:52:14 +0200
Message-ID: <CAHp75Vf9E7UWVDMs=eRjLjoSN6SVOWw9thNdnR8ruCL6GmY7JQ@mail.gmail.com>
Subject: Re: [PATCH v4 01/11] firmware: raspberrypi: Keep count of all
 consumers
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
 Scott Branden <sbranden@broadcom.com>, devicetree <devicetree@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-input <linux-input@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 12, 2020 at 6:40 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> When unbinding the firmware device we need to make sure it has no
> consumers left. Otherwise we'd leave them with a firmware handle
> pointing at freed memory.
>
> Keep a reference count of all consumers and introduce rpi_firmware_put()
> which will permit automatically decrease the reference count upon
> unbinding consumer drivers.

...

>  /**
> - * rpi_firmware_get - Get pointer to rpi_firmware structure.
>   * @firmware_node:    Pointer to the firmware Device Tree node.
>   *
> + * The reference to rpi_firmware has to be released with rpi_firmware_put().
> + *
>   * Returns NULL is the firmware device is not ready.
>   */
>  struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node)
>  {
>         struct platform_device *pdev = of_find_device_by_node(firmware_node);
> +       struct rpi_firmware *fw;
>
>         if (!pdev)
>                 return NULL;
>
> -       return platform_get_drvdata(pdev);
> +       fw = platform_get_drvdata(pdev);
> +       if (!fw)
> +               return NULL;
> +
> +       if (!kref_get_unless_zero(&fw->consumers))
> +               return NULL;

Don't we have a more traditional way of doing this, i.e.
try_module_get() coupled with get_device() ?

> +       return fw;
>  }


-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

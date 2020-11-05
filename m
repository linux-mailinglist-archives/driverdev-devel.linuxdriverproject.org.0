Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8C42A7AD0
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 10:43:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9B5EB22EC9;
	Thu,  5 Nov 2020 09:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y8DqXnBGPqEf; Thu,  5 Nov 2020 09:43:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 358FA22D0D;
	Thu,  5 Nov 2020 09:43:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7815E1BF4E2
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 09:43:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 69F7D22D0D
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 09:43:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K6xvwWcM3gOL for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 09:43:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 7E32722B25
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 09:43:02 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id ay21so840058edb.2
 for <devel@driverdev.osuosl.org>; Thu, 05 Nov 2020 01:43:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DeOBs8//T4JC8W2v/41RF/aONDtKGyNLXtxBMCRNHss=;
 b=CyY1MxxZtzoUExDGbmpfCTNbv0CVGls7p0kDIFJHKIwdCk8Bd4QEzlmsBdJkefe5kF
 bDVViaItqLXwHDLbA+q9Fr5dnVgW/1XDyTeTaEGjy3Dr6pOaBaYVENiOk6ilsVbG0/HL
 xeFbvtqJO3blOzIuCgaSSkafRYQolKoH227e+GB3iGCLhm5zzOLXRXW5GdbDuLploRFF
 FqXsj+CadpLYKdBoFr13XOn5hQRujYHvQqPzQkdCdrmCwaKQKlw9Ba8ZQB5ctigIBhSw
 tB7ZNrEGerTHA3/IxDKAXDu6f3oUcxTz8A/mJaAdvwYjPMhFzhGJbODSNOIOvro3aJbF
 ipug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DeOBs8//T4JC8W2v/41RF/aONDtKGyNLXtxBMCRNHss=;
 b=cXRooUdx6WdUvrPDOV9qoXNBvqmLzyPTrm9rlOHopje4NP8QpClHYbEshj5KL/bcsU
 kP/eo4WRqkM/dHg8pyS5pr10En6Z0rOd6sRMpzz9GAX7Of9GzBsXlbBBiMbosJ+XXDfL
 nCZde16aG9zsuKC04eXRqQZ3hJRuju5LvHpUs0VKSsrqbkglKP8mPs+UUXpSjmm+wNkI
 20js9wQmBt3ClERZsSqubk5BhDzdvl2qbTQ4X4DZLOmdyGJn8YSPIBXPSJpy1UkaRjo9
 W7RvEosnwCGDSQB0WSwPHl/wGDNKm1t7lZrqLvWV+Fb9hL1U+oF5icADHGTIPjkJo43l
 dnYQ==
X-Gm-Message-State: AOAM530Hk0OeINnEXKQ2YXVoY5EMy16ebHYSxVpp0m5yNUvMXXzFYvUF
 YvYk6yJSod3X+S9dQrUd7eXAA8SswO7+aRlyqbKXzg==
X-Google-Smtp-Source: ABdhPJybud6FTPvTcrbvBWnuDfmJGrn2QRie046seVglh3JPax7rANBITFnA8FFir54MK6PUKO/kndp9C8T8y77d14o=
X-Received: by 2002:a50:e442:: with SMTP id e2mr1738064edm.186.1604569380861; 
 Thu, 05 Nov 2020 01:43:00 -0800 (PST)
MIME-Version: 1.0
References: <20201104103938.1286-1-nsaenzjulienne@suse.de>
 <20201104103938.1286-2-nsaenzjulienne@suse.de>
 <CAMpxmJWJRcQQiLitJCLWKmhQVQWr3bMDY=td5FEn5uy2YZfwkA@mail.gmail.com>
 <47eaba0bc71c6e23bff87b8a01cebf0c6d12efd0.camel@suse.de>
In-Reply-To: <47eaba0bc71c6e23bff87b8a01cebf0c6d12efd0.camel@suse.de>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 5 Nov 2020 10:42:50 +0100
Message-ID: <CAMpxmJUZ23uYM3+_L2XvTXzvA48JWrxrhZaLnGAxTpJjFiERRA@mail.gmail.com>
Subject: Re: [PATCH v3 01/11] firmware: raspberrypi: Introduce
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

On Thu, Nov 5, 2020 at 10:28 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Hi Bartosz, thanks for the review.
>
> On Thu, 2020-11-05 at 10:13 +0100, Bartosz Golaszewski wrote:
> > > +/**
> > > + * devm_rpi_firmware_get - Get pointer to rpi_firmware structure.
> > > + * @firmware_node:    Pointer to the firmware Device Tree node.
> > > + *
> > > + * Returns NULL is the firmware device is not ready.
> > > + */
> > > +struct rpi_firmware *devm_rpi_firmware_get(struct device *dev,
> > > +                                          struct device_node *firmware_node)
> > > +{
> > > +       struct platform_device *pdev = of_find_device_by_node(firmware_node);
> > > +       struct rpi_firmware *fw;
> > > +
> > > +       if (!pdev)
> > > +               return NULL;
> > > +
> > > +       fw = platform_get_drvdata(pdev);
> > > +       if (!fw)
> > > +               return NULL;
> > > +
> > > +       if (!refcount_inc_not_zero(&fw->consumers))
> > > +               return NULL;
> > > +
> > > +       if (devm_add_action_or_reset(dev, rpi_firmware_put, fw))
> > > +               return NULL;
> > > +
> > > +       return fw;
> > > +}
> > > +EXPORT_SYMBOL_GPL(devm_rpi_firmware_get);
> >
> > Usually I'd expect the devres variant to simply call
> > rpi_firmware_get() and then schedule a release callback which would
> > call whatever function is the release counterpart for it currently.
> > Devres actions are for drivers which want to schedule some more
> > unusual tasks at driver detach. Any reason for designing it this way?
>
> Yes, see patch #8 where I get rid of rpi_firmware_get() altogether after
> converting all users to devres. Since there is no use for the vanilla version
> of the function anymore, I figured it'd be better to merge everything into
> devm_rpi_firmware_get(). That said it's not something I have strong feelings
> about.
>

I see. So the previous version didn't really have any reference
counting and it leaked the reference returned by
of_find_device_by_node(), got it. Could you just clarify for me the
logic behind the wait_queue in rpi_firmware_remove()? If the firmware
driver gets detached and remove() stops on the wait_queue - it will be
stuck until the last user releases the firmware. I'm not sure this is
correct. I'd prefer to see a kref with a release callback and remove
would simply decrease the kref and return. Each user would do the same
and then after the last user is detached the firmware would be
destroyed.

Don't we really have some centralized firmware subsystem that would handle this?

Bartosz
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2332530786A
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Jan 2021 15:44:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9E91C2E0E9;
	Thu, 28 Jan 2021 14:44:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w9J2FzUciE9w; Thu, 28 Jan 2021 14:44:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 09BD92DEC9;
	Thu, 28 Jan 2021 14:44:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F42051BF41B
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 14:44:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EBF6186B06
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 14:44:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hV008Ty4VsjF for <devel@linuxdriverproject.org>;
 Thu, 28 Jan 2021 14:44:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2419C86E3B
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 14:44:19 +0000 (UTC)
Received: by mail-pl1-f170.google.com with SMTP id d4so3440506plh.5
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 06:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=avzsR9HHm+QL99Sb8COQafM2D/UB+zvy2SDex57jg+0=;
 b=eXPiZkGMap/Z5070F49FN5G/JWvZTAyrzydO7aluQ4YdPKVTMjqoQAhTijEoidHgT2
 gnL3A6lvV0vgnmsdRENwEFqU8LUBpyg2T8tQHJy2qGiFpfIl7jLZcutY6shsYVDK1iO3
 +i9wott36RmTUX7SUEKypiTDIHvZ55/OB6SeO9y3vV4hHz9r5SjGS/9aU8qzp6Y6FTMZ
 4tuvoUXs5SA5d0C42SQWInTx1fbKvT+Qf6gNOPXoT8J0QVmqhB7kzXifklcnxn8PO8fB
 VZeVpLHbKWU2xliR4ivEVyUe+jkg2zFjJpRdFzq9LlNzj9m57aj/pB07yjhPr1qg3Yio
 xLnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=avzsR9HHm+QL99Sb8COQafM2D/UB+zvy2SDex57jg+0=;
 b=Mp7wlB3yXWg9q2l0urg1ZvtfoVe2Pv90N8noxfyUG7qlIYOWKEw4Aukade49KuRr0t
 RZN/ETIo+aYPF9/YMzxzOCpHUOV/W6WuOmYTZFIKLXBnIcHLOXxiNGoA9Iwj2n78xl9C
 Qcr1Oyc3zyyhaJeEnj5PXtnxjocX2n/E/HgpQrpGHZymGQMQdZql1GqfcLrO+NdZENXl
 1Gh+VQ5NK5q1UuwCtIoo4U/eHMgIFre1YGFya7dOacXlAnUDx0nZOV6dzy3/X98S5dSb
 x/D+pW4dwwviTGdvllUjA/YG5cIRA1+4vgy4BctuAk+LooI5Oq9MyZTaU3gc2Qru9dNk
 uaTw==
X-Gm-Message-State: AOAM531/WYAKROUy51sEd0IkBZTRGfKZtpDv/TJ6elkJyPqGcNdaW9QX
 r6eZDL9nrfh60fGBn+netyg+zS04mA4mM3PuHUQ=
X-Google-Smtp-Source: ABdhPJxdWZlfKzAXL6EI4mZXjZ6Qyag0y/Kfcll/RaipN/m7rOKpPNtVy7DUEFkxq10YSC0k4n+LayvZfsvZxen34VA=
X-Received: by 2002:a17:902:758b:b029:df:d1f6:9af9 with SMTP id
 j11-20020a170902758bb02900dfd1f69af9mr16603032pll.21.1611845058615; Thu, 28
 Jan 2021 06:44:18 -0800 (PST)
MIME-Version: 1.0
References: <1611838435-151774-1-git-send-email-zhangxuezhi3@gmail.com>
 <CAHp75Vd=ijxnamuSYuxNLeyhGMCod=HaXWrQ0W0+3QCsQAychg@mail.gmail.com>
In-Reply-To: <CAHp75Vd=ijxnamuSYuxNLeyhGMCod=HaXWrQ0W0+3QCsQAychg@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 28 Jan 2021 16:44:02 +0200
Message-ID: <CAHp75VcRxPVs0KHwaY8QZima489D2_hntuW0eUqdfK8HJ-gnKA@mail.gmail.com>
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

On Thu, Jan 28, 2021 at 4:33 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Thu, Jan 28, 2021 at 2:58 PM Carlis <zhangxuezhi3@gmail.com> wrote:

...

> Taking all together you probably need to create a helper and use it
> inside init_display(), like
>
> static int init_tearing_effect_line(struct fbtft_par *par)
> {
>   struct device *dev = par->info->device;
>   struct gpio_desc *te;
>   int irq, rc;
>
>   te = gpiod_get_optional(dev, "te", GPIOD_IN);
>   if (IS_ERR(te))
>            return dev_err_probe(dev, PTR_ERR(te), "Failed to request
> te GPIO\n");

Sorry, here I missed the following:

  /* Absence of TE IRQ is not critical */
  if (!te)
    return 0;

>   irq = gpiod_to_irq(te); // this value you have to save in the
> driver's (per device) data structure.
>
>   /* GPIO is locked as an IRQ, we may drop the reference */
>   gpiod_put(te);

...and here:

  if (irq < 0)
    return irq;

>   init_completion(&spi_panel_te); // should be in the (per device)
> data structure
>   rc = devm_request_irq(dev, irq,  spi_panel_te_handler,
> IRQF_TRIGGER_RISING, "TE_GPIO", par);
>   if (rc)
>                 return dev_err_probe(dev, rc, "TE IRQ request failed.\n");
>   disable_irq_nosync(irq);
>   return irq;
> }

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

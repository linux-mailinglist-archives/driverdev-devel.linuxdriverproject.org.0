Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B90C312EB9
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 11:18:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 266EC85B94;
	Mon,  8 Feb 2021 10:18:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 87shZG741_TP; Mon,  8 Feb 2021 10:18:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4321485BB5;
	Mon,  8 Feb 2021 10:18:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 122941BF3C9
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 10:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EA26787019
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 10:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HOeqTd0Lf1p8 for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 10:18:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
 [209.85.210.47])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C468A86FBD
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 10:18:12 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id d7so11400695otq.6
 for <devel@driverdev.osuosl.org>; Mon, 08 Feb 2021 02:18:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sYbVgLIX+r79AC92zSDbMeMyYfHTGLVOZJrkvK6/LKQ=;
 b=MrS1gsjgP5lEixbcwRt8HSQsFWhGYiT5QGtEICMcd9j6UkGWe6Jdf7BdrYg7mRkvFI
 fmVFlb2i6uomSK/TrfmZ0Y8CeKLcv1wiVIPtp+79KebpVSyimGYFcQHuqqZ/NKTpb9VU
 IyuW/2OvAtcVQ0j8C/Luz43nyd57sjcpHN3HKjJgRDXXndCUGePCjKjpzryfqDu5E4Ou
 MFO2vddqnRcStGznaCUWyZAIcZTxHrw9Vtf0Yq7tAqxkirExM5b2Ug4OHQ7BhStU0IQt
 VgK0/i6nk5vHb2ePGCXsCkowtXqjy38CLTPD9BtxFpFkqS+VbW/7J2KvQnbRVB2EFO4i
 2mtg==
X-Gm-Message-State: AOAM533A/zYrbzog9gGMn9gA6na3WXomsAndXXe/dk7dCvbZ8l8adkGA
 yx3u59hlQe87QeBi3As7Se0jQAEO00oesV0cGL8=
X-Google-Smtp-Source: ABdhPJzuE0WnFgQq2prS/EOzWrbfsuwPgtDDyydII7UXbUSgS/+JtVjC5DE9GL+Ns+9OFXHsGmG2zJDO4CdNX8b02MU=
X-Received: by 2002:a9d:77d6:: with SMTP id w22mr1010723otl.145.1612779492055; 
 Mon, 08 Feb 2021 02:18:12 -0800 (PST)
MIME-Version: 1.0
References: <20210207000030.256592-1-memxor@gmail.com>
 <20210207173441.2902acac@canb.auug.org.au>
 <20210207073827.7l7h3475tqgxxfte@apollo>
In-Reply-To: <20210207073827.7l7h3475tqgxxfte@apollo>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 8 Feb 2021 11:18:01 +0100
Message-ID: <CAMuHMdVE+a4gMwa206=CWCUzAPD9N5nnvsPa1avWq_t1isfizQ@mail.gmail.com>
Subject: Re: [PATCH] staging: emxx_udc: Fix incorrectly defined global
To: Kumar Kartikeya Dwivedi <memxor@gmail.com>
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
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Nishad Kamdar <nishadkamdar@gmail.com>, Greg KH <gregkh@linuxfoundation.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Kumar,

CC Nishad, Magnus, linux-renesas-soc,

On Sun, Feb 7, 2021 at 8:40 AM Kumar Kartikeya Dwivedi <memxor@gmail.com> wrote:
> On Sun, Feb 07, 2021 at 12:04:41PM IST, Stephen Rothwell wrote:
> > Given that drivers/staging/emxx_udc/emxx_udc.h is only included by
> > drivers/staging/emxx_udc/emxx_udc.c, shouldn't these variables just be
> > declared static in emxx_udc.c and removed from emxx_udc.h?
> >
>
> Either would be correct. I went this way because it was originally trying to
> (incorrectly) define a global variable instead. I guess they can be static now
> and when more users are added, the linkage can be adjusted as needed.
>
> Here's another version of the patch:
>
> --
> From 5835ad916ceeba620c85bc32f52ecd69f21f8dab Mon Sep 17 00:00:00 2001
> From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> Date: Sun, 7 Feb 2021 12:53:39 +0530
> Subject: [PATCH] staging: emxx_udc: Make incorrectly defined global static
>
> The global gpio_desc pointer and int vbus_irq were defined in the header,
> instead put the definitions in the translation unit and make them static as
> there's only a single consumer in emxx_udc.c.
>
> This fixes the following sparse warnings for this driver:
> drivers/staging/emxx_udc/emxx_udc.c: note: in included file:
> drivers/staging/emxx_udc/emxx_udc.h:23:18: warning: symbol 'vbus_gpio' was not
> declared. Should it be static?
> drivers/staging/emxx_udc/emxx_udc.h:24:5: warning: symbol 'vbus_irq' was not
> declared. Should it be static?
>
> Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>

Thanks for your patch!

> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -34,6 +34,9 @@
>  #define        DRIVER_DESC     "EMXX UDC driver"
>  #define        DMA_ADDR_INVALID        (~(dma_addr_t)0)
>
> +static struct gpio_desc *vbus_gpio;
> +static int vbus_irq;

While I agree these must be static, I expect the driver to be still
broken, as vbus_gpio is never set?

Commit 48101806c52203f6 ("Staging: emxx_udc: Switch to the gpio
descriptor interface") introduced both variables, which was presumably
never tested.

Magnus: perhaps we should just remove this driver?

> +
>  static const char      driver_name[] = "emxx_udc";
>  static const char      driver_desc[] = DRIVER_DESC;
>
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> index bca614d69..c9e37a1b8 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -20,8 +20,6 @@
>  /* below hacked up for staging integration */
>  #define GPIO_VBUS 0 /* GPIO_P153 on KZM9D */
>  #define INT_VBUS 0 /* IRQ for GPIO_P153 */
> -struct gpio_desc *vbus_gpio;
> -int vbus_irq;

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

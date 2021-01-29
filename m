Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB04308986
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 15:26:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C95EB22FB9;
	Fri, 29 Jan 2021 14:26:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DZzHfZiW+sAP; Fri, 29 Jan 2021 14:26:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EDC5F22B6D;
	Fri, 29 Jan 2021 14:26:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4AC881BF399
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 14:26:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 46CB986C1C
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 14:26:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gO54lwCOfEEh for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 14:26:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9012586C03
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 14:26:29 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id 11so6331133pfu.4
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 06:26:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gKot+C+cg9+Ev01rXvdXGRqtLzrKZ52Ei9azuadVGM0=;
 b=cb3sJYS3AAfqMFJCaxm189bXwU9JelSPPPfrbabQVUOnvVfVbq+aWPrpaIlSUT3bxK
 yfUqS8ONtfTLFnxvbcGCWjrWUHtg9wv+g1iKXsf7mO64p5EzBch2dGEBja01VaXwXusl
 SoW0JCnbWWt2YQXSusEFVa4BSE+KHjMVHcdjKB2LZyKeMdUtH3N0Ue126NqKuZ596Dpk
 idogO8YhA1EUer1ZdXv8ItElSGFgdBqZznkVi7aFp2510rSr8n8GG05UYd1Awm493NVe
 OSI+VnTnqgOAsdfxABHcrE+tqrxtVuGD/xbRO8kwD9ce4ZM84HaggsyJjDFj9MvXyGbD
 tttQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gKot+C+cg9+Ev01rXvdXGRqtLzrKZ52Ei9azuadVGM0=;
 b=WVprMF/PFhmLNcJPKU7LrwBnCtwLh2tf0eIC1fpJyaYh8QtX0pnmCN5Ws7uFxqPJTs
 6b8+gpyz3ObfGdcY6bbGOj4E6zsZitpZwBUmdxwj6Uafc4TdxjGIg+5YySOfS6/gCoOa
 kgslD9mLlyvTgUWrNn5xPXggaLKr4wogTkBfuTfY7z49+vewKBZe2EK1L12fz28wwLHW
 mXgQ35eCX+UhKcqi5jX8G4yKoF0t5lowfC9R5Kv6A2OMOf+HBW63W8FdgpfaYqWr0sUL
 qGaYfNXl0FfQuxt+FmjLSEie509jHPM/+aH34/0T98/fXKhG671wG14uJDYBt3oY4Hlv
 LCTg==
X-Gm-Message-State: AOAM531RD5yAKNs6R1BeHTTB27PHyY6xKHClIqMunxNb28SL+dhRgz6X
 SNuPUtsps18WC825xcPDxcE8X0IgoWPcVbKhUrQ=
X-Google-Smtp-Source: ABdhPJzJzWgnRosOtmIuUA7/LBUAIjwTZ2XBI5qt5CZfUrKcAqfeRuHPYgCyKUYhqEAxYFypiWQyKKnQjTKwybA/ios=
X-Received: by 2002:a63:e50:: with SMTP id 16mr5000762pgo.74.1611930389189;
 Fri, 29 Jan 2021 06:26:29 -0800 (PST)
MIME-Version: 1.0
References: <1611838435-151774-1-git-send-email-zhangxuezhi3@gmail.com>
 <CAHp75Vd=ijxnamuSYuxNLeyhGMCod=HaXWrQ0W0+3QCsQAychg@mail.gmail.com>
 <20210129130110.00003bb1@gmail.com>
 <CAHp75Vdi4H_zY3+QPSq_wmdf20B9xPeqsOT10JHfMLJESX77gA@mail.gmail.com>
 <20210129215638.000047b0@gmail.com>
In-Reply-To: <20210129215638.000047b0@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 29 Jan 2021 16:26:12 +0200
Message-ID: <CAHp75VcdOibSRuSBZYhFtEcVxuammYMfcnrUQGvS6ttArFxj6g@mail.gmail.com>
Subject: Re: [PATCH v12] staging: fbtft: add tearing signal detect
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

On Fri, Jan 29, 2021 at 3:56 PM carlis <zhangxuezhi3@gmail.com> wrote:
> On Fri, 29 Jan 2021 12:23:08 +0200
> Andy Shevchenko <andy.shevchenko@gmail.com> wrote:

We are almost there, I have no idea what Noralf or others are going to
say though.

...

> Hi, I apologize for what I said in the previous two emails. I missed
> one email you sent before, and now I probably understand what you
> meant. Here is a version I modified according to your suggestion:
>
> From 399e7fb91d1dcba4924cd38cc8283393c80b97e4 Mon Sep 17 00:00:00 2001
> From: Carlis <zhangxuezhi1@yulong.com>
> Date: Sun, 24 Jan 2021 22:43:21 +0800
> Subject: [PATCH v13] staging: fbtft: add tearing signal detect
>
> For st7789v IC,when we need continuous full screen refresh, it is best

Missed space after comma.

> to wait for the tearing effect line signal arrive to avoid screen

to arrive

> tearing.

...

> +#define PANEL_TE_TIMEOUT_MS  34 /* 60Hz for 16.6ms, configured as
> 2*16.6ms */ +

Move comment before the definition
/* comment */
#define DEFINITION

Also consider to use 33 ms as closest to what you mentioned in the comment.
Or leave it with mention that you are using ceil() value.

...

> +/**
> + * init_tearing_effect_line() - init tearing effect line

> + *

As per a few previous reviews.
Okay, I have noticed that the existing kernel-doc is written like
this, but it doesn't prevent you from avoiding this little mistake.

> + * @par: FBTFT parameter object
> + *
> + * Return: 0 on success, or a negative error code otherwise.
> + */
> +static int init_tearing_effect_line(struct fbtft_par *par)
> +{
> +       struct device *dev = par->info->device;
> +       struct gpio_desc *te;
> +       int rc;
> +
> +       te = gpiod_get_optional(dev, "te", GPIOD_IN);
> +       if (IS_ERR(te))
> +               return dev_err_probe(dev, PTR_ERR(te), "Failed to
> request te GPIO\n"); +

Below is okay, but needs a comment explaining why we return a success.

> +       if (!te)
> +               return 0;
> +
> +       par->irq_te = gpiod_to_irq(te);
> +
> +       /* GPIO is locked as an IRQ, we may drop the reference */
> +       gpiod_put(te);
> +
> +       if (par->irq_te < 0)
> +               return par->irq_te;

I recommend using a temporary variable. In such a case you won't need
to specifically check for negative error code. So, something like

int irq;

irq = ...

if (irq < 0)
  return irq;

->irq_te = irq;

> +       init_completion(&par->panel_te);
> +       rc = devm_request_irq(dev, par->irq_te, panel_te_handler,
> +                             IRQF_TRIGGER_RISING, "TE_GPIO", par);

Right. Now it needs a comment explaining the choice of rising edge type of IRQ.

> +       if (rc)
> +               return dev_err_probe(dev, rc, "TE IRQ request
> failed.\n"); +
> +       disable_irq_nosync(par->irq_te);
> +
> +       return 0;
> +}

...

> +       rc = init_tearing_effect_line(par);

> +       if (rc < 0)

Here is no need to specifically check against less than 0,
  if (ret)
will work nicely.

> +               return rc;

...

> +       if (par->irq_te)
> +               write_reg(par, MIPI_DCS_SET_TEAR_ON, 0x00);

Do you need to call MIPI_DCS_SET_TEAR_SCANLINE in this case?

Alos, when there is no IRQ, shouldn't we explicitly call
               write_reg(par, MIPI_DCS_SET_TEAR_OFF);
?

...

>  /**
> + * st7789v_write_vmem16_bus8() - write data to display

> + *

Redundant.

> + * @par: FBTFT parameter object
> + * @offset: offset from screen_buffer
> + * @len: the length of data to be written
> + *

> + * 16 bit pixel over 8-bit databus

Write 16-bit pixels over 8-bit data bus.

> + * Return: 0 on success, or a negative error code otherwise.
> + */

...

> +       if (par->irq_te) {
> +               enable_irq(par->irq_te);
> +               reinit_completion(&par->panel_te);
> +               ret = wait_for_completion_timeout(&par->panel_te,
> +
> msecs_to_jiffies(PANEL_TE_TIMEOUT_MS));
> +               if (ret == 0)
> +                       dev_err(dev, "wait panel TE time out\n");

timeout

> +
> +               disable_irq(par->irq_te);
> +       }

...

> + * @panel_te: completion for panel te line

TE line

> + * @irq_te: LCD Chip tearing effect line

"Linux IRQ for LCD..."

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

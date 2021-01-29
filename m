Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8669D30896E
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 15:02:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D6B5822E8C;
	Fri, 29 Jan 2021 14:02:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F0c+Zzj+Tp8U; Fri, 29 Jan 2021 14:02:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 10467204EF;
	Fri, 29 Jan 2021 14:01:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE64A1BF591
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 14:01:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BAF72872D5
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 14:01:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MK0V4UCE6Kll for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 14:01:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
 [209.85.215.171])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2DB63872CD
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 14:01:55 +0000 (UTC)
Received: by mail-pg1-f171.google.com with SMTP id o7so6752329pgl.1
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 06:01:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6CGKCVe1NqLUtuXRObbYbXGJnP4ybcUgmDDnBwwNgIM=;
 b=blGmnnDezyOzpsWm0ThENsJBDCqkVQH4JRiWS7gRqztEiEuHqGyHTAa4qFox6yiT50
 OLUXznPgAYum2JXERWL51NTxqKj2L95Hk/fUzZBWVc0mLcoo5ncLwtOOkC4Hhd3+pM8I
 hdI8sZuGmuoAUq/JpKZysAJX4oMk9SnhX7e1PMBXMeOzzGI6KeSUVsT6r5D7oHC1BxHH
 CzqVCW+6rrl4xjq2tmfBLoZWr192nUaS+dtdul0pAG7Bu/XDjNseNilpwKJhqQs9f77X
 8YsG+7mpzO289v9euCK3kDcRSXwwBVmhboOYsh9Tp/dMxm4QoiEhNxsVp3edFygTIiUl
 fvDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6CGKCVe1NqLUtuXRObbYbXGJnP4ybcUgmDDnBwwNgIM=;
 b=QBaMPteNyBvujShfVy4I93dH9BMSeNAVgKiGhm7VpclwlNiEHxrk9D1/Xz6o83E+qi
 ms3uEYTWLp7wXRWg1jNRVO1lghEr/J1v7eb4/LPe/MZTDlu3CRN4LShoahir2njA0qu4
 v5lG5tYTOeM/EpTmaHdgqO25RW5u48zrniyW5N87eGSpVCQi287ryggNf9SnU28+FPUV
 5pxMnPKifZclwEjO9a/WP57T3sZBSRH0Iz2G/E48TdR7IYtGeliqwadjugZWNtQqQPfN
 wWGobvTnhIGzWMzaUM1G7qb5YUSC90jcLH36bbrQUpCYfzv1kDd+uLJ+Qb/7k/GdT4+j
 eTFw==
X-Gm-Message-State: AOAM532kSB3wrFkO7WUpctlyEDMglSQakBJ6YHR+tASms5dudvBNGTWY
 S8Ns4OOm2iXHG6iY4Xua+IwBcLgGfemeRTFj13o=
X-Google-Smtp-Source: ABdhPJxS0C7ztH8NhIE2909dnQDnGaHlzTxdJSqSHb+jsgnnWDci5TPa7sLCnSfGoprUlgIGdrP5ltzJ/Lo3Tj2eeJ8=
X-Received: by 2002:a63:e50:: with SMTP id 16mr4885373pgo.74.1611928914673;
 Fri, 29 Jan 2021 06:01:54 -0800 (PST)
MIME-Version: 1.0
References: <1611838435-151774-1-git-send-email-zhangxuezhi3@gmail.com>
 <CAHp75Vd=ijxnamuSYuxNLeyhGMCod=HaXWrQ0W0+3QCsQAychg@mail.gmail.com>
 <20210129130110.00003bb1@gmail.com>
 <CAHp75Vdi4H_zY3+QPSq_wmdf20B9xPeqsOT10JHfMLJESX77gA@mail.gmail.com>
 <20210129204733.00003954@gmail.com>
In-Reply-To: <20210129204733.00003954@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 29 Jan 2021 16:01:38 +0200
Message-ID: <CAHp75VdOKH4QU6_HMeUrbhbpsBx0wRxjbxFZh=+1W+7hnxchkQ@mail.gmail.com>
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

On Fri, Jan 29, 2021 at 2:47 PM carlis <zhangxuezhi3@gmail.com> wrote:
> On Fri, 29 Jan 2021 12:23:08 +0200
> Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
> > On Fri, Jan 29, 2021 at 7:01 AM carlis <zhangxuezhi3@gmail.com> wrote:
> > > On Thu, 28 Jan 2021 16:33:02 +0200
> > > Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
> > > > On Thu, Jan 28, 2021 at 2:58 PM Carlis <zhangxuezhi3@gmail.com>
> > > > wrote:

...

> > Please, go again thru my comments and comments from others and
> > carefully address all of them everywhere in your contribution. If you
> > have questions, ask them in reply in the corresponding context.

...

> > > /**
> > >  * init_tearing_effect_line() - init tearing effect line
> >
> > >  *
> >
> > For example, above was commented on and hasn't been addressed here.
> >
> hi,here i can not get you.....

The above is a blank line which is redundant. It also applied to the
other function in the code.

> > >  * @par: FBTFT parameter object
> > >  *
> > >  * Return: 0 on success, < 0 if error occurred.
> > >  */
> > > static int init_tearing_effect_line(struct fbtft_par *par)
> > > {
> > >         struct device *dev = par->info->device;
> > >         struct gpio_desc *te;
> > >         int rc;
> > >
> > >         te = gpiod_get_optional(dev, "te", GPIOD_IN);
> > >         if (IS_ERR(te))
> > >                 return dev_err_probe(dev, PTR_ERR(te), "Failed to
> > >         request te GPIO\n");
> > >
> >
> > >         if (te) {
> >
> > This one is not like I suggested.
> Why? My thinking is that if the TE is not configured and NULL is
> returned, the initialization can still proceed.....

I have suggested to bail out immediately. It will reduce an
indentation level on the below code.

> > >                 par->irq_te = gpiod_to_irq(te);
> > >                 gpiod_put(te);
> > >
> >
> > >                 if (par->irq_te) {
> >
> > This is wrong.
>
> Why? i have read gpiod_to_irq code, if an error occurs, a negative
> value is returned, and zero is not possible,so I need this value to
> determine if TE IRQ is configured

It returns two possible cases:
 - error code (when negative)
 - Linux IRQ number otherwise

You check makes a no-op since in either variant it will proceed to the
request of IRQ, which is wrong in an error case.

> > >                         rc = devm_request_irq(dev,
> > >                                               par->irq_te,
> > >                 panel_te_handler,
> > >                                               IRQF_TRIGGER_RISING,
> > >                 "TE_GPIO", par);
> >
> > Try to use less LOCs.
> >
> > >                         if (rc)
> > >                                 return dev_err_probe(dev, rc, "TE
> > > IRQ request failed.\n");
> > >
> > >                         disable_irq_nosync(par->irq_te);
> > >                         init_completion(&par->panel_te);
> >
> > >                 } else {
> > >                         return dev_err_probe(dev, par->irq_te,
> > > "gpiod to TE IRQ failed.\n");
> > >                 }
> >
> > Again, it is not what had been suggested.
> >
> > >         }

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

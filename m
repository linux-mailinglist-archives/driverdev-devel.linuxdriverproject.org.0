Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B50A3056D9
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 10:26:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C865868B6;
	Wed, 27 Jan 2021 09:26:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OCRBLOpaz-wC; Wed, 27 Jan 2021 09:26:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A8528868AC;
	Wed, 27 Jan 2021 09:26:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5C6F1BF83A
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 09:26:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AD82087165
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 09:26:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OqrE6XXl1kIQ for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 09:26:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6BBA086E1A
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 09:26:37 +0000 (UTC)
Received: by mail-pf1-f182.google.com with SMTP id q131so805316pfq.10
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 01:26:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=VlZoZLBDHB4T/YMJIRvfZ215W20PBGmlP7rUa/kbeTE=;
 b=Rx6L/dzb+PTIyI7DqI/ktCHUMBm59DVOBMgR7YEtBRsitAiGP0B3mtvfCX5iqklZhq
 VXzl1QYGhSzgyS3d1UER9u9RkDlvCMnyGb0Z5wJKnXiBqh4pTGhN/E28k/apx6Z9imhW
 c95BvtjoreLkwhzwlCPSurK+3AVgYTsvqT7/24d6ProSzBX+FM4w3DhX5ni4/r9yKq44
 4ONeHfdbfLjPvWivYr0EP8gKpMebu2NmDwHyYnnKCLrt1QJK3eSmtGr7OcdxwmIrPBKG
 OtSaLuaUZxmyHalSyJEP/bn/Uuw4+pIdhdWyORK2s7NmPPRTqIa9NxVY02LrEX3jCrbS
 5sIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=VlZoZLBDHB4T/YMJIRvfZ215W20PBGmlP7rUa/kbeTE=;
 b=Fd6LPO4z5zmu1+vjS6Atzs8/nWWJWWZibSpf7ksj+GG+/c2P9vffkS13gkQ97YjJ+4
 eb3WEHas/I8m1uZzXIrUnsI20rjgBAZz+KWYblPdxNCMhq/D2QfNLUFYuit6h7AISIkL
 Fq47x+PMp3tRRAetCPMPAx9V7RZ82+G2w303Bjp8rW7XN7XcyRe/jWUA7Z7ePgnBGmED
 C1ljboseNDhUxjaxSwZcb0+YH4FaGpdFIgCrNTllJtHRbgLgwDJSbkEzZiq1YJAqMoX+
 z3vaxwfDiivVkTLNSwtDHWbKztxYgpITy4ENzUJ8B0bje6N978IyebowBs/52WzyT5aL
 JaEA==
X-Gm-Message-State: AOAM532SyC5Dh5gwnbIXrswqGtLaMTVQqJlKfW9YiwkRa2Pwaq1PMs/O
 IDR2Ftyf9weGDQO1skSzHok=
X-Google-Smtp-Source: ABdhPJxk9kiZWo3vZgXC5SEmEnufwVt5fJXqLZTuie25SOyDno9HYRBGpqPOmD+gQGQ5rRynQeJcsw==
X-Received: by 2002:a65:4385:: with SMTP id m5mr10413483pgp.296.1611739597098; 
 Wed, 27 Jan 2021 01:26:37 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id a21sm1829002pgd.57.2021.01.27.01.26.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jan 2021 01:26:36 -0800 (PST)
Date: Wed, 27 Jan 2021 17:26:31 +0800
From: carlis <zhangxuezhi3@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v6] fbtft: add tearing signal detect
Message-ID: <20210127172631.00001846@gmail.com>
In-Reply-To: <CAMuHMdV5VxNBNV-UMswKKZmQRFUvG+pnBbOOW8XJT8pbbvmp5Q@mail.gmail.com>
References: <1611732502-99639-1-git-send-email-zhangxuezhi3@gmail.com>
 <CAMuHMdV5VxNBNV-UMswKKZmQRFUvG+pnBbOOW8XJT8pbbvmp5Q@mail.gmail.com>
Organization: Tyzmig-ryrjum-8kedto
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
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
 Stefano Brivio <sbrivio@redhat.com>, Colin King <colin.king@canonical.com>,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 27 Jan 2021 10:00:13 +0100
Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> Hi Carlis,
> 
> On Wed, Jan 27, 2021 at 9:52 AM Carlis <zhangxuezhi3@gmail.com> wrote:
> > From: zhangxuezhi <zhangxuezhi1@yulong.com>
> >
> > For st7789v ic,add tearing signal detect to avoid screen tearing
> >
> > Signed-off-by: zhangxuezhi <zhangxuezhi1@yulong.com>  
> 
> Thanks for your patch!
> 
> > --- a/drivers/staging/fbtft/fb_st7789v.c
> > +++ b/drivers/staging/fbtft/fb_st7789v.c  
> 
> > @@ -82,6 +111,34 @@ enum st7789v_command {
> >   */
> >  static int init_display(struct fbtft_par *par)
> >  {
> > +       int rc;
> > +       struct device *dev = par->info->device;
> > +
> > +       par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
> > GPIOD_IN);
> > +       if (IS_ERR(par->gpio.te)) {
> > +               rc = PTR_ERR(par->gpio.te);
> > +               pr_err("Failed to request te gpio: %d\n", rc);
> > +               par->gpio.te = NULL;  
> 
> Errors (e.g. -EPROBE_DEFER) should be propagated upstream,
> not ignored.
> 
> > +       }
> > +       if (par->gpio.te) {
> > +               init_completion(&spi_panel_te);
> > +               mutex_init(&te_mutex);
> > +               rc = devm_request_irq(dev,
> > +                                     gpiod_to_irq(par->gpio.te),
> > +                                    spi_panel_te_handler,
> > IRQF_TRIGGER_RISING,
> > +                                    "TE_GPIO", par);
> > +               if (rc) {
> > +                       pr_err("TE request_irq failed.\n");
> > +                       devm_gpiod_put(dev, par->gpio.te);
> > +                       par->gpio.te = NULL;  
> 
> Errors (e.g. -EPROBE_DEFER) should be propagated upstream,
> not ignored.
> 
> > +               } else {
> > +
> > disable_irq_nosync(gpiod_to_irq(par->gpio.te));
> > +                       pr_info("TE request_irq completion.\n");
> > +               }
> > +       } else {
> > +               pr_info("%s:%d, TE gpio not specified\n",
> > +                       __func__, __LINE__);
> > +       }
> >         /* turn off sleep mode */
> >         write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
> >         mdelay(120);  
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

hi,i will fix in the patch v7
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

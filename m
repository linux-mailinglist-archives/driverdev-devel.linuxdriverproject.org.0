Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54559305DCB
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 15:03:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF1E886843;
	Wed, 27 Jan 2021 14:03:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kmVyzRQkP4J5; Wed, 27 Jan 2021 14:03:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B49DA8684A;
	Wed, 27 Jan 2021 14:03:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0CDB41BF301
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 14:03:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3BD122279B
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 14:03:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ewgzdfB8yCZk for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 14:03:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by silver.osuosl.org (Postfix) with ESMTPS id 0F6962083F
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 14:03:30 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id j21so1081362pls.7
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 06:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=Rm0ICr4+gWtimOBm/Mxt0G53NyPrN1eFZSwJiNK3hWs=;
 b=KEQUBMhMDJ9TfyDfOif7F0kRrW9aEPKZIr8D8LhjegOZu7ZflSg0kfzCl+pPeA0L0m
 bpxBsRWWkvx3jGY1eg6Ejx7eSvjsd2UP6PLLTpWqAvYlS1irAc8DpR0FTC89F1O+Rrvx
 kiZlGg0m80oVkQZ3L9e3oPnU+05vjunleQIeeDPXpdddVrlDTzcsuzrvSgEEkwd7GoEZ
 ywhhCwBHkoXhiSIQJbYng9UhePzUxH3jWhafmEXpr/t7qpNYD3dslMUxS7IqmQWZfwJI
 PybZJBnjFbmikkGLL5NELmObI8d93WGh9c0QVix51YF3LLj8Lr1P8KIMhlzAxlZ1LzUZ
 VgXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=Rm0ICr4+gWtimOBm/Mxt0G53NyPrN1eFZSwJiNK3hWs=;
 b=ikorBplXM7ljHUkTkj4NstbkLsCjokO+yon9mX4PRP4Agj6Rz5AI5KvEd3AMB82tL4
 6MtYxxwmAMWtNOBR0p+LePApYncErTCaOOnH9szrssFKujSvKME+j+deTnSHReWtU4GC
 kb70D101qM1MVfY+29TsigeMfMhDiyc1mKJyLb12j62spVRuPN3GlI99BnXZjRHWcxGq
 Lo07H3zAwk2D3VaOW285epYyjv6Nc25kJj7NBOHjqNlKraGiCmjuP44xqs5lcqOq7EXh
 7ZMmnhkRbKvM8g/9QOHlpYMs0hIYWVQAa97zyx5l4OoCs0zeDNnLSWkYYBjvLZNPqEwY
 4sWA==
X-Gm-Message-State: AOAM531pChefDoXD09dpbZKx82RYBx5Cnc/RxTMkjOCCrTgwacGR3kr1
 hF6ral2gCHAsfGVmUww7dlE=
X-Google-Smtp-Source: ABdhPJydrXhdwuBTn7I8gPbvmJ5xFHq43eHnRQMEk6NQOg682yGlA8XRBj0RwNK2AJvIMbbllFSEYQ==
X-Received: by 2002:a17:90a:bc49:: with SMTP id
 t9mr5880493pjv.95.1611756209669; 
 Wed, 27 Jan 2021 06:03:29 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id 6sm2615255pgo.17.2021.01.27.06.03.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jan 2021 06:03:28 -0800 (PST)
Date: Wed, 27 Jan 2021 22:03:23 +0800
From: carlis <zhangxuezhi3@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v9] staging: fbtft: add tearing signal detect
Message-ID: <20210127220323.00007922@gmail.com>
In-Reply-To: <CAMuHMdV=dsLv0stGa8OThOYLz2xG0Gg7EOYuFcKBeu+T_wANuw@mail.gmail.com>
References: <1611752257-150851-1-git-send-email-zhangxuezhi3@gmail.com>
 <CAMuHMdV=dsLv0stGa8OThOYLz2xG0Gg7EOYuFcKBeu+T_wANuw@mail.gmail.com>
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

On Wed, 27 Jan 2021 14:47:04 +0100
Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> Hi Carlis,
> 
> On Wed, Jan 27, 2021 at 2:03 PM Carlis <zhangxuezhi3@gmail.com> wrote:
> > From: zhangxuezhi <zhangxuezhi1@yulong.com>
> >
> > For st7789v ic,add tearing signal detect to avoid screen tearing
> >
> > Signed-off-by: zhangxuezhi <zhangxuezhi1@yulong.com>
> > ---
> > v9: change pr_* to dev_*  
> 
> Thanks for the update!
> 
> > --- a/drivers/staging/fbtft/fb_st7789v.c
> > +++ b/drivers/staging/fbtft/fb_st7789v.c
> > @@ -9,9 +9,12 @@
> >  #include <linux/delay.h>
> >  #include <linux/init.h>
> >  #include <linux/kernel.h>
> > +#include <linux/mutex.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/completion.h>
> >  #include <linux/module.h>
> >  #include <video/mipi_display.h>
> > -
> > +#include <linux/gpio/consumer.h>
> >  #include "fbtft.h"
> >
> >  #define DRVNAME "fb_st7789v"
> > @@ -66,6 +69,32 @@ enum st7789v_command {
> >  #define MADCTL_MX BIT(6) /* bitmask for column address order */
> >  #define MADCTL_MY BIT(7) /* bitmask for page address order */
> >
> > +#define SPI_PANEL_TE_TIMEOUT   400
> > +static struct mutex te_mutex;/*mutex for tearing line*/
> > +static struct completion spi_panel_te;
> > +
> > +static irqreturn_t spi_panel_te_handler(int irq, void *data)
> > +{
> > +       complete(&spi_panel_te);
> > +       return IRQ_HANDLED;
> > +}
> > +
> > +static void set_spi_panel_te_irq_status(struct fbtft_par *par,
> > bool enable) +{
> > +       static int te_irq_count;
> > +
> > +       mutex_lock(&te_mutex);
> > +
> > +       if (enable) {
> > +               if (++te_irq_count == 1)
> > +                       enable_irq(gpiod_to_irq(par->gpio.te));
> > +       } else {
> > +               if (--te_irq_count == 0)
> > +                       disable_irq(gpiod_to_irq(par->gpio.te));
> > +       }
> > +       mutex_unlock(&te_mutex);
> > +}
> > +
> >  /**
> >   * init_display() - initialize the display controller
> >   *
> > @@ -82,6 +111,33 @@ enum st7789v_command {
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
> > +               dev_err(par->info->device, "Failed to request te
> > gpio: %d\n", rc);  
> 
> This also prints an error in case of -EPROBE_DEFER.
> dev_err_probe()?
> 
> > +               return rc;
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
> > +                       dev_err(par->info->device, "TE request_irq
> > failed.\n");
> > +                       devm_gpiod_put(dev, par->gpio.te);  
> 
> No need to call devm_gpiod_put() here, as it's managed automatically.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

hi,i will fix in patch v11
regards
zhangxuezhi1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

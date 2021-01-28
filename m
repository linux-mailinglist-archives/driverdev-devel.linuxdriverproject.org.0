Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BED307451
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Jan 2021 12:03:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D8862873D1;
	Thu, 28 Jan 2021 11:03:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LVYSvoDzLUwm; Thu, 28 Jan 2021 11:03:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C702D86FCA;
	Thu, 28 Jan 2021 11:03:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 833CF1BF57B
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 11:03:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6F2891FC71
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 11:03:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bA1jpkHsF0OU for <devel@linuxdriverproject.org>;
 Thu, 28 Jan 2021 11:03:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by silver.osuosl.org (Postfix) with ESMTPS id B06C52DADE
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 11:03:09 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id d13so3136038plg.0
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 03:03:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=sBkTD1ZtjeS8jkP5hzFFT8Mun2/mkX9YEzpaHUFxKDc=;
 b=oWU+dINW3A0WDBPghq7TwOLXYGxn8ZkRNOSVDRg1ZoLaH3tdPLGkRb+/TjL3IYxi/t
 yL01IxDEFsbuWL4/FWKNeq1HG3nMJdFjnT2B+aCjX71phI82H9u7q+C3c6FPZBQmQ5Xm
 TpjmQbpkFZzMPm029X2JLq2jCljq1OAfy3e177WBsYDvmrP+uingSJpcWoKlqG18IpS9
 PUxzurfgaUSLguu4Hw5ChRSCchxcXAUIY7YqXj129oIJ+GGqABf2Jp9ctWIVMxJrFmMj
 qERYj5C96cgwnz//AGUDzeow2Ps8or8pBU4WPRZZcO0P8+S3B7XWK2ABKcw0nlHrM8YP
 J4RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=sBkTD1ZtjeS8jkP5hzFFT8Mun2/mkX9YEzpaHUFxKDc=;
 b=F7UzquigyKwCB0CsSvkP0mAH1tQ4VKjDnjGIIGc3BtuRnV3EB/NA+5md4zO81KBFHF
 uI6HH8NpkVkfsV0GTlBhHXb+XmCluWEHVfLqKJJEn/Y+tgutUFs2qXO9wzWJOJ9E6+DM
 PUaixn5NtDkpguwZOcDtkThYJooVD3xmXkTxGPDB9nM3K7h0ce3QlL+N21WWJ/E2HyWc
 rbjf303wvgIvZwtaExbYy3Meu/UjUJmuHob6ZWC7YIaUxToEMH+3ffnzESGQ9h2mm9Qv
 N2ZBJQdlcRL4QiS7Yz4F0R4tA6JijDYpxDUCHeO3zq+nRnr7cVsD5PwIPTZpJeeLpRf8
 GmaA==
X-Gm-Message-State: AOAM530UbAySEh9Y6T+GWxhXm1DKSME7QQFLpxrBmCfbt2yPGLdNiy+z
 DiZUSdS3sLJxS/A0YHZnXwk=
X-Google-Smtp-Source: ABdhPJxuKefhxuATg5SzADrFU6X/JMwte19Bjrcs0K6eys/yFrX6MPMndXfWktd7S71LXqppupaCdg==
X-Received: by 2002:a17:90a:db50:: with SMTP id
 u16mr10793125pjx.39.1611831789172; 
 Thu, 28 Jan 2021 03:03:09 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id h6sm5685953pfr.47.2021.01.28.03.03.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jan 2021 03:03:08 -0800 (PST)
Date: Thu, 28 Jan 2021 19:03:01 +0800
From: carlis <zhangxuezhi3@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v10] staging: fbtft: add tearing signal detect
Message-ID: <20210128190301.00007ebe@gmail.com>
In-Reply-To: <CAMuHMdWK0wbMVJNwSW=pafsyjDVg14h2AX=haJeAkyivehP=JQ@mail.gmail.com>
References: <1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com>
 <20210127223222.3lavtl3roc4cabso@kari-VirtualBox>
 <20210128094258.000012c3@gmail.com>
 <20210128065233.ji4b7ea54ihyu2l5@kari-VirtualBox>
 <CAMuHMdWK0wbMVJNwSW=pafsyjDVg14h2AX=haJeAkyivehP=JQ@mail.gmail.com>
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
 mh12gx2825@gmail.com, Stefano Brivio <sbrivio@redhat.com>,
 Greg KH <gregkh@linuxfoundation.org>, oliver.graute@kococonnector.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Kari Argillander <kari.argillander@gmail.com>,
 Colin King <colin.king@canonical.com>, zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 28 Jan 2021 10:42:54 +0100
Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> Hi Kari,
> 
> On Thu, Jan 28, 2021 at 7:53 AM Kari Argillander
> <kari.argillander@gmail.com> wrote:
> > On Thu, Jan 28, 2021 at 09:42:58AM +0800, carlis wrote:  
> > > On Thu, 28 Jan 2021 00:32:22 +0200
> > > Kari Argillander <kari.argillander@gmail.com> wrote:  
> > > > >  #include "fbtft.h"
> > > > >
> > > > >  #define DRVNAME "fb_st7789v"
> > > > > @@ -66,6 +69,32 @@ enum st7789v_command {
> > > > >  #define MADCTL_MX BIT(6) /* bitmask for column address order
> > > > > */ #define MADCTL_MY BIT(7) /* bitmask for page address order
> > > > > */
> > > > >
> > > > > +#define SPI_PANEL_TE_TIMEOUT     400 /* msecs */
> > > > > +static struct mutex te_mutex;/* mutex for set te gpio irq
> > > > > status */  
> > > >
> > > > Space after ;  
> > > hi, i have fix it in the patch v11  
> > > >  
> >
> > Yeah sorry. I accidentally review wrong patch. But mostly stuff are
> > still relevant.
> >  
> > > > > @@ -82,6 +111,33 @@ enum st7789v_command {
> > > > >   */
> > > > >  static int init_display(struct fbtft_par *par)
> > > > >  {
> > > > > + int rc;
> > > > > + struct device *dev = par->info->device;
> > > > > +
> > > > > + par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
> > > > > GPIOD_IN);
> > > > > + if (IS_ERR(par->gpio.te)) {
> > > > > +         rc = PTR_ERR(par->gpio.te);
> > > > > +         dev_err(par->info->device, "Failed to request te
> > > > > gpio: %d\n", rc);
> > > > > +         return rc;
> > > > > + }  
> > > >
> > > > You request with optinal and you still want to error out? We
> > > > could just continue and not care about that error. User will be
> > > > happier if device still works somehow.  
> 
> devm_gpiod_get_index_optional() returns NULL, not an error, if the
> GPIO is not found.  So if IS_ERR() is the right check.
> 
> And checks for -EPROBE_DEFER can be handled automatically
> by using dev_err_probe() instead of dev_err().
> 
hi, i fix it like below!?
	par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
	GPIOD_IN); if (IS_ERR(par->gpio.te)) {
		rc = PTR_ERR(par->gpio.te);
		dev_err_probe(par->info->device, rc, "Failed to request
	te gpio\n"); return rc;
	}
	if (par->gpio.te) {
		init_completion(&spi_panel_te);
		rc = devm_request_irq(dev,
				      gpiod_to_irq(par->gpio.te),
				     spi_panel_te_handler,
	IRQF_TRIGGER_RISING, "TE_GPIO", par);
		if (rc) {
			dev_err(par->info->device, "TE request_irq
	failed.\n"); return rc;
		}

		disable_irq_nosync(gpiod_to_irq(par->gpio.te));
	} else {
		dev_info(par->info->device, "%s:%d, TE gpio not
		specified\n", __func__, __LINE__);
	}


> > > You mean i just delete this dev_err print ?!
> > > like this:
> > >       par->gpio.te = devm_gpiod_get_index_optional(dev, "te",
> > > 0,GPIOD_IN);
> > >         if (IS_ERR(par->gpio.te))
> > >               return PTR_ERR(par->gpio.te);  
> >
> > Not exactly. I'm suggesting something like this.
> >
> > if (IS_ERR(par->gpio.te) == -EPROBE_DEFER) {
> >         return -EPROBE_DEFER;
> >
> > if (IS_ERR(par->gpio.te))
> >         par-gpio.te = NULL;
> >
> > This like beginning of your patch series but the difference is that
> > if EPROBE_DEFER then we will try again later. Any other error and
> > we will just ignore TE gpio. But this is up to you what you want to
> > do. To me this just seems place where this kind of logic can work.  
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

regards,
zhangxuezhi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

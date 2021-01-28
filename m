Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E78F306DE2
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Jan 2021 07:52:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2BC2D864EC;
	Thu, 28 Jan 2021 06:52:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0TgluRNNKIKv; Thu, 28 Jan 2021 06:52:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D080864EE;
	Thu, 28 Jan 2021 06:52:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D84781BF83C
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 06:52:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D4F04873B4
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 06:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6dG6LxZ4F33v for <devel@linuxdriverproject.org>;
 Thu, 28 Jan 2021 06:52:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D2AD1873B3
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 06:52:37 +0000 (UTC)
Received: by mail-lj1-f172.google.com with SMTP id t8so5011031ljk.10
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 22:52:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0f8ZmrzuRXVxsk0SyBLitP6T9N64hUKSEphOtPuOnnU=;
 b=s+g+9RsgEvfyHBAfUcVSsvVK/MPPAhyVtK61GUGybbJo3USYD2l22Xsq5KyeCpb0f/
 l1xM12+qQnzcDbEEwE5NLLvrD1GkzD3o6ODrZXwCpwUiuHBGvcW4/gcxN7/QesOCbvRw
 qZzz213l28pva/a4EMbmsfli5alFUpJDcK/5ctFYL7S4mKgjcuLe+HBeNwfv31f6o592
 eefP7qqqkvXrSvxcezl8+8YrbiZi7tbRSVFNpUxApCFR8x48GWr/a6UXw8+gm5GA7cXU
 PldFlVfnAt6ruHdg4Fzwg0D6SryNeBQPFysHDqBV57Tk611P+KNV7o5H2hSK6tRoFJHJ
 a9Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0f8ZmrzuRXVxsk0SyBLitP6T9N64hUKSEphOtPuOnnU=;
 b=rGfYRP07b0++MkxPQNSfLzsEkCNlfVXGoj0V1ztrhCvyiHXW6IUvbB+hB5koHIUaCM
 Cu+QEGdh8z8a52u8JCE07DCoFvQmuZAMO1sMIUDrYhHkKQmadIXlPp2hAzG7Hq9g6uWJ
 de3nAqp0bRB6Plczj27dtJF9/BuHD8aY2LWLlfvMYIXahwpB1cKW8W6vRl4t6OXqlIE/
 H7rF6zccftEtix3l/W8i80YpW3CqEsyiMA+fC31yERiVtM45fInp3XLL7kPaaaUlYmD9
 QYurmbt0kYMpINZohXuiSczyG0K0vRgDjfEawj7R+zKluCEp+QW/pR/I0IUuk07iBxJr
 6iKg==
X-Gm-Message-State: AOAM532PMj424B82WunD1lcEdjkbswO69b4Kf0yIOA/0EqWrbp0irKFn
 Ab/zIa93vNyHfwhdvWgiiKc=
X-Google-Smtp-Source: ABdhPJzrGUlABaISZ4hc6GbDuExEK/6vRiKAKwuM77hmE1jRQLaxmTiugZ80sCFhjv+vgSxmjuzXCw==
X-Received: by 2002:a2e:8106:: with SMTP id d6mr7678908ljg.217.1611816755777; 
 Wed, 27 Jan 2021 22:52:35 -0800 (PST)
Received: from kari-VirtualBox (87-95-193-210.bb.dnainternet.fi.
 [87.95.193.210])
 by smtp.gmail.com with ESMTPSA id o4sm1313687lfo.231.2021.01.27.22.52.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jan 2021 22:52:35 -0800 (PST)
Date: Thu, 28 Jan 2021 08:52:33 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: carlis <zhangxuezhi3@gmail.com>
Subject: Re: [PATCH v10] staging: fbtft: add tearing signal detect
Message-ID: <20210128065233.ji4b7ea54ihyu2l5@kari-VirtualBox>
References: <1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com>
 <20210127223222.3lavtl3roc4cabso@kari-VirtualBox>
 <20210128094258.000012c3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128094258.000012c3@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 mh12gx2825@gmail.com, gregkh@linuxfoundation.org,
 oliver.graute@kococonnector.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, sbrivio@redhat.com, colin.king@canonical.com,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jan 28, 2021 at 09:42:58AM +0800, carlis wrote:
> On Thu, 28 Jan 2021 00:32:22 +0200
> Kari Argillander <kari.argillander@gmail.com> wrote:
> > >  #include "fbtft.h"
> > >  
> > >  #define DRVNAME "fb_st7789v"
> > > @@ -66,6 +69,32 @@ enum st7789v_command {
> > >  #define MADCTL_MX BIT(6) /* bitmask for column address order */
> > >  #define MADCTL_MY BIT(7) /* bitmask for page address order */
> > >  
> > > +#define SPI_PANEL_TE_TIMEOUT	400 /* msecs */
> > > +static struct mutex te_mutex;/* mutex for set te gpio irq status
> > > */  
> > 
> > Space after ;
> hi, i have fix it in the patch v11
> > 

Yeah sorry. I accidentally review wrong patch. But mostly stuff are
still relevant.

> > > @@ -82,6 +111,33 @@ enum st7789v_command {
> > >   */
> > >  static int init_display(struct fbtft_par *par)
> > >  {
> > > +	int rc;
> > > +	struct device *dev = par->info->device;
> > > +
> > > +	par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
> > > GPIOD_IN);
> > > +	if (IS_ERR(par->gpio.te)) {
> > > +		rc = PTR_ERR(par->gpio.te);
> > > +		dev_err(par->info->device, "Failed to request te
> > > gpio: %d\n", rc);
> > > +		return rc;
> > > +	}  
> > 
> > You request with optinal and you still want to error out? We could
> > just continue and not care about that error. User will be happier if
> > device still works somehow.
> You mean i just delete this dev_err print ?!
> like this:
> 	par->gpio.te = devm_gpiod_get_index_optional(dev, "te",
> 0,GPIOD_IN); 
>         if (IS_ERR(par->gpio.te))
> 		return PTR_ERR(par->gpio.te);

Not exactly. I'm suggesting something like this.

if (IS_ERR(par->gpio.te) == -EPROBE_DEFER) {
	return -EPROBE_DEFER;

if (IS_ERR(par->gpio.te))
	par-gpio.te = NULL;

This like beginning of your patch series but the difference is that if
EPROBE_DEFER then we will try again later. Any other error and we will
just ignore TE gpio. But this is up to you what you want to do. To me
this just seems place where this kind of logic can work.

> > > +		if (par->gpio.te) {
> > > +			set_spi_panel_te_irq_status(par, true);
> > > +			reinit_completion(&spi_panel_te);
> > > +			ret =
> > > wait_for_completion_timeout(&spi_panel_te,
> > > +
> > > msecs_to_jiffies(SPI_PANEL_TE_TIMEOUT));
> > > +			if (ret == 0)  
> > 
> > !ret
> > 
> > > +				dev_err(par->info->device, "wait
> > > panel TE time out\n");
> > > +		}
> > > +		ret = par->fbtftops.write(par, par->txbuf.buf,
> > > +					 startbyte_size + to_copy
> > > * 2);
> > > +		if (par->gpio.te)
> > > +			set_spi_panel_te_irq_status(par, false);
> > > +		if (ret < 0)
> > > +			return ret;
> > > +		remain -= to_copy;
> > > +	}
> > > +
> > > +	return ret;  
> > 
> > Do we want to return something over 0? If not then this can be return
> > 0. And then you do not need to even init ret value at the beginning.
> > 
> > Also wait little bit like Greg sayd before sending new version.
> > Someone might nack about what I say or say something more.
> > 
> hi, i copy fbtft_write_vmem16_bus8 from file fbtft_bus.c and modify it
> ,just add te wait logic, i will take more time to check this original
> function.

It might be ok or not. You should still check.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

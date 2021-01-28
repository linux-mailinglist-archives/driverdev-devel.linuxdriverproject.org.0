Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AAB3074FA
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Jan 2021 12:42:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D5536873CE;
	Thu, 28 Jan 2021 11:42:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ToveLdACyMFF; Thu, 28 Jan 2021 11:42:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3CFF1873B2;
	Thu, 28 Jan 2021 11:42:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA4C81BF316
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 11:42:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D64FB873B2
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 11:42:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iID1aX4Hk5ca for <devel@linuxdriverproject.org>;
 Thu, 28 Jan 2021 11:42:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4A57787340
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 11:42:28 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id a20so3707018pjs.1
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 03:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=KO0WExq/gHwR9DEe69o/s4rzo4GEwimZkxdlRgtkdt8=;
 b=VorbS2Tww05G2RqblM7MjH3U2m09eiWPvsMMzTgplJBDvbzex346FvkybynsGJxywL
 d/tTzS9AXbxEBBsRt3VBvVgOdiRb6Bg7EEO9MkK8OIAWNcKnAbl6GvcDUKGkXDKDVn1r
 UtFO0srYd92w9V1xeiiHEWp647E7S5z2ykDVb6TeRuoEYKGTP2CBfWwAvF/WrkCZFGiO
 a0UEfWtIXrq1z+ATFCuaOK5JiFZiEVAzYga0jeL3odQZuZ6aiMcDfYqhJefv1gbL+sUt
 vpJvYmwCao30fSrvvDxqmALvWKSaUPuNXbGoo9pNOXWB6rA+CdxQaZV96Y/KliwNM4ix
 pEEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=KO0WExq/gHwR9DEe69o/s4rzo4GEwimZkxdlRgtkdt8=;
 b=P9RuNP/cnuZexcZzHxv1RV9NyqA0LzBTkaskZ/FHSdvtzCX5W1mDRuUWKEA9YwTkro
 uY+iJjyQG0I32BxdsV54OPu/0ds8wdpchIIykHluAgFbwFaC9imxYJTmJYR5jffLt1vX
 Ca3N5xVP7JbS3E97ZBE6NFgmNdDWs7tFPNE3wFVh38ZkjghnRccjT+TI+F1pYBeiUikZ
 PgzROqDB5tHLGx/uhkzsfeqRhuW9dl+AD4OZOV4G6U04X3aSlYQcPN5m3T0O50B/dGHP
 Y2r2YJ/TkLmz6VXKr0y3gp2ciR8G0+fKnTWteJNUZzI+uSQaJZZbc8vV2HqcwIWueVZ9
 v5mg==
X-Gm-Message-State: AOAM530VMyCbNxcNvbdAIDdeaRtxZ4fZe0X1bJst2e32oR4TyBEUZnxI
 LuEsSeejGLZBj3pdyourkKw=
X-Google-Smtp-Source: ABdhPJwhUxpcLrJ3VbBzjIIFavVwOeiK8Zh32aX7HjZx9zUI906jfdBNLiTExTZ8v0icX5Dqz5kJUw==
X-Received: by 2002:a17:90a:eacf:: with SMTP id
 ev15mr10877278pjb.209.1611834147786; 
 Thu, 28 Jan 2021 03:42:27 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id w16sm2497434pfj.103.2021.01.28.03.42.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jan 2021 03:42:27 -0800 (PST)
Date: Thu, 28 Jan 2021 19:42:21 +0800
From: carlis <zhangxuezhi3@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v10] staging: fbtft: add tearing signal detect
Message-ID: <20210128194221.0000364e@gmail.com>
In-Reply-To: <CAMuHMdX50YJ6_=maJveDk=dh+suFeCEtarWrqoP_gNMP9k922Q@mail.gmail.com>
References: <1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com>
 <20210127223222.3lavtl3roc4cabso@kari-VirtualBox>
 <20210128094258.000012c3@gmail.com>
 <20210128065233.ji4b7ea54ihyu2l5@kari-VirtualBox>
 <CAMuHMdWK0wbMVJNwSW=pafsyjDVg14h2AX=haJeAkyivehP=JQ@mail.gmail.com>
 <20210128190301.00007ebe@gmail.com>
 <CAMuHMdX50YJ6_=maJveDk=dh+suFeCEtarWrqoP_gNMP9k922Q@mail.gmail.com>
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

On Thu, 28 Jan 2021 12:15:28 +0100
Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> Hi Carlis,
> 
> On Thu, Jan 28, 2021 at 12:03 PM carlis <zhangxuezhi3@gmail.com>
> wrote:
> > On Thu, 28 Jan 2021 10:42:54 +0100
> > Geert Uytterhoeven <geert@linux-m68k.org> wrote:  
> > > On Thu, Jan 28, 2021 at 7:53 AM Kari Argillander
> > > <kari.argillander@gmail.com> wrote:  
> > > > On Thu, Jan 28, 2021 at 09:42:58AM +0800, carlis wrote:  
> > > > > On Thu, 28 Jan 2021 00:32:22 +0200
> > > > > Kari Argillander <kari.argillander@gmail.com> wrote:  
> > > > > > >  #include "fbtft.h"
> > > > > > >
> > > > > > >  #define DRVNAME "fb_st7789v"
> > > > > > > @@ -66,6 +69,32 @@ enum st7789v_command {
> > > > > > >  #define MADCTL_MX BIT(6) /* bitmask for column address
> > > > > > > order */ #define MADCTL_MY BIT(7) /* bitmask for page
> > > > > > > address order */
> > > > > > >
> > > > > > > +#define SPI_PANEL_TE_TIMEOUT     400 /* msecs */
> > > > > > > +static struct mutex te_mutex;/* mutex for set te gpio irq
> > > > > > > status */  
> > > > > >
> > > > > > Space after ;  
> > > > > hi, i have fix it in the patch v11  
> > > > > >  
> > > >
> > > > Yeah sorry. I accidentally review wrong patch. But mostly stuff
> > > > are still relevant.
> > > >  
> > > > > > > @@ -82,6 +111,33 @@ enum st7789v_command {
> > > > > > >   */
> > > > > > >  static int init_display(struct fbtft_par *par)
> > > > > > >  {
> > > > > > > + int rc;
> > > > > > > + struct device *dev = par->info->device;
> > > > > > > +
> > > > > > > + par->gpio.te = devm_gpiod_get_index_optional(dev, "te",
> > > > > > > 0, GPIOD_IN);
> > > > > > > + if (IS_ERR(par->gpio.te)) {
> > > > > > > +         rc = PTR_ERR(par->gpio.te);
> > > > > > > +         dev_err(par->info->device, "Failed to request te
> > > > > > > gpio: %d\n", rc);
> > > > > > > +         return rc;
> > > > > > > + }  
> > > > > >
> > > > > > You request with optinal and you still want to error out? We
> > > > > > could just continue and not care about that error. User
> > > > > > will be happier if device still works somehow.  
> > >
> > > devm_gpiod_get_index_optional() returns NULL, not an error, if the
> > > GPIO is not found.  So if IS_ERR() is the right check.
> > >
> > > And checks for -EPROBE_DEFER can be handled automatically
> > > by using dev_err_probe() instead of dev_err().
> > >  
> > hi, i fix it like below!?
> >         par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
> >         GPIOD_IN); if (IS_ERR(par->gpio.te)) {
> >                 rc = PTR_ERR(par->gpio.te);
> >                 dev_err_probe(par->info->device, rc, "Failed to
> > request te gpio\n"); return rc;
> >         }
> >         if (par->gpio.te) {
> >                 init_completion(&spi_panel_te);
> >                 rc = devm_request_irq(dev,
> >                                       gpiod_to_irq(par->gpio.te),
> >                                      spi_panel_te_handler,
> >         IRQF_TRIGGER_RISING, "TE_GPIO", par);
> >                 if (rc) {
> >                         dev_err(par->info->device, "TE request_irq
> >         failed.\n"); return rc;  
> 
> dev_err_probe()
> 
> >                 }
> >
> >                 disable_irq_nosync(gpiod_to_irq(par->gpio.te));
> >         } else {
> >                 dev_info(par->info->device, "%s:%d, TE gpio not
> >                 specified\n", __func__, __LINE__);
> >         }  
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

hi,i will fix it like below:


	par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
	GPIOD_IN); if (IS_ERR(par->gpio.te))
		return dev_err_probe(par->info->device,
	PTR_ERR(par->gpio.te), "Failed to request te gpio\n");

	if (par->gpio.te) {
		init_completion(&spi_panel_te);
		rc = devm_request_irq(dev,
				      gpiod_to_irq(par->gpio.te),
				     spi_panel_te_handler,
	IRQF_TRIGGER_RISING, "TE_GPIO", par);
		if (IS_ERR(rc))
			return dev_err_probe(par->info->device,
	PTR_ERR(rc), "TE request_irq failed.\n");

		disable_irq_nosync(gpiod_to_irq(par->gpio.te));
	} else {
		dev_info(par->info->device, "%s:%d, TE gpio not
		specified\n", __func__, __LINE__);
	}


regards,
zhangxuezhi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

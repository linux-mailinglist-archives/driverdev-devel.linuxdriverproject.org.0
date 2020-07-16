Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A07C222C0B
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 21:41:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D772F86C40;
	Thu, 16 Jul 2020 19:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4A3odIwd5uRL; Thu, 16 Jul 2020 19:41:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8ED4586C31;
	Thu, 16 Jul 2020 19:41:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 10B431BF385
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 19:41:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0CB5586C31
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 19:41:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rgAM44QubUVf for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 19:41:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DC29B86C28
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 19:41:40 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id m16so4311175pls.5
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 12:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3gOxjYioleYNPMJFOYuFriXJ1YWGB4fcC91h6vBo3AM=;
 b=Fr2pMUFudxKVbymBQqlGxui5jPhioRVxbJPrydkQ5elV1iKym/58d4sNFYGtty3uRp
 ppQt1KX9e/iTFclG5XD8YE50MucJPCYqheHk4WCaco8MBAvjPQqzFnbKFDy8R/MWo2Hy
 sg4MwHJ75FbB5KhjWajQt52DC+O4j6U0z5B7s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3gOxjYioleYNPMJFOYuFriXJ1YWGB4fcC91h6vBo3AM=;
 b=GMGK3lpzuZo38FG1pAY+TF8CcuCo6Ew8m83I1Hpjz9uezVTlIr8onq06Wyz0nsROyB
 CkM+ZvhOf8JmhCOu9SHQ8qJFJWuA/eLUXoxS8LHOl7/eMWy417pxNLxdrMQBFqMkgAE9
 MXx7dm+HKyqvFsg0eYfCJbasnBVS416xal/QEtGGtbVfNFDMP+WYZkWgQptOZP1v/gJJ
 jyMtfUTvAEWB4EtHqTLhF0wBNTeUX4qXGfq/dpL4aCIPqLZpjOFpVQ7AtBFxlhUOG+hh
 jxx9+06kSknaL0kwA6Kl4ZyO3GEUfmrxwQt9bJCa/aVUzgikR822B8DS27echmpNsEV9
 bfXw==
X-Gm-Message-State: AOAM532DFLGmrGzVjfvRnsR1qeJ+L7U/kMVL/Gwsj52yih79sT/U2Hxa
 nEZVEkDuEjsAMW/bEHZhhr3PfQ==
X-Google-Smtp-Source: ABdhPJxOpv1P54xTLFHMOCkbV36YgtJta4Xy1e3mGKWxQZVIYwZy7MSHr7Sn/WN5zPxdQ5Dy/Lrr9w==
X-Received: by 2002:a17:902:b60e:: with SMTP id
 b14mr4854255pls.81.1594928500423; 
 Thu, 16 Jul 2020 12:41:40 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j13sm754883pjz.8.2020.07.16.12.41.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jul 2020 12:41:39 -0700 (PDT)
Date: Thu, 16 Jul 2020 12:41:38 -0700
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/3] usb: gadget: udc: Avoid tasklet passing a global
Message-ID: <202007161240.B58F7FE@keescook>
References: <20200716030847.1564131-1-keescook@chromium.org>
 <20200716030847.1564131-2-keescook@chromium.org>
 <20200716072823.GA971895@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716072823.GA971895@kroah.com>
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
Cc: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
 Douglas Anderson <dianders@chromium.org>, Oscar Carter <oscar.carter@gmx.com>,
 Mitchell Blank Jr <mitch@sfgoth.com>, kernel-hardening@lists.openwall.com,
 Peter Zijlstra <peterz@infradead.org>, kgdb-bugreport@lists.sourceforge.net,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, alsa-devel@alsa-project.org,
 Takashi Iwai <tiwai@suse.com>, Christian Gromm <christian.gromm@microchip.com>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>, Will Deacon <will@kernel.org>,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Masahiro Yamada <masahiroy@kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Julian Wiedmann <jwi@linux.ibm.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, Jiri Slaby <jslaby@suse.com>,
 Jakub Kicinski <kuba@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wambui Karuga <wambui.karugax@gmail.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, linux-input@vger.kernel.org,
 Ursula Braun <ubraun@linux.ibm.com>, Stephen Boyd <swboyd@chromium.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jaroslav Kysela <perex@perex.cz>,
 Felipe Balbi <balbi@kernel.org>, Kyungtae Kim <kt0755@gmail.com>,
 netdev@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Allen Pais <allen.lkml@gmail.com>, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, Jason Wessel <jason.wessel@windriver.com>,
 Karsten Graul <kgraul@linux.ibm.com>, Romain Perier <romain.perier@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 16, 2020 at 09:28:23AM +0200, Greg Kroah-Hartman wrote:
> On Wed, Jul 15, 2020 at 08:08:45PM -0700, Kees Cook wrote:
> > There's no reason for the tasklet callback to set an argument since it
> > always uses a global. Instead, use the global directly, in preparation
> > for converting the tasklet subsystem to modern callback conventions.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  drivers/usb/gadget/udc/snps_udc_core.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/usb/gadget/udc/snps_udc_core.c b/drivers/usb/gadget/udc/snps_udc_core.c
> > index 3fcded31405a..afdd28f332ce 100644
> > --- a/drivers/usb/gadget/udc/snps_udc_core.c
> > +++ b/drivers/usb/gadget/udc/snps_udc_core.c
> > @@ -96,9 +96,7 @@ static int stop_pollstall_timer;
> >  static DECLARE_COMPLETION(on_pollstall_exit);
> >  
> >  /* tasklet for usb disconnect */
> > -static DECLARE_TASKLET(disconnect_tasklet, udc_tasklet_disconnect,
> > -		(unsigned long) &udc);
> > -
> > +static DECLARE_TASKLET(disconnect_tasklet, udc_tasklet_disconnect, 0);
> >  
> >  /* endpoint names used for print */
> >  static const char ep0_string[] = "ep0in";
> > @@ -1661,7 +1659,7 @@ static void usb_disconnect(struct udc *dev)
> >  /* Tasklet for disconnect to be outside of interrupt context */
> >  static void udc_tasklet_disconnect(unsigned long par)
> >  {
> > -	struct udc *dev = (struct udc *)(*((struct udc **) par));
> > +	struct udc *dev = udc;
> >  	u32 tmp;
> >  
> >  	DBG(dev, "Tasklet disconnect\n");
> 
> Feel free to just take this in your tree, no need to wait for the USB
> stuff to land.
> 
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Okay, thanks! I'll carry this series for v5.9, unless I hear otherwise
from Thomas. :)

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

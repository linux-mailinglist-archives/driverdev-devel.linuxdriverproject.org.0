Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 966FF222DD1
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 23:24:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBB07854DB;
	Thu, 16 Jul 2020 21:24:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8lLpY2iRVmY7; Thu, 16 Jul 2020 21:24:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0CAB85495;
	Thu, 16 Jul 2020 21:24:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E6F21BF388
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 21:24:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 89E49868F6
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 21:24:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hHmJ3TwghRD8 for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 21:24:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C84A5867C6
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 21:24:22 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id k4so4417804pld.12
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 14:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=GuRiIW4nk04qSodan0OUo2QjHoiXfRAFsMTlj/9iRXw=;
 b=g8LC2DWSxvHGrs2YfNgqk3VpuTWmyx3EVdSYPeLpfd8l0h3R8fxuksSBwA40ai4ADZ
 kvo6yqRa0fHbA8eJUx9ZhH7+OM1Pi2G/tAj5fqTQQNaJxqtiMUti5yjEE1XiAduQJjm5
 0svDx9VcKd8b8SNp5t3SPolgR9wFDAMRS57OI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GuRiIW4nk04qSodan0OUo2QjHoiXfRAFsMTlj/9iRXw=;
 b=WnOWhYptFBHgf+ZKDCbhb/g9UdgVpEawxFX5qgvVElC8O3SCMCaWyS6vnoCWS2kAvg
 vijz4pOZmIwRnYkOnmjl20GxSCDnq+14449F/T2Gz/erlIT9old5MF/Frbk1wl4q/jM5
 cDtEf6G9BsD571hpLXJqRem2CQiu5u6lmdkmbSgz01iWy3ncqRB/v38FPHiB4JQEm67a
 WM/fEojuaa+UJoyMlFLX/KaHOL6+NwG5NxW/RGAaPshjllWGekEHyxnfcpf4htdY5HRy
 owvHFLj2ByysKDWwnOAX1DUwHN3eCY+SYM2B21/vNE6QbXajxZCKv80tg8sOTBPAJt1g
 UHqw==
X-Gm-Message-State: AOAM533/lKkfOa0e0WebVnySFoGW9QUcDao73gCdinrUjPCGG/tuDsG1
 t4JCASBoCLz5jYlvuhGVqUY0Dg==
X-Google-Smtp-Source: ABdhPJyP3qLO1Y3SOoBLYTFQL4BEKccE2HwZrJKw7OBU3VgLMhd+dox46Tq8jY21pcPLVhtrgaAB+g==
X-Received: by 2002:a17:90a:1089:: with SMTP id
 c9mr6859603pja.180.1594934662399; 
 Thu, 16 Jul 2020 14:24:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r25sm1515610pgv.88.2020.07.16.14.24.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jul 2020 14:24:21 -0700 (PDT)
Date: Thu, 16 Jul 2020 14:24:20 -0700
From: Kees Cook <keescook@chromium.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH 0/3] Modernize tasklet callback API
Message-ID: <202007161416.9C1B8F3D26@keescook>
References: <20200716030847.1564131-1-keescook@chromium.org>
 <20200716075718.GM10769@hirez.programming.kicks-ass.net>
 <202007161214.102F6E6@keescook>
 <CAKdAkRQHRobiG-RpifyrAmV9ENgENn_woPBVXpRrhKwRBf9Esw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKdAkRQHRobiG-RpifyrAmV9ENgENn_woPBVXpRrhKwRBf9Esw@mail.gmail.com>
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
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Oscar Carter <oscar.carter@gmx.com>, Mitchell Blank Jr <mitch@sfgoth.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 kgdb-bugreport@lists.sourceforge.net,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 Allen Pais <allen.lkml@gmail.com>, netdev <netdev@vger.kernel.org>,
 Christian Gromm <christian.gromm@microchip.com>, Will Deacon <will@kernel.org>,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Daniel Thompson <daniel.thompson@linaro.org>,
 "David S. Miller" <davem@davemloft.net>,
 Masahiro Yamada <masahiroy@kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Julian Wiedmann <jwi@linux.ibm.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, Jiri Slaby <jslaby@suse.com>,
 Jakub Kicinski <kuba@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wambui Karuga <wambui.karugax@gmail.com>, Vasily Gorbik <gor@linux.ibm.com>,
 lkml <linux-kernel@vger.kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 Ursula Braun <ubraun@linux.ibm.com>, Stephen Boyd <swboyd@chromium.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jaroslav Kysela <perex@perex.cz>,
 Felipe Balbi <balbi@kernel.org>, Kyungtae Kim <kt0755@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Corbet <corbet@lwn.net>, Douglas Anderson <dianders@chromium.org>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>,
 USB list <linux-usb@vger.kernel.org>,
 Jason Wessel <jason.wessel@windriver.com>,
 Romain Perier <romain.perier@gmail.com>, Karsten Graul <kgraul@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 16, 2020 at 01:48:20PM -0700, Dmitry Torokhov wrote:
> On Thu, Jul 16, 2020 at 12:14 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Thu, Jul 16, 2020 at 09:57:18AM +0200, Peter Zijlstra wrote:
> > > On Wed, Jul 15, 2020 at 08:08:44PM -0700, Kees Cook wrote:
> > > > Hi,
> > > >
> > > > This is the infrastructure changes to prepare the tasklet API for
> > > > conversion to passing the tasklet struct as the callback argument instead
> > > > of an arbitrary unsigned long. The first patch details why this is useful
> > > > (it's the same rationale as the timer_struct changes from a bit ago:
> > > > less abuse during memory corruption attacks, more in line with existing
> > > > ways of doing things in the kernel, save a little space in struct,
> > > > etc). Notably, the existing tasklet API use is much less messy, so there
> > > > is less to clean up.
> > >
> > > I would _MUCH_ rather see tasklets go the way of the dodo, esp. given
> > > that:
> > >
> > > >  drivers/input/keyboard/omap-keypad.c   |  2 +-
> > > >  drivers/input/serio/hil_mlc.c          |  2 +-
> > > >  drivers/net/wan/farsync.c              |  4 +--
> > > >  drivers/s390/crypto/ap_bus.c           |  2 +-
> > > >  drivers/staging/most/dim2/dim2.c       |  2 +-
> > > >  drivers/staging/octeon/ethernet-tx.c   |  2 +-
> > > >  drivers/tty/vt/keyboard.c              |  2 +-
> > > >  drivers/usb/gadget/udc/snps_udc_core.c |  6 ++---
> > > >  drivers/usb/host/fhci-sched.c          |  2 +-
> > > >  include/linux/interrupt.h              | 37 ++++++++++++++++++++++----
> > > >  kernel/backtracetest.c                 |  2 +-
> > > >  kernel/debug/debug_core.c              |  2 +-
> > > >  kernel/irq/resend.c                    |  2 +-
> > > >  kernel/softirq.c                       | 18 ++++++++++++-
> > > >  net/atm/pppoatm.c                      |  2 +-
> > > >  net/iucv/iucv.c                        |  2 +-
> > > >  sound/drivers/pcsp/pcsp_lib.c          |  2 +-
> > > >  17 files changed, 66 insertions(+), 25 deletions(-)
> > >
> > > there appear to be hardly any users left.. Can't we stage an extinction
> > > event here instead?
> >
> > Oh, I wish, but no. That's just the ones using DECLARE_TASKLET. There
> > are hundred(s?) more (see the referenced tree).
> 
> Still, do we really need tasklets? Can we substitute timers executing
> immediately in their place?

If there is a direct replacement, then sure, I'd be happy to do
whatever, however it does not look mechanical to me. If there is a
mechanical way that will convert these two directories (as an example of
various complexities):

drivers/crypto/ccp/
drivers/gpu/drm/i915/gt/

then let's get it documented. But if not, let's write up a paragraph for
the deprecated.rst, mark it as deprecated in comments, and modernize the
API (which is a mostly mechanical change) to avoid it being a problem
for CFI, for memory corruption, and heap space, etc.

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

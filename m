Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EBB222BB1
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 21:14:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 18DBA21F76;
	Thu, 16 Jul 2020 19:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V-OkkbkoFlsB; Thu, 16 Jul 2020 19:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ED5E621FAD;
	Thu, 16 Jul 2020 19:14:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BFAF1BF385
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 19:14:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4786988313
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 19:14:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8gkXqRB6fJiA for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 19:14:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9E98788312
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 19:14:48 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id p1so4289697pls.4
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 12:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DmwAjlYrRkrceLF5k8BiY0q5EpRy1ms1f0jDcB2PX04=;
 b=GFAY7/qFyIYdH5WwlOR6lmpQdUB8pidv4p+YEiNNV+24D6QE2wlS74FWkZdBInZexv
 UOIim5XchmtCaZ3l4TQzzuOzonn1fB1BUMbSjBEdmwtfVzMcmZFxfBS2TADWV5S1ZbJV
 +LUOh6KntXrSBKz4ZwAcXC+80++YNoPqG5L4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DmwAjlYrRkrceLF5k8BiY0q5EpRy1ms1f0jDcB2PX04=;
 b=tbo3s1CdgUXL9eyNdoRWovg74SXnDTk1INnj3UHSu9HQMCaI88esxMW5KaPAkb/xt+
 e6dq9REJTrz6ZwrrA/zkFq3zS/oRJ9DaJrmF2jXUWHlkBBZu1J5BLZRdksBW69IMBpnh
 s/NfmsgarimtlOjQ4qEtucXmvKsrz8ShZxf9t7ZR5DqO2PWRITgjBFFuh6MmzR6BB8C+
 vy9+dUoHw5LQ1zAKv3dERmKWD2VhYs27NF9HSUUpTCDwAKYQv3fk1h2DS7UtO9PpX0Ef
 a7+FEutoqIOzbw9Xq4jwngBU54qUlBdUyva5akLiasyBbIWMLbVpZNrV87teXBIjilTF
 BOgA==
X-Gm-Message-State: AOAM531b6y8LtexnxRY6WCTXgNQFgW2FrgFeWj41mtuVjPwJSroZC0HT
 gMOSbG1qckZ8XCRuOFSMONP/eg==
X-Google-Smtp-Source: ABdhPJzXMzbyTY5VJHPd4Edm3bSGjXJUJOwIzo3RSPKyMSZOc846WSYGarDg6OCvj6pUTCBmbdFM0Q==
X-Received: by 2002:a17:90a:318c:: with SMTP id
 j12mr6129543pjb.25.1594926888230; 
 Thu, 16 Jul 2020 12:14:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id s194sm5671642pgs.24.2020.07.16.12.14.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jul 2020 12:14:47 -0700 (PDT)
Date: Thu, 16 Jul 2020 12:14:46 -0700
From: Kees Cook <keescook@chromium.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 0/3] Modernize tasklet callback API
Message-ID: <202007161214.102F6E6@keescook>
References: <20200716030847.1564131-1-keescook@chromium.org>
 <20200716075718.GM10769@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716075718.GM10769@hirez.programming.kicks-ass.net>
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
 kernel-hardening@lists.openwall.com, kgdb-bugreport@lists.sourceforge.net,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, alsa-devel@alsa-project.org,
 Allen Pais <allen.lkml@gmail.com>, netdev@vger.kernel.org,
 Christian Gromm <christian.gromm@microchip.com>, Will Deacon <will@kernel.org>,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 "David S. Miller" <davem@davemloft.net>,
 Masahiro Yamada <masahiroy@kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Julian Wiedmann <jwi@linux.ibm.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, Jiri Slaby <jslaby@suse.com>,
 Jakub Kicinski <kuba@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wambui Karuga <wambui.karugax@gmail.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-s390@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>, linux-input@vger.kernel.org,
 Ursula Braun <ubraun@linux.ibm.com>, Stephen Boyd <swboyd@chromium.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jaroslav Kysela <perex@perex.cz>,
 Felipe Balbi <balbi@kernel.org>, Kyungtae Kim <kt0755@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Douglas Anderson <dianders@chromium.org>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>, linux-usb@vger.kernel.org,
 Jason Wessel <jason.wessel@windriver.com>,
 Romain Perier <romain.perier@gmail.com>, Karsten Graul <kgraul@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 16, 2020 at 09:57:18AM +0200, Peter Zijlstra wrote:
> On Wed, Jul 15, 2020 at 08:08:44PM -0700, Kees Cook wrote:
> > Hi,
> > 
> > This is the infrastructure changes to prepare the tasklet API for
> > conversion to passing the tasklet struct as the callback argument instead
> > of an arbitrary unsigned long. The first patch details why this is useful
> > (it's the same rationale as the timer_struct changes from a bit ago:
> > less abuse during memory corruption attacks, more in line with existing
> > ways of doing things in the kernel, save a little space in struct,
> > etc). Notably, the existing tasklet API use is much less messy, so there
> > is less to clean up.
> 
> I would _MUCH_ rather see tasklets go the way of the dodo, esp. given
> that:
> 
> >  drivers/input/keyboard/omap-keypad.c   |  2 +-
> >  drivers/input/serio/hil_mlc.c          |  2 +-
> >  drivers/net/wan/farsync.c              |  4 +--
> >  drivers/s390/crypto/ap_bus.c           |  2 +-
> >  drivers/staging/most/dim2/dim2.c       |  2 +-
> >  drivers/staging/octeon/ethernet-tx.c   |  2 +-
> >  drivers/tty/vt/keyboard.c              |  2 +-
> >  drivers/usb/gadget/udc/snps_udc_core.c |  6 ++---
> >  drivers/usb/host/fhci-sched.c          |  2 +-
> >  include/linux/interrupt.h              | 37 ++++++++++++++++++++++----
> >  kernel/backtracetest.c                 |  2 +-
> >  kernel/debug/debug_core.c              |  2 +-
> >  kernel/irq/resend.c                    |  2 +-
> >  kernel/softirq.c                       | 18 ++++++++++++-
> >  net/atm/pppoatm.c                      |  2 +-
> >  net/iucv/iucv.c                        |  2 +-
> >  sound/drivers/pcsp/pcsp_lib.c          |  2 +-
> >  17 files changed, 66 insertions(+), 25 deletions(-)
> 
> there appear to be hardly any users left.. Can't we stage an extinction
> event here instead?

Oh, I wish, but no. That's just the ones using DECLARE_TASKLET. There
are hundred(s?) more (see the referenced tree).

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

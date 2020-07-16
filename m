Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAB9222D35
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 22:48:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5A0EA8824F;
	Thu, 16 Jul 2020 20:48:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kRJ7HHrOPoYc; Thu, 16 Jul 2020 20:48:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A287588237;
	Thu, 16 Jul 2020 20:48:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D74701BF375
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 20:48:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CD5A688231
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 20:48:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZqyTFbaucfzp for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 20:48:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 286A588227
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 20:48:32 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id v8so7510165iox.2
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 13:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E+1tVGknt5yYZ8eT3cfGaVP/Gx6TNLloqdwWVn2c4ZM=;
 b=CLn8nEZ9Umx3u1uxQ6iB8vnvAwGkRUs5ZG9EfQL8CJiHvyLP8M7b6NUIAKo+LBuY4f
 8/9k4vjIky1k6ccVtwc1XCLpJ9OIXcaSnSgOd0xYtfqQA5VkwUEJhpc/XojQNud255Fp
 CS65GQl3KtSyU2zn3gjZRqpQReiLPt5Jdwt/SCKKel4uYCiyIFetSEXJKpr/nhCoi0IP
 Fh7/R7sRei2OUkuvv/y1qWAnzOrzRAxFmPwXU3sJhnRHuwo9BC1LeRHApdtIROKUBM0Y
 PuMZgqnjotBdORPgdDy9QbhiTqpBvHJsERxZbAO44L6pd99V8/cw6eA29lB/55EAquIA
 5X2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E+1tVGknt5yYZ8eT3cfGaVP/Gx6TNLloqdwWVn2c4ZM=;
 b=dD5wCM5hjKpiNrIObeBzGzglb+MOD55HonBpaTFmh1s5jSl6eaSo0femMc088JW7jc
 GWkip5qKwafrMUWfZ4odnjayRwRDmlcsubaV0pCnw7gYTL1f6FF9AOZ2TObdVvLjETOK
 FaDY2jJ9K/qwnt238+9zCDMNPm24E7gk9MJGL0vuxX9c3DVmSdYZ3A+dm3gdnXVqnJWa
 bF2elbyVhKpyyu68DEEJbIImDRmkqSDMy/7inzeluriOwY4GPUYd0GTN8kHjTduC7pcc
 pn44HNU0Lu3hLieqpqZLdePySZ+9FH9P5kCg19zHoaztSMXCO0JlK+lZZubTz08JUwKZ
 RuAw==
X-Gm-Message-State: AOAM533Pwg7IFIdFgT7Q0hk3WU8ZKb8xfc0yL2nyNRCUiY96AsfWftg1
 PnIeJOBvYVo1ZIPSxgEvYDSQ82WNwD3sixUbqaM=
X-Google-Smtp-Source: ABdhPJzpsbm7TwGhHG6RzXDqgC6/209E5TMuTQBViDF3W3srNDclU8jiNSeIW3HzQAj2kQTZKYQslP0k+o4Ij2ZF6uA=
X-Received: by 2002:a5d:9c0e:: with SMTP id 14mr6302830ioe.109.1594932511887; 
 Thu, 16 Jul 2020 13:48:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200716030847.1564131-1-keescook@chromium.org>
 <20200716075718.GM10769@hirez.programming.kicks-ass.net>
 <202007161214.102F6E6@keescook>
In-Reply-To: <202007161214.102F6E6@keescook>
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date: Thu, 16 Jul 2020 13:48:20 -0700
Message-ID: <CAKdAkRQHRobiG-RpifyrAmV9ENgENn_woPBVXpRrhKwRBf9Esw@mail.gmail.com>
Subject: Re: [PATCH 0/3] Modernize tasklet callback API
To: Kees Cook <keescook@chromium.org>
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

On Thu, Jul 16, 2020 at 12:14 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Jul 16, 2020 at 09:57:18AM +0200, Peter Zijlstra wrote:
> > On Wed, Jul 15, 2020 at 08:08:44PM -0700, Kees Cook wrote:
> > > Hi,
> > >
> > > This is the infrastructure changes to prepare the tasklet API for
> > > conversion to passing the tasklet struct as the callback argument instead
> > > of an arbitrary unsigned long. The first patch details why this is useful
> > > (it's the same rationale as the timer_struct changes from a bit ago:
> > > less abuse during memory corruption attacks, more in line with existing
> > > ways of doing things in the kernel, save a little space in struct,
> > > etc). Notably, the existing tasklet API use is much less messy, so there
> > > is less to clean up.
> >
> > I would _MUCH_ rather see tasklets go the way of the dodo, esp. given
> > that:
> >
> > >  drivers/input/keyboard/omap-keypad.c   |  2 +-
> > >  drivers/input/serio/hil_mlc.c          |  2 +-
> > >  drivers/net/wan/farsync.c              |  4 +--
> > >  drivers/s390/crypto/ap_bus.c           |  2 +-
> > >  drivers/staging/most/dim2/dim2.c       |  2 +-
> > >  drivers/staging/octeon/ethernet-tx.c   |  2 +-
> > >  drivers/tty/vt/keyboard.c              |  2 +-
> > >  drivers/usb/gadget/udc/snps_udc_core.c |  6 ++---
> > >  drivers/usb/host/fhci-sched.c          |  2 +-
> > >  include/linux/interrupt.h              | 37 ++++++++++++++++++++++----
> > >  kernel/backtracetest.c                 |  2 +-
> > >  kernel/debug/debug_core.c              |  2 +-
> > >  kernel/irq/resend.c                    |  2 +-
> > >  kernel/softirq.c                       | 18 ++++++++++++-
> > >  net/atm/pppoatm.c                      |  2 +-
> > >  net/iucv/iucv.c                        |  2 +-
> > >  sound/drivers/pcsp/pcsp_lib.c          |  2 +-
> > >  17 files changed, 66 insertions(+), 25 deletions(-)
> >
> > there appear to be hardly any users left.. Can't we stage an extinction
> > event here instead?
>
> Oh, I wish, but no. That's just the ones using DECLARE_TASKLET. There
> are hundred(s?) more (see the referenced tree).

Still, do we really need tasklets? Can we substitute timers executing
immediately in their place?

Thanks.

-- 
Dmitry
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

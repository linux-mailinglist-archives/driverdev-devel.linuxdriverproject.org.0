Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0F2221DB6
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 09:57:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB0C58A672;
	Thu, 16 Jul 2020 07:57:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pk25bE4+8YCk; Thu, 16 Jul 2020 07:57:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B37B98A645;
	Thu, 16 Jul 2020 07:57:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A46DB1BF3BF
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 07:57:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7C60320532
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 07:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GRDYg32ei8FZ for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 07:57:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by silver.osuosl.org (Postfix) with ESMTPS id 5E30E204BD
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 07:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=GFw2paDr6x0B7btxhYa6Jgza9jDSX5w0Syg6HAfqvAU=; b=TZzTFaLgoCrDFyD2Ef7BIGlBta
 PcBSBGGB+L1ZGg/6TvwqEVkDwtJvPMwytSYQGDp70iFs3HYFtUzixiCUJBCw87DTMJBfIXHnvvfnd
 6ameDw70kTnMCMShOJMLxtGhSyz6kY4hrpUUBjp0ui+1HVAj0Hay4YgN/lD2M/s7p7WsPZX2sJgpx
 m0smx2K4jAlv5k8raCR6nfmWAqaiI+XQ35t9LL9ZDp7G/Bd6Xv6xN/1+oU2M1YPrCDGAKZNt5KRft
 m+Xhvn6+OLAoQcGmFJfkRhrkSCPQ3enbR99hEbretKEtzPoWiv9AHO8kAFyBzSXUqnNW18hpG0dgz
 Y6UHjSQA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jvylm-0001J0-AL; Thu, 16 Jul 2020 07:57:30 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id E92D2300446;
 Thu, 16 Jul 2020 09:57:18 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id AF62B23D64B97; Thu, 16 Jul 2020 09:57:18 +0200 (CEST)
Date: Thu, 16 Jul 2020 09:57:18 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 0/3] Modernize tasklet callback API
Message-ID: <20200716075718.GM10769@hirez.programming.kicks-ass.net>
References: <20200716030847.1564131-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716030847.1564131-1-keescook@chromium.org>
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

On Wed, Jul 15, 2020 at 08:08:44PM -0700, Kees Cook wrote:
> Hi,
> 
> This is the infrastructure changes to prepare the tasklet API for
> conversion to passing the tasklet struct as the callback argument instead
> of an arbitrary unsigned long. The first patch details why this is useful
> (it's the same rationale as the timer_struct changes from a bit ago:
> less abuse during memory corruption attacks, more in line with existing
> ways of doing things in the kernel, save a little space in struct,
> etc). Notably, the existing tasklet API use is much less messy, so there
> is less to clean up.

I would _MUCH_ rather see tasklets go the way of the dodo, esp. given
that:

>  drivers/input/keyboard/omap-keypad.c   |  2 +-
>  drivers/input/serio/hil_mlc.c          |  2 +-
>  drivers/net/wan/farsync.c              |  4 +--
>  drivers/s390/crypto/ap_bus.c           |  2 +-
>  drivers/staging/most/dim2/dim2.c       |  2 +-
>  drivers/staging/octeon/ethernet-tx.c   |  2 +-
>  drivers/tty/vt/keyboard.c              |  2 +-
>  drivers/usb/gadget/udc/snps_udc_core.c |  6 ++---
>  drivers/usb/host/fhci-sched.c          |  2 +-
>  include/linux/interrupt.h              | 37 ++++++++++++++++++++++----
>  kernel/backtracetest.c                 |  2 +-
>  kernel/debug/debug_core.c              |  2 +-
>  kernel/irq/resend.c                    |  2 +-
>  kernel/softirq.c                       | 18 ++++++++++++-
>  net/atm/pppoatm.c                      |  2 +-
>  net/iucv/iucv.c                        |  2 +-
>  sound/drivers/pcsp/pcsp_lib.c          |  2 +-
>  17 files changed, 66 insertions(+), 25 deletions(-)

there appear to be hardly any users left.. Can't we stage an extinction
event here instead?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

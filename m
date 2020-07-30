Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B09232C37
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 09:04:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0DDA287FC3;
	Thu, 30 Jul 2020 07:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EDCRDwaSCdRZ; Thu, 30 Jul 2020 07:04:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 56B5287EB0;
	Thu, 30 Jul 2020 07:04:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3540D1BF867
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 07:04:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 279952263E
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 07:04:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qLnTpKO7-019 for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 07:04:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by silver.osuosl.org (Postfix) with ESMTPS id AC72220517
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 07:03:59 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1596092635;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Mz+qNrmSuHhP762sVPCCbD6ZtoTLt49x/k2ylV/iW04=;
 b=ATVq9r2ySKvrHhR1Ew5gfobXzkJOa7AojOTliB75MUHbI823o3fQ0ntCWem48PvvRKqB9H
 Rt9hIre2E+faffSDe258p7pUnpiLxNrY9VnSFh5IqME+CrtiHzj9WxaiUGeZBdFpHIOAmv
 wnV7yVr+HeeHgOF9V1gPxEw/ndMBAD+sa6snxxFjk+V/ROFhMjUReFF9eq8Y2XWjuyHQdF
 6H7QimUGQoU88mR0cBx508aZtEEZImB+4c+3QuIGaiVRAuGq64btoT4du5WsNzqH7FOP2m
 IZz/+Qf17vLzhSMchX8tfx5XVjWjF9aTOve0tVRFY3jRZHZmgLJt0KbdLSrW8Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1596092635;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Mz+qNrmSuHhP762sVPCCbD6ZtoTLt49x/k2ylV/iW04=;
 b=OgiJQ3sVwNFJT1r4oP0n3TmmSrJH2lyZ7rxBtMWP23shTrTVU6KuEFirMQvosT5GwEbdK2
 QqQs4lhxrmHSNbAw==
To: Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 0/3] Modernize tasklet callback API
In-Reply-To: <20200716030847.1564131-1-keescook@chromium.org>
References: <20200716030847.1564131-1-keescook@chromium.org>
Date: Thu, 30 Jul 2020 09:03:55 +0200
Message-ID: <87h7tpa3hg.fsf@nanos.tec.linutronix.de>
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
Cc: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Oscar Carter <oscar.carter@gmx.com>, Mitchell Blank Jr <mitch@sfgoth.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 kgdb-bugreport@lists.sourceforge.net,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, alsa-devel@alsa-project.org,
 Allen Pais <allen.lkml@gmail.com>,
 Christian Gromm <christian.gromm@microchip.com>, Will Deacon <will@kernel.org>,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 "David S. Miller" <davem@davemloft.net>,
 Masahiro Yamada <masahiroy@kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Julian Wiedmann <jwi@linux.ibm.com>, "Matthew
 Wilcox \(Oracle\)" <willy@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, Jiri Slaby <jslaby@suse.com>,
 Jakub Kicinski <kuba@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wambui Karuga <wambui.karugax@gmail.com>, Kees Cook <keescook@chromium.org>,
 Vasily Gorbik <gor@linux.ibm.com>, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 linux-input@vger.kernel.org, Ursula Braun <ubraun@linux.ibm.com>,
 Stephen Boyd <swboyd@chromium.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Harald Freudenberger <freude@linux.ibm.com>, Jaroslav Kysela <perex@perex.cz>,
 Felipe Balbi <balbi@kernel.org>, Kyungtae Kim <kt0755@gmail.com>,
 netdev@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Douglas Anderson <dianders@chromium.org>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>, linux-usb@vger.kernel.org,
 Jason Wessel <jason.wessel@windriver.com>,
 Romain Perier <romain.perier@gmail.com>, Karsten Graul <kgraul@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Kees,

Kees Cook <keescook@chromium.org> writes:
> This is the infrastructure changes to prepare the tasklet API for
> conversion to passing the tasklet struct as the callback argument instead
> of an arbitrary unsigned long. The first patch details why this is useful
> (it's the same rationale as the timer_struct changes from a bit ago:
> less abuse during memory corruption attacks, more in line with existing
> ways of doing things in the kernel, save a little space in struct,
> etc). Notably, the existing tasklet API use is much less messy, so there
> is less to clean up.
>
> It's not clear to me which tree this should go through... Greg since it
> starts with a USB clean-up, -tip for timer or interrupt, or if I should
> just carry it. I'm open to suggestions, but if I don't hear otherwise,
> I'll just carry it.
>
> My goal is to have this merged for v5.9-rc1 so that during the v5.10
> development cycle the new API will be available. The entire tree of
> changes is here[1] currently, but to split it up by maintainer the
> infrastructure changes need to be landed first.
>
> Review and Acks appreciated! :)

I'd rather see tasklets vanish from the planet completely, but that's
going to be a daring feat. So, grudgingly:

Acked-by: Thomas Gleixner <tglx@linutronix.de>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

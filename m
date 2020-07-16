Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D58C2222BB7
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 21:16:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F70C8614A;
	Thu, 16 Jul 2020 19:16:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UT_BC6ZtfKuh; Thu, 16 Jul 2020 19:16:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C1068610E;
	Thu, 16 Jul 2020 19:16:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 013491BF385
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 19:16:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F163D8610F
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 19:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F_8QhBKJYxaf for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 19:15:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BC01E8610E
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 19:15:57 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id t6so5327823pgq.1
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 12:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2R0hcRnXsJS4VXyiriDanEq/mQczbWkrFO+xv3Ye6s4=;
 b=ZBulK0WZzf/Y2plsJIiBiP9vBDDMB7cKE4nNyO7pI4jhAiFahLl13+wjjYl4AYx5BB
 otJeoT7KMXmj//B0s5TndSWJM7ep3jPNHzKSwrpR80GkT/ENBrVdogHDfc7FSXQgqchK
 la7hTG8ks3MzuTa72KfZtSagY7XpH9MYfx1mQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2R0hcRnXsJS4VXyiriDanEq/mQczbWkrFO+xv3Ye6s4=;
 b=ovYjP/SJpTUaywSxUQ/l+OzyQp244xRdlSNc/nhDdlxqqZ6wRIeAZRta3KQfli+S6U
 79kM44yvoRe7GAmt3hTnR3s5aaJ9p6PVdgqx3OxwhvP/9Ea3+8gvmD2deB+WizaWeOa/
 YpGraQT7Uwz61uX2TFclGOcQarkMDvEZR9xA0PEwOTJgnnj3cK5vmRNDQgqzfotgKAx4
 /joCxj0AT28lZVWTmeXByqW7O+ui/56bd5hwQHpJRzcFMe8To0hCd9BD+UhYlIUsvvdq
 r0O7GrZJLFGNVLBqYS33PEa/GCulkuXXdq9oOg+4nWMXfCWhlyGg9dX7IGAYTq35aWyM
 A6+A==
X-Gm-Message-State: AOAM5331V80yvgRxX8jcE5+qPCNEtGblG43NKNgYR3M6TrEHRdfHEK6R
 gMOvxYXs3xK7tpwKJTqHOtcyaA==
X-Google-Smtp-Source: ABdhPJz1hoi+gTw0MHgO0dM+96Dp9MZSCNtNi6/yuZgpSobcItifHoGm+Bd2+MNyMCABANHPmkEEMg==
X-Received: by 2002:a65:664a:: with SMTP id z10mr5423029pgv.352.1594926957331; 
 Thu, 16 Jul 2020 12:15:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id h15sm5618413pfo.192.2020.07.16.12.15.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jul 2020 12:15:56 -0700 (PDT)
Date: Thu, 16 Jul 2020 12:15:55 -0700
From: Kees Cook <keescook@chromium.org>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 2/3] treewide: Replace DECLARE_TASKLET() with
 DECLARE_TASKLET_OLD()
Message-ID: <202007161215.5C0CE54AB@keescook>
References: <20200716030847.1564131-1-keescook@chromium.org>
 <20200716030847.1564131-3-keescook@chromium.org>
 <20200716112914.GK12769@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716112914.GK12769@casper.infradead.org>
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
 Allen Pais <allen.lkml@gmail.com>, netdev@vger.kernel.org,
 Christian Gromm <christian.gromm@microchip.com>, Will Deacon <will@kernel.org>,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 "David S. Miller" <davem@davemloft.net>,
 Masahiro Yamada <masahiroy@kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Julian Wiedmann <jwi@linux.ibm.com>,
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

On Thu, Jul 16, 2020 at 12:29:14PM +0100, Matthew Wilcox wrote:
> On Wed, Jul 15, 2020 at 08:08:46PM -0700, Kees Cook wrote:
> > This converts all the existing DECLARE_TASKLET() (and ...DISABLED)
> > macros with DECLARE_TASKLET_OLD() in preparation for refactoring the
> > tasklet callback type. All existing DECLARE_TASKLET() users had a "0"
> > data argument, it has been removed here as well.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> [...]
> >  16 files changed, 26 insertions(+), 21 deletions(-)
> 
> This is about 5% of what needs to change.  There are 350 callers of
> tasklet_init(), and that still takes a 'data' argument.

Yup, please see the referenced tree. This "series" is just the
ground-work for allowing the rest of the 350 patches to land with calls
to the new tasklet_setup() API, and associated prototype and
container_of() changes.

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

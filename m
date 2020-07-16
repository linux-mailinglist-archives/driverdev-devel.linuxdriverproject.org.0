Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E75222BC8
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 21:22:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 11C4E22026;
	Thu, 16 Jul 2020 19:22:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZOn7DtCIHhtp; Thu, 16 Jul 2020 19:22:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E90A5207A9;
	Thu, 16 Jul 2020 19:22:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B8F21BF385
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 19:22:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 67C8A86886
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 19:22:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W0TgvDGggKw1 for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 19:22:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CACE486881
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 19:22:19 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id ch3so5284521pjb.5
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 12:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JkQIL6u1DfVeBakkxVv5TexNPiL0IlLMXUBOxPWyZ5M=;
 b=IdV9MqF3NgA5zvwc0WHh4MUmPJhoVdGBqF7mZzHR1z6W9+79kwebX37Odvx1RFYyD5
 TIcAItmVFebIbr0UGDR1VqZORhkkWg5GO3jP9SrAYBb/J9j1gAl6NCCYq5DxGfdZceJ5
 eJbQvOJJgIUB/uLUSvyqfC/7mWDvVcN1kqTj8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JkQIL6u1DfVeBakkxVv5TexNPiL0IlLMXUBOxPWyZ5M=;
 b=j1BWw0Ppypj1T78gQD2k8KbCY5/9D/6KEcq6574ymGNCgXZmXo+P6a2kT+XRoSsXHx
 JkLZSamRZSVyYtDY6ie8zhzXdO94BcUaTX1hAP1ZiecqLD1k1bykc4qtu03zE1U2DMDr
 z7iT86deb1IpJdTc008rt7vCw+bcC1EqZoKD8kScnAASTLdY+XKfqZYb2mMLfO8UK8VQ
 Z1Niditl+Gu3pPRGRwVzkfD1MWrjjyGpl4mSyak/NcTKCSjs1SrzowEHhUMLS+vgXKzy
 pxchmkU/TZJJatTokke+Rijbl6WEPYQTpYjfP03VTRNLHORJ0fi7BWq6jSjoJhCgnu9/
 o4zQ==
X-Gm-Message-State: AOAM532umLNWQPRnMkndaPH1xvBGgRI8ee1kZNfxqNcquEE2ua1Ks8Xy
 cyuYIGva3q1XFxn3ZRpOr+dDNg==
X-Google-Smtp-Source: ABdhPJxnO0DLJTMuJCiKhGS2H/q0Dgh7D9XNeLpL7v+ETZT1fO0LQZze/EzzJLe1PvzD9lREJpkfEA==
X-Received: by 2002:a17:90a:1901:: with SMTP id
 1mr6710009pjg.199.1594927339413; 
 Thu, 16 Jul 2020 12:22:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id q24sm5641236pfg.95.2020.07.16.12.22.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jul 2020 12:22:18 -0700 (PDT)
Date: Thu, 16 Jul 2020 12:22:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 3/3] tasklet: Introduce new initialization API
Message-ID: <202007161216.9C9784FEBE@keescook>
References: <20200716030847.1564131-1-keescook@chromium.org>
 <20200716030847.1564131-4-keescook@chromium.org>
 <20200716153704.GM12769@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716153704.GM12769@casper.infradead.org>
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

On Thu, Jul 16, 2020 at 04:37:04PM +0100, Matthew Wilcox wrote:
> On Wed, Jul 15, 2020 at 08:08:47PM -0700, Kees Cook wrote:
> > +#define DECLARE_TASKLET(name, _callback)		\
> > +struct tasklet_struct name = {				\
> > +	.count = ATOMIC_INIT(0),			\
> > +	.callback = _callback,				\
> > +	.use_callback = true,				\
> > +}
> > +
> > +#define DECLARE_TASKLET_DISABLED(name, _callback)	\
> > +struct tasklet_struct name = {				\
> > +	.count = ATOMIC_INIT(1),			\
> > +	.callback = _callback,				\
> > +}
> 
> You forgot to set use_callback here.

Eek; thank you.

> > @@ -547,7 +547,10 @@ static void tasklet_action_common(struct softirq_action *a,
> >  				if (!test_and_clear_bit(TASKLET_STATE_SCHED,
> >  							&t->state))
> >  					BUG();
> > -				t->func(t->data);
> > +				if (t->use_callback)
> > +					t->callback(t);
> > +				else
> > +					t->func(t->data);
> 
> I think this is the wrong way to do the conversion.  Start out by setting
> t->data to (unsigned long)t in the new initialisers.  Then convert the
> drivers (all 350 of them) to the new API.  Then you can get rid of 'data'
> from the tasklet_struct.

That's what I did when I converted timer_struct, and it ended up creating
a mess for Control Flow Integrity checking. (The problem isn't actually
casting .data, but rather in how the callsite calls the callback --
casting the callback assignments doesn't fix the mismatch between the
caller and the callback's expectation about the function prototype
under CFI.) I got lucky with timer_struct (in v4.14) in that not much
had been converted, and I was able to do the entire conversion in the
next kernel release.

So, this time, I'm trying to avoid the prototype mismatch mess by
providing a selector to determine which prototype the callback should
be called through, and I was happy to discover I could do it without
growing the tasklet structure. Obviously the memory corruption safety
improvement won't be realized until both .data, .use_callback, and .func
are removed, but that was true even with the earlier style of conversion.

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

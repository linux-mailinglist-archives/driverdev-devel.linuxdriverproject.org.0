Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C554422272C
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 17:38:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2DF3923340;
	Thu, 16 Jul 2020 15:38:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PYz4YSwOKCWx; Thu, 16 Jul 2020 15:38:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E2F6522B6D;
	Thu, 16 Jul 2020 15:38:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AEB801BF38D
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 15:38:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A9E908B3B1
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 15:38:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5NKwj+PrAYgb for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 15:38:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F0C088B3AC
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 15:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=o6oHT2rpgf0cErqSO7RynM1ahrdcZBKx58Lp4xYSPqk=; b=blVXROz0kqPs9WT7AReAWRXnaN
 giDr3C3VPp7qAB5MirGN6Ghar0/xZ6skZ2oTHZrIQnlWV0t6l172otR7fmoceWN/3Omnm1QChvIMq
 v24J9raPRCn37XZp1iaolfjuwtv7Xbf1SjhRG2+phHG2UAzWRhI9WhvuDp7GGNLuphLQb40yeLPn3
 CQvkTsWNMP4QZfiCDKNmVfer2n52y/giQdVBQQgnlCxKQCaxItNDXKZ4xi8RomDl1v2I45h76ddYe
 874YANmm/lqvFG5LUaTOLCBGOMdHl/R06HcEWCdFmgnxvTEFvwNCpVE7mt6U4f8u6oQtVOhd7dG0R
 /sE940zQ==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jw5wW-0004De-Tg; Thu, 16 Jul 2020 15:37:05 +0000
Date: Thu, 16 Jul 2020 16:37:04 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 3/3] tasklet: Introduce new initialization API
Message-ID: <20200716153704.GM12769@casper.infradead.org>
References: <20200716030847.1564131-1-keescook@chromium.org>
 <20200716030847.1564131-4-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716030847.1564131-4-keescook@chromium.org>
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

On Wed, Jul 15, 2020 at 08:08:47PM -0700, Kees Cook wrote:
> +#define DECLARE_TASKLET(name, _callback)		\
> +struct tasklet_struct name = {				\
> +	.count = ATOMIC_INIT(0),			\
> +	.callback = _callback,				\
> +	.use_callback = true,				\
> +}
> +
> +#define DECLARE_TASKLET_DISABLED(name, _callback)	\
> +struct tasklet_struct name = {				\
> +	.count = ATOMIC_INIT(1),			\
> +	.callback = _callback,				\
> +}

You forgot to set use_callback here.

> @@ -547,7 +547,10 @@ static void tasklet_action_common(struct softirq_action *a,
>  				if (!test_and_clear_bit(TASKLET_STATE_SCHED,
>  							&t->state))
>  					BUG();
> -				t->func(t->data);
> +				if (t->use_callback)
> +					t->callback(t);
> +				else
> +					t->func(t->data);

I think this is the wrong way to do the conversion.  Start out by setting
t->data to (unsigned long)t in the new initialisers.  Then convert the
drivers (all 350 of them) to the new API.  Then you can get rid of 'data'
from the tasklet_struct.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

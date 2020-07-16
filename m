Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2975222171
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 13:31:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 67B5E24804;
	Thu, 16 Jul 2020 11:31:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GQ2BYHI7l2k9; Thu, 16 Jul 2020 11:31:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DF9F12426B;
	Thu, 16 Jul 2020 11:31:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 55F6C1BF3C0
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 11:31:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4FCAC8830C
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 11:31:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rqgLsKaE3hmi for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 11:31:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 57D1F881D9
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 11:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=kCBscy4ICmY9v1gZK6PYqPDzXfgn2dK6Smw6OZ6pwbU=; b=cRbax8BTeNpQ2tEZPMz++wHfoA
 YY9T8+65ROJBAdBZ7H8FzaY/KSeuSeoYlwNsCGmLP8mDevULQFXYgV781OyBKYpkpkWeq0Slxsu41
 EVIi5ybC98tuKjfgKsxKaDjZbeJDht1Recazoo7KeQuuxBxH+4aXVOmjx2RPn95gB5VEUNiMr4J3k
 MXflrKeV66Kc8r72b7/yQBgRCpSetCin1QZz9VjOlZsGG1eKVdFOyiJOEYD/MF3uEup1kOMDFOlI1
 j+MqVHQuoR5capmxrlF8mTZDWBljT+SXL6D8dERmtywfxxQfBTKjZFrNsVs4CnAkuWWd9HVhR0HuD
 wYPT/vcw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jw24g-0001wq-AS; Thu, 16 Jul 2020 11:29:14 +0000
Date: Thu, 16 Jul 2020 12:29:14 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 2/3] treewide: Replace DECLARE_TASKLET() with
 DECLARE_TASKLET_OLD()
Message-ID: <20200716112914.GK12769@casper.infradead.org>
References: <20200716030847.1564131-1-keescook@chromium.org>
 <20200716030847.1564131-3-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716030847.1564131-3-keescook@chromium.org>
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

On Wed, Jul 15, 2020 at 08:08:46PM -0700, Kees Cook wrote:
> This converts all the existing DECLARE_TASKLET() (and ...DISABLED)
> macros with DECLARE_TASKLET_OLD() in preparation for refactoring the
> tasklet callback type. All existing DECLARE_TASKLET() users had a "0"
> data argument, it has been removed here as well.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
[...]
>  16 files changed, 26 insertions(+), 21 deletions(-)

This is about 5% of what needs to change.  There are 350 callers of
tasklet_init(), and that still takes a 'data' argument.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

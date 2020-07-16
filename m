Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B265C221DFF
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 10:15:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8595B88DE3;
	Thu, 16 Jul 2020 08:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xiGH8Z_foAZl; Thu, 16 Jul 2020 08:15:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06C9588D63;
	Thu, 16 Jul 2020 08:15:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6E381BF312
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 08:15:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8E0FC2271C
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 08:15:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sjUekLHjyiLT for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 08:15:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by silver.osuosl.org (Postfix) with ESMTPS id 83DA1226D4
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 08:15:49 +0000 (UTC)
Date: Thu, 16 Jul 2020 10:15:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1594887345;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Yn1umK+caUdMmMSNg+DEfBz4G3dj7XgdwXV/exFiYfQ=;
 b=UaFBKEA6NODD9CMCeCn4AwJJl+5Kb+eLxkOEAaardBheygNhikE3rlTYEMw5vaR51/Lawq
 7mrw/y3Z1AkwNQOP9LPdJjqePDdaFl5hWIwglIWh3mfsb2WuyFAVQIcALQM33iIyFKGFOj
 fa03u9uEJlrow8rG5a37UEKVEfdsK0ZmcBpclOT7xWQ9hH31YQZe7VjvBJv9FND71PPU45
 1K1qbauIzUgepakJxCLbRbOaMY0m7eICOmpcgqw4KVnQDM7Lkbns9Ap6g4Jqab08zfGYM1
 yr4OtcJqxtSX1gCSMt8B+famnlapOvVi1qj2ZLSe4MQSiJXSwlds1pkhkro8Jg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1594887345;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Yn1umK+caUdMmMSNg+DEfBz4G3dj7XgdwXV/exFiYfQ=;
 b=5Sk5Wz7PNQjRQnpYCfpv1U5JHmR5MI/fixBOjSbTfFHFRjXeJYKxTA/HCkWq4XYLVNfwXY
 n6eqRIBMER6pBPCA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 0/3] Modernize tasklet callback API
Message-ID: <20200716081538.2sivhkj4hcyrusem@linutronix.de>
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
 alsa-devel@alsa-project.org, Allen Pais <allen.lkml@gmail.com>,
 netdev@vger.kernel.org, Christian Gromm <christian.gromm@microchip.com>,
 Will Deacon <will@kernel.org>, devel@driverdev.osuosl.org,
 Jonathan Corbet <corbet@lwn.net>, Daniel Thompson <daniel.thompson@linaro.org>,
 "David S. Miller" <davem@davemloft.net>,
 Masahiro Yamada <masahiroy@kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Julian Wiedmann <jwi@linux.ibm.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, Jiri Slaby <jslaby@suse.com>,
 Jakub Kicinski <kuba@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wambui Karuga <wambui.karugax@gmail.com>, Kees Cook <keescook@chromium.org>,
 Vasily Gorbik <gor@linux.ibm.com>, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 linux-input@vger.kernel.org, Ursula Braun <ubraun@linux.ibm.com>,
 Stephen Boyd <swboyd@chromium.org>,
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

On 2020-07-16 09:57:18 [+0200], Peter Zijlstra wrote:
> 
> there appear to be hardly any users left.. Can't we stage an extinction
> event here instead?

Most of the time the tasklet is scheduled from an interrupt handler. So
we could get rid of these tasklets by using threaded IRQs.

Sebastian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CC3221D70
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 09:30:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4DC58226D7;
	Thu, 16 Jul 2020 07:30:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O3VQO5YlH-in; Thu, 16 Jul 2020 07:30:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 61940207A9;
	Thu, 16 Jul 2020 07:30:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 45E691BF3BF
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 07:30:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3DD438A51D
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 07:30:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QNJWfL4PJm0F for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 07:30:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 193478A4DB
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 07:30:17 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D622D206C1;
 Thu, 16 Jul 2020 07:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594884616;
 bh=mn6iTBJseqW6x95DXLzjCrLI7Ry2VVFhniqqXYPIzaE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Phc6jm75BYs2701ce9G8bX4UnXRMO9gP//NOxj7gAtA+SR+gVk+ehe0idhpetsJbC
 6qT1RZjEEosqxo95k/Yl4CU/mLc7bykaJGRcZSAU6YGhwz/a2yRCZIMAj+095bxmQv
 6PeXnkbT8e99OL/8Dd8AnTc+6KMVnZ5RGOVEV95A=
Date: Thu, 16 Jul 2020 09:30:10 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 3/3] tasklet: Introduce new initialization API
Message-ID: <20200716073010.GB971895@kroah.com>
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
 Douglas Anderson <dianders@chromium.org>, Oscar Carter <oscar.carter@gmx.com>,
 Mitchell Blank Jr <mitch@sfgoth.com>, kernel-hardening@lists.openwall.com,
 Peter Zijlstra <peterz@infradead.org>, kgdb-bugreport@lists.sourceforge.net,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, alsa-devel@alsa-project.org,
 Takashi Iwai <tiwai@suse.com>, Christian Gromm <christian.gromm@microchip.com>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>, Will Deacon <will@kernel.org>,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Masahiro Yamada <masahiroy@kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Julian Wiedmann <jwi@linux.ibm.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, Jiri Slaby <jslaby@suse.com>,
 Jakub Kicinski <kuba@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wambui Karuga <wambui.karugax@gmail.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, linux-input@vger.kernel.org,
 Ursula Braun <ubraun@linux.ibm.com>, Stephen Boyd <swboyd@chromium.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jaroslav Kysela <perex@perex.cz>,
 Felipe Balbi <balbi@kernel.org>, Kyungtae Kim <kt0755@gmail.com>,
 netdev@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Allen Pais <allen.lkml@gmail.com>, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, Jason Wessel <jason.wessel@windriver.com>,
 Karsten Graul <kgraul@linux.ibm.com>, Romain Perier <romain.perier@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 15, 2020 at 08:08:47PM -0700, Kees Cook wrote:
> From: Romain Perier <romain.perier@gmail.com>
> 
> Nowadays, modern kernel subsystems that use callbacks pass the data
> structure associated with a given callback as argument to the callback.
> The tasklet subsystem remains one which passes an arbitrary unsigned
> long to the callback function. This has several problems:
> 
> - This keeps an extra field for storing the argument in each tasklet
>   data structure, it bloats the tasklet_struct structure with a redundant
>   .data field
> 
> - No type checking can be performed on this argument. Instead of
>   using container_of() like other callback subsystems, it forces callbacks
>   to do explicit type cast of the unsigned long argument into the required
>   object type.
> 
> - Buffer overflows can overwrite the .func and the .data field, so
>   an attacker can easily overwrite the function and its first argument
>   to whatever it wants.
> 
> Add a new tasklet initialization API, via DECLARE_TASKLET() and
> tasklet_setup(), which will replace the existing ones.
> 
> This work is greatly inspired by the timer_struct conversion series,
> see commit e99e88a9d2b0 ("treewide: setup_timer() -> timer_setup()")
> 
> To avoid problems with both -Wcast-function-type (which is enabled in
> the kernel via -Wextra is several subsystems), and with mismatched
> function prototypes when build with Control Flow Integrity enabled,
> this adds the "use_callback" member to let the tasklet caller choose
> which union member to call through. Once all old API uses are removed,
> this and the .data member will be removed as well. (On 64-bit this does
> not grow the struct size as the new member fills the hole after atomic_t,
> which is also "int" sized.)
> 
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> Co-developed-by: Allen Pais <allen.lkml@gmail.com>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> Co-developed-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  include/linux/interrupt.h | 24 +++++++++++++++++++++++-
>  kernel/softirq.c          | 18 +++++++++++++++++-
>  2 files changed, 40 insertions(+), 2 deletions(-)

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

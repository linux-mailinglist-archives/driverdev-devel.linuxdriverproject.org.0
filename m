Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9C924CB1D
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 05:05:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E70BE886BC;
	Fri, 21 Aug 2020 03:05:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DwW5yoyuwVmy; Fri, 21 Aug 2020 03:05:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C3CE886A4;
	Fri, 21 Aug 2020 03:05:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 39ED51BF34B
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 03:05:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2BEAB22E6E
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 03:05:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o4d1-tLkGggd for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 03:05:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 97F0222D0D
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 03:05:02 +0000 (UTC)
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2EDEF20732;
 Fri, 21 Aug 2020 03:05:01 +0000 (UTC)
Date: Thu, 20 Aug 2020 23:04:59 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH v4 3/3] media: atomisp: Only use trace_printk if allowed
Message-ID: <20200820230459.2471c892@oasis.local.home>
In-Reply-To: <c0ca85e475d1e761431b2c10ade803451c74178f.camel@perches.com>
References: <20200820170951.v4.1.Ia54fe801f246a0b0aee36fb1f3bfb0922a8842b0@changeid>
 <20200820170951.v4.3.I066d89f39023956c47fb0a42edf196b3950ffbf7@changeid>
 <20200820102347.15d2f610@oasis.local.home>
 <CANMq1KCoEZVj=sjxCqBhqLZKBab57+82=Rk_LN7fc3aCuNHMUw@mail.gmail.com>
 <20200820203601.4f70bf98@oasis.local.home>
 <CANMq1KAAgXG9MKMZ_D9zYFV-j0oVreA_AeSw-8FoyJgZ9eWQpg@mail.gmail.com>
 <20200820215701.667f02b2@oasis.local.home>
 <f9d33bcaa2eda680752205d3c3690cb6bc421730.camel@perches.com>
 <CANMq1KDYBbtrrCw6YUeoAPeHyet3L7qM3di9zmULDDRaQR_fZA@mail.gmail.com>
 <c0ca85e475d1e761431b2c10ade803451c74178f.camel@perches.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Nicolas Boichat <drinkcat@chromium.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Douglas Anderson <dianders@chromium.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Guenter Roeck <groeck@chromium.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 20 Aug 2020 19:49:59 -0700
Joe Perches <joe@perches.com> wrote:

> Perhaps make trace_printk dependent on #define DEBUG?

This is basically what Nicolas's patch series does in this very patch!

And no, I hate it. We are currently discussing ways of not having to
modify the config in order to allow trace_printk() to be used.

We don't want to burden the developer to take a config, add a bunch of
trace_printks() and find that it's compiled out!

Thus, this is a NAK.

-- Steve


> 
> Something like:
> ---
>  include/linux/kernel.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/include/linux/kernel.h b/include/linux/kernel.h
> index 500def620d8f..6ca8f958df73 100644
> --- a/include/linux/kernel.h
> +++ b/include/linux/kernel.h
> @@ -717,6 +717,7 @@ do {									\
>   * let gcc optimize the rest.
>   */
>  
> +#ifdef DEBUG
>  #define trace_printk(fmt, ...)				\
>  do {							\
>  	char _______STR[] = __stringify((__VA_ARGS__));	\
> @@ -725,6 +726,12 @@ do {							\
>  	else						\
>  		trace_puts(fmt);			\
>  } while (0)
> +#else
> +#define trace_printk(fmt, ...)						\
> +do {									\
> +	__trace_printk_check_format(fmt, ##args);			\
> +} while (0)
> +#endif
>  
>  #define do_trace_printk(fmt, args...)					\
>  do {									\
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

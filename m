Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFFD24CB23
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 05:08:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3C9BC22EE6;
	Fri, 21 Aug 2020 03:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u6Hy4lYV689n; Fri, 21 Aug 2020 03:08:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 85D8E22E6E;
	Fri, 21 Aug 2020 03:08:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9792F1BF34B
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 03:08:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9254E20524
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 03:08:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RfyRi+uGKOIo for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 03:08:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C02D2203FB
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 03:08:07 +0000 (UTC)
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C2AB20732;
 Fri, 21 Aug 2020 03:08:06 +0000 (UTC)
Date: Thu, 20 Aug 2020 23:08:04 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH v4 3/3] media: atomisp: Only use trace_printk if allowed
Message-ID: <20200820230804.7a9015af@oasis.local.home>
In-Reply-To: <20200820230459.2471c892@oasis.local.home>
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
 <20200820230459.2471c892@oasis.local.home>
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

On Thu, 20 Aug 2020 23:04:59 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> On Thu, 20 Aug 2020 19:49:59 -0700
> Joe Perches <joe@perches.com> wrote:
> 
> > Perhaps make trace_printk dependent on #define DEBUG?  
> 
> This is basically what Nicolas's patch series does in this very patch!
> 
> And no, I hate it. We are currently discussing ways of not having to
> modify the config in order to allow trace_printk() to be used.
> 
> We don't want to burden the developer to take a config, add a bunch of
> trace_printks() and find that it's compiled out!
>

This also breaks another use case. You may be working on a module for a
production kernel. It is fine to include trace_printk() in your module,
and load it on the production kernel. You will get that banner when you
load your module, but that's OK because it is still under development.

But something like this change will prevent that from happening.

-- Steve
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B7524C939
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 02:36:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 78E64885E4;
	Fri, 21 Aug 2020 00:36:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zLutHmqU6x9p; Fri, 21 Aug 2020 00:36:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EAC9E884A7;
	Fri, 21 Aug 2020 00:36:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 26E651BF2A9
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 00:36:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 07BB922C6B
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 00:36:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GGcAgO0ZOXbt for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 00:36:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B17302052F
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 00:36:04 +0000 (UTC)
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E07820720;
 Fri, 21 Aug 2020 00:36:03 +0000 (UTC)
Date: Thu, 20 Aug 2020 20:36:01 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [PATCH v4 3/3] media: atomisp: Only use trace_printk if allowed
Message-ID: <20200820203601.4f70bf98@oasis.local.home>
In-Reply-To: <CANMq1KCoEZVj=sjxCqBhqLZKBab57+82=Rk_LN7fc3aCuNHMUw@mail.gmail.com>
References: <20200820170951.v4.1.Ia54fe801f246a0b0aee36fb1f3bfb0922a8842b0@changeid>
 <20200820170951.v4.3.I066d89f39023956c47fb0a42edf196b3950ffbf7@changeid>
 <20200820102347.15d2f610@oasis.local.home>
 <CANMq1KCoEZVj=sjxCqBhqLZKBab57+82=Rk_LN7fc3aCuNHMUw@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 21 Aug 2020 08:13:00 +0800
Nicolas Boichat <drinkcat@chromium.org> wrote:

> On Thu, Aug 20, 2020 at 10:23 PM Steven Rostedt <rostedt@goodmis.org> wrote:
> >
> > On Thu, 20 Aug 2020 17:14:12 +0800
> > Nicolas Boichat <drinkcat@chromium.org> wrote:
> >  
> > > Technically, we could only initialize the trace_printk buffers
> > > when the print env is switched, to avoid the build error and
> > > unconditional boot-time warning, but I assume this printing
> > > framework will eventually get removed when the driver moves out
> > > of staging?  
> >
> > Perhaps this should be converting into a trace event. Look at what bpf
> > did for their bpf_trace_printk().
> >
> > The more I think about it, the less I like this series.  
> 
> To make it clear, the primary goal of this series is to get rid of
> trace_printk sprinkled in the kernel by making sure some randconfig
> builds fail. Since my v2, there already has been one more added (the
> one that this patch removes), so I'd like to land 2/3 ASAP to prevent
> even more from being added.
> 
> Looking at your reply on 1/3, I think we are aligned on that goal? Is
> there some other approach you'd recommend?
> 
> Now, I'm not pretending my fixes are the best possible ones, but I
> would much rather have the burden of converting to trace events on the
> respective driver maintainers. (btw is there a short
> documentation/tutorial that I could link to in these patches, to help
> developers understand what is the recommended way now?)
>

I like the goal, but I guess I never articulated the problem I have
with the methodology.

trace_printk() is meant to be a debugging tool. Something that people
can and do sprinkle all over the kernel to help them find a bug in
areas that are called quite often (where printk() is way too slow).

The last thing I want them to deal with is adding a trace_printk() with
their distro's config (or a config from someone that triggered the bug)
only to have the build to fail, because they also need to add a config
value.

I add to the Cc a few developers I know that use trace_printk() in this
fashion. I'd like to hear their view on having to add a config option
to make trace_printk work before they test a config that is sent to
them.

-- Steve
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

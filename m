Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0940C24CAE5
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 04:39:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 846A088630;
	Fri, 21 Aug 2020 02:39:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wtG1TC0xKFMn; Fri, 21 Aug 2020 02:39:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF39C88607;
	Fri, 21 Aug 2020 02:39:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 132DD1BF9C1
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 02:39:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EC9D722D22
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 02:39:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B9e2s9j-sJmA for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 02:39:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com
 [209.85.217.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 7468E22D0D
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 02:39:14 +0000 (UTC)
Received: by mail-vs1-f68.google.com with SMTP id o184so135262vsc.0
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 19:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ATzzWYs+KVYDQm4ODJ6A/MRFRb4qw5XmLoXvOYBjQeE=;
 b=HknauRAelv+awTG11z2ms/wbIkkbDlXKONPWMwHo6Axvkpce0knAKrOQgSNvEqsGpb
 7crJHINAz47tYgDwbQe8/j6N1cOyAhABm3x+qlU38WF1AQItiwlIveLjPK+xyHsoPwnJ
 t4wJLKxMw5zoz0bqW8nn+BieSqxP055TB9oD8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ATzzWYs+KVYDQm4ODJ6A/MRFRb4qw5XmLoXvOYBjQeE=;
 b=CwnHfWZRsj+aufDN+s41EtlAqMwkIdtEHODscWbDVR/KuTdfJ+hZNk1Rp1b8/AGw0S
 6eySLADlO3ngs2Ag4kmOJ8o8euCb+EWb9ZByqkdy4FDovca0pnv+MLZ0oD+MK+5PO6Jy
 QE5PeQ9PXO1RnNQ/hWI4XA/OuOHWUvOhFsMLQYLw4KoxhO4bEyOjdTM94yZqyCUawQxy
 HJbBLqUAx8bXQ3/1qwrrw0T4KCmDpU8vv8WqKnHAdNTYJqM+V/GQrxl4aJBKiz7daA2R
 YGi5hKlmt+uRzpZaD+kdU2B4uA51RLwD9NG+nnP4FXf42aYR0mFZIYrx/rNaHnOIvWeJ
 vQ2w==
X-Gm-Message-State: AOAM531hVo5R5sW8HG+esC5lu7eTwGLIwjWiI5IrMB9XB+seeHvIgLwB
 yXraIkYPGVVJwm9BFXW6Ng9oAKEYSMRSpobI3Mu0HA==
X-Google-Smtp-Source: ABdhPJxI0XsWTYVDjT+S9dMJzFMqukJVk1zWrjVresd73e30y68GbLUwP1QE5T0R3Eko8pOPMFGk4sINfN/UDY79vMY=
X-Received: by 2002:a67:68d2:: with SMTP id d201mr555874vsc.186.1597977553269; 
 Thu, 20 Aug 2020 19:39:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200820170951.v4.1.Ia54fe801f246a0b0aee36fb1f3bfb0922a8842b0@changeid>
 <20200820170951.v4.3.I066d89f39023956c47fb0a42edf196b3950ffbf7@changeid>
 <20200820102347.15d2f610@oasis.local.home>
 <CANMq1KCoEZVj=sjxCqBhqLZKBab57+82=Rk_LN7fc3aCuNHMUw@mail.gmail.com>
 <20200820203601.4f70bf98@oasis.local.home>
 <CANMq1KAAgXG9MKMZ_D9zYFV-j0oVreA_AeSw-8FoyJgZ9eWQpg@mail.gmail.com>
 <20200820215701.667f02b2@oasis.local.home>
In-Reply-To: <20200820215701.667f02b2@oasis.local.home>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 21 Aug 2020 10:39:02 +0800
Message-ID: <CANMq1KCpV+RKCqHsK-=Xeb+Vq28qdnBVF51rcga7m9-xjqNSCg@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] media: atomisp: Only use trace_printk if allowed
To: Steven Rostedt <rostedt@goodmis.org>
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
 lkml <linux-kernel@vger.kernel.org>, Douglas Anderson <dianders@chromium.org>,
 Joe Perches <joe@perches.com>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Guenter Roeck <groeck@chromium.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 21, 2020 at 9:57 AM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> On Fri, 21 Aug 2020 09:39:19 +0800
> Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> > On Fri, Aug 21, 2020 at 8:36 AM Steven Rostedt <rostedt@goodmis.org> wrote:
> > >
> > > On Fri, 21 Aug 2020 08:13:00 +0800
> > > Nicolas Boichat <drinkcat@chromium.org> wrote:
> > >
> > > > On Thu, Aug 20, 2020 at 10:23 PM Steven Rostedt <rostedt@goodmis.org> wrote:
> > > > >
> > > > > On Thu, 20 Aug 2020 17:14:12 +0800
> > > > > Nicolas Boichat <drinkcat@chromium.org> wrote:
> > > > >
> > > > > > Technically, we could only initialize the trace_printk buffers
> > > > > > when the print env is switched, to avoid the build error and
> > > > > > unconditional boot-time warning, but I assume this printing
> > > > > > framework will eventually get removed when the driver moves out
> > > > > > of staging?
> > > > >
> > > > > Perhaps this should be converting into a trace event. Look at what bpf
> > > > > did for their bpf_trace_printk().
> > > > >
> > > > > The more I think about it, the less I like this series.
> > > >
> > > > To make it clear, the primary goal of this series is to get rid of
> > > > trace_printk sprinkled in the kernel by making sure some randconfig
> > > > builds fail. Since my v2, there already has been one more added (the
> > > > one that this patch removes), so I'd like to land 2/3 ASAP to prevent
> > > > even more from being added.
> > > >
> > > > Looking at your reply on 1/3, I think we are aligned on that goal? Is
> > > > there some other approach you'd recommend?
> > > >
> > > > Now, I'm not pretending my fixes are the best possible ones, but I
> > > > would much rather have the burden of converting to trace events on the
> > > > respective driver maintainers. (btw is there a short
> > > > documentation/tutorial that I could link to in these patches, to help
> > > > developers understand what is the recommended way now?)
> > > >
> > >
> > > I like the goal, but I guess I never articulated the problem I have
> > > with the methodology.
> > >
> > > trace_printk() is meant to be a debugging tool. Something that people
> > > can and do sprinkle all over the kernel to help them find a bug in
> > > areas that are called quite often (where printk() is way too slow).
> > >
> > > The last thing I want them to deal with is adding a trace_printk() with
> > > their distro's config (or a config from someone that triggered the bug)
> > > only to have the build to fail, because they also need to add a config
> > > value.
> > >
> > > I add to the Cc a few developers I know that use trace_printk() in this
> > > fashion. I'd like to hear their view on having to add a config option
> > > to make trace_printk work before they test a config that is sent to
> > > them.
> >
> > Gotcha, thanks. I have also used trace_printk in the past, as
> > uncommitted changes (and understand the usefulness ,-)). And in Chrome
> > OS team here, developers have also raised this concern: how do we make
> > the developer flow convenient so that we can add trace_printk to our
> > code for debugging, without having to flip back that config option,
> > and _yet_ make sure that no trace_printk ever makes it into our
> > production kernels. We have creative ways of making that work (portage
> > USE flags and stuff). But I'm not sure about other flows, and your
> > concern is totally valid...
> >
> > Some other approaches/ideas:
> >  1. Filter all lkml messages that contain trace_printk. Already found
> > 1 instance, and I can easily reply to those with a semi-canned answer,
> > if I remember to check that filter regularly (not sustainable in the
> > long run...).
>
> Added Joe Perches to the thread.
>
> We can update checkpatch.pl to complain about a trace_printk() that it
> finds in the added code.

Oh, that's a good and simple idea.

>
> >  2. Integration into some kernel test robot? (I will not roll my own
> > for this ,-)) It may be a bit difficult as some debug config options
> > do enable trace_printk, and that's ok.
> >  3. In Chromium OS, I can add a unit test (i.e. something outside of
> > the normal kernel build system), but that'll only catch regressions
> > downstream (or when we happen to backport patches).
> >
> > Down the line, #3 catches what I care about the most (Chromium OS
> > issues: we had production kernels for a few days/weeks showing that
> > splat on boot), but it'd be nice to have something upstream that
> > benefits everyone.
> >
>
> What about an opposite config. That is, not have a config to enable it.
> But one to disable it. If it is disabled and a trace_printk is found,
> it will fail the build. This way your builds will not allow your kernel
> to get out the door with one.
>
> #ifdef CONFIG_DISABLE_TRACE_PRINTK
> #define trace_printk    __this_function_is_disabled
> #endif

I'm not sure how that helps? I mean, the use case you have in mind is
somebody reusing a distro/random config and not being able to use
trace_printk, right? If that config has CONFIG_DISABLE_TRACE_PRINTK=y,
then the developer will still need to flip that back.

Note that the option I'm added has default=y (_allow_ trace_printk),
so I don't think default y or default n really matters?

>
> ?
>
> -- Steve
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C74C24D4A9
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 14:07:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 46ECD86D5C;
	Fri, 21 Aug 2020 12:07:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HvQUkLzmIifO; Fri, 21 Aug 2020 12:07:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0918E86CFD;
	Fri, 21 Aug 2020 12:07:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15B9F1BF2BC
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 12:07:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0FABA86CFD
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 12:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RSFM-sTShzKp for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 12:07:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com
 [209.85.221.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1C82086CEF
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 12:07:25 +0000 (UTC)
Received: by mail-vk1-f195.google.com with SMTP id i20so356899vkk.2
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 05:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kVDxTRyDBwbPwrgSC25vdW/uFWjmn7jgHKjNZekKG4w=;
 b=nymN1GNd9jWMDONXcidtog+2Q0KwbbczrA2qgOVUSaa4fN5Hzn4tsxEIXk+07Yk2mR
 5psdKnnA44uuIXgFvGDMt364VKNdl6H+djsciO0g2WfIFhlJ1ZsWHCOhMcAn8B2I2PK1
 a7LL3OxELSRctHlxbSyQ9wg7LpDr3+m3w3aZ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kVDxTRyDBwbPwrgSC25vdW/uFWjmn7jgHKjNZekKG4w=;
 b=AWRzGQj1O4Jb2huS5rumPfuPmVA4O+ACFUVO1rkjVaE54zo2i6I0o2c04a7IICiq2o
 dHmL/IZLFYt6md4HitDE41TwOVKJXkQ47m11P9d7RgmyntqUKhafgmTfVcLhghyFB0L1
 7vN6+805U7oNQHVQmJbu36/3PQTiY/8hLmlpKoU0USoyMKoIE+3wU/PpVtuGZ1bDP6BH
 IXt2QAushFb1H2iiQZfEqWhppe+734be+ZlP6tAM7gwtDUc/bZ84apwe7mCVzjXa/2g1
 NoqHUy9B8rMJw/U7RNIk5l2bKYViocpDNh8dRTJji0D/DFRubgbuRbJGmUJTNz3zyANx
 51Bg==
X-Gm-Message-State: AOAM5332oMZCxozGJ3fF2X/SC2Uj5f4Nu2Co5jomli6p0O5z1s5zDXr+
 tc8HOf+zM3QhPX0wKEwXyQfCIW9ZEaGa0A2Zkul2YA==
X-Google-Smtp-Source: ABdhPJw2hsJozfkAYmsllSm6AXtESBIK9eeDBFlrz8jg9UZ3ehEmMWHWkEQoIzdy2P/XNi2IT25XcT/TBIDJAatzOuE=
X-Received: by 2002:a1f:2444:: with SMTP id k65mr1256012vkk.33.1598011643708; 
 Fri, 21 Aug 2020 05:07:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200820170951.v4.1.Ia54fe801f246a0b0aee36fb1f3bfb0922a8842b0@changeid>
 <20200820170951.v4.3.I066d89f39023956c47fb0a42edf196b3950ffbf7@changeid>
 <20200820102347.15d2f610@oasis.local.home>
 <CANMq1KCoEZVj=sjxCqBhqLZKBab57+82=Rk_LN7fc3aCuNHMUw@mail.gmail.com>
 <20200820203601.4f70bf98@oasis.local.home>
 <21fae92da07c4566ba4eed3b5e1bce2d@AcuMS.aculab.com>
 <CANMq1KBvNqcdCsuDGGygYqS5+ZBw+qSVXTC+WWNycypG2=BRMQ@mail.gmail.com>
 <898c56e4b7ef4c3da1d634fdef5a8898@AcuMS.aculab.com>
In-Reply-To: <898c56e4b7ef4c3da1d634fdef5a8898@AcuMS.aculab.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 21 Aug 2020 20:07:12 +0800
Message-ID: <CANMq1KDT+uecuqxXRsxv9-sMv0sGXk6ZQ3hWv0aK34dfzaJXyg@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] media: atomisp: Only use trace_printk if allowed
To: David Laight <David.Laight@aculab.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 21, 2020 at 7:32 PM David Laight <David.Laight@aculab.com> wrote:
>
> From: Nicolas Boichat
> > Sent: 21 August 2020 11:28
> >
> > On Fri, Aug 21, 2020 at 4:48 PM David Laight <David.Laight@aculab.com> wrote:
> > >
> > > From: Steven Rostedt
> > > > Sent: 21 August 2020 01:36
> > > > On Fri, 21 Aug 2020 08:13:00 +0800
> > > > Nicolas Boichat <drinkcat@chromium.org> wrote:
> > > >
> > > > > On Thu, Aug 20, 2020 at 10:23 PM Steven Rostedt <rostedt@goodmis.org> wrote:
> > > > > >
> > > > > > On Thu, 20 Aug 2020 17:14:12 +0800
> > > > > > Nicolas Boichat <drinkcat@chromium.org> wrote:
> > > > > >
> > > > > > > Technically, we could only initialize the trace_printk buffers
> > > > > > > when the print env is switched, to avoid the build error and
> > > > > > > unconditional boot-time warning, but I assume this printing
> > > > > > > framework will eventually get removed when the driver moves out
> > > > > > > of staging?
> > > > > >
> > > > > > Perhaps this should be converting into a trace event. Look at what bpf
> > > > > > did for their bpf_trace_printk().
> > > > > >
> > > > > > The more I think about it, the less I like this series.
> > > > >
> > > > > To make it clear, the primary goal of this series is to get rid of
> > > > > trace_printk sprinkled in the kernel by making sure some randconfig
> > > > > builds fail. Since my v2, there already has been one more added (the
> > > > > one that this patch removes), so I'd like to land 2/3 ASAP to prevent
> > > > > even more from being added.
> > > > >
> > > > > Looking at your reply on 1/3, I think we are aligned on that goal? Is
> > > > > there some other approach you'd recommend?
> > > > >
> > > > > Now, I'm not pretending my fixes are the best possible ones, but I
> > > > > would much rather have the burden of converting to trace events on the
> > > > > respective driver maintainers. (btw is there a short
> > > > > documentation/tutorial that I could link to in these patches, to help
> > > > > developers understand what is the recommended way now?)
> > > > >
> > > >
> > > > I like the goal, but I guess I never articulated the problem I have
> > > > with the methodology.
> > > >
> > > > trace_printk() is meant to be a debugging tool. Something that people
> > > > can and do sprinkle all over the kernel to help them find a bug in
> > > > areas that are called quite often (where printk() is way too slow).
> > > >
> > > > The last thing I want them to deal with is adding a trace_printk() with
> > > > their distro's config (or a config from someone that triggered the bug)
> > > > only to have the build to fail, because they also need to add a config
> > > > value.
> > > >
> > > > I add to the Cc a few developers I know that use trace_printk() in this
> > > > fashion. I'd like to hear their view on having to add a config option
> > > > to make trace_printk work before they test a config that is sent to
> > > > them.
> > >
> > > Is it worth having three compile-time options:
> > > 1) trace_printk() ignored.
> >
> > CONFIG_TRACE=n (now)
> >
> > > 2) trace_printk() enabled.
> >
> > CONFIG_TRACE=y (now)
> >
> > > 3) trace_printk() generates a compile time error.
> >
> > CONFIG_TRACE=y and CONFIG_TRACING_ALLOW_PRINTK=n (my patch)
> >
> > >
> > > Normal kernel builds would ignore calls.
> > > Either a config option or a module option (etc) would enable it.
> > > A config option that 'rand-config' builds would turn on would
> > > generate compile-time errors.
> >
> > Yes, a config option is exactly what my patch 2/2 does. And see
> > Steven's argument.
>
> But you were adding #ifs to you code to enable the traces.
> That is just horrid.

Yeah this patch 3/3 is not the best (if I understand what you mean),
1/3 type of #ifdef is actually fairly common in the kernel (an ifdef
that you can enable manually in the same file, _not_ a config option).

Steven's point is that both 1/3 and 3/3 should be replaced by trace
events anyway.

>
> What you want is CONFIG_HJHJVLKHCVKIYVKIIYVYKIYVLUCLUCL=y (default n)
> that would only ever get set by a 'rand-config' build and would
> never be tested in any source code.

What I have now is CONFIG_TRACING_ALLOW_PRINTK=n (default y). That's
the same thing?

Also, I'd want to enable this option on Chromium OS (i.e. set your
CONFIG_HJHJVLKHCVKIYVKIIYVYKIYVLUCLUCL=y, or my
CONFIG_TRACING_ALLOW_PRINTK=n), and it's likely some distros would
make that choice (because they'd also do not want to see that big
trace_printk warning on their production kernels).

And then you end up with Steven's point (developers inconvenience when
trying to add trace_printk using a config that somebody else provided
to them) ,-(

>
> You might also want a #define that can set temporarily
> to enable traces in a specific file/module even though
> CONFIG_TRACE=n.

I don't understand how traces are supposed to work with CONFIG_TRACE=n?


> (But rand-config builds would still fail if they enabled the
> 'special' option.)


>
>         David.
>
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

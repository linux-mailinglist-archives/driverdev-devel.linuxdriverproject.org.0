Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBB524D51F
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 14:37:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 31E2322E8C;
	Fri, 21 Aug 2020 12:37:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U66Yo48GVBJs; Fri, 21 Aug 2020 12:37:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8328D229A3;
	Fri, 21 Aug 2020 12:37:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C42C1BF2BC
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 12:37:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 73C9222270
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 12:37:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3rAh5YtXG6tA for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 12:37:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com
 [209.85.217.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 114F9203B5
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 12:37:28 +0000 (UTC)
Received: by mail-vs1-f65.google.com with SMTP id o184so740265vsc.0
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 05:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HUgN6ieJhIl8uII5WpVu/u5z15uJplqpBcG4NHNK9Tk=;
 b=B+XDozwpX0mgDxmJ6B/TSWbBDUbxlXICDWzTZ0j1JZrwcVr7nlDnFEkAXLfjy9/mv8
 htZLil76tPTHeIHrsH8uDlSs0MDekxxkQFL5tatwS+M8PXeS8Las4CgSNBfkRPfZZY5n
 Db2XXy4qs3y2Ha+4PSmAEzBhK26XXt/hZh7Hk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HUgN6ieJhIl8uII5WpVu/u5z15uJplqpBcG4NHNK9Tk=;
 b=OQ1/iFneh+zUXrcBKwBBT8YNEguS+zVmx2kJy5PUAL99zTrHdATDgK4UJEZaWlGKLK
 Oni3Kp2AcHejAoJcPjktjRtgXo5O4QNQrw5VDg7MTUl8/U2uxu8MDMryjOja7m2q2Lax
 dVjoq8rZnfbQYNJk4nlb7myENOqhi+rt37ousnLH5NKAjBjmWULqK6OweL0BvRhqUmV2
 MhZUU+FmJd5jUK5+nwqESlF0lTX1T5c3Ad+qFRupdRGLDFtiUbFO8KoCOlSPod2LDurA
 A7s1fYJd0cuY9PM19cSYsTxy2D3XOgTiBMbFC2OUG/6wbu23IBDvLzRem1RQ+8wjzsQp
 376w==
X-Gm-Message-State: AOAM533EGhOp93QBkEaPEXolazAKancR3jcB/8IA+SkqIkSak06oypkw
 ZbAjlsKMri4lLbpIRQ5jmVmDytpuFM2p4IfMg6xZ3xTrxZWrEw==
X-Google-Smtp-Source: ABdhPJygLjeX9qF2zIlcXZqIhRvgUeRfApyD41pRd420Ijd4idtK0rAzzpbRlTzYydU7YTYMB4F1QwLFqPlRNMYVFDE=
X-Received: by 2002:a67:f787:: with SMTP id j7mr1403877vso.79.1598013446831;
 Fri, 21 Aug 2020 05:37:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200820170951.v4.1.Ia54fe801f246a0b0aee36fb1f3bfb0922a8842b0@changeid>
 <20200820170951.v4.3.I066d89f39023956c47fb0a42edf196b3950ffbf7@changeid>
 <20200820102347.15d2f610@oasis.local.home>
 <CANMq1KCoEZVj=sjxCqBhqLZKBab57+82=Rk_LN7fc3aCuNHMUw@mail.gmail.com>
 <20200820203601.4f70bf98@oasis.local.home>
 <21fae92da07c4566ba4eed3b5e1bce2d@AcuMS.aculab.com>
 <CANMq1KBvNqcdCsuDGGygYqS5+ZBw+qSVXTC+WWNycypG2=BRMQ@mail.gmail.com>
 <898c56e4b7ef4c3da1d634fdef5a8898@AcuMS.aculab.com>
 <CANMq1KDT+uecuqxXRsxv9-sMv0sGXk6ZQ3hWv0aK34dfzaJXyg@mail.gmail.com>
 <6c5249afad274ce49e643d9b05706e3a@AcuMS.aculab.com>
In-Reply-To: <6c5249afad274ce49e643d9b05706e3a@AcuMS.aculab.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 21 Aug 2020 20:37:15 +0800
Message-ID: <CANMq1KCc-KObgJTe0vWXGHcsffMD=41VMe=GjtsKG0iobJES0Q@mail.gmail.com>
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

On Fri, Aug 21, 2020 at 8:18 PM David Laight <David.Laight@aculab.com> wrote:
>
> From: Nicolas Boichat
> > Sent: 21 August 2020 13:07
> ...
> > > You might also want a #define that can set temporarily
> > > to enable traces in a specific file/module even though
> > > CONFIG_TRACE=n.
> >
> > I don't understand how traces are supposed to work with CONFIG_TRACE=n?
>
> Probably because I meant something different :-)
>
> You want the kernel built so that there are no (expanded)
> calls to trace_printf() but with support for modules that
> contain them.
>
> Then I can load a module into a distro kernel that
> contains trace_printf() calls for debug testing.

Gotcha. I think it already works this way ,-)

So if you have CONFIG_TRACE=y, but no trace_printk in your
vmlinux/kernel, no memory is used, and no warning splat
(https://elixir.bootlin.com/linux/v5.8/source/kernel/trace/trace.c#L3160)
is displayed. But then when you load a module with trace_printk, the
buffers are allocated and the warning splat is printed.

The magic is here:
https://elixir.bootlin.com/linux/v5.8/source/kernel/trace/trace_printk.c#L53

My option wouldn't really change that. I mean, if you have
CONFIG_TRACING_ALLOW_PRINTK=n when you compile your module, it'd fail
at build time, but if you set it to =y, your module could happily
build and load (with the big warning splat), no matter how you built
your kernel (I mean, you still need CONFIG_TRACE=y, but
CONFIG_TRACING_ALLOW_PRINTK doesn't matter).

> Which is why I was suggesting a config option that
> only rand-config builds would ever set that would
> cause the calls to generate compile-time errors.

I think I already answered that one above. We'd want that config
option enabled on Chrome OS and we're not a rand-config build (I mean,
we're a very carefully selected random config ,-P).

Thanks,

>
>         David
>
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

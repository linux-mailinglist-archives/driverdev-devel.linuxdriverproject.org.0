Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7E624CAEC
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 04:42:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D4BB886BD;
	Fri, 21 Aug 2020 02:42:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bG04tx7yb12j; Fri, 21 Aug 2020 02:42:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A564886A4;
	Fri, 21 Aug 2020 02:42:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C4221BF9C1
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 02:42:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 36A2E86CD4
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 02:42:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aumDHysE-diZ for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 02:42:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com
 [209.85.222.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F38EC86CD2
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 02:42:26 +0000 (UTC)
Received: by mail-ua1-f66.google.com with SMTP id q68so145065uaq.0
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 19:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KRcYINGeMrkJsnhAghPntwftY8YIQTJq9q8O02Dazyc=;
 b=Kb+OKV7DQOGsISDsb7ycGgBlHZrAF4j+ubIx9mrQK2Af0qCfrWhkHaXe9SDOd6C2Wz
 xwlxyuo8RO6ENNuOn6U98HAigUM7CS6hiMIUGJkmnwijoXvc/kFLN/oUVAHbRcuhdUfs
 SObv7Y3Cbn1hrzcGDCUIrUz42utYsodAo4bhA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KRcYINGeMrkJsnhAghPntwftY8YIQTJq9q8O02Dazyc=;
 b=FO9y1zYYYmYGsqHagf0uYSaDrtKfL4M1xWRu3CbzzK5ydtxIzuDC+QVGl/4uha9lQb
 P9WhEShEpXpRb2IwMFi/u1T9jcSQHC8SyBFbzJRe7Tfb8vFCT3FSn5A3YGMWIAalW0sH
 BW+t6SPy8+Ynvg0hAeEv5w50pQdddyrWTOmY+5BgdbUFXjOFqfBqz/xPHS0pc/hY1ryF
 zG+R51e3QECBX6+wNuHIAr9jJWoVBIzIRdn5pdTooBjOE0n6wYy0kLg4Wi67UqCMUO76
 o1Q2tLXjgX4k4c5Tlq04aec1S7yqf38J3zcTk5bmqTul3qODtUFR61chNIFoFY/3Qn6o
 trWQ==
X-Gm-Message-State: AOAM533ue6PP8N/A/cClFWo4zcfCC73q8iCjGiQL/FaN7CDS2VLGKX+0
 lMBPZRHtvibbFBW+wpy99RCWI11X9ySyuY1co1s1Ng==
X-Google-Smtp-Source: ABdhPJwQSw+Mu7CDu/qPHEFFWNOTIiJKWxzRL5Kpq8hObaORvbMqMUkA/5RlPy0vT3897R9VKdnBNAYTanM1LbNkPrA=
X-Received: by 2002:ab0:41:: with SMTP id 59mr392357uai.40.1597977745886; Thu,
 20 Aug 2020 19:42:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200820170951.v4.1.Ia54fe801f246a0b0aee36fb1f3bfb0922a8842b0@changeid>
 <20200820170951.v4.3.I066d89f39023956c47fb0a42edf196b3950ffbf7@changeid>
 <20200820102347.15d2f610@oasis.local.home>
 <CANMq1KCoEZVj=sjxCqBhqLZKBab57+82=Rk_LN7fc3aCuNHMUw@mail.gmail.com>
 <20200820203601.4f70bf98@oasis.local.home>
 <CANMq1KAAgXG9MKMZ_D9zYFV-j0oVreA_AeSw-8FoyJgZ9eWQpg@mail.gmail.com>
 <20200820215701.667f02b2@oasis.local.home>
 <f9d33bcaa2eda680752205d3c3690cb6bc421730.camel@perches.com>
In-Reply-To: <f9d33bcaa2eda680752205d3c3690cb6bc421730.camel@perches.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 21 Aug 2020 10:42:14 +0800
Message-ID: <CANMq1KDYBbtrrCw6YUeoAPeHyet3L7qM3di9zmULDDRaQR_fZA@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] media: atomisp: Only use trace_printk if allowed
To: Joe Perches <joe@perches.com>
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
 lkml <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
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

On Fri, Aug 21, 2020 at 10:36 AM Joe Perches <joe@perches.com> wrote:
>
> On Thu, 2020-08-20 at 21:57 -0400, Steven Rostedt wrote:
> > On Fri, 21 Aug 2020 09:39:19 +0800
> > Nicolas Boichat <drinkcat@chromium.org> wrote:
> []
> > > Some other approaches/ideas:
> > >  1. Filter all lkml messages that contain trace_printk. Already found
> > > 1 instance, and I can easily reply to those with a semi-canned answer,
> > > if I remember to check that filter regularly (not sustainable in the
> > > long run...).
> >
> > Added Joe Perches to the thread.
> >
> > We can update checkpatch.pl to complain about a trace_printk() that it
> > finds in the added code.
>
> Why?
>
> I don't see much value in a trace_printk checkpatch warning.
> tracing is still dependent on CONFIG_TRACING otherwise
> trace_printk is an if (0)
>
> ELI5 please.

This is my "new" canned answer to this:

Please do not use trace_printk in production code [1,2], it is only
meant for debug use. Consider using trace events, or dev_dbg.
[1] https://elixir.bootlin.com/linux/v5.8/source/kernel/trace/trace.c#L3158
[2] https://elixir.bootlin.com/linux/v5.8/source/include/linux/kernel.h#L766

I also had arguments in patch 2/3 notes:

There's at least 3 reasons that I can come up with:
 1. trace_printk introduces some overhead. [some users, e.g.
Android/Chrome OS, want CONFIG_TRACING but _not_ that extra overhead]
 2. If the kernel keeps adding always-enabled trace_printk, it will be
much harder for developers to make use of trace_printk for debugging.
 3. People may assume that trace_printk is for debugging only, and may
accidentally output sensitive data (theoretical at this stage).

(we'll need to summarize that somehow if we want to add to checkpatch.pl)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

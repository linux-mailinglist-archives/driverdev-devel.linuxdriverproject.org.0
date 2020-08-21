Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8EF24D403
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 13:32:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B79086D4D;
	Fri, 21 Aug 2020 11:32:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tbn60P68WDef; Fri, 21 Aug 2020 11:32:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9391586D38;
	Fri, 21 Aug 2020 11:32:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C8181BF335
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 11:32:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6698C20501
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 11:32:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KorBYsngRcfR for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 11:32:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.86.151])
 by silver.osuosl.org (Postfix) with ESMTPS id A458622270
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 11:32:34 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-11-1J3ZoqrQOEmS6aQC-7Fa_Q-1; Fri, 21 Aug 2020 12:32:30 +0100
X-MC-Unique: 1J3ZoqrQOEmS6aQC-7Fa_Q-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 21 Aug 2020 12:32:29 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Fri, 21 Aug 2020 12:32:29 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nicolas Boichat' <drinkcat@chromium.org>
Subject: RE: [PATCH v4 3/3] media: atomisp: Only use trace_printk if allowed
Thread-Topic: [PATCH v4 3/3] media: atomisp: Only use trace_printk if allowed
Thread-Index: AQHWd1MRQFeXK2GIIEihfK8khxWsrqlCP3rwgAAMdQCAACDnQA==
Date: Fri, 21 Aug 2020 11:32:29 +0000
Message-ID: <898c56e4b7ef4c3da1d634fdef5a8898@AcuMS.aculab.com>
References: <20200820170951.v4.1.Ia54fe801f246a0b0aee36fb1f3bfb0922a8842b0@changeid>
 <20200820170951.v4.3.I066d89f39023956c47fb0a42edf196b3950ffbf7@changeid>
 <20200820102347.15d2f610@oasis.local.home>
 <CANMq1KCoEZVj=sjxCqBhqLZKBab57+82=Rk_LN7fc3aCuNHMUw@mail.gmail.com>
 <20200820203601.4f70bf98@oasis.local.home>
 <21fae92da07c4566ba4eed3b5e1bce2d@AcuMS.aculab.com>
 <CANMq1KBvNqcdCsuDGGygYqS5+ZBw+qSVXTC+WWNycypG2=BRMQ@mail.gmail.com>
In-Reply-To: <CANMq1KBvNqcdCsuDGGygYqS5+ZBw+qSVXTC+WWNycypG2=BRMQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: aculab.com
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Linux
 Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Nicolas Boichat
> Sent: 21 August 2020 11:28
> 
> On Fri, Aug 21, 2020 at 4:48 PM David Laight <David.Laight@aculab.com> wrote:
> >
> > From: Steven Rostedt
> > > Sent: 21 August 2020 01:36
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
> > Is it worth having three compile-time options:
> > 1) trace_printk() ignored.
> 
> CONFIG_TRACE=n (now)
> 
> > 2) trace_printk() enabled.
> 
> CONFIG_TRACE=y (now)
> 
> > 3) trace_printk() generates a compile time error.
> 
> CONFIG_TRACE=y and CONFIG_TRACING_ALLOW_PRINTK=n (my patch)
> 
> >
> > Normal kernel builds would ignore calls.
> > Either a config option or a module option (etc) would enable it.
> > A config option that 'rand-config' builds would turn on would
> > generate compile-time errors.
> 
> Yes, a config option is exactly what my patch 2/2 does. And see
> Steven's argument.

But you were adding #ifs to you code to enable the traces.
That is just horrid.

What you want is CONFIG_HJHJVLKHCVKIYVKIIYVYKIYVLUCLUCL=y (default n)
that would only ever get set by a 'rand-config' build and would
never be tested in any source code.

You might also want a #define that can set temporarily
to enable traces in a specific file/module even though
CONFIG_TRACE=n.
(But rand-config builds would still fail if they enabled the
'special' option.)

	David.

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

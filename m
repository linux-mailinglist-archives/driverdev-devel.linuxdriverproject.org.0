Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A84124D4C5
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 14:18:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 32FC186A32;
	Fri, 21 Aug 2020 12:18:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xCPJ-ed0IMfo; Fri, 21 Aug 2020 12:18:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 21B4B860E6;
	Fri, 21 Aug 2020 12:18:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D37FD1BF2BC
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 12:18:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CD8848832B
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 12:18:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9e26qbDiFFOC for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 12:18:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 80408882EA
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 12:18:33 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-48-5tsXRHYdNKyZh1jxPg801Q-1; Fri, 21 Aug 2020 13:18:29 +0100
X-MC-Unique: 5tsXRHYdNKyZh1jxPg801Q-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 21 Aug 2020 13:18:28 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Fri, 21 Aug 2020 13:18:28 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nicolas Boichat' <drinkcat@chromium.org>
Subject: RE: [PATCH v4 3/3] media: atomisp: Only use trace_printk if allowed
Thread-Topic: [PATCH v4 3/3] media: atomisp: Only use trace_printk if allowed
Thread-Index: AQHWd1MRQFeXK2GIIEihfK8khxWsrqlCP3rwgAAMdQCAACDnQP//+vQAgAARUeA=
Date: Fri, 21 Aug 2020 12:18:28 +0000
Message-ID: <6c5249afad274ce49e643d9b05706e3a@AcuMS.aculab.com>
References: <20200820170951.v4.1.Ia54fe801f246a0b0aee36fb1f3bfb0922a8842b0@changeid>
 <20200820170951.v4.3.I066d89f39023956c47fb0a42edf196b3950ffbf7@changeid>
 <20200820102347.15d2f610@oasis.local.home>
 <CANMq1KCoEZVj=sjxCqBhqLZKBab57+82=Rk_LN7fc3aCuNHMUw@mail.gmail.com>
 <20200820203601.4f70bf98@oasis.local.home>
 <21fae92da07c4566ba4eed3b5e1bce2d@AcuMS.aculab.com>
 <CANMq1KBvNqcdCsuDGGygYqS5+ZBw+qSVXTC+WWNycypG2=BRMQ@mail.gmail.com>
 <898c56e4b7ef4c3da1d634fdef5a8898@AcuMS.aculab.com>
 <CANMq1KDT+uecuqxXRsxv9-sMv0sGXk6ZQ3hWv0aK34dfzaJXyg@mail.gmail.com>
In-Reply-To: <CANMq1KDT+uecuqxXRsxv9-sMv0sGXk6ZQ3hWv0aK34dfzaJXyg@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0.001
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
> Sent: 21 August 2020 13:07
...
> > You might also want a #define that can set temporarily
> > to enable traces in a specific file/module even though
> > CONFIG_TRACE=n.
> 
> I don't understand how traces are supposed to work with CONFIG_TRACE=n?

Probably because I meant something different :-)

You want the kernel built so that there are no (expanded)
calls to trace_printf() but with support for modules that
contain them.

Then I can load a module into a distro kernel that
contains trace_printf() calls for debug testing.

Which is why I was suggesting a config option that
only rand-config builds would ever set that would
cause the calls to generate compile-time errors.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0BE24D33E
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 12:53:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9292880EA6;
	Fri, 21 Aug 2020 10:53:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oe2kCLhbH8E5; Fri, 21 Aug 2020 10:53:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C70786D24;
	Fri, 21 Aug 2020 10:53:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D904D1BF378
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 10:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CF934203CC
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 10:53:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rgYV1ZJW4-Hc for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 10:53:21 +0000 (UTC)
X-Greylist: delayed 04:40:00 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0172.hostedemail.com
 [216.40.44.172])
 by silver.osuosl.org (Postfix) with ESMTPS id B88F0203C9
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 10:53:21 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 7E56F180301C4
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 02:36:25 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id CB171100E7B43;
 Fri, 21 Aug 2020 02:36:22 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:2895:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:3871:3872:3874:4321:5007:6117:6248:6742:7903:10004:10400:10848:10967:11232:11658:11914:12296:12297:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:14777:21080:21324:21433:21627:21972:21990:30006:30012:30054:30060:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: army26_490db1927035
X-Filterd-Recvd-Size: 2425
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf04.hostedemail.com (Postfix) with ESMTPA;
 Fri, 21 Aug 2020 02:36:20 +0000 (UTC)
Message-ID: <f9d33bcaa2eda680752205d3c3690cb6bc421730.camel@perches.com>
Subject: Re: [PATCH v4 3/3] media: atomisp: Only use trace_printk if allowed
From: Joe Perches <joe@perches.com>
To: Steven Rostedt <rostedt@goodmis.org>, Nicolas Boichat
 <drinkcat@chromium.org>
Date: Thu, 20 Aug 2020 19:36:19 -0700
In-Reply-To: <20200820215701.667f02b2@oasis.local.home>
References: <20200820170951.v4.1.Ia54fe801f246a0b0aee36fb1f3bfb0922a8842b0@changeid>
 <20200820170951.v4.3.I066d89f39023956c47fb0a42edf196b3950ffbf7@changeid>
 <20200820102347.15d2f610@oasis.local.home>
 <CANMq1KCoEZVj=sjxCqBhqLZKBab57+82=Rk_LN7fc3aCuNHMUw@mail.gmail.com>
 <20200820203601.4f70bf98@oasis.local.home>
 <CANMq1KAAgXG9MKMZ_D9zYFV-j0oVreA_AeSw-8FoyJgZ9eWQpg@mail.gmail.com>
 <20200820215701.667f02b2@oasis.local.home>
User-Agent: Evolution 3.36.4-0ubuntu1 
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
 lkml <linux-kernel@vger.kernel.org>, Douglas Anderson <dianders@chromium.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Guenter Roeck <groeck@chromium.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2020-08-20 at 21:57 -0400, Steven Rostedt wrote:
> On Fri, 21 Aug 2020 09:39:19 +0800
> Nicolas Boichat <drinkcat@chromium.org> wrote:
[]
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

Why?

I don't see much value in a trace_printk checkpatch warning.
tracing is still dependent on CONFIG_TRACING otherwise
trace_printk is an if (0)

ELI5 please.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

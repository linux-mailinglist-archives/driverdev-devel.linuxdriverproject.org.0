Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F6F24CB18
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 05:01:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 72DE5886C1;
	Fri, 21 Aug 2020 03:01:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DEPe4ahycqiH; Fri, 21 Aug 2020 03:01:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 56536886A4;
	Fri, 21 Aug 2020 03:01:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB61A1BF9C1
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 03:01:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C818722EC9
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 03:01:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c70r7WvDu8vO for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 03:01:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5B86822E6E
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 03:01:08 +0000 (UTC)
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1EF220732;
 Fri, 21 Aug 2020 03:01:06 +0000 (UTC)
Date: Thu, 20 Aug 2020 23:01:05 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [PATCH v4 3/3] media: atomisp: Only use trace_printk if allowed
Message-ID: <20200820230105.1f9651b7@oasis.local.home>
In-Reply-To: <CANMq1KCpV+RKCqHsK-=Xeb+Vq28qdnBVF51rcga7m9-xjqNSCg@mail.gmail.com>
References: <20200820170951.v4.1.Ia54fe801f246a0b0aee36fb1f3bfb0922a8842b0@changeid>
 <20200820170951.v4.3.I066d89f39023956c47fb0a42edf196b3950ffbf7@changeid>
 <20200820102347.15d2f610@oasis.local.home>
 <CANMq1KCoEZVj=sjxCqBhqLZKBab57+82=Rk_LN7fc3aCuNHMUw@mail.gmail.com>
 <20200820203601.4f70bf98@oasis.local.home>
 <CANMq1KAAgXG9MKMZ_D9zYFV-j0oVreA_AeSw-8FoyJgZ9eWQpg@mail.gmail.com>
 <20200820215701.667f02b2@oasis.local.home>
 <CANMq1KCpV+RKCqHsK-=Xeb+Vq28qdnBVF51rcga7m9-xjqNSCg@mail.gmail.com>
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

On Fri, 21 Aug 2020 10:39:02 +0800
Nicolas Boichat <drinkcat@chromium.org> wrote:

> I'm not sure how that helps? I mean, the use case you have in mind is
> somebody reusing a distro/random config and not being able to use
> trace_printk, right? If that config has CONFIG_DISABLE_TRACE_PRINTK=y,
> then the developer will still need to flip that back.
> 
> Note that the option I'm added has default=y (_allow_ trace_printk),
> so I don't think default y or default n really matters?

Ideally, the production system doesn't have it set. It only sets it to
make sure that it's clean before sending out. But then it can add it
back before production. Yeah, it's pretty much cutting hairs between
the two. I don't like either one.

Really, if you are worried about this, just add your patch to your
local tree. I'm not sure this is something that can be fixed upstream.

Another idea is to add something like below, and build with:

 make CHECK_TRACE_PRINT=1

This way it is a build command line option that causes the build to
fail if trace_printk() is added.

This way production systems can add this to make sure their kernels are
free of trace_printk() but it doesn't affect the config that is used.

-- Steve

[ Not even compiled tested! ]

diff --git a/Makefile b/Makefile
index 2057c92a6205..5714a738879d 100644
--- a/Makefile
+++ b/Makefile
@@ -91,6 +91,13 @@ else
   Q = @
 endif
 
+ifeq ("$(origin CHECK_TRACE_PRINTK)", "command line")
+  KBUILD_NO_TRACE_PRINTK = $(NO_TRACE_PRINTK)
+endif
+ifndef KBUILD_NO_TRACE_PRINTK
+  KBUILD_NO_TRACE_PRINTK = 0
+endif
+
 # If the user is running make -s (silent mode), suppress echoing of
 # commands
 
@@ -839,6 +846,10 @@ KBUILD_AFLAGS	+= -gz=zlib
 KBUILD_LDFLAGS	+= --compress-debug-sections=zlib
 endif
 
+ifeq ($(KBUILD_NO_TRACE_PRINTK),1)
+KBUILD_CFLAGS += -DNO_TRACE_PRINTK
+endif
+
 KBUILD_CFLAGS += $(DEBUG_CFLAGS)
 export DEBUG_CFLAGS
 
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 500def620d8f..bee432547d26 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -680,11 +680,14 @@ extern void tracing_stop(void);
 static inline __printf(1, 2)
 void ____trace_printk_check_format(const char *fmt, ...)
 {
+#ifdef NO_TRACE_PRINTK
+	extern void __no_trace_printk_on_build(void);
+	__no_trace_printk_on_build();
+#endif
 }
 #define __trace_printk_check_format(fmt, args...)			\
 do {									\
-	if (0)								\
-		____trace_printk_check_format(fmt, ##args);		\
+	____trace_printk_check_format(fmt, ##args);			\
 } while (0)
 
 /**
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

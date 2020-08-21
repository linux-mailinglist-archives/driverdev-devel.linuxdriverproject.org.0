Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC0224C90F
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 02:18:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7AD3922DDB;
	Fri, 21 Aug 2020 00:18:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wadYlQU9JBC1; Fri, 21 Aug 2020 00:18:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 32C4622C6B;
	Fri, 21 Aug 2020 00:18:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4C4461BF9C1
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 00:18:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 41D0B22C6B
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 00:18:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Or8PTi1IleEZ for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 00:18:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 9525E2052F
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 00:18:15 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id g33so157580pgb.4
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 17:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3fW1Q087C3iBkzSEJJ8rBhdiCQ75ydi82R0DkuBMVmE=;
 b=JDnN2KxHICU7mm1H4JMCGP0USSTHF246OD6RakBl6ItMd4XWgsQl6MV9sU+5gVf3BO
 8OZywIkjqhxHXKZMZvFXtQGB7F3PW4bfjm6AEXTiFSa788v2U17nI54KOdhbxLgeDFXW
 jAGei6iodA7Qt/UrXwZaRW815eeNe/zl8KMak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3fW1Q087C3iBkzSEJJ8rBhdiCQ75ydi82R0DkuBMVmE=;
 b=s2Nj9RGqMLFxNQ6NbmidB5SLXs1NO13cz61iYthsthDbst4V1y9Tn+MdvIqScluR2b
 lvclsElyhFe0mBAi9pMSUzWrx7qVls+q9PGS/eA0ubdMLGa8MScuadFF+Bh7jxeLp7bs
 Vyqvcj4yISKw/hQOkusl8Yl30k7tUIdOIOJ1Oa7sljMrelstO6j7pc5EHeLVpW6M+jsY
 zNEnX8kzwRKCjVpPoiU8I2SmKZXezq5U3Mwvd94fhHO4NHmaNmCW1nUK/PYZaA3msUa2
 KQZMtmAWkfNX0srJApiz/9tXg8/3BJxcrNJkGwqwp3V9r2jTDFRNTcGnIgWrz2+9Qgcq
 p6MA==
X-Gm-Message-State: AOAM533DAA3ll8qxHLpDMHiCeb/FIU4WCR0Rhy8kyd6b0OctOGHtIa/t
 PrD35j+ydZmsGU0dVwITmaHv5DxobEMX+xUDPgpb3aeciMI=
X-Google-Smtp-Source: ABdhPJwjwRO6/j0Eu+XByE6acrayAh1Yc1q66vPAJYhHEFhWRkl8RXtNj/f4B8RB+n2xuUa1YMS3UI9t7X/0Ns/jHTY=
X-Received: by 2002:a1f:2444:: with SMTP id k65mr277318vkk.33.1597968791845;
 Thu, 20 Aug 2020 17:13:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200820170951.v4.1.Ia54fe801f246a0b0aee36fb1f3bfb0922a8842b0@changeid>
 <20200820170951.v4.3.I066d89f39023956c47fb0a42edf196b3950ffbf7@changeid>
 <20200820102347.15d2f610@oasis.local.home>
In-Reply-To: <20200820102347.15d2f610@oasis.local.home>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 21 Aug 2020 08:13:00 +0800
Message-ID: <CANMq1KCoEZVj=sjxCqBhqLZKBab57+82=Rk_LN7fc3aCuNHMUw@mail.gmail.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 20, 2020 at 10:23 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> On Thu, 20 Aug 2020 17:14:12 +0800
> Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> > Technically, we could only initialize the trace_printk buffers
> > when the print env is switched, to avoid the build error and
> > unconditional boot-time warning, but I assume this printing
> > framework will eventually get removed when the driver moves out
> > of staging?
>
> Perhaps this should be converting into a trace event. Look at what bpf
> did for their bpf_trace_printk().
>
> The more I think about it, the less I like this series.

To make it clear, the primary goal of this series is to get rid of
trace_printk sprinkled in the kernel by making sure some randconfig
builds fail. Since my v2, there already has been one more added (the
one that this patch removes), so I'd like to land 2/3 ASAP to prevent
even more from being added.

Looking at your reply on 1/3, I think we are aligned on that goal? Is
there some other approach you'd recommend?

Now, I'm not pretending my fixes are the best possible ones, but I
would much rather have the burden of converting to trace events on the
respective driver maintainers. (btw is there a short
documentation/tutorial that I could link to in these patches, to help
developers understand what is the recommended way now?)

Thanks,

>
> -- Steve
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

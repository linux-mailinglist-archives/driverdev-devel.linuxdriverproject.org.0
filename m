Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E65F3409F5
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 17:20:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A200432B6;
	Thu, 18 Mar 2021 16:20:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xCixAPBHrW7R; Thu, 18 Mar 2021 16:20:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F115400B5;
	Thu, 18 Mar 2021 16:20:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D06091BF38C
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 16:20:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BFA1E606D8
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 16:20:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DIZu8b_iVMfS for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 16:20:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C174E60643
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 16:20:32 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id n138so5491228lfa.3
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 09:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0zwcduKzIq4GC5dWLbEFbfl9XtpQWfA9RBswfOwrzJs=;
 b=mWAd0i4enX53awQX65/2aZz8HC7bZwH8n1DlbB5jlkwrfEW7VZYWCtpbMpAbJGj1D+
 6qIQZ74drdiHvVpXThtMC5aCxMASuyIoAnNf53WoVi0EULH2lKzk9/t4H+bNHyuDddaA
 QP5geeBsOOCUYDQJr6XA9tB0vYPJBokm6VjlRSq3ZwCNqTbJciXrkiC0Ed1hLS9XhlWo
 ZngKyPme0GfCHSc0Gq2gPYML5KIyTa7tSyQ+pv+PExjqr/OzIMxiXmGu9Uw0bxL8SLLS
 +SfKPz466EptYLhoIMPwqudw7sVakXktiz3mO28hyfkNuC5Zr1LOjITK9CpwTNCdfttF
 YgMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0zwcduKzIq4GC5dWLbEFbfl9XtpQWfA9RBswfOwrzJs=;
 b=I+3R3QsqJ+RK/Y4j4mmO2zkAtkbA2/0doXU0/C5zQxa/hokD1UHoL96wd8TWQZu7r5
 F2Qt0tOXmoM86IGKeY48aMfE6E4Ww2E50NIJ3bKHhQINa/Zys1f9T3qUSTaZVVvQ05tj
 GkAgHcKeiIfSGMews7MWZwbP3IKBuQnLqzaEY/riFJexv7zB709tcvX1qed3SJysy7fd
 6NXwDnSLTomp6jtJ5jBRiPrFUDWtXekL+xnnw46Cc74OHQB7eM3/T6IJUs4J6VehEHzc
 y2SRrEqxXVMgDNwCncqRb9OM6bsg1oyjF520CvAHVLEuxtjq/7zWXBUXMgEaIVUJp6vv
 b2cQ==
X-Gm-Message-State: AOAM532R4FNRqSGNr3sNdaAq7xdqAssOFOK6lbFCiSxvGsotDmzaXNEr
 o8XUMb3qokws8+QRICC3i2w/bQFB9mvWS34fffCnmA==
X-Google-Smtp-Source: ABdhPJzZwRsg9OK5SzAQQtTYoS0oCVD74bvjBEUHhX/hI0SlCbPfITtx0XAlcbM6mR2AqrQG7+ZY/qHsGNJS0naipYE=
X-Received: by 2002:a19:22d6:: with SMTP id i205mr5732721lfi.352.1616084430138; 
 Thu, 18 Mar 2021 09:20:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210316011630.1121213-1-dualli@chromium.org>
 <20210317180048.inzdursqmnvxkgwp@wittgenstein>
 <CAG48ez2ATadfuBjZDqjLa-Mzh669F-yDuBzV62aH=OHRt5g4Pg@mail.gmail.com>
In-Reply-To: <CAG48ez2ATadfuBjZDqjLa-Mzh669F-yDuBzV62aH=OHRt5g4Pg@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Thu, 18 Mar 2021 09:20:17 -0700
Message-ID: <CAHRSSEy2UdHHquSGjTYisGyXSVergopxBLh-64j9Nbc9FNie7w@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] Binder: Enable App Freezing Capability
To: Jann Horn <jannh@google.com>
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
Cc: Li Li <dualli@google.com>,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 kernel-team <kernel-team@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel list <linux-kernel@vger.kernel.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>, Li Li <dualli@chromium.org>,
 Hridya Valsaraju <hridya@google.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 17, 2021 at 1:17 PM Jann Horn <jannh@google.com> wrote:
>
> On Wed, Mar 17, 2021 at 7:00 PM Christian Brauner
> <christian.brauner@ubuntu.com> wrote:
> > On Mon, Mar 15, 2021 at 06:16:27PM -0700, Li Li wrote:
> > > To improve the user experience when switching between recently used
> > > applications, the background applications which are not currently needed
> > > are cached in the memory. Normally, a well designed application will not
> > > consume valuable CPU resources in the background. However, it's possible
> > > some applications are not able or willing to behave as expected, wasting
> > > energy even after being cached.
> > >
> > > It is a good idea to freeze those applications when they're only being
> > > kept alive for the sake of faster startup and energy saving. These kernel
> > > patches will provide the necessary infrastructure for user space framework
> > > to freeze and thaw a cached process, check the current freezing status and
> > > correctly deal with outstanding binder transactions to frozen processes.
>
> I just have some comments on the overall design:
>
> This seems a bit convoluted to me; and I'm not sure whether this is
> really something the kernel should get involved in, or whether this
> patchset is operating at the right layer.

The issue is that there is lot's of per-process state in the binder
driver that needs to be quiesced prior to freezing the process (using
the standard freeze mechanism of
Documentation/admin-guide/cgroup-v1/freezer-subsystem.rst). That's all
this series does... quiesces binder state prior to freeze and then
re-enable transactions when the process is thawed.

>
> If there are non-binder threads that are misbehaving, could you
> instead stop all those threads in pure userspace code (e.g. by sending
> a thread-directed signal to all of them and letting the signal handler
> sleep on a futex); and if the binder thread receives a transaction
> that should be handled, wake up those threads again?

It is not an issue of stopping threads. It's an issue of quiescing
binder for a process so clients aren't blocked waiting for a response
from a frozen process that may never handle the transaction. This
series causes the soon-to-be-frozen process to reject new transactions
and allows user-space to detect when the transactions have drained
from the queues prior to freezing the process.

>
> Or alternatively you could detect that the application is being woken
> up frequently even though it's supposed to be idle (e.g. using
> information from procfs), and kill it since you consider it to be
> misbehaving?
>
> Or if there are specific usage patterns you see frequently that you
> consider to be wasting CPU resources (e.g. setting an interval timer
> that fires in short intervals), you could try to delay such timers.
>
>
> With your current approach, you're baking the assumption that all IPC
> goes through binder into the kernel API; things like passing a file
> descriptor to a pipe through binder or using shared futexes are no

No, we're dealing with an issue that is particular to binder IPC when
freezing a process. I suspect that other IPC mechanisms do not have
this issue -- and if any do for Android, then they would need
equivalent pre-freeze/post-freeze mechanisms. So far in the testing of
freezing in Android R, there haven't been issues with pipes or futexes
that required this kind of explicit quiescing (at least none that I
know of -- dualli@, please comment if there have been these kinds of
issues).

> longer usable for cross-process communication without making more
> kernel changes. I'm not sure whether that's a good idea. On top of
> that, if you freeze a process while it is in the middle of some
> operation, resources associated with the operation will probably stay
> in use for quite some time; for example, if an app is in the middle of
> downloading some data over HTTP, and you freeze it, this may cause the
> TCP connection to remain active and consume resources for send/receive
> buffers on both the device and the server.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

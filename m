Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E5833F9DD
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 21:18:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 517E56F9A4;
	Wed, 17 Mar 2021 20:18:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MKB93xDUsgPL; Wed, 17 Mar 2021 20:17:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A82A6F995;
	Wed, 17 Mar 2021 20:17:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 52B4D1BF3FF
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 20:17:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40C7841504
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 20:17:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V3WnmzCli0WY for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 20:17:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6397B4150A
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 20:17:47 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id f16so4832135ljm.1
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 13:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J6gJzCwpLyG7+14+e+3YoRVEedOSyoYsJ1d1aSm3u8s=;
 b=Ot1J2LG0SujcfumGfz731vdJqKOxO4S52bTDK4ESl++y2B/qGrQJ3ZdY9Sabt4+qqD
 CzWxpMj1luRIBQBFf/hyxd2opLMAqV+cwP7dETj1336+AfgOqmHKYaS1AhWtahJVwqlU
 gN553b7yWZyHe+SWBQ9bi314J/UcXDnhrU4nma/KHf7eOaDPE89DCmyfYyjlFc58rtjR
 whkrzXuDb3CPlElVyu7jaeUhUnKX65xuboxd3rKb2tS8bX9WpDZFAgettshbfdbaKNHH
 u9gNjJ1sQ7q4evUHcE8LsEtu7/1CyNif50ADrZcWccijWbfuWsO0kK7olDowKVJPpK8j
 RYmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J6gJzCwpLyG7+14+e+3YoRVEedOSyoYsJ1d1aSm3u8s=;
 b=shM1lNPUk8NFwD8iTkAO0rCLGmRSMdl0jUA6qWmcFBrp1+7HHpZIw9zQJOzG3UDV2m
 L7nTGQ0RO9PbQW+zUH+6XgMQNn9I4Q7LCYl4nWAe87kIlMf/Oste523IYaotsp5QQvyQ
 kFbWsKvnenDYwufekuNH9Az/YRbnsCqVSKfE2kfoh7zjJhowCmiGDupj4UVqBEYyB2Kt
 z74/oxMvMWd9Hg4Jd16J3j5KoZQOJPYlSYF6AN6IKwkjayDqvJUIy93cq2fnvF/dUtu9
 ifx1N8eRBOxF+Ee6O+kQ5vvxRKZs+kqxsyOaZ4G+YLxmwcMa+ban7J1ooSzfgs24N+0P
 73mg==
X-Gm-Message-State: AOAM5337s/G4zbqOENVK5T9oey++1ds7/f40Kxnc9LQpWJF7rx4v87zN
 Nz9qEgzq8Lw25QMTtXwzjt9J4oDgOez2reoDHYCzsg==
X-Google-Smtp-Source: ABdhPJxm6guJ8ZzFVRuVVjxk9Ag12khXWuNxP2NxaZfEBJIJzMCqUEtP+HDMBvXMUishhGlf43z6gBFdhYMFqXivsG0=
X-Received: by 2002:a2e:b6d4:: with SMTP id m20mr3432836ljo.448.1616012265057; 
 Wed, 17 Mar 2021 13:17:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210316011630.1121213-1-dualli@chromium.org>
 <20210317180048.inzdursqmnvxkgwp@wittgenstein>
In-Reply-To: <20210317180048.inzdursqmnvxkgwp@wittgenstein>
From: Jann Horn <jannh@google.com>
Date: Wed, 17 Mar 2021 21:17:18 +0100
Message-ID: <CAG48ez2ATadfuBjZDqjLa-Mzh669F-yDuBzV62aH=OHRt5g4Pg@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] Binder: Enable App Freezing Capability
To: Christian Brauner <christian.brauner@ubuntu.com>
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
Cc: dualli@google.com, "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 kernel-team <kernel-team@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel list <linux-kernel@vger.kernel.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>, Li Li <dualli@chromium.org>,
 Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 17, 2021 at 7:00 PM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
> On Mon, Mar 15, 2021 at 06:16:27PM -0700, Li Li wrote:
> > To improve the user experience when switching between recently used
> > applications, the background applications which are not currently needed
> > are cached in the memory. Normally, a well designed application will not
> > consume valuable CPU resources in the background. However, it's possible
> > some applications are not able or willing to behave as expected, wasting
> > energy even after being cached.
> >
> > It is a good idea to freeze those applications when they're only being
> > kept alive for the sake of faster startup and energy saving. These kernel
> > patches will provide the necessary infrastructure for user space framework
> > to freeze and thaw a cached process, check the current freezing status and
> > correctly deal with outstanding binder transactions to frozen processes.

I just have some comments on the overall design:

This seems a bit convoluted to me; and I'm not sure whether this is
really something the kernel should get involved in, or whether this
patchset is operating at the right layer.

If there are non-binder threads that are misbehaving, could you
instead stop all those threads in pure userspace code (e.g. by sending
a thread-directed signal to all of them and letting the signal handler
sleep on a futex); and if the binder thread receives a transaction
that should be handled, wake up those threads again?

Or alternatively you could detect that the application is being woken
up frequently even though it's supposed to be idle (e.g. using
information from procfs), and kill it since you consider it to be
misbehaving?

Or if there are specific usage patterns you see frequently that you
consider to be wasting CPU resources (e.g. setting an interval timer
that fires in short intervals), you could try to delay such timers.


With your current approach, you're baking the assumption that all IPC
goes through binder into the kernel API; things like passing a file
descriptor to a pipe through binder or using shared futexes are no
longer usable for cross-process communication without making more
kernel changes. I'm not sure whether that's a good idea. On top of
that, if you freeze a process while it is in the middle of some
operation, resources associated with the operation will probably stay
in use for quite some time; for example, if an app is in the middle of
downloading some data over HTTP, and you freeze it, this may cause the
TCP connection to remain active and consume resources for send/receive
buffers on both the device and the server.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

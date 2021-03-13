Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEB8339A3B
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 01:01:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB43384401;
	Sat, 13 Mar 2021 00:01:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2LzqZmS8WNZW; Sat, 13 Mar 2021 00:01:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03CF983842;
	Sat, 13 Mar 2021 00:01:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DAB6A1BF28D
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 00:01:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D6D0483842
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 00:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6oCPP1FXcOEn for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 00:01:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EDE908439C
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 00:01:23 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id f16so9416078ljm.1
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 16:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=spwItwioBxP+1u6yXKBwsvPAzUEdjy80N3bb4r66aWw=;
 b=nHTfpz61sUQqiBdZwrE/XiZbx3a/t95ZtNDcwXNL2aKhC3rGdfmDYX+ogeTj6Kr5FZ
 TtfqTDd8PSGLRKp+vht4rhkoCe8V6q9IP5lb4RupgtIXDtFP7OHIHkLDVMtmAu6AfnNH
 lGA1DL14esTqgvQLj7nJ10CW+1AMwCMrLLv4zlPxgw2pkMwBzVzSOUxLEWiSmWBkFIr+
 R7NmmxbZ9iUFU3BbBnQLdR2i30BITcndJfswiuxFims9JmA+lQPnbtWKrjd9gJBIVizE
 CgcF99hvgcNiQU/aVybaZjw3bxeJ5xpWiyo3AOnTyGoSyX4kELU6aqcZp2g7l8DH+fiC
 j+Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=spwItwioBxP+1u6yXKBwsvPAzUEdjy80N3bb4r66aWw=;
 b=DnsZP8H8u91fuw/f8dM1W/r/uEGuV6tPx7ZZKNcSfE+XCNt+Put5lPlH2YmCdJzMBD
 sJ7tscpvCCwsyX7eCGrS9sufGVTbUqBZEPcC8K74YIDfDm08iuFRWzm1AqPFiWYEbKeC
 aoWYNeqjoQyjeE02khew0JieFH/7+xRVfa4qW6EOIeu4esvIdAZTQzysmjd/kuGprVwJ
 EMbTLbCx41kyBF4Nzja0+V6//JSoF1rTJgGUNTKYDSmtKn0E2+R2Dc3/drw2ChLzrJsH
 AXYDKHahvk4asRnlkrOe/mivLVYqFMoM55QmUZwx68qmSHfdNNwInw0HsOz5MYOu6Cgu
 lTTA==
X-Gm-Message-State: AOAM530k5vx6g8M/079D2hCIiAuFV/dAZSbovFV2rzvBASQoJoS5i1y8
 P5YtN4bh6ucR6HwNU7+UVffsdj4wFQi+4wKYBuPHPA==
X-Google-Smtp-Source: ABdhPJwMqMBS5LDWLGDE/NDEdHY/fLmjfpyzHgXxDhWSLZD0W6dV63J8wJsuS02jKk45hknjObVdTHyBcT7hCQTNq0A=
X-Received: by 2002:a05:651c:211b:: with SMTP id
 a27mr3728543ljq.433.1615593681625; 
 Fri, 12 Mar 2021 16:01:21 -0800 (PST)
MIME-Version: 1.0
References: <20210311184629.589725-1-dualli@chromium.org>
 <20210311184629.589725-3-dualli@chromium.org>
In-Reply-To: <20210311184629.589725-3-dualli@chromium.org>
From: Todd Kjos <tkjos@google.com>
Date: Fri, 12 Mar 2021 16:01:11 -0800
Message-ID: <CAHRSSExs6v7OPcawg+CLdhqfMtXsXn38=mn84vMYmviM8sJjtA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] binder: use EINTR for interrupted wait for work
To: Li Li <dualli@chromium.org>
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
 Android Kernel Team <kernel-team@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>, Hridya Valsaraju <hridya@google.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 11, 2021 at 10:46 AM Li Li <dualli@chromium.org> wrote:
>
> From: Marco Ballesio <balejs@google.com>
>
> when interrupted by a signal, binder_wait_for_work currently returns
> -ERESTARTSYS. This error code isn't propagated to user space, but a way
> to handle interruption due to signals must be provided to code using
> this API.
>
> Replace this instance of -ERESTARTSYS with -EINTR, which is propagated
> to user space.
>
> Test: built, booted, interrupted a worker thread within
> binder_wait_for_work
> Signed-off-by: Marco Ballesio <balejs@google.com>
> Signed-off-by: Li Li <dualli@google.com>

Acked-by: Todd Kjos <tkjos@google.com>

> ---
>  drivers/android/binder.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 76ea558df03e..38bbf9a4ce99 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -3712,7 +3712,7 @@ static int binder_wait_for_work(struct binder_thread *thread,
>                 binder_inner_proc_lock(proc);
>                 list_del_init(&thread->waiting_thread_node);
>                 if (signal_pending(current)) {
> -                       ret = -ERESTARTSYS;
> +                       ret = -EINTR;
>                         break;
>                 }
>         }
> @@ -4855,7 +4855,7 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
>         if (thread)
>                 thread->looper_need_return = false;
>         wait_event_interruptible(binder_user_error_wait, binder_stop_on_user_error < 2);
> -       if (ret && ret != -ERESTARTSYS)
> +       if (ret && ret != -EINTR)
>                 pr_info("%d:%d ioctl %x %lx returned %d\n", proc->pid, current->pid, cmd, arg, ret);
>  err_unlocked:
>         trace_binder_ioctl_done(ret);
> --
> 2.31.0.rc2.261.g7f71774620-goog
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

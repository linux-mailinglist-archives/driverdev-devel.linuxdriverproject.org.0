Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9BCD00DC
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 20:52:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91CA8880C3;
	Tue,  8 Oct 2019 18:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dHwBXyEQ-TuY; Tue,  8 Oct 2019 18:52:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8928587C30;
	Tue,  8 Oct 2019 18:52:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 329571BF5A4
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 18:52:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2EF09204D7
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 18:52:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5rDnQUtUxE8c for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 18:52:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by silver.osuosl.org (Postfix) with ESMTPS id F15E9203AF
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 18:52:34 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id l21so18723455lje.4
 for <devel@driverdev.osuosl.org>; Tue, 08 Oct 2019 11:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4ttC9Qk38rpEvRKxSWa+eMhwRul6btb0043polx//lc=;
 b=SUbmozDe2X2ao0PY/uZdB+ZQ4aJnY+MeTvsd7f+Tn0cwGFbO3kvj2x74oGnu2ZtVfl
 7C3/WscpU66LIwJnimGpX5FCDpu6KKyGbJfTZA5vkNAt+kHiAf26N0qviyHfzeEcHFUK
 wg3kskdJfC0AsDMju45spea05k8Xhm6YUxwrwuQUnBSqwZhwbD8zig6e4vO/mmLgdLTy
 WU5OR1qQXHV/m7LvN+RyTELTMG5YiWus1rCf7quFv5vd8WLZah2J8lIS/RDqraz0vYwv
 2/8/HA890PurFicnF/XVln9imVqjTu5aPmFQPPxVd9om5YFIH+bx+iKh73jQQS5AK4Q2
 xh/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4ttC9Qk38rpEvRKxSWa+eMhwRul6btb0043polx//lc=;
 b=TaqknI5oh5CR/xY5seRHQexhbIHzaIAk46Cnj4GQHxvJGEnBCmlwKrryo7YSNpDzyq
 zjskeA9lNWnuikiVQoJxXkAaO25FSehlXy48aQ870MFxu8LvQEPyme84OdjVkuMQsi99
 PoOLNstq90dYAp+cXb3KIjorPLDUe8Cm5zV1qU2PasheYDNSRJtvuENnoT/vCU93s4zY
 ThZGBOIAVdCtD/fFnROehIsqjivPQwBP60lQeYzNZMqH2njYEK7c9ZWqkEDG/hl7UhYc
 Yfs/l7Pih5j0Kq3z92PHw+y1eKJ4Q4LTzFWOtXxQgObgbaW3slCsgm3ymDS9bamR+shW
 E5NA==
X-Gm-Message-State: APjAAAVBzK2LmPpEa0dTZtKPQQtyJfHMpnBVmPXHCodvrYrSjrQ30hjQ
 Y3Tt86t0iH9jV3rZdabMGNE1KQnscF2kBJCWGAYebw==
X-Google-Smtp-Source: APXvYqxCk2wL5SmvjWie8G/3HUzvf7LJ63re3Ebs0TK50UJmvniQje7a/3Inx/xfJB9wZGEbhBcSCpvTO3k5nCfL1tA=
X-Received: by 2002:a2e:85d2:: with SMTP id h18mr23471467ljj.18.1570560752527; 
 Tue, 08 Oct 2019 11:52:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com>
 <20191008130159.10161-1-christian.brauner@ubuntu.com>
In-Reply-To: <20191008130159.10161-1-christian.brauner@ubuntu.com>
From: Todd Kjos <tkjos@google.com>
Date: Tue, 8 Oct 2019 11:52:18 -0700
Message-ID: <CAHRSSExHMx5Xd79yBnQGKzeJg6+ucy9reZF=7_e_UM0BGrNC-w@mail.gmail.com>
Subject: Re: [PATCH] binder: prevent UAF read in
 print_binder_transaction_log_entry()
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Todd Kjos <tkjos@android.com>, Jann Horn <jannh@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 8, 2019 at 6:02 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> When a binder transaction is initiated on a binder device coming from a
> binderfs instance, a pointer to the name of the binder device is stashed
> in the binder_transaction_log_entry's context_name member. Later on it
> is used to print the name in print_binder_transaction_log_entry(). By
> the time print_binder_transaction_log_entry() accesses context_name
> binderfs_evict_inode() might have already freed the associated memory
> thereby causing a UAF. Do the simple thing and prevent this by copying
> the name of the binder device instead of stashing a pointer to it.
>
> Reported-by: Jann Horn <jannh@google.com>
> Fixes: 03e2e07e3814 ("binder: Make transaction_log available in binderfs")
> Link: https://lore.kernel.org/r/CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com
> Cc: Joel Fernandes <joel@joelfernandes.org>
> Cc: Todd Kjos <tkjos@android.com>
> Cc: Hridya Valsaraju <hridya@google.com>
> Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> ---
>  drivers/android/binder.c          | 4 +++-
>  drivers/android/binder_internal.h | 2 +-
>  2 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index c0a491277aca..5b9ac2122e89 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -57,6 +57,7 @@
>  #include <linux/sched/signal.h>
>  #include <linux/sched/mm.h>
>  #include <linux/seq_file.h>
> +#include <linux/string.h>
>  #include <linux/uaccess.h>
>  #include <linux/pid_namespace.h>
>  #include <linux/security.h>
> @@ -66,6 +67,7 @@
>  #include <linux/task_work.h>
>
>  #include <uapi/linux/android/binder.h>
> +#include <uapi/linux/android/binderfs.h>
>
>  #include <asm/cacheflush.h>
>
> @@ -2876,7 +2878,7 @@ static void binder_transaction(struct binder_proc *proc,
>         e->target_handle = tr->target.handle;
>         e->data_size = tr->data_size;
>         e->offsets_size = tr->offsets_size;
> -       e->context_name = proc->context->name;
> +       strscpy(e->context_name, proc->context->name, BINDERFS_MAX_NAME);
>
>         if (reply) {
>                 binder_inner_proc_lock(proc);
> diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> index bd47f7f72075..ae991097d14d 100644
> --- a/drivers/android/binder_internal.h
> +++ b/drivers/android/binder_internal.h
> @@ -130,7 +130,7 @@ struct binder_transaction_log_entry {
>         int return_error_line;
>         uint32_t return_error;
>         uint32_t return_error_param;
> -       const char *context_name;
> +       char context_name[BINDERFS_MAX_NAME + 1];
>  };
>
>  struct binder_transaction_log {
> --
> 2.23.0
>

Acked-by: Todd Kjos <tkjos@google.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 309A1CFFAA
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 19:19:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D16386433;
	Tue,  8 Oct 2019 17:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4y00pUaE_7bn; Tue,  8 Oct 2019 17:19:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD7AF863C5;
	Tue,  8 Oct 2019 17:19:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 97E551BF333
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 17:19:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8D3F6227CC
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 17:19:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ztdq9k3zokOj for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 17:19:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 4EF06227B1
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 17:19:26 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id o44so14683494ota.10
 for <devel@driverdev.osuosl.org>; Tue, 08 Oct 2019 10:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h7/gbm3RJTL0TVH1ZLjPUoytHiFwN21WJCo8ibqoeDQ=;
 b=ZUpXWG1bWoh4zFr+gjgNoVrWYx1WUaE/YcfQNPiJQXTXeEMYcYozKGDNdGtnoNDCRo
 UPuMBFlTM2u/2MWw3CoKyVSVb+y3VYSAu7m9Lv0hezzg8AqskYxrGn/BF0xCgRWRncW1
 TGwlt5psiYglK0e8ufKJ0wVFw8sUZFLFZiwkzMT7oUF1V/+qJqyXQAIdnQTobgXyWhZw
 YMiUpelGHmO0booe90K3vqqlymTrC6anV56DgKGR+rBDxxvpMPxyxmFA90yoWIrpO/cZ
 0vd0FBWozqrAcd/NrbhwwEi5zb/sv5OqByzBgDRvq4QA1OYZW4aiuR0kjet7rDMmTD0S
 aOXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h7/gbm3RJTL0TVH1ZLjPUoytHiFwN21WJCo8ibqoeDQ=;
 b=kCW6VrFR59ERqvmJEkZ+Kd86kgLukW0XNvaHbROzR4g2meHVZIneFAQqu06kzNuBCp
 EeDBSsM+Sdju/4ctcYKegDVeyiHkNaveQtq56x/1i4N/6GOmLd8Ns5+FOKLOIfhVnfYQ
 OkL8YiPVDJ68p9T3Q8Y6GMnoZ9FsqV+0AqKn05jJiPjGjZVtffaD1QH+9DLxVRqC5GXm
 vm2cltmYaxiwHXiVC3zKcs/K4UjTa72+3MNdNyYc00wLGnFkZ1Oad/+8J7g4W0NT0UXo
 M5XhDJNDWN2kKLauOSFZIxJV1TxwpHI5BPIW263m8btPgfN3NtmX35dIApl8UUtKIc0u
 pX7w==
X-Gm-Message-State: APjAAAVnDCTWZckKlNNaqI6v4DWVK1j02dm1HW1jVcnS1KxM6X1AQ3dA
 /kdoBXWKWMCNX9Uckkddlo66qo6YKSmWJaX523TZTg==
X-Google-Smtp-Source: APXvYqxwTOgEpp46kzNz9+9TPFWIuQF20yYh3lVzMc1t0DZiR6Ymsy1xmOwx46V6G8+czDEdX9APbmPM2+DmASKJFXI=
X-Received: by 2002:a9d:bcd:: with SMTP id 71mr27264570oth.35.1570555165072;
 Tue, 08 Oct 2019 10:19:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com>
 <20191008130159.10161-1-christian.brauner@ubuntu.com>
In-Reply-To: <20191008130159.10161-1-christian.brauner@ubuntu.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Tue, 8 Oct 2019 10:18:48 -0700
Message-ID: <CA+wgaPOfr+i-rNUTx+7PWWrZeRMsOUMYzk0ZKp5=C=cT-MSdpA@mail.gmail.com>
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
 Todd Kjos <tkjos@android.com>, jannh@google.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>, Todd Kjos <tkjos@google.com>
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

Reviewed-by: Hridya Valsaraju <hridya@google.com>

Thank you for sending out this fix Christian!

Regards,
Hridya

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
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

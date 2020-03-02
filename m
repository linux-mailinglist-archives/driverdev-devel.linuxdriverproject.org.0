Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BBE17608D
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 17:57:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E38148620B;
	Mon,  2 Mar 2020 16:57:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tBkplVIG79L5; Mon,  2 Mar 2020 16:57:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C43C861E7;
	Mon,  2 Mar 2020 16:57:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B8BD41BF321
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B579D865EE
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:57:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Af+qHDsR9RX2 for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 16:57:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com
 [209.85.222.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E4F3E865A1
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 16:57:02 +0000 (UTC)
Received: by mail-ua1-f67.google.com with SMTP id t20so3880242uao.7
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 08:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Emi3zvh0GvAdchRt2bZiLjp8wJpgJ0s1FpAc2eNaRuE=;
 b=UGPu8cMVzp70w7nVbEKjZtx9UFRGJyMmvWuiso/t2ciYBcXV4NidYkYwQAEfBh4QWG
 aZpMq3EIRcnl8u2+zjl2+Jd5Vn/puw82z77b8eg+Ef8uol7aujjohP/vJUQqJTHtr8t8
 J2Cqobj7UlwAIEEZ0i7+TZWAKL9aSaTZfnM2RqogQR6Kl3eC34GfLDXAEpNrwSyaDWoN
 XhLfOL9n0HFgkugck2+qA6dntYdYc8tSvr4vw4jpypZ0iO7FTPHKDDrvJpKHCJlGidwX
 exP6xZDfsfoWf5f3gQmolw9asucK2URju54NMvJssO8d95gZKWjAAVjgY4puF2stuAE3
 CkYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Emi3zvh0GvAdchRt2bZiLjp8wJpgJ0s1FpAc2eNaRuE=;
 b=CBwVdtrdSyGUF4MDZI/VWJE1D1cz2mPSusoX0oSsmecPu+lsXkRsy6U9PdLHqcRMO1
 0YffiN4giGfK9s2vWoURKJfRyUVU6j8gXUY6oi2la2kiq42WS3wR39XFcI+wDKsg/MZ1
 WkWI/2EOhPnmISzPubKUunWS7KcYE4Fk2V2Iw5YLqqyTfwpT0tQFmQg2q3arnwBstU4R
 7tMpSgkvaqhFX/14OwByNfvwnn6EWeSqvwJnEsBJndJ9HanMKRiZac69it2ClljDHvKI
 jyjdFG8Gm/esYEV2NTep0nCqxqtn5gmepe5XmpevmQpkRvPXWRU5g2Rh92Qh7ZEutE+A
 k1DA==
X-Gm-Message-State: ANhLgQ0AUqYlxZftCrDcgCjQ9oMyA40RU/xSvst6ce/HCRZZd63gqAts
 CVl9b5uYO24LI/K0truAVF25jtSt6rwvq4jOukkYdg==
X-Google-Smtp-Source: ADFU+vuWmdQz60uGm7dRu6x9AM6ilHJspWpQIG6duvbA7201l798XQKtBgH7CH8EdhToZchz7burnpQ0NzpfZLNjqow=
X-Received: by 2002:ab0:1161:: with SMTP id g33mr392064uac.32.1583168221423;
 Mon, 02 Mar 2020 08:57:01 -0800 (PST)
MIME-Version: 1.0
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-3-glider@google.com>
In-Reply-To: <20200302130430.201037-3-glider@google.com>
From: Todd Kjos <tkjos@google.com>
Date: Mon, 2 Mar 2020 08:56:50 -0800
Message-ID: <CAHRSSEwe=jZAEVhGw4ACBU0m-76TzZfJFv1Rzw=_UVm6HbTvAw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] sched/wait: avoid double initialization in
 ___wait_event()
To: Alexander Potapenko <glider@google.com>
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
 keescook@chromium.org, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 2, 2020 at 5:04 AM <glider@google.com> wrote:
>
> With CONFIG_INIT_STACK_ALL enabled, the local __wq_entry is initialized
> twice. Because Clang is currently unable to optimize the automatic
> initialization away (init_wait_entry() is defined in another translation
> unit), remove it with the __no_initialize annotation.
>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Alexander Potapenko <glider@google.com>
>
> ---
>  v2:
>   - changed __do_not_initialize to __no_initialize as requested by Kees
>     Cook
> ---
>  drivers/android/binder.c | 4 ++--
>  include/linux/wait.h     | 3 ++-
>  2 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index a59871532ff6b..66984e7c33094 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -4827,7 +4827,7 @@ static int binder_ioctl_write_read(struct file *filp,
>         struct binder_proc *proc = filp->private_data;
>         unsigned int size = _IOC_SIZE(cmd);
>         void __user *ubuf = (void __user *)arg;
> -       struct binder_write_read bwr __no_initialize;
> +       struct binder_write_read bwr;

How did __no_initialize get set so that it can be removed here? Should
the addition of __no_initilize be removed earlier in the series (tip
doesn't have the __no_initialize).

>
>         if (size != sizeof(struct binder_write_read)) {
>                 ret = -EINVAL;
> @@ -5026,7 +5026,7 @@ static long binder_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
>                         goto err;
>                 break;
>         case BINDER_SET_MAX_THREADS: {
> -               int max_threads;
> +               int max_threads __no_initialize;

Is this really needed? A single integer in a rarely called ioctl()
being initialized twice doesn't warrant this optimization.

>
>                 if (copy_from_user(&max_threads, ubuf,
>                                    sizeof(max_threads))) {
> diff --git a/include/linux/wait.h b/include/linux/wait.h
> index 3283c8d021377..b52a9bb2c7727 100644
> --- a/include/linux/wait.h
> +++ b/include/linux/wait.h
> @@ -262,7 +262,8 @@ extern void init_wait_entry(struct wait_queue_entry *wq_entry, int flags);
>  #define ___wait_event(wq_head, condition, state, exclusive, ret, cmd)          \
>  ({                                                                             \
>         __label__ __out;                                                        \
> -       struct wait_queue_entry __wq_entry;                                     \
> +       /* Unconditionally initialized by init_wait_entry(). */                 \
> +       struct wait_queue_entry __wq_entry __no_initialize;                     \
>         long __ret = ret;       /* explicit shadow */                           \
>                                                                                 \
>         init_wait_entry(&__wq_entry, exclusive ? WQ_FLAG_EXCLUSIVE : 0);        \
> --
> 2.25.0.265.gbab2e86ba0-goog
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

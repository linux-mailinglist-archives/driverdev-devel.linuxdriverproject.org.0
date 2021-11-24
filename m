Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 281C045B5EB
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Nov 2021 08:51:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2799660BFE;
	Wed, 24 Nov 2021 07:51:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yovkH5Km8rcX; Wed, 24 Nov 2021 07:50:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28F8060B71;
	Wed, 24 Nov 2021 07:50:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 378901BF42E
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 07:50:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 27AB181775
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 07:50:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=android.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FF3ohSOKv1NS for <devel@linuxdriverproject.org>;
 Wed, 24 Nov 2021 07:50:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 78974815AD
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 07:50:48 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id iq11so1820343pjb.3
 for <devel@driverdev.osuosl.org>; Tue, 23 Nov 2021 23:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4lheUhEdisiGn6BVR5Z7iqbfoYy9hlnvf6jVpuqPSYk=;
 b=A+2tUYxPDvokiBOBf2LmPFT604nR2VYptwxETi8oXT8iyXnGRaXN/wvbPzFlbELsZX
 ed5cr1xA4fW9T/V3OtzWpEEH7lX/+5hNdk0thVw1EgqVg+2DSvL4VRdeJqQEnOyodsZu
 PIGkkrI33O2jf4YJrMD4mUb6rSxrWcjI93NMJ486LK3MtxWpLQoMn9W0tWyct2Fw//fd
 qBB3to6ajOFVSGwvfK5q5k58c7uW4Zza7C30PkruIsIp1PZYM58LwTr2T5gBTZUq0Jts
 /WHuH08q3MD3mjMpkehsUrLud+QJlLUhfeD+jvNOjbTQxdb4XVuaBFbZi5dFhl/c1a4C
 7+Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4lheUhEdisiGn6BVR5Z7iqbfoYy9hlnvf6jVpuqPSYk=;
 b=7rMRxFrknOr5qXRo/0jMkr1Km/YmrrhwkhL0I33vfeFtgf8vTjLy1xieLVy785CQfF
 +NjpO0zjBAJ2H/20+KpQLxE7lJnVEOeoV72ai/QFde5+Ayoew+e5VUmpss2QzEE+RsX6
 w8Gfv3KcvhS2B8vHx8Lm0+zpA/UdooIuxEwEE+xIhIgW5BODJZDc7zx7YY5rJnfkluio
 IR77OEAoUNEL1fnBkYolJSmZa6vMrRq2yXV0+ydYChuwuAJumwItmeFRW5If3wpnHHVs
 4iYXb38bM12OhSvGA8VLWm+kqRblqX13k2Szi7W6UcXiUf4Kgzjkt3AQMO9LQCkGp/US
 pMRw==
X-Gm-Message-State: AOAM531Uy5BgxkAwpaeluChTb2N4rxXp76yeWi2i2mqEhaQTaEmpKLbm
 9UUD6bJNGm3A7mXabgBpfNu7E+71nVNl4vyNq7qyrw==
X-Google-Smtp-Source: ABdhPJw5l7uqCqL8g5d+ABR61Ttm0tQkvrMZ2syMcSanT+iiem/to5CyNPkHNDzVXlxPtJZODyrdl2aouhEPyiE0sog=
X-Received: by 2002:a17:902:b70b:b0:143:74b1:7e3b with SMTP id
 d11-20020a170902b70b00b0014374b17e3bmr16100216pls.26.1637740247925; Tue, 23
 Nov 2021 23:50:47 -0800 (PST)
MIME-Version: 1.0
References: <20211123191737.1296541-1-tkjos@google.com>
 <20211123191737.1296541-3-tkjos@google.com>
In-Reply-To: <20211123191737.1296541-3-tkjos@google.com>
From: Martijn Coenen <maco@android.com>
Date: Wed, 24 Nov 2021 08:50:37 +0100
Message-ID: <CAB0TPYGHb4CiRZ3VphzWAB2wdU5gL_8WR7t=1ZLQawWivCMKHg@mail.gmail.com>
Subject: Re: [PATCH 2/3] binder: read pre-translated fds from sender buffer
To: Todd Kjos <tkjos@google.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, arve@android.com, maco@google.com,
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Nov 23, 2021 at 8:17 PM 'Todd Kjos' via kernel-team
<kernel-team@android.com> wrote:
>
> Since we are no longer going to copy the pre-fixup
> data from the target buffer, we need to read
> pre-translated FD array information from the source
> buffer.
>
> Signed-off-by: Todd Kjos <tkjos@google.com>
Reviewed-by: Martijn Coenen <maco@android.com>

> ---
>  drivers/android/binder.c | 40 +++++++++++++++++++++++++++++++++-------
>  1 file changed, 33 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 571d3c203557..2300fa8e09d5 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -2234,15 +2234,17 @@ static int binder_translate_fd(u32 fd, binder_size_t fd_offset,
>  }
>
>  static int binder_translate_fd_array(struct binder_fd_array_object *fda,
> +                                    const void __user *u,
>                                      struct binder_buffer_object *parent,
> +                                    struct binder_buffer_object *uparent,
>                                      struct binder_transaction *t,
>                                      struct binder_thread *thread,
>                                      struct binder_transaction *in_reply_to)
>  {
>         binder_size_t fdi, fd_buf_size;
>         binder_size_t fda_offset;
> +       const void __user *ufda_base;
>         struct binder_proc *proc = thread->proc;
> -       struct binder_proc *target_proc = t->to_proc;
>
>         fd_buf_size = sizeof(u32) * fda->num_fds;
>         if (fda->num_fds >= SIZE_MAX / sizeof(u32)) {
> @@ -2266,7 +2268,10 @@ static int binder_translate_fd_array(struct binder_fd_array_object *fda,
>          */
>         fda_offset = (parent->buffer - (uintptr_t)t->buffer->user_data) +
>                 fda->parent_offset;
> -       if (!IS_ALIGNED((unsigned long)fda_offset, sizeof(u32))) {
> +       ufda_base = (void __user *)uparent->buffer + fda->parent_offset;
> +
> +       if (!IS_ALIGNED((unsigned long)fda_offset, sizeof(u32)) ||
> +           !IS_ALIGNED((unsigned long)ufda_base, sizeof(u32))) {
>                 binder_user_error("%d:%d parent offset not aligned correctly.\n",
>                                   proc->pid, thread->pid);
>                 return -EINVAL;
> @@ -2275,10 +2280,9 @@ static int binder_translate_fd_array(struct binder_fd_array_object *fda,
>                 u32 fd;
>                 int ret;
>                 binder_size_t offset = fda_offset + fdi * sizeof(fd);
> +               binder_size_t uoffset = fdi * sizeof(fd);
>
> -               ret = binder_alloc_copy_from_buffer(&target_proc->alloc,
> -                                                   &fd, t->buffer,
> -                                                   offset, sizeof(fd));
> +               ret = copy_from_user(&fd, ufda_base + uoffset, sizeof(fd));
>                 if (!ret)
>                         ret = binder_translate_fd(fd, offset, t, thread,
>                                                   in_reply_to);
> @@ -2951,6 +2955,8 @@ static void binder_transaction(struct binder_proc *proc,
>                 case BINDER_TYPE_FDA: {
>                         struct binder_object ptr_object;
>                         binder_size_t parent_offset;
> +                       struct binder_object user_object;
> +                       size_t user_parent_size;
>                         struct binder_fd_array_object *fda =
>                                 to_binder_fd_array_object(hdr);
>                         size_t num_valid = (buffer_offset - off_start_offset) /
> @@ -2982,8 +2988,28 @@ static void binder_transaction(struct binder_proc *proc,
>                                 return_error_line = __LINE__;
>                                 goto err_bad_parent;
>                         }
> -                       ret = binder_translate_fd_array(fda, parent, t, thread,
> -                                                       in_reply_to);
> +
> +                       /*
> +                        * We need to read the user version of the parent
> +                        * object to get the original user offset
> +                        */
> +                       user_parent_size =
> +                               binder_get_object(proc, user_buffer, t->buffer,
> +                                                 parent_offset, &user_object);
> +                       if (user_parent_size != sizeof(user_object.bbo)) {
> +                               binder_user_error("%d:%d invalid ptr object size: %lld vs %lld\n",
> +                                                 proc->pid, thread->pid,
> +                                                 user_parent_size,
> +                                                 sizeof(user_object.bbo));
> +                               return_error = BR_FAILED_REPLY;
> +                               return_error_param = -EINVAL;
> +                               return_error_line = __LINE__;
> +                               goto err_bad_parent;
> +                       }
> +                       ret = binder_translate_fd_array(fda, user_buffer,
> +                                                       parent,
> +                                                       &user_object.bbo, t,
> +                                                       thread, in_reply_to);
>                         if (ret < 0 ||
>                             binder_alloc_copy_to_buffer(&target_proc->alloc,
>                                                         t->buffer,
> --
> 2.34.0.rc2.393.gf8c9666880-goog
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

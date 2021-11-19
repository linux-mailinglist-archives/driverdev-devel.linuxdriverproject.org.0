Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9D94579AE
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Nov 2021 00:40:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12FBF41C57;
	Fri, 19 Nov 2021 23:40:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xu_diNAapNkH; Fri, 19 Nov 2021 23:40:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8960B41C1A;
	Fri, 19 Nov 2021 23:40:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0FA401BF239
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 23:40:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F332B82ADD
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 23:40:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T4S7I2ihvkOd for <devel@linuxdriverproject.org>;
 Fri, 19 Nov 2021 23:40:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 418F8828AF
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 23:40:12 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id bu18so50543032lfb.0
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 15:40:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rBqNH03SQHw54nf1sSLFeWZJtpAA4tMJRhcRf6KK130=;
 b=ZEUS3rHgG5f2CCTc1i5ALCmvS4HcCVZiaidRuvK86lumr9erVB2h2XrBaYGm7oIjKp
 JWQJtexwctyJWKSZdCQVixTIO2Zxj3BoXhxok/WV0QIi5SJJsgdwVKwexMLdJE97En+3
 iE9UfXKoSopnS4zhM5A3LGjsMGvogDbNEVQ7YDxixypMv3iUuOzbmd4lWJfqJQZgKeRS
 7b/sJfvO+At756/nSyk9U+8OOMUIv/j1CC4fTM06hC+oIGQJvZRxvVeFRXLT6H6twA8M
 Bskhfub2s1U69JF2cRPZXO93m8/NhW/yqzRgVarKHG+TF/56zv1FoScXbVc8eg/CMpiN
 mT7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rBqNH03SQHw54nf1sSLFeWZJtpAA4tMJRhcRf6KK130=;
 b=B7oknPqHffJSabNoga3snqIV1ofXqMWAeskatMuK5PoLSv2QCiSAxtHsmvDiyyilPn
 GM86IDamvE/Q0maL1KYNLQu/c5TTlWtx6Huj8uGOhi6C8bWcU7ABY9PAmjs/K93BDEo0
 vB6U5Dl0I+I8ZQ06PXzDpddol+2jIc6mVph9XmAKvH9ggPYtNXIoxNvVkJz5DU26ruAZ
 KNsW21ztJSOdniS1wX+5YZtHXesub5amdnLRXDmpGTKjAGDqkjrHjGrMsFucN7T8DPpL
 pGnaJ4/357LHI98+80LZpuJeZgEWpycrc7ZVzWQlH0ymBltiyu0wNISe+p2oEF/w3F1D
 Cdsw==
X-Gm-Message-State: AOAM533FyZcElaTo/TZR8tRQkX7PagfzVy8jf5Z9l6jJ+2mos6XhYlE0
 cIasLpkyeZ+9ZvZH448xNK578D/iqG9fmvHN5yYFnA==
X-Google-Smtp-Source: ABdhPJzxz4GreJQD8XtyasARCmhfSzifXzAHxJK+0NBW3rz8ATOv0jsOv/R4JyiSyBLSmIv/Uo7ALRra8bmC0ysep0g=
X-Received: by 2002:a05:6512:22c7:: with SMTP id
 g7mr37002485lfu.668.1637365209836; 
 Fri, 19 Nov 2021 15:40:09 -0800 (PST)
MIME-Version: 1.0
References: <20211112180720.2858135-1-tkjos@google.com>
 <CAHC9VhQaHzrjdnr_DvZdPfWGiehC17yJVAJdVJMn8tOC1_Y+gA@mail.gmail.com>
In-Reply-To: <CAHC9VhQaHzrjdnr_DvZdPfWGiehC17yJVAJdVJMn8tOC1_Y+gA@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Fri, 19 Nov 2021 15:39:59 -0800
Message-ID: <CAHRSSEwUUUxXOnb2_fg1qnEXbCtD+G7KW8=xwKZFA5r-PKcPBg@mail.gmail.com>
Subject: Re: [PATCH] binder: fix test regression due to sender_euid change
To: Paul Moore <paul@paul-moore.com>
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
Cc: devel@driverdev.osuosl.org, linux-security-module@vger.kernel.org,
 kernel-team@android.com, tkjos@android.com, keescook@chromium.org,
 jannh@google.com, selinux@vger.kernel.org, gregkh@linuxfoundation.org,
 stephen.smalley.work@gmail.com, jmorris@namei.org, zohar@linux.ibm.com,
 linux-kernel@vger.kernel.org, arve@android.com, stable@vger.kernel.org,
 jeffv@google.com, joel@joelfernandes.org, eparis@parisplace.org,
 maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 19, 2021 at 3:00 PM Paul Moore <paul@paul-moore.com> wrote:
>
> On Fri, Nov 12, 2021 at 1:07 PM Todd Kjos <tkjos@google.com> wrote:
> >
> > This is a partial revert of commit
> > 29bc22ac5e5b ("binder: use euid from cred instead of using task").
> > Setting sender_euid using proc->cred caused some Android system test
> > regressions that need further investigation. It is a partial
> > reversion because subsequent patches rely on proc->cred.
> >
> > Cc: stable@vger.kernel.org # 4.4+
> > Fixes: 29bc22ac5e5b ("binder: use euid from cred instead of using task")
> > Signed-off-by: Todd Kjos <tkjos@google.com>
> > Change-Id: I9b1769a3510fed250bb21859ef8beebabe034c66

Greg, I neglected to remove the "Change-Id" from my Android pre-submit
testing. Can you remove that, or would you like me to resubmit without
it?

> > ---
> > - the issue was introduced in 5.16-rc1, so please apply to 5.16
> > - this should apply cleanly to all stable branches back to 4.4
> >   that contain "binder: use euid from cred instead of using task"
> >
> >
> >  drivers/android/binder.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>
> This looks okay to me.  I assume this is going in via GregKH's tree?
>
> Acked-by: Paul Moore <paul@paul-moore.com>
>
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index 49fb74196d02..cffbe57a8e08 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -2710,7 +2710,7 @@ static void binder_transaction(struct binder_proc *proc,
> >                 t->from = thread;
> >         else
> >                 t->from = NULL;
> > -       t->sender_euid = proc->cred->euid;
> > +       t->sender_euid = task_euid(proc->tsk);
> >         t->to_proc = target_proc;
> >         t->to_thread = target_thread;
> >         t->code = tr->code;
> > --
> > 2.34.0.rc1.387.gb447b232ab-goog
>
> --
> paul moore
> www.paul-moore.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

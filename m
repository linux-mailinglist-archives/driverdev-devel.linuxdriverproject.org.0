Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE3E424810
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Oct 2021 22:38:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4CAFA84160;
	Wed,  6 Oct 2021 20:38:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nve3n98EuNWk; Wed,  6 Oct 2021 20:38:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BF108414E;
	Wed,  6 Oct 2021 20:38:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 71FBC1BF34F
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 20:38:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6164360F41
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 20:38:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UqeMJafe_2np for <devel@linuxdriverproject.org>;
 Wed,  6 Oct 2021 20:38:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D3D760F40
 for <devel@driverdev.osuosl.org>; Wed,  6 Oct 2021 20:38:30 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id u18so15237295lfd.12
 for <devel@driverdev.osuosl.org>; Wed, 06 Oct 2021 13:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Sch4r++lRpWjMNWm6J3bRObYHgBNc9lQrCbgQx2Tuoo=;
 b=a4pZ+3Br7NaYQ2Kzf0S9JsFgIpq4GtOWcP82qqLDPevvFWGxm/mxbnaYhDvd0NjDzX
 ByDUN83WSmy4t7uZxInG6536asXx/W9SjkQt5krKh7okGsyVux0QZoI8LaU9tQq8LPaj
 ZqUEde7CRF+GnW8R8o5wp+0gkC+ZwoxlHuPEoYHOPaUN6vXiA6cQmpWgsAsIlLQ4JGzq
 yFffrdE1JxW7PNPvPLd5UBxf2aYT/M43/9HFg9f236FAPnyEh9AZF/PBmEKUUV2XMoUR
 me52kJBEfFV/8PhDgWlR+aZwczihZijcNWYIkBnKH8NufaVp6pDbdQz/I++4VCTzM07s
 uyMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Sch4r++lRpWjMNWm6J3bRObYHgBNc9lQrCbgQx2Tuoo=;
 b=nkXxLLIArQb7Lna8PJvUK+5ERm27uhjAUie1zFWBkM7oTlCNMQx73IS7KUHQY3zmag
 bA44mZYDIC2d1MnkBbq955I+VUO40+IPyzlzoppzbE3etISA9yDyJcknsRislj7/akYP
 22vCbuSHFLdZGAj4234Cz63ZA4w+2lHXlkZhjgiZP/FW5QZM2oGoXVkhyOnCeoUDdiQy
 /zVUD3lyDohep+5knssiPCy1TzADArpDZWiKdX1fR8WhTC4UiuHlK0B9ZnVpqZBei20G
 afDDU+1P1d/B1NNZjN1YgwzDaJ6oMI6iCawhRWrPffHc0bd8GTf7v0obrqntK62j7+JD
 H0oA==
X-Gm-Message-State: AOAM530J0nn0HTvQujzk0QoirQCQ/M5iZ5LMazhBLwVLajrlk6yBzzGi
 CGTRC3ifi13NCDC2AM0NMPRvYOPdEi7V8uRcUeBuaA==
X-Google-Smtp-Source: ABdhPJxedfCoEzB5tZdpBasgE/9MbGIE0zJY6OR1GtP4jFj59lIv6nV246bFd8nVlFKClxucfJ/Bsa7/IVMSMHTLXW0=
X-Received: by 2002:a05:6512:239f:: with SMTP id
 c31mr176934lfv.19.1633552708433; 
 Wed, 06 Oct 2021 13:38:28 -0700 (PDT)
MIME-Version: 1.0
References: <20211006194610.953319-1-tkjos@google.com>
 <20211006194610.953319-4-tkjos@google.com>
 <CAHRSSExN4g0qubjjLhdGx5DA7njT5ZwPkAzCY1OEdR1dbscLVA@mail.gmail.com>
In-Reply-To: <CAHRSSExN4g0qubjjLhdGx5DA7njT5ZwPkAzCY1OEdR1dbscLVA@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Wed, 6 Oct 2021 13:38:15 -0700
Message-ID: <CAHRSSEyHWvcLhjera_Gx_rJk+xOA8mTRpodEpHuHhYuLqrNEdQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] binder: use euid from cred instead of using task
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com, 
 maco@android.com, christian@brauner.io, jmorris@namei.org, serge@hallyn.com, 
 paul@paul-moore.com, stephen.smalley.work@gmail.com, eparis@parisplace.org, 
 keescook@chromium.org, jannh@google.com, jeffv@google.com, 
 zohar@linux.ibm.com, linux-security-module@vger.kernel.org, 
 selinux@vger.kernel.org, devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org
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
Cc: joel@joelfernandes.org, kernel-team@android.com, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 6, 2021 at 12:55 PM Todd Kjos <tkjos@google.com> wrote:
>
> On Wed, Oct 6, 2021 at 12:46 PM Todd Kjos <tkjos@google.com> wrote:
> >
> > Set a transaction's sender_euid from the the 'struct cred'

Sigh...and I forgot to run checkpatch before submitting which would
have caught this "the the"

> > saved at binder_open() instead of looking up the euid
> > from the binder proc's 'struct task'. This ensures
> > the euid is associated with the security context that
> > of the task that opened binder.
> >
> > Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
> > Signed-off-by: Todd Kjos <tkjos@google.com>
> > Stephen Smalley <stephen.smalley.work@gmail.com>
>
> This should have been "Suggested-by: Stephen Smalley
> <stephen.smalley.work@gmail.com>"
>
> > Cc: stable@vger.kernel.org # 4.4+
> > ---
> > v3: added this patch to series
> >
> >  drivers/android/binder.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index 989afd0804ca..26382e982c5e 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -2711,7 +2711,7 @@ static void binder_transaction(struct binder_proc *proc,
> >                 t->from = thread;
> >         else
> >                 t->from = NULL;
> > -       t->sender_euid = task_euid(proc->tsk);
> > +       t->sender_euid = proc->cred->euid;
> >         t->to_proc = target_proc;
> >         t->to_thread = target_thread;
> >         t->code = tr->code;
> > --
> > 2.33.0.800.g4c38ced690-goog
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

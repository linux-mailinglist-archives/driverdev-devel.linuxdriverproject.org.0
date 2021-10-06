Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E69424795
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Oct 2021 21:55:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11DF060F31;
	Wed,  6 Oct 2021 19:55:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rs_g18gJ-enU; Wed,  6 Oct 2021 19:55:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 868FB60F22;
	Wed,  6 Oct 2021 19:55:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BDC771BF9AF
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 19:55:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC26D40243
 for <devel@linuxdriverproject.org>; Wed,  6 Oct 2021 19:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n8z7LLeDuPln for <devel@linuxdriverproject.org>;
 Wed,  6 Oct 2021 19:55:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8419F40111
 for <devel@driverdev.osuosl.org>; Wed,  6 Oct 2021 19:55:27 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id y15so15153374lfk.7
 for <devel@driverdev.osuosl.org>; Wed, 06 Oct 2021 12:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O34eH0EHa4dBMbkzaLgHHRId8l/MAEnDKw9FowvQGtw=;
 b=edyHFq+vsfJFiZd8DhlRrAHySi3AsFfIcOaBRsKAK4GAw+GqH/Tkncskp+ehkhkvMJ
 Rh2FRF9TCAYHNO5g5j8g+lb0xmVeKVhFZ6ypCqlHS/CxvSsbDGbiIdCrJ50GYAkgoDXB
 9Sb4DaPWafxMxih6hnxJnEqkQX8cOODs1n7pML6RNkqDaOBKUqN94bTbsnZO0ZrfyTxW
 KCcWG4t1IUhi6fL2HVsgpiA8yXyKm+j13sKaJOdS8iGg9UAZdGzrE87+cCGOZt/dupST
 xw5XIxspcb5yhHEaZRQmQCmulymMeghKLzA/lGlYMS9Fz+fSqOmBElUx5g8238R1pbbB
 Evyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O34eH0EHa4dBMbkzaLgHHRId8l/MAEnDKw9FowvQGtw=;
 b=YS5/XiUmeidAnMVcjiJqhIhThtd1wR+n8f2ZWo7J1fYuR5Ko21DT1DBhWLDciQNJi5
 tcheOGi2qSiY9KZZ/ZqHkcAOmrd8zX3urzLz8CfzgqEv1eCB81i0KIMANVff/8nf6iyU
 BeRTTQ2IfyWDP+0QlwGR5E4HbbKtrIMlaqz5LJO9n9y1BKqmNteFWCpOGi9D7V+iVFqh
 I0pcIr97uh/J3fowDIvWtVMSs/cBZzcz5D5enya5yvAP24kWS/UMKSqIMOslAdfCBISH
 1x+Ga6e15hA6ygJ/jqA0ydg65t3tzsWhkQTtyZH3vIDZs7KiHAw5w4a5imxK+BJZsank
 d+bQ==
X-Gm-Message-State: AOAM532RS6fwWtQwzkgU/4Nr+HJToog4Tf76oQdmb1Q6z50RNxXb5moU
 cXzEtssWq/DryqqG8DP2ETojDCLI+VfFuNOiwM9/2A==
X-Google-Smtp-Source: ABdhPJxvYTzX1/2a+GZtvlTtfbjZ2f1aHuPdE1JLzkl2Tf4YIk/gPLeLtgxyWjoSngDOiqBUv32ywAZBk6mznY+UUkI=
X-Received: by 2002:a05:6512:2290:: with SMTP id
 f16mr11688585lfu.668.1633550125028; 
 Wed, 06 Oct 2021 12:55:25 -0700 (PDT)
MIME-Version: 1.0
References: <20211006194610.953319-1-tkjos@google.com>
 <20211006194610.953319-4-tkjos@google.com>
In-Reply-To: <20211006194610.953319-4-tkjos@google.com>
From: Todd Kjos <tkjos@google.com>
Date: Wed, 6 Oct 2021 12:55:13 -0700
Message-ID: <CAHRSSExN4g0qubjjLhdGx5DA7njT5ZwPkAzCY1OEdR1dbscLVA@mail.gmail.com>
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

On Wed, Oct 6, 2021 at 12:46 PM Todd Kjos <tkjos@google.com> wrote:
>
> Set a transaction's sender_euid from the the 'struct cred'
> saved at binder_open() instead of looking up the euid
> from the binder proc's 'struct task'. This ensures
> the euid is associated with the security context that
> of the task that opened binder.
>
> Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
> Signed-off-by: Todd Kjos <tkjos@google.com>
> Stephen Smalley <stephen.smalley.work@gmail.com>

This should have been "Suggested-by: Stephen Smalley
<stephen.smalley.work@gmail.com>"

> Cc: stable@vger.kernel.org # 4.4+
> ---
> v3: added this patch to series
>
>  drivers/android/binder.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 989afd0804ca..26382e982c5e 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -2711,7 +2711,7 @@ static void binder_transaction(struct binder_proc *proc,
>                 t->from = thread;
>         else
>                 t->from = NULL;
> -       t->sender_euid = task_euid(proc->tsk);
> +       t->sender_euid = proc->cred->euid;
>         t->to_proc = target_proc;
>         t->to_thread = target_thread;
>         t->code = tr->code;
> --
> 2.33.0.800.g4c38ced690-goog
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

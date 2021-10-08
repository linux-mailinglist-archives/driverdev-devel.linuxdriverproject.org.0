Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC0F4272E5
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Oct 2021 23:13:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 482D060B10;
	Fri,  8 Oct 2021 21:13:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q_alzHR1QWKo; Fri,  8 Oct 2021 21:13:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7481D60B0C;
	Fri,  8 Oct 2021 21:13:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A645E1BF2F6
 for <devel@linuxdriverproject.org>; Fri,  8 Oct 2021 21:12:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 901F340689
 for <devel@linuxdriverproject.org>; Fri,  8 Oct 2021 21:12:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=paul-moore-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N50PMc63GKGH for <devel@linuxdriverproject.org>;
 Fri,  8 Oct 2021 21:12:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 753F140669
 for <devel@driverdev.osuosl.org>; Fri,  8 Oct 2021 21:12:53 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id t16so19109095eds.9
 for <devel@driverdev.osuosl.org>; Fri, 08 Oct 2021 14:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EbVIsJCQSO+vbMr39E67OTfH62jkz85HI8YV0eMVgIY=;
 b=T7Z+PBZZ38/6eeh/G0tV6G+yxjOETQG+WszM1muqiScaLBeF+ZqJusgY97w/t0aTO3
 +MI1AGLBQEIWws+2qXERwclzdSHvOyGM7RvutJ6OjcI7wphFhBL8D5d5R9wT+v/lKNUB
 RPO1tE0qnxQiqKveu0tAXLppvxkNPbIAXXLwxZmmyTdBM2cKXrAx05BsmTQiQWyiKieo
 8UluRsflN+2B2C34sdt78fRGMCCkYjzFOnqjur3cgIrnOhZXe2MMxQHhg+TLsVrM2pDw
 DT5a17au43scpkF9zLSKfbSqon56fcuuQng06yVjEfMY5U05F0x/WSFA6+HITs3i5nPO
 Kjdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EbVIsJCQSO+vbMr39E67OTfH62jkz85HI8YV0eMVgIY=;
 b=VSVyFyiRuH0sn+Vbv4bJksJ4aZwmWOfbd+2Diwr8f63Ili0KXo6G84OKM26OyatYVl
 BZ/3waMvHgCz1WEmmlIN8RRjthPNC5glQM8XWJGODVHfyAWainm5393hwkYr9VxZDx2/
 Vpg8xXgAX2BsG/8pUqFkMIEIsDpnSPOBae+xTX6HCEvzZpQk2TZDSdDJn+Ckmm47hzvI
 qAQsh0fJPFhnWo0xELfcg2MXZ7cF/evZtVAL79qbcK5qSvMm7KCQo0WnrUQ6c/Rkr+IM
 PBxJGpndJn3V8bHW69YeVCdVJr2NmdtIoCvFrH0BDOZEkRxaIL8zQjxBf+uRFJuEkqsj
 01jw==
X-Gm-Message-State: AOAM5334McNMFGR/O73iPbhaAHhZ9RCvOxuHaR9jYvN0SBYLKsG3zRbz
 wwlFjjkgOycFYSL5qrXG+EBI+tedFYpRqEvsROJ/
X-Google-Smtp-Source: ABdhPJxgroJYCNaXqAYWnw5dFNkqDUN49FqbTznbw+BDWQCcH7lTpM7uryrWhhByaIb7UK+S2FmjYrhHEtPE4oeuQhs=
X-Received: by 2002:a17:907:7601:: with SMTP id
 jx1mr7240204ejc.69.1633727571022; 
 Fri, 08 Oct 2021 14:12:51 -0700 (PDT)
MIME-Version: 1.0
References: <20211007004629.1113572-1-tkjos@google.com>
 <20211007004629.1113572-4-tkjos@google.com>
In-Reply-To: <20211007004629.1113572-4-tkjos@google.com>
From: Paul Moore <paul@paul-moore.com>
Date: Fri, 8 Oct 2021 17:12:39 -0400
Message-ID: <CAHC9VhTRTcZW9eyXXvAN7T=ZCQ_zwH5iBz+d0h2ntf7=XHE-Vw@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] binder: use euid from cred instead of using task
To: Todd Kjos <tkjos@google.com>, casey@schaufler-ca.com
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
 Stephen Smalley <stephen.smalley.work@gmail.com>,
 James Morris <jmorris@namei.org>, zohar@linux.ibm.com,
 linux-kernel@vger.kernel.org, arve@android.com, stable@vger.kernel.org,
 Jeffrey Vander Stoep <jeffv@google.com>, joel@joelfernandes.org,
 Eric Paris <eparis@parisplace.org>, maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 6, 2021 at 8:46 PM Todd Kjos <tkjos@google.com> wrote:
>
> Set a transaction's sender_euid from the 'struct cred'
> saved at binder_open() instead of looking up the euid
> from the binder proc's 'struct task'. This ensures
> the euid is associated with the security context that
> of the task that opened binder.
>
> Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
> Signed-off-by: Todd Kjos <tkjos@google.com>
> Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
> Cc: stable@vger.kernel.org # 4.4+
> ---
> v3: added this patch to series
>
>  drivers/android/binder.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

This is an interesting ordering of the patches.  Unless I'm missing
something I would have expected patch 3/3 to come first, followed by
2/3, with patch 1/3 at the end; basically the reverse of what was
posted here.

My reading of the previous thread was that Casey has made his peace
with these changes so unless anyone has any objections I'll plan on
merging 2/3 and 3/3 into selinux/stable-5.15 and merging 1/3 into
selinux/next.

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

--
paul moore
www.paul-moore.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

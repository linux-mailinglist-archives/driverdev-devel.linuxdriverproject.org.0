Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C99744298FA
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Oct 2021 23:33:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D970240298;
	Mon, 11 Oct 2021 21:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 00t47GADreMh; Mon, 11 Oct 2021 21:33:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2516A40219;
	Mon, 11 Oct 2021 21:33:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6621F1BF865
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 21:33:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6284340035
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 21:33:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h8viC_tNjP9e for <devel@linuxdriverproject.org>;
 Mon, 11 Oct 2021 21:33:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 75931401B9
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 21:33:34 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id t16so50996215eds.9
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 14:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GGoeVfz6OToFDd2j2G5lbQgP/Z/GdhCpDi+ufur7oeE=;
 b=Mq0m5Xj0EIW9KQayGt47Wid8m2/y3C0+he9zd+pv9/BVQrByW2jeqsDk26w8giHJFp
 RyBPr79fPF2JLVPMFCgdiV9TYRAOAR8li5ucmX7NCHHokbh2xqjr11yAzW0uh4zTeFHS
 5srV58tAbEENRyCVmS6rTeyrgWzw5wZpL9KwPXBMsOicKR53b7hrdYGjlStYNJzjrwII
 a9jrE2ND8gNxujmSrVfvwX9vPFWJGRBCcT4/c/qVDGZwvBE3POvfs87DlVxSSYX9PkQ5
 7E+ID/16RUI0DjtyQyGjSUylCBXioY+y+swnoWsugIa6bCSwukf/U7XxX2s433TYf8WQ
 RdGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GGoeVfz6OToFDd2j2G5lbQgP/Z/GdhCpDi+ufur7oeE=;
 b=P4MAniq/Jn9ElZqeTyqjfn/MF07ens5Afm9U7Wqvt4IKsNO/lc1O8JnZjCerVTPakp
 OVv+F4e371/d1wJrJYLPeml88jQ+RGLXbZoKsKm/GJ4WAdmz2dMGLbWfnH/GFz6zFa3Y
 vhietXIQ3x0LfRrDuJ+orfP+m1WC1D/f801Oss/gti1OcDvFFQczSaaHin51sPWWEPKk
 8VvhIn8DfD0DmJpcqZ3bTlh9ovoOgwz8Td+iYUMUMyxusMPZ/gYy8TxudE41mnGpXhqP
 UdjqWP14kRqHHqx3FGOFrpyH5oWlUa6kOxEN8qZivgLkFx8Oat8q8lRGgDa4dzgDNKrH
 zAgg==
X-Gm-Message-State: AOAM5304ifXqN1fFgd8wc+2Sa+zK7xIHOwzv584CnR5GOlEsKfOp/XXK
 17fH/iPpqjAgPsd1nJL+TRSgC0f7f3lU0jBW0zC3
X-Google-Smtp-Source: ABdhPJx9AGRTTYFCiQKOTA6jSrrQf8NQGirG9ufQKc9MzXqqtVvRPEka65LpUbML3Hzub2vP+riRnQA01bq2XN6Yfr4=
X-Received: by 2002:a50:e1cd:: with SMTP id m13mr45973619edl.93.1633988012430; 
 Mon, 11 Oct 2021 14:33:32 -0700 (PDT)
MIME-Version: 1.0
References: <20211007004629.1113572-1-tkjos@google.com>
 <20211007004629.1113572-3-tkjos@google.com>
In-Reply-To: <20211007004629.1113572-3-tkjos@google.com>
From: Paul Moore <paul@paul-moore.com>
Date: Mon, 11 Oct 2021 17:33:21 -0400
Message-ID: <CAHC9VhSDnwapGk6Pvn5iuKv0zCtZSbfnGAkZwKcxVYLVRH6CLg@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] binder: use cred instead of task for getsecid
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
> Use the 'struct cred' saved at binder_open() to lookup
> the security ID via security_cred_getsecid(). This
> ensures that the security context that opened binder
> is the one used to generate the secctx.
>
> Fixes: ec74136ded79 ("binder: create node flag to request sender's
> security context")
> Signed-off-by: Todd Kjos <tkjos@google.com>
> Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Cc: stable@vger.kernel.org # 5.4+
> ---
> v3: added this patch to series
> v4: fix build-break for !CONFIG_SECURITY
>
>  drivers/android/binder.c | 11 +----------
>  include/linux/security.h |  4 ++++
>  2 files changed, 5 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index ca599ebdea4a..989afd0804ca 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -2722,16 +2722,7 @@ static void binder_transaction(struct binder_proc *proc,
>                 u32 secid;
>                 size_t added_size;
>
> -               /*
> -                * Arguably this should be the task's subjective LSM secid but
> -                * we can't reliably access the subjective creds of a task
> -                * other than our own so we must use the objective creds, which
> -                * are safe to access.  The downside is that if a task is
> -                * temporarily overriding it's creds it will not be reflected
> -                * here; however, it isn't clear that binder would handle that
> -                * case well anyway.
> -                */
> -               security_task_getsecid_obj(proc->tsk, &secid);
> +               security_cred_getsecid(proc->cred, &secid);
>                 ret = security_secid_to_secctx(secid, &secctx, &secctx_sz);
>                 if (ret) {
>                         return_error = BR_FAILED_REPLY;
> diff --git a/include/linux/security.h b/include/linux/security.h
> index 6344d3362df7..f02cc0211b10 100644
> --- a/include/linux/security.h
> +++ b/include/linux/security.h
> @@ -1041,6 +1041,10 @@ static inline void security_transfer_creds(struct cred *new,
>  {
>  }
>
> +static inline void security_cred_getsecid(const struct cred *c, u32 *secid)
> +{
> +}

Since security_cred_getsecid() doesn't return an error code we should
probably set the secid to 0 in this case, for example:

  static inline void security_cred_getsecid(...)
  {
    *secid = 0;
  }

-- 
paul moore
www.paul-moore.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

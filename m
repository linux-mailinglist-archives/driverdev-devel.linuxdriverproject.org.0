Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D54457941
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Nov 2021 00:00:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 800F782A53;
	Fri, 19 Nov 2021 23:00:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MfkarvvhgxE0; Fri, 19 Nov 2021 23:00:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A050B82977;
	Fri, 19 Nov 2021 23:00:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3BDB21BF4D7
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 23:00:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2B51441C41
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 23:00:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=paul-moore-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uKX5Ee1loUcP for <devel@linuxdriverproject.org>;
 Fri, 19 Nov 2021 23:00:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F2BD541C3B
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 23:00:43 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id x15so48793702edv.1
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 15:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=It4uFIPm/TcoK+jPH5YkeMMq3zsyxm4gO2u58vGukR0=;
 b=3pJoQe2hjfrg/7hSbzLxsod9OrFWCoaug9P7fvkrEFg0rv9ffCcPK1UzNYydItGFTZ
 8Gsmt/c334dnG4toozreaXjNphhZPsZYp2nlHPw3e/IL09S/41opYVanB2nzNO6/romw
 i1rKm54xMk9+J65ZcFGOcZQ1SLjAb01WfAXpC5IjfPdVnhpO70u2p2JsMNKHDcQdADrz
 aY47nKih2yF8knoiTAME51sXes1K6AV8Z51vQZXQFjkOEDpmKlNrruLgqJUvnP5ZmTFO
 EX6tdfLRUPCJosqeGFNBGk62gvwF20K+oZOxePAEXnDwZsit9k4eDkfGa6isnfm5eM4B
 QSvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=It4uFIPm/TcoK+jPH5YkeMMq3zsyxm4gO2u58vGukR0=;
 b=R4uQ4xn4XgO+2TOOYmH7X7UB2Mdt18C70T80kRx9EUkYrhOismvSU08njoNXr2dHqD
 FzI3PGIT4rYXGDifLhvZUlqrWyTS0Yl9DdnIUSMiNHgi7Bdhf7e1XVLLco/NJWQzUyTf
 xPksOpz+F/1E1CjplRWxtvxGUh3zBcH62GZhGjUMhMVO/DsgEQ09/EMsbRBHjNwi31rC
 xFNa3DtBaRPUgToBYu+upScOaE1WV+/KssmPNvPIgSyl2ooPZ26KG1yrQjoCzxMeXuEg
 L1z5Ojd0MNtjoLbdSW0DbQ+j8W0X4BUatJ0hiWVs1+lKeElVddRYzjDPosm/L9gyRwa2
 jZRQ==
X-Gm-Message-State: AOAM531ER/KeljA1qxGeGUUollFckcpFWCVd4HjRlU1rH+Zfzrh0O87f
 K+6cQ2AezLGh310+M9vXSXXM1d2L1dmV0krOil3s
X-Google-Smtp-Source: ABdhPJwj8srWh1Z1Q4zO93E9LesvzJGVPu0HuTT8W9Stihxm6dQnTTI+EpjPhsnLo9c1VlkWaxAuFRFcd+EwUhAciqo=
X-Received: by 2002:a17:907:629b:: with SMTP id
 nd27mr12593174ejc.24.1637362841746; 
 Fri, 19 Nov 2021 15:00:41 -0800 (PST)
MIME-Version: 1.0
References: <20211112180720.2858135-1-tkjos@google.com>
In-Reply-To: <20211112180720.2858135-1-tkjos@google.com>
From: Paul Moore <paul@paul-moore.com>
Date: Fri, 19 Nov 2021 18:00:31 -0500
Message-ID: <CAHC9VhQaHzrjdnr_DvZdPfWGiehC17yJVAJdVJMn8tOC1_Y+gA@mail.gmail.com>
Subject: Re: [PATCH] binder: fix test regression due to sender_euid change
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
 stephen.smalley.work@gmail.com, jmorris@namei.org, zohar@linux.ibm.com,
 linux-kernel@vger.kernel.org, arve@android.com, stable@vger.kernel.org,
 jeffv@google.com, joel@joelfernandes.org, eparis@parisplace.org,
 maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 12, 2021 at 1:07 PM Todd Kjos <tkjos@google.com> wrote:
>
> This is a partial revert of commit
> 29bc22ac5e5b ("binder: use euid from cred instead of using task").
> Setting sender_euid using proc->cred caused some Android system test
> regressions that need further investigation. It is a partial
> reversion because subsequent patches rely on proc->cred.
>
> Cc: stable@vger.kernel.org # 4.4+
> Fixes: 29bc22ac5e5b ("binder: use euid from cred instead of using task")
> Signed-off-by: Todd Kjos <tkjos@google.com>
> Change-Id: I9b1769a3510fed250bb21859ef8beebabe034c66
> ---
> - the issue was introduced in 5.16-rc1, so please apply to 5.16
> - this should apply cleanly to all stable branches back to 4.4
>   that contain "binder: use euid from cred instead of using task"
>
>
>  drivers/android/binder.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

This looks okay to me.  I assume this is going in via GregKH's tree?

Acked-by: Paul Moore <paul@paul-moore.com>

> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 49fb74196d02..cffbe57a8e08 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -2710,7 +2710,7 @@ static void binder_transaction(struct binder_proc *proc,
>                 t->from = thread;
>         else
>                 t->from = NULL;
> -       t->sender_euid = proc->cred->euid;
> +       t->sender_euid = task_euid(proc->tsk);
>         t->to_proc = target_proc;
>         t->to_thread = target_thread;
>         t->code = tr->code;
> --
> 2.34.0.rc1.387.gb447b232ab-goog

-- 
paul moore
www.paul-moore.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

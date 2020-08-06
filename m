Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE63123DCF0
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 18:58:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B90185EAF;
	Thu,  6 Aug 2020 16:58:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OD3xQZKy6Vvj; Thu,  6 Aug 2020 16:58:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 82302862FB;
	Thu,  6 Aug 2020 16:58:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D871B1BF287
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 16:58:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D2DDD88391
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 16:58:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PJnTlxsbKF-X for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 16:58:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E9971881E2
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 16:58:37 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id m19so10562379ejd.8
 for <devel@driverdev.osuosl.org>; Thu, 06 Aug 2020 09:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1XBlSxPFXmmwC9ml0NMR2WdlXom4n6CpwebB65mVnUs=;
 b=dXe6RGc6/xXA7dnes7IB/pkAiTFvxhcpMvvtqW5JIhIYAIOZZskja/irTxfuzn7ZLl
 BBhgrAchBiS9dj4kiDmcC0lEGAn06HCfFv6nA5dXmdYahycy0MfXQ2ZMAd65HnYzIU0G
 OvEJar8x1W8NIm/obNQnQmKoMi94gth0dQhd0cO/R5GP/Ep+6wW2lP44E7m8Pd8S2Z06
 PaKtvZp+Y7P3sMXXRTWk1rDK3tszZaurMvD748iPm+CVVqeCD3YJFeKNkRQvWm3wJGOY
 VJd9cVLog2o4YEJ6H4NSw2R88nYq7Bg1mQOzd2aOlgIjNcz2oSZP6yf04FCk4EHCIoAH
 /l9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1XBlSxPFXmmwC9ml0NMR2WdlXom4n6CpwebB65mVnUs=;
 b=gOFvInmhroFf14cslOS1y4ndreJFJyzwEO0DnLjd+kZKdLR60OL8w9dQwkmbbcybDy
 TN/+LmO2SUJ98/1LdTsXThZnn5aldjlxOwW7y5Yph2J7f0bq2it97QhZXgsInWr4hdMX
 clbMp1oNV13U/r8QW1dGIQ4UvFxx6pVKj8dKnxDdu1cv6kuBiLBg6KJROuenZr8+h7Gd
 KkgeDtlmyh2L700dE3RnLSciY2rr6LwwOklzibFUgD1ABkoQtWWFNscB5G7JLUtJrAaX
 yuCvUk7NZFI/Ss5weQXaVt/vvm2G5BcrNwsMojWAHBTr1MFyMkyyts3r/+nz+VlwfniR
 sIKQ==
X-Gm-Message-State: AOAM5335GzLIHy3C6QYMjz/z3b+R5XAdpLg9bn/vGevkwrR4p0bm/bqZ
 ePSEEqVGHjoVngGoffY53KVRBoaEOljiWqKRq3202w==
X-Google-Smtp-Source: ABdhPJwRwr7iyIOMmsIdXrbJrtDmOHJSdVosW8f7X72dl0j3AzF5hsJa5Lkjawzt3dSCmXDg7a+kSdYK+wDCeczJkfM=
X-Received: by 2002:a17:907:208e:: with SMTP id
 pv14mr5596998ejb.438.1596733116143; 
 Thu, 06 Aug 2020 09:58:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200806165359.2381483-1-jannh@google.com>
In-Reply-To: <20200806165359.2381483-1-jannh@google.com>
From: Todd Kjos <tkjos@google.com>
Date: Thu, 6 Aug 2020 09:58:23 -0700
Message-ID: <CAHRSSEwgfaQhqgHhfKWKpd78WAT20aj49exUgbJqhVXp7NBY_w@mail.gmail.com>
Subject: Re: [PATCH] binder: Remove bogus warning on failed same-process
 transaction
To: Jann Horn <jannh@google.com>
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
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Suren Baghdasaryan <surenb@google.com>,
 Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 6, 2020 at 9:54 AM Jann Horn <jannh@google.com> wrote:
>
> While binder transactions with the same binder_proc as sender and recipient
> are forbidden, transactions with the same task_struct as sender and
> recipient are possible (even though currently there is a weird check in
> binder_transaction() that rejects them in the target==0 case).
> Therefore, task_struct identities can't be used to distinguish whether
> the caller is running in the context of the sender or the recipient.
>
> Since I see no easy way to make this WARN_ON() useful and correct, let's
> just remove it.
>
> Fixes: 44d8047f1d87 ("binder: use standard functions to allocate fds")
> Reported-by: syzbot+e113a0b970b7b3f394ba@syzkaller.appspotmail.com
> Signed-off-by: Jann Horn <jannh@google.com>

Acked-by: Todd Kjos <tkjos@google.com>

> ---
>  drivers/android/binder.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index f936530a19b0..5b0376344dbe 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -2344,8 +2344,6 @@ static void binder_transaction_buffer_release(struct binder_proc *proc,
>                          * file is done when the transaction is torn
>                          * down.
>                          */
> -                       WARN_ON(failed_at &&
> -                               proc->tsk == current->group_leader);
>                 } break;
>                 case BINDER_TYPE_PTR:
>                         /*
>
> base-commit: 47ec5303d73ea344e84f46660fff693c57641386
> --
> 2.28.0.163.g6104cc2f0b6-goog
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

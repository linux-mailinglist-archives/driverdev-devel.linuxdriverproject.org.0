Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F4D52DB10
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 May 2022 19:21:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2341341D2C;
	Thu, 19 May 2022 17:21:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 17c7EvrZlVSH; Thu, 19 May 2022 17:21:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5612D41D53;
	Thu, 19 May 2022 17:21:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CE7CE1BF3AB
 for <devel@linuxdriverproject.org>; Thu, 19 May 2022 17:21:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BBCCF40183
 for <devel@linuxdriverproject.org>; Thu, 19 May 2022 17:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OsDALfQjJoSA for <devel@linuxdriverproject.org>;
 Thu, 19 May 2022 17:21:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com
 [IPv6:2607:f8b0:4864:20::1131])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA6BC4012A
 for <devel@driverdev.osuosl.org>; Thu, 19 May 2022 17:21:36 +0000 (UTC)
Received: by mail-yw1-x1131.google.com with SMTP id
 00721157ae682-2fed823dd32so63401037b3.12
 for <devel@driverdev.osuosl.org>; Thu, 19 May 2022 10:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3mLS4PfQr+FDNI3uFdJ7+BYDJ3LWS+aKjrtyVzRLVpY=;
 b=WMa5x8l6tFoxGelsCird41pK0BBotvFBfvnE5lwAdL/kgrGv6gu86m+TJd0JyCaXE2
 SeJisA5KBdLUbqM6JhWR9PKhwqYmnk0OsE019K0ueszy1r3lXgYJHWlhn8lp43uUeppZ
 8ds7Pg5NNzov+e4FToqf03y/SseCfayzEqKBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3mLS4PfQr+FDNI3uFdJ7+BYDJ3LWS+aKjrtyVzRLVpY=;
 b=AjyW+d3ZcspromLaFYPSCFmoNn85pmwAr8+q4MJNbgBV7M3GkijRsMgAFGva7It4TM
 FNI7WrkxakR+nLyrqyNR7LYgV9if0Irox78jGhniVzkuHijRwmw3nhpz8ROUxd4JSryt
 9N9rc6692I8NxZr7jA+s/UaATabfeYIYnGEnjHiyt7rTOgjVzLpAhgx1/J78SRpPk2qW
 wDsle50A3bmsFjkqr5O3cvhrINBnu/YWgkUOhBOyFkesRwQ7f3NpSpeLAAhgPbGu1/pE
 el4zlZWWUm2HI23AnqseOA3c+O4CPD/Ym1BxDR7Q2RqYeKNS7J+Kqn4vpuUIPCseXpBh
 T/Wg==
X-Gm-Message-State: AOAM531NX4wR2rvGY/hWjPOq2fv4yN2w+jzo1JVAMdQrNrMe5uG2/fay
 xkuZcJeUxoiwpgK5nU3KoweiE7LxTzK/J/iGayxTTA==
X-Google-Smtp-Source: ABdhPJwjBm47AxoIlFq6XagEmC7wbYZ2wxl3/jTwYhj+YxDS2rVY0NG98+vdG3Ak21OAPWgRCgo5H5QxkyN8eYoZulE=
X-Received: by 2002:a81:8450:0:b0:2ff:c13:17d1 with SMTP id
 u77-20020a818450000000b002ff0c1317d1mr6004756ywf.207.1652980895889; Thu, 19
 May 2022 10:21:35 -0700 (PDT)
MIME-Version: 1.0
References: <20220519000623.1715899-1-dualli@chromium.org>
 <YoZnVrU8Dih+urv6@kroah.com>
In-Reply-To: <YoZnVrU8Dih+urv6@kroah.com>
From: Li Li <dualli@chromium.org>
Date: Thu, 19 May 2022 10:21:25 -0700
Message-ID: <CANBPYPjkNWsO94nuG1TkR1DgK2W2kBxiJTriyVB7S3czHTZ1Yg@mail.gmail.com>
Subject: Re: [PATCH v1] Binder: add TF_UPDATE_TXN
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: dualli@google.com, devel@driverdev.osuosl.org, kernel-team@android.com,
 linux-kernel@vger.kernel.org, joel@joelfernandes.org, arve@android.com,
 maco@google.com, hridya@google.com, surenb@google.com, christian@brauner.io,
 tkjos@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 19, 2022 at 8:50 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, May 18, 2022 at 05:06:23PM -0700, Li Li wrote:
> > From: Li Li <dualli@google.com>
>
> Note, your subject does not say what TF_UPDATE_TXN is, so it's a bit
> hard to determine what is happening here.  Can you clean that up a bit
> and sumarize what this new addition does?

Sure, I'll add a brief summary there.

>
> >
> > When the target process is busy, incoming oneway transactions are
> > queued in the async_todo list. If the clients continue sending extra
> > oneway transactions while the target process is frozen, this queue can
> > become too large to accommodate new transactions. That's why binder
> > driver introduced ONEWAY_SPAM_DETECTION to detect this situation. It's
> > helpful to debug the async binder buffer exhausting issue, but the
> > issue itself isn't solved directly.
> >
> > In real cases applications are designed to send oneway transactions
> > repeatedly, delivering updated inforamtion to the target process.
> > Typical examples are Wi-Fi signal strength and some real time sensor
> > data. Even if the apps might only care about the lastet information,
> > all outdated oneway transactions are still accumulated there until the
> > frozen process is thawed later. For this kind of situations, there's
> > no existing method to skip those outdated transactions and deliver the
> > latest one only.
> >
> > This patch introduces a new transaction flag TF_UPDATE_TXN. To use it,
> > use apps can set this new flag along with TF_ONE_WAY. When such an
> > oneway transaction is to be queued into the async_todo list of a frozen
> > process, binder driver will check if any previous pending transactions
> > can be superseded by comparing their code, flags and target node. If
> > such an outdated pending transaction is found, the latest transaction
> > will supersede that outdated one. This effectively prevents the async
> > binder buffer running out and saves unnecessary binder read workloads.
> >
> > Signed-off-by: Li Li <dualli@google.com>
> > ---
> >  drivers/android/binder.c            | 90 ++++++++++++++++++++++++++++-
> >  drivers/android/binder_trace.h      |  4 ++
> >  include/uapi/linux/android/binder.h |  1 +
>
> How was this tested?

Old kernel: without this TF_UPDATE_TXN patch
New kernel: with this TF_UPDATE_TXN patch
Old apps: without setting TF_UPDATE_TXN
New apps: if (flags & TF_ONE_WAY) flags |= TF_UPDATE_TXN;

1. Compatibility: New kernel + Old apps, to verify the original
behavior doesn't change;

2. Compatibility: Old kernel + New apps, to verify the original
behavior doesn't change;

3. Unit test: New kernel + New apps, to verify the outdated oneway
binder transaction is actually superseded by the latest one (by
enabling BINDER_DEBUG logs);

4. Stress test: New kernel + New apps sending oneway binder
transactions repeatedly, to verify the size of the available async
binder buffer over time, and if the transactions fail as before
(due to async buffer running out).

>
> >  3 files changed, 92 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index f3b639e89dd8..153486a32d69 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -2594,6 +2594,60 @@ static int binder_fixup_parent(struct list_head *pf_head,
> >       return binder_add_fixup(pf_head, buffer_offset, bp->buffer, 0);
> >  }
> >
> > +/**
> > + * binder_can_update_transaction() - Can a txn be superseded by an updated one?
> > + * @t1: the pending async txn in the frozen process
> > + * @t2: the new async txn to supersede the outdated pending one
> > + *
> > + * Return:  true if t2 can supersede t1
> > + *          false if t2 can not supersede t1
> > + */
> > +static bool binder_can_update_transaction(struct binder_transaction *t1,
> > +                                       struct binder_transaction *t2)
> > +{
> > +     if ((t1->flags & t2->flags & (TF_ONE_WAY | TF_UPDATE_TXN))
> > +                     != (TF_ONE_WAY | TF_UPDATE_TXN)
> > +                     || t1->to_proc == NULL || t2->to_proc == NULL)
> > +             return false;
> > +     if (t1->to_proc->tsk == t2->to_proc->tsk && t1->code == t2->code
> > +                     && t1->flags == t2->flags
> > +                     && t1->buffer->pid == t2->buffer->pid
> > +                     && t1->buffer->target_node->ptr
> > +                     == t2->buffer->target_node->ptr
> > +                     && t1->buffer->target_node->cookie
> > +                     == t2->buffer->target_node->cookie)
>
> Did checkpatch pass this?  Please always use --strict and fix up all the
> issues that it reports as this is not a normal kernel coding style,
> sorry.

It passed checkpatch but --strict does suggest I adjust the logical ops.
I'll update it in v2. Thanks for reminding me about using --strict.

Thanks,
Li
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

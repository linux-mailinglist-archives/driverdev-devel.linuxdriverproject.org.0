Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B46369CE1
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 22:36:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A532986DB3;
	Mon, 15 Jul 2019 20:36:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5JRrzjxw+xxs; Mon, 15 Jul 2019 20:36:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99A90868B0;
	Mon, 15 Jul 2019 20:36:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 955A21BF29C
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 20:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 91D2B8695F
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 20:36:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wshItL8sM-aD for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 20:36:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A3C29868B0
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 20:36:35 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id v24so17645931ljg.13
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 13:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w2Dnxb2ns6xhEs9ebe85/XBNTscvREDwZrH85VfP+g0=;
 b=VlBPvlGu2PgZxgv6ta6aut6KF0nQGbi1u6jjNATnVkQJ1iCQIpVTClPnc1UQhiJ2Ph
 MTqXGZiONw8zUZ4ZzXj9qIsIwAdJ5QRdm1vU/6p9WUyRfgBSZQZ4PqJR+XTcs9f3W0we
 j8aSLMeRF1CuhnEgciNBw5S+9nu71pLJXWgkAny7Kh/ku987MUW3ypEGR04IsTWhG2Wx
 a4WRjgMfbqxuNU4ZdeKXF4hidIW5zO72icBLjclFBAawGPKcB6M8uR7ZgskMOJDZjK2Z
 Vafbdx3moO3D5Q6c84CDj4hFpXhL1Xe3cDLsNQEYM9fZ82YwYL5m5BjhoTY/Sxp6S1L2
 d2Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w2Dnxb2ns6xhEs9ebe85/XBNTscvREDwZrH85VfP+g0=;
 b=mo2m1ccDneP5UWs6lYA0QUv/8L0NMKYQSJk8EnFOAlj2kU4+nU+c8qerqzjytKjugg
 3K6glWu1Vy7VZPy/jr817FAC9G8Mh2BAUvodcQuz3zCPVK4xndXAGP+fj5pusBky9tBB
 ubn06OhEexw8dpluglSvPL9nglU7VGULKsiAD+JX8zdSnVymsHJX/Q9KO0U1Vom599dU
 nVGJnE31qMhESGovZwJ9jYwSJdGTuX6ZrNbhEI7MejSfHIoueX+Z9ahAumIvSBP8MT2D
 6GQ4MbIemmSXKZi2FuGRwP/xLiO5ra+9Gm9rBRWi8dYbMjw0j4StDwP9OWZ5n74OBliP
 BLhA==
X-Gm-Message-State: APjAAAVfTlWwBAigsz+H/CBiB0dpFqj8IcL9fjHm1w6ImqwtBAKmTwiQ
 WRbjlJ8r8JZWYTasFe0L/FnqOj/J+qgZI4/aSsMRmQ==
X-Google-Smtp-Source: APXvYqwREjbA8VK0ftOGlkm4hSR26WLhAC+bf/M1wq9gN8iee0N6YxAzGgqTOUVxwTDkOVRm/XCm3sPwj0OkDsxALOo=
X-Received: by 2002:a2e:98d7:: with SMTP id s23mr14805474ljj.179.1563222993638; 
 Mon, 15 Jul 2019 13:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190715191804.112933-1-hridya@google.com>
In-Reply-To: <20190715191804.112933-1-hridya@google.com>
From: Todd Kjos <tkjos@google.com>
Date: Mon, 15 Jul 2019 13:36:22 -0700
Message-ID: <CAHRSSEwUJvO-iG6D-w8RUCi9S+iBRrX9pN3oJ=SbcHLHd0b74A@mail.gmail.com>
Subject: Re: [PATCH] binder: prevent transactions to context manager from its
 own process.
To: Hridya Valsaraju <hridya@google.com>
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
 Android Kernel Team <kernel-team@android.com>, Todd Kjos <tkjos@android.com>,
 syzbot <syzbot+8b3c354d33c4ac78bfad@syzkaller.appspotmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 15, 2019 at 12:18 PM Hridya Valsaraju <hridya@google.com> wrote:
>
> Currently, a transaction to context manager from its own process
> is prevented by checking if its binder_proc struct is the same as
> that of the sender. However, this would not catch cases where the
> process opens the binder device again and uses the new fd to send
> a transaction to the context manager.
>
> Reported-by: syzbot+8b3c354d33c4ac78bfad@syzkaller.appspotmail.com
> Signed-off-by: Hridya Valsaraju <hridya@google.com>

Acked-by: Todd Kjos <tkjos@google.com>

> ---
>  drivers/android/binder.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index e4d25ebec5be..89b9cedae088 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -3138,7 +3138,7 @@ static void binder_transaction(struct binder_proc *proc,
>                         else
>                                 return_error = BR_DEAD_REPLY;
>                         mutex_unlock(&context->context_mgr_node_lock);
> -                       if (target_node && target_proc == proc) {
> +                       if (target_node && target_proc->pid == proc->pid) {
>                                 binder_user_error("%d:%d got transaction to context manager from process owning it\n",
>                                                   proc->pid, thread->pid);
>                                 return_error = BR_FAILED_REPLY;
> --
> 2.22.0.510.g264f2c817a-goog
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

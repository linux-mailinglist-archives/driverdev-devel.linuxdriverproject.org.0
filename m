Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C292E008D
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Dec 2020 19:58:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7AECE86C74;
	Mon, 21 Dec 2020 18:58:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uzIIwriW9wHC; Mon, 21 Dec 2020 18:58:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D89686C5D;
	Mon, 21 Dec 2020 18:58:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1FB51BF3E0
 for <devel@linuxdriverproject.org>; Mon, 21 Dec 2020 18:58:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ABD2D864CD
 for <devel@linuxdriverproject.org>; Mon, 21 Dec 2020 18:58:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ValEsZ6gsgC for <devel@linuxdriverproject.org>;
 Mon, 21 Dec 2020 18:58:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1447D864C3
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 18:58:11 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id l11so26247743lfg.0
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 10:58:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G/pMFitTeMS+SZfLhILcW8lAedkFnNH/feyJuKcA9ek=;
 b=g9GyuadCYSxVzn4tADWDBbWTq3TfRw2c2Ofi3qE5PVtEAKYFtMDTyhnfV/7MUWmLmv
 P34u2MAbS5Z1mdsC/wXjzLtAvEWmvHzmuqowTwqds9XHAYuZHz9WFpM6qIT5d/FkCfMJ
 hqmblE3/00jmRCzd5pNHQI5JcElWJds/D1b89cqQCM8+9Nl69Ia0qnvDida55uNQq4Eb
 cIlYJ38qa12sH3k/JJS+jbf3tnM+u7y2u9AK+0UnbVclhOhw4BRRyifnpg9SZx1G72XS
 pV1orEjGjG1FHKvls16Ry90CXz5BJKUgZMY/FrDbiSAZ94U0L9XyQvtqUuBWgpUzLuIc
 Vj3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G/pMFitTeMS+SZfLhILcW8lAedkFnNH/feyJuKcA9ek=;
 b=Hu4g8SL4l3m5fHDi7LXdpTcDyUu4TBg0p0L8CR/hfw76Wq7bpbCV7SNNb1qeus8SCX
 yNivMY1lMKHkKwF0oOQuBqxJkOhoPjCyGcL5Hi83srjl2qLIIxM2nAA+/GfxKpUO3lWu
 ywHjvWfrvGtu1vg8Y+S1PC7GZKwDreuuOiSpcmsN8r2zetwqGmj+Z952WymkGPRJzWOC
 pigyg7YOftMtuMcRAGn7uIchOfAznsitiPB5mmsPiquwg09h9yHy6kawtl5YrKkQYbF4
 4d0YpFh0k29BNjmDQ4oxjtNMKSEgfBRkM3O4MrRb5ecZG+ax6BG4T7N4Z1+c+JviT+mL
 flYg==
X-Gm-Message-State: AOAM530meZVaxNBPwlA6g6mEfN1XiL+UPUBniwmXOTOiNw0Hke88HnHy
 9LvWGM6hwZ8wJ7tzjILC81T9FDujIPuPLxpZ9jDT+w==
X-Google-Smtp-Source: ABdhPJyxrKg97zBWXTkyrsWFhF3VCzkHd45rp5oHml2UwhRkwsders8MGcLgCppQHKJbB9yyPqE+I1QvMFPVbJt+5wU=
X-Received: by 2002:a2e:8059:: with SMTP id p25mr8051416ljg.155.1608577088932; 
 Mon, 21 Dec 2020 10:58:08 -0800 (PST)
MIME-Version: 1.0
References: <1608277668-3740-1-git-send-email-huangzhaoyang@gmail.com>
In-Reply-To: <1608277668-3740-1-git-send-email-huangzhaoyang@gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Mon, 21 Dec 2020 10:57:57 -0800
Message-ID: <CAHRSSEwGHqQHRzyBUAyqVZk4azr8aeJ_Hgw=_XzaSkfTiVEBcg@mail.gmail.com>
Subject: Re: [PATCH] driver: staging: count ashmem_range into SLAB_RECLAIMBLE
To: Huangzhaoyang <huangzhaoyang@gmail.com>
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
 Todd Kjos <tkjos@android.com>, Zhaoyang Huang <zhaoyang.huang@unisoc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Suren Baghdasaryan <surenb@google.com>,
 Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

+Hridya Valsaraju +Suren Baghdasaryan


On Thu, Dec 17, 2020 at 11:48 PM Huangzhaoyang <huangzhaoyang@gmail.com> wrote:
>
> From: Zhaoyang Huang <zhaoyang.huang@unisoc.com>
>
> Add SLAB_RECLAIM_ACCOUNT to ashmem_range cache since it has registered
> shrinker, which make memAvailable more presiced.
>
> Signed-off-by: Zhaoyang Huang <zhaoyang.huang@unisoc.com>

Acked-by: Todd Kjos <tkjos@google.com>

> ---
>  drivers/staging/android/ashmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index 74d497d..b79301f 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -893,7 +893,7 @@ static int __init ashmem_init(void)
>
>         ashmem_range_cachep = kmem_cache_create("ashmem_range_cache",
>                                                 sizeof(struct ashmem_range),
> -                                               0, 0, NULL);
> +                                               0, SLAB_RECLAIM_ACCOUNT, NULL);
>         if (!ashmem_range_cachep) {
>                 pr_err("failed to create slab cache\n");
>                 goto out_free1;
> --
> 1.9.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

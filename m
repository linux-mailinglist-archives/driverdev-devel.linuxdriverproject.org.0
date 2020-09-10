Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A42126537A
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Sep 2020 23:36:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 476AE877BB;
	Thu, 10 Sep 2020 21:36:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Per3BtCiYS91; Thu, 10 Sep 2020 21:36:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B705B87782;
	Thu, 10 Sep 2020 21:36:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B1CC01BF370
 for <devel@linuxdriverproject.org>; Thu, 10 Sep 2020 21:35:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ADB3F87782
 for <devel@linuxdriverproject.org>; Thu, 10 Sep 2020 21:35:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MiknRmHUkJiT for <devel@linuxdriverproject.org>;
 Thu, 10 Sep 2020 21:35:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C57AC8771C
 for <devel@driverdev.osuosl.org>; Thu, 10 Sep 2020 21:35:55 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id r7so10848911ejs.11
 for <devel@driverdev.osuosl.org>; Thu, 10 Sep 2020 14:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VdtUto+8UVa+utOykTSZtVbT+HAuZQ1RHs3Ji6ziDM4=;
 b=J6v0x4H4AlS7GM1DTSncQeQVHo5LjwGEVBL75InjolvlYUGtT6xNx3thTQr6DuaMag
 hvMHqqsGaDS+Wgewib+ZgUzn1JVPSEgcvR/udk0buWBUATjUrNO3lT6LFPlqY38aJlSI
 5mSssQKop+Zk01z+f+9O8RCG38FSgXlXy7vODJlwioZoxe353iaVptkoHs2fupw7krbX
 rDgV71uRspd5Gl6rsEfYHYC12ilu7s96YIjrRANdkgEPoPYhC6sBd+/I0I897IpolfWm
 pJPEm46EuUvdtcWzKs1Ql1EMLXtB7jpXROwgWbMQW5jg8OBkJY6aq3HErBL8wGGcUArY
 HWKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VdtUto+8UVa+utOykTSZtVbT+HAuZQ1RHs3Ji6ziDM4=;
 b=mn/8DErGPMck7xqYkjNqa9ebnyyY8K2c3tqew/zB3AHYUqTL5qA/cJJgsgYDdO4z3b
 X45STIatSrxEZPW2qGmkc3TSbvtbC2roIifaUQKSylQcGGv1mYGkfVbqLVnF0SAZY/Se
 uykTqhkHmWdu+Ns13M4Z3qEQE4RF1mZHovnnJGfbcD2QuAYa462e+gL1G90MQhd6oswB
 yqHOBYpyeZvCmhc5QETVildmu8PYcH8tdc94cq/57u0j8XHTZh/YQNCUE5ECmOsurWAe
 u3pgI+j9LtCU8c6dQpzxgiAAleiZbyMpnB9bk9skLigSLbehsSKWq/SLrvPb2BmKgq89
 XpEg==
X-Gm-Message-State: AOAM532Nf+cmYrEpX4mHj/YEFpTk7xRanZ9nADNycYe7UOsi8c/OX1mM
 /XLCsOxVgE95MeX1+xNR5Pqt17SKx3pu/Ak3iLDsnA==
X-Google-Smtp-Source: ABdhPJy1Ak3QJSIu8NxHxo3J0ITswUZlpAfKZRfg4oOneT5cmIRFzUVld6KFQE599iv5QEcUkm3ey9iJMOG4Q5PIaIY=
X-Received: by 2002:a17:906:b156:: with SMTP id
 bt22mr10802676ejb.481.1599773754039; 
 Thu, 10 Sep 2020 14:35:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200910151221.751464-1-colin.king@canonical.com>
In-Reply-To: <20200910151221.751464-1-colin.king@canonical.com>
From: Todd Kjos <tkjos@google.com>
Date: Thu, 10 Sep 2020 14:35:41 -0700
Message-ID: <CAHRSSEzAtyDpR6xRVXyaDzDyBV3CvyiezSSK4hGU9BdbvJYiHQ@mail.gmail.com>
Subject: Re: [PATCH][next] binder: remove redundant assignment to pointer n
To: Colin King <colin.king@canonical.com>
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
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Suren Baghdasaryan <surenb@google.com>, Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 10, 2020 at 8:12 AM Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> The pointer n is being initialized with a value that is
> never read and it is being updated later with a new value. The
> initialization is redundant and can be removed.
>
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Acked-by: Todd Kjos <tkjos@google.com>

> ---
>  drivers/android/binder_alloc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
> index 910c53ba2c91..2f846b7ae8b8 100644
> --- a/drivers/android/binder_alloc.c
> +++ b/drivers/android/binder_alloc.c
> @@ -347,7 +347,7 @@ static void debug_low_async_space_locked(struct binder_alloc *alloc, int pid)
>          * and at some point we'll catch them in the act. This is more efficient
>          * than keeping a map per pid.
>          */
> -       struct rb_node *n = alloc->free_buffers.rb_node;
> +       struct rb_node *n;
>         struct binder_buffer *buffer;
>         size_t total_alloc_size = 0;
>         size_t num_buffers = 0;
> --
> 2.27.0
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

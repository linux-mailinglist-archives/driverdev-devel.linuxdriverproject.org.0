Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EA429A698
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 09:30:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1CB8120427;
	Tue, 27 Oct 2020 08:30:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MN-gnDe7iLsN; Tue, 27 Oct 2020 08:30:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0ACE72040E;
	Tue, 27 Oct 2020 08:30:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E0C4A1BF375
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 08:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DD6A38653D
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 08:30:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rayAuXMK8EIh for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 08:30:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F0A5A857CB
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 08:30:11 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id i2so779730ljg.4
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 01:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l5vHUMw8A8M7qfwBopSTv1orlvlQbJj8cLEI0IAH/u0=;
 b=YZ4l6JRTO8dzTNgcFr/Ujqv8nwNe224s8GySMJuxcMAWgGk0bhk402yIQxNec5lNlv
 qpUO4q+8bcMKvzjPXXDWePV7f4nsaEHbOMpHYo0aLmRPcV2dHoMLd3NR6UOTC4Od7SV5
 y1/z5M/OCt3/k6K03BB1bi45ro2DMsSGtpzf+6kQCzkxg2XfNCv2p76hsa7By2zd1Rjp
 3uD6x9fSPg5o+gue1JQ5GierxqR+7ISd1XWRkhS6k1bxS98Rl9qLziWVskVAMg1WcQiG
 XpVaCgBJPxOMvbQ3amckeS5blkiNKAkuAo4DvK0a8+m5JjoPGOvdmH6/uwOhWN3t2eN2
 bXiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l5vHUMw8A8M7qfwBopSTv1orlvlQbJj8cLEI0IAH/u0=;
 b=UGXhNKM8dOFOccwLPP7qUQVbUCqxIHC/esUFImZpjAiTVI7CJ6a2uNkGWADDun1JTp
 AEXbJc/C7WdDDoF76EbPJinPd5v3ebJHbr6tE1OV9Hqps8qQXneDm6oPbvrx9pTN5bBt
 GlFPC6TOf3l70HfWiuowsQEHa/em1eI9NB0xjKT9nc+QvDMYgTWy/7+gnOtR+wkujlCZ
 5APb28WIQfB6ysV+5uI4Jsz4ML2DJ0Wfw0ptGH5ylcsxemi5o5NZYsEioIOpgNgZk6UT
 tlACp71BnLpG2UMPD8Av/320F6963f8THI0jCohVFHgQp810Ju9+KKkhGuso0W8S8GlK
 OQhw==
X-Gm-Message-State: AOAM530vi6Kztv9ORdlKKDyqsXFjs6tfg2nSPC7L/+kPtY9FIpXgF4IO
 i2eHjabEWzH2naOdr0PP4sOPLkJSUkfdvBUQ5nOlXA==
X-Google-Smtp-Source: ABdhPJwOe+N0lll0Y+zXLUe0c+f8P4vq4Q8jgStMNulfbFcVKWnjF+jeaJ3xCo3H20nDQdpG0HtkEXSEUBkQI1cKU5Y=
X-Received: by 2002:a2e:7217:: with SMTP id n23mr595838ljc.43.1603787409979;
 Tue, 27 Oct 2020 01:30:09 -0700 (PDT)
MIME-Version: 1.0
References: <20201026110314.135481-1-zhangqilong3@huawei.com>
In-Reply-To: <20201026110314.135481-1-zhangqilong3@huawei.com>
From: Martijn Coenen <maco@android.com>
Date: Tue, 27 Oct 2020 09:29:59 +0100
Message-ID: <CAB0TPYFDjX+CPTA1bn_MfE5j+TD_znUJf0OTEt9-tn84L5LUQw@mail.gmail.com>
Subject: Re: [PATCH -next] binder: change error code from postive to negative
 in binder_transaction
To: Zhang Qilong <zhangqilong3@huawei.com>
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
 Todd Kjos <tkjos@android.com>, Greg KH <gregkh@linuxfoundation.org>,
 Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks!

On Mon, Oct 26, 2020 at 11:52 AM Zhang Qilong <zhangqilong3@huawei.com> wrote:
>
> Depending on the context, the error return value
> here (extra_buffers_size < added_size) should be
> negative.
>
> Signed-off-by: Zhang Qilong <zhangqilong3@huawei.com>
Acked-by: Martijn Coenen <maco@android.com>

> ---
>  drivers/android/binder.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index b5117576792b..8bbfb9124fa2 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -3103,7 +3103,7 @@ static void binder_transaction(struct binder_proc *proc,
>                 if (extra_buffers_size < added_size) {
>                         /* integer overflow of extra_buffers_size */
>                         return_error = BR_FAILED_REPLY;
> -                       return_error_param = EINVAL;
> +                       return_error_param = -EINVAL;
>                         return_error_line = __LINE__;
>                         goto err_bad_extra_size;
>                 }
> --
> 2.17.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

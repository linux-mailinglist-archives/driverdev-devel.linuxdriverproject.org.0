Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6487547B36C
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Dec 2021 20:06:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D28F060AF3;
	Mon, 20 Dec 2021 19:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kl33ixkbA26s; Mon, 20 Dec 2021 19:06:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5B2B60AF4;
	Mon, 20 Dec 2021 19:06:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E0FAC1BF315
 for <devel@linuxdriverproject.org>; Mon, 20 Dec 2021 19:06:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0A0D81311
 for <devel@linuxdriverproject.org>; Mon, 20 Dec 2021 19:06:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ersfEL46S8Vm for <devel@linuxdriverproject.org>;
 Mon, 20 Dec 2021 19:06:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D22A812E3
 for <devel@driverdev.osuosl.org>; Mon, 20 Dec 2021 19:06:23 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id cf39so23868541lfb.8
 for <devel@driverdev.osuosl.org>; Mon, 20 Dec 2021 11:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6ih+OZifVnNfA/pSv3qRAPIHOXmc5ub5T4okFRSsryU=;
 b=a1+ZPRgM0N04BQMXXDijj417WU8sL4jlUQ04ppDhgKjXom6+7Z4rwLXR6QX+tZ51RQ
 DuaNhJ/Y5vmawfKm92tiIc7T5vIb3EuZ4KI9/jQdE9ghrS3ulZ6F57QAgDyDAhiEkkOE
 s1jlUQF4u6FOMjWznVModYLHXbNyEaUD2hLX6Tp1d+Mgea6Eo340ovYW/g05KJ0FoZDa
 eT+wTa3vfcD8xA3Kt8B5Apfar7SiuYKPXZQgid9kitBfA+jhy5kfWu8ZsBb5/m6qy6JX
 jyeYrPVWHPk9HBw5BOnK/kThTrvF6xbtJBD5At+ZGvK037oe0gv7maiEF/pgjbyUn+or
 2iPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6ih+OZifVnNfA/pSv3qRAPIHOXmc5ub5T4okFRSsryU=;
 b=Vc+YFhjs+pj4IDpff7FeK3ih0vCckEWUqCFSmc1UVS63u6ZCQfgCAXpNIt9debmCI5
 MOPO1RIi1VMn/ngdVifZfZ8mDluo81pYrfhiEwWS701/mERlOnZJ8WG3Q2xCPt+htBxd
 IrScaEgX7jNZ6yBeA3wyX51zc9maHTt3DLEWT6k3XEsg7aGxQXEP7vQYMKKh7lYL98E7
 zE4hPPCd2BXB9EE4CQcaQ9HAOGNmE1vdt2gO4/dMJg5ll0tj3k9kW9YON+LtuwYkF3H+
 4yLJAEEdYbHRkhQ+uzlfhG7XQhT9tElFXxb8ZaqaGqnZFAdeWMFJWfAgcphbt6GVcpO5
 gvxA==
X-Gm-Message-State: AOAM532mFPQEqPApyq6wNI9xkmp6RgspeptQRsyTqF+fxrirHScueUFC
 mMB2HcA66iXHrcCYYiqgmaKR34pGLD6H1sih2lOLlA==
X-Google-Smtp-Source: ABdhPJxt/GrhGIBD3Rsq6dAv0bDvoKbp5GHKXPNxZ7Wv38eMaBgjqPj0v5gqgh0m8NKzYlAAyqnDqY/TB6zUFXJI2Bk=
X-Received: by 2002:a05:6512:3047:: with SMTP id
 b7mr10551009lfb.424.1640027181280; 
 Mon, 20 Dec 2021 11:06:21 -0800 (PST)
MIME-Version: 1.0
References: <20211220190150.2107077-1-tkjos@google.com>
In-Reply-To: <20211220190150.2107077-1-tkjos@google.com>
From: Todd Kjos <tkjos@google.com>
Date: Mon, 20 Dec 2021 11:06:09 -0800
Message-ID: <CAHRSSExTHHOdqEnRF0g435BrO5L-X6M3pxPg3OmLz8xUWDuNKA@mail.gmail.com>
Subject: Re: [PATCH] binder: fix async_free_space accounting for empty parcels
To: tkjos@google.com, gregkh@linuxfoundation.org, christian@brauner.io, 
 arve@android.com, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
 maco@google.com
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
Cc: joel@joelfernandes.org, kernel-team@android.com,
 stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 20, 2021 at 11:02 AM Todd Kjos <tkjos@google.com> wrote:
>
> In 4.13, commit 74310e06be4d ("android: binder: Move buffer out of area shared with user space")
> fixed a kernel structure visibility issue. As part of that patch,
> sizeof(void *) was used as the buffer size for 0-length data payloads so
> the driver could detect abusive clients sending 0-length asynchronous
> transactions to a server by enforcing limits on async_free_size.
>
> Unfortunately, on the "free" side, the accounting of async_free_space
> did not add the sizeof(void *) back. The result was that up to 8-bytes of
> async_free_space were leaked on every async transaction of 8-bytes or
> less.  These small transactions are uncommon, so this accounting issue
> has gone undetected for several years.
>
> The fix is to use "buffer_size" (the allocated buffer size) instead of
> "size" (the logical buffer size) when updating the async_free_space
> during the free operation. These are the same except for this
> corner case of asynchronous transactions with payloads < 8 bytes.
>
> Fixes: 74310e06be4d ("android: binder: Move buffer out of area shared with user space")
> Signed-off-by: Todd Kjos <tkjos@google.com>

I forgot to CC stable. This applies to all stable branches back to 4.14.
Cc: stable@vger.kernel.org # 4.14+

> ---
>  drivers/android/binder_alloc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
> index 340515f54498..47bc74a8c7b6 100644
> --- a/drivers/android/binder_alloc.c
> +++ b/drivers/android/binder_alloc.c
> @@ -671,7 +671,7 @@ static void binder_free_buf_locked(struct binder_alloc *alloc,
>         BUG_ON(buffer->user_data > alloc->buffer + alloc->buffer_size);
>
>         if (buffer->async_transaction) {
> -               alloc->free_async_space += size + sizeof(struct binder_buffer);
> +               alloc->free_async_space += buffer_size + sizeof(struct binder_buffer);
>
>                 binder_alloc_debug(BINDER_DEBUG_BUFFER_ALLOC_ASYNC,
>                              "%d: binder_free_buf size %zd async free %zd\n",
> --
> 2.34.1.307.g9b7440fafd-goog
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

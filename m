Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D310947D3AE
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Dec 2021 15:31:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5AA6140ABA;
	Wed, 22 Dec 2021 14:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RvSPfnsTsGcY; Wed, 22 Dec 2021 14:31:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A5D54037E;
	Wed, 22 Dec 2021 14:31:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 638ED1BF9AF
 for <devel@linuxdriverproject.org>; Wed, 22 Dec 2021 14:31:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 526A1410E3
 for <devel@linuxdriverproject.org>; Wed, 22 Dec 2021 14:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=android.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zqpRSHIzQqWf for <devel@linuxdriverproject.org>;
 Wed, 22 Dec 2021 14:31:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DD6A409BC
 for <devel@driverdev.osuosl.org>; Wed, 22 Dec 2021 14:31:07 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 x1-20020a17090a2b0100b001b103e48cfaso4267425pjc.0
 for <devel@driverdev.osuosl.org>; Wed, 22 Dec 2021 06:31:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tJ25Nfg2fMSokb+xxWVDgEZFconNFznTg4MsQbjfczw=;
 b=SjaIZ1BXa+otteg0t4IPMfXhUe5JveNmXofyGtHCo78TNoQSscL3awXIQCtr+bfftC
 IjhfMTJOq/3mw6GhIBfyuyrZjjqai4qCIZWsjO4Zukoyhcwi2FC9HY865F1jjPpEMotY
 CgWTKO5QZG+LlY0Ay/Dl7qhP7JC7OVh8Xl7H6VTWqLalKYwcR388PkXfOBdXq5Kfrk/F
 GP857m5bIoNciLZ7NYhwbV3fuCVQ9hPE00JirO18FNzIIhiaOgWt1ppzBnEf3b8/VOjt
 7wcrTee5DFbWueIP6VlWCTRDcl4W5jGNG/I6MZCzhARbyRy35bZP9z1Xyd9Ee03uiok/
 N3NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tJ25Nfg2fMSokb+xxWVDgEZFconNFznTg4MsQbjfczw=;
 b=oXQymq5D5kM3V43zcCb9+vf39F/XkxlO7SPmflDIg09BLQNPKsp34L62fZgDC+IHsn
 TCa07rksTL9WsjOyWm0Gw9dqJwifM2ZRQbn0A2B/vvDroRBWNoN24KOedISa0bGX7pA3
 pNMm3/krnmVcWHLFiUd/Y4XvdxPNi4DEwUcKBve5BTpwdjRSIpc3YMR3YLOliEfqIINi
 H9wmhmBLWdef5TkBnBsWESKM5bXjISww24jNJ59+YfmzxyMlyy3aUrdp98CBd/2Kcl8M
 SztY/9fHE7oZ/oHapt13X/63ibK43TOiWeOSsblAiBtboFVUzpudDCbiXzG+ukbl1zmp
 ZWCg==
X-Gm-Message-State: AOAM5337eo8nj1ntLXbMSnJfXwSELhhn6yR0hV44pMgTbqmcSdWmvIu6
 U6T/AbvGYosIIyFbmqVEpnUWURyuf//VWBfDDmR7Dl0sc+4=
X-Google-Smtp-Source: ABdhPJw8gD7KnZbnNTVxB7uebJVM/vF/RvVWp1TUVNYyxEujbMljp0fcz/N0KBVSjdgR+sWcFRuA2PdJQh5j849OzUw=
X-Received: by 2002:a17:90b:1c81:: with SMTP id
 oo1mr1647873pjb.137.1640183467482; 
 Wed, 22 Dec 2021 06:31:07 -0800 (PST)
MIME-Version: 1.0
References: <20211220190150.2107077-1-tkjos@google.com>
In-Reply-To: <20211220190150.2107077-1-tkjos@google.com>
From: Martijn Coenen <maco@android.com>
Date: Wed, 22 Dec 2021 15:30:56 +0100
Message-ID: <CAB0TPYF4zb3R+iv7hLdgmddtV98zu507WgJyeiN77RV9aFeiaA@mail.gmail.com>
Subject: Re: [PATCH] binder: fix async_free_space accounting for empty parcels
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, arve@android.com, maco@google.com,
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LGTM,

On Mon, Dec 20, 2021 at 8:02 PM 'Todd Kjos' via kernel-team
<kernel-team@android.com> wrote:
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
Reviewed-by: Martijn Coenen <maco@android.com>

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
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

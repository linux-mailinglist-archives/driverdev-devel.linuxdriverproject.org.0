Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E36D24826E
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 12:00:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 84B01855CC;
	Tue, 18 Aug 2020 10:00:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8z_yx4jwc_8e; Tue, 18 Aug 2020 10:00:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2CFCC85402;
	Tue, 18 Aug 2020 10:00:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BAB51BF4D5
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 10:00:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 415292039D
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 10:00:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PL-cxuM2pw7Z for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 10:00:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by silver.osuosl.org (Postfix) with ESMTPS id AEE042012D
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 10:00:29 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id v22so14768383edy.0
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 03:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Jwu2VD+cCiCX0WUsLj+yCZUiN9fhy3lfRtPqtj5masc=;
 b=OExS8D/C+A9LLjokpWJJmYc5KwR5lNXMcJXKkgbYpLrZXD7tTmMGWjmPESHF9H6AkF
 CqXdCWgPwBAy+ptVNM8/EOrqWoYhFltUs4kEfi+7u3V68c4Zwjs/sJXAJqbGjreCEBAi
 ymB4t5IvUcQUQ3NktHrVwyjHQXGBmyy9x73ZYmDliffJrB8NR7ihKTQZTAkd7Q++M2tF
 na8ju9uha+k+moqw0QLDq6PHFZoqg8pT72tMxRzbn34TecZCsEpZMwbQVxcJaV+d5gCj
 FIMSwLf8uOfBS30PzxBIEkDtn4Tw6JT/OWDmQyT9SpuzBMtGQJF9RChKc0MaN8gnVk0Y
 SNxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jwu2VD+cCiCX0WUsLj+yCZUiN9fhy3lfRtPqtj5masc=;
 b=cQElb+9wZJZ5Bh7sukNTjxuN93vqceOHEJ2txXIjhvGs7xJgkLC/ZPq+pKIDryi+xq
 byTrOJaMO7bhFyuNxeAEvAGsjRDIxfM5tFFSkxNVJ4GycR1pq/DUN2TXq1GwsOCnWYvl
 TJ7nRxaHLYwIN+mEJTsi3Q516WY3T+2P9eg3S959YmhfyyZhjrw7QXr0W7NXKlU5ZnIL
 Ic2YinZdHywY/PSAMl8ep7iFJ8Ac+x4sOWxpGnNAQqVgOZ5omvGe8mSBknlRiwAZrF+q
 /hxDVN7kSgxdRqtnkhYAyJ3OgUR5fxWSGA1acrmLCbHhHX0Ru57e2k0LOTwb63U8XCXg
 Jdpg==
X-Gm-Message-State: AOAM533QDjv2Yj7wY6/WwilDt1XnPS7hg0WzR6svctNeISmqj+MTmWv6
 xioXiAJWzT9TYYpnvn+/68zEK0j2ucJagpjeiRiR69WlcWM=
X-Google-Smtp-Source: ABdhPJzmlxxxhR8Goy1jdtbvO0kCPQc+jDt5LbQZqbxX58Aqu2H8UVzn93Y/xaZpjd+1toHHQ9q8GeDlgHpFVB96E80=
X-Received: by 2002:a05:6512:20c1:: with SMTP id
 u1mr9379808lfr.17.1597744511423; 
 Tue, 18 Aug 2020 02:55:11 -0700 (PDT)
MIME-Version: 1.0
References: <1597714444-3614-1-git-send-email-yanghui.def@gmail.com>
In-Reply-To: <1597714444-3614-1-git-send-email-yanghui.def@gmail.com>
From: Martijn Coenen <maco@android.com>
Date: Tue, 18 Aug 2020 11:55:00 +0200
Message-ID: <CAB0TPYF_VUzEbvY4yPKrV2L37ZvvNyegH5D6VEJtro_8TLEPZQ@mail.gmail.com>
Subject: Re: [PATCH] binder: Modify comments
To: hui yang <yanghui.def@gmail.com>
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
 Greg KH <gregkh@linuxfoundation.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Todd Kjos <tkjos@android.com>, surenb@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 18, 2020 at 3:34 AM hui yang <yanghui.def@gmail.com> wrote:
>
> From: YangHui <yanghui.def@gmail.com>
>
> The function name should is binder_alloc_new_buf()
>
Reviewed-by: Martijn Coenen <maco@android.com>

> Signed-off-by: YangHui <yanghui.def@gmail.com>
> ---
>  drivers/android/binder_alloc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
> index 6960969..8c98d12 100644
> --- a/drivers/android/binder_alloc.c
> +++ b/drivers/android/binder_alloc.c
> @@ -652,7 +652,7 @@ static void binder_free_buf_locked(struct binder_alloc *alloc,
>   * @alloc:     binder_alloc for this proc
>   * @buffer:    kernel pointer to buffer
>   *
> - * Free the buffer allocated via binder_alloc_new_buffer()
> + * Free the buffer allocated via binder_alloc_new_buf()
>   */
>  void binder_alloc_free_buf(struct binder_alloc *alloc,
>                             struct binder_buffer *buffer)
> --
> 2.7.4
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

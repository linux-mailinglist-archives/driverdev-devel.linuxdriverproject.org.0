Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C86123E522
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Aug 2020 02:28:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 964FC25304;
	Fri,  7 Aug 2020 00:28:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ylRr3G7oSYb9; Fri,  7 Aug 2020 00:28:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3089E2157D;
	Fri,  7 Aug 2020 00:27:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D763E1BF32C
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 00:27:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D3B57886A7
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 00:27:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UmEUfiCMeca6 for <devel@linuxdriverproject.org>;
 Fri,  7 Aug 2020 00:27:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B577B886A3
 for <devel@driverdev.osuosl.org>; Fri,  7 Aug 2020 00:27:54 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id g26so302328qka.3
 for <devel@driverdev.osuosl.org>; Thu, 06 Aug 2020 17:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DGA8+gwrB3sAonXBmChAGNY7ZvvzV2hTqZrY8zZK8EE=;
 b=Xso+VvmrMIUE21k+VszWrrK9Wx9Dkz6fhw6UZwNM31KX0l0YZsv4hPHNk6NsBhrO4/
 EhySBd8R4ixubMzTBx47NcLptPEQcc9nhOQRSp68KR5MF7H5V+wmK/wQWIIHDavV0fkZ
 SBKvHvdritZ9w4z/GVNAyhuj5yZkOHVWHB5YiuwjLvq9gihTrGRPhgrFnz6kLD7KFFmc
 hyuKGOnA8rf9hKzlwP+5JbQlcQvsg8aQEn+cF8l1n95oGqvimoPoe8kUzqyAJdVU/T6M
 VFIfkNNn2/SGiyNeFabIps/1SCSDV1oMpNeo24un+tlqQ9PIyRVW8Wu29+Ri2l+HBok/
 n9Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DGA8+gwrB3sAonXBmChAGNY7ZvvzV2hTqZrY8zZK8EE=;
 b=T8PWodQQ6dFs5uJheQXFINxwGhYqfQXCwkW3Pxvz06kacIW/C6LS7MnnMwhq0cmBZE
 XfY1iqSUdX5wI8a3yThvQtz/YklOQhqkg/nV+Y/nJuscjSoUCgjovPvU6UxSjE2wiBp3
 6Qy6zm3YhrsgCYffQAwLkeZtEK1c0NhTdkY2tzq2Q4f2Tg83QI/shOfBAMv0bQvd2ACn
 DfbVtnZMp8e2r+GXuDVPyhdcLuGxvGyzwlCuws86ucAU3CpT6yLuw4VhSJlftiy8nWWH
 +c3eEcVYOaTTdegMlnGGAmMrsQtpeOpE1tx5MngH6hfCqSd7rkiqqNxP8L7/45v6vTh1
 70uA==
X-Gm-Message-State: AOAM53210qRVcK7U3/6kMCkA5MDh1BtNrasWZFa/fVLQWcbp16yH7J36
 xzZWPTX1wv3yxCbCicgyoBac9LpIn/0KlDEVjQp8ww==
X-Google-Smtp-Source: ABdhPJxYSpi1BHzeBCHwCIqOzLWVTcTjGnDSiBqngNyrcb+IxPDN8WOHCv0iGeIsP7xXL3Opes7weirBZfL8IM+8VEk=
X-Received: by 2002:a37:a088:: with SMTP id
 j130mr11365723qke.147.1596760073565; 
 Thu, 06 Aug 2020 17:27:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200805112655.17696-1-colin.king@canonical.com>
In-Reply-To: <20200805112655.17696-1-colin.king@canonical.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Thu, 6 Aug 2020 17:27:17 -0700
Message-ID: <CA+wgaPPL_sdo+fkQa3pqNmTadg9X6mfJZy5nyR5YTt4L6pHWtg@mail.gmail.com>
Subject: Re: [PATCH] staging: ion: fix spelling mistake in function name
 "detatch" -> "detach"
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
 linaro-mm-sig@lists.linaro.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, Suren Baghdasaryan <surenb@google.com>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Laura Abbott <labbott@redhat.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 5, 2020 at 4:26 AM Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> There is a spelling mistake in the function name ion_dma_buf_detatch.
> Fix it by removing the extraneous t.
>
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---

Thanks Colin!
Acked-by: Hridya Valsaraju <hridya@google.com>

>  drivers/staging/android/ion/ion.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
> index 3c9f09506ffa..e1fe03ceb7f1 100644
> --- a/drivers/staging/android/ion/ion.c
> +++ b/drivers/staging/android/ion/ion.c
> @@ -205,8 +205,8 @@ static int ion_dma_buf_attach(struct dma_buf *dmabuf,
>         return 0;
>  }
>
> -static void ion_dma_buf_detatch(struct dma_buf *dmabuf,
> -                               struct dma_buf_attachment *attachment)
> +static void ion_dma_buf_detach(struct dma_buf *dmabuf,
> +                              struct dma_buf_attachment *attachment)
>  {
>         struct ion_dma_buf_attachment *a = attachment->priv;
>         struct ion_buffer *buffer = dmabuf->priv;
> @@ -331,7 +331,7 @@ static const struct dma_buf_ops dma_buf_ops = {
>         .mmap = ion_mmap,
>         .release = ion_dma_buf_release,
>         .attach = ion_dma_buf_attach,
> -       .detach = ion_dma_buf_detatch,
> +       .detach = ion_dma_buf_detach,
>         .begin_cpu_access = ion_dma_buf_begin_cpu_access,
>         .end_cpu_access = ion_dma_buf_end_cpu_access,
>  };
> --
> 2.27.0
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

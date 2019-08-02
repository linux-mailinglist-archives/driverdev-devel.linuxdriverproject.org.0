Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC177ECBC
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:36:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF2E1869A5;
	Fri,  2 Aug 2019 06:36:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t6NZylPXxVH8; Fri,  2 Aug 2019 06:36:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 32AA5868B5;
	Fri,  2 Aug 2019 06:36:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 23EB91BF27A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:36:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1D81785B3C
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:36:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W0cdBh3QiuaC for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:36:29 +0000 (UTC)
X-Greylist: delayed 00:07:10 by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6E396857BC
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:36:29 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id z3so8730392iog.0
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 23:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8J0CG6n/mGE9VY7Tzl2V8r1MEJfljCPCP1w3kMFb7gU=;
 b=RjyjBD2oGv8Yelvkiciev/lZ+Q3xXx8QFqdYzdY4aCHOlugQGM86oI6FqZDvirisZ5
 VJ+QLkBMLnRka6ltoYGD5wyPSjpGXQPHFctjuGwd1+UFurx0yvKt9ushEUj8EZV9ix2W
 01tKC6Gaz3MS8M+0E+YLTPk1gYgnaZnSfnfDmi+UFK25mv5gEzSDgABsBJUiG+nhSsUl
 RKT5eQ9kRkeBcJ7gT+NzJThlFQ8TbWheTrXZG+kEcBrFAA6KQockx50ATbHKRl86DAya
 RCLedopliZ67rTczSP3iIMKDggIEdiJgpUtX8J4w3apFv4UIzEajhXW7aw51MfImXOri
 CFCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8J0CG6n/mGE9VY7Tzl2V8r1MEJfljCPCP1w3kMFb7gU=;
 b=jnTo8+bsXDYUI4mQEpGSCbtwzHKtyG5qq/4FMPK0NS/QsOHo1RoPbc4bbVqVdHrU2o
 +LAj2dj7+M59ucSWpLd0JKpAR9MJ7NA5Zd8MqFIkcExZW9GswcsH5MHs1TFnZ/CczjEO
 DJQKnPrcxxzFecMawrI8KNCf2KcSxViNSox9jPmPwfeXh2x9Hs+VFEQS6i1cU+Mx1jjQ
 IgWDqcXeB76fvoHBu8kk7rCtpOEjIsEtW0H1icVWdlJ2Yxdg2v0Fg7ALetZ5zrwuonG+
 +7kgaPJhfZTaOnkxtiZ4csUz6s9f487MlQWGsgi3vrkjMrUMSmDFQkckLvWXD7TltRzf
 mMvQ==
X-Gm-Message-State: APjAAAWmpTFKSEOsML4zoA7si2qALe/cyWTgnFjoScQHsUIub9pQiI0C
 aI0Lqz8dlm3w0PL3Zxbdex35QhOHypxxJZoclN6EoA==
X-Google-Smtp-Source: APXvYqyCEEQjF5gUAqe0Jy7lkgRv7S109dxiMqY3y1rXR3KgTUxyI68+/GDAwhKmPjZXNLxgfhvOgGBjK0GGgCuPqfQ=
X-Received: by 2002:a6b:3b89:: with SMTP id i131mr71226796ioa.33.1564727358352; 
 Thu, 01 Aug 2019 23:29:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802022005.5117-17-jhubbard@nvidia.com>
In-Reply-To: <20190802022005.5117-17-jhubbard@nvidia.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Fri, 2 Aug 2019 08:29:07 +0200
Message-ID: <CAHUa44G++iiwU62jj7QH=V3sr4z26sf007xrwWLPw6AAeMLAEw@mail.gmail.com>
Subject: Re: [PATCH 16/34] drivers/tee: convert put_page() to put_user_page*()
To: john.hubbard@gmail.com
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 2, 2019 at 4:20 AM <john.hubbard@gmail.com> wrote:
>
> From: John Hubbard <jhubbard@nvidia.com>
>
> For pages that were retained via get_user_pages*(), release those pages
> via the new put_user_page*() routines, instead of via put_page() or
> release_pages().
>
> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
> ("mm: introduce put_user_page*(), placeholder versions").
>
> Cc: Jens Wiklander <jens.wiklander@linaro.org>
> Signed-off-by: John Hubbard <jhubbard@nvidia.com>
> ---
>  drivers/tee/tee_shm.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)

Acked-by: Jens Wiklander <jens.wiklander@linaro.org>

I suppose you're taking this via your own tree or such.

Thanks,
Jens

>
> diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
> index 2da026fd12c9..c967d0420b67 100644
> --- a/drivers/tee/tee_shm.c
> +++ b/drivers/tee/tee_shm.c
> @@ -31,16 +31,13 @@ static void tee_shm_release(struct tee_shm *shm)
>
>                 poolm->ops->free(poolm, shm);
>         } else if (shm->flags & TEE_SHM_REGISTER) {
> -               size_t n;
>                 int rc = teedev->desc->ops->shm_unregister(shm->ctx, shm);
>
>                 if (rc)
>                         dev_err(teedev->dev.parent,
>                                 "unregister shm %p failed: %d", shm, rc);
>
> -               for (n = 0; n < shm->num_pages; n++)
> -                       put_page(shm->pages[n]);
> -
> +               put_user_pages(shm->pages, shm->num_pages);
>                 kfree(shm->pages);
>         }
>
> @@ -313,16 +310,13 @@ struct tee_shm *tee_shm_register(struct tee_context *ctx, unsigned long addr,
>         return shm;
>  err:
>         if (shm) {
> -               size_t n;
> -
>                 if (shm->id >= 0) {
>                         mutex_lock(&teedev->mutex);
>                         idr_remove(&teedev->idr, shm->id);
>                         mutex_unlock(&teedev->mutex);
>                 }
>                 if (shm->pages) {
> -                       for (n = 0; n < shm->num_pages; n++)
> -                               put_page(shm->pages[n]);
> +                       put_user_pages(shm->pages, shm->num_pages);
>                         kfree(shm->pages);
>                 }
>         }
> --
> 2.22.0
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

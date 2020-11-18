Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 017A72B84F9
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Nov 2020 20:36:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1636786370;
	Wed, 18 Nov 2020 19:36:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YeJBuJwl+qJc; Wed, 18 Nov 2020 19:36:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91D4C85A1D;
	Wed, 18 Nov 2020 19:36:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7010E1BF285
 for <devel@linuxdriverproject.org>; Wed, 18 Nov 2020 19:36:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6C65D85A1D
 for <devel@linuxdriverproject.org>; Wed, 18 Nov 2020 19:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Y-RAfS1+uEv for <devel@linuxdriverproject.org>;
 Wed, 18 Nov 2020 19:36:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f193.google.com (mail-vk1-f193.google.com
 [209.85.221.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A899B8591B
 for <devel@driverdev.osuosl.org>; Wed, 18 Nov 2020 19:36:26 +0000 (UTC)
Received: by mail-vk1-f193.google.com with SMTP id o73so763140vka.5
 for <devel@driverdev.osuosl.org>; Wed, 18 Nov 2020 11:36:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Oycl9rXnrPavfA5bPND3v6cuTejfQRr5MJa/4Z/zAec=;
 b=qdLG7jhNUoxN8DlG6k27zxeTP/luVeWx57IAyLfJPv33lazYi8MjkP6FuAhYOfid/D
 4WVyEjCN6fSaPHTUe+jF7Lhor8R+6+IOkNjd+7nLoLs9mNaI+zjl0ecaeFpswUzhiogH
 ovcPUPWsYMrciYcXDBn2OeutfGJe2Cpp72iLFEqkFGtk5Lr9WQo+o85Mn4xYOLeVOj3v
 0SiMbKKPrbgQrfajxY1wMJPxvsWSFvciwodc/W0MvGBWyMtxbYqMhWsXaaq1qUoQs4ja
 hghNVv07P7nRu/WIZkZHSjZEH+bIpMtmAg5VssSfl9S250NgsuAFKeO0dcX/Eji5e3wi
 MGlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Oycl9rXnrPavfA5bPND3v6cuTejfQRr5MJa/4Z/zAec=;
 b=ChJQkjSIzCtjBJKg4aWqzFyN54GyS7FG2bCzqN9q7UCD091qgJ4Ck8CnXG5sSeuvEX
 Jh9feh0qwuXBocuTa42oSjTkfA9O+yY67n6RBSnX5Niyx394WaqNyh5F2cbQdhTIA3l8
 ZsBdhfT85sc7sjwHg1dz5jHrA64t+sKhtdvcqjggjJy02m/dM+ZPeV/vzlEkMlI6AZlM
 ODzIlvj4aBfS+zWWdLwJ2QhaauNW8XuPvpFdK+tFrJ9HhVvAe5xGTH7s7FXz4HRHOYih
 gmJS0qUtokKCmwR2BmManzpWh171aLdEwtg3V+VXKkCBJm3T0PWqfkuX9xRp2SDXxuj0
 70Hg==
X-Gm-Message-State: AOAM532h3Mn2+n6DkdtatfnofH6PuJ+D18MQuZkKFa50wPsoK02s6fGT
 oVKDuUBUSp+JXQerHKMCdTNaURp2pp3plz479Vc=
X-Google-Smtp-Source: ABdhPJxrhhmloucaf7V96PGI/m/7uAmESZdIb0lRcvIUTFDFBaSYYW8Dh8zApbOmcfkmyoxw3AlrWp6w6Oa61Bzz2BU=
X-Received: by 2002:a1f:3f52:: with SMTP id m79mr3183264vka.23.1605728185660; 
 Wed, 18 Nov 2020 11:36:25 -0800 (PST)
MIME-Version: 1.0
References: <1604455331-28031-1-git-send-email-jrdr.linux@gmail.com>
In-Reply-To: <1604455331-28031-1-git-send-email-jrdr.linux@gmail.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Thu, 19 Nov 2020 01:06:14 +0530
Message-ID: <CAFqt6zZ3HouweyeKGUbeF9ix+SXvBUrRB6ks3hozRofwtUaUtA@mail.gmail.com>
Subject: Re: [PATCH v2] media: atomisp: Fixed error handling path
To: mchehab@kernel.org, sakari.ailus@linux.intel.com, 
 Greg KH <gregkh@linuxfoundation.org>, gustavoars@kernel.org, 
 Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>,
 daniel.m.jordan@oracle.com, Michel Lespinasse <walken@google.com>
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
 John Hubbard <jhubbard@nvidia.com>, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 4, 2020 at 7:32 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
>
> Inside alloc_user_pages() based on flag value either pin_user_pages()
> or get_user_pages_fast() will be called. However, these API might fail.
>
> But free_user_pages() called in error handling path doesn't bother
> about return value and will try to unpin bo->pgnr pages, which is
> incorrect.
>
> Fix this by passing the page_nr to free_user_pages(). If page_nr > 0
> pages will be unpinned based on bo->mem_type. This will also take care
> of non error handling path.
>
> Fixes: 14a638ab96c5 ("media: atomisp: use pin_user_pages() for memory
> allocation")
> Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> Cc: John Hubbard <jhubbard@nvidia.com>
> Cc: Ira Weiny <ira.weiny@intel.com>
> Cc: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> v2:
>     Added review tag.

Any further comment ? If no, can we get this patch in queue for 5.11 ?
>
>  drivers/staging/media/atomisp/pci/hmm/hmm_bo.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
> index f13af23..0168f98 100644
> --- a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
> +++ b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
> @@ -857,16 +857,17 @@ static void free_private_pages(struct hmm_buffer_object *bo,
>         kfree(bo->page_obj);
>  }
>
> -static void free_user_pages(struct hmm_buffer_object *bo)
> +static void free_user_pages(struct hmm_buffer_object *bo,
> +                           unsigned int page_nr)
>  {
>         int i;
>
>         hmm_mem_stat.usr_size -= bo->pgnr;
>
>         if (bo->mem_type == HMM_BO_MEM_TYPE_PFN) {
> -               unpin_user_pages(bo->pages, bo->pgnr);
> +               unpin_user_pages(bo->pages, page_nr);
>         } else {
> -               for (i = 0; i < bo->pgnr; i++)
> +               for (i = 0; i < page_nr; i++)
>                         put_page(bo->pages[i]);
>         }
>         kfree(bo->pages);
> @@ -942,6 +943,8 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
>                 dev_err(atomisp_dev,
>                         "get_user_pages err: bo->pgnr = %d, pgnr actually pinned = %d.\n",
>                         bo->pgnr, page_nr);
> +               if (page_nr < 0)
> +                       page_nr = 0;
>                 goto out_of_mem;
>         }
>
> @@ -954,7 +957,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
>
>  out_of_mem:
>
> -       free_user_pages(bo);
> +       free_user_pages(bo, page_nr);
>
>         return -ENOMEM;
>  }
> @@ -1037,7 +1040,7 @@ void hmm_bo_free_pages(struct hmm_buffer_object *bo)
>         if (bo->type == HMM_BO_PRIVATE)
>                 free_private_pages(bo, &dynamic_pool, &reserved_pool);
>         else if (bo->type == HMM_BO_USER)
> -               free_user_pages(bo);
> +               free_user_pages(bo, bo->pgnr);
>         else
>                 dev_err(atomisp_dev, "invalid buffer type.\n");
>         mutex_unlock(&bo->mutex);
> --
> 1.9.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

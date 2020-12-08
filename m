Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E72A32D32C8
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 20:48:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5620687789;
	Tue,  8 Dec 2020 19:48:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dydgpSN+VPqx; Tue,  8 Dec 2020 19:48:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C1C2187766;
	Tue,  8 Dec 2020 19:48:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3FD381BF475
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 19:48:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 367FF20471
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 19:48:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OxHkyFXn7pTT for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 19:48:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
 [209.85.217.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 40B442038D
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 19:48:14 +0000 (UTC)
Received: by mail-vs1-f66.google.com with SMTP id r24so4303404vsg.10
 for <devel@driverdev.osuosl.org>; Tue, 08 Dec 2020 11:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D4Fyco5bDL0b1+A0R6hLCqPDjj4kiCO+5bu9D2g1+lI=;
 b=dJ4xAje6ekDIJ6XmZmZjkKMybOjqi5CojyEmwj6BdVqiCqmxl1Vm53EK/YDL20COY1
 AsUZsQmPL4qa9+67R3ufDZPdhOoc/76z1CmcTAYThFMFPEnu4/SbeE5ArPRj5kB61v41
 xHkursJgg2yhDZTmDciQthWSwmMyMB2SW6rjZDw00pqjgJyxwrs+8XeHo3gGvSZEm96m
 ITgEW0zJXWpH/VrH/UgwDZHTsbpSyKg/XsXVRfQvizX9YG5mew/97QqdxaV+m+UyIkoM
 RrFM4VulWYccCTfWdRk+FBA+BQ9jMYnonRDvfOsHl63UuYov0+yFGnD6zq49ASq91mui
 TQcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D4Fyco5bDL0b1+A0R6hLCqPDjj4kiCO+5bu9D2g1+lI=;
 b=T4vh6ZvXsC1wfEyTueixTS9JldwQffi8/TN3JOJWRzkJ3PBT8BkuckrRfHVGqo+mVL
 ZMA/dhytl3Kp9ur350yV0Yi1qmNqWEwCGZpOAAF/j3o5SHqvMgvbXUw+NlJEw14+5iTC
 n8mp+jFmdx6H0PhJ8210m0ltK38KeXMC1X1JZcwIP6nulnTb2nadEcWSNjlT/v45BzU0
 yyvg0pK4U9oYhdVl8LC8RIOOtPpUrkAvRxeMsK1pRyqzbe624OYorFO7IFcjcc0sFhq+
 ohJjtZCq1ItJFx67rFaMeTKcXisipxr2+9zy6ForIA2vi+0s+r4ljN3ILFEZ5TixuLjf
 AMYw==
X-Gm-Message-State: AOAM532YBzmbSx6kgXnuZYPbE5z20mruIshW2V2YmGbicyi8mdu5BdQB
 UtReZg5QryFiffGnHKlY3AtoP7kp4ujqsClaXOg=
X-Google-Smtp-Source: ABdhPJw7UDJIZ7N5Pm/Kgcza91TI1rb7WJ4XMyk9pIaUTNzYdmYB7lwXmKNCUO2sXUVfsxPLJ3z6IpK2Lca0r8l08Wg=
X-Received: by 2002:a05:6102:a07:: with SMTP id
 t7mr18112045vsa.30.1607456893158; 
 Tue, 08 Dec 2020 11:48:13 -0800 (PST)
MIME-Version: 1.0
References: <1604455331-28031-1-git-send-email-jrdr.linux@gmail.com>
 <CAFqt6zZ3HouweyeKGUbeF9ix+SXvBUrRB6ks3hozRofwtUaUtA@mail.gmail.com>
In-Reply-To: <CAFqt6zZ3HouweyeKGUbeF9ix+SXvBUrRB6ks3hozRofwtUaUtA@mail.gmail.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Wed, 9 Dec 2020 01:18:22 +0530
Message-ID: <CAFqt6zaRhgiktY8RyfDrBwoz18LRtxvThsh_JkASnhsk+5jDaQ@mail.gmail.com>
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

On Thu, Nov 19, 2020 at 1:06 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
>
> On Wed, Nov 4, 2020 at 7:32 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
> >
> > Inside alloc_user_pages() based on flag value either pin_user_pages()
> > or get_user_pages_fast() will be called. However, these API might fail.
> >
> > But free_user_pages() called in error handling path doesn't bother
> > about return value and will try to unpin bo->pgnr pages, which is
> > incorrect.
> >
> > Fix this by passing the page_nr to free_user_pages(). If page_nr > 0
> > pages will be unpinned based on bo->mem_type. This will also take care
> > of non error handling path.
> >
> > Fixes: 14a638ab96c5 ("media: atomisp: use pin_user_pages() for memory
> > allocation")
> > Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> > Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Cc: John Hubbard <jhubbard@nvidia.com>
> > Cc: Ira Weiny <ira.weiny@intel.com>
> > Cc: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> > v2:
> >     Added review tag.
>
> Any further comment ? If no, can we get this patch in queue for 5.11 ?

Can we get this patch in the queue for 5.11 ?

> >
> >  drivers/staging/media/atomisp/pci/hmm/hmm_bo.c | 13 ++++++++-----
> >  1 file changed, 8 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
> > index f13af23..0168f98 100644
> > --- a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
> > +++ b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
> > @@ -857,16 +857,17 @@ static void free_private_pages(struct hmm_buffer_object *bo,
> >         kfree(bo->page_obj);
> >  }
> >
> > -static void free_user_pages(struct hmm_buffer_object *bo)
> > +static void free_user_pages(struct hmm_buffer_object *bo,
> > +                           unsigned int page_nr)
> >  {
> >         int i;
> >
> >         hmm_mem_stat.usr_size -= bo->pgnr;
> >
> >         if (bo->mem_type == HMM_BO_MEM_TYPE_PFN) {
> > -               unpin_user_pages(bo->pages, bo->pgnr);
> > +               unpin_user_pages(bo->pages, page_nr);
> >         } else {
> > -               for (i = 0; i < bo->pgnr; i++)
> > +               for (i = 0; i < page_nr; i++)
> >                         put_page(bo->pages[i]);
> >         }
> >         kfree(bo->pages);
> > @@ -942,6 +943,8 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
> >                 dev_err(atomisp_dev,
> >                         "get_user_pages err: bo->pgnr = %d, pgnr actually pinned = %d.\n",
> >                         bo->pgnr, page_nr);
> > +               if (page_nr < 0)
> > +                       page_nr = 0;
> >                 goto out_of_mem;
> >         }
> >
> > @@ -954,7 +957,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
> >
> >  out_of_mem:
> >
> > -       free_user_pages(bo);
> > +       free_user_pages(bo, page_nr);
> >
> >         return -ENOMEM;
> >  }
> > @@ -1037,7 +1040,7 @@ void hmm_bo_free_pages(struct hmm_buffer_object *bo)
> >         if (bo->type == HMM_BO_PRIVATE)
> >                 free_private_pages(bo, &dynamic_pool, &reserved_pool);
> >         else if (bo->type == HMM_BO_USER)
> > -               free_user_pages(bo);
> > +               free_user_pages(bo, bo->pgnr);
> >         else
> >                 dev_err(atomisp_dev, "invalid buffer type.\n");
> >         mutex_unlock(&bo->mutex);
> > --
> > 1.9.1
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

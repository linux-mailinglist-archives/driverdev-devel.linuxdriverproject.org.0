Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A88C92E6ECB
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Dec 2020 08:49:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 38411871D4;
	Tue, 29 Dec 2020 07:49:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h-f7PSY6p-Bl; Tue, 29 Dec 2020 07:49:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94E7487166;
	Tue, 29 Dec 2020 07:49:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0E0441BF2B7
 for <devel@linuxdriverproject.org>; Tue, 29 Dec 2020 07:49:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EA5B2203C4
 for <devel@linuxdriverproject.org>; Tue, 29 Dec 2020 07:49:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kmzAyXm28eX4 for <devel@linuxdriverproject.org>;
 Tue, 29 Dec 2020 07:49:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
 [209.85.222.53])
 by silver.osuosl.org (Postfix) with ESMTPS id 81FE3203B9
 for <devel@driverdev.osuosl.org>; Tue, 29 Dec 2020 07:49:04 +0000 (UTC)
Received: by mail-ua1-f53.google.com with SMTP id y21so4097022uag.2
 for <devel@driverdev.osuosl.org>; Mon, 28 Dec 2020 23:49:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P/DC655DHub2vnthFLt+gT1P2HqxqGmBCzwVJehXVPw=;
 b=glrx8iTkIyaolUhCM9IQD+2bsj6QvOX587WIonBpKnmsDnANlLRvD1eCVvVLomJkLq
 K8wQezCe7ivNML5Xg5O8phDRM+awjNu9a1XDmovhZTceHyiqu539ss2JZ5A4QERFa9vF
 Fo2LbaPpMAKyMnvc1csZYBVud5aco36Xx2383Wg7vGVWiqZ1NJsuu/dr/ydOxhPeSLWW
 zrTFkC8cbO1o8CwU7lBKMTjcLqZqkqow91CBa98sHWvCSzYP7VOTK2nswNAMhM3L69Uz
 2WnbVZWd0FbpjXZaST9MvUJh2w3lK5QWqDWk6uft8wAC1GZx46iHYulproenaaTliuTb
 jhjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P/DC655DHub2vnthFLt+gT1P2HqxqGmBCzwVJehXVPw=;
 b=cqyA+TiV6ejXWP2W8eF4AQt5sjHxhelQcka+8rlBNza5fB1h6lw86b9CHwFcPUnSPD
 E8zUroCnO/vIZFZcCdYwKU+WHepXgf7v/WsfDMR8b/QoJ19qUAVizpcrIH90PcvUqEV4
 N3p3pT0fR5KzVurWiuEWGxTwpmxaE8YwdQk44XFU7APaldm0YwxiZvKVZXJJChwzy0ip
 hKb2whPviACqe+BrI+57NDqBPkXjl90GaPqXoQN3cMhsy2OgoJ1duTxPWwEtpfajneq6
 J7AwIVFi/m48AwEl9awWgUE75qpYnGqbSdIFU8eaz8dClwAW1gIv1LIYykojq5xbnJFn
 DWiw==
X-Gm-Message-State: AOAM533MtQJNbMfPXpoIqilMxSD98dYTGb0XRhaNGJJA1bpjURTDjqL8
 cFA3DURufgcX3VBPQrvZq2ICxO4cD8ZN1Z5A6wg=
X-Google-Smtp-Source: ABdhPJyvabkn4DdCroVCMnHXDw1dpwHrC5BDrctCP85isy8oZ3y6J7A/ulQQSkI24krTC+enGIbRDTXXpZde/NAa8gk=
X-Received: by 2002:ab0:1866:: with SMTP id j38mr28847278uag.27.1609228143512; 
 Mon, 28 Dec 2020 23:49:03 -0800 (PST)
MIME-Version: 1.0
References: <1604455331-28031-1-git-send-email-jrdr.linux@gmail.com>
 <CAFqt6zZ3HouweyeKGUbeF9ix+SXvBUrRB6ks3hozRofwtUaUtA@mail.gmail.com>
 <CAFqt6zaRhgiktY8RyfDrBwoz18LRtxvThsh_JkASnhsk+5jDaQ@mail.gmail.com>
In-Reply-To: <CAFqt6zaRhgiktY8RyfDrBwoz18LRtxvThsh_JkASnhsk+5jDaQ@mail.gmail.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Tue, 29 Dec 2020 13:18:55 +0530
Message-ID: <CAFqt6zYC0Or-7KSqoJY0gFT7NEUVy4unUW8a7rpb4XSxf65cOg@mail.gmail.com>
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

On Wed, Dec 9, 2020 at 1:18 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
>
> On Thu, Nov 19, 2020 at 1:06 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
> >
> > On Wed, Nov 4, 2020 at 7:32 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
> > >
> > > Inside alloc_user_pages() based on flag value either pin_user_pages()
> > > or get_user_pages_fast() will be called. However, these API might fail.
> > >
> > > But free_user_pages() called in error handling path doesn't bother
> > > about return value and will try to unpin bo->pgnr pages, which is
> > > incorrect.
> > >
> > > Fix this by passing the page_nr to free_user_pages(). If page_nr > 0
> > > pages will be unpinned based on bo->mem_type. This will also take care
> > > of non error handling path.
> > >
> > > Fixes: 14a638ab96c5 ("media: atomisp: use pin_user_pages() for memory
> > > allocation")
> > > Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> > > Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > Cc: John Hubbard <jhubbard@nvidia.com>
> > > Cc: Ira Weiny <ira.weiny@intel.com>
> > > Cc: Dan Carpenter <dan.carpenter@oracle.com>
> > > ---
> > > v2:
> > >     Added review tag.
> >
> > Any further comment ? If no, can we get this patch in queue for 5.11 ?
>
> Can we get this patch in the queue for 5.11 ?

Any further comment on this patch ?

>
> > >
> > >  drivers/staging/media/atomisp/pci/hmm/hmm_bo.c | 13 ++++++++-----
> > >  1 file changed, 8 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
> > > index f13af23..0168f98 100644
> > > --- a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
> > > +++ b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
> > > @@ -857,16 +857,17 @@ static void free_private_pages(struct hmm_buffer_object *bo,
> > >         kfree(bo->page_obj);
> > >  }
> > >
> > > -static void free_user_pages(struct hmm_buffer_object *bo)
> > > +static void free_user_pages(struct hmm_buffer_object *bo,
> > > +                           unsigned int page_nr)
> > >  {
> > >         int i;
> > >
> > >         hmm_mem_stat.usr_size -= bo->pgnr;
> > >
> > >         if (bo->mem_type == HMM_BO_MEM_TYPE_PFN) {
> > > -               unpin_user_pages(bo->pages, bo->pgnr);
> > > +               unpin_user_pages(bo->pages, page_nr);
> > >         } else {
> > > -               for (i = 0; i < bo->pgnr; i++)
> > > +               for (i = 0; i < page_nr; i++)
> > >                         put_page(bo->pages[i]);
> > >         }
> > >         kfree(bo->pages);
> > > @@ -942,6 +943,8 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
> > >                 dev_err(atomisp_dev,
> > >                         "get_user_pages err: bo->pgnr = %d, pgnr actually pinned = %d.\n",
> > >                         bo->pgnr, page_nr);
> > > +               if (page_nr < 0)
> > > +                       page_nr = 0;
> > >                 goto out_of_mem;
> > >         }
> > >
> > > @@ -954,7 +957,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
> > >
> > >  out_of_mem:
> > >
> > > -       free_user_pages(bo);
> > > +       free_user_pages(bo, page_nr);
> > >
> > >         return -ENOMEM;
> > >  }
> > > @@ -1037,7 +1040,7 @@ void hmm_bo_free_pages(struct hmm_buffer_object *bo)
> > >         if (bo->type == HMM_BO_PRIVATE)
> > >                 free_private_pages(bo, &dynamic_pool, &reserved_pool);
> > >         else if (bo->type == HMM_BO_USER)
> > > -               free_user_pages(bo);
> > > +               free_user_pages(bo, bo->pgnr);
> > >         else
> > >                 dev_err(atomisp_dev, "invalid buffer type.\n");
> > >         mutex_unlock(&bo->mutex);
> > > --
> > > 1.9.1
> > >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

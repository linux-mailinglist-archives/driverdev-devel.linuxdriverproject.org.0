Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1651F1F72
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Jun 2020 21:02:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 219CF2049A;
	Mon,  8 Jun 2020 19:02:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6UDqY9PGIzwh; Mon,  8 Jun 2020 19:02:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2482020784;
	Mon,  8 Jun 2020 19:02:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F0DC1BF39C
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 19:01:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0B9A1860D1
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 19:01:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VrB5a7Gc11pi for <devel@linuxdriverproject.org>;
 Mon,  8 Jun 2020 19:01:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C988084E7C
 for <devel@driverdev.osuosl.org>; Mon,  8 Jun 2020 19:01:56 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id x18so5412582lji.1
 for <devel@driverdev.osuosl.org>; Mon, 08 Jun 2020 12:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5FucO5MLasbHMeieVZwCp4so/qb2dT28pU+uSLCZS5M=;
 b=Bm96wzx0eHCz9RVuq8YNY58shtaHHnB0Q2i9bRONPfy8EScS//y6ohWKHkIHW1evs6
 qW3VIGSO2fGXHsCHMHBzCM80juJ/J881xgkO8F4JtSprjriAw5t+MlLILZazFAkfaqGk
 Knt2BOl49N22NIhY+7vKxYJ4GljKzQbml8k7WmtwiQLhwrwlE3qoDBsU5br0UArdqdiR
 Ct/oF6vYlm8MRDgiXJ9G3QvVM+ankc6052/xviSY1stfz+eG9N01ckbDKtG+sBElCMNZ
 vRksYctqar0jOmETl3d0vc/39iseMz60xrjFgzmA86tJxT17cAnsLpV6JORtB+qWK38l
 dvcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5FucO5MLasbHMeieVZwCp4so/qb2dT28pU+uSLCZS5M=;
 b=QOgHXA7+mTPrB/7Iuwa3QyGrouvIL9mewDP4d8OJX0Eb8OgcQLBcCq93qT1Yy8Yv53
 hEe17ePBTLyY2UXaNZJMyFPeByteudi18WkjT1bE0Yxk8k/vimX0pFSlOunZ2yCTB/Pu
 a/U3NHJIAmrazrltCVzNI+jLlJ+U9NJcuGd5RDQbIR33iT1txBDs4NNbB4OLuGfFdDyw
 JsJfyPgzQ4gE/KbGEldz/mInGiI25aL8faueKSW9yR3F8aj6/q+zxQ7+UAFKUusPmltv
 NIU7oyfyEUmFlQR4ki1Cygx1+hac1waa7j+ZFz/AUW/mt0SRcNq/HpHyMwCyL3FE8C2e
 /ekA==
X-Gm-Message-State: AOAM530d+Rqq6U6aPTMSoX3FGj/CMGOLCAgOMNcRbqXdjGHMScaTSib3
 YrF2g154ZhCkIOxnHKJzouAjoDUogQe1KHLWlrA=
X-Google-Smtp-Source: ABdhPJw7CT7C9gP/zfojSads0VPQlRMkA55J0SyhS9SBc/vqgzoDP/Y0/OEuWgFVVqr4DuBR/kNmBGxB/DyDxjRTUok=
X-Received: by 2002:a2e:83c7:: with SMTP id s7mr12178294ljh.68.1591642914410; 
 Mon, 08 Jun 2020 12:01:54 -0700 (PDT)
MIME-Version: 1.0
References: <1590947491-11194-1-git-send-email-jrdr.linux@gmail.com>
 <7e725dd0-7423-b85b-ff56-9705419d13b9@nvidia.com>
In-Reply-To: <7e725dd0-7423-b85b-ff56-9705419d13b9@nvidia.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Tue, 9 Jun 2020 00:31:42 +0530
Message-ID: <CAFqt6zbsNcHWF-0Na2xMKdJQs2kVkLHTCw=cytvdo+z-axx97Q@mail.gmail.com>
Subject: Re: [PATCH] staging: kpc2000: kpc_dma: Convert get_user_pages() -->
 pin_user_pages()
To: John Hubbard <jhubbard@nvidia.com>
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
 Bharath Vedartham <linux.bhar@gmail.com>, harshjain32@gmail.com,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Simon_Sandstr=C3=B6m?= <simon@nikanor.nu>, jane.pnx9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 1, 2020 at 7:15 AM John Hubbard <jhubbard@nvidia.com> wrote:
>
> On 2020-05-31 10:51, Souptick Joarder wrote:
> > In 2019, we introduced pin_user_pages*() and now we are converting
> > get_user_pages*() to the new API as appropriate. [1] & [2] could
> > be referred for more information.
> >
> > When pin_user_pages() returns numbers of partially mapped pages,
> > those pages were not unpinned as part of error handling. Fixed
> > it as part of this patch.
> >
>
> Hi Souptick,
>
> btw, Bharath (+cc) attempted to do the "put" side of this, last year.
> That got as far as a v4 patch [1], and then I asked him to let me put
> it into my tree. But then it didn't directly apply anymore after the
> whole design moved to pin+unpin, and so here we are now.
>
>
> If Bharath is still doing kernel work, you might offer him a Co-Developed-by:
> tag (see https://www.kernel.org/doc/html/v4.17/process/submitting-patches.html).

Sure, will add him as *Co-Developed-by*
>
> Anyway, I'd recommend splitting the bug fix(es) into it at least one
> separate patch. That's a "best practice", and I don't see any reason
> not to do it here, even though the bugs are not huge.
>
> Also I think there may be more than one bug to fix, because I just
> noticed that the pre-existing code is doing set_page_dirty(), when
> it should be doing set_page_dirty_lock(). See below.
>
>
> > [1] Documentation/core-api/pin_user_pages.rst
> >
> > [2] "Explicit pinning of user-space pages":
> >          https://lwn.net/Articles/807108/
> >
> > Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> > Cc: John Hubbard <jhubbard@nvidia.com>
> > ---
> > Hi,
> >
> > I'm compile tested this, but unable to run-time test, so any testing
> > help is much appriciated.
> >
> >   drivers/staging/kpc2000/kpc_dma/fileops.c | 15 ++++++++-------
> >   1 file changed, 8 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > index 8975346..29bab13 100644
> > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > @@ -48,6 +48,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> >       u64 card_addr;
> >       u64 dma_addr;
> >       u64 user_ctl;
> > +     int nr_pages = 0;
>
> Probably best to correct the "rv" type as well: it should be an int, rather
> than a long.

Noted.

>
> >
> >       ldev = priv->ldev;
> >
> > @@ -76,13 +77,15 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> >
> >       // Lock the user buffer pages in memory, and hold on to the page pointers (for the sglist)
> >       mmap_read_lock(current->mm);      /*  get memory map semaphore */
> > -     rv = get_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE | FOLL_GET, acd->user_pages, NULL);
> > +     rv = pin_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE, acd->user_pages, NULL);
> >       mmap_read_unlock(current->mm);        /*  release the semaphore */
> >       if (rv != acd->page_count) {
> > -             dev_err(&priv->ldev->pldev->dev, "Couldn't get_user_pages (%ld)\n", rv);
> > +             dev_err(&priv->ldev->pldev->dev, "Couldn't pin_user_pages (%ld)\n", rv);
> > +             nr_pages = rv;
> >               goto err_get_user_pages;
> >       }
> >
> > +     nr_pages = acd->page_count;
> >       // Allocate and setup the sg_table (scatterlist entries)
> >       rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
> >       if (rv) {
> > @@ -189,10 +192,9 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> >       sg_free_table(&acd->sgt);
> >    err_dma_map_sg:
> >    err_alloc_sg_table:
>
> So now we end up with two unnecessary labels. Probably best to delete two of these
> three and name the remaining one appropriately:

Hmm, I thought about it. But later decided to wait for review comments
on the same in v1.
I will remove it now.

>
>   err_dma_map_sg:
>   err_alloc_sg_table:
>   err_get_user_pages:
>
> > -     for (i = 0 ; i < acd->page_count ; i++)
> > -             put_page(acd->user_pages[i]);
> > -
> >    err_get_user_pages:
> > +     if (nr_pages > 0)
> > +             unpin_user_pages(acd->user_pages, nr_pages);
> >       kfree(acd->user_pages);
> >    err_alloc_userpages:
> >       kfree(acd);
> > @@ -217,8 +219,7 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
> >
>
> There is code up here (not shown in this diff), that does a set_page_dirty().
> First of all, that should be set_page_dirty_lock(), and second, maybe (or maybe not)
> it can all be done after the dma_unmap_sg(), at the same time as the unpin, via
> unpin_user_pages_dirty_lock(). In fact, it's misleading at best to leave those
> pages mapped, because there is an interval in there after set_page_dirty() and
> before put_page(), in which the device could be running and setting pages dirty.
> (Remember that writeback attempts can be happening concurrently with all of this,
> and writeback is deeply involved with page dirtiness.)
>
> I remember Bharath wrestled with this in an earlier conversion attempt (back when
> we were only converting the "put_page" side of things), let me see if I can dig up
> that email thread for some guidance...OK, in [1] it appears that everyone
> finally settled on keeping the PageReserved check, but OK to move everything below
> the dma_unmap_sg() call.
>
> [1] https://lore.kernel.org/r/20190720173214.GA4250@bharath12345-Inspiron-5559

Well, I need to rework on this based on the above feedback and
suggestions. Will post the
new series.

>
>
> >       dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
> >
> > -     for (i = 0 ; i < acd->page_count ; i++)
> > -             put_page(acd->user_pages[i]);
> > +     unpin_user_pages(acd->user_pages, acd->page_count);
> >
> >       sg_free_table(&acd->sgt);
> >
> >
>
> thanks,
> --
> John Hubbard
> NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

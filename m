Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBCD1C620E
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 22:29:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE46487F08;
	Tue,  5 May 2020 20:29:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3dfw0xp+QOb7; Tue,  5 May 2020 20:29:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D6BF87EA3;
	Tue,  5 May 2020 20:29:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 65F601BF2FB
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 20:29:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 59E4E204B8
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 20:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wLlQV44LKFv2 for <devel@linuxdriverproject.org>;
 Tue,  5 May 2020 20:29:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 8DF9E2046F
 for <devel@driverdev.osuosl.org>; Tue,  5 May 2020 20:29:03 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id b26so2481902lfa.5
 for <devel@driverdev.osuosl.org>; Tue, 05 May 2020 13:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=83UCtPNkqDZBKGoRIazdaAZRxxGX8f38Okq8k7GA4pI=;
 b=CejyCH2+i8WjwOb6iQSU/zjkgAjhZFS3kKbmAcGRM+1VtTGKGEU+WvbOY7x2voOPho
 XLjfmulIDc05d7z63UFfBbfOwjtdaXNdU6aYilayzlrXcoKs2Scd/9SK20k+tLtbbMp6
 n9nDQ3nkLOzgi5LtpjnS/IKdbwlyQQCsDCcNqYlzoRBaW4vZvEOnLbQUXDzHAGqefQGe
 Q1AP1nacbWbmjUwWFXOiAHyZXwLAXI/sGF3FtUqGf+6nDIg6RIe8xlpo4X2jbPbPgjId
 2m0DslzgGLGYJfe8SAGJ267eW+mbvJ4JEiIJQt7G2m+lSjdotbOCUzSYiGG6gAD7sGlY
 1jBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=83UCtPNkqDZBKGoRIazdaAZRxxGX8f38Okq8k7GA4pI=;
 b=BNef9BNpVEXorVYIgHzPYbJK4cp9vzM9fFovxPoffhlyhG5xydYNfZ4ReKVUOK99OY
 t55RZP1wrrsNUZewYhGId+rR8KXiS17I/OPNR+jJAciQlHEdgw2eQt3YcqdoYq76bFUD
 lLd4fT5/WJzQH5E9uJPGGKlMxG//rRQiYh/ZxkoMopcLP7iQujXZD3t9kIwruveuqayN
 XgpPdiyAix60Crdf1DOSvWXSpGjY/4B7othDiAFp51fooUKhzvbyQzjj8f/e2SvaWYZr
 nhE0a7NlT8KWCeLH/h6/DLQUjT5vyR5OMBbTUxdsSQzrMd2fOm/EFivOfrkLNburIY0b
 3rsA==
X-Gm-Message-State: AGi0PuZMCroqikTPJ9Ary4kcubPSp/dSq9GNf6eQ6SW7hW03cIpXgIfb
 GwsxbtxsRI4kl3N0bGMd/nBqfiVvBIDa/gJBafE=
X-Google-Smtp-Source: APiQypIN32pISCAGZuC8E0y4X/FTimjvo06gX0G57fdlSriZX05RtvQUHDYaxCoByWoKjEhFoEzhC0rF5wxgjntlPtc=
X-Received: by 2002:a19:c349:: with SMTP id t70mr2736495lff.139.1588710541439; 
 Tue, 05 May 2020 13:29:01 -0700 (PDT)
MIME-Version: 1.0
References: <1588706059-4208-1-git-send-email-jrdr.linux@gmail.com>
 <0bfe4a8a-0d91-ef9b-066f-2ea7c68571b3@nvidia.com>
In-Reply-To: <0bfe4a8a-0d91-ef9b-066f-2ea7c68571b3@nvidia.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Wed, 6 May 2020 02:06:56 +0530
Message-ID: <CAFqt6zZMsQkOdjAb2k1EjwX=DtZ8gKfbRzwvreHOX-0vJLngNg@mail.gmail.com>
Subject: Re: [RFC] mm/gup.c: Updated return value of
 {get|pin}_user_pages_fast()
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
Cc: Jan Kara <jack@suse.cz>, Linux-MM <linux-mm@kvack.org>,
 inux-ia64@vger.kernel.org,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, kuba@kernel.org,
 fenghua.yu@intel.com, santosh.shilimkar@oracle.com,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>,
 Tony Luck <tony.luck@intel.com>, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Jens Wiklander <jens.wiklander@linaro.org>,
 tee-dev@lists.linaro.org, netdev@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 6, 2020 at 1:08 AM John Hubbard <jhubbard@nvidia.com> wrote:
>
> On 2020-05-05 12:14, Souptick Joarder wrote:
> > Currently {get|pin}_user_pages_fast() have 3 return value 0, -errno
> > and no of pinned pages. The only case where these two functions will
> > return 0, is for nr_pages <= 0, which doesn't find a valid use case.
> > But if at all any, then a -ERRNO will be returned instead of 0, which
> > means {get|pin}_user_pages_fast() will have 2 return values -errno &
> > no of pinned pages.
> >
> > Update all the callers which deals with return value 0 accordingly.
>
> Hmmm, seems a little shaky. In order to do this safely, I'd recommend
> first changing gup_fast/pup_fast so so that they return -EINVAL if
> the caller specified nr_pages==0, and of course auditing all callers,
> to ensure that this won't cause problems.

While auditing it was figured out, there are 5 callers which cares for
return value
0 of gup_fast/pup_fast. What problem it might cause if we change
gup_fast/pup_fast
to return -EINVAL and update all the callers in a single commit ?

>
> The gup.c documentation would also need updating in a couple of comment
> blocks, above get_user_pages_remote(), and __get_user_pages(), because
> those talk about a zero return value.

OK.

>
> This might be practical without slowing down the existing code, because
> there is already a check in place, so just tweaking it like this (untested)
> won't change performance at all:
>
> diff --git a/mm/gup.c b/mm/gup.c
> index 11fda538c9d9..708eed79ae29 100644
> --- a/mm/gup.c
> +++ b/mm/gup.c
> @@ -2787,7 +2787,7 @@ static int internal_get_user_pages_fast(unsigned long start,
> int nr_pages,
>          end = start + len;
>
>          if (end <= start)
> -               return 0;
> +               return -EINVAL;
>          if (unlikely(!access_ok((void __user *)start, len)))
>                  return -EFAULT;
>
> ...although I might be missing some other things that need a similar change,
> so you should look carefully for yourself.

Do you refer to other gup APIs similar to gup_fast/pup_fast ?

>
>
> Once that change (and anything I missed) is in place, then you could go
> ahead and stop handling ret==0 cases at the call sites.
>
>
> thanks,
> --
> John Hubbard
> NVIDIA
>
> >
> > Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> > ---
> >   arch/ia64/kernel/err_inject.c              | 2 +-
> >   drivers/platform/goldfish/goldfish_pipe.c  | 2 +-
> >   drivers/staging/gasket/gasket_page_table.c | 4 ++--
> >   drivers/tee/tee_shm.c                      | 2 +-
> >   mm/gup.c                                   | 6 +++---
> >   net/rds/rdma.c                             | 2 +-
> >   6 files changed, 9 insertions(+), 9 deletions(-)
> >
> > diff --git a/arch/ia64/kernel/err_inject.c b/arch/ia64/kernel/err_inject.c
> > index 8b5b8e6b..fd72218 100644
> > --- a/arch/ia64/kernel/err_inject.c
> > +++ b/arch/ia64/kernel/err_inject.c
> > @@ -143,7 +143,7 @@ static DEVICE_ATTR(name, 0644, show_##name, store_##name)
> >       int ret;
> >
> >       ret = get_user_pages_fast(virt_addr, 1, FOLL_WRITE, NULL);
> > -     if (ret<=0) {
> > +     if (ret < 0) {
> >   #ifdef ERR_INJ_DEBUG
> >               printk("Virtual address %lx is not existing.\n",virt_addr);
> >   #endif
> > diff --git a/drivers/platform/goldfish/goldfish_pipe.c b/drivers/platform/goldfish/goldfish_pipe.c
> > index 1ab207e..831449d 100644
> > --- a/drivers/platform/goldfish/goldfish_pipe.c
> > +++ b/drivers/platform/goldfish/goldfish_pipe.c
> > @@ -277,7 +277,7 @@ static int goldfish_pin_pages(unsigned long first_page,
> >       ret = pin_user_pages_fast(first_page, requested_pages,
> >                                 !is_write ? FOLL_WRITE : 0,
> >                                 pages);
> > -     if (ret <= 0)
> > +     if (ret < 0)
> >               return -EFAULT;
> >       if (ret < requested_pages)
> >               *iter_last_page_size = PAGE_SIZE;
> > diff --git a/drivers/staging/gasket/gasket_page_table.c b/drivers/staging/gasket/gasket_page_table.c
> > index f6d7157..1d08e1d 100644
> > --- a/drivers/staging/gasket/gasket_page_table.c
> > +++ b/drivers/staging/gasket/gasket_page_table.c
> > @@ -489,11 +489,11 @@ static int gasket_perform_mapping(struct gasket_page_table *pg_tbl,
> >                       ret = get_user_pages_fast(page_addr - offset, 1,
> >                                                 FOLL_WRITE, &page);
> >
> > -                     if (ret <= 0) {
> > +                     if (ret < 0) {
> >                               dev_err(pg_tbl->device,
> >                                       "get user pages failed for addr=0x%lx, offset=0x%lx [ret=%d]\n",
> >                                       page_addr, offset, ret);
> > -                             return ret ? ret : -ENOMEM;
> > +                             return ret;
> >                       }
> >                       ++pg_tbl->num_active_pages;
> >
> > diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
> > index bd679b7..2706a1f 100644
> > --- a/drivers/tee/tee_shm.c
> > +++ b/drivers/tee/tee_shm.c
> > @@ -230,7 +230,7 @@ struct tee_shm *tee_shm_register(struct tee_context *ctx, unsigned long addr,
> >       if (rc > 0)
> >               shm->num_pages = rc;
> >       if (rc != num_pages) {
> > -             if (rc >= 0)
> > +             if (rc > 0)
> >                       rc = -ENOMEM;
> >               ret = ERR_PTR(rc);
> >               goto err;
> > diff --git a/mm/gup.c b/mm/gup.c
> > index 50681f0..8d293ed 100644
> > --- a/mm/gup.c
> > +++ b/mm/gup.c
> > @@ -2760,7 +2760,7 @@ static int internal_get_user_pages_fast(unsigned long start, int nr_pages,
> >       end = start + len;
> >
> >       if (end <= start)
> > -             return 0;
> > +             return -EINVAL;
> >       if (unlikely(!access_ok((void __user *)start, len)))
> >               return -EFAULT;
> >
> > @@ -2805,8 +2805,8 @@ static int internal_get_user_pages_fast(unsigned long start, int nr_pages,
> >    * calling get_user_pages().
> >    *
> >    * Returns number of pages pinned. This may be fewer than the number requested.
> > - * If nr_pages is 0 or negative, returns 0. If no pages were pinned, returns
> > - * -errno.
> > + * If nr_pages is 0 or negative, returns -errno. If no pages were pinned,
> > + * returns -errno.
> >    */
> >   int get_user_pages_fast(unsigned long start, int nr_pages,
> >                       unsigned int gup_flags, struct page **pages)
> > diff --git a/net/rds/rdma.c b/net/rds/rdma.c
> > index a7ae118..44b96e6 100644
> > --- a/net/rds/rdma.c
> > +++ b/net/rds/rdma.c
> > @@ -161,7 +161,7 @@ static int rds_pin_pages(unsigned long user_addr, unsigned int nr_pages,
> >               gup_flags |= FOLL_WRITE;
> >
> >       ret = pin_user_pages_fast(user_addr, nr_pages, gup_flags, pages);
> > -     if (ret >= 0 && ret < nr_pages) {
> > +     if (ret > 0 && ret < nr_pages) {
> >               unpin_user_pages(pages, ret);
> >               ret = -EFAULT;
> >       }
> >
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

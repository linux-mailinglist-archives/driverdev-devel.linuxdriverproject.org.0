Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1A427BA9B
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 04:04:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 63BB1866CE;
	Tue, 29 Sep 2020 02:04:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rUmblEVwIgZF; Tue, 29 Sep 2020 02:04:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 21DFD866B2;
	Tue, 29 Sep 2020 02:04:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7804B1BF327
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 02:04:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 55DE6204F5
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 02:04:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C+jDf75rbWhI for <devel@linuxdriverproject.org>;
 Tue, 29 Sep 2020 02:04:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com
 [209.85.217.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 7656720336
 for <devel@driverdev.osuosl.org>; Tue, 29 Sep 2020 02:04:52 +0000 (UTC)
Received: by mail-vs1-f68.google.com with SMTP id w11so22509vsw.13
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 19:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iDhv+ozgLfJpz4ReM/64bivezuXaXXhI3uaVkJqD6ls=;
 b=ElzTpIglC+vmQlt1o4Loci+G0xfVId1TvwEqqaq9K2WDKtIa9s/LqIro0Fr2c73mVn
 kmhkY9wYhFBx8SLb+/vdoOGgOLpEv8t6yt8jtquj71p3kzrlKl+Wl+REsmWjuuZ1XBUD
 TMLpUWCLSaojzcxUGI4TIWNmUb0MH8Krs0tUvv8CAjBtoak+oQQ21aC5RfyLBIpJ3C55
 mPtRWvnb9PjSzLLQn0xBj8juntZIieZH7daRO0vmOv70RxDXTKXUMWsfo9rdlpUglp73
 VjmwWGFYZJGsHB64AqjSAdayBHKQkf3SzoRzMHpuVWbwG2L9vT/AxdfHrO+o6iiVip3B
 LPYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iDhv+ozgLfJpz4ReM/64bivezuXaXXhI3uaVkJqD6ls=;
 b=OsR/HbD//fUaeIFrYWBglICXLCmudvnzyaj+pgYpPc8F0AM+8hYfp/3sThjwWabaOT
 ziIkHFs286qecsDF/kA2Dydag4WEisZhk9+se6WtpKu9vPovpHlAjRKVyzpfkmvIq0p8
 wQSpdloAdbNgp54ODKHaHv+WHM+fwBhIczOeLjPp5hVcNm5smkVegPu8bHuNT51iley0
 k/DTgMo/xnKJwAu9uDtwQtlR82431Ad1eaT5XHZDTNdhfPucnqI1WEbIXgIgq73qpLRA
 ZGN7QlVcme9JwtLDsHkloEQCrRdVxEC4cDMCAjJhm2BTw0tlrO3HI1ONDUhXO6IQK0Jw
 qr1g==
X-Gm-Message-State: AOAM532u5IoeySMAG+IT186wmZrqiRINMNeQa5QmKo0X9bfaxTY7+y0x
 xnvvfri7etOCpKoGQ1e58FsPxJ8rCVnUO+DpoKo=
X-Google-Smtp-Source: ABdhPJyr6ao6JKY3kh4wo/uPStmXsu/G2ImOGPcqB6umN+lBpwROmdYRQa76oJabfTEMI8k+KK7JQYiXMJJ5NntMMhM=
X-Received: by 2002:a67:1bc4:: with SMTP id b187mr1540419vsb.59.1601345091353; 
 Mon, 28 Sep 2020 19:04:51 -0700 (PDT)
MIME-Version: 1.0
References: <1601219284-13275-1-git-send-email-jrdr.linux@gmail.com>
 <20200928083757.GA18329@kadam>
In-Reply-To: <20200928083757.GA18329@kadam>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Tue, 29 Sep 2020 07:34:39 +0530
Message-ID: <CAFqt6zZaf=+JcUuxKdoEj1vMs5MOsb1iYKStmwKiKLW8bbcnYQ@mail.gmail.com>
Subject: Re: [PATCH] media: atomisp: Fixed error handling path
To: Dan Carpenter <dan.carpenter@oracle.com>
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
 Michel Lespinasse <walken@google.com>, Greg KH <gregkh@linuxfoundation.org>,
 gustavoars@kernel.org, daniel.m.jordan@oracle.com,
 sakari.ailus@linux.intel.com, John Hubbard <jhubbard@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>, mchehab@kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,


On Mon, Sep 28, 2020 at 2:08 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Sun, Sep 27, 2020 at 08:38:04PM +0530, Souptick Joarder wrote:
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
> > Cc: John Hubbard <jhubbard@nvidia.com>
> > Cc: Ira Weiny <ira.weiny@intel.com>
> > Cc: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> >  drivers/staging/media/atomisp/pci/hmm/hmm_bo.c | 13 ++++++++-----
> >  1 file changed, 8 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
> > index f13af23..0168f98 100644
> > --- a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
> > +++ b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
> > @@ -857,16 +857,17 @@ static void free_private_pages(struct hmm_buffer_object *bo,
> >       kfree(bo->page_obj);
> >  }
> >
> > -static void free_user_pages(struct hmm_buffer_object *bo)
> > +static void free_user_pages(struct hmm_buffer_object *bo,
> > +                         unsigned int page_nr)
> >  {
> >       int i;
> >
> >       hmm_mem_stat.usr_size -= bo->pgnr;
>                               ^^^^^^^^^^^
> This is still a problem.  It needs to be hmm_mem_stat.usr_size -= page_nr.

In failure path, it is hmm_mem_stat.usr_size += bo->pgnr.
I think, hmm_mem_stat.usr_size -= bo->pgnr is correct as per existing code.
Do you think that needs to be changed ?

>
> regards,
> dan carpenter
>
> >
> >       if (bo->mem_type == HMM_BO_MEM_TYPE_PFN) {
> > -             unpin_user_pages(bo->pages, bo->pgnr);
> > +             unpin_user_pages(bo->pages, page_nr);
> >       } else {
> > -             for (i = 0; i < bo->pgnr; i++)
> > +             for (i = 0; i < page_nr; i++)
> >                       put_page(bo->pages[i]);
> >       }
> >       kfree(bo->pages);
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

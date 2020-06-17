Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 110521FD392
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 19:35:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F0460883A2;
	Wed, 17 Jun 2020 17:35:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gEd8-Yorep28; Wed, 17 Jun 2020 17:35:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C1A1288376;
	Wed, 17 Jun 2020 17:35:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 285A31BF278
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 17:35:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1EBAF20409
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 17:35:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yLi9u8ad9tfK for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 17:35:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 1C4C5203B9
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 17:35:19 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id m26so1799027lfo.13
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 10:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MBfyqghJKD3m/c732ySG1Fw+Y6n0LHho3bg3oKuG+xA=;
 b=CAVqvjvRMog+bjNFWR098Fzm3DpZRbmqyHxJ5L7Q9ThFxc4uMWGwQIb74eiwPMr4eW
 ZW77MraUmYqH/IHn5s5MLRyPW4AOPoanjpRelbxLccqc5Cbvte58gbQyb7wMOit9b/ey
 ILxgp8+WeLqDlT68gan2QUtBtbWsWAByGfmH7Z2oH8cp0+6asEGvUfXeiZY/0/i7cPS7
 d+4l50hzL62DBTIapKl8c1HISeXQgdFhMRjjtRbEeHHaPyzowLlIw/tRjLIjN2iqjjlP
 R5cX6caph7PVwf0vG5qFl5G5G55uLb5Q0yKXN4IBFQm1H2ZnOEEBXpZokNUeASSzZ7rB
 sTyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MBfyqghJKD3m/c732ySG1Fw+Y6n0LHho3bg3oKuG+xA=;
 b=oBJSPBOHoo2f/LyQtAEhFBnWm4iQqNhnxIOhQW6h+ydazor6kRdZZyu5ql1XSO91jN
 mItovjHTjYDrSJ9D1lZVb0CJ6On+oam+ON5k01me/IR+dfoZ8fi6t2xkNmhK/dQFTAof
 0ARcTUuA0WFrIf32WxLkE9xve6xUwUaLsAxq7xLQNtQwg1/rwmly+5c04AQPi1cijWlz
 hrZunPHXfA8V3BpbBR1pk6fExe6bGz5RLKzSzowOOjOAw1Rk6fDPkhu+JzCZ4DCkDTMd
 AWc/b2c5+p6dELHucVOu4FNw9Y4pmRkI8ARm7SPnszO5OSDuIfOE8NN8iuklYp2jtqqu
 zuug==
X-Gm-Message-State: AOAM530DiM97dAVLI/TXhyYoUBjSIQ3fm7/4oHoxsyl/+rt69L/ApS7l
 5nYHmNMd1OSbkVgM/9xh3Yc3QmmUdbBz9AQe2z4=
X-Google-Smtp-Source: ABdhPJzZ1YAM0FpboUkZO9r5P/pnDaVpgtgboON71+GoUO0FE7ZPVzWbfvU2Oz+ggufdhItv0bp5P8NNQjX3UUSGT0g=
X-Received: by 2002:a05:6512:3208:: with SMTP id d8mr39884lfe.38.1592415317231; 
 Wed, 17 Jun 2020 10:35:17 -0700 (PDT)
MIME-Version: 1.0
References: <1592360843-3440-1-git-send-email-jrdr.linux@gmail.com>
 <1592360843-3440-2-git-send-email-jrdr.linux@gmail.com>
 <20200617111321.GP4282@kadam>
In-Reply-To: <20200617111321.GP4282@kadam>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Wed, 17 Jun 2020 23:13:32 +0530
Message-ID: <CAFqt6zYHXmoCrWLEru2FZsRnXptFERJv1qiDFPip=q_cZaZEBg@mail.gmail.com>
Subject: Re: [PATCH 1/4] staging: kpc2000: Unpin partial pinned pages
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
 Bharath Vedartham <linux.bhar@gmail.com>, harshjain32@gmail.com,
 John Hubbard <jhubbard@nvidia.com>, Greg KH <gregkh@linuxfoundation.org>,
 pakki001@umn.edu, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Simon_Sandstr=C3=B6m?= <simon@nikanor.nu>, ldufour@linux.ibm.com,
 Michel Lespinasse <walken@google.com>, jane.pnx9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 17, 2020 at 4:43 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Wed, Jun 17, 2020 at 07:57:20AM +0530, Souptick Joarder wrote:
> > There is a bug, when get_user_pages() failed but partially pinned
> > pages are not unpinned. Fixed it.
> >
> > Also, int is more appropriate type for rv. Changed it.
> >
> > Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> > Cc: John Hubbard <jhubbard@nvidia.com>
> > Cc: Bharath Vedartham <linux.bhar@gmail.com>
> > Cc: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> >  drivers/staging/kpc2000/kpc_dma/fileops.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > index 8975346..b136353 100644
> > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > @@ -35,7 +35,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> >                           unsigned long iov_base, size_t iov_len)
> >  {
> >       unsigned int i = 0;
> > -     long rv = 0;
> > +     int rv = 0;
> >       struct kpc_dma_device *ldev;
> >       struct aio_cb_data *acd;
> >       DECLARE_COMPLETION_ONSTACK(done);
> > @@ -193,6 +193,10 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> >               put_page(acd->user_pages[i]);
>                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> >
> >   err_get_user_pages:
> > +     if (rv > 0) {
> > +             for (i = 0; i < rv; i++)
> > +                     put_pages(acd->user_pages[i])
>                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>
> > +     }
>
> This isn't a complete fix.  "rv" is the negative error code but here we
> are returning a positive value on this path.

In case of error of get_user_pages(), it will return -errno, 0 and 3rd one is
(rv > 0 && rv != acd->page_count). When rv is -errno or 0 there is no need
to call put_pages() in error path. But for 3rd case partially mapped pages
need to unpin.

Correct me if I am missing anything.

>Also it's ugly to have
> same put_page() loop repeated twice.

Yes, I agree, but these are intermediate steps. Patch [4/4] of this series
finally did the same.

>
> It would be better to write it like this:
>
>         rv = get_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE | FOLL_GET, acd->user_pages, NULL);
>         mmap_read_unlock(current->mm);        /*  release the semaphore */
>         if (rv < 0)
>                 goto free_pages;
>         if (rv != acd->page_count) {
>                 acd->page_count = rv;
>                 rv = -EFAULT;
>                 goto put_pages;
>         }
>
>         ...
>
> put_pages:
>         for (i = 0 ; i < acd->page_count ; i++)
>                 put_pages(acd->user_pages[i]);
> free_pages:
>         kfree(acd->user_pages);
>
> regards,
> dan carpenter
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

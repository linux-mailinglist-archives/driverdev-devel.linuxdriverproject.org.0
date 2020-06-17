Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7430D1FD557
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 21:21:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B4A848841E;
	Wed, 17 Jun 2020 19:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dy-9KDUHVwpb; Wed, 17 Jun 2020 19:21:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A9BB6883A2;
	Wed, 17 Jun 2020 19:21:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1BD1D1BF429
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 19:21:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 12F6188672
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 19:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jwCMidQUmHSk for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 19:21:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7AB3388619
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 19:21:43 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id 9so4297712ljv.5
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 12:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I6zPV8zobDf9HXBdYcU6mVid6vbxVvMja1AcfqC3AhY=;
 b=f9SMlyM/U0Pqzn1ZfwPovFVY6pZbMaVNMoLSufan6Hon09QmB+eZa9nTGXfGxBQyIe
 PQULWwLtmklVkIMpg9pFaEPTNvi2LC9IcxyTkpI/nBKVXWG3U0wSSuyj8AbbZMKiq4EL
 OwS61L9Q6Exu+JDkyDU+jwWBB4UHVz/IkhsdeBAJdL60GDpDSexutvvHvx7VHaAPNwb0
 FnlqEr9i019s7c+rJ7WxAlpIIYFqrnAFs8U6vfs8J2tYfCZFlRTNQg6JB5oYjGsmP5Iz
 rqP5WAiuJJNGDIoK/swk2D9TyycjNZRhwlFDD2mZ41qIct+Dy4I6wr1vYDthC2JvIh/L
 vNVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I6zPV8zobDf9HXBdYcU6mVid6vbxVvMja1AcfqC3AhY=;
 b=qFAAh0c6qeZkotQZ7dXs9rOLbFhFaARB4MNDckb0fgW61dk2lfYy9mOKTKmcboK8hH
 Y9m0kE6SjGtae+23Tpr07Yb0qrBy2vRn4Cdf0n9N9T0vV6kbYDBJlfE2RP0lrfDERAE4
 tOHbO0NwVmocDD3pzjTWETXzxemxUVbPBiegOw2WA59pdoTEawjn9sCBzhlWTT0wJdH5
 cwgb0BuAYT2JfwfLNFlVCadQWwvgoo0zOzAMdroyUyK9dE6l6i1+7SnFuLzk3/B1XhOx
 zmIPuhcBu3qvs29yQvWQQh+OXhS8txsqNEI9Hcd3vgjezyUA1ymHUYdfICS3CWVTtM3x
 ePCA==
X-Gm-Message-State: AOAM5318wE6YEeU6ad+CiXl1yri435XUwLeD2fG1s/XazD3hC3owJbXJ
 m22ItJGhjr4zH3KzeN3HRGOyPRdXs8jijsGmTS0=
X-Google-Smtp-Source: ABdhPJy/zgi6evi5V74dtl6A1Gnb2qzWqwv0aC2J/qtn2wVcoQui5pDVfUgL66fQBPwxEv0f/1kKdEbuFTWgUKo0FhA=
X-Received: by 2002:a2e:7215:: with SMTP id n21mr333356ljc.315.1592421701149; 
 Wed, 17 Jun 2020 12:21:41 -0700 (PDT)
MIME-Version: 1.0
References: <1592360843-3440-1-git-send-email-jrdr.linux@gmail.com>
 <1592360843-3440-2-git-send-email-jrdr.linux@gmail.com>
 <20200617111321.GP4282@kadam>
 <CAFqt6zYHXmoCrWLEru2FZsRnXptFERJv1qiDFPip=q_cZaZEBg@mail.gmail.com>
 <20200617175918.GO4151@kadam>
In-Reply-To: <20200617175918.GO4151@kadam>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Thu, 18 Jun 2020 00:59:57 +0530
Message-ID: <CAFqt6za2Npg147p=47_PKjGehKKP=s5dgtu1O=nrrPePxjXPkg@mail.gmail.com>
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
 =?UTF-8?Q?Simon_Sandstr=C3=B6m?= <simon@nikanor.nu>,
 linux-kernel@vger.kernel.org, pakki001@umn.edu, ldufour@linux.ibm.com,
 Michel Lespinasse <walken@google.com>, jane.pnx9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 17, 2020 at 11:29 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Wed, Jun 17, 2020 at 11:13:32PM +0530, Souptick Joarder wrote:
> > On Wed, Jun 17, 2020 at 4:43 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > >
> > > On Wed, Jun 17, 2020 at 07:57:20AM +0530, Souptick Joarder wrote:
> > > > There is a bug, when get_user_pages() failed but partially pinned
> > > > pages are not unpinned. Fixed it.
> > > >
> > > > Also, int is more appropriate type for rv. Changed it.
> > > >
> > > > Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> > > > Cc: John Hubbard <jhubbard@nvidia.com>
> > > > Cc: Bharath Vedartham <linux.bhar@gmail.com>
> > > > Cc: Dan Carpenter <dan.carpenter@oracle.com>
> > > > ---
> > > >  drivers/staging/kpc2000/kpc_dma/fileops.c | 6 +++++-
> > > >  1 file changed, 5 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > index 8975346..b136353 100644
> > > > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > > @@ -35,7 +35,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> > > >                           unsigned long iov_base, size_t iov_len)
> > > >  {
> > > >       unsigned int i = 0;
> > > > -     long rv = 0;
> > > > +     int rv = 0;
> > > >       struct kpc_dma_device *ldev;
> > > >       struct aio_cb_data *acd;
> > > >       DECLARE_COMPLETION_ONSTACK(done);
> > > > @@ -193,6 +193,10 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> > > >               put_page(acd->user_pages[i]);
> > >                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> > > >
> > > >   err_get_user_pages:
> > > > +     if (rv > 0) {
> > > > +             for (i = 0; i < rv; i++)
> > > > +                     put_pages(acd->user_pages[i])
> > >                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> > >
> > > > +     }
> > >
> > > This isn't a complete fix.  "rv" is the negative error code but here we
> > > are returning a positive value on this path.
> >
> > In case of error of get_user_pages(), it will return -errno, 0 and 3rd one is
> > (rv > 0 && rv != acd->page_count). When rv is -errno or 0 there is no need
> > to call put_pages() in error path. But for 3rd case partially mapped pages
> > need to unpin.
> >
> > Correct me if I am missing anything.
> >
>
>    182                  kfree(acd);
>    183          }
>    184          return rv;
>    185
>    186   err_descr_too_many:
>    187          unlock_engine(ldev);
>    188          dma_unmap_sg(&ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ldev->dir);
>    189          sg_free_table(&acd->sgt);
>    190   err_dma_map_sg:
>    191   err_alloc_sg_table:
>    192          for (i = 0 ; i < acd->page_count ; i++)
>    193                  put_page(acd->user_pages[i]);
>    194
>    195   err_get_user_pages:
>    196          if (rv > 0) {
>                     ^^^^^^
> "rv" is positive.
>
>    197                  for (i = 0; i < rv; i++)
>    198                          put_pages(acd->user_pages[i])
>    199          }
>    200          kfree(acd->user_pages);
>    201   err_alloc_userpages:
>    202          kfree(acd);
>    203          dev_dbg(&priv->ldev->pldev->dev, "%s returning with error %ld\n", __func__, rv);
>    204          return rv;
>                        ^^
> "rv" is still positive but it should be -EFAULT.
>

Ahh,  my mistake. Will correct it in v2.
Do other patches in the series looks good ?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

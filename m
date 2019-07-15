Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFDD69D2B
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 22:52:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E9EBB86E15;
	Mon, 15 Jul 2019 20:52:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Ar2woHHsjPV; Mon, 15 Jul 2019 20:52:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C826A85514;
	Mon, 15 Jul 2019 20:52:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1AF991BF29C
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 20:52:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 178DE87B05
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 20:52:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qlrf3MtpPyIz for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 20:52:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2930F87AC9
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 20:52:26 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id t14so8877987plr.11
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 13:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=kR4xbKeLkqzM5m4IkfGOvFM7+dvSxhNFEJ7oNVJrvqQ=;
 b=vRaErLWauN0PK2S1rhodMt5sJ3WgJaXgnY2tZZxt8XarHR9jtlCcHgwbau1887Ce6V
 wPwnxhzyeoa24uBZQy/lPcYwOxNYpnCjVZOAYrzllp8Jyldk5UMiNAkuK/5gILgpL7zT
 I/+OhYEkG4eAPKGLBzTMxMuui60/CxzsYA7S+G0SNSSHgkuqThYPYFSErYnVpHXbHOzs
 96nqyqsVFaFugyW+U8nFSigdHjuizyEtOxUb+POScUYS3z3JezDsjI6snDDWhsHxK8Bx
 GtaT0Zy5clHx4yrkJBeaMpdOrIW6qz1NzJ+5xML90nBEkDt+FTMB1wts3Bf9xRU/tdHX
 b0hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=kR4xbKeLkqzM5m4IkfGOvFM7+dvSxhNFEJ7oNVJrvqQ=;
 b=g52x24KLAJ5YmYf6+rMgx2QGMGYOvPvVJeofWXfFLsZjerWs5M1SPBjPanDWb3Q9cI
 WSsalxiA97nuLri7WrSwrr9kTCZ6CT9uVaF1avB6LZ+fwe2S073/zfgix6l8Q3sxl7U3
 J2TG9NGO9xUsLI8qVFtbErulzcihHBZXE8NtRnfpZOShHBDcsPasE8bKs8v6aewfhu1p
 uptdZxGdu+amfsvJhc4IwhOh/PCicYtWNQf6njjkKzP2LNFfeNRhonMgGRobuUchWAN9
 PncPITCFjtHua6+nA/nvCnT56IzwELA9MjAwzk81FiN44HlB+BvjQMQa8LA1ZfX0CNKU
 UBbw==
X-Gm-Message-State: APjAAAUzPhKOJlN0PGGYc4LwTfEP+WdFqnvWplVNJkLSh0vSieWuLkAT
 YzaY5wlgzMaaXFY32H0MzMo=
X-Google-Smtp-Source: APXvYqxEa3WgGh3U0Jn4/Smo82YSRjT7yS9UoqfVPVb6FVIPqlesr9mgxDqSMQvxauH1zQPJ8wmqLA==
X-Received: by 2002:a17:902:4c88:: with SMTP id
 b8mr31598648ple.29.1563223945760; 
 Mon, 15 Jul 2019 13:52:25 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.33])
 by smtp.gmail.com with ESMTPSA id 185sm22172155pfa.170.2019.07.15.13.52.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 13:52:25 -0700 (PDT)
Date: Tue, 16 Jul 2019 02:22:16 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: John Hubbard <jhubbard@nvidia.com>
Subject: Re: [PATCH] staging: kpc2000: Convert put_page() to put_user_page*()
Message-ID: <20190715205216.GD21161@bharath12345-Inspiron-5559>
References: <20190715195248.GA22495@bharath12345-Inspiron-5559>
 <2604fcd1-4829-d77e-9f7c-d4b731782ff9@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2604fcd1-4829-d77e-9f7c-d4b731782ff9@nvidia.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, jglisse@redhat.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 15, 2019 at 01:14:13PM -0700, John Hubbard wrote:
> On 7/15/19 12:52 PM, Bharath Vedartham wrote:
> > There have been issues with get_user_pages and filesystem writeback.
> > The issues are better described in [1].
> > =

> > The solution being proposed wants to keep track of gup_pinned pages whi=
ch will allow to take furthur steps to coordinate between subsystems using =
gup.
> > =

> > put_user_page() simply calls put_page inside for now. But the implement=
ation will change once all call sites of put_page() are converted.
> > =

> > I currently do not have the driver to test. Could I have some suggestio=
ns to test this code? The solution is currently implemented in [2] and
> > it would be great if we could apply the patch on top of [2] and run som=
e tests to check if any regressions occur.
> =

> Hi Bharath,
> =

> Process point: the above paragraph, and other meta-questions (about the p=
atch, rather than part of the patch) should be placed either after the "---=
", or in a cover letter (git-send-email --cover-letter). That way, the patc=
h itself is in a commit-able state.
> =

> One more below:
Will fix that in the next version. =

> > =

> > [1] https://lwn.net/Articles/753027/
> > [2] https://github.com/johnhubbard/linux/tree/gup_dma_core
> > =

> > Cc: Matt Sickler <Matt.Sickler@daktronics.com>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: J=E9r=F4me Glisse <jglisse@redhat.com>
> > Cc: Ira Weiny <ira.weiny@intel.com>
> > Cc: John Hubbard <jhubbard@nvidia.com>
> > Cc: linux-mm@kvack.org
> > Cc: devel@driverdev.osuosl.org
> > =

> > Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>
> > ---
> >  drivers/staging/kpc2000/kpc_dma/fileops.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> > =

> > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/stagin=
g/kpc2000/kpc_dma/fileops.c
> > index 6166587..82c70e6 100644
> > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > @@ -198,9 +198,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv=
, struct kiocb *kcb, unsigned
> >  	sg_free_table(&acd->sgt);
> >   err_dma_map_sg:
> >   err_alloc_sg_table:
> > -	for (i =3D 0 ; i < acd->page_count ; i++){
> > -		put_page(acd->user_pages[i]);
> > -	}
> > +	put_user_pages(acd->user_pages, acd->page_count);
> >   err_get_user_pages:
> >  	kfree(acd->user_pages);
> >   err_alloc_userpages:
> > @@ -229,9 +227,7 @@ void  transfer_complete_cb(struct aio_cb_data *acd,=
 size_t xfr_count, u32 flags)
> >  	=

> >  	dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ac=
d->ldev->dir);
> >  	=

> > -	for (i =3D 0 ; i < acd->page_count ; i++){
> > -		put_page(acd->user_pages[i]);
> > -	}
> > +	put_user_pages(acd->user_pages, acd->page_count);
> >  	=

> >  	sg_free_table(&acd->sgt);
> >  	=

> > =

> =

> Because this is a common pattern, and because the code here doesn't likel=
y need to set page dirty before the dma_unmap_sg call, I think the followin=
g would be better (it's untested), instead of the above diff hunk:
>
> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/=
kpc2000/kpc_dma/fileops.c
> index 48ca88bc6b0b..d486f9866449 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -211,16 +211,13 @@ void  transfer_complete_cb(struct aio_cb_data *acd,=
 size_t xfr_count, u32 flags)
>         BUG_ON(acd->ldev =3D=3D NULL);
>         BUG_ON(acd->ldev->pldev =3D=3D NULL);
>  =

> -       for (i =3D 0 ; i < acd->page_count ; i++) {
> -               if (!PageReserved(acd->user_pages[i])) {
> -                       set_page_dirty(acd->user_pages[i]);
> -               }
> -       }
> -
>         dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents=
, acd->ldev->dir);
>  =

>         for (i =3D 0 ; i < acd->page_count ; i++) {
> -               put_page(acd->user_pages[i]);
> +               if (!PageReserved(acd->user_pages[i])) {
> +                       put_user_pages_dirty(&acd->user_pages[i], 1);
> +               else
> +                       put_user_page(acd->user_pages[i]);
>         }
>  =

>         sg_free_table(&acd->sgt);
I had my doubts on this. This definitley needs to be looked at by the
driver author. =

> Assuming that you make those two changes, you can add:
> =

>     Reviewed-by: John Hubbard <jhubbard@nvidia.com>
Great!
> =

> thanks,
> -- =

> John Hubbard
> NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

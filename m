Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5712674CCD
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 13:18:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 34A54862C1;
	Thu, 25 Jul 2019 11:18:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sffj-WCwngVt; Thu, 25 Jul 2019 11:18:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 84C26861EE;
	Thu, 25 Jul 2019 11:18:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8915D1BF45A
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 11:18:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 844E3220C4
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 11:18:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PMM33uIJRE+S for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 11:18:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id B546E20350
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 11:18:43 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id u17so22882201pgi.6
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 04:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=1FbnKtI3LwQwgUsr/g3MUa9Py+KRgg38b6IrILFDUhU=;
 b=RiPttf3VULytvTV1gQCGGIofaH3cmMvvcLlShfvYsVeKFzWjG/kfl/UguNaNy7/Dfo
 FVmH2PIQAE2iC69ldXu5sNi9yS2z2PuKCOKbuswCunkNuJwrNoEzBk2cOmbgVNaQZsql
 vWiZsd67ciYl95JIzgVUAExNBHZtC8mivPnxWK78M7nMNjVgpYOHWMOxtXNNo0v9cqC2
 r/T/+iTbpnJX5k7uurmQUrJ54neQWBfYxzH6kvGeSJ+H2ILyhbfMSTjrInxG6dRzsZPQ
 t9CzL6qva/lkcI8XGhVlO+HAbtcciB4SanHFtxVMYgiTsIzVps4/IUCTGBW581LK8m7v
 GkAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=1FbnKtI3LwQwgUsr/g3MUa9Py+KRgg38b6IrILFDUhU=;
 b=K11O1xaJrzgZURv5b3VFvBTSvhQqdbaX6ULOYFRV2QlYrSIUd8UHPbn5w3IGSFbqrc
 LgJ/CopGC5Z5/rMrD5nHUw6+vxSLzwYrNme6TycGMiGF7E5pXtNti3SisQkVPrJe5E65
 R8Y9MyRITAOTR5X5+xaRCbkaErcEZo280tvXrSranBn9VLOv8hLGw3ChtBFEAwfJRumF
 CyUTa3yXvVlfNx3vqlQ57gFftfMcdmbH5adL1N4AhN3mCsHBCYDxGOXvI8fXekqIAKTu
 vst+KxIZEIP7hYMV8kc49QIRw+5Aeu5kZ44IABQZkEkM/TEF+KsR7tGkn5z9/ON10woO
 zNyw==
X-Gm-Message-State: APjAAAX5nPX0bb4ADWdus8z8I4/mcovxvKKqm4qIjb+3abWlGN122XAt
 dH4KWkkAVv0/DOyX+KtmxUg=
X-Google-Smtp-Source: APXvYqwWrdl5FJRCm09CQlypUGpElLXPTtXQhNRGvN4DIQ3ybEer3KGwJh1GSg+qHIHbIRJ+x3Bfug==
X-Received: by 2002:a63:121b:: with SMTP id h27mr70608971pgl.335.1564053523202; 
 Thu, 25 Jul 2019 04:18:43 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.34])
 by smtp.gmail.com with ESMTPSA id s15sm48874992pfd.183.2019.07.25.04.18.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 04:18:42 -0700 (PDT)
Date: Thu, 25 Jul 2019 16:48:35 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4] staging: kpc2000: Convert put_page to put_user_page*()
Message-ID: <20190725111834.GA12517@bharath12345-Inspiron-5559>
References: <20190720173214.GA4250@bharath12345-Inspiron-5559>
 <20190725074634.GB15090@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725074634.GB15090@kroah.com>
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
Cc: devel@driverdev.osuosl.org, jhubbard@nvidia.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, jglisse@redhat.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 25, 2019 at 09:46:34AM +0200, Greg KH wrote:
> On Sat, Jul 20, 2019 at 11:02:14PM +0530, Bharath Vedartham wrote:
> > For pages that were retained via get_user_pages*(), release those pages
> > via the new put_user_page*() routines, instead of via put_page().
> > =

> > This is part a tree-wide conversion, as described in commit fc1d8e7cca2=
d ("mm: introduce put_user_page*(), placeholder versions").
> =

> Please line-wrap this line.
> =

> > =

> > Cc: Ira Weiny <ira.weiny@intel.com>
> > Cc: John Hubbard <jhubbard@nvidia.com>
> > Cc: J=E9r=F4me Glisse <jglisse@redhat.com>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: Matt Sickler <Matt.Sickler@daktronics.com>
> > Cc: devel@driverdev.osuosl.org
> > Cc: linux-kernel@vger.kernel.org
> > Cc: linux-mm@kvack.org
> > Reviewed-by: John Hubbard <jhubbard@nvidia.com>
> > Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>
> > ---
> > Changes since v1
> >        - Improved changelog by John's suggestion.
> >        - Moved logic to dirty pages below sg_dma_unmap
> >        and removed PageReserved check.
> > Changes since v2
> >        - Added back PageResevered check as suggested by John Hubbard.
> > Changes since v3
> >        - Changed the commit log as suggested by John.
> >        - Added John's Reviewed-By tag
> > =

> > ---
> >  drivers/staging/kpc2000/kpc_dma/fileops.c | 17 ++++++-----------
> >  1 file changed, 6 insertions(+), 11 deletions(-)
> > =

> > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/stagin=
g/kpc2000/kpc_dma/fileops.c
> > index 6166587..75ad263 100644
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
> > @@ -221,16 +219,13 @@ void  transfer_complete_cb(struct aio_cb_data *ac=
d, size_t xfr_count, u32 flags)
> >  	=

> >  	dev_dbg(&acd->ldev->pldev->dev, "transfer_complete_cb(acd =3D [%p])\n=
", acd);
> >  	=

> > -	for (i =3D 0 ; i < acd->page_count ; i++){
> > -		if (!PageReserved(acd->user_pages[i])){
> > -			set_page_dirty(acd->user_pages[i]);
> > -		}
> > -	}
> > -	=

> >  	dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ac=
d->ldev->dir);
> >  	=

> > -	for (i =3D 0 ; i < acd->page_count ; i++){
> > -		put_page(acd->user_pages[i]);
> > +	for (i =3D 0; i < acd->page_count; i++) {
> > +		if (!PageReserved(acd->user_pages[i]))
> > +			put_user_pages_dirty(&acd->user_pages[i], 1);
> > +		else
> > +			put_user_page(acd->user_pages[i]);
> >  	}
> >  	=

> >  	sg_free_table(&acd->sgt);
> > -- =

> > 2.7.4
> =

> This patch can not be applied at all :(
> =

> Can you redo it against the latest staging-next branch and resend?
> =

> thanks,
Yup. Will do that!
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

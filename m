Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 235B26F02A
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Jul 2019 19:23:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0A42585BCF;
	Sat, 20 Jul 2019 17:23:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g1h7YMj6NZnf; Sat, 20 Jul 2019 17:23:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C91CA85773;
	Sat, 20 Jul 2019 17:23:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6ED331BF33D
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2019 17:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6C680204B0
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2019 17:23:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eb+JBdnHQH6j for <devel@linuxdriverproject.org>;
 Sat, 20 Jul 2019 17:23:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 4A3C320496
 for <devel@driverdev.osuosl.org>; Sat, 20 Jul 2019 17:23:19 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id 4so10156136pld.10
 for <devel@driverdev.osuosl.org>; Sat, 20 Jul 2019 10:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=txlmNAr+NwP/f9mdJ1YbslIVZwuCfLJ/aWnHfkbj/ng=;
 b=isL+NyTlYKatZjFTLLfqQMg0bH6Qo/HekdDHYYQyy0/3Z0BEB0Lni/tM/zgCffMTlo
 pp/fcwL0AJmBktORv2+a/dWw5bi/ZETD8tcYWw67bseE2wutp+fHY4+hti+Bgw7FifTh
 rar99b/E/YQMC2gbksQ7RFRuIx155d42kI6PFFlV+5TbuSeMN2VeW9IDbCazpJGXdzjT
 YivtETGegS1Z8Qn5VSd3eoXoy4mVaDA7KLtQGo13DVqD2QgZKlSeFvfeH2DSOdHPVNF+
 sYwhOLHeauEvyz1vdFoxINz7om4yaMsaR+zpyaMjSw3X60I5xZjOG6eKMxltWJ1PaGWe
 yOwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=txlmNAr+NwP/f9mdJ1YbslIVZwuCfLJ/aWnHfkbj/ng=;
 b=FAaST9ZkFlkvsZsg1AQhksXQXQ47YRzRB33iHl+XErQpQOAfnk9oOINmooJZpEY0vi
 ICl0z44OM5RioyBlPFuCSs4gzrVQflndeM07B7HdqXnz+WZ4LfbhMZuDrHNPyeXLoUGs
 SAspA0QBHHaa6Y0KV9cLtQcAmkviby0Era4jdPuHT0kzXrQfduhAPrLbeOFWOcVEdOW2
 19Vnz63f6Z7i+1TLTxN/aFn3JD8yuRmjssImk8FWoWJ62w5TKrlewgg3rDYonroD42y1
 Jp0NPP5A8HFzYl1q7EcJWAFI37qaKN38FFtiHYyaSFqsrSkqytsJpJ6+1n3EYC+uI95m
 yp6A==
X-Gm-Message-State: APjAAAWbKvkqI2r2b1Ev8BPlxd8phFc1G3ewN1wAnW0/ZekLsCU3JfRB
 xVtu2/STip+TgnbYuX6wULw=
X-Google-Smtp-Source: APXvYqwCl+0p4loNmBy9AS8aE4DKp7ExSSZ0OLYl/twU5R0/mvD/0nbRoJXX34M2Lb+/fuCT11r6Qg==
X-Received: by 2002:a17:902:e306:: with SMTP id
 cg6mr64062158plb.263.1563643398778; 
 Sat, 20 Jul 2019 10:23:18 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.34])
 by smtp.gmail.com with ESMTPSA id q63sm46216384pfb.81.2019.07.20.10.23.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 20 Jul 2019 10:23:18 -0700 (PDT)
Date: Sat, 20 Jul 2019 22:53:11 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: John Hubbard <jhubbard@nvidia.com>
Subject: Re: [PATCH v3] staging: kpc2000: Convert put_page to put_user_page*()
Message-ID: <20190720172310.GA3728@bharath12345-Inspiron-5559>
References: <20190719200235.GA16122@bharath12345-Inspiron-5559>
 <8bce5bb2-d9a5-13f1-7d96-27c41057c519@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8bce5bb2-d9a5-13f1-7d96-27c41057c519@nvidia.com>
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

On Fri, Jul 19, 2019 at 02:28:39PM -0700, John Hubbard wrote:
> On 7/19/19 1:02 PM, Bharath Vedartham wrote:
> > There have been issues with coordination of various subsystems using
> > get_user_pages. These issues are better described in [1].
> > =

> > An implementation of tracking get_user_pages is currently underway
> > The implementation requires the use put_user_page*() variants to release
> > a reference rather than put_page(). The commit that introduced
> > put_user_pages, Commit fc1d8e7cca2daa18d2fe56b94874848adf89d7f5 ("mm: i=
ntroduce
> > put_user_page*(), placeholder version").
> > =

> > The implementation currently simply calls put_page() within
> > put_user_page(). But in the future, it is to change to add a mechanism
> > to keep track of get_user_pages. Once a tracking mechanism is
> > implemented, we can make attempts to work on improving on coordination
> > between various subsystems using get_user_pages.
> > =

> > [1] https://lwn.net/Articles/753027/
> =

> Optional: I've been fussing about how to keep the change log reasonable,
> and finally came up with the following recommended template for these =

> conversion patches. This would replace the text you have above, because t=
he =

> put_user_page placeholder commit has all the documentation (and then some=
) =

> that we need:
> =

> =

> For pages that were retained via get_user_pages*(), release those pages
> via the new put_user_page*() routines, instead of via put_page().
> =

> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
> ("mm: introduce put_user_page*(), placeholder versions").
Great then, I ll send another patch with the updated changelog.
> =

> For the change itself, you will need to rebase it onto the latest =

> linux.git, as it doesn't quite apply there. =

> =

> Testing is good if we can get it, but as far as I can tell this is
> correct, so you can also add:
> =

>     Reviewed-by: John Hubbard <jhubbard@nvidia.com>
Thanks! =

> thanks,
> -- =

> John Hubbard
> NVIDIA
>
> > =

> > Cc: Ira Weiny <ira.weiny@intel.com>
> > Cc: John Hubbard <jhubbard@nvidia.com>
> > Cc: J=E9r=F4me Glisse <jglisse@redhat.com>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: Matt Sickler <Matt.Sickler@daktronics.com>
> > Cc: devel@driverdev.osuosl.org =

> > Cc: linux-kernel@vger.kernel.org
> > Cc: linux-mm@kvack.org
> > Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>
> > ---
> > Changes since v1
> > 	- Improved changelog by John's suggestion.
> > 	- Moved logic to dirty pages below sg_dma_unmap
> > 	and removed PageReserved check.
> > Changes since v2
> > 	- Added back PageResevered check as suggested by John Hubbard.
> > 	=

> > The PageReserved check needs a closer look and is not worth messing
> > around with for now.
> > =

> > Matt, Could you give any suggestions for testing this patch?
> >     =

> > If in-case, you are willing to pick this up to test. Could you
> > apply this patch to this tree
> > https://github.com/johnhubbard/linux/tree/gup_dma_core
> > and test it with your devices?
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
> > =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E13BF74869
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 09:46:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4D5B5860FC;
	Thu, 25 Jul 2019 07:46:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U2vANdeG5FO9; Thu, 25 Jul 2019 07:46:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 90A2B83668;
	Thu, 25 Jul 2019 07:46:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B26AE1BF4D6
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 07:46:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AEEF4861F4
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 07:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Bx5eF2ZE0lt for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 07:46:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1ADFB861A3
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 07:46:38 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 727952081B;
 Thu, 25 Jul 2019 07:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564040797;
 bh=4UcEQNmlJvi9gGhfQJufu+mVSE9Yfv6XMx4Zl1E3xJc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=velcbiV1Wy/WrI//kr6s+Z4iop+NiwHmNkPl/NPAOSBXjfLXcnUF03lIE5FQ+nGOl
 Zm1qmFvGNR0CqIiByLLBJjaGlw86qt4T/3foSXAIO80HGhsLDLYxragd68iJeRVWg0
 e/VP1qAQVs9nypLg06ZnCBFTK5hbGnoJo/MMwtS8=
Date: Thu, 25 Jul 2019 09:46:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Bharath Vedartham <linux.bhar@gmail.com>
Subject: Re: [PATCH v4] staging: kpc2000: Convert put_page to put_user_page*()
Message-ID: <20190725074634.GB15090@kroah.com>
References: <20190720173214.GA4250@bharath12345-Inspiron-5559>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190720173214.GA4250@bharath12345-Inspiron-5559>
User-Agent: Mutt/1.12.1 (2019-06-15)
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

On Sat, Jul 20, 2019 at 11:02:14PM +0530, Bharath Vedartham wrote:
> For pages that were retained via get_user_pages*(), release those pages
> via the new put_user_page*() routines, instead of via put_page().
> =

> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d =
("mm: introduce put_user_page*(), placeholder versions").

Please line-wrap this line.

> =

> Cc: Ira Weiny <ira.weiny@intel.com>
> Cc: John Hubbard <jhubbard@nvidia.com>
> Cc: J=E9r=F4me Glisse <jglisse@redhat.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Matt Sickler <Matt.Sickler@daktronics.com>
> Cc: devel@driverdev.osuosl.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-mm@kvack.org
> Reviewed-by: John Hubbard <jhubbard@nvidia.com>
> Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>
> ---
> Changes since v1
>        - Improved changelog by John's suggestion.
>        - Moved logic to dirty pages below sg_dma_unmap
>        and removed PageReserved check.
> Changes since v2
>        - Added back PageResevered check as suggested by John Hubbard.
> Changes since v3
>        - Changed the commit log as suggested by John.
>        - Added John's Reviewed-By tag
> =

> ---
>  drivers/staging/kpc2000/kpc_dma/fileops.c | 17 ++++++-----------
>  1 file changed, 6 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/=
kpc2000/kpc_dma/fileops.c
> index 6166587..75ad263 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -198,9 +198,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv, =
struct kiocb *kcb, unsigned
>  	sg_free_table(&acd->sgt);
>   err_dma_map_sg:
>   err_alloc_sg_table:
> -	for (i =3D 0 ; i < acd->page_count ; i++){
> -		put_page(acd->user_pages[i]);
> -	}
> +	put_user_pages(acd->user_pages, acd->page_count);
>   err_get_user_pages:
>  	kfree(acd->user_pages);
>   err_alloc_userpages:
> @@ -221,16 +219,13 @@ void  transfer_complete_cb(struct aio_cb_data *acd,=
 size_t xfr_count, u32 flags)
>  	=

>  	dev_dbg(&acd->ldev->pldev->dev, "transfer_complete_cb(acd =3D [%p])\n",=
 acd);
>  	=

> -	for (i =3D 0 ; i < acd->page_count ; i++){
> -		if (!PageReserved(acd->user_pages[i])){
> -			set_page_dirty(acd->user_pages[i]);
> -		}
> -	}
> -	=

>  	dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd-=
>ldev->dir);
>  	=

> -	for (i =3D 0 ; i < acd->page_count ; i++){
> -		put_page(acd->user_pages[i]);
> +	for (i =3D 0; i < acd->page_count; i++) {
> +		if (!PageReserved(acd->user_pages[i]))
> +			put_user_pages_dirty(&acd->user_pages[i], 1);
> +		else
> +			put_user_page(acd->user_pages[i]);
>  	}
>  	=

>  	sg_free_table(&acd->sgt);
> -- =

> 2.7.4

This patch can not be applied at all :(

Can you redo it against the latest staging-next branch and resend?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

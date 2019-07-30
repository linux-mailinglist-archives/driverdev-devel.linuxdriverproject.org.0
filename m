Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B21B17A421
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jul 2019 11:29:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8270284E97;
	Tue, 30 Jul 2019 09:28:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nzd5UG+oI5qh; Tue, 30 Jul 2019 09:28:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E689E84763;
	Tue, 30 Jul 2019 09:28:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F221E1BF287
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 09:28:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E8F18811C3
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 09:28:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y43PgmR8M+sm for <devel@linuxdriverproject.org>;
 Tue, 30 Jul 2019 09:28:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2BBD680A50
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2019 09:28:52 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id t14so28635335plr.11
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2019 02:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=YuvsEbvLeu9gpGlnWN7D2YTCXaShfpJvy1rRpc/g3Gw=;
 b=W1+dT3FF153FvLmzoTVoZurqL3wtEb4gbI7pQA4NaeHwdA4jHLKXe/Y8AHo8GYMJJc
 FwYJwg+yfou7K8KVWBENyT27o41tc/NVPcWSnwtIjj7v1Elu/QZgVxi/WXMXzfCszk1P
 5MHRR/kHw3x8mDFbR8KEdbTUQ7u12A5LuEYutVQ2gWN6Aw+eDQBCjGh49nhPm49xAO29
 CK9UE/Kpx5xt2tNdczt1sFwipf2fPEhP+WTy8uAUDZC3g3h8aWQ3pQ3Pv2nZH87dq72n
 cXeqbo7zQRhHI1DBciVPgd39acSyhjfhEH3ggZz9a4MbBwfdvZ9n4R0VAXyPirTFAadh
 mxKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=YuvsEbvLeu9gpGlnWN7D2YTCXaShfpJvy1rRpc/g3Gw=;
 b=G4q/HGWDbTOR6KBHYVRtSGlsL0ct0jWMfx5s7vl87RMNKrbHoznslm/5ypjfR5DWg1
 jbpUQzRwpSfsOOTniU1HIAHDU7x3EOkyvr04ve+Py1tP187OQth4cEoTDUt+Ct9hw6Ar
 dqpddrxdjCvwWpPLl0L5Z7rgXzkLtkCmEe8AQ4onQBCN06Pvf/g6oQ7FOvjHp6/8Qeg0
 PxLUysBYMQFCEe0oAdkG/HKC8bMlme9fjauRhAhE2nbE8IWxUyBw2PHZmH6BLJcKsZ1e
 3JOnXfig8LPWnkF4F6F5fGpQ48izXjGpImk+3lAv/FjeZo7M6sqlsvWb2N4t7yKD+G6f
 VCeg==
X-Gm-Message-State: APjAAAWkVV/TbfQ01MHQFmVJM1yQx3K/LriwLnzVeEPSuPGjgRnamB/q
 8dNjn3X/OUbkuU5thxHc1D4=
X-Google-Smtp-Source: APXvYqxOaGD4tc0XVSmbTm2kbit39tXgiR323mk2jyG0N6edIIeiUIciSLvziX46b8Be1tKtESIWBw==
X-Received: by 2002:a17:902:2baa:: with SMTP id
 l39mr115483897plb.280.1564478931663; 
 Tue, 30 Jul 2019 02:28:51 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.33])
 by smtp.gmail.com with ESMTPSA id f3sm102458535pfg.165.2019.07.30.02.28.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 02:28:51 -0700 (PDT)
Date: Tue, 30 Jul 2019 14:58:44 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: gregkh@linuxfoundation.org, Matt.Sickler@daktronics.com
Subject: Re: [Linux-kernel-mentees][PATCH v4] staging: kpc2000: Convert
 put_page to put_user_page*()
Message-ID: <20190730092843.GA5150@bharath12345-Inspiron-5559>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, John Hubbard <jhubbard@nvidia.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

put_page() to put_user_page*()
Reply-To: =

In-Reply-To: <1564058658-3551-1-git-send-email-linux.bhar@gmail.com>

On Thu, Jul 25, 2019 at 06:14:18PM +0530, Bharath Vedartham wrote:
[Forwarding patch to linux-kernel-mentees mailing list]
> For pages that were retained via get_user_pages*(), release those pages
> via the new put_user_page*() routines, instead of via put_page().
> =

> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
> ("mm: introduce put_user_page*(), placeholder versions").
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
>         - Improved changelog by John's suggestion.
>         - Moved logic to dirty pages below sg_dma_unmap
>          and removed PageReserved check.
> Changes since v2
>         - Added back PageResevered check as
>         suggested by John Hubbard.
> Changes since v3
>         - Changed the changelog as suggested by John.
>         - Added John's Reviewed-By tag.
> Changes since v4
>         - Rebased the patch on the staging tree.
>         - Improved commit log by fixing a line wrap.
> ---
>  drivers/staging/kpc2000/kpc_dma/fileops.c | 17 ++++++-----------
>  1 file changed, 6 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/=
kpc2000/kpc_dma/fileops.c
> index 48ca88b..f15e292 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -190,9 +190,7 @@ static int kpc_dma_transfer(struct dev_private_data *=
priv,
>  	sg_free_table(&acd->sgt);
>   err_dma_map_sg:
>   err_alloc_sg_table:
> -	for (i =3D 0 ; i < acd->page_count ; i++) {
> -		put_page(acd->user_pages[i]);
> -	}
> +	put_user_pages(acd->user_pages, acd->page_count);
>   err_get_user_pages:
>  	kfree(acd->user_pages);
>   err_alloc_userpages:
> @@ -211,16 +209,13 @@ void  transfer_complete_cb(struct aio_cb_data *acd,=
 size_t xfr_count, u32 flags)
>  	BUG_ON(acd->ldev =3D=3D NULL);
>  	BUG_ON(acd->ldev->pldev =3D=3D NULL);
>  =

> -	for (i =3D 0 ; i < acd->page_count ; i++) {
> -		if (!PageReserved(acd->user_pages[i])) {
> -			set_page_dirty(acd->user_pages[i]);
> -		}
> -	}
> -
>  	dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd-=
>ldev->dir);
>  =

> -	for (i =3D 0 ; i < acd->page_count ; i++) {
> -		put_page(acd->user_pages[i]);
> +	for (i =3D 0; i < acd->page_count; i++) {
> +		if (!PageReserved(acd->user_pages[i]))
> +			put_user_pages_dirty(&acd->user_pages[i], 1);
> +		else
> +			put_user_page(acd->user_pages[i]);
>  	}
>  =

>  	sg_free_table(&acd->sgt);
> -- =

> 2.7.4
> =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

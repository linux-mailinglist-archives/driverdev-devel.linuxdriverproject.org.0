Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F1C37492
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 14:55:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 207A6204D7;
	Thu,  6 Jun 2019 12:55:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y4tFFWO+63AN; Thu,  6 Jun 2019 12:55:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D617C204CC;
	Thu,  6 Jun 2019 12:55:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A4A081BF287
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 12:55:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A1D5A860B0
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 12:55:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VqvQb5FehbZ2 for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 12:55:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E0EFF86079
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 12:55:52 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41CF12070B;
 Thu,  6 Jun 2019 12:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559825752;
 bh=1hbBwnqN56Y/JMha8383D60Ivnk7r8lWw9qY3990Jx8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kQpFEkxj1lVEGqH1VbTPjTunTeW0nCtQANi+nuicZUsJauqdNJ6LrfBOvY7TIppIY
 0eCdtd/Z5WQjDDJRHCCBROkGkflZjOXduAveM+IdB/jZIqUSAzd2U2Hr64J1rhzKo1
 vqvI2Y6bl8KdcfE2ZsuiXyq89F78+22vSWcLE70k=
Date: Thu, 6 Jun 2019 14:55:50 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Subject: Re: [PATCH 4/7] staging: kpc2000: use __func__ in debug messages in
 core.c
Message-ID: <20190606125550.GA11929@kroah.com>
References: <20190603222916.20698-1-simon@nikanor.nu>
 <20190603222916.20698-5-simon@nikanor.nu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603222916.20698-5-simon@nikanor.nu>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 04, 2019 at 12:29:13AM +0200, Simon Sandstr=F6m wrote:
> Fixes checkpatch.pl warning "Prefer using '"%s...", __func__' to using
> '<function name>', this function's name, in a string".
> =

> Signed-off-by: Simon Sandstr=F6m <simon@nikanor.nu>
> ---
>  drivers/staging/kpc2000/kpc2000/core.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc=
2000/kpc2000/core.c
> index a70665a202c3..6d4fc1f37c9f 100644
> --- a/drivers/staging/kpc2000/kpc2000/core.c
> +++ b/drivers/staging/kpc2000/kpc2000/core.c
> @@ -312,8 +312,8 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
>  	unsigned long dma_bar_phys_len;
>  	u16 regval;
>  =

> -	dev_dbg(&pdev->dev, "kp2000_pcie_probe(pdev =3D [%p], id =3D [%p])\n",
> -		pdev, id);
> +	dev_dbg(&pdev->dev, "%s(pdev =3D [%p], id =3D [%p])\n",
> +		__func__, pdev, id);

debugging lines that say "called this function!" can all be removed, as
we have ftrace in the kernel tree, we can use that instead.  I'll take
this, but feel free to clean them up as follow-on patches.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

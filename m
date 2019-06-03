Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3B632F5D
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 14:16:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 589488602E;
	Mon,  3 Jun 2019 12:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ugMvMcDlgdHs; Mon,  3 Jun 2019 12:16:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 166A5846C0;
	Mon,  3 Jun 2019 12:16:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F0811BF4E6
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8B8B8220D0
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z6zLQkUURTrW for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:16:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E717D220CE
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 12:16:45 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3DBB8280C0;
 Mon,  3 Jun 2019 12:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559564205;
 bh=wulgFJ3+yhHuyD9dxZ/TbsHdJm7qURFTPLhJyoQxgw0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GbX3eLZzOyim2Gyqv5jHF5jIvDinNpRiZiEfETW6gw+ijDjYfdyRBe0n3kS2OEyGw
 8BhbmNSlhBrWU0h8ZyKGKlQUhNyJhC5217gPeVRJUoairtqivdjOlLLmFI+5CXAqao
 gx80KM8zMSRxHSL9g/LMFg2gVWMvwk2ARWFFO0jk=
Date: Mon, 3 Jun 2019 14:16:43 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geordan Neukum <gneukum1@gmail.com>
Subject: Re: [PATCH 5/5] staging: kpc2000: kpc_spi: use devm_* API to manage
 mapped I/O space
Message-ID: <20190603121643.GA25274@kroah.com>
References: <cover.1559488571.git.gneukum1@gmail.com>
 <ea222a6da192a4eb0ba9c8c840843f240f414092.1559488571.git.gneukum1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ea222a6da192a4eb0ba9c8c840843f240f414092.1559488571.git.gneukum1@gmail.com>
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 Mao Wenan <maowenan@huawei.com>, linux-kernel@vger.kernel.org,
 Nathan Chancellor <natechancellor@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jun 02, 2019 at 03:58:37PM +0000, Geordan Neukum wrote:
> The kpc_spi driver does not unmap its I/O space upon error cases in the
> probe() function or upon remove(). Make the driver clean up after itself
> more maintainably by migrating to using the managed resource API.
> 
> Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc2000_spi.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
> index b513432a26ed..32d3ec532e26 100644
> --- a/drivers/staging/kpc2000/kpc2000_spi.c
> +++ b/drivers/staging/kpc2000/kpc2000_spi.c
> @@ -471,7 +471,8 @@ kp_spi_probe(struct platform_device *pldev)
>  		goto free_master;
>  	}
>  
> -	kpspi->phys = (unsigned long)ioremap_nocache(r->start, resource_size(r));
> +	kpspi->phys = (unsigned long)devm_ioremap_nocache(&pldev->dev, r->start,
> +							  resource_size(r));

Why is this being cast?  This should just be an __iomem *, right?

>  	kpspi->base = (u64 __iomem *)kpspi->phys;

Then that cast will go away :)

Anyway, something for a future patch, this one is fine, thanks.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

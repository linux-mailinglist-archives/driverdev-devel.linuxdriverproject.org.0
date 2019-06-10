Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1B43B899
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 17:54:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 860C685C3A;
	Mon, 10 Jun 2019 15:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sPvaznhUJ1hq; Mon, 10 Jun 2019 15:53:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0F76A848AF;
	Mon, 10 Jun 2019 15:53:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CAE381BF399
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 15:53:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C6F3E8552C
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 15:53:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FInB8LZVC4YL for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 15:53:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 02AB9848AF
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 15:53:55 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4ACD420645;
 Mon, 10 Jun 2019 15:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560182035;
 bh=4W6Nt16tphtwfAcKAZlJERziP8u5p6yOKFV68SN31Es=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BS1gCusyv8EmoV7aiisMi8RgHFTjIFh8aKsT7oYXa2FR86aGXy+mdQ68lAO12MtD0
 hg8qcqw6exz+r4ZURYMnEBIbcfpT6sJRBdSXeE9NAS+lLlH/BdCYmV2WWufTILELCu
 EQk2scI1axvLBxh5i+ZPR+Z87NyIgmnmDHeDEp30=
Date: Mon, 10 Jun 2019 17:53:53 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Rishiraj Manwatkar <manwatkar@outlook.com>
Subject: Re: [PATCH] staging: kpc2000: To make symbols static
Message-ID: <20190610155353.GA30019@kroah.com>
References: <VE1PR09MB3168ADAF43CC85CC05D06384A4130@VE1PR09MB3168.eurprd09.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR09MB3168ADAF43CC85CC05D06384A4130@VE1PR09MB3168.eurprd09.prod.outlook.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "bnvandana@gmail.com" <bnvandana@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 10, 2019 at 05:50:01AM +0000, Rishiraj Manwatkar wrote:
> This patch makes 4 symbols static as suggested by Sparse tool.
> 
> Signed-off-by: Rishiraj Manwatkar <manwatkar@outlook.com>

Your subject line is very odd, what does that really mean?

> ---
>  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> index cda057569163..e4056607af0b 100644
> --- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> +++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> @@ -36,14 +36,14 @@ struct kpc_dma_device *kpc_dma_lookup_device(int minor)
>  	return c;
>  }
>  
> -void  kpc_dma_add_device(struct kpc_dma_device *ldev)
> +static void  kpc_dma_add_device(struct kpc_dma_device *ldev)

This patch does not apply to my latest tree, can you rebase it against
the staging-next branch of staging.git on git.kernel.org and resend?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

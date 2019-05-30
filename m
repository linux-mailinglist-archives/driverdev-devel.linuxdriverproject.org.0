Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B545930416
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:19:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A75A78848A;
	Thu, 30 May 2019 21:19:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U6yShHq3Q-R7; Thu, 30 May 2019 21:19:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3EBBE881F9;
	Thu, 30 May 2019 21:19:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 511981BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4DC4A203E3
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jtO03bVJlUQ0 for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:19:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id AF1BC203E0
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:19:50 +0000 (UTC)
Received: from localhost (unknown [207.225.69.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F2FA261B4;
 Thu, 30 May 2019 21:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559251190;
 bh=KPLvi7aKrEe9JKGxQxgytaIYXMiDco5OH8C4sQ4Vb9E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R65oNxcK4J9aIWqT2wTj2zbnoMZaRELxeBGWkFrsU0iypHtacW3ti88aMrtNBVxGO
 hy8BYGtkTTvW3DLjhP98FfllwefSPAVHzcuvYfF0P1JAshmqk749cpUWw9vfud2IxL
 hjLCn9gIYRXLk8dFWVZS2Hcx3FbKGj5NDFdoWE3A=
Date: Thu, 30 May 2019 14:19:50 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] staging: kpc2000: Fix build failure caused by wrong
 include file
Message-ID: <20190530211950.GA17581@kroah.com>
References: <1559216022-644-1-git-send-email-linux@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559216022-644-1-git-send-email-linux@roeck-us.net>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 30, 2019 at 04:33:42AM -0700, Guenter Roeck wrote:
> xtensa:allmodconfig fails to build.
> 
> arch/xtensa/include/asm/uaccess.h: In function 'clear_user':
> arch/xtensa/include/asm/uaccess.h:40:22: error:
> 	implicit declaration of function 'uaccess_kernel'
> 
> uaccess_kernel() is declared in linux/uaccess.h, not asm/uaccess.h.
> 
> Fixes: 7df95299b94a ("staging: kpc2000: Add DMA driver")
> Cc: Matt Sickler <Matt.Sickler@daktronics.com>
> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
> ---
>  drivers/staging/kpc2000/kpc_dma/fileops.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> index 5741d2b49a7d..e741fa753ca1 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -8,7 +8,7 @@
>  #include <linux/errno.h>    /* error codes */
>  #include <linux/types.h>    /* size_t */
>  #include <linux/cdev.h>
> -#include <asm/uaccess.h>    /* copy_*_user */
> +#include <linux/uaccess.h>    /* copy_*_user */
>  #include <linux/aio.h>      /* aio stuff */
>  #include <linux/highmem.h>
>  #include <linux/pagemap.h>

Already fixed by e00839f38823 ("staging: kpc2000: fix build error on
xtensa") in my staging-linus branch.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

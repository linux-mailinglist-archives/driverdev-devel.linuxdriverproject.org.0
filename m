Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7250A7485E
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 09:45:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 39F43220C4;
	Thu, 25 Jul 2019 07:45:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UYQ0POTOunDV; Thu, 25 Jul 2019 07:45:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8B0F122049;
	Thu, 25 Jul 2019 07:45:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 247981BF4D6
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 07:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1E20220492
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 07:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cpvtoVlv6tZl for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 07:45:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id D37F020420
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 07:45:10 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36067218F0;
 Thu, 25 Jul 2019 07:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564040710;
 bh=4d4wFnMkYJqkZ8QvmsNAcdLlP9iQNxnOeI7LmYCX3DY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZMONLicxnalE+3iPFx+MZnesFcmWR/qTAd5VfcOQd3n0EdQGCatNI8vUA2/CzP5H5
 xf7rWP9XW3rYdjaWIeO6vE2TuPPBNXQnfTF+AA659mI+KF3VmjToLxVZhPasjWqrqS
 K6Qzyk/FfrMvzNXuS5jFbgUMGCD3Ksp4n9whIwec=
Date: Thu, 25 Jul 2019 09:45:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Karen Palacio <karen.palacio.1994@gmail.com>
Subject: Re: [PATCH] v3: staging: erofs: fix typo
Message-ID: <20190725074508.GA15090@kroah.com>
References: <1563394279-6719-1-git-send-email-karen.palacio.1994@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563394279-6719-1-git-send-email-karen.palacio.1994@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org, yucha0@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 17, 2019 at 05:11:19PM -0300, Karen Palacio wrote:
> Fix typo in Kconfig
> 
> Signed-off-by: Karen Palacio <karen.palacio.1994@gmail.com>
> Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>
> Reviewed-by: Chao Yu <yuchao0@huawei.com>
> 
> diff --git a/drivers/staging/erofs/Kconfig b/drivers/staging/erofs/Kconfig
> index d04b798..0dcefac 100644
> --- a/drivers/staging/erofs/Kconfig
> +++ b/drivers/staging/erofs/Kconfig
> @@ -88,7 +88,7 @@ config EROFS_FS_IO_MAX_RETRIES
>           If unsure, leave the default value (5 retries, 6 IOs at most).
> 
>  config EROFS_FS_ZIP
> -       bool "EROFS Data Compresssion Support"
> +       bool "EROFS Data Compression Support"
>         depends on EROFS_FS
>         select LZ4_DECOMPRESS
>         help
> ---
>  drivers/staging/erofs/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/erofs/Kconfig b/drivers/staging/erofs/Kconfig
> index d04b798..0dcefac 100644
> --- a/drivers/staging/erofs/Kconfig
> +++ b/drivers/staging/erofs/Kconfig
> @@ -88,7 +88,7 @@ config EROFS_FS_IO_MAX_RETRIES
>  	  If unsure, leave the default value (5 retries, 6 IOs at most).
>  
>  config EROFS_FS_ZIP
> -	bool "EROFS Data Compresssion Support"
> +	bool "EROFS Data Compression Support"
>  	depends on EROFS_FS
>  	select LZ4_DECOMPRESS
>  	help

Patch is corrupted and can not be applied.

There are also 2 copies of it here :(

Please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

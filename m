Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A74E6F77E3
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Nov 2019 16:40:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0CEA98666C;
	Mon, 11 Nov 2019 15:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xtatYX1S3cZ4; Mon, 11 Nov 2019 15:40:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 73EFD86582;
	Mon, 11 Nov 2019 15:40:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3BD641BF3D9
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 15:40:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3505787E81
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 15:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uZgMqGAuxvJJ for <devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 15:40:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 94E7A87E19
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 15:40:03 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E57D22196E;
 Mon, 11 Nov 2019 15:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573486803;
 bh=fIMS1YCPUO+d4NLi94WgM6DC/eRYtzSD8x7U2/QuiQs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Zp6k4XU7wY4KEfsrdTGJ3QbS7/ydrxCFaPi4ky5+hjFqCqymmtiKfH0BmU+dCixYv
 RV3rqMCVH8jycSEIfwUWOJbs2fn7eEECn9ITOX63fykqBS/dN5A5651lbCOvvjmC5V
 OqCGiNGZpFlBXgP9+VFeMf0IPc1FIgqEQM6zvOCg=
Date: Mon, 11 Nov 2019 16:40:01 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] staging/octeon: Fix test build on MIPS
Message-ID: <20191111154001.GA813474@kroah.com>
References: <20191110175620.20290-1-linux@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191110175620.20290-1-linux@roeck-us.net>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Nov 10, 2019 at 09:56:20AM -0800, Guenter Roeck wrote:
> mips:allmodconfig fails to build.
> 
> drivers/staging/octeon/ethernet-rx.c: In function 'cvm_oct_poll':
> drivers/staging/octeon/ethernet-defines.h:30:38: error:
> 	'CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE' undeclared
> 
> Octeon defines are only available if CONFIG_CPU_CAVIUM_OCTEON
> is enabled. Since the driver uses those defines, we have to use
> the dummy defines if this flag is not enabled.
> 
> Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
> Fixes: 171a9bae68c7 ("staging/octeon: Allow test build on !MIPS")
> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
> Cc: stable <stable@vger.kernel.org>
> ---
>  drivers/staging/octeon/octeon-ethernet.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/octeon/octeon-ethernet.h b/drivers/staging/octeon/octeon-ethernet.h
> index a8a864b40913..70848c6c86ec 100644
> --- a/drivers/staging/octeon/octeon-ethernet.h
> +++ b/drivers/staging/octeon/octeon-ethernet.h
> @@ -14,7 +14,7 @@
>  #include <linux/of.h>
>  #include <linux/phy.h>
>  
> -#ifdef CONFIG_MIPS
> +#ifdef CONFIG_CPU_CAVIUM_OCTEON
>  
>  #include <asm/octeon/octeon.h>
>  

Already in my tree, sorry for the delay, will show up in 5.5-rc1 and get
backported to 5.4.y

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

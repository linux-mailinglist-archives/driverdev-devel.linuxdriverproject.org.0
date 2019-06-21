Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F32F44E0B8
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 09:00:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B671486E69;
	Fri, 21 Jun 2019 07:00:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HXsBDlUm4vRx; Fri, 21 Jun 2019 07:00:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 817E586E32;
	Fri, 21 Jun 2019 07:00:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C9AA1BF2C8
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 07:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 89C2C87ED0
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 07:00:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cxg+anZcUA13 for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 07:00:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 30A6287D9C
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 07:00:41 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83D682083B;
 Fri, 21 Jun 2019 07:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561100441;
 bh=zClx4AqHl0gMIQrc/v1hyIHp40/LhtEQJ7h/y0NBjzw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wcmgNr6TnwvVuGRCXjGPEUoRO/6QLS6GBHc9NchMjTxgY6Ribxum5iIMRDNOVuBd0
 SeB9SdOdletFA5JbexgMIdmgP6KG1ANWR16iMEQAgDNEP6RQdWMZhscBYUqsZV/4nu
 sL+KjsZTxxeoMzDFX+PyacDvswzBQMb0TdTckrCg=
Date: Fri, 21 Jun 2019 09:00:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH] staging: ks7010: Fix build error
Message-ID: <20190621070038.GA3029@kroah.com>
References: <20190621034221.36708-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621034221.36708-1-yuehaibing@huawei.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 21, 2019 at 11:42:21AM +0800, YueHaibing wrote:
> when CRYPTO is m and KS7010 is y, building fails:
> 
> drivers/staging/ks7010/ks_hostif.o: In function `michael_mic.constprop.13':
> ks_hostif.c:(.text+0x560): undefined reference to `crypto_alloc_shash'
> ks_hostif.c:(.text+0x580): undefined reference to `crypto_shash_setkey'
> ks_hostif.c:(.text+0x5e0): undefined reference to `crypto_destroy_tfm'
> ks_hostif.c:(.text+0x614): undefined reference to `crypto_shash_update'
> ks_hostif.c:(.text+0x62c): undefined reference to `crypto_shash_update'
> ks_hostif.c:(.text+0x648): undefined reference to `crypto_shash_finup'
> 
> select CRYPTO and CRYPTO_HASH to fix this.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: 8b523f20417d ("staging: ks7010: removed custom Michael MIC implementation.")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/staging/ks7010/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/ks7010/Kconfig b/drivers/staging/ks7010/Kconfig
> index 0987fdc..6a20e64 100644
> --- a/drivers/staging/ks7010/Kconfig
> +++ b/drivers/staging/ks7010/Kconfig
> @@ -5,6 +5,8 @@ config KS7010
>  	select WIRELESS_EXT
>  	select WEXT_PRIV
>  	select FW_LOADER
> +	select CRYPTO
> +	select CRYPTO_HASH

selects are horrible.  can we do a depends on instead?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

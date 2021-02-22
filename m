Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF53F322127
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 22:14:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1135A80ED1;
	Mon, 22 Feb 2021 21:14:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KntHlBxqQY79; Mon, 22 Feb 2021 21:14:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BFC388567A;
	Mon, 22 Feb 2021 21:14:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 819111BF3F2
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 21:14:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7DF688574F
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 21:14:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xuAxQ9fXeKoF for <devel@linuxdriverproject.org>;
 Mon, 22 Feb 2021 21:14:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 29A7E8567A
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 21:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=uvvxHpxjpRDChkcLEuz/w9isIoe8ffoa8WKElKGpxLg=; b=qcVt3B5qUZhOe1+3Fvy1vUW2UW
 IGVigTv5c/u0qDQL+9cL1hKNSu+vEkrGr3Y+Gxti77SpQlOLYV9BpAf00AsbW5Zil8KzpfONvIraK
 eykqUElkB12/bQldmhoABtRYV+8LTL0OKUQuPbu/gSFotUUmKieWAfV9fV+1MRIueVV0opRokVPZw
 j9ht9zXLmbvunpixo080IqgEHTpV+eDExj14gnpz3qpqrariiuFWS1VpNcQM1dmiPwSN4glZT3XOE
 Wnvs+KDUdMYbxvcfN6nWztObuUBEu2JKqEYBCa5xtePF3wGEDNIgvkrsgr6sikFLCmMcht2ETBdAT
 VFPoZ+cQ==;
Received: from [2601:1c0:6280:3f0::d05b]
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEIWn-0001NA-VI; Mon, 22 Feb 2021 21:14:02 +0000
Subject: Re: [PATCH] staging: rtl8192e: fix kconfig dependency on CRYPTO
To: Julian Braha <julianbraha@gmail.com>, gregkh@linuxfoundation.org
References: <20210222180607.399753-1-julianbraha@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <8e220235-6ef6-dd49-8333-d32bc0cdcf8f@infradead.org>
Date: Mon, 22 Feb 2021 13:13:58 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210222180607.399753-1-julianbraha@gmail.com>
Content-Language: en-US
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

On 2/22/21 10:06 AM, Julian Braha wrote:
> When RTLLIB_CRYPTO_TKIP is enabled and CRYPTO is disabled,
> Kbuild gives the following warning:
> 
> WARNING: unmet direct dependencies detected for CRYPTO_MICHAEL_MIC
>   Depends on [n]: CRYPTO [=n]
>   Selected by [m]:
>   - RTLLIB_CRYPTO_TKIP [=m] && STAGING [=y] && RTLLIB [=m]
> 
> WARNING: unmet direct dependencies detected for CRYPTO_LIB_ARC4
>   Depends on [n]: CRYPTO [=n]
>   Selected by [m]:
>   - RTLLIB_CRYPTO_TKIP [=m] && STAGING [=y] && RTLLIB [=m]
>   - RTLLIB_CRYPTO_WEP [=m] && STAGING [=y] && RTLLIB [=m]
> 
> This is because RTLLIB_CRYPTO_TKIP selects CRYPTO_MICHAEL_MIC and
> CRYPTO_LIB_ARC4, without depending on or selecting CRYPTO,
> despite those config options being subordinate to CRYPTO.
> 
> Signed-off-by: Julian Braha <julianbraha@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>

Thanks.

> ---
>  drivers/staging/rtl8192e/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/rtl8192e/Kconfig b/drivers/staging/rtl8192e/Kconfig
> index 03fcc23516fd..6e7d84ac06f5 100644
> --- a/drivers/staging/rtl8192e/Kconfig
> +++ b/drivers/staging/rtl8192e/Kconfig
> @@ -26,6 +26,7 @@ config RTLLIB_CRYPTO_CCMP
>  config RTLLIB_CRYPTO_TKIP
>  	tristate "Support for rtllib TKIP crypto"
>  	depends on RTLLIB
> +	select CRYPTO
>  	select CRYPTO_LIB_ARC4
>  	select CRYPTO_MICHAEL_MIC
>  	default y
> 


-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

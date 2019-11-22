Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4694E107574
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Nov 2019 17:09:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 867A788D55;
	Fri, 22 Nov 2019 16:09:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3x+DHbkrRKVJ; Fri, 22 Nov 2019 16:09:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8AE0D8887F;
	Fri, 22 Nov 2019 16:09:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3DEF11BF311
 for <devel@linuxdriverproject.org>; Fri, 22 Nov 2019 16:09:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2D5AD88169
 for <devel@linuxdriverproject.org>; Fri, 22 Nov 2019 16:09:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kbckjSApcGhE for <devel@linuxdriverproject.org>;
 Fri, 22 Nov 2019 16:09:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A5DC287EFB
 for <devel@driverdev.osuosl.org>; Fri, 22 Nov 2019 16:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E8fZNk5GMi/4XEmun1xOwx3M/04axr0mW//Zh4kLYAg=; b=QYUK0Gul8xiB+05zNOo77mhQZ
 n6q9HCqPxquRQEiCfDZEQPrssz0+G+ULz8X5ryj7WT1Myd0cHuFQmH0F89fso3+jfuo4SWaHUdbrx
 +1b6haCmJVyE+j0XJs8PcVmF5YHtNalh3+tpdsTFzH2qUsKn+qWpqb1Vob943XVebTR+vd22y4q8A
 QWMUIwjmy474gBD4zUbM2292iSONAdkwfILU4FkiFPkzbcSVKQ8CqdsdaMZ25V8oiF5vCykVEQXno
 QnUJRwB3YX4o5ViWiNSRFD7iZPBVG/M8FITABF8cFG8tJrd3gO1g8xx8zhIbtnpLMDysi6Fwf/uMu
 iC2EkvuPw==;
Received: from [2601:1c0:6280:3f0::5a22]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYBUk-0000Hn-O1; Fri, 22 Nov 2019 16:09:18 +0000
Subject: Re: [PATCH -next] staging: hp100: Fix build error without ETHERNET
To: YueHaibing <yuehaibing@huawei.com>, gregkh@linuxfoundation.org,
 perex@perex.cz, davem@davemloft.net, joe@perches.com, tglx@linutronix.de
References: <20191113021306.35464-1-yuehaibing@huawei.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <c0b78573-48d4-d33e-8684-5a3c4d5e81a9@infradead.org>
Date: Fri, 22 Nov 2019 08:09:17 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191113021306.35464-1-yuehaibing@huawei.com>
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

On 11/12/19 6:13 PM, YueHaibing wrote:
> It should depends on ETHERNET, otherwise building fails:
> 
> drivers/staging/hp/hp100.o: In function `hp100_pci_remove':
> hp100.c:(.text+0x165): undefined reference to `unregister_netdev'
> hp100.c:(.text+0x214): undefined reference to `free_netdev'
> 
> Fixes: 52340b82cf1a ("hp100: Move 100BaseVG AnyLAN driver to staging")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested

Thanks.

> ---
>  drivers/staging/hp/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/hp/Kconfig b/drivers/staging/hp/Kconfig
> index fb395cf..f20ab21 100644
> --- a/drivers/staging/hp/Kconfig
> +++ b/drivers/staging/hp/Kconfig
> @@ -6,6 +6,7 @@
>  config NET_VENDOR_HP
>  	bool "HP devices"
>  	default y
> +	depends on ETHERNET
>  	depends on ISA || EISA || PCI
>  	---help---
>  	  If you have a network (Ethernet) card belonging to this class, say Y.
> 


-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

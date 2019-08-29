Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64427A190A
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 13:39:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 487D887FCC;
	Thu, 29 Aug 2019 11:39:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Goc4y1vFBdCi; Thu, 29 Aug 2019 11:39:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8EE7387FF0;
	Thu, 29 Aug 2019 11:39:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E73F1BF3CA
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 11:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9B04320505
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 11:39:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UpXWrqAqLCF3 for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 11:39:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb1-smtp-cloud8.xs4all.net (lb1-smtp-cloud8.xs4all.net
 [194.109.24.21])
 by silver.osuosl.org (Postfix) with ESMTPS id 094F423543
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 11:39:38 +0000 (UTC)
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud8.xs4all.net with ESMTPA
 id 3Im4iRJpeDqPe3Im8iNmv5; Thu, 29 Aug 2019 13:39:36 +0200
Subject: Re: [PATCH] media: staging: tegra-vde: Disable building with
 COMPILE_TEST
To: YueHaibing <yuehaibing@huawei.com>, digetx@gmail.com, mchehab@kernel.org, 
 gregkh@linuxfoundation.org, thierry.reding@gmail.com, jonathanh@nvidia.com,
 robin.murphy@arm.com
References: <20190826133140.13456-1-yuehaibing@huawei.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <7f73bcac-f52d-f1b3-324c-e9b551c5378b@xs4all.nl>
Date: Thu, 29 Aug 2019 13:39:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826133140.13456-1-yuehaibing@huawei.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfPiBAm9/CVG2yl/RYcmSeabFSsF5/VsS8tiz/yGOIjYSnJaD/MkFj3fN12HeAtoQBMQlQLOy1rQ4hH9Pk3PGKlkkJ9Zl8plyc55GSSz4G1+ppVvvtxVa
 cgqxOaIHdmGI6Lir3V57kld0PdyIGCK03wiHOkje13kc0gv/PhnX5+C3LrfxdHi2CMNt74bKZcw6PfwDuhW1UOnvKmy1QH8JUr++Y9Auceu48WZ6AknahDMp
 y+nvVNlAWPrJV2LqEleB77la5ICht/YcDItL8/YHiyeJqDySBIvEVXGwJL4Xi9NZpZ9Wxt1uH4KbBobOQixOSOlTcNw+jzMsIe+bJEk17cuyRCrooBbp13+w
 rAVl2YjzGamD7FhK930GFNdNmk8AkL+TW8oiCNcUOr/eA3es3KvvOT/pXVSQjB8VA9jwGGPoUNhHSHDpq4csgibDV9Sq8D6Biv12lEVTn+0Gyp3CGn8lifj1
 NQ04G6sIObCBPw4TuYqOc3L6nn1zCZs6e0K9+DpBNqD0AuyfSDTX/sC8t2V3/1Ij0sv2jB60jtfqjR0cWtBhZHW6dO+mED2Z2qpLMcnRImy9u654a5b4EY9U
 8oU=
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
Cc: linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/26/19 3:31 PM, YueHaibing wrote:
> If COMPILE_TEST is y and IOMMU_SUPPORT is n, selecting TEGRA_VDE
> to m will set IOMMU_IOVA to m, this fails the building of
> TEGRA_HOST1X and DRM_TEGRA which is y like this:
> 
> drivers/gpu/host1x/cdma.o: In function `host1x_cdma_init':
> cdma.c:(.text+0x66c): undefined reference to `alloc_iova'
> cdma.c:(.text+0x698): undefined reference to `__free_iova'
> 
> drivers/gpu/drm/tegra/drm.o: In function `tegra_drm_unload':
> drm.c:(.text+0xeb0): undefined reference to `put_iova_domain'
> drm.c:(.text+0xeb4): undefined reference to `iova_cache_put'
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: 6b2265975239 ("media: staging: tegra-vde: Fix build error")
> Fixes: b301f8de1925 ("media: staging: media: tegra-vde: Add IOMMU support")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/staging/media/tegra-vde/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/tegra-vde/Kconfig b/drivers/staging/media/tegra-vde/Kconfig
> index ba49ea5..a41d30c 100644
> --- a/drivers/staging/media/tegra-vde/Kconfig
> +++ b/drivers/staging/media/tegra-vde/Kconfig
> @@ -1,9 +1,9 @@
>  # SPDX-License-Identifier: GPL-2.0
>  config TEGRA_VDE
>  	tristate "NVIDIA Tegra Video Decoder Engine driver"
> -	depends on ARCH_TEGRA || COMPILE_TEST
> +	depends on ARCH_TEGRA

What happens if you drop this change,

>  	select DMA_SHARED_BUFFER
> -	select IOMMU_IOVA if (IOMMU_SUPPORT || COMPILE_TEST)
> +	select IOMMU_IOVA if IOMMU_SUPPORT

but keep this change?

iova.h has stubs that are used if IOMMU_IOVA is not set, so it should
work when compile testing this tegra-vde driver.

Haven't tried it, but making sure that compile testing keep working is
really important.

Regards,

	Hans

>  	select SRAM
>  	help
>  	    Say Y here to enable support for the NVIDIA Tegra video decoder
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

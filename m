Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E376F72C59
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 12:30:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 00C302083F;
	Wed, 24 Jul 2019 10:30:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 51Dpw-FIxkYS; Wed, 24 Jul 2019 10:30:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 78C41207B0;
	Wed, 24 Jul 2019 10:30:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A6EE1BF59A
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 10:30:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 477E885E25
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 10:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JZJxpxMBsnxM for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 10:30:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CB08B85E07
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 10:30:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 03:30:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,302,1559545200"; d="scan'208";a="172260139"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga003.jf.intel.com with ESMTP; 24 Jul 2019 03:30:25 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 3BBF122217; Wed, 24 Jul 2019 13:30:28 +0300 (EEST)
Date: Wed, 24 Jul 2019 13:30:28 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH] media: staging: ipu3: Enable IOVA API only when IOMMU
 support is enabled
Message-ID: <20190724103027.GD21370@paasikivi.fi.intel.com>
References: <20190722134749.21580-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722134749.21580-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, hverkuil-cisco@xs4all.nl, digetx@gmail.com,
 mchehab@kernel.org, yong.zhi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Yue,

On Mon, Jul 22, 2019 at 09:47:49PM +0800, YueHaibing wrote:
> If IOMMU_SUPPORT is not set, ipu3 driver may select IOMMU_IOVA to m.
> But for many drivers, they use "select IOMMU_IOVA if IOMMU_SUPPORT"
> in the Kconfig, for example, CONFIG_TEGRA_VDE is set to y but IOMMU_IOVA
> is m, then the building fails like this:
> 
> drivers/staging/media/tegra-vde/iommu.o: In function `tegra_vde_iommu_map':
> iommu.c:(.text+0x41): undefined reference to `alloc_iova'
> iommu.c:(.text+0x56): undefined reference to `__free_iova'
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: 7fc7af649ca7 ("media: staging/intel-ipu3: Add imgu top level pci device driver")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/staging/media/ipu3/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/ipu3/Kconfig b/drivers/staging/media/ipu3/Kconfig
> index 4b51c67..b7df18f 100644
> --- a/drivers/staging/media/ipu3/Kconfig
> +++ b/drivers/staging/media/ipu3/Kconfig
> @@ -4,7 +4,7 @@ config VIDEO_IPU3_IMGU
>  	depends on PCI && VIDEO_V4L2
>  	depends on MEDIA_CONTROLLER && VIDEO_V4L2_SUBDEV_API
>  	depends on X86
> -	select IOMMU_IOVA
> +	select IOMMU_IOVA if IOMMU_SUPPORT

This doesn't seem right: the ipu3-cio2 driver needs IOMMU_IOVA
independently of IOMMU_SUPPORT.

Looking at tegra-vde, it seems to depend on IOMMU_SUPPORT but that's not
declared in its Kconfig entry. I wonder if adding that would be the right
way to fix this.

Cc'ing the IOMMU list.

>  	select VIDEOBUF2_DMA_SG
>  	help
>  	  This is the Video4Linux2 driver for Intel IPU3 image processing unit,

-- 
Regards,

Sakari Ailus
sakari.ailus@linux.intel.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 428D173036
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 15:49:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C97E0868B4;
	Wed, 24 Jul 2019 13:49:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Epdz9VCIVyN2; Wed, 24 Jul 2019 13:49:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F15D86841;
	Wed, 24 Jul 2019 13:49:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 28F8A1BF357
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 13:49:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 25EE686849
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 13:49:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hjoa4PYw0xdW for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 13:49:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by whitealder.osuosl.org (Postfix) with ESMTP id A4C4286841
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 13:49:44 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE10E28;
 Wed, 24 Jul 2019 06:49:43 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 88C793F71A;
 Wed, 24 Jul 2019 06:49:42 -0700 (PDT)
Subject: Re: [PATCH] media: staging: ipu3: Enable IOVA API only when IOMMU
 support is enabled
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
 YueHaibing <yuehaibing@huawei.com>
References: <20190722134749.21580-1-yuehaibing@huawei.com>
 <20190724103027.GD21370@paasikivi.fi.intel.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e48fc180-06cc-eac7-d8ca-9be1699c8677@arm.com>
Date: Wed, 24 Jul 2019 14:49:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190724103027.GD21370@paasikivi.fi.intel.com>
Content-Language: en-GB
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 yong.zhi@intel.com, hverkuil-cisco@xs4all.nl, digetx@gmail.com,
 mchehab@kernel.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 24/07/2019 11:30, Sakari Ailus wrote:
> Hi Yue,
> 
> On Mon, Jul 22, 2019 at 09:47:49PM +0800, YueHaibing wrote:
>> If IOMMU_SUPPORT is not set, ipu3 driver may select IOMMU_IOVA to m.
>> But for many drivers, they use "select IOMMU_IOVA if IOMMU_SUPPORT"
>> in the Kconfig, for example, CONFIG_TEGRA_VDE is set to y but IOMMU_IOVA
>> is m, then the building fails like this:
>>
>> drivers/staging/media/tegra-vde/iommu.o: In function `tegra_vde_iommu_map':
>> iommu.c:(.text+0x41): undefined reference to `alloc_iova'
>> iommu.c:(.text+0x56): undefined reference to `__free_iova'
>>
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Fixes: 7fc7af649ca7 ("media: staging/intel-ipu3: Add imgu top level pci device driver")
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
>> ---
>>   drivers/staging/media/ipu3/Kconfig | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/ipu3/Kconfig b/drivers/staging/media/ipu3/Kconfig
>> index 4b51c67..b7df18f 100644
>> --- a/drivers/staging/media/ipu3/Kconfig
>> +++ b/drivers/staging/media/ipu3/Kconfig
>> @@ -4,7 +4,7 @@ config VIDEO_IPU3_IMGU
>>   	depends on PCI && VIDEO_V4L2
>>   	depends on MEDIA_CONTROLLER && VIDEO_V4L2_SUBDEV_API
>>   	depends on X86
>> -	select IOMMU_IOVA
>> +	select IOMMU_IOVA if IOMMU_SUPPORT
> 
> This doesn't seem right: the ipu3-cio2 driver needs IOMMU_IOVA
> independently of IOMMU_SUPPORT.
> 
> Looking at tegra-vde, it seems to depend on IOMMU_SUPPORT but that's not
> declared in its Kconfig entry. I wonder if adding that would be the right
> way to fix this.
> 
> Cc'ing the IOMMU list.

Right, I also had the impression that we'd made the IOVA library 
completely standalone. And what does the IPU3 driver's Kconfig have to 
do with some *other* driver failing to link anyway?

Robin.

> 
>>   	select VIDEOBUF2_DMA_SG
>>   	help
>>   	  This is the Video4Linux2 driver for Intel IPU3 image processing unit,
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA10730CD
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 16:03:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C42BB868E7;
	Wed, 24 Jul 2019 14:03:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zSXO-m01-RPe; Wed, 24 Jul 2019 14:03:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 684F486866;
	Wed, 24 Jul 2019 14:03:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 74AF01BF357
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 14:03:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7130A20514
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 14:03:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fimv9u1L9seq for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 14:03:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by silver.osuosl.org (Postfix) with ESMTPS id 63A19203CA
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 14:03:36 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2CBBFA9AC7F18D8330B1;
 Wed, 24 Jul 2019 22:03:32 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 24 Jul 2019 22:03:27 +0800
Subject: Re: [PATCH] media: staging: ipu3: Enable IOVA API only when IOMMU
 support is enabled
To: Robin Murphy <robin.murphy@arm.com>, Sakari Ailus
 <sakari.ailus@linux.intel.com>
References: <20190722134749.21580-1-yuehaibing@huawei.com>
 <20190724103027.GD21370@paasikivi.fi.intel.com>
 <e48fc180-06cc-eac7-d8ca-9be1699c8677@arm.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <0c08bdae-facc-0f28-0e58-17a65172587a@huawei.com>
Date: Wed, 24 Jul 2019 22:03:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <e48fc180-06cc-eac7-d8ca-9be1699c8677@arm.com>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019/7/24 21:49, Robin Murphy wrote:
> On 24/07/2019 11:30, Sakari Ailus wrote:
>> Hi Yue,
>>
>> On Mon, Jul 22, 2019 at 09:47:49PM +0800, YueHaibing wrote:
>>> If IOMMU_SUPPORT is not set, ipu3 driver may select IOMMU_IOVA to m.
>>> But for many drivers, they use "select IOMMU_IOVA if IOMMU_SUPPORT"
>>> in the Kconfig, for example, CONFIG_TEGRA_VDE is set to y but IOMMU_IOVA
>>> is m, then the building fails like this:
>>>
>>> drivers/staging/media/tegra-vde/iommu.o: In function `tegra_vde_iommu_map':
>>> iommu.c:(.text+0x41): undefined reference to `alloc_iova'
>>> iommu.c:(.text+0x56): undefined reference to `__free_iova'
>>>
>>> Reported-by: Hulk Robot <hulkci@huawei.com>
>>> Fixes: 7fc7af649ca7 ("media: staging/intel-ipu3: Add imgu top level pci device driver")
>>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
>>> ---
>>>   drivers/staging/media/ipu3/Kconfig | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/staging/media/ipu3/Kconfig b/drivers/staging/media/ipu3/Kconfig
>>> index 4b51c67..b7df18f 100644
>>> --- a/drivers/staging/media/ipu3/Kconfig
>>> +++ b/drivers/staging/media/ipu3/Kconfig
>>> @@ -4,7 +4,7 @@ config VIDEO_IPU3_IMGU
>>>       depends on PCI && VIDEO_V4L2
>>>       depends on MEDIA_CONTROLLER && VIDEO_V4L2_SUBDEV_API
>>>       depends on X86
>>> -    select IOMMU_IOVA
>>> +    select IOMMU_IOVA if IOMMU_SUPPORT
>>
>> This doesn't seem right: the ipu3-cio2 driver needs IOMMU_IOVA
>> independently of IOMMU_SUPPORT.
>>
>> Looking at tegra-vde, it seems to depend on IOMMU_SUPPORT but that's not
>> declared in its Kconfig entry. I wonder if adding that would be the right
>> way to fix this.
>>
>> Cc'ing the IOMMU list.
> 
> Right, I also had the impression that we'd made the IOVA library completely standalone. And what does the IPU3 driver's Kconfig have to do with some *other* driver failing to link anyway?

Oh, I misunderstand that IOMMU_IOVA is depend on IOMMU_SUPPORT, thank you for clarification.

I will try to fix this in tegra-vde.

> 
> Robin.
> 
>>
>>>       select VIDEOBUF2_DMA_SG
>>>       help
>>>         This is the Video4Linux2 driver for Intel IPU3 image processing unit,
>>
> 
> .
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

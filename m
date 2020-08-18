Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E424248824
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 16:48:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A719B20466;
	Tue, 18 Aug 2020 14:48:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dFmXviX-YmuV; Tue, 18 Aug 2020 14:48:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A9F4E2042C;
	Tue, 18 Aug 2020 14:48:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53FCF1BF283
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:47:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4EDD98619A
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:47:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H9OyhVo8FcIk for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 14:47:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by whitealder.osuosl.org (Postfix) with ESMTP id 52368860F9
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 14:47:58 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E23541FB;
 Tue, 18 Aug 2020 07:47:57 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E81D3F66B;
 Tue, 18 Aug 2020 07:47:55 -0700 (PDT)
Subject: Re: [PATCH 00/16] IOMMU driver for Kirin 960/970
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <cover.1597650455.git.mchehab+huawei@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5c7918b6-c506-680b-cb0f-9e5f6a7038d9@arm.com>
Date: Tue, 18 Aug 2020 15:47:55 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <cover.1597650455.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Joerg Roedel <jroedel@suse.de>, Manivannan Sadhasivam <mani@kernel.org>,
 Chenfeng <puck.chen@hisilicon.com>, Suzhuangluan <suzhuangluan@hisilicon.com>,
 linuxarm@huawei.com, Wei Xu <xuwei5@hisilicon.com>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 mauro.chehab@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-08-17 08:49, Mauro Carvalho Chehab wrote:
> Add a driver for the Kirin 960/970 iommu.
> 
> As on the past series, this starts from the original 4.9 driver from
> the 96boards tree:
> 
> 	https://github.com/96boards-hikey/linux/tree/hikey970-v4.9
> 
> The remaining patches add SPDX headers and make it build and run with
> the upstream Kernel.
> 
> Chenfeng (1):
>    iommu: add support for HiSilicon Kirin 960/970 iommu
> 
> Mauro Carvalho Chehab (15):
>    iommu: hisilicon: remove default iommu_map_sg handler
>    iommu: hisilicon: map and unmap ops gained new arguments
>    iommu: hisi_smmu_lpae: rebase it to work with upstream
>    iommu: hisi_smmu: remove linux/hisi/hisi-iommu.h
>    iommu: hisilicon: cleanup its code style
>    iommu: hisi_smmu_lpae: get rid of IOMMU_SEC and IOMMU_DEVICE
>    iommu: get rid of map/unmap tile functions
>    iommu: hisi_smmu_lpae: use the right code to get domain-priv data
>    iommu: hisi_smmu_lpae: convert it to probe_device
>    iommu: add Hisilicon Kirin970 iommu at the building system
>    iommu: hisi_smmu_lpae: cleanup printk macros
>    iommu: hisi_smmu_lpae: make OF compatible more standard

Echoing the other comments about none of the driver patches being CC'd 
to the IOMMU list...

Still, I dug the series up on lore and frankly I'm not sure what to make 
of it - AFAICS the "driver" is just yet another implementation of Arm 
LPAE pagetable code, with no obvious indication of how those pagetables 
ever get handed off to IOMMU hardware (and indeed no indication of IOMMU 
hardware at all). Can you explain how it's supposed to work?

And as a pre-emptive strike, we really don't need any more LPAE 
implementations - that's what the io-pgtable library is all about (which 
incidentally has been around since 4.0...). I think that should make the 
issue of preserving authorship largely moot since there's no need to 
preserve most of the code anyway ;)

Robin.

>    dt: add an spec for the Kirin36x0 SMMU
>    dt: hi3670-hikey970.dts: load the SMMU driver on Hikey970
>    staging: hikey9xx: add an item about the iommu driver
> 
>   .../iommu/hisilicon,kirin36x0-smmu.yaml       |  55 ++
>   .../boot/dts/hisilicon/hi3670-hikey970.dts    |   3 +
>   drivers/staging/hikey9xx/Kconfig              |   9 +
>   drivers/staging/hikey9xx/Makefile             |   1 +
>   drivers/staging/hikey9xx/TODO                 |   1 +
>   drivers/staging/hikey9xx/hisi_smmu.h          | 196 ++++++
>   drivers/staging/hikey9xx/hisi_smmu_lpae.c     | 648 ++++++++++++++++++
>   7 files changed, 913 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/iommu/hisilicon,kirin36x0-smmu.yaml
>   create mode 100644 drivers/staging/hikey9xx/hisi_smmu.h
>   create mode 100644 drivers/staging/hikey9xx/hisi_smmu_lpae.c
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

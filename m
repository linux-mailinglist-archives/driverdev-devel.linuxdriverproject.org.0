Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8522489DF
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 17:29:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3448E8575A;
	Tue, 18 Aug 2020 15:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oj-Qf6Q75Mlx; Tue, 18 Aug 2020 15:29:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0BC75854B3;
	Tue, 18 Aug 2020 15:29:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF9791BF973
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 15:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B95A185754
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 15:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9gdhy4Yr5AKO for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 15:29:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 296D68561D
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 15:29:15 +0000 (UTC)
Received: from coco.lan (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEE39206DA;
 Tue, 18 Aug 2020 15:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597764555;
 bh=y1EcZY8mviDh3Iz3/qatQ0cLnCFk9OV4Adl//n5aXSA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=l1khQJNCqaJkNf17Z3CSbq9tMDMPPbMtKTMXXMzroWcNsHKDsO4NxIPVcEnlSTKcX
 vdU1vzH4P+A5CN3B5DKjylxHKOgwQwyZMlSkUyFzeBK5M6HGi0wE204PORhNROuOkG
 zBndFkZTkyO2KybOc9/lrOpk6h4q17/K+lRnUnJE=
Date: Tue, 18 Aug 2020 17:29:09 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 00/16] IOMMU driver for Kirin 960/970
Message-ID: <20200818172909.71f5243a@coco.lan>
In-Reply-To: <5c7918b6-c506-680b-cb0f-9e5f6a7038d9@arm.com>
References: <cover.1597650455.git.mchehab+huawei@kernel.org>
 <5c7918b6-c506-680b-cb0f-9e5f6a7038d9@arm.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Suzhuangluan <suzhuangluan@hisilicon.com>, linuxarm@huawei.com,
 Wei Xu <xuwei5@hisilicon.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 John Stultz <john.stultz@linaro.org>, Chenfeng <puck.chen@hisilicon.com>,
 mauro.chehab@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Robin,

Em Tue, 18 Aug 2020 15:47:55 +0100
Robin Murphy <robin.murphy@arm.com> escreveu:

> On 2020-08-17 08:49, Mauro Carvalho Chehab wrote:
> > Add a driver for the Kirin 960/970 iommu.
> > 
> > As on the past series, this starts from the original 4.9 driver from
> > the 96boards tree:
> > 
> > 	https://github.com/96boards-hikey/linux/tree/hikey970-v4.9
> > 
> > The remaining patches add SPDX headers and make it build and run with
> > the upstream Kernel.
> > 
> > Chenfeng (1):
> >    iommu: add support for HiSilicon Kirin 960/970 iommu
> > 
> > Mauro Carvalho Chehab (15):
> >    iommu: hisilicon: remove default iommu_map_sg handler
> >    iommu: hisilicon: map and unmap ops gained new arguments
> >    iommu: hisi_smmu_lpae: rebase it to work with upstream
> >    iommu: hisi_smmu: remove linux/hisi/hisi-iommu.h
> >    iommu: hisilicon: cleanup its code style
> >    iommu: hisi_smmu_lpae: get rid of IOMMU_SEC and IOMMU_DEVICE
> >    iommu: get rid of map/unmap tile functions
> >    iommu: hisi_smmu_lpae: use the right code to get domain-priv data
> >    iommu: hisi_smmu_lpae: convert it to probe_device
> >    iommu: add Hisilicon Kirin970 iommu at the building system
> >    iommu: hisi_smmu_lpae: cleanup printk macros
> >    iommu: hisi_smmu_lpae: make OF compatible more standard  
> 
> Echoing the other comments about none of the driver patches being CC'd 
> to the IOMMU list...
> 
> Still, I dug the series up on lore and frankly I'm not sure what to make 
> of it - AFAICS the "driver" is just yet another implementation of Arm 
> LPAE pagetable code, with no obvious indication of how those pagetables 
> ever get handed off to IOMMU hardware (and indeed no indication of IOMMU 
> hardware at all). Can you explain how it's supposed to work?
> 
> And as a pre-emptive strike, we really don't need any more LPAE 
> implementations - that's what the io-pgtable library is all about (which 
> incidentally has been around since 4.0...). I think that should make the 
> issue of preserving authorship largely moot since there's no need to 
> preserve most of the code anyway ;)

I didn't know about that, since I got a Hikey 970 board for the first time
about one month ago, and that's the first time I looked into iommu code.

My end goal with this is to make the DRM/KMS driver to work with upstream
Kernels.

The full patch series are at:

	https://github.com/mchehab/linux/commits/hikey970/to_upstream-2.0-v1.1

(I need to put a new version there, after some changes due to recent
upstream discussions at the regulator's part of the code)

Basically, the DT binding has this, for IOMMU:


	smmu_lpae {
		compatible = "hisilicon,smmu-lpae";
	};

...
	dpe: dpe@e8600000 {
		compatible = "hisilicon,kirin970-dpe";
		memory-region = <&drm_dma_reserved>;
...
		iommu_info {
			start-addr = <0x8000>;
			size = <0xbfff8000>;
		};
	}

This is used by kirin9xx_drm_dss.c in order to enable and use
the iommu:


	static int dss_enable_iommu(struct platform_device *pdev, struct dss_hw_ctx *ctx)
	{
		struct device *dev = NULL;

		dev = &pdev->dev;

		/* create iommu domain */
		ctx->mmu_domain = iommu_domain_alloc(dev->bus);
		if (!ctx->mmu_domain) {
			pr_err("iommu_domain_alloc failed!\n");
			return -EINVAL;
		}

		iommu_attach_device(ctx->mmu_domain, dev);

		return 0;
	}

The only place where the IOMMU domain is used is on this part of the
code(error part simplified here) [1]:

	void hisi_dss_smmu_on(struct dss_hw_ctx *ctx) 
	{
		uint64_t fama_phy_pgd_base;
		uint32_t phy_pgd_base;
...
		fama_phy_pgd_base = iommu_iova_to_phys(ctx->mmu_domain, 0);
		phy_pgd_base = (uint32_t)fama_phy_pgd_base;
		if (WARN_ON(!phy_pgd_base))
			return;

		set_reg(smmu_base + SMMU_CB_TTBR0, phy_pgd_base, 32, 0);
	}

[1] https://github.com/mchehab/linux/commit/36da105e719b47bbe9d6cb7e5619b30c7f3eb1bd

In other words, the driver needs to get the physical address of the frame
buffer (mapped via iommu) in order to set some DRM-specific register.

Yeah, the above code is somewhat hackish. I would love to replace 
this part by a more standard approach.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FCE249A50
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 12:28:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3926F203B2;
	Wed, 19 Aug 2020 10:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GFwPsqql+1Rp; Wed, 19 Aug 2020 10:28:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 913E9203D3;
	Wed, 19 Aug 2020 10:28:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C060F1BF30D
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 10:28:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B74A98666C
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 10:28:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iAIMcPWET+tm for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 10:28:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 04EB1865D3
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 10:28:39 +0000 (UTC)
Received: from coco.lan (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6B2C02072D;
 Wed, 19 Aug 2020 10:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597832918;
 bh=ToWcC1fxg1trjzBqdQ1AZ/Au9BYW3af1OWhvBcf2eQA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Z+nBJDT9QcofaSVIzSl136xTiji62s1yQ3bk5kBtrdMjrrP51TPCH4lO7fid+wazi
 7M2aAIJtEGNbLSw+arJawsoGoC2GMvf2fOviMctcIydMHMANCyuYFk0+Wh3UJ3yNTs
 DANPDoBh4Pky/Hod9KgSN9Lphpj3L5//uG+E3CZY=
Date: Wed, 19 Aug 2020 12:28:32 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: John Stultz <john.stultz@linaro.org>, Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 00/16] IOMMU driver for Kirin 960/970
Message-ID: <20200819122832.3cd5f834@coco.lan>
In-Reply-To: <CALAqxLXBYvwZ9kiKSGBeO5f-eKi2DD14QtoZgFGyGd-B7EOPQA@mail.gmail.com>
References: <cover.1597650455.git.mchehab+huawei@kernel.org>
 <5c7918b6-c506-680b-cb0f-9e5f6a7038d9@arm.com>
 <20200818172909.71f5243a@coco.lan>
 <79f40595-7769-aa6a-fbba-53adcffca327@arm.com>
 <CALAqxLXBYvwZ9kiKSGBeO5f-eKi2DD14QtoZgFGyGd-B7EOPQA@mail.gmail.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>, Joerg Roedel <jroedel@suse.de>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Suzhuangluan <suzhuangluan@hisilicon.com>, linuxarm@huawei.com,
 Wei Xu <xuwei5@hisilicon.com>, lkml <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 Chenfeng <puck.chen@hisilicon.com>, mauro.chehab@huawei.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Tue, 18 Aug 2020 15:02:54 -0700
John Stultz <john.stultz@linaro.org> escreveu:

> On Tue, Aug 18, 2020 at 9:26 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > On 2020-08-18 16:29, Mauro Carvalho Chehab wrote:  
> > > Em Tue, 18 Aug 2020 15:47:55 +0100
> > > Basically, the DT binding has this, for IOMMU:
> > >
> > >
> > >       smmu_lpae {
> > >               compatible = "hisilicon,smmu-lpae";
> > >       };
> > >
> > > ...
> > >       dpe: dpe@e8600000 {
> > >               compatible = "hisilicon,kirin970-dpe";
> > >               memory-region = <&drm_dma_reserved>;
> > > ...
> > >               iommu_info {
> > >                       start-addr = <0x8000>;
> > >                       size = <0xbfff8000>;
> > >               };
> > >       }
> > >
> > > This is used by kirin9xx_drm_dss.c in order to enable and use
> > > the iommu:
> > >
> > >
> > >       static int dss_enable_iommu(struct platform_device *pdev, struct dss_hw_ctx *ctx)
> > >       {
> > >               struct device *dev = NULL;
> > >
> > >               dev = &pdev->dev;
> > >
> > >               /* create iommu domain */
> > >               ctx->mmu_domain = iommu_domain_alloc(dev->bus);
> > >               if (!ctx->mmu_domain) {
> > >                       pr_err("iommu_domain_alloc failed!\n");
> > >                       return -EINVAL;
> > >               }
> > >
> > >               iommu_attach_device(ctx->mmu_domain, dev);
> > >
> > >               return 0;
> > >       }
> > >
> > > The only place where the IOMMU domain is used is on this part of the
> > > code(error part simplified here) [1]:
> > >
> > >       void hisi_dss_smmu_on(struct dss_hw_ctx *ctx)
> > >       {
> > >               uint64_t fama_phy_pgd_base;
> > >               uint32_t phy_pgd_base;
> > > ...
> > >               fama_phy_pgd_base = iommu_iova_to_phys(ctx->mmu_domain, 0);
> > >               phy_pgd_base = (uint32_t)fama_phy_pgd_base;
> > >               if (WARN_ON(!phy_pgd_base))
> > >                       return;
> > >
> > >               set_reg(smmu_base + SMMU_CB_TTBR0, phy_pgd_base, 32, 0);
> > >       }
> > >
> > > [1] https://github.com/mchehab/linux/commit/36da105e719b47bbe9d6cb7e5619b30c7f3eb1bd
> > >
> > > In other words, the driver needs to get the physical address of the frame
> > > buffer (mapped via iommu) in order to set some DRM-specific register.
> > >
> > > Yeah, the above code is somewhat hackish. I would love to replace
> > > this part by a more standard approach.  
> >
> > OK, so from a quick look at that, my impression is that your display
> > controller has its own MMU and you don't need to pretend to use the
> > IOMMU API at all. Just have the DRM driver use io-pgtable directly to
> > run its own set of ARM_32_LPAE_S1 pagetables - see Panfrost for an
> > example (but try to ignore the wacky "Mali LPAE" format).  
> 
> Yea. For the HiKey960, there was originally a similar patch series but
> it was refactored out and the (still out of tree) DRM driver I'm
> carrying doesn't seem to need it (though looking we still have the
> iommu_info subnode in the dts that maybe needs to be cleaned up).

Funny... while the Hikey 970 DRM driver has such IOMMU code, it
doesn't actually use it!

The driver has a function called hisi_dss_smmu_config() with
sets the registers on a different way in order to use IOMMU
or not, at the hisi_fb_pan_display() function. It can also
use a mode called "afbcd".

Well, this function sets both to false:

	bool afbcd = false;
	bool mmu_enable = false;

I ended commenting out the code which depends at the iommu
driver and everything is working as before.

So, I'll just forget about this iommu driver, as we can live
without that.

For now, I'll keep the mmu code there commented out, as
it could be useful on a future port for it to use io-pgtable.

-

Robin,

Can the Panfrost driver use io-pgtable while the KMS driver
won't be using it? Or this would cause it to not work?

My end goal here is to be able to test the Panfrost driver ;-)

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BF9249089
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 00:03:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B432620767;
	Tue, 18 Aug 2020 22:03:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FObSTmGS7k5A; Tue, 18 Aug 2020 22:03:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4997F2000E;
	Tue, 18 Aug 2020 22:03:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DCBC1BF973
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 22:03:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 66E5987B36
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 22:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gYad5ci1T89J for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 22:03:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A37F387B08
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 22:03:07 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id e6so19313081oii.4
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 15:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=diQpwa3braoDFIWAByVDgaoQfS004fXuMypoBUCVdtk=;
 b=b0VdabeT3wDVIbsWC3+UUFu/XIeQMDjK+Xkxa9ATJN7g6hRVTbi7XDjpV5TPaXfGmT
 wCslWgKlUXSyClpdNtyCqXZhL8SHL1wLFyVVbHWqLxWhH354vCXo69U7GQLCdiGKgJTk
 qsn7lgRuF4gN2odTDj14Cj6eeH9USU6CdxJdFtpXQsbmo9fA7Bzxyr8zqr4Tho5Mlacg
 NNBUaVOoobOAL4BO/aK64cIbDncboXoxOXNIwdZS7zVuFJy7fVFc5rfAYnrB5O8feCmD
 xIq+FyJqN/khbmBqaIvmo3ds1WTecSqZPFQhBYfsn8tMHwNAklxW5j52iXCStxFayCQ8
 JtwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=diQpwa3braoDFIWAByVDgaoQfS004fXuMypoBUCVdtk=;
 b=tPduRFCarhh+jKC1Wng7GL5zglf0mdC2qlSJiYVgqfPpW9NfYpz/oOQeatFdSOd1yR
 PQg9pYNx/1+ylW+qaBTK3VL6MZiZTo6K/f0HnEB2g00BYJtKRHZeVjwmqd1YQcFcm1NY
 3D2P1WDX88FDirPKaE726Vi2GkZhGVyHScp7aX+34d0FIIryP8Wlw1wNSrv4xB915FH+
 nF73ReUMJ1bvRt8ahh01lbi6PQTJXfFQ8NcsL+XY8PqdyP9mfmq77jCxehxRHzdVjVCX
 B+Rij2zqjkY09t6x2sztpVfzuu1kO0b/+0Ta//xQhSS6T62/J1hEq4jge9m1rIkFeXGz
 r/tA==
X-Gm-Message-State: AOAM531hqSnBE0+aBHJyClCUJT4TvbgzObFlDBpGO8vTMloxZoNcp0vq
 jeMrUKvMCPdCR1i2J+xq5LJokDQqmkZIL4wnVoI8VQ==
X-Google-Smtp-Source: ABdhPJyGzE0nx7m/2KMeb3GHpmBH6vjSg1G7xFIBMVTmsTi1vQDYWMmdQoiFgnNFFNSMKmEyMesrHuoEyoSXZV5UF2Y=
X-Received: by 2002:aca:dc85:: with SMTP id t127mr1404925oig.169.1597788185528; 
 Tue, 18 Aug 2020 15:03:05 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1597650455.git.mchehab+huawei@kernel.org>
 <5c7918b6-c506-680b-cb0f-9e5f6a7038d9@arm.com>
 <20200818172909.71f5243a@coco.lan>
 <79f40595-7769-aa6a-fbba-53adcffca327@arm.com>
In-Reply-To: <79f40595-7769-aa6a-fbba-53adcffca327@arm.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 18 Aug 2020 15:02:54 -0700
Message-ID: <CALAqxLXBYvwZ9kiKSGBeO5f-eKi2DD14QtoZgFGyGd-B7EOPQA@mail.gmail.com>
Subject: Re: [PATCH 00/16] IOMMU driver for Kirin 960/970
To: Robin Murphy <robin.murphy@arm.com>
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Joerg Roedel <jroedel@suse.de>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
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

On Tue, Aug 18, 2020 at 9:26 AM Robin Murphy <robin.murphy@arm.com> wrote:
> On 2020-08-18 16:29, Mauro Carvalho Chehab wrote:
> > Em Tue, 18 Aug 2020 15:47:55 +0100
> > Basically, the DT binding has this, for IOMMU:
> >
> >
> >       smmu_lpae {
> >               compatible = "hisilicon,smmu-lpae";
> >       };
> >
> > ...
> >       dpe: dpe@e8600000 {
> >               compatible = "hisilicon,kirin970-dpe";
> >               memory-region = <&drm_dma_reserved>;
> > ...
> >               iommu_info {
> >                       start-addr = <0x8000>;
> >                       size = <0xbfff8000>;
> >               };
> >       }
> >
> > This is used by kirin9xx_drm_dss.c in order to enable and use
> > the iommu:
> >
> >
> >       static int dss_enable_iommu(struct platform_device *pdev, struct dss_hw_ctx *ctx)
> >       {
> >               struct device *dev = NULL;
> >
> >               dev = &pdev->dev;
> >
> >               /* create iommu domain */
> >               ctx->mmu_domain = iommu_domain_alloc(dev->bus);
> >               if (!ctx->mmu_domain) {
> >                       pr_err("iommu_domain_alloc failed!\n");
> >                       return -EINVAL;
> >               }
> >
> >               iommu_attach_device(ctx->mmu_domain, dev);
> >
> >               return 0;
> >       }
> >
> > The only place where the IOMMU domain is used is on this part of the
> > code(error part simplified here) [1]:
> >
> >       void hisi_dss_smmu_on(struct dss_hw_ctx *ctx)
> >       {
> >               uint64_t fama_phy_pgd_base;
> >               uint32_t phy_pgd_base;
> > ...
> >               fama_phy_pgd_base = iommu_iova_to_phys(ctx->mmu_domain, 0);
> >               phy_pgd_base = (uint32_t)fama_phy_pgd_base;
> >               if (WARN_ON(!phy_pgd_base))
> >                       return;
> >
> >               set_reg(smmu_base + SMMU_CB_TTBR0, phy_pgd_base, 32, 0);
> >       }
> >
> > [1] https://github.com/mchehab/linux/commit/36da105e719b47bbe9d6cb7e5619b30c7f3eb1bd
> >
> > In other words, the driver needs to get the physical address of the frame
> > buffer (mapped via iommu) in order to set some DRM-specific register.
> >
> > Yeah, the above code is somewhat hackish. I would love to replace
> > this part by a more standard approach.
>
> OK, so from a quick look at that, my impression is that your display
> controller has its own MMU and you don't need to pretend to use the
> IOMMU API at all. Just have the DRM driver use io-pgtable directly to
> run its own set of ARM_32_LPAE_S1 pagetables - see Panfrost for an
> example (but try to ignore the wacky "Mali LPAE" format).

Yea. For the HiKey960, there was originally a similar patch series but
it was refactored out and the (still out of tree) DRM driver I'm
carrying doesn't seem to need it (though looking we still have the
iommu_info subnode in the dts that maybe needs to be cleaned up).

thanks
-john
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

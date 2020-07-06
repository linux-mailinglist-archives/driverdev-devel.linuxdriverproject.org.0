Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9992158B2
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Jul 2020 15:41:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9FA6D25E5D;
	Mon,  6 Jul 2020 13:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o+ztB5HlVW2W; Mon,  6 Jul 2020 13:41:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EBE6C25D82;
	Mon,  6 Jul 2020 13:40:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 658B41BF23F
 for <devel@linuxdriverproject.org>; Mon,  6 Jul 2020 13:40:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 390EC25A72
 for <devel@linuxdriverproject.org>; Mon,  6 Jul 2020 13:40:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 21RtH-8BXY1f for <devel@linuxdriverproject.org>;
 Mon,  6 Jul 2020 13:40:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 05FF52036E
 for <devel@driverdev.osuosl.org>; Mon,  6 Jul 2020 13:40:54 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id f139so42177375wmf.5
 for <devel@driverdev.osuosl.org>; Mon, 06 Jul 2020 06:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eYvPzaHZaaIgS61ZLjNpzen4uwKKezR2/OOrkoRIMZ0=;
 b=N7LoSn2vo9f3rQ4C2sGL7jY5i3u8il6SSYurszDcNXG4RDiQXye4oDe1w49wUKWGYU
 6YR9e3/7mWBT1uSXTqg4XPCPLbecgJ9K1U+X0Y65YB3vsKNWZaer91W4nyZCnw9XANrU
 W4Go14plLioc6jwPxUMtBUxX76ky2Nqwf5ejw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eYvPzaHZaaIgS61ZLjNpzen4uwKKezR2/OOrkoRIMZ0=;
 b=p7oQruAaLGf4yQw0PLQZcqLLjtCr0nYs32++2/k0T1yoh4BUK35T3CWWR6ZkIXDFjc
 ViHgcsEhVFT70g5C9vQuZK5bFUCrdhnLBef0WGOW/sGab42fq4TZNyNCxAUpMVc2QFPG
 f7lw54czW2jGul4v6jyB6JALVzXLbGZRpSAge9ryADSuFEFO+O87PXOFY98woriMHJnz
 5H6S1UteCA6SGZQMHppQz/Sf+fxIdCrcNQqpHkMgR4KbpnpgXm1aulFQHoSaYFdg6wAF
 8EzlnqlHhJQwE9KQpTeMnMomXuwC7lSOODpcJ9Khk8+fzzTB3zcEIGGwV1p53AeHVr2H
 CU2w==
X-Gm-Message-State: AOAM532TMAlyr+6KlB9ZbqlW9ci4poeHB4q6wTtmpYqjzudnoSZypPs3
 /gDLJdkGxtECJVzunn8Nqs3XltEqEDutWlGdHWO93g==
X-Google-Smtp-Source: ABdhPJzJbQzeNPTuNOMHMff7aCJzGErvjO7pRBT5QzydRbyBwpY7TNg0ejysnilGn10ahFrXSo1oMtnUeWRwgRrZDag=
X-Received: by 2002:a7b:c185:: with SMTP id y5mr51495722wmi.85.1594042852077; 
 Mon, 06 Jul 2020 06:40:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200701212155.37830-1-james.quinlan@broadcom.com>
 <20200701212155.37830-9-james.quinlan@broadcom.com>
 <20200702084251.GF3703480@smile.fi.intel.com>
In-Reply-To: <20200702084251.GF3703480@smile.fi.intel.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Mon, 6 Jul 2020 09:40:40 -0400
Message-ID: <CA+-6iNwu-jHTb7VFpmkYoyipWK9rtTEOq2dW7K=nYXpUrOTwCQ@mail.gmail.com>
Subject: Re: [PATCH v6 08/12] device core: Introduce DMA range map,
 supplanting dma_pfn_offset
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rich Felker <dalias@libc.org>,
 "open list:SUPERH" <linux-sh@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, Hanjun Guo <guohanjun@huawei.com>,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Julien Grall <julien.grall@arm.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Frank Rowand <frowand.list@gmail.com>, Joerg Roedel <joro@8bytes.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 "open list:ACPI FOR ARM64 \(ACPI/arm64\)" <linux-acpi@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Ingo Molnar <mingo@redhat.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Alan Stern <stern@rowland.harvard.edu>, Len Brown <lenb@kernel.org>,
 Ohad Ben-Cohen <ohad@wizery.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Yong Deng <yong.deng@magewell.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Saravana Kannan <saravanak@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Oliver Neukum <oneukum@suse.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "open list:ALLWINNER A10 CSI DRIVER" <linux-media@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Andy,

Sorry for the delay in response.  I will do what you suggest in your
email.  I do have one response to one of your comments below.

On Thu, Jul 2, 2020 at 4:43 AM Andy Shevchenko
<andriy.shevchenko@linux.intePHYSl.com> wrote:
>
> On Wed, Jul 01, 2020 at 05:21:38PM -0400, Jim Quinlan wrote:
> > The new field 'dma_range_map' in struct device is used to facilitate the
> > use of single or multiple offsets between mapping regions of cpu addrs and
> > dma addrs.  It subsumes the role of "dev->dma_pfn_offset" which was only
> > capable of holding a single uniform offset and had no region bounds
> > checking.
> >
> > The function of_dma_get_range() has been modified so that it takes a single
> > argument -- the device node -- and returns a map, NULL, or an error code.
> > The map is an array that holds the information regarding the DMA regions.
> > Each range entry contains the address offset, the cpu_start address, the
> > dma_start address, and the size of the region.
> >
> > of_dma_configure() is the typical manner to set range offsets but there are
> > a number of ad hoc assignments to "dev->dma_pfn_offset" in the kernel
> > driver code.  These cases now invoke the function
> > dma_attach_offset_range(dev, cpu_addr, dma_addr, size).
>
> ...
>
> > +     if (dev && dev->dma_range_map)
> > +             pfn -= (unsigned long)PFN_DOWN(dma_offset_from_phys_addr(dev, PFN_PHYS(pfn)));
>
> Instead of casting use PHYS_PFN() and it will be consistent with latter in the same line.
>
> > +     if (dev && dev->dma_range_map)
> > +             pfn += (unsigned long)PFN_DOWN(dma_offset_from_dma_addr(dev, addr));
>
> Ditto.
>
> ...
>
> > +             dev_err(dev, "set dma_offset%08llx%s\n", KEYSTONE_HIGH_PHYS_START
> > +                     - KEYSTONE_LOW_PHYS_START, ret ? " failed" : "");
>
> Please, avoid such indentation.
> Better split it to the three lines, argument per line (expect dev which will go
> on the first one).
>
> This applies to all similar places.
>
> ...
>
> >       unsigned long pfn = (dma_handle >> PAGE_SHIFT);
>
> PHYS_PFN() / PFN_DOWN() ?
>
> > +     if (!WARN_ON(!dev) && dev->dma_range_map)
> > +             pfn += (unsigned long)PFN_DOWN(dma_offset_from_dma_addr(dev, dma_handle));
>
> PHYS_PFN() ?
>
> ...
>
> > +     r = kcalloc(num_ranges + 1, sizeof(struct bus_dma_region), GFP_KERNEL);
>
> sizeof(*r) ?
>
> > +     if (!r)
> > +             return ERR_PTR(-ENOMEM);
>
> ...
>
> > +     ret = IS_ERR(map) ? PTR_ERR(map) : 0;
>
> PTR_ERR_OR_ZERO()
>
> ...
>
> > +             /* We want the offset map to be device-managed, so alloc & copy */
> > +             dev->dma_range_map = devm_kcalloc(dev, num_ranges + 1, sizeof(*r),
> > +                                               GFP_KERNEL);
>
> The question is how many times per device lifetime this can be called?
Someone else questioned this.  There are two cases that come to mind:
our overnight test which load/unloads the RC driver over and over, and
a customer that does an unbind/bind  of the RC driver when their EP is
hung and wants to restart.  Both cases are atypical and are weak
arguments to justify the second copy.  I will drop the copy.

Thanks,
Jim Quinlan
Broadcom STB
>
> ...
>
>
> > +             if (!dev->dma_range_map)
> > +                     return -ENOMEM;
> > +             memcpy((void *)dev->dma_range_map, map, sizeof(*r) * num_ranges + 1);
>
> If it's continuous, perhaps kmemdup() ?
>
> ...
>
> > +     rc = IS_ERR(map) ? PTR_ERR(map) : 0;
>
> PTR_ERR_OR_ZERO()
>
> ...
>
> > +                     = dma_offset_from_phys_addr(dev, PFN_PHYS(mem->pfn_base));
> > +
> > +             return (dma_addr_t)PFN_PHYS(mem->pfn_base) - dma_offset;
>
> Looking at this more, I think you need to introduce in the same header (pfn.h)
> something like:
>
>         #define PFN_DMA_ADDR()
>         #define DMA_ADDR_PFN()
>
> --
> With Best Regards,
> Andy Shevchenko
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

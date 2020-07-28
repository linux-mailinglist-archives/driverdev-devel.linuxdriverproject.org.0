Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D6F2311D3
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 20:36:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BA797204DC;
	Tue, 28 Jul 2020 18:36:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e0NlE8IJl6sQ; Tue, 28 Jul 2020 18:36:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 31751221C6;
	Tue, 28 Jul 2020 18:36:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4BF401BF28E
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 18:36:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 47E9A84E7C
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 18:36:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4wpbkbJ6z4K4 for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 18:36:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7098B849B7
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 18:36:16 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id a15so19240075wrh.10
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 11:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ag+56VHWa4UupCVslbddFog8v3QbAb1GzSUnW5D8pYk=;
 b=PvUUgnajTgVqHh7tBRuZtFIB7BDtmLfblYvw2jEF15/d3+GlAPeqDzU78CSy/v0pSc
 lRFq6ogjsZSCDNnqZvDLYvmrGBsDuGWMguwsPfef44qQP0JhMGjYegJNcQNw7zqiNRbQ
 oPe6Iyj4j4DGdTKv7Om6t5OoeejJ16+aTcAjU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ag+56VHWa4UupCVslbddFog8v3QbAb1GzSUnW5D8pYk=;
 b=ZbLnJWTfIG3/JKh27J0Qs2WBde+xgj2SOBga3kSf0nrGCpTynvEYX3eVwD8y7nBsyR
 Fp0VOUOvy/pZtB37y48HxIjlyLldnDQtrjVeDOJQtCSInllnszP8Mh1FhvS8BUwS3DAu
 dXpgvIld6mCoKcaGNK/TCDQjQeGkWvw9qHpQAMjYZ6gLaO+F1y8cJv/RAUwH/5cz6hcD
 JsgylLJznHf0iM31qQJjYxa4WpHnuMxWKq1pqAGAH3yQKnLbC9AiEnT7lI4qSZrJ1/5Y
 8a/dPkWtlAGe/e5YjvY6ilj8e9P5ENaDKz6tRdpfoNKxmPq+bKpVHM92cxAKqZ4gHIbu
 2iYw==
X-Gm-Message-State: AOAM530zMCgDjnTFJJ3pECU23o3+M3IGTEeaZR+GL2yUjGFhM9CswfjU
 iRkaKfNLQDqfM94LHzSstgI4wXBOiZFL5rWLtfn+mA==
X-Google-Smtp-Source: ABdhPJyyeHCQpGWv2ZVhb8OOYQVNDOYREJTG68F/E7l3B030xqT3Xde6PnTY6nzIbRmhmBAEDqIr9CfuhXn3sEs6Cd4=
X-Received: by 2002:adf:ebc5:: with SMTP id v5mr22136755wrn.100.1595961374761; 
 Tue, 28 Jul 2020 11:36:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200724203407.16972-1-james.quinlan@broadcom.com>
 <20200724203407.16972-9-james.quinlan@broadcom.com>
 <20200728123343.GA3939@lst.de>
In-Reply-To: <20200728123343.GA3939@lst.de>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Tue, 28 Jul 2020 14:36:02 -0400
Message-ID: <CA+-6iNwRC3UZ5nMrWeBEKYDV=Jbj5Nvf9sWgY1CPXZyy9ofS4g@mail.gmail.com>
Subject: Re: [PATCH v9 08/12] device core: Introduce DMA range map,
 supplanting dma_pfn_offset
To: Christoph Hellwig <hch@lst.de>
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
Cc: Rich Felker <dalias@libc.org>,
 "open list:SUPERH" <linux-sh@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, Hanjun Guo <guohanjun@huawei.com>,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Julien Grall <julien.grall@arm.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
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
 <devicetree@vger.kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Borislav Petkov <bp@alien8.de>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Yong Deng <yong.deng@magewell.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
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
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Tue, Jul 28, 2020 at 8:33 AM Christoph Hellwig <hch@lst.de> wrote:
>
> A few tiny nitpicks:
>
> The subject should have the dma-mapping prefix, this doesn't
> really touch the device core.
>
> > -     rc = of_dma_get_range(np, &dma_addr, &paddr, &size);
> > +     rc = of_dma_get_range(np, &map);
> > +     rc = PTR_ERR_OR_ZERO(map);
>
> I don't think you need the PTR_ERR_OR_ZERO line here, of_dma_get_range
> returns the error.

Yes, that link needs to be deleted.

>
> > +int dma_set_offset_range(struct device *dev, phys_addr_t cpu_start,
> > +                      dma_addr_t dma_start, u64 size)hh
> > +{
> > +     struct bus_dma_region *map;
> > +     u64 offset = (u64)cpu_start - (u64)dma_start;
> > +
> > +     if (!dev)
> > +             return -ENODEV;
>
> I don't think we need the NULL protection here, all DMA API calls
> expect a device.
Yes, your review-patch removed it but left the comment about the
function returning -ENODEV.  So I wasn't sure to leave it in or not.
>
> > +     if (!offset)
> > +             return 0;
> > +
> > +     /*
> > +      * See if a map already exists and we already encompass the new range:
> > +      */
> > +     if (dev->dma_range_map) {
> > +             if (dma_range_overlaps(dev, cpu_start, dma_start, size, offset))
> > +                     return 0;
> > +             dev_err(dev, "attempt to add conflicting DMA range to existing map\n");
> > +             return -EINVAL;
> > +     }
>
> And here why do we need the overlap check at all?  I'd be tempted to
> always return an error for this case.
I believe the overlap check was your suggestion or at least in your
review-patch?  I'm fine with just returning an error.

>
> What is the plan to merge this?  Do you want all this to go into one
> tree, or get as many bits into the applicable trees for 5.9 and then
> finish up for 5.10?  If the former I can apply it to the dma-mapping
> tree and just fix up the nitpicks.
Whatever you think is best -- I would be quite happy if you could
accept at least the "dma_range_map" commit.   Of course I'd be most
happy if the entire patchset were accepted, but perhaps you can just
apply the  "dma_range_map" commit, and I will continue to bang away at
getting the N-1 PCIe-related commits ack'd and accepted.

Thanks much!
Jim Quinlan
Broadcom STB
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

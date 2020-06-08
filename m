Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 253821F1C63
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Jun 2020 17:49:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 39B0A86439;
	Mon,  8 Jun 2020 15:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G6jc5wDH5tyT; Mon,  8 Jun 2020 15:49:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2DFD2840A3;
	Mon,  8 Jun 2020 15:49:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A23E1BF370
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 15:49:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5592986228
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 15:49:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fugXh9ZBLgh2 for <devel@linuxdriverproject.org>;
 Mon,  8 Jun 2020 15:49:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C1F978621E
 for <devel@driverdev.osuosl.org>; Mon,  8 Jun 2020 15:49:04 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id l26so4852wme.3
 for <devel@driverdev.osuosl.org>; Mon, 08 Jun 2020 08:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3Zatdh65W3aH6MhJdNTH/AWqzt1N9QOAuNbG/kKQoQk=;
 b=XPgpdZtMZfiMPg5da4wdaof5iSzhA/ZVCghQbqTrDuqbo6ZHBkJ+6hzW6Rtuswt2th
 CucS7L68rAc9A2OMX3t2hThgLQkSf86045BbVp0BSipvykLwZzc3TREpeZqGeurMVBb8
 4aYqZctCI+0ceRS4poPN+NvTaALqxbr51DJqY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3Zatdh65W3aH6MhJdNTH/AWqzt1N9QOAuNbG/kKQoQk=;
 b=jEAy5/mnplQulZxH5jhCl30y73z75VGAj7a20ajpb6A/7DssbRrgYOkuJ3CdNeGCMl
 qqCoemWBLdjWsUXQW9Psj/dH/6d97S69BC4/eShtjoeJc73C9MpxU8Tx2LC6U1+yOtKr
 L0CSYBUCHWjsa/Wi9un3+eREgweRCZAYqETCD62Wm3RK3DIGqder0fKBLEbZyf49tRl7
 nrpzrPDEbKq9zVEvznBIZCJjJNEx3ytvRyrzWR0jcyNmv2d3rc+2IbY4xWP3dG96yt4d
 5AnMdFab6UaOMtaEW3vKlaiPzRWYQEq8kOg971JTPSBpo3ItVz25yFB/NSCsjRZ4f0VO
 z0JA==
X-Gm-Message-State: AOAM532Tyaav74jKdyMcb8IX4jJwGXNxfsS1C3W3KUyP5ktBN67C0DfL
 yvHgnolVeJ3wTWQdMavZeIcuEJYramuaBhO7BstEuQ==
X-Google-Smtp-Source: ABdhPJwc8WgkB5baQneSP3O56E527r0CcFTd8E6eqmfIQH4X1bWsduigHTlQQV7Hic/QVkEEt7XICj+d1DgqVMzgDVk=
X-Received: by 2002:a7b:c44a:: with SMTP id l10mr19134wmi.92.1591631342886;
 Mon, 08 Jun 2020 08:49:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200605212706.7361-1-james.quinlan@broadcom.com>
 <20200605212706.7361-9-james.quinlan@broadcom.com>
 <20200607164950.GX2428291@smile.fi.intel.com>
In-Reply-To: <20200607164950.GX2428291@smile.fi.intel.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Mon, 8 Jun 2020 11:48:51 -0400
Message-ID: <CA+-6iNyL12Z+igSrWnsmTzrwzyyeDtSK-9ULiZe0MwM5LO5bjQ@mail.gmail.com>
Subject: Re: [PATCH v4 08/12] device core: Introduce multiple dma pfn offsets
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
 Julien Grall <julien.grall@arm.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Wolfram Sang <wsa@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, Maxime Ripard <mripard@kernel.org>,
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
 Mark Brown <broonie@kernel.org>, Stefano Stabellini <sstabellini@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sudeep Holla <sudeep.holla@arm.com>,
 "open list:ALLWINNER A10 CSI DRIVER" <linux-media@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Andy,

On Sun, Jun 7, 2020 at 12:500f9bfe0fb8840b268af1bbcc51f1cd440514e PM
Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
>
> On Fri, Jun 05, 2020 at 05:26:48PM -0400, Jim Quinlan wrote:
> > The new field in struct device 'dma_pfn_offset_map' is used to facilitate
> > the use of single or multiple pfn offsets between cpu addrs and dma addrs.
> > It subsumes the role of dev->dma_pfn_offset -- a uniform offset.
> >
> > The function of_dma_get_range() has been modified to take two additional
> > arguments: the "map", which is an array that holds the information
> > regarding the pfn offset regions, and map_size, which is the size in bytes
> > of the map array.
> >
> > of_dma_configure() is the typical manner to set pfn offsets but there are a
> > number of ad hoc assignments to dev->dma_pfn_offset in the kernel driver
> > code.  These cases now invoke the function
> > dma_attach_uniform_pfn_offset(dev, pfn_offset).
>
> ...
>
> > +             int ret = dma_attach_uniform_pfn_offset
> > +                             (dev, keystone_dma_pfn_offset);
>
> It's strange indentation. Have you configured your editor correctly?
> Seems to me as fit on one line.
I'm using emacs with the c-style set to linux.  I may have some custom
tweaks; I'll check into it.  But I think I can fix most of your
objections by using the max_line_length of 100.

>
> > +             dev_err(dev, "set dma_pfn_offset%08lx%s\n",
> > +                     dev->dma_pfn_offset, ret ? " failed" : "");
>
> ...
>
> > +     *map_size = (num_ranges + 1) * sizeof(**map);
> > +     r = kzalloc(*map_size, GFP_KERNEL);
>
> kcalloc()
Since I have to calculate the size anyway I thought kzalloc was fine.
I'll switch.
>
> > +     if (!r)
> > +             return -ENOMEM;
>
> ...
>
> > +             r->pfn_offset = PFN_DOWN(range.cpu_addr)
> > +                     - PFN_DOWN(range.bus_addr);
>
> Ditto (indentation).
>
> ...
>
>
> > +             unsigned long dma_pfn_offset
> > +                     = dma_pfn_offset_from_phys_addr(dev, paddr);
>
> Ditto.
>
> ...
>
> > +             unsigned long dma_pfn_offset
> > +                     = dma_pfn_offset_from_dma_addr(dev, dev_addr);
>
> Ditto.
>
> Check entire your series for a such, please!

Will do,
Thanks
Jim Quinlan
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

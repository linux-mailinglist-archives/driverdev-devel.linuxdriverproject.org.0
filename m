Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A0C251C67
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 17:37:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 56A3C886D6;
	Tue, 25 Aug 2020 15:37:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lId1cXlA53Ir; Tue, 25 Aug 2020 15:37:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E01388683;
	Tue, 25 Aug 2020 15:37:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B3DD61BF41B
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 15:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AF0D522219
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 15:37:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tCh5UgyBQHF2 for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 15:37:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 0851F20345
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 15:37:37 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id c15so13144363wrs.11
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 08:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QiWW06IWe+VHrM4kR/F2lfc40IYQlHNu4dO/e0F06jo=;
 b=KvGAEAd0OvyVMeh2NKOfrKkXjBDpUD9XSlK35v/laWG9LWTCv0zAtvEF/u9wI7i6Yc
 1l4Hd/9Pv2MZ4ub7JnqRhmtPFlFg8/ApuIQ3s6HNiJlEN+F8gnXQ6nb1RfhTKwqzM1Uu
 fEGEr4KUFMVRnTUJqd4n6xw/SydHgMl/IeFaU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QiWW06IWe+VHrM4kR/F2lfc40IYQlHNu4dO/e0F06jo=;
 b=W4qX727T8HaY8ZNY61fps1ogjnmPHJC2ofVXPR1CmgoplgD+/Juzr58vnQHML6YLBT
 NqgVrWAazEAEL/iexeFNm/6WvF/SkXlTVY+tK6+huQn/acXxQTeWXW3swy91Czf5Gb79
 NzhdBIaU14Rz1qNCBFUE69mzfxLbJDpJ3VsLsh1YVepPbmrmEo8moEuT2toio6JNcWP4
 a4OKNBPIPgmAeYi3bfOcLX7lxm5eU3f0MrANicSivo2UCmEVZi1diABxZ1nuv4A83Y5A
 RFG3aOP27/wA1lLvSVAyaRz/Oxl6S8EUpNhuNEl632dgxhmesfmC2QxRbWpUKXjcUBO/
 bWcw==
X-Gm-Message-State: AOAM533IHDFa+aogztyz3UptFvLXwNvgoC7pPZswTwJUBn+R3Jqf2lyi
 DSUUti7eaC0/q6SjI0AmgRWhDkESGjdV939sgGbxkQ==
X-Google-Smtp-Source: ABdhPJzkA/FEnRbvsbderhdII4r81LGYlNH/sKgYxDlux/BAP67c6Z42PfH4SooQdTRw5rz6G6M1mL/iLjbQ9lymr+k=
X-Received: by 2002:adf:bb54:: with SMTP id x20mr10426414wrg.413.1598369855067; 
 Tue, 25 Aug 2020 08:37:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200824193036.6033-1-james.quinlan@broadcom.com>
 <20200824193036.6033-8-james.quinlan@broadcom.com>
 <20200825094506.GR1891694@smile.fi.intel.com>
In-Reply-To: <20200825094506.GR1891694@smile.fi.intel.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Tue, 25 Aug 2020 11:37:23 -0400
Message-ID: <CA+-6iNzV5_M0g8tQEmscb_nq4s5PcS69tb9e2m8Pm1O1ifpuow@mail.gmail.com>
Subject: Re: [PATCH v11 07/11] device-mapping: Introduce DMA range map,
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
Cc: Rich Felker <dalias@libc.org>,
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
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 "open list:ACPI FOR ARM64 \(ACPI/arm64\)" <linux-acpi@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Joerg Roedel <joro@8bytes.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 Ingo Molnar <mingo@redhat.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Alan Stern <stern@rowland.harvard.edu>, Len Brown <lenb@kernel.org>,
 Ohad Ben-Cohen <ohad@wizery.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Yong Deng <yong.deng@magewell.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Felipe Balbi <balbi@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
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


On Tue, Aug 25, 2020 at 5:54 AM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Mon, Aug 24, 2020 at 03:30:20PM -0400, Jim Quinlan wrote:
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
> > +     /*
> > +      * Record all info in the generic DMA ranges array for struct device.
> > +      */
> > +     *map = r;
> > +     for_each_of_range(&parser, &range) {
> > +             pr_debug("dma_addr(%llx) cpu_addr(%llx) size(%llx)\n",
> > +                      range.bus_addr, range.cpu_addr, range.size);
> > +             r->cpu_start = range.cpu_addr;
> > +             r->dma_start = range.bus_addr;
> > +             r->size = range.size;
>
> > +             r->offset = (u64)range.cpu_addr - (u64)range.bus_addr;
>
> What's the point in explicit castings to the same type?
No point.  If I have to send out another version I will fix this.

>
> > +             r++;
> > +     }
>
> ...
>
> > +             phys_addr_t     paddr;
> > +             dma_addr_t      dma_addr;
> > +             struct device   dev_bogus;
>
> >               unittest(paddr == expect_paddr,
> > -                      "of_dma_get_range wrong phys addr (%llx) on node %pOF", paddr, np);
> > +                      "of_dma_get_range: wrong phys addr %llx (expecting %llx) on node %pOF\n",
> > +                      (u64)paddr, expect_paddr, np);
>
> %llx -> %pap
This was intentional -- I'm aware of %pap and %pad.  The problem is
that %pa[pd]  print out a zero-filled 16 character number regardless
of what the number is.  For example, 1 is "0x0000000000000001",
whereas using %llx yields "1".

>
> >               unittest(dma_addr == expect_dma_addr,
> > -                      "of_dma_get_range wrong DMA addr (%llx) on node %pOF", dma_addr, np);
> > +                      "of_dma_get_range: wrong DMA addr %llx (expecting %llx) on node %pOF\n",
> > +                      (u64)dma_addr, expect_dma_addr, np);
>
> %llx -> %pad
>
> ...
>
> > +     if (mem->use_dev_dma_pfn_offset) {
> > +             u64 base_addr = PFN_PHYS((u64)mem->pfn_base);
>
> Do we need explicit casting here?
I don't think it is needed.  However, the "(u64)" is useless though
since the macro recasts it to a phys_addr_t.

If there is another version of this submission I will change this.
>
> > +
> > +             return base_addr - dma_offset_from_phys_addr(dev, base_addr);
> > +     }
>
> ...
>
> > +int dma_set_offset_range(struct device *dev, phys_addr_t cpu_start,
> > +                      dma_addr_t dma_start, u64 size)
> > +{
> > +     struct bus_dma_region *map;
> > +     u64 offset = (u64)cpu_start - (u64)dma_start;
> > +
> > +     if (dev->dma_range_map) {
> > +             dev_err(dev, "attempt to add DMA range to existing map\n");
> > +             return -EINVAL;
> > +     }
>
> Wouldn't be better to do an assignment of offset here?
IIRC this was what Christoph requested.  It has actually gone back and
forth over the versions of this submission.
>
> > +     if (!offset)
> > +             return 0;
> > +
> > +     map = kcalloc(2, sizeof(*map), GFP_KERNEL);
> > +     if (!map)
> > +             return -ENOMEM;
> > +     map[0].cpu_start = cpu_start;
> > +     map[0].dma_start = dma_start;
> > +     map[0].offset = offset;
> > +     map[0].size = size;
> > +     dev->dma_range_map = map;
> > +
> > +     return 0;
> > +}
>
> --
> With Best Regards,
> Andy Shevchenko
Thanks again,
Jim
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD7924BEF8
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 15:37:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F1802861F1;
	Thu, 20 Aug 2020 13:37:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KgcPE7LfB8Z7; Thu, 20 Aug 2020 13:37:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E001861F9;
	Thu, 20 Aug 2020 13:37:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 500FD1BF232
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 13:37:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4B96486078
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 13:37:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aQrs1OFLSFpk for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 13:37:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D2808612B
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 13:37:26 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id x5so1630945wmi.2
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 06:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4+6ADjrPvvoJQXwHRirxRtxpPYB0wJtxuMB6HUjv7UY=;
 b=Swx1tEOMBHi4gqwd5WrKaF9EhsDucF9YFbFUCb3Nq3JX3XsxRj2vR//C1fN8QtRMD9
 u0CeslUmWwoXuhfe2Ek68crFc48Pk0dqQH7F7EKxd4M+fCOAZnRKBfegSKkpUW5N+3RQ
 kh16yovfPlW5wzYfBGmiAgHcsAu5CAFFQv+x0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4+6ADjrPvvoJQXwHRirxRtxpPYB0wJtxuMB6HUjv7UY=;
 b=FGze+iqlOslxhCE2lxKj61AAHkYqsapY321dmFGPaa26Cap4HEMcFy1eTo0rZmdvXi
 FjcAuXMI361WsxY+3ivpY7Mxm3iC71HJwL3Ee8nYJJkj+eTX2wHrUmVjn15QKpcR+yaw
 Xd5P/8aIPuJV+yWt2u5WS75xQ8SS6JVGwbg1B9v5XWbefxwj2aQ5ykfNhbOgmodxUbFZ
 ZBJGknUUCRqxWO9YuWuTcbYtF7YyZOrjqB0sHNGKwT0M8cbS8KWvDJUssUMEKVCjXw7I
 NSqx1XGCSsfcrhMxMcvRzSiVCVTsA2gBJRS5g3GJVhOpJSaYhhEcXaYEHN5hBDY7tt6g
 XEwA==
X-Gm-Message-State: AOAM530H4RNzY4glsngbmuvuSyBebbkWj1uVqf/XegY/ZmfHvU8Xyvry
 RRoVT4WFaPxNkaPMb9hNjv6yLm/hN9RyXbgxiASxEQ==
X-Google-Smtp-Source: ABdhPJxWp3xMT2A+UZz4XucmhLWruB83RBp1YSjTxyEIEeN4jQBzlPde+MRBaiWP71APheOu4D0+3NXwfGGj6VU/La4=
X-Received: by 2002:a7b:c1d0:: with SMTP id a16mr248078wmj.111.1597930645019; 
 Thu, 20 Aug 2020 06:37:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200817215326.30912-1-james.quinlan@broadcom.com>
 <20200817215326.30912-8-james.quinlan@broadcom.com>
 <20200818081225.GA1891694@smile.fi.intel.com>
In-Reply-To: <20200818081225.GA1891694@smile.fi.intel.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 20 Aug 2020 09:37:12 -0400
Message-ID: <CA+-6iNwCy1FUKSgjhFnb2L+fYZbcPNjwP0TgLQ-HA_5aqB-tdg@mail.gmail.com>
Subject: Re: [PATCH RESEND v10 07/11] device-mapping: Introduce DMA range map, 
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
 Julien Grall <julien.grall@arm.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>,
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
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Yong Deng <yong.deng@magewell.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Saravana Kannan <saravanak@google.com>,
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

Hi Anday,


On Tue, Aug 18, 2020 at 4:14 AM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Mon, Aug 17, 2020 at 05:53:09PM -0400, Jim Quinlan wrote:
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
> > +     if (dev) {
> > +             phys_addr_t paddr = PFN_PHYS(pfn);
> > +
>
> > +             pfn -= (dma_offset_from_phys_addr(dev, paddr) >> PAGE_SHIFT);
>
> PFN_DOWN() ?
Yep.
>
> > +     }
>
> ...
>
> > +             pfn += (dma_offset_from_dma_addr(dev, addr) >> PAGE_SHIFT);
>
> Ditto.
Yep.
>
>
> ...
>
> > +static inline u64 dma_offset_from_dma_addr(struct device *dev, dma_addr_t dma_addr)
> > +{
> > +     const struct bus_dma_region *m = dev->dma_range_map;
> > +
> > +     if (!m)
> > +             return 0;
> > +     for (; m->size; m++)
> > +             if (dma_addr >= m->dma_start && dma_addr - m->dma_start < m->size)
> > +                     return m->offset;
> > +     return 0;
> > +}
> > +
> > +static inline u64 dma_offset_from_phys_addr(struct device *dev, phys_addr_t paddr)
> > +{
> > +     const struct bus_dma_region *m = dev->dma_range_map;
> > +
> > +     if (!m)
> > +             return 0;
> > +     for (; m->size; m++)
> > +             if (paddr >= m->cpu_start && paddr - m->cpu_start < m->size)
> > +                     return m->offset;
> > +     return 0;
> > +}
>
> Perhaps for these the form with one return 0 is easier to read
>
>         if (m) {
>                 for (; m->size; m++)
>                         if (paddr >= m->cpu_start && paddr - m->cpu_start < m->size)
>                                 return m->offset;
>         }
>         return 0;
>
> ?
I see what you are saying but I don't think there is enough difference
between the two to justify changing it.
>
> ...
>
> > +     if (mem->use_dev_dma_pfn_offset) {
> > +             u64 base_addr = (u64)mem->pfn_base << PAGE_SHIFT;
>
> PFN_PHYS() ?
Yep.

>
> > +
> > +             return base_addr - dma_offset_from_phys_addr(dev, base_addr);
> > +     }
>
> ...
>
> > + * It returns -ENOMEM if out of memory, 0 otherwise.
>
> This doesn't describe cases dev->dma_range_map != NULL and offset == 0.
Okay, I'll fix this.

>
> > +int dma_set_offset_range(struct device *dev, phys_addr_t cpu_start,
> > +                      dma_addr_t dma_start, u64 size)
> > +{
> > +     struct bus_dma_region *map;
> > +     u64 offset = (u64)cpu_start - (u64)dma_start;
> > +
> > +     if (!offset)
> > +             return 0;
> > +
> > +     if (dev->dma_range_map) {
> > +             dev_err(dev, "attempt to add DMA range to existing map\n");
> > +             return -EINVAL;
> > +     }
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
> ...
>
> > +void *dma_copy_dma_range_map(const struct bus_dma_region *map)
> > +{
> > +     int num_ranges;
> > +     struct bus_dma_region *new_map;
> > +     const struct bus_dma_region *r = map;
> > +
> > +     for (num_ranges = 0; r->size; num_ranges++)
> > +             r++;
>
> > +     new_map = kcalloc(num_ranges + 1, sizeof(*map), GFP_KERNEL);
> > +     if (new_map)
> > +             memcpy(new_map, map, sizeof(*map) * num_ranges);
>
> Looks like krealloc() on the first glance...
It's not.  We are making a distinct copy of the original, not resizing it.
>
> > +
> > +     return new_map;
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

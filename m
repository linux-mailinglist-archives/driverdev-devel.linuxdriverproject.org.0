Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 512A324D09B
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 10:35:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 91656228D1;
	Fri, 21 Aug 2020 08:35:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rIAAGc1lAXgR; Fri, 21 Aug 2020 08:35:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CE331220B2;
	Fri, 21 Aug 2020 08:35:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C94031BF330
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 08:35:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C4F8786CF4
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 08:35:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uQi0W5JrDwfT for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 08:35:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16D0E86CEF
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 08:35:30 +0000 (UTC)
IronPort-SDR: 01VJ7vYA7eRGmBjh9L5JMPbq1Xl3Y8unFK2xiiHNQ+Wncha4NhHDF0A7rpb2u1qNCem3VdrWiE
 uTj56VaO4aug==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="135549973"
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; d="scan'208";a="135549973"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 01:35:29 -0700
IronPort-SDR: sFEKwv6y/kLUfJd0c/oiHtZBJBdoOxUSjHH+8M4J6WHXjAjmPnpfKPCWAHeow4nT3yt/VMUMRr
 IMpAxfbWC23A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; d="scan'208";a="327705580"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008.jf.intel.com with ESMTP; 21 Aug 2020 01:35:17 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1k920K-00AHyO-Ln; Fri, 21 Aug 2020 11:02:28 +0300
Date: Fri, 21 Aug 2020 11:02:28 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH RESEND v10 07/11] device-mapping: Introduce DMA range
 map, supplanting dma_pfn_offset
Message-ID: <20200821080228.GF1891694@smile.fi.intel.com>
References: <20200817215326.30912-1-james.quinlan@broadcom.com>
 <20200817215326.30912-8-james.quinlan@broadcom.com>
 <20200818081225.GA1891694@smile.fi.intel.com>
 <CA+-6iNwCy1FUKSgjhFnb2L+fYZbcPNjwP0TgLQ-HA_5aqB-tdg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+-6iNwCy1FUKSgjhFnb2L+fYZbcPNjwP0TgLQ-HA_5aqB-tdg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Aug 20, 2020 at 09:37:12AM -0400, Jim Quinlan wrote:
> On Tue, Aug 18, 2020 at 4:14 AM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> > On Mon, Aug 17, 2020 at 05:53:09PM -0400, Jim Quinlan wrote:

...

> > > +static inline u64 dma_offset_from_dma_addr(struct device *dev, dma_addr_t dma_addr)
> > > +{
> > > +     const struct bus_dma_region *m = dev->dma_range_map;
> > > +
> > > +     if (!m)
> > > +             return 0;
> > > +     for (; m->size; m++)
> > > +             if (dma_addr >= m->dma_start && dma_addr - m->dma_start < m->size)
> > > +                     return m->offset;
> > > +     return 0;
> > > +}
> > > +
> > > +static inline u64 dma_offset_from_phys_addr(struct device *dev, phys_addr_t paddr)
> > > +{
> > > +     const struct bus_dma_region *m = dev->dma_range_map;
> > > +
> > > +     if (!m)
> > > +             return 0;
> > > +     for (; m->size; m++)
> > > +             if (paddr >= m->cpu_start && paddr - m->cpu_start < m->size)
> > > +                     return m->offset;
> > > +     return 0;
> > > +}
> >
> > Perhaps for these the form with one return 0 is easier to read
> >
> >         if (m) {
> >                 for (; m->size; m++)
> >                         if (paddr >= m->cpu_start && paddr - m->cpu_start < m->size)
> >                                 return m->offset;
> >         }
> >         return 0;
> >
> > ?
> I see what you are saying but I don't think there is enough difference
> between the two to justify changing it.

The difference is that you have return 0 / non-0 cases one each. I think it's
slightly easier to read and understand, but it's up to you.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

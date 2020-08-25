Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6402515BD
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 11:54:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE7CC8679B;
	Tue, 25 Aug 2020 09:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lHD6qulmlxpo; Tue, 25 Aug 2020 09:54:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 542C684AA7;
	Tue, 25 Aug 2020 09:54:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18E821BF2B0
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 09:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 140D188236
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 09:54:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uQo9T0NLQWd4 for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 09:54:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 548FD8820F
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 09:54:07 +0000 (UTC)
IronPort-SDR: 6hpM7x0UiR/yrYLByUsJh745S4gx9wvdZNtyyd0erzpPKWy+LCOyOX0KbgufdDasI9QqTdrxYW
 FAaXD8LCYQIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="155336630"
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="155336630"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 02:54:06 -0700
IronPort-SDR: fXpejcZSxOQzAYQmsZusBmHI4H12+oJKHHrXIpgIPlgnPNsjR6YUhbnDxGUVZmoVHxv6yRdqze
 zyT2d6eDyJew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="328813544"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008.jf.intel.com with ESMTP; 25 Aug 2020 02:53:54 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1kAVVq-00BIMP-3K; Tue, 25 Aug 2020 12:45:06 +0300
Date: Tue, 25 Aug 2020 12:45:06 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH v11 07/11] device-mapping: Introduce DMA range map,
 supplanting dma_pfn_offset
Message-ID: <20200825094506.GR1891694@smile.fi.intel.com>
References: <20200824193036.6033-1-james.quinlan@broadcom.com>
 <20200824193036.6033-8-james.quinlan@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200824193036.6033-8-james.quinlan@broadcom.com>
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
 linux-pci@vger.kernel.org, Hanjun Guo <guohanjun@huawei.com>,
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
 Ingo Molnar <mingo@redhat.com>, bcm-kernel-feedback-list@broadcom.com,
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

On Mon, Aug 24, 2020 at 03:30:20PM -0400, Jim Quinlan wrote:
> The new field 'dma_range_map' in struct device is used to facilitate the
> use of single or multiple offsets between mapping regions of cpu addrs and
> dma addrs.  It subsumes the role of "dev->dma_pfn_offset" which was only
> capable of holding a single uniform offset and had no region bounds
> checking.
> 
> The function of_dma_get_range() has been modified so that it takes a single
> argument -- the device node -- and returns a map, NULL, or an error code.
> The map is an array that holds the information regarding the DMA regions.
> Each range entry contains the address offset, the cpu_start address, the
> dma_start address, and the size of the region.
> 
> of_dma_configure() is the typical manner to set range offsets but there are
> a number of ad hoc assignments to "dev->dma_pfn_offset" in the kernel
> driver code.  These cases now invoke the function
> dma_attach_offset_range(dev, cpu_addr, dma_addr, size).

...

> +	/*
> +	 * Record all info in the generic DMA ranges array for struct device.
> +	 */
> +	*map = r;
> +	for_each_of_range(&parser, &range) {
> +		pr_debug("dma_addr(%llx) cpu_addr(%llx) size(%llx)\n",
> +			 range.bus_addr, range.cpu_addr, range.size);
> +		r->cpu_start = range.cpu_addr;
> +		r->dma_start = range.bus_addr;
> +		r->size = range.size;

> +		r->offset = (u64)range.cpu_addr - (u64)range.bus_addr;

What's the point in explicit castings to the same type?

> +		r++;
> +	}

...

> +		phys_addr_t	paddr;
> +		dma_addr_t	dma_addr;
> +		struct device	dev_bogus;

>  		unittest(paddr == expect_paddr,
> -			 "of_dma_get_range wrong phys addr (%llx) on node %pOF", paddr, np);
> +			 "of_dma_get_range: wrong phys addr %llx (expecting %llx) on node %pOF\n",
> +			 (u64)paddr, expect_paddr, np);

%llx -> %pap

>  		unittest(dma_addr == expect_dma_addr,
> -			 "of_dma_get_range wrong DMA addr (%llx) on node %pOF", dma_addr, np);
> +			 "of_dma_get_range: wrong DMA addr %llx (expecting %llx) on node %pOF\n",
> +			 (u64)dma_addr, expect_dma_addr, np);

%llx -> %pad

...

> +	if (mem->use_dev_dma_pfn_offset) {
> +		u64 base_addr = PFN_PHYS((u64)mem->pfn_base);

Do we need explicit casting here?

> +
> +		return base_addr - dma_offset_from_phys_addr(dev, base_addr);
> +	}

...

> +int dma_set_offset_range(struct device *dev, phys_addr_t cpu_start,
> +			 dma_addr_t dma_start, u64 size)
> +{
> +	struct bus_dma_region *map;
> +	u64 offset = (u64)cpu_start - (u64)dma_start;
> +
> +	if (dev->dma_range_map) {
> +		dev_err(dev, "attempt to add DMA range to existing map\n");
> +		return -EINVAL;
> +	}

Wouldn't be better to do an assignment of offset here?

> +	if (!offset)
> +		return 0;
> +
> +	map = kcalloc(2, sizeof(*map), GFP_KERNEL);
> +	if (!map)
> +		return -ENOMEM;
> +	map[0].cpu_start = cpu_start;
> +	map[0].dma_start = dma_start;
> +	map[0].offset = offset;
> +	map[0].size = size;
> +	dev->dma_range_map = map;
> +
> +	return 0;
> +}

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

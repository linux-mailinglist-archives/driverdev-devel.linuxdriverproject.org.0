Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77117211F11
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 10:43:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B5E158B29D;
	Thu,  2 Jul 2020 08:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qwyyRcYZzW50; Thu,  2 Jul 2020 08:43:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 230AB8B29C;
	Thu,  2 Jul 2020 08:43:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B6CA31BF3C1
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 08:43:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AE8578A8A2
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 08:43:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H73NRKfNcYJu for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 08:43:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EDB6A8A88D
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 08:43:05 +0000 (UTC)
IronPort-SDR: X2SzJvhOSlyeNBDmKwA0IhcDN76/dadrcODx5PMJdLaenvbcSQGHpdBa0FrIOt0xWsVae+LsK4
 cxrCgLr6E1zw==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="146833274"
X-IronPort-AV: E=Sophos;i="5.75,303,1589266800"; d="scan'208";a="146833274"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 01:43:05 -0700
IronPort-SDR: Q2nxPrTtmUToq0yOpIzS0GA/7crHTMfu/dZOOBboqm+ZlBYFNc4EkqzjpBasXpdERrmwG67AsP
 P7O6Z4MJXKfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,303,1589266800"; d="scan'208";a="281886415"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga006.jf.intel.com with ESMTP; 02 Jul 2020 01:42:53 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jqunz-00HAm0-Ek; Thu, 02 Jul 2020 11:42:51 +0300
Date: Thu, 2 Jul 2020 11:42:51 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH v6 08/12] device core: Introduce DMA range map,
 supplanting dma_pfn_offset
Message-ID: <20200702084251.GF3703480@smile.fi.intel.com>
References: <20200701212155.37830-1-james.quinlan@broadcom.com>
 <20200701212155.37830-9-james.quinlan@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200701212155.37830-9-james.quinlan@broadcom.com>
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rich Felker <dalias@libc.org>,
 "open list:SUPERH" <linux-sh@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-pci@vger.kernel.org, Hanjun Guo <guohanjun@huawei.com>,
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
 bcm-kernel-feedback-list@broadcom.com, Alan Stern <stern@rowland.harvard.edu>,
 Len Brown <lenb@kernel.org>, Ohad Ben-Cohen <ohad@wizery.com>,
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

On Wed, Jul 01, 2020 at 05:21:38PM -0400, Jim Quinlan wrote:
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

> +	if (dev && dev->dma_range_map)
> +		pfn -= (unsigned long)PFN_DOWN(dma_offset_from_phys_addr(dev, PFN_PHYS(pfn)));

Instead of casting use PHYS_PFN() and it will be consistent with latter in the same line.

> +	if (dev && dev->dma_range_map)
> +		pfn += (unsigned long)PFN_DOWN(dma_offset_from_dma_addr(dev, addr));

Ditto.

...

> +		dev_err(dev, "set dma_offset%08llx%s\n", KEYSTONE_HIGH_PHYS_START
> +			- KEYSTONE_LOW_PHYS_START, ret ? " failed" : "");

Please, avoid such indentation.
Better split it to the three lines, argument per line (expect dev which will go
on the first one).

This applies to all similar places.

...

>  	unsigned long pfn = (dma_handle >> PAGE_SHIFT);

PHYS_PFN() / PFN_DOWN() ?

> +	if (!WARN_ON(!dev) && dev->dma_range_map)
> +		pfn += (unsigned long)PFN_DOWN(dma_offset_from_dma_addr(dev, dma_handle));

PHYS_PFN() ?

...

> +	r = kcalloc(num_ranges + 1, sizeof(struct bus_dma_region), GFP_KERNEL);

sizeof(*r) ?

> +	if (!r)
> +		return ERR_PTR(-ENOMEM);

...

> +	ret = IS_ERR(map) ? PTR_ERR(map) : 0;

PTR_ERR_OR_ZERO()

...

> +		/* We want the offset map to be device-managed, so alloc & copy */
> +		dev->dma_range_map = devm_kcalloc(dev, num_ranges + 1, sizeof(*r),
> +						  GFP_KERNEL);

The question is how many times per device lifetime this can be called?

...


> +		if (!dev->dma_range_map)
> +			return -ENOMEM;
> +		memcpy((void *)dev->dma_range_map, map, sizeof(*r) * num_ranges + 1);

If it's continuous, perhaps kmemdup() ?

...

> +	rc = IS_ERR(map) ? PTR_ERR(map) : 0;

PTR_ERR_OR_ZERO()

...

> +			= dma_offset_from_phys_addr(dev, PFN_PHYS(mem->pfn_base));
> +
> +		return (dma_addr_t)PFN_PHYS(mem->pfn_base) - dma_offset;

Looking at this more, I think you need to introduce in the same header (pfn.h)
something like:

	#define PFN_DMA_ADDR()
	#define DMA_ADDR_PFN()

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5249B260C07
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Sep 2020 09:32:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B17BA272F5;
	Tue,  8 Sep 2020 07:32:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jCyco-4MQcaA; Tue,  8 Sep 2020 07:32:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5D5E023355;
	Tue,  8 Sep 2020 07:32:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 71C581BF2EF
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 07:32:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6D888871EC
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 07:32:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M5SMe2K9Yhr6 for <devel@linuxdriverproject.org>;
 Tue,  8 Sep 2020 07:32:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8411B87087
 for <devel@driverdev.osuosl.org>; Tue,  8 Sep 2020 07:32:06 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3E66068AFE; Tue,  8 Sep 2020 09:32:03 +0200 (CEST)
Date: Tue, 8 Sep 2020 09:32:03 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v11 07/11] device-mapping: Introduce DMA range map,
 supplanting dma_pfn_offset
Message-ID: <20200908073203.GA15176@lst.de>
References: <20200902215314.GA881878@ubuntu-n2-xlarge-x86>
 <CA+-6iNzc38OAL7TGxobpODKXOD1CW-VFNU0rK9Z043QfR3MfsQ@mail.gmail.com>
 <20200902223852.GA1786990@ubuntu-n2-xlarge-x86>
 <6922bc0b-1849-2f2f-ec2f-fe9f0124dcfc@gmail.com>
 <20200903005240.GA1118@Ryzen-9-3900X.localdomain>
 <CA+-6iNyv_sFJOxDi5OcYNWe=ovLnOnrZNsWFQk5b-bzQzA8T_Q@mail.gmail.com>
 <34aa0d6094e7d6fb3492d2cda0fec8ecc04790ed.camel@suse.de>
 <CA+-6iNyJ3ey0zPKj9nh8uL3AwTBhJqgD01wc=7G4NF35NXmV1Q@mail.gmail.com>
 <b4761ade39af346eebec917ca2a415c09681542a.camel@suse.de>
 <20200908072935.GA15119@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200908072935.GA15119@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
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
 "open list:REMOTE PROCESSOR REMOTEPROC SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Julien Grall <julien.grall@arm.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "maintainer:X86 ARCHITECTURE 32-BIT AND 64-BIT" <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 "open list:ACPI FOR ARM64 ACPI/arm64" <linux-acpi@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Ingo Molnar <mingo@redhat.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Alan Stern <stern@rowland.harvard.edu>, Len Brown <lenb@kernel.org>,
 Ohad Ben-Cohen <ohad@wizery.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Yong Deng <yong.deng@magewell.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Felipe Balbi <balbi@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "open list:ALLWINNER A10 CSI DRIVER" <linux-media@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 08, 2020 at 09:29:35AM +0200, Christoph Hellwig wrote:
> FYI, this is what I'd do relative to the patch on the dma-ranges
> branch.  In fact realizing this makes me want to refactor things a bit
> so that the new code can entirely live in the dma-direct code, but please
> test this first:

And of course this isn't going to work for arm devices without any
range, so let's try this instead:

diff --git a/arch/arm/include/asm/dma-mapping.h b/arch/arm/include/asm/dma-mapping.h
index c21893f683b585..e913e04d2be8b9 100644
--- a/arch/arm/include/asm/dma-mapping.h
+++ b/arch/arm/include/asm/dma-mapping.h
@@ -35,21 +35,20 @@ static inline const struct dma_map_ops *get_arch_dma_ops(struct bus_type *bus)
 #ifndef __arch_pfn_to_dma
 static inline dma_addr_t pfn_to_dma(struct device *dev, unsigned long pfn)
 {
-	if (dev) {
-		phys_addr_t paddr = PFN_PHYS(pfn);
-
-		pfn -= PFN_DOWN(dma_offset_from_phys_addr(dev, paddr));
-	}
-	return (dma_addr_t)__pfn_to_bus(pfn);
+	if (!dev)
+		return (dma_addr_t)__pfn_to_bus(pfn);
+	if (dev->dma_range_map)
+		return translate_phys_to_dma(dev, PFN_PHYS(pfn));
+	return (dma_addr_t)PFN_PHYS(pfn);
 }
 
 static inline unsigned long dma_to_pfn(struct device *dev, dma_addr_t addr)
 {
-	unsigned long pfn = __bus_to_pfn(addr);
-
-	if (dev)
-		pfn += PFN_DOWN(dma_offset_from_dma_addr(dev, addr));
-	return pfn;
+	if (!dev)
+		return __bus_to_pfn(addr);
+	if (dev->dma_range_map)
+		return PFN_DOWN(translate_dma_to_phys(dev, addr));
+	return PFN_DOWN(addr);
 }
 
 static inline void *dma_to_virt(struct device *dev, dma_addr_t addr)
diff --git a/include/linux/dma-direct.h b/include/linux/dma-direct.h
index 7831ca5b1b5dd6..e624171c4962ad 100644
--- a/include/linux/dma-direct.h
+++ b/include/linux/dma-direct.h
@@ -19,12 +19,16 @@ extern unsigned int zone_dma_bits;
 #else
 static inline dma_addr_t __phys_to_dma(struct device *dev, phys_addr_t paddr)
 {
-	return (dma_addr_t)paddr - dma_offset_from_phys_addr(dev, paddr);
+	if (dev->dma_range_map)
+		return (dma_addr_t)paddr - translate_phys_to_dma(dev, paddr);
+	return (dma_addr_t)paddr;
 }
 
-static inline phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t dev_addr)
+static inline phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t dma_addr)
 {
-	return (phys_addr_t)dev_addr + dma_offset_from_dma_addr(dev, dev_addr);
+	if (dev->dma_range_map)
+		return translate_dma_to_phys(dev, dma_addr);
+	return (phys_addr_t)dma_addr;
 }
 #endif /* !CONFIG_ARCH_HAS_PHYS_TO_DMA */
 
diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
index 4c4646761afee4..3b1ceebb6f2ad5 100644
--- a/include/linux/dma-mapping.h
+++ b/include/linux/dma-mapping.h
@@ -199,29 +199,28 @@ struct bus_dma_region {
 };
 
 #ifdef CONFIG_HAS_DMA
-static inline u64 dma_offset_from_dma_addr(struct device *dev,
-		dma_addr_t dma_addr)
+static inline dma_addr_t translate_phys_to_dma(struct device *dev,
+		phys_addr_t paddr)
 {
-	const struct bus_dma_region *m = dev->dma_range_map;
+	const struct bus_dma_region *m;
 
-	if (m)
-		for (; m->size; m++)
-			if (dma_addr >= m->dma_start &&
-			    dma_addr - m->dma_start < m->size)
-				return m->offset;
-	return 0;
+	for (m = dev->dma_range_map; m->size; m++)
+		if (paddr >= m->cpu_start && paddr - m->cpu_start < m->size)
+			return (dma_addr_t)paddr - m->offset;
+
+	/* make sure dma_capable fails when no translation is available */
+	return DMA_MAPPING_ERROR; 
 }
 
-static inline u64 dma_offset_from_phys_addr(struct device *dev,
-		phys_addr_t paddr)
+static inline phys_addr_t translate_dma_to_phys(struct device *dev,
+		dma_addr_t dma_addr)
 {
-	const struct bus_dma_region *m = dev->dma_range_map;
+	const struct bus_dma_region *m;
+
+	for (m = dev->dma_range_map; m->size; m++)
+		if (dma_addr >= m->dma_start && dma_addr - m->dma_start < m->size)
+			return (phys_addr_t)dma_addr + m->offset;
 
-	if (m)
-		for (; m->size; m++)
-			if (paddr >= m->cpu_start &&
-			    paddr - m->cpu_start < m->size)
-				return m->offset;
 	return 0;
 }
 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

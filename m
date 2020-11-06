Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B55A62A9910
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 17:07:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A48A087511;
	Fri,  6 Nov 2020 16:07:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dCKxqp+8z95l; Fri,  6 Nov 2020 16:07:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C48D87510;
	Fri,  6 Nov 2020 16:07:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A39BB1BF287
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 16:07:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 833362E0F9
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 16:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NiKsh3YPuHcw for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 16:07:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by silver.osuosl.org (Postfix) with ESMTPS id 40B08203CF
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 16:07:43 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7B3C268B05; Fri,  6 Nov 2020 17:07:38 +0100 (CET)
Date: Fri, 6 Nov 2020 17:07:37 +0100
From: Christoph Hellwig <hch@lst.de>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 0/7] sunxi: Remove the calls to dma_direct_set_offset
Message-ID: <20201106160737.GA31913@lst.de>
References: <20201106151411.321743-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201106151411.321743-1-maxime@cerno.tech>
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
Cc: devel@driverdev.osuosl.org, Hans Verkuil <hverkuil@xs4all.nl>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Yong Deng <yong.deng@magewell.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks,

this looks good to me:

Reviewed-by: Christoph Hellwig <hch@lst.de>

Can you include this patch at the end of your series to that it gets
picked up with the other patches?

---
From 5963f88d365367fe74d477b8420d34562d684406 Mon Sep 17 00:00:00 2001
From: Christoph Hellwig <hch@lst.de>
Date: Fri, 6 Nov 2020 17:02:17 +0100
Subject: dma-mapping: remove the dma_direct_set_offset export

Drop the dma_direct_set_offset export and move the declaration to
dma-map-ops.h now that the Allwinner drivers have stopped calling it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/mach-keystone/keystone.c | 2 +-
 arch/arm/mach-omap1/usb.c         | 2 +-
 arch/sh/drivers/pci/pcie-sh7786.c | 2 +-
 arch/x86/pci/sta2x11-fixup.c      | 3 ++-
 include/linux/dma-map-ops.h       | 3 +++
 include/linux/dma-mapping.h       | 7 -------
 kernel/dma/direct.c               | 1 -
 7 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-keystone/keystone.c b/arch/arm/mach-keystone/keystone.c
index 09a65c2dfd7327..cd711bfc591f21 100644
--- a/arch/arm/mach-keystone/keystone.c
+++ b/arch/arm/mach-keystone/keystone.c
@@ -8,7 +8,7 @@
  */
 #include <linux/io.h>
 #include <linux/of.h>
-#include <linux/dma-mapping.h>
+#include <linux/dma-map-ops.h>
 #include <linux/init.h>
 #include <linux/of_platform.h>
 #include <linux/of_address.h>
diff --git a/arch/arm/mach-omap1/usb.c b/arch/arm/mach-omap1/usb.c
index ba8566204ea9f4..86d3b3c157af44 100644
--- a/arch/arm/mach-omap1/usb.c
+++ b/arch/arm/mach-omap1/usb.c
@@ -9,7 +9,7 @@
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/platform_device.h>
-#include <linux/dma-mapping.h>
+#include <linux/dma-map-ops.h>
 #include <linux/io.h>
 
 #include <asm/irq.h>
diff --git a/arch/sh/drivers/pci/pcie-sh7786.c b/arch/sh/drivers/pci/pcie-sh7786.c
index 4468289ab2cac7..4d499476c33ad6 100644
--- a/arch/sh/drivers/pci/pcie-sh7786.c
+++ b/arch/sh/drivers/pci/pcie-sh7786.c
@@ -12,7 +12,7 @@
 #include <linux/io.h>
 #include <linux/async.h>
 #include <linux/delay.h>
-#include <linux/dma-mapping.h>
+#include <linux/dma-map-ops.h>
 #include <linux/slab.h>
 #include <linux/clk.h>
 #include <linux/sh_clk.h>
diff --git a/arch/x86/pci/sta2x11-fixup.c b/arch/x86/pci/sta2x11-fixup.c
index 5701d5ba3df4ba..7d25256918543f 100644
--- a/arch/x86/pci/sta2x11-fixup.c
+++ b/arch/x86/pci/sta2x11-fixup.c
@@ -11,7 +11,8 @@
 #include <linux/pci_ids.h>
 #include <linux/export.h>
 #include <linux/list.h>
-#include <linux/dma-direct.h>
+#include <linux/dma-map-ops.h>
+#include <linux/swiotlb.h>
 #include <asm/iommu.h>
 
 #define STA2X11_SWIOTLB_SIZE (4*1024*1024)
diff --git a/include/linux/dma-map-ops.h b/include/linux/dma-map-ops.h
index a5f89fc4d6df16..03925e438ec3e5 100644
--- a/include/linux/dma-map-ops.h
+++ b/include/linux/dma-map-ops.h
@@ -226,6 +226,9 @@ struct page *dma_alloc_from_pool(struct device *dev, size_t size,
 		bool (*phys_addr_ok)(struct device *, phys_addr_t, size_t));
 bool dma_free_from_pool(struct device *dev, void *start, size_t size);
 
+int dma_direct_set_offset(struct device *dev, phys_addr_t cpu_start,
+		dma_addr_t dma_start, u64 size);
+
 #ifdef CONFIG_ARCH_HAS_DMA_COHERENCE_H
 #include <asm/dma-coherence.h>
 #elif defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE) || \
diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
index 2aaed35b556df4..2e49996a8f391a 100644
--- a/include/linux/dma-mapping.h
+++ b/include/linux/dma-mapping.h
@@ -558,11 +558,4 @@ static inline int dma_mmap_wc(struct device *dev,
 #define dma_unmap_len_set(PTR, LEN_NAME, VAL)    do { } while (0)
 #endif
 
-/*
- * Legacy interface to set up the dma offset map.  Drivers really should not
- * actually use it, but we have a few legacy cases left.
- */
-int dma_direct_set_offset(struct device *dev, phys_addr_t cpu_start,
-		dma_addr_t dma_start, u64 size);
-
 #endif /* _LINUX_DMA_MAPPING_H */
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index 06c111544f61d6..002268262c9ad8 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -547,4 +547,3 @@ int dma_direct_set_offset(struct device *dev, phys_addr_t cpu_start,
 	dev->dma_range_map = map;
 	return 0;
 }
-EXPORT_SYMBOL_GPL(dma_direct_set_offset);
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F243545F1E
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 15:48:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 971F387D42;
	Fri, 14 Jun 2019 13:48:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ABaz75EUlO3o; Fri, 14 Jun 2019 13:48:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 96D3487CCB;
	Fri, 14 Jun 2019 13:48:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A32E1BF3A9
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 13:48:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4E84087D05
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 13:48:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sbkci2Z23hkc for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 13:48:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 94A6187CCB
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 13:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ve9eOR0n9NYQG/06xL1T/7RN+D+EYosn1r01rGXCWe8=; b=oOXLpQSB9eTwi5cRnaIs3K9jSP
 U3nYifQRasO4H8c9LydLZ7aFiLS8AmMO8L7HX1fSqc06MgW+WgkhhHaoKo2MKfTDNYkKunWyK4auH
 sDEmoQgB8oqOU4hpKwhX2F52HvfX8JBk7RhqZQB3ZfChLLyBOjp1aO1CsWRbTm+0Fj1lVP/P78vhq
 Q/tTXEXgky31g4PmH9ZYyI2SmqKT0gbaGOa4wj3ZMyfwF3m6qpJz2Hgvhxr+PiNdqUsIFqqBd/Bdq
 t5+5nb9o2JxesKPlAa9uOOJPL3zGPLmnTYV+Z+YPjVKvRBW0T/H3FZDUMD4bcdC4PQzCFzjLGL6V3
 kn/hUemg==;
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmZB-0005nI-Ab; Fri, 14 Jun 2019 13:48:30 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: [PATCH 16/16] dma-mapping: use exact allocation in
 dma_alloc_contiguous
Date: Fri, 14 Jun 2019 15:47:26 +0200
Message-Id: <20190614134726.3827-17-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614134726.3827-1-hch@lst.de>
References: <20190614134726.3827-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Many architectures (e.g. arm, m68 and sh) have always used exact
allocation in their dma coherent allocator, which avoids a lot of
memory waste especially for larger allocations.  Lift this behavior
into the generic allocator so that dma-direct and the generic IOMMU
code benefit from this behavior as well.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/dma-contiguous.h |  8 +++++---
 kernel/dma/contiguous.c        | 17 +++++++++++------
 2 files changed, 16 insertions(+), 9 deletions(-)

diff --git a/include/linux/dma-contiguous.h b/include/linux/dma-contiguous.h
index c05d4e661489..2e542e314acf 100644
--- a/include/linux/dma-contiguous.h
+++ b/include/linux/dma-contiguous.h
@@ -161,15 +161,17 @@ static inline struct page *dma_alloc_contiguous(struct device *dev, size_t size,
 		gfp_t gfp)
 {
 	int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
-	size_t align = get_order(PAGE_ALIGN(size));
+	void *cpu_addr = alloc_pages_exact_node(node, size, gfp);
 
-	return alloc_pages_node(node, gfp, align);
+	if (!cpu_addr)
+		return NULL;
+	return virt_to_page(p);
 }
 
 static inline void dma_free_contiguous(struct device *dev, struct page *page,
 		size_t size)
 {
-	__free_pages(page, get_order(size));
+	free_pages_exact(page_address(page), get_order(size));
 }
 
 #endif
diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index bfc0c17f2a3d..84f41eea2741 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -232,9 +232,8 @@ struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
 {
 	int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
 	size_t count = PAGE_ALIGN(size) >> PAGE_SHIFT;
-	size_t align = get_order(PAGE_ALIGN(size));
-	struct page *page = NULL;
 	struct cma *cma = NULL;
+	void *cpu_addr;
 
 	if (dev && dev->cma_area)
 		cma = dev->cma_area;
@@ -243,14 +242,20 @@ struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
 
 	/* CMA can be used only in the context which permits sleeping */
 	if (cma && gfpflags_allow_blocking(gfp)) {
+		size_t align = get_order(PAGE_ALIGN(size));
+		struct page *page;
+
 		align = min_t(size_t, align, CONFIG_CMA_ALIGNMENT);
 		page = cma_alloc(cma, count, align, gfp & __GFP_NOWARN);
+		if (page)
+			return page;
 	}
 
 	/* Fallback allocation of normal pages */
-	if (!page)
-		page = alloc_pages_node(node, gfp, align);
-	return page;
+	cpu_addr = alloc_pages_exact_node(node, size, gfp);
+	if (!cpu_addr)
+		return NULL;
+	return virt_to_page(cpu_addr);
 }
 
 /**
@@ -267,7 +272,7 @@ struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
 void dma_free_contiguous(struct device *dev, struct page *page, size_t size)
 {
 	if (!cma_release(dev_get_cma_area(dev), page, size >> PAGE_SHIFT))
-		__free_pages(page, get_order(size));
+		free_pages_exact(page_address(page), get_order(size));
 }
 
 /*
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

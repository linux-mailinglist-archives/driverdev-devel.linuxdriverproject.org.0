Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 182C445F1B
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 15:48:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9804387D13;
	Fri, 14 Jun 2019 13:48:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CE92+4I2wwpF; Fri, 14 Jun 2019 13:48:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA4DF87CE7;
	Fri, 14 Jun 2019 13:48:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0ECAA1BF3A9
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 13:48:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 03FDA88499
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 13:48:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VUuYSR6tGWSY for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 13:48:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9DE6588476
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 13:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hVPCPj1LrefwU2xq/k4nx8MUt6z5g1ttpdf31GA4t7s=; b=R7oVdWdv/mZN0cFwPPhtVK4TMx
 UB/wqQzgkHyYoVXTIUGR/8fAw8BWFMkxfhjvQA8cZVsEfByOCf1n/fgHZGG1Ku2HbnOU7wlpCu6md
 kV7iFak0CwzMgcwf+1ko540TzfJZ7m8NhyKeNAafjIR+Eh02tznZJ/tUqmN1GKHmPpnm8D9T4ipEj
 VhsgOFo98A7OHLvTQLaE2S3jC8uxQMExeLN7wqYne/Oa8lDjeUuhj+sBM6/IpP/HI6hcndIgYuq/y
 Z6v4feaEGjGdbjf71aj7myD5cdjMs8C9wTELFpbzveIUWDepgbQiHeWiGh6p6pC5gwcbLSKzfWexb
 co9by/hQ==;
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYz-0005e1-FO; Fri, 14 Jun 2019 13:48:18 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: [PATCH 13/16] mm: rename alloc_pages_exact_nid to
 alloc_pages_exact_node
Date: Fri, 14 Jun 2019 15:47:23 +0200
Message-Id: <20190614134726.3827-14-hch@lst.de>
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

This fits in with the naming scheme used by alloc_pages_node.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/gfp.h | 2 +-
 mm/page_alloc.c     | 4 ++--
 mm/page_ext.c       | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/gfp.h b/include/linux/gfp.h
index fb07b503dc45..4274ea6bc72b 100644
--- a/include/linux/gfp.h
+++ b/include/linux/gfp.h
@@ -532,7 +532,7 @@ extern unsigned long get_zeroed_page(gfp_t gfp_mask);
 
 void *alloc_pages_exact(size_t size, gfp_t gfp_mask);
 void free_pages_exact(void *virt, size_t size);
-void * __meminit alloc_pages_exact_nid(int nid, size_t size, gfp_t gfp_mask);
+void * __meminit alloc_pages_exact_node(int nid, size_t size, gfp_t gfp_mask);
 
 #define __get_free_page(gfp_mask) \
 		__get_free_pages((gfp_mask), 0)
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index d66bc8abe0af..dd2fed66b656 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -4888,7 +4888,7 @@ void *alloc_pages_exact(size_t size, gfp_t gfp_mask)
 EXPORT_SYMBOL(alloc_pages_exact);
 
 /**
- * alloc_pages_exact_nid - allocate an exact number of physically-contiguous
+ * alloc_pages_exact_node - allocate an exact number of physically-contiguous
  *			   pages on a node.
  * @nid: the preferred node ID where memory should be allocated
  * @size: the number of bytes to allocate
@@ -4899,7 +4899,7 @@ EXPORT_SYMBOL(alloc_pages_exact);
  *
  * Return: pointer to the allocated area or %NULL in case of error.
  */
-void * __meminit alloc_pages_exact_nid(int nid, size_t size, gfp_t gfp_mask)
+void * __meminit alloc_pages_exact_node(int nid, size_t size, gfp_t gfp_mask)
 {
 	unsigned int order = get_order(size);
 	struct page *p;
diff --git a/mm/page_ext.c b/mm/page_ext.c
index d8f1aca4ad43..bca6bb316714 100644
--- a/mm/page_ext.c
+++ b/mm/page_ext.c
@@ -215,7 +215,7 @@ static void *__meminit alloc_page_ext(size_t size, int nid)
 	gfp_t flags = GFP_KERNEL | __GFP_ZERO | __GFP_NOWARN;
 	void *addr = NULL;
 
-	addr = alloc_pages_exact_nid(nid, size, flags);
+	addr = alloc_pages_exact_node(nid, size, flags);
 	if (addr) {
 		kmemleak_alloc(addr, size, 1, flags);
 		return addr;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A801C45EDB
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 15:47:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 85FA122C31;
	Fri, 14 Jun 2019 13:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RG0zDrD8RUEy; Fri, 14 Jun 2019 13:47:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5BA8322D10;
	Fri, 14 Jun 2019 13:47:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 12C371BF3A9
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 13:47:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0FD3D88476
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 13:47:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8+JQf78O1Le2 for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 13:47:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3C8F488494
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 13:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8y6h8N73FB5NENGJmXuBWpySrRWBuNuuherB6ijj6q8=; b=O+TbJCIvZxITqhhJGk19PgKDVb
 zP/cXr3k3gVNVyNuIZZ1EUainJIi7wVTUxXsQtP55j6fTBfcF7Sa+btFSjlOoBpdFax1u6ZazzUaz
 FPx/YcvbrcmM0hj9iSxxr66wiPpIo2CQcbBfULKCswmUhdFlmoDtWAaHV5c6chhQgW7u9cc4uUrYi
 +YgK5P2yi8DIc4PxIDTgNB0H2HMyfDDjSri1AD09oFbVupeMjadiOSOnAJwBO5Fva8F5W4du1//3V
 PC6NEPWuGSXf3Iz9K+nbMDUlMTGN745meRSObE6d5NxDDUuRnYJGChXPFHVxfA6Pw0enVfuoGJDnu
 q+P8IvBA==;
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYJ-0004Xw-Il; Fri, 14 Jun 2019 13:47:36 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: [PATCH 01/16] media: videobuf-dma-contig: use dma_mmap_coherent
Date: Fri, 14 Jun 2019 15:47:11 +0200
Message-Id: <20190614134726.3827-2-hch@lst.de>
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

dma_alloc_coherent does not return a physical address, but a DMA
address, which might be remapped or have an offset.  Passing this
DMA address to vm_iomap_memory is completely bogus.  Use the proper
dma_mmap_coherent helper instead, and stop passing __GFP_COMP
to dma_alloc_coherent, as the memory management inside the DMA
allocator is hidden from the callers.

Fixes: a8f3c203e19b ("[media] videobuf-dma-contig: add cache support")
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/media/v4l2-core/videobuf-dma-contig.c | 23 +++++++------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/media/v4l2-core/videobuf-dma-contig.c b/drivers/media/v4l2-core/videobuf-dma-contig.c
index e1bf50df4c70..a5942ea38f1f 100644
--- a/drivers/media/v4l2-core/videobuf-dma-contig.c
+++ b/drivers/media/v4l2-core/videobuf-dma-contig.c
@@ -39,11 +39,11 @@ struct videobuf_dma_contig_memory {
 
 static int __videobuf_dc_alloc(struct device *dev,
 			       struct videobuf_dma_contig_memory *mem,
-			       unsigned long size, gfp_t flags)
+			       unsigned long size)
 {
 	mem->size = size;
-	mem->vaddr = dma_alloc_coherent(dev, mem->size,
-					&mem->dma_handle, flags);
+	mem->vaddr = dma_alloc_coherent(dev, mem->size, &mem->dma_handle,
+			GFP_KERNEL);
 
 	if (!mem->vaddr) {
 		dev_err(dev, "memory alloc size %ld failed\n", mem->size);
@@ -260,8 +260,7 @@ static int __videobuf_iolock(struct videobuf_queue *q,
 			return videobuf_dma_contig_user_get(mem, vb);
 
 		/* allocate memory for the read() method */
-		if (__videobuf_dc_alloc(q->dev, mem, PAGE_ALIGN(vb->size),
-					GFP_KERNEL))
+		if (__videobuf_dc_alloc(q->dev, mem, PAGE_ALIGN(vb->size)))
 			return -ENOMEM;
 		break;
 	case V4L2_MEMORY_OVERLAY:
@@ -280,7 +279,6 @@ static int __videobuf_mmap_mapper(struct videobuf_queue *q,
 	struct videobuf_dma_contig_memory *mem;
 	struct videobuf_mapping *map;
 	int retval;
-	unsigned long size;
 
 	dev_dbg(q->dev, "%s\n", __func__);
 
@@ -298,23 +296,18 @@ static int __videobuf_mmap_mapper(struct videobuf_queue *q,
 	BUG_ON(!mem);
 	MAGIC_CHECK(mem->magic, MAGIC_DC_MEM);
 
-	if (__videobuf_dc_alloc(q->dev, mem, PAGE_ALIGN(buf->bsize),
-				GFP_KERNEL | __GFP_COMP))
+	if (__videobuf_dc_alloc(q->dev, mem, PAGE_ALIGN(buf->bsize)))
 		goto error;
 
-	/* Try to remap memory */
-	size = vma->vm_end - vma->vm_start;
-	vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
-
 	/* the "vm_pgoff" is just used in v4l2 to find the
 	 * corresponding buffer data structure which is allocated
 	 * earlier and it does not mean the offset from the physical
 	 * buffer start address as usual. So set it to 0 to pass
-	 * the sanity check in vm_iomap_memory().
+	 * the sanity check in dma_mmap_coherent().
 	 */
 	vma->vm_pgoff = 0;
-
-	retval = vm_iomap_memory(vma, mem->dma_handle, size);
+	retval = dma_mmap_coherent(q->dev, vma, mem->vaddr, mem->dma_handle,
+			vma->vm_end - vma->vm_start);
 	if (retval) {
 		dev_err(q->dev, "mmap: remap failed with error %d. ",
 			retval);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

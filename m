Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEAFC0320
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 12:15:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED19F8609D;
	Fri, 27 Sep 2019 10:15:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2tX8GX6UO8N5; Fri, 27 Sep 2019 10:15:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BEC1E85F9B;
	Fri, 27 Sep 2019 10:15:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 140911BF2F4
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:15:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 109B886214
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:15:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JIIMuE1XJDYK for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 10:15:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0A6A184D6E
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 10:15:20 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 91A10AF92;
 Fri, 27 Sep 2019 10:15:18 +0000 (UTC)
From: Benjamin Poirier <bpoirier@suse.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 09/17] staging: qlge: Fix dma_sync_single calls
Date: Fri, 27 Sep 2019 19:12:03 +0900
Message-Id: <20190927101210.23856-10-bpoirier@suse.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190927101210.23856-1-bpoirier@suse.com>
References: <20190927101210.23856-1-bpoirier@suse.com>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Using the unmap addr elsewhere than unmap calls is a misuse of the dma api.
In prevision of this fix, qlge kept two copies of the dma address around ;)

Fixes: c4e84bde1d59 ("qlge: New Qlogic 10Gb Ethernet Driver.")
Fixes: 7c734359d350 ("qlge: Size RX buffers based on MTU.")
Fixes: 2c9a266afefe ("qlge: Fix receive packets drop.")
Signed-off-by: Benjamin Poirier <bpoirier@suse.com>
---
 drivers/staging/qlge/qlge.h      |  5 +--
 drivers/staging/qlge/qlge_main.c | 54 +++++++++++++-------------------
 2 files changed, 22 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index a84aa264dfa8..519fa39dd194 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -1410,12 +1410,9 @@ struct qlge_bq_desc {
 		struct sk_buff *skb;
 	} p;
 	dma_addr_t dma_addr;
-	/* address in ring where the buffer address (dma_addr) is written for
-	 * the device
-	 */
+	/* address in ring where the buffer address is written for the device */
 	__le64 *buf_ptr;
 	u32 index;
-	DEFINE_DMA_UNMAP_ADDR(mapaddr);
 };
 
 /* buffer queue */
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index ba133d1f2b74..609a87804a94 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -995,15 +995,13 @@ static struct qlge_bq_desc *ql_get_curr_lchunk(struct ql_adapter *qdev,
 {
 	struct qlge_bq_desc *lbq_desc = qlge_get_curr_buf(&rx_ring->lbq);
 
-	pci_dma_sync_single_for_cpu(qdev->pdev,
-				    dma_unmap_addr(lbq_desc, mapaddr),
+	pci_dma_sync_single_for_cpu(qdev->pdev, lbq_desc->dma_addr,
 				    qdev->lbq_buf_size, PCI_DMA_FROMDEVICE);
 
 	if ((lbq_desc->p.pg_chunk.offset + qdev->lbq_buf_size) ==
 	    ql_lbq_block_size(qdev)) {
 		/* last chunk of the master page */
-		pci_unmap_page(qdev->pdev, lbq_desc->dma_addr -
-			       lbq_desc->p.pg_chunk.offset,
+		pci_unmap_page(qdev->pdev, lbq_desc->dma_addr,
 			       ql_lbq_block_size(qdev), PCI_DMA_FROMDEVICE);
 	}
 
@@ -1031,7 +1029,7 @@ static const char * const bq_type_name[] = {
 	[QLGE_LB] = "lbq",
 };
 
-/* return size of allocated buffer (may be 0) or negative error */
+/* return 0 or negative error */
 static int qlge_refill_sb(struct rx_ring *rx_ring,
 			  struct qlge_bq_desc *sbq_desc)
 {
@@ -1058,12 +1056,13 @@ static int qlge_refill_sb(struct rx_ring *rx_ring,
 		dev_kfree_skb_any(skb);
 		return -EIO;
 	}
+	*sbq_desc->buf_ptr = cpu_to_le64(sbq_desc->dma_addr);
 
 	sbq_desc->p.skb = skb;
-	return SMALL_BUFFER_SIZE;
+	return 0;
 }
 
-/* return size of allocated buffer or negative error */
+/* return 0 or negative error */
 static int qlge_refill_lb(struct rx_ring *rx_ring,
 			  struct qlge_bq_desc *lbq_desc)
 {
@@ -1094,7 +1093,9 @@ static int qlge_refill_lb(struct rx_ring *rx_ring,
 	}
 
 	lbq_desc->p.pg_chunk = *master_chunk;
-	lbq_desc->dma_addr = rx_ring->chunk_dma_addr + master_chunk->offset;
+	lbq_desc->dma_addr = rx_ring->chunk_dma_addr;
+	*lbq_desc->buf_ptr = cpu_to_le64(lbq_desc->dma_addr +
+					 lbq_desc->p.pg_chunk.offset);
 
 	/* Adjust the master page chunk for next
 	 * buffer get.
@@ -1107,7 +1108,7 @@ static int qlge_refill_lb(struct rx_ring *rx_ring,
 		get_page(master_chunk->page);
 	}
 
-	return qdev->lbq_buf_size;
+	return 0;
 }
 
 static void qlge_refill_bq(struct qlge_bq *bq)
@@ -1138,13 +1139,7 @@ static void qlge_refill_bq(struct qlge_bq *bq)
 				retval = qlge_refill_sb(rx_ring, bq_desc);
 			else
 				retval = qlge_refill_lb(rx_ring, bq_desc);
-
-			if (retval > 0) {
-				dma_unmap_addr_set(bq_desc, mapaddr,
-						   bq_desc->dma_addr);
-				*bq_desc->buf_ptr =
-					cpu_to_le64(bq_desc->dma_addr);
-			} else if (retval < 0) {
+			if (retval < 0) {
 				bq->clean_idx = clean_idx;
 				netif_err(qdev, ifup, qdev->ndev,
 					  "ring %u %s: Could not get a page chunk, i=%d, clean_idx =%d .\n",
@@ -1567,8 +1562,7 @@ static void ql_process_mac_rx_skb(struct ql_adapter *qdev,
 	}
 	skb_reserve(new_skb, NET_IP_ALIGN);
 
-	pci_dma_sync_single_for_cpu(qdev->pdev,
-				    dma_unmap_addr(sbq_desc, mapaddr),
+	pci_dma_sync_single_for_cpu(qdev->pdev, sbq_desc->dma_addr,
 				    SMALL_BUF_MAP_SIZE, PCI_DMA_FROMDEVICE);
 
 	skb_put_data(new_skb, skb->data, length);
@@ -1690,9 +1684,8 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
 		 * Headers fit nicely into a small buffer.
 		 */
 		sbq_desc = qlge_get_curr_buf(&rx_ring->sbq);
-		pci_unmap_single(qdev->pdev,
-				dma_unmap_addr(sbq_desc, mapaddr),
-				SMALL_BUF_MAP_SIZE, PCI_DMA_FROMDEVICE);
+		pci_unmap_single(qdev->pdev, sbq_desc->dma_addr,
+				 SMALL_BUF_MAP_SIZE, PCI_DMA_FROMDEVICE);
 		skb = sbq_desc->p.skb;
 		ql_realign_skb(skb, hdr_len);
 		skb_put(skb, hdr_len);
@@ -1722,8 +1715,7 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
 			 */
 			sbq_desc = qlge_get_curr_buf(&rx_ring->sbq);
 			pci_dma_sync_single_for_cpu(qdev->pdev,
-						    dma_unmap_addr(sbq_desc,
-								   mapaddr),
+						    sbq_desc->dma_addr,
 						    SMALL_BUF_MAP_SIZE,
 						    PCI_DMA_FROMDEVICE);
 			skb_put_data(skb, sbq_desc->p.skb->data, length);
@@ -1735,8 +1727,7 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
 			skb = sbq_desc->p.skb;
 			ql_realign_skb(skb, length);
 			skb_put(skb, length);
-			pci_unmap_single(qdev->pdev,
-					 dma_unmap_addr(sbq_desc, mapaddr),
+			pci_unmap_single(qdev->pdev, sbq_desc->dma_addr,
 					 SMALL_BUF_MAP_SIZE,
 					 PCI_DMA_FROMDEVICE);
 			sbq_desc->p.skb = NULL;
@@ -1774,8 +1765,7 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
 					     "No skb available, drop the packet.\n");
 				return NULL;
 			}
-			pci_unmap_page(qdev->pdev,
-				       dma_unmap_addr(lbq_desc, mapaddr),
+			pci_unmap_page(qdev->pdev, lbq_desc->dma_addr,
 				       qdev->lbq_buf_size,
 				       PCI_DMA_FROMDEVICE);
 			skb_reserve(skb, NET_IP_ALIGN);
@@ -1808,8 +1798,7 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
 		 */
 		int size, i = 0;
 		sbq_desc = qlge_get_curr_buf(&rx_ring->sbq);
-		pci_unmap_single(qdev->pdev,
-				 dma_unmap_addr(sbq_desc, mapaddr),
+		pci_unmap_single(qdev->pdev, sbq_desc->dma_addr,
 				 SMALL_BUF_MAP_SIZE, PCI_DMA_FROMDEVICE);
 		if (!(ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HS)) {
 			/*
@@ -2736,8 +2725,8 @@ static void ql_free_lbq_buffers(struct ql_adapter *qdev, struct rx_ring *rx_ring
 		struct qlge_bq_desc *lbq_desc = &rx_ring->lbq.queue[curr_idx];
 
 		if (lbq_desc->p.pg_chunk.offset == last_offset)
-			pci_unmap_page(qdev->pdev, lbq_desc->dma_addr -
-				       last_offset, ql_lbq_block_size(qdev),
+			pci_unmap_page(qdev->pdev, lbq_desc->dma_addr,
+				       ql_lbq_block_size(qdev),
 				       PCI_DMA_FROMDEVICE);
 
 		put_page(lbq_desc->p.pg_chunk.page);
@@ -2768,8 +2757,7 @@ static void ql_free_sbq_buffers(struct ql_adapter *qdev, struct rx_ring *rx_ring
 			return;
 		}
 		if (sbq_desc->p.skb) {
-			pci_unmap_single(qdev->pdev,
-					 dma_unmap_addr(sbq_desc, mapaddr),
+			pci_unmap_single(qdev->pdev, sbq_desc->dma_addr,
 					 SMALL_BUF_MAP_SIZE,
 					 PCI_DMA_FROMDEVICE);
 			dev_kfree_skb(sbq_desc->p.skb);
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

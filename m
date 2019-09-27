Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9E1C033F
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 12:16:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D6AB722610;
	Fri, 27 Sep 2019 10:16:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SiCUq9kPyqLX; Fri, 27 Sep 2019 10:16:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8676E22795;
	Fri, 27 Sep 2019 10:15:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 09EFA1BF2F4
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:15:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 030282274E
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:15:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T7Q8aBUh02FW for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 10:15:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 953F0227DB
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 10:15:06 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1937DAFFE;
 Fri, 27 Sep 2019 10:15:05 +0000 (UTC)
From: Benjamin Poirier <bpoirier@suse.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 05/17] staging: qlge: Remove bq_desc.maplen
Date: Fri, 27 Sep 2019 19:11:59 +0900
Message-Id: <20190927101210.23856-6-bpoirier@suse.com>
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

The size of the mapping is known statically in all cases, there's no need
to save it at runtime. Remove this member.

Signed-off-by: Benjamin Poirier <bpoirier@suse.com>
Acked-by: Manish Chopra <manishc@marvell.com>
---
 drivers/staging/qlge/qlge.h      |  1 -
 drivers/staging/qlge/qlge_main.c | 43 +++++++++++---------------------
 2 files changed, 15 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index ba61b4559dd6..f32da8c7679f 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -1373,7 +1373,6 @@ struct bq_desc {
 	__le64 *addr;
 	u32 index;
 	DEFINE_DMA_UNMAP_ADDR(mapaddr);
-	DEFINE_DMA_UNMAP_LEN(maplen);
 };
 
 #define QL_TXQ_IDX(qdev, skb) (smp_processor_id()%(qdev->tx_ring_count))
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 2b1cc4b29bed..34bc1d9560ce 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -1108,8 +1108,6 @@ static void ql_update_lbq(struct ql_adapter *qdev, struct rx_ring *rx_ring)
 			map = lbq_desc->p.pg_chunk.map +
 				lbq_desc->p.pg_chunk.offset;
 			dma_unmap_addr_set(lbq_desc, mapaddr, map);
-			dma_unmap_len_set(lbq_desc, maplen,
-					  qdev->lbq_buf_size);
 			*lbq_desc->addr = cpu_to_le64(map);
 
 			pci_dma_sync_single_for_device(qdev->pdev, map,
@@ -1177,8 +1175,6 @@ static void ql_update_sbq(struct ql_adapter *qdev, struct rx_ring *rx_ring)
 					return;
 				}
 				dma_unmap_addr_set(sbq_desc, mapaddr, map);
-				dma_unmap_len_set(sbq_desc, maplen,
-						  rx_ring->sbq_buf_size);
 				*sbq_desc->addr = cpu_to_le64(map);
 			}
 
@@ -1598,14 +1594,14 @@ static void ql_process_mac_rx_skb(struct ql_adapter *qdev,
 
 	pci_dma_sync_single_for_cpu(qdev->pdev,
 				    dma_unmap_addr(sbq_desc, mapaddr),
-				    dma_unmap_len(sbq_desc, maplen),
+				    rx_ring->sbq_buf_size,
 				    PCI_DMA_FROMDEVICE);
 
 	skb_put_data(new_skb, skb->data, length);
 
 	pci_dma_sync_single_for_device(qdev->pdev,
 				       dma_unmap_addr(sbq_desc, mapaddr),
-				       dma_unmap_len(sbq_desc, maplen),
+				       rx_ring->sbq_buf_size,
 				       PCI_DMA_FROMDEVICE);
 	skb = new_skb;
 
@@ -1727,8 +1723,7 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
 		sbq_desc = ql_get_curr_sbuf(rx_ring);
 		pci_unmap_single(qdev->pdev,
 				dma_unmap_addr(sbq_desc, mapaddr),
-				dma_unmap_len(sbq_desc, maplen),
-				PCI_DMA_FROMDEVICE);
+				rx_ring->sbq_buf_size, PCI_DMA_FROMDEVICE);
 		skb = sbq_desc->p.skb;
 		ql_realign_skb(skb, hdr_len);
 		skb_put(skb, hdr_len);
@@ -1758,19 +1753,15 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
 			 */
 			sbq_desc = ql_get_curr_sbuf(rx_ring);
 			pci_dma_sync_single_for_cpu(qdev->pdev,
-						    dma_unmap_addr
-						    (sbq_desc, mapaddr),
-						    dma_unmap_len
-						    (sbq_desc, maplen),
+						    dma_unmap_addr(sbq_desc,
+								   mapaddr),
+						    rx_ring->sbq_buf_size,
 						    PCI_DMA_FROMDEVICE);
 			skb_put_data(skb, sbq_desc->p.skb->data, length);
 			pci_dma_sync_single_for_device(qdev->pdev,
-						       dma_unmap_addr
-						       (sbq_desc,
-							mapaddr),
-						       dma_unmap_len
-						       (sbq_desc,
-							maplen),
+						       dma_unmap_addr(sbq_desc,
+								      mapaddr),
+						       rx_ring->sbq_buf_size,
 						       PCI_DMA_FROMDEVICE);
 		} else {
 			netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
@@ -1781,10 +1772,8 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
 			ql_realign_skb(skb, length);
 			skb_put(skb, length);
 			pci_unmap_single(qdev->pdev,
-					 dma_unmap_addr(sbq_desc,
-							mapaddr),
-					 dma_unmap_len(sbq_desc,
-						       maplen),
+					 dma_unmap_addr(sbq_desc, mapaddr),
+					 rx_ring->sbq_buf_size,
 					 PCI_DMA_FROMDEVICE);
 			sbq_desc->p.skb = NULL;
 		}
@@ -1822,9 +1811,8 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
 				return NULL;
 			}
 			pci_unmap_page(qdev->pdev,
-				       dma_unmap_addr(lbq_desc,
-						      mapaddr),
-				       dma_unmap_len(lbq_desc, maplen),
+				       dma_unmap_addr(lbq_desc, mapaddr),
+				       qdev->lbq_buf_size,
 				       PCI_DMA_FROMDEVICE);
 			skb_reserve(skb, NET_IP_ALIGN);
 			netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
@@ -1858,8 +1846,7 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
 		sbq_desc = ql_get_curr_sbuf(rx_ring);
 		pci_unmap_single(qdev->pdev,
 				 dma_unmap_addr(sbq_desc, mapaddr),
-				 dma_unmap_len(sbq_desc, maplen),
-				 PCI_DMA_FROMDEVICE);
+				 rx_ring->sbq_buf_size, PCI_DMA_FROMDEVICE);
 		if (!(ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HS)) {
 			/*
 			 * This is an non TCP/UDP IP frame, so
@@ -2820,7 +2807,7 @@ static void ql_free_sbq_buffers(struct ql_adapter *qdev, struct rx_ring *rx_ring
 		if (sbq_desc->p.skb) {
 			pci_unmap_single(qdev->pdev,
 					 dma_unmap_addr(sbq_desc, mapaddr),
-					 dma_unmap_len(sbq_desc, maplen),
+					 rx_ring->sbq_buf_size,
 					 PCI_DMA_FROMDEVICE);
 			dev_kfree_skb(sbq_desc->p.skb);
 			sbq_desc->p.skb = NULL;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

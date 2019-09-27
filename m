Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E13AFC031E
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 12:15:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E707862CA;
	Fri, 27 Sep 2019 10:15:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U1DNV37vCRuP; Fri, 27 Sep 2019 10:15:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C93885816;
	Fri, 27 Sep 2019 10:15:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 02AC91BF2F4
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F196986214
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:15:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cir0xfN-HnCv for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 10:15:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5137C84D6E
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 10:15:13 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D37CAAFD0;
 Fri, 27 Sep 2019 10:15:11 +0000 (UTC)
From: Benjamin Poirier <bpoirier@suse.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 07/17] staging: qlge: Remove useless dma synchronization
 calls
Date: Fri, 27 Sep 2019 19:12:01 +0900
Message-Id: <20190927101210.23856-8-bpoirier@suse.com>
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

This is unneeded for two reasons:
1) the cpu does not write data for the device in the mapping
2) calls like ..._sync_..._for_device(..., ..._FROMDEVICE) are
   nonsensical, see commit 3f0fb4e85b38 ("Documentation/DMA-API-HOWTO.txt:
   fix misleading example")

Signed-off-by: Benjamin Poirier <bpoirier@suse.com>
---
 drivers/staging/qlge/qlge_main.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 0a3809c50c10..03403718a273 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -1110,9 +1110,6 @@ static void ql_update_lbq(struct ql_adapter *qdev, struct rx_ring *rx_ring)
 			dma_unmap_addr_set(lbq_desc, mapaddr, map);
 			*lbq_desc->addr = cpu_to_le64(map);
 
-			pci_dma_sync_single_for_device(qdev->pdev, map,
-						       qdev->lbq_buf_size,
-						       PCI_DMA_FROMDEVICE);
 			clean_idx++;
 			if (clean_idx == rx_ring->lbq_len)
 				clean_idx = 0;
@@ -1598,10 +1595,6 @@ static void ql_process_mac_rx_skb(struct ql_adapter *qdev,
 
 	skb_put_data(new_skb, skb->data, length);
 
-	pci_dma_sync_single_for_device(qdev->pdev,
-				       dma_unmap_addr(sbq_desc, mapaddr),
-				       SMALL_BUF_MAP_SIZE,
-				       PCI_DMA_FROMDEVICE);
 	skb = new_skb;
 
 	/* Frame error, so drop the packet. */
@@ -1757,11 +1750,6 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
 						    SMALL_BUF_MAP_SIZE,
 						    PCI_DMA_FROMDEVICE);
 			skb_put_data(skb, sbq_desc->p.skb->data, length);
-			pci_dma_sync_single_for_device(qdev->pdev,
-						       dma_unmap_addr(sbq_desc,
-								      mapaddr),
-						       SMALL_BUF_MAP_SIZE,
-						       PCI_DMA_FROMDEVICE);
 		} else {
 			netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
 				     "%d bytes in a single small buffer.\n",
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

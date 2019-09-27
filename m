Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EF8C0321
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 12:15:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6DE8586352;
	Fri, 27 Sep 2019 10:15:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VilAJ1l-le5J; Fri, 27 Sep 2019 10:15:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CEDE9858B6;
	Fri, 27 Sep 2019 10:15:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A7A01BF2F4
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6705286214
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:15:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oH-fPRiuN6qc for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 10:15:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3D7B984D6E
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 10:15:23 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C301BB023;
 Fri, 27 Sep 2019 10:15:21 +0000 (UTC)
From: Benjamin Poirier <bpoirier@suse.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 10/17] staging: qlge: Remove rx_ring.type
Date: Fri, 27 Sep 2019 19:12:04 +0900
Message-Id: <20190927101210.23856-11-bpoirier@suse.com>
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

This field is redundant, the type can be determined from the index, cq_id.

Signed-off-by: Benjamin Poirier <bpoirier@suse.com>
---
 drivers/staging/qlge/qlge.h      | 10 ----------
 drivers/staging/qlge/qlge_dbg.c  | 16 ++++++++++++----
 drivers/staging/qlge/qlge_main.c | 31 +++++++------------------------
 3 files changed, 19 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 519fa39dd194..5a4b2520cd2a 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -1387,15 +1387,6 @@ struct tx_ring {
 	u64 tx_errors;
 };
 
-/*
- * Type of inbound queue.
- */
-enum {
-	DEFAULT_Q = 2,		/* Handles slow queue and chip/MPI events. */
-	TX_Q = 3,		/* Handles outbound completions. */
-	RX_Q = 4,		/* Handles inbound completions. */
-};
-
 struct qlge_page_chunk {
 	struct page *page;
 	void *va; /* virt addr including offset */
@@ -1468,7 +1459,6 @@ struct rx_ring {
 	struct qlge_bq sbq;
 
 	/* Misc. handler elements. */
-	u32 type;		/* Type of queue, tx, rx. */
 	u32 irq;		/* Which vector this ring is assigned. */
 	u32 cpu;		/* Which CPU this should run on. */
 	char name[IFNAMSIZ + 5];
diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 35af06dd21dd..a177302073db 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1731,16 +1731,24 @@ void ql_dump_cqicb(struct cqicb *cqicb)
 	       le16_to_cpu(cqicb->sbq_len));
 }
 
+static const char *qlge_rx_ring_type_name(struct rx_ring *rx_ring)
+{
+	struct ql_adapter *qdev = rx_ring->qdev;
+
+	if (rx_ring->cq_id < qdev->rss_ring_count)
+		return "RX COMPLETION";
+	else
+		return "TX COMPLETION";
+};
+
 void ql_dump_rx_ring(struct rx_ring *rx_ring)
 {
 	if (rx_ring == NULL)
 		return;
 	pr_err("===================== Dumping rx_ring %d ===============\n",
 	       rx_ring->cq_id);
-	pr_err("Dumping rx_ring %d, type = %s%s%s\n",
-	       rx_ring->cq_id, rx_ring->type == DEFAULT_Q ? "DEFAULT" : "",
-	       rx_ring->type == TX_Q ? "OUTBOUND COMPLETIONS" : "",
-	       rx_ring->type == RX_Q ? "INBOUND_COMPLETIONS" : "");
+	pr_err("Dumping rx_ring %d, type = %s\n", rx_ring->cq_id,
+	       qlge_rx_ring_type_name(rx_ring));
 	pr_err("rx_ring->cqicb = %p\n", &rx_ring->cqicb);
 	pr_err("rx_ring->cq_base = %p\n", rx_ring->cq_base);
 	pr_err("rx_ring->cq_base_dma = %llx\n",
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 609a87804a94..0e304a7ac22f 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -2785,14 +2785,10 @@ static void ql_free_rx_buffers(struct ql_adapter *qdev)
 
 static void ql_alloc_rx_buffers(struct ql_adapter *qdev)
 {
-	struct rx_ring *rx_ring;
 	int i;
 
-	for (i = 0; i < qdev->rx_ring_count; i++) {
-		rx_ring = &qdev->rx_ring[i];
-		if (rx_ring->type != TX_Q)
-			ql_update_buffer_queues(rx_ring);
-	}
+	for (i = 0; i < qdev->rss_ring_count; i++)
+		ql_update_buffer_queues(&qdev->rx_ring[i]);
 }
 
 static int qlge_init_bq(struct qlge_bq *bq)
@@ -3071,12 +3067,7 @@ static int ql_start_rx_ring(struct ql_adapter *qdev, struct rx_ring *rx_ring)
 		rx_ring->sbq.clean_idx = 0;
 		rx_ring->sbq.free_cnt = rx_ring->sbq.len;
 	}
-	switch (rx_ring->type) {
-	case TX_Q:
-		cqicb->irq_delay = cpu_to_le16(qdev->tx_coalesce_usecs);
-		cqicb->pkt_delay = cpu_to_le16(qdev->tx_max_coalesced_frames);
-		break;
-	case RX_Q:
+	if (rx_ring->cq_id < qdev->rss_ring_count) {
 		/* Inbound completion handling rx_rings run in
 		 * separate NAPI contexts.
 		 */
@@ -3084,10 +3075,9 @@ static int ql_start_rx_ring(struct ql_adapter *qdev, struct rx_ring *rx_ring)
 			       64);
 		cqicb->irq_delay = cpu_to_le16(qdev->rx_coalesce_usecs);
 		cqicb->pkt_delay = cpu_to_le16(qdev->rx_max_coalesced_frames);
-		break;
-	default:
-		netif_printk(qdev, ifup, KERN_DEBUG, qdev->ndev,
-			     "Invalid rx_ring->type = %d.\n", rx_ring->type);
+	} else {
+		cqicb->irq_delay = cpu_to_le16(qdev->tx_coalesce_usecs);
+		cqicb->pkt_delay = cpu_to_le16(qdev->tx_max_coalesced_frames);
 	}
 	err = ql_write_cfg(qdev, cqicb, sizeof(struct cqicb),
 			   CFG_LCQ, rx_ring->cq_id);
@@ -3444,12 +3434,7 @@ static int ql_request_irq(struct ql_adapter *qdev)
 				goto err_irq;
 
 			netif_err(qdev, ifup, qdev->ndev,
-				  "Hooked intr %d, queue type %s, with name %s.\n",
-				  i,
-				  qdev->rx_ring[0].type == DEFAULT_Q ?
-				  "DEFAULT_Q" :
-				  qdev->rx_ring[0].type == TX_Q ? "TX_Q" :
-				  qdev->rx_ring[0].type == RX_Q ? "RX_Q" : "",
+				  "Hooked intr 0, queue type RX_Q, with name %s.\n",
 				  intr_context->name);
 		}
 		intr_context->hooked = 1;
@@ -4012,7 +3997,6 @@ static int ql_configure_rings(struct ql_adapter *qdev)
 			rx_ring->sbq.type = QLGE_SB;
 			rx_ring->sbq.len = NUM_SMALL_BUFFERS;
 			rx_ring->sbq.size = rx_ring->sbq.len * sizeof(__le64);
-			rx_ring->type = RX_Q;
 		} else {
 			/*
 			 * Outbound queue handles outbound completions only.
@@ -4025,7 +4009,6 @@ static int ql_configure_rings(struct ql_adapter *qdev)
 			rx_ring->lbq.size = 0;
 			rx_ring->sbq.len = 0;
 			rx_ring->sbq.size = 0;
-			rx_ring->type = TX_Q;
 		}
 	}
 	return 0;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

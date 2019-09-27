Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61568C034D
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 12:17:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0546A87FD8;
	Fri, 27 Sep 2019 10:17:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8lW90iVkMLS7; Fri, 27 Sep 2019 10:17:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A92287F8E;
	Fri, 27 Sep 2019 10:17:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 32F961BF2F4
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:16:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 20B1722624
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:16:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x1LvlmKAG7Lp for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 10:16:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 804AF2276C
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 10:15:26 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id EF023B052;
 Fri, 27 Sep 2019 10:15:24 +0000 (UTC)
From: Benjamin Poirier <bpoirier@suse.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 11/17] staging: qlge: Factor out duplicated expression
Date: Fri, 27 Sep 2019 19:12:05 +0900
Message-Id: <20190927101210.23856-12-bpoirier@suse.com>
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

Given that (u16) 65536 == 0, that expression can be replaced by a simple
cast.

Signed-off-by: Benjamin Poirier <bpoirier@suse.com>
---
 drivers/staging/qlge/qlge.h      |  5 +++++
 drivers/staging/qlge/qlge_main.c | 18 ++++++------------
 2 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 5a4b2520cd2a..24af938da7a4 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -77,6 +77,11 @@
 #define LSD(x)  ((u32)((u64)(x)))
 #define MSD(x)  ((u32)((((u64)(x)) >> 32)))
 
+/* In some cases, the device interprets a value of 0x0000 as 65536. These
+ * cases are marked using the following macro.
+ */
+#define QLGE_FIT16(value) ((u16)(value))
+
 /* MPI test register definitions. This register
  * is used for determining alternate NIC function's
  * PCI->func number.
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 0e304a7ac22f..e1099bd29672 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -2974,7 +2974,6 @@ static int ql_start_rx_ring(struct ql_adapter *qdev, struct rx_ring *rx_ring)
 	void __iomem *doorbell_area =
 	    qdev->doorbell_area + (DB_PAGE_SIZE * (128 + rx_ring->cq_id));
 	int err = 0;
-	u16 bq_len;
 	u64 tmp;
 	__le64 *base_indirect_ptr;
 	int page_entries;
@@ -3009,8 +3008,8 @@ static int ql_start_rx_ring(struct ql_adapter *qdev, struct rx_ring *rx_ring)
 	memset((void *)cqicb, 0, sizeof(struct cqicb));
 	cqicb->msix_vect = rx_ring->irq;
 
-	bq_len = (rx_ring->cq_len == 65536) ? 0 : (u16) rx_ring->cq_len;
-	cqicb->len = cpu_to_le16(bq_len | LEN_V | LEN_CPP_CONT);
+	cqicb->len = cpu_to_le16(QLGE_FIT16(rx_ring->cq_len) | LEN_V |
+				 LEN_CPP_CONT);
 
 	cqicb->addr = cpu_to_le64(rx_ring->cq_base_dma);
 
@@ -3034,12 +3033,9 @@ static int ql_start_rx_ring(struct ql_adapter *qdev, struct rx_ring *rx_ring)
 			page_entries++;
 		} while (page_entries < MAX_DB_PAGES_PER_BQ(rx_ring->lbq.len));
 		cqicb->lbq_addr = cpu_to_le64(rx_ring->lbq.base_indirect_dma);
-		bq_len = qdev->lbq_buf_size == 65536 ? 0 :
-			(u16)qdev->lbq_buf_size;
-		cqicb->lbq_buf_size = cpu_to_le16(bq_len);
-		bq_len = (rx_ring->lbq.len == 65536) ? 0 :
-			(u16)rx_ring->lbq.len;
-		cqicb->lbq_len = cpu_to_le16(bq_len);
+		cqicb->lbq_buf_size =
+			cpu_to_le16(QLGE_FIT16(qdev->lbq_buf_size));
+		cqicb->lbq_len = cpu_to_le16(QLGE_FIT16(rx_ring->lbq.len));
 		rx_ring->lbq.prod_idx = 0;
 		rx_ring->lbq.curr_idx = 0;
 		rx_ring->lbq.clean_idx = 0;
@@ -3059,9 +3055,7 @@ static int ql_start_rx_ring(struct ql_adapter *qdev, struct rx_ring *rx_ring)
 		cqicb->sbq_addr =
 		    cpu_to_le64(rx_ring->sbq.base_indirect_dma);
 		cqicb->sbq_buf_size = cpu_to_le16(SMALL_BUFFER_SIZE);
-		bq_len = (rx_ring->sbq.len == 65536) ? 0 :
-			(u16)rx_ring->sbq.len;
-		cqicb->sbq_len = cpu_to_le16(bq_len);
+		cqicb->sbq_len = cpu_to_le16(QLGE_FIT16(rx_ring->sbq.len));
 		rx_ring->sbq.prod_idx = 0;
 		rx_ring->sbq.curr_idx = 0;
 		rx_ring->sbq.clean_idx = 0;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

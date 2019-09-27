Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DA6C0325
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 12:15:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8ED987FE7;
	Fri, 27 Sep 2019 10:15:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oUDUc4z1tNeS; Fri, 27 Sep 2019 10:15:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45D3787F92;
	Fri, 27 Sep 2019 10:15:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E0E6C1BF2F4
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:15:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DDF9F87F84
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:15:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g0OlWnvIi3lA for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 10:15:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F03FF87F92
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 10:15:42 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6ECA6B0BD;
 Fri, 27 Sep 2019 10:15:41 +0000 (UTC)
From: Benjamin Poirier <bpoirier@suse.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 16/17] staging: qlge: Refill rx buffers up to multiple of 16
Date: Fri, 27 Sep 2019 19:12:10 +0900
Message-Id: <20190927101210.23856-17-bpoirier@suse.com>
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

Reading the {s,l}bq_prod_idx registers on a running device, it appears that
the adapter will only use buffers up to prod_idx & 0xfff0. The driver
currently uses fixed-size guard zones (16 for sbq, 32 for lbq - don't know
why this difference). After the previous patch, this approach no longer
guarantees prod_idx values aligned on multiples of 16. While it appears
that we can write unaligned values to prod_idx without ill effects on
device operation, it makes more sense to change qlge_refill_bq() to refill
up to a limit that corresponds with the device's behavior.

Signed-off-by: Benjamin Poirier <bpoirier@suse.com>
---
 drivers/staging/qlge/qlge.h      |  8 ++++++++
 drivers/staging/qlge/qlge_main.c | 29 +++++++++++------------------
 2 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 7c48e333d29b..e5a352df8228 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -1423,6 +1423,9 @@ struct qlge_bq {
 	__le64 *base_indirect;
 	dma_addr_t base_indirect_dma;
 	struct qlge_bq_desc *queue;
+	/* prod_idx is the index of the first buffer that may NOT be used by
+	 * hw, ie. one after the last. Advanced by sw.
+	 */
 	void __iomem *prod_idx_db_reg;
 	/* next index where sw should refill a buffer for hw */
 	u16 next_to_use;
@@ -1442,6 +1445,11 @@ struct qlge_bq {
 					  offsetof(struct rx_ring, lbq))); \
 })
 
+/* Experience shows that the device ignores the low 4 bits of the tail index.
+ * Refill up to a x16 multiple.
+ */
+#define QLGE_BQ_ALIGN(index) ALIGN_DOWN(index, 16)
+
 #define QLGE_BQ_WRAP(index) ((index) & (QLGE_BQ_LEN - 1))
 
 struct rx_ring {
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 83e75005688a..02ad0cdf4856 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -1114,22 +1114,12 @@ static void qlge_refill_bq(struct qlge_bq *bq)
 	struct rx_ring *rx_ring = QLGE_BQ_CONTAINER(bq);
 	struct ql_adapter *qdev = rx_ring->qdev;
 	struct qlge_bq_desc *bq_desc;
-	int free_count, refill_count;
-	unsigned int reserved_count;
+	int refill_count;
 	int i;
 
-	if (bq->type == QLGE_SB)
-		reserved_count = 16;
-	else
-		reserved_count = 32;
-
-	free_count = bq->next_to_clean - bq->next_to_use;
-	if (free_count <= 0)
-		free_count += QLGE_BQ_LEN;
-
-	refill_count = free_count - reserved_count;
-	/* refill batch size */
-	if (refill_count < 16)
+	refill_count = QLGE_BQ_WRAP(QLGE_BQ_ALIGN(bq->next_to_clean - 1) -
+				    bq->next_to_use);
+	if (!refill_count)
 		return;
 
 	i = bq->next_to_use;
@@ -1164,11 +1154,14 @@ static void qlge_refill_bq(struct qlge_bq *bq)
 	i += QLGE_BQ_LEN;
 
 	if (bq->next_to_use != i) {
-		netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
-			     "ring %u %s: updating prod idx = %d.\n",
-			     rx_ring->cq_id, bq_type_name[bq->type], i);
+		if (QLGE_BQ_ALIGN(bq->next_to_use) != QLGE_BQ_ALIGN(i)) {
+			netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
+				     "ring %u %s: updating prod idx = %d.\n",
+				     rx_ring->cq_id, bq_type_name[bq->type],
+				     i);
+			ql_write_db_reg(i, bq->prod_idx_db_reg);
+		}
 		bq->next_to_use = i;
-		ql_write_db_reg(bq->next_to_use, bq->prod_idx_db_reg);
 	}
 }
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

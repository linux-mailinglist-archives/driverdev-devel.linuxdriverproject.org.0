Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B4AC031C
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 12:15:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B05A122797;
	Fri, 27 Sep 2019 10:15:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pi6hZDaNCh4s; Fri, 27 Sep 2019 10:15:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7C4CE2046C;
	Fri, 27 Sep 2019 10:15:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DE1321BF2F4
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:15:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DAB8187F81
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZNFfTH6CzeMQ for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 10:14:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A954787F79
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 10:14:59 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1BDD8AF92;
 Fri, 27 Sep 2019 10:14:58 +0000 (UTC)
From: Benjamin Poirier <bpoirier@suse.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 03/17] staging: qlge: Remove page_chunk.last_flag
Date: Fri, 27 Sep 2019 19:11:57 +0900
Message-Id: <20190927101210.23856-4-bpoirier@suse.com>
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

As already done in ql_get_curr_lchunk(), this member can be replaced by a
simple test.

Signed-off-by: Benjamin Poirier <bpoirier@suse.com>
Acked-by: Manish Chopra <manishc@marvell.com>
---
 drivers/staging/qlge/qlge.h      |  1 -
 drivers/staging/qlge/qlge_main.c | 13 +++++--------
 2 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 5d9a36deda08..0a156a95e981 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -1363,7 +1363,6 @@ struct page_chunk {
 	char *va;		/* virt addr for this chunk */
 	u64 map;		/* mapping for master */
 	unsigned int offset;	/* offset for this chunk */
-	unsigned int last_flag; /* flag set for last chunk in page */
 };
 
 struct bq_desc {
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 7a8d6390d5de..a82920776e6b 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -1077,11 +1077,9 @@ static int ql_get_next_chunk(struct ql_adapter *qdev, struct rx_ring *rx_ring,
 	rx_ring->pg_chunk.offset += rx_ring->lbq_buf_size;
 	if (rx_ring->pg_chunk.offset == ql_lbq_block_size(qdev)) {
 		rx_ring->pg_chunk.page = NULL;
-		lbq_desc->p.pg_chunk.last_flag = 1;
 	} else {
 		rx_ring->pg_chunk.va += rx_ring->lbq_buf_size;
 		get_page(rx_ring->pg_chunk.page);
-		lbq_desc->p.pg_chunk.last_flag = 0;
 	}
 	return 0;
 }
@@ -2778,6 +2776,8 @@ static int ql_alloc_tx_resources(struct ql_adapter *qdev,
 
 static void ql_free_lbq_buffers(struct ql_adapter *qdev, struct rx_ring *rx_ring)
 {
+	unsigned int last_offset = ql_lbq_block_size(qdev) -
+		rx_ring->lbq_buf_size;
 	struct bq_desc *lbq_desc;
 
 	uint32_t  curr_idx, clean_idx;
@@ -2787,13 +2787,10 @@ static void ql_free_lbq_buffers(struct ql_adapter *qdev, struct rx_ring *rx_ring
 	while (curr_idx != clean_idx) {
 		lbq_desc = &rx_ring->lbq[curr_idx];
 
-		if (lbq_desc->p.pg_chunk.last_flag) {
-			pci_unmap_page(qdev->pdev,
-				lbq_desc->p.pg_chunk.map,
-				ql_lbq_block_size(qdev),
+		if (lbq_desc->p.pg_chunk.offset == last_offset)
+			pci_unmap_page(qdev->pdev, lbq_desc->p.pg_chunk.map,
+				       ql_lbq_block_size(qdev),
 				       PCI_DMA_FROMDEVICE);
-			lbq_desc->p.pg_chunk.last_flag = 0;
-		}
 
 		put_page(lbq_desc->p.pg_chunk.page);
 		lbq_desc->p.pg_chunk.page = NULL;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

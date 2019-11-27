Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A67C610AFA1
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Nov 2019 13:40:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 28B9486470;
	Wed, 27 Nov 2019 12:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sBGRnuecfdRO; Wed, 27 Nov 2019 12:40:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DFB3085FC7;
	Wed, 27 Nov 2019 12:40:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9811F1BF3A0
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 12:40:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 94BC686237
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 12:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pse9mbqDhV-A for <devel@linuxdriverproject.org>;
 Wed, 27 Nov 2019 12:40:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3F8E885FC7
 for <devel@driverdev.osuosl.org>; Wed, 27 Nov 2019 12:40:04 +0000 (UTC)
Received: from faui04s.informatik.uni-erlangen.de
 (faui04s.informatik.uni-erlangen.de [131.188.30.149])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id D13B1241838;
 Wed, 27 Nov 2019 13:31:02 +0100 (CET)
Received: by faui04s.informatik.uni-erlangen.de (Postfix, from userid 66121)
 id AE1FE15E15AC; Wed, 27 Nov 2019 13:31:02 +0100 (CET)
From: Dorothea Ehrl <dorothea.ehrl@fau.de>
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org, netdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] staging/qlge: fix block comment coding style
Date: Wed, 27 Nov 2019 13:30:52 +0100
Message-Id: <20191127123052.16424-5-dorothea.ehrl@fau.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191127123052.16424-1-dorothea.ehrl@fau.de>
References: <20191127123052.16424-1-dorothea.ehrl@fau.de>
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
Cc: Vanessa Hack <vanessa.hack@fau.de>, Dorothea Ehrl <dorothea.ehrl@fau.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes:
"WARNING: block comment use * on subsequent lines"
"WARNING: block comments should align the * on each line"
"WARNING: block comments use a trailing */ on a separate line"
by checkpatch.pl.

Signed-off-by: Dorothea Ehrl <dorothea.ehrl@fau.de>
Co-developed-by: Vanessa Hack <vanessa.hack@fau.de>
Signed-off-by: Vanessa Hack <vanessa.hack@fau.de>
---
 drivers/staging/qlge/qlge_main.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index d19709bcdc20..29861f01ca26 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -402,8 +402,8 @@ static int ql_set_mac_addr_reg(struct ql_adapter *qdev, u8 *addr, u32 type,
 				   (index << MAC_ADDR_IDX_SHIFT) |	/* index */
 				   type);	/* type */
 			/* This field should also include the queue id
-			   and possibly the function id.  Right now we hardcode
-			   the route field to NIC core.
+			 * and possibly the function id.  Right now we hardcode
+			 * the route field to NIC core.
 			 */
 			cam_output = (CAM_OUT_ROUTE_NIC |
 				      (qdev->
@@ -683,7 +683,7 @@ static int ql_read_flash_word(struct ql_adapter *qdev, int offset, __le32 *data)
 			FLASH_ADDR, FLASH_ADDR_RDY, FLASH_ADDR_ERR);
 	if (status)
 		goto exit;
-	 /* This data is stored on flash as an array of
+	/* This data is stored on flash as an array of
 	 * __le32.  Since ql_read32() returns cpu endian
 	 * we need to swap it back.
 	 */
@@ -2223,7 +2223,8 @@ static int ql_napi_poll_msix(struct napi_struct *napi, int budget)
 		     "Enter, NAPI POLL cq_id = %d.\n", rx_ring->cq_id);

 	/* Service the TX rings first.  They start
-	 * right after the RSS rings. */
+	 * right after the RSS rings.
+	 */
 	for (i = qdev->rss_ring_count; i < qdev->rx_ring_count; i++) {
 		trx_ring = &qdev->rx_ring[i];
 		/* If this TX completion ring belongs to this vector and
@@ -2888,7 +2889,8 @@ static void ql_free_rx_resources(struct ql_adapter *qdev,
 }

 /* Allocate queues and buffers for this completions queue based
- * on the values in the parameter structure. */
+ * on the values in the parameter structure.
+ */
 static int ql_alloc_rx_resources(struct ql_adapter *qdev,
 				 struct rx_ring *rx_ring)
 {
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

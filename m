Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1771D13BF
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 May 2020 15:01:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AB38889228;
	Wed, 13 May 2020 13:01:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U7HUacX8Q5wu; Wed, 13 May 2020 13:01:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 29A2888F85;
	Wed, 13 May 2020 13:01:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 25B9A1BF2E5
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 13:01:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 225E088DDA
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 13:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0vQTe5DimZEi for <devel@linuxdriverproject.org>;
 Wed, 13 May 2020 13:01:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 20F1788ABC
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 13:01:02 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id f15so6792222plr.3
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 06:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dNZP1hODCFjbYeHZ6HY6IqS7arCegZXm1NX93ncNYxA=;
 b=F0eVoq99v+yZoZPlVsmr5bfX3WQzXzO3jrEsoLbHFRaz0rh71VAnMcLeKslTMoPYo0
 +f6bs4L/o0N2GPA8gn+8xkcbMVODC5FRfti908GOviJRtZwjk77Bn5xIn1vshLoPxroN
 dkfHUGXWlq/SmhudSjrHYNJbTJ2gA0lHSSnRTvrbsMT4rO54nw5hSLudmy5lgtcPBuNY
 30CHSvoFyacwDHXxAx/vFw1w11b5SCEH8uWUWS9JZOLL65V4LB6aTLnRMZl+dYfREpr3
 jEq6KSZL4bT5POgEdLkUnLUqT4MdnCE83Gj6cLz5lBxAmstQSnJU9vZTeU14jQqjuOQM
 cadw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dNZP1hODCFjbYeHZ6HY6IqS7arCegZXm1NX93ncNYxA=;
 b=IMeBmVSzG/nbhvuZwjEY2o/EnQc/CNID4AnE/zxQk9jdZg9jLEOIIP0O9ZlB14YwzU
 9apb/NrwdKeP6p3Iq+MCECTg9oT7OlRYt2mTg5ynCm0zkDBBgOsRsLFbyaFSodTYIOY1
 8Z0eiTnlIkuDU1xWE0FBKlQ6T3XNGFsvKWbHJGkY6sEm8Xqx+ZTjrBzHjJbBbpeExTBG
 l+PEt6GN52ENCygTNRZbpt/JCqQTRnsftQLnsKCn3mjMesJAjz67VwtguvQttkaus+U4
 RoDp33hcBM7dO/fh448ssS8dVogbI023TbKJSm8qz2DMAFBtNlIf/LBwn/oRCxV5i3c8
 Xx9g==
X-Gm-Message-State: AGi0Pub6nIrk4l5+EEYyYNENepAn+nJc4CiKUC1Y8FPNxArMQyqpLoE/
 /qqtpxyVEwv2fVywRDedVZ8=
X-Google-Smtp-Source: APiQypLLSQgmWWxsG4cq2ppEMWxlqwHTqTZBjGb31C6Q9n1uRmshCtRcG2vBumhlfetaI0nbfHsN4Q==
X-Received: by 2002:a17:902:b107:: with SMTP id
 q7mr24093526plr.177.1589374861634; 
 Wed, 13 May 2020 06:01:01 -0700 (PDT)
Received: from localhost ([203.205.141.39])
 by smtp.gmail.com with ESMTPSA id 188sm14544421pfg.218.2020.05.13.06.01.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 May 2020 06:01:00 -0700 (PDT)
From: Xiangyang Zhang <xyz.sun.ok@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com
Subject: [PATCH] staging: qlge: Remove unnecessary spaces in qlge_main.c
Date: Wed, 13 May 2020 21:00:42 +0800
Message-Id: <20200513130042.13185-1-xyz.sun.ok@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Xiangyang Zhang <xyz.sun.ok@gmail.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch.pl check:

  CHECK: No space is necessary after a cast

Signed-off-by: Xiangyang Zhang <xyz.sun.ok@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 36 ++++++++++++++++----------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 93df4f79b21d..a9163fb659d9 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -236,8 +236,8 @@ int ql_write_cfg(struct ql_adapter *qdev, void *ptr, int size, u32 bit,
 		goto exit;
 	}
 
-	ql_write32(qdev, ICB_L, (u32) map);
-	ql_write32(qdev, ICB_H, (u32) (map >> 32));
+	ql_write32(qdev, ICB_L, (u32)map);
+	ql_write32(qdev, ICB_H, (u32)(map >> 32));
 
 	mask = CFG_Q_MASK | (bit << 16);
 	value = bit | (q_id << CFG_Q_SHIFT);
@@ -439,7 +439,7 @@ static int ql_set_mac_addr(struct ql_adapter *qdev, int set)
 	status = ql_sem_spinlock(qdev, SEM_MAC_ADDR_MASK);
 	if (status)
 		return status;
-	status = ql_set_mac_addr_reg(qdev, (u8 *) addr,
+	status = ql_set_mac_addr_reg(qdev, (u8 *)addr,
 				     MAC_ADDR_TYPE_CAM_MAC,
 				     qdev->func * MAX_CQ);
 	ql_sem_unlock(qdev, SEM_MAC_ADDR_MASK);
@@ -841,7 +841,7 @@ int ql_read_xgmac_reg64(struct ql_adapter *qdev, u32 reg, u64 *data)
 	if (status)
 		goto exit;
 
-	*data = (u64) lo | ((u64) hi << 32);
+	*data = (u64)lo | ((u64)hi << 32);
 
 exit:
 	return status;
@@ -1631,7 +1631,7 @@ static void ql_process_mac_rx_skb(struct ql_adapter *qdev,
 		} else if ((ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_U) &&
 				(ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_V4)) {
 			/* Unfragmented ipv4 UDP frame. */
-			struct iphdr *iph = (struct iphdr *) skb->data;
+			struct iphdr *iph = (struct iphdr *)skb->data;
 
 			if (!(iph->frag_off &
 				htons(IP_MF|IP_OFFSET))) {
@@ -1920,7 +1920,7 @@ static void ql_process_mac_split_rx_intr(struct ql_adapter *qdev,
 		} else if ((ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_U) &&
 				(ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_V4)) {
 		/* Unfragmented ipv4 UDP frame. */
-			struct iphdr *iph = (struct iphdr *) skb->data;
+			struct iphdr *iph = (struct iphdr *)skb->data;
 
 			if (!(iph->frag_off &
 				htons(IP_MF|IP_OFFSET))) {
@@ -2301,7 +2301,7 @@ static int __qlge_vlan_rx_add_vid(struct ql_adapter *qdev, u16 vid)
 	u32 enable_bit = MAC_ADDR_E;
 	int err;
 
-	err = ql_set_mac_addr_reg(qdev, (u8 *) &enable_bit,
+	err = ql_set_mac_addr_reg(qdev, (u8 *)&enable_bit,
 				  MAC_ADDR_TYPE_VLAN, vid);
 	if (err)
 		netif_err(qdev, ifup, qdev->ndev,
@@ -2332,7 +2332,7 @@ static int __qlge_vlan_rx_kill_vid(struct ql_adapter *qdev, u16 vid)
 	u32 enable_bit = 0;
 	int err;
 
-	err = ql_set_mac_addr_reg(qdev, (u8 *) &enable_bit,
+	err = ql_set_mac_addr_reg(qdev, (u8 *)&enable_bit,
 				  MAC_ADDR_TYPE_VLAN, vid);
 	if (err)
 		netif_err(qdev, ifup, qdev->ndev,
@@ -2473,7 +2473,7 @@ static int ql_tso(struct sk_buff *skb, struct ob_mac_tso_iocb_req *mac_iocb_ptr)
 
 		mac_iocb_ptr->opcode = OPCODE_OB_MAC_TSO_IOCB;
 		mac_iocb_ptr->flags3 |= OB_MAC_TSO_IOCB_IC;
-		mac_iocb_ptr->frame_len = cpu_to_le32((u32) skb->len);
+		mac_iocb_ptr->frame_len = cpu_to_le32((u32)skb->len);
 		mac_iocb_ptr->total_hdrs_len =
 		    cpu_to_le16(skb_transport_offset(skb) + tcp_hdrlen(skb));
 		mac_iocb_ptr->net_trans_offset =
@@ -2511,7 +2511,7 @@ static void ql_hw_csum_setup(struct sk_buff *skb,
 	__sum16 *check;
 
 	mac_iocb_ptr->opcode = OPCODE_OB_MAC_TSO_IOCB;
-	mac_iocb_ptr->frame_len = cpu_to_le32((u32) skb->len);
+	mac_iocb_ptr->frame_len = cpu_to_le32((u32)skb->len);
 	mac_iocb_ptr->net_trans_offset =
 		cpu_to_le16(skb_network_offset(skb) |
 		skb_transport_offset(skb) << OB_MAC_TRANSPORT_HDR_SHIFT);
@@ -2542,7 +2542,7 @@ static netdev_tx_t qlge_send(struct sk_buff *skb, struct net_device *ndev)
 	struct ql_adapter *qdev = netdev_priv(ndev);
 	int tso;
 	struct tx_ring *tx_ring;
-	u32 tx_ring_idx = (u32) skb->queue_mapping;
+	u32 tx_ring_idx = (u32)skb->queue_mapping;
 
 	tx_ring = &qdev->tx_ring[tx_ring_idx];
 
@@ -2569,7 +2569,7 @@ static netdev_tx_t qlge_send(struct sk_buff *skb, struct net_device *ndev)
 	mac_iocb_ptr->txq_idx = tx_ring_idx;
 	tx_ring_desc->skb = skb;
 
-	mac_iocb_ptr->frame_len = cpu_to_le16((u16) skb->len);
+	mac_iocb_ptr->frame_len = cpu_to_le16((u16)skb->len);
 
 	if (skb_vlan_tag_present(skb)) {
 		netif_printk(qdev, tx_queued, KERN_DEBUG, qdev->ndev,
@@ -2992,7 +2992,7 @@ static int ql_start_rx_ring(struct ql_adapter *qdev, struct rx_ring *rx_ring)
 	rx_ring->sbq.base_indirect_dma = shadow_reg_dma;
 
 	/* PCI doorbell mem area + 0x00 for consumer index register */
-	rx_ring->cnsmr_idx_db_reg = (u32 __iomem *) doorbell_area;
+	rx_ring->cnsmr_idx_db_reg = (u32 __iomem *)doorbell_area;
 	rx_ring->cnsmr_idx = 0;
 	rx_ring->curr_entry = rx_ring->cq_base;
 
@@ -3092,7 +3092,7 @@ static int ql_start_tx_ring(struct ql_adapter *qdev, struct tx_ring *tx_ring)
 	 * Assign doorbell registers for this tx_ring.
 	 */
 	/* TX PCI doorbell mem area for tx producer index */
-	tx_ring->prod_idx_db_reg = (u32 __iomem *) doorbell_area;
+	tx_ring->prod_idx_db_reg = (u32 __iomem *)doorbell_area;
 	tx_ring->prod_idx = 0;
 	/* TX PCI doorbell mem area + 0x04 */
 	tx_ring->valid_db_reg = doorbell_area + 0x04;
@@ -3115,7 +3115,7 @@ static int ql_start_tx_ring(struct ql_adapter *qdev, struct tx_ring *tx_ring)
 	ql_init_tx_ring(qdev, tx_ring);
 
 	err = ql_write_cfg(qdev, wqicb, sizeof(*wqicb), CFG_LRQ,
-			   (u16) tx_ring->wq_id);
+			   (u16)tx_ring->wq_id);
 	if (err) {
 		netif_err(qdev, ifup, qdev->ndev, "Failed to load tx_ring.\n");
 		return err;
@@ -3447,7 +3447,7 @@ static int ql_start_rss(struct ql_adapter *qdev)
 	struct ricb *ricb = &qdev->ricb;
 	int status = 0;
 	int i;
-	u8 *hash_id = (u8 *) ricb->hash_cq_id;
+	u8 *hash_id = (u8 *)ricb->hash_cq_id;
 
 	memset((void *)ricb, 0, sizeof(*ricb));
 
@@ -4202,7 +4202,7 @@ static void qlge_set_multicast_list(struct net_device *ndev)
 			goto exit;
 		i = 0;
 		netdev_for_each_mc_addr(ha, ndev) {
-			if (ql_set_mac_addr_reg(qdev, (u8 *) ha->addr,
+			if (ql_set_mac_addr_reg(qdev, (u8 *)ha->addr,
 						MAC_ADDR_TYPE_MULTI_MAC, i)) {
 				netif_err(qdev, hw, qdev->ndev,
 					  "Failed to loadmulticast address.\n");
@@ -4239,7 +4239,7 @@ static int qlge_set_mac_address(struct net_device *ndev, void *p)
 	status = ql_sem_spinlock(qdev, SEM_MAC_ADDR_MASK);
 	if (status)
 		return status;
-	status = ql_set_mac_addr_reg(qdev, (u8 *) ndev->dev_addr,
+	status = ql_set_mac_addr_reg(qdev, (u8 *)ndev->dev_addr,
 				     MAC_ADDR_TYPE_CAM_MAC,
 				     qdev->func * MAX_CQ);
 	if (status)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

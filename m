Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB119158C3F
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 10:58:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6BFF185582;
	Tue, 11 Feb 2020 09:58:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GVzoO_e4xS2n; Tue, 11 Feb 2020 09:58:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 88F9885247;
	Tue, 11 Feb 2020 09:58:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E19D1BF340
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 09:58:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 076A987143
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 09:58:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uQCf4DWBNZ8j for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 09:58:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 232ED87111
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 09:58:28 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id d5so1077968pjz.5
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 01:58:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=oDYnBEZd/3hdA6X4VhVRHbAjKUJ0MDM6lOD9+y++Vi8=;
 b=fA41pMH6FdB/1PGQtZQzCGkt96Ei5uG2O/lVjt//Fm5Ng2iifnWjjMi9jNE+eB375m
 vX/uZSggKkD4XQvbcLhD+y+8ma+UdcEX9eQG+WyhaNUOW0e7kSTJZj2JQ8Hm8qWo6pYj
 9wGePWgwZdRUQJj8HKgYA7exeXRjqk2B/Xt1fEW35icDbXJ0HMIOW/qibEPaYbwJLSoE
 15dt+QAC+Nncv9WkV0AsVnmE9EvCXYCPqNwWN7q2VHkAbLYvqjXsx7Vk7Bz69Jso/6Tq
 n4hiNacCoFXNWKslg2OyJFHsehYN3a5fmvocMHANDyvvMSS6UBk69xle4cFymxMDgh3t
 e6qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=oDYnBEZd/3hdA6X4VhVRHbAjKUJ0MDM6lOD9+y++Vi8=;
 b=glZ0/W+lC7PNfoUEJbMY+1+ybwvYUYH5VGS1gXDmEJog3q4mQKvrCQBmOV89V/V3aE
 xOX2CXmhnBh+H8aesRVFR0SOHpDCuR6/7J2VveqgFeLkheqo2+MJtkF5WTwBtsId/qQb
 zGE0a3c3EHVxy6X4hQKH8va8mD0IaIM98nr5yXLPoGBcExugf+LGS+C6wRSH9tUK41/g
 0UimbsrvTHX1qdwoZ5Y0Ce2+WgMnsuQysFof1IGQDNrqcLNOkYxDffrxsO3B9i4zTKmc
 +0mALEk5wJz6HtibAy0ptdSNXsCfkW9ivQGGCwH56VSWAVVM/cjc9idhvuPBru3lAKQC
 jt+g==
X-Gm-Message-State: APjAAAXbfJL6LU4u8UccfUOyPMNJnfqjyNJLNPqHb27xK1HN2dvwn06X
 67Yn8r0jYp9YXR62m3sOi4o=
X-Google-Smtp-Source: APXvYqwU7yw+DMuQQI3h3Pr9SWIYNE3F+EBWzEQayilJdAFS2ekO7jN9BPSrTSW3DqZ560SJMtABjA==
X-Received: by 2002:a17:902:8bc3:: with SMTP id
 r3mr17713048plo.220.1581415107634; 
 Tue, 11 Feb 2020 01:58:27 -0800 (PST)
Received: from localhost.localdomain ([27.59.175.249])
 by smtp.googlemail.com with ESMTPSA id i2sm2351854pjs.21.2020.02.11.01.58.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 01:58:27 -0800 (PST)
From: Mohana Datta Yelugoti <ymdatta.work@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: qlge: qlge_main.c: fix style issues
Date: Tue, 11 Feb 2020 15:28:13 +0530
Message-Id: <20200211095813.11426-1-ymdatta.work@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <ymdatta.work@gmail.com>
References: <ymdatta.work@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, ymdatta.work@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes "WARNING: Missing a blank line after
declarations" generated from checkpatch.pl by adding
a blank line after declarations.

Signed-off-by: Mohana Datta Yelugoti <ymdatta.work@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 86b9b7314a40..c712e1af90de 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -143,6 +143,7 @@ static int ql_sem_trylock(struct ql_adapter *qdev, u32 sem_mask)
 int ql_sem_spinlock(struct ql_adapter *qdev, u32 sem_mask)
 {
 	unsigned int wait_count = 30;
+
 	do {
 		if (!ql_sem_trylock(qdev, sem_mask))
 			return 0;
@@ -1210,6 +1211,7 @@ static void ql_unmap_send(struct ql_adapter *qdev,
 			  struct tx_ring_desc *tx_ring_desc, int mapped)
 {
 	int i;
+
 	for (i = 0; i < mapped; i++) {
 		if (i == 0 || (i == 7 && mapped > 7)) {
 			/*
@@ -1290,6 +1292,7 @@ static int ql_map_send(struct ql_adapter *qdev,
 	 */
 	for (frag_idx = 0; frag_idx < frag_cnt; frag_idx++, map_idx++) {
 		skb_frag_t *frag = &skb_shinfo(skb)->frags[frag_idx];
+
 		tbd++;
 		if (frag_idx == 6 && frag_cnt > 7) {
 			/* Let's tack on an sglist.
@@ -1649,6 +1652,7 @@ static void ql_process_mac_rx_skb(struct ql_adapter *qdev,
 				(ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_V4)) {
 			/* Unfragmented ipv4 UDP frame. */
 			struct iphdr *iph = (struct iphdr *) skb->data;
+
 			if (!(iph->frag_off &
 				htons(IP_MF|IP_OFFSET))) {
 				skb->ip_summed = CHECKSUM_UNNECESSARY;
@@ -1818,6 +1822,7 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
 		 *          eventually be in trouble.
 		 */
 		int size, i = 0;
+
 		sbq_desc = qlge_get_curr_buf(&rx_ring->sbq);
 		pci_unmap_single(qdev->pdev, sbq_desc->dma_addr,
 				 SMALL_BUF_MAP_SIZE, PCI_DMA_FROMDEVICE);
@@ -1936,6 +1941,7 @@ static void ql_process_mac_split_rx_intr(struct ql_adapter *qdev,
 				(ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_V4)) {
 		/* Unfragmented ipv4 UDP frame. */
 			struct iphdr *iph = (struct iphdr *) skb->data;
+
 			if (!(iph->frag_off &
 				htons(IP_MF|IP_OFFSET))) {
 				skb->ip_summed = CHECKSUM_UNNECESSARY;
@@ -2391,6 +2397,7 @@ static void qlge_restore_vlan(struct ql_adapter *qdev)
 static irqreturn_t qlge_msix_rx_isr(int irq, void *dev_id)
 {
 	struct rx_ring *rx_ring = dev_id;
+
 	napi_schedule(&rx_ring->napi);
 	return IRQ_HANDLED;
 }
@@ -2497,6 +2504,7 @@ static int ql_tso(struct sk_buff *skb, struct ob_mac_tso_iocb_req *mac_iocb_ptr)
 		mac_iocb_ptr->flags2 |= OB_MAC_TSO_IOCB_LSO;
 		if (likely(l3_proto == htons(ETH_P_IP))) {
 			struct iphdr *iph = ip_hdr(skb);
+
 			iph->check = 0;
 			mac_iocb_ptr->flags1 |= OB_MAC_TSO_IOCB_IP4;
 			tcp_hdr(skb)->check = ~csum_tcpudp_magic(iph->saddr,
@@ -2521,6 +2529,7 @@ static void ql_hw_csum_setup(struct sk_buff *skb,
 	int len;
 	struct iphdr *iph = ip_hdr(skb);
 	__sum16 *check;
+
 	mac_iocb_ptr->opcode = OPCODE_OB_MAC_TSO_IOCB;
 	mac_iocb_ptr->frame_len = cpu_to_le32((u32) skb->len);
 	mac_iocb_ptr->net_trans_offset =
@@ -4265,6 +4274,7 @@ static int qlge_set_mac_address(struct net_device *ndev, void *p)
 static void qlge_tx_timeout(struct net_device *ndev, unsigned int txqueue)
 {
 	struct ql_adapter *qdev = netdev_priv(ndev);
+
 	ql_queue_asic_error(qdev);
 }
 
@@ -4273,6 +4283,7 @@ static void ql_asic_reset_work(struct work_struct *work)
 	struct ql_adapter *qdev =
 	    container_of(work, struct ql_adapter, asic_reset_work.work);
 	int status;
+
 	rtnl_lock();
 	status = ql_adapter_down(qdev);
 	if (status)
@@ -4344,6 +4355,7 @@ static int ql_get_alt_pcie_func(struct ql_adapter *qdev)
 static int ql_get_board_info(struct ql_adapter *qdev)
 {
 	int status;
+
 	qdev->func =
 	    (ql_read32(qdev, STS) & STS_FUNC_ID_MASK) >> STS_FUNC_ID_SHIFT;
 	if (qdev->func > 3)
@@ -4652,6 +4664,7 @@ static void qlge_remove(struct pci_dev *pdev)
 {
 	struct net_device *ndev = pci_get_drvdata(pdev);
 	struct ql_adapter *qdev = netdev_priv(ndev);
+
 	del_timer_sync(&qdev->timer);
 	ql_cancel_all_work_sync(qdev);
 	unregister_netdev(ndev);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

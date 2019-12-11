Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FA511BB3C
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:15:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D02F987F31;
	Wed, 11 Dec 2019 18:15:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kKjZ+UB5ScjH; Wed, 11 Dec 2019 18:15:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF41E87EFB;
	Wed, 11 Dec 2019 18:15:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A837C1BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A15487EE7
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p3P8tR305VLo for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f68.google.com (mail-yw1-f68.google.com
 [209.85.161.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9C1AC87ED1
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:09 +0000 (UTC)
Received: by mail-yw1-f68.google.com with SMTP id 192so9325634ywy.0
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a4alRxnMvujAzFGYUf7V35+nqgni5Hbp01bap0nmBro=;
 b=Ijzs9feBwnwRU4q3sbGrwqw/i5cg9K+x6ws89l4IUj9fBJMI09Ijxs69zgO05eTm9H
 qOBbKU2r31VnC1IPgN+x++Z6q4VNcF3/waJ/Dcy0cdqnlvNXGlNVREuUTUQXCVTCIo7k
 +ESZmUpxXZzTyzKtKxZNAaQtdKpJ7+NKEsfC42PNmdP0/4xQJspld1idkEaLleN3l9kf
 Rh5VcV4X0RyYz++syu0VqyQpyss/muYA9dMmo6F4KvXjbFOsC+1fBvejQ4HxDU53v9++
 a5eMj3I7BObEq8IXt4bzRIsjREK4n0XlcRKTReW9ly2LUEDUk5dZXpYfoIkOThlX+S4X
 HecQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a4alRxnMvujAzFGYUf7V35+nqgni5Hbp01bap0nmBro=;
 b=M5zuwSo8ALRAKp9fX5GZBsxvsOzhrco3amZIwyOFPDggMLdWg7XFFECp1E5WYS/QRt
 Pkjui5oTEINh9uo2dh79PDgoHbivhWYLoKzuYBjqTPNq7joXHm5nF55d2hoLFqykmCsl
 Ht27K+PfGw+IBpdoxMEi1Fxx3vzUKtOIZExH8zg92XgFwhhCk3ed4Bi9jMR5sGImUcHd
 kDV9JTTGCQGgu+o2gn96ubUXQoBuofNLkohKwd8h7fOOCaGguLicd+aqE4AjzvFsLxrx
 V4+8pifc9IDRw6i7B0n3/UnIWsn5HzVYq1BFuKzhLAjs0C+yiMlNcW/yLuc3fIwy7svV
 8U3g==
X-Gm-Message-State: APjAAAX4R33X+GUCKZMRH/4guiFgNyhnx/5vnzHY64MUGzSLgV6wZU36
 su3H19ut+N2SCxDXB3oHHzA=
X-Google-Smtp-Source: APXvYqyDVWfpqjoVVa0s91lpRDimXSe3kkX+fp1LNJ9dPsT/BaW/Vf3CXHf9FZ1myb2io+7yeCrt6g==
X-Received: by 2002:a81:1289:: with SMTP id 131mr946194yws.74.1576088108589;
 Wed, 11 Dec 2019 10:15:08 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id a22sm1306456ywh.93.2019.12.11.10.15.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:08 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 03/23] staging:qlge: Fix WARNING: Missing a blank line
 after declarations
Date: Wed, 11 Dec 2019 12:12:32 -0600
Message-Id: <e15a6fd67d39af57fa6309037bb0c7a747c52353.1576086080.git.schaferjscott@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576086080.git.schaferjscott@gmail.com>
References: <cover.1576086080.git.schaferjscott@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Scott Schafer <schaferjscott@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix WARNING: Missing a blank line after declarations for the follig
files:
qlge.h
qlge_dbg.c
qlge_main.c
qlge_mpi.c

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge.h      |  1 +
 drivers/staging/qlge/qlge_dbg.c  |  5 +++++
 drivers/staging/qlge/qlge_main.c | 13 +++++++++++++
 drivers/staging/qlge/qlge_mpi.c  |  6 ++++++
 4 files changed, 25 insertions(+)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 4bc5d5fce9bf..89502a8300f6 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -2227,6 +2227,7 @@ static inline void ql_write_db_reg_relaxed(u32 val, void __iomem *addr)
 static inline u32 ql_read_sh_reg(__le32  *addr)
 {
 	u32 reg;
+	
 	reg =  le32_to_cpu(*addr);
 	rmb();
 	return reg;
diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index ed55ec3e6ea1..cbca38c602bc 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -499,6 +499,7 @@ static int ql_get_mpi_regs(struct ql_adapter *qdev, u32 *buf,
 			   u32 offset, u32 count)
 {
 	int i, status = 0;
+	
 	for (i = 0; i < count; i++, buf++) {
 		status = ql_read_mpi_reg(qdev, offset + i, buf);
 		if (status)
@@ -1352,6 +1353,7 @@ static void ql_dump_intr_states(struct ql_adapter *qdev)
 {
 	int i;
 	u32 value;
+	
 	for (i = 0; i < qdev->intr_count; i++) {
 		ql_write32(qdev, INTR_EN, qdev->intr_context[i].intr_read_mask);
 		value = ql_read32(qdev, INTR_EN);
@@ -1437,6 +1439,7 @@ void ql_dump_routing_entries(struct ql_adapter *qdev)
 {
 	int i;
 	u32 value;
+	
 	i = ql_sem_spinlock(qdev, SEM_RT_IDX_MASK);
 	if (i)
 		return;
@@ -1587,6 +1590,7 @@ void ql_dump_stat(struct ql_adapter *qdev)
 void ql_dump_qdev(struct ql_adapter *qdev)
 {
 	int i;
+	
 	DUMP_QDEV_FIELD(qdev, "%lx", flags);
 	DUMP_QDEV_FIELD(qdev, "%p", vlgrp);
 	DUMP_QDEV_FIELD(qdev, "%p", pdev);
@@ -1672,6 +1676,7 @@ void ql_dump_tx_ring(struct tx_ring *tx_ring)
 void ql_dump_ricb(struct ricb *ricb)
 {
 	int i;
+	
 	pr_err("===================== Dumping ricb ===============\n");
 	pr_err("Dumping ricb stuff...\n");
 
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 0a0e50f8e26c..80c0fb4746d5 100644
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
 static void qlge_tx_timeout(struct net_device *ndev)
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
diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index bb03b2fa7233..ecd72f4fcdd5 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -91,6 +91,7 @@ int ql_write_mpi_reg(struct ql_adapter *qdev, u32 reg, u32 data)
 int ql_soft_reset_mpi_risc(struct ql_adapter *qdev)
 {
 	int status;
+	
 	status = ql_write_mpi_reg(qdev, 0x00001010, 1);
 	return status;
 }
@@ -237,6 +238,7 @@ static int ql_idc_cmplt_aen(struct ql_adapter *qdev)
 {
 	int status;
 	struct mbox_params *mbcp = &qdev->idc_mbc;
+	
 	mbcp->out_count = 4;
 	status = ql_get_mb_sts(qdev, mbcp);
 	if (status) {
@@ -255,6 +257,7 @@ static int ql_idc_cmplt_aen(struct ql_adapter *qdev)
 static void ql_link_up(struct ql_adapter *qdev, struct mbox_params *mbcp)
 {
 	int status;
+	
 	mbcp->out_count = 2;
 
 	status = ql_get_mb_sts(qdev, mbcp);
@@ -353,6 +356,7 @@ static int ql_aen_lost(struct ql_adapter *qdev, struct mbox_params *mbcp)
 		netif_err(qdev, drv, qdev->ndev, "Lost AEN broken!\n");
 	else {
 		int i;
+		
 		netif_err(qdev, drv, qdev->ndev, "Lost AEN detected.\n");
 		for (i = 0; i < mbcp->out_count; i++)
 			netif_err(qdev, drv, qdev->ndev, "mbox_out[%d] = 0x%.08x.\n",
@@ -912,6 +916,7 @@ static int ql_idc_wait(struct ql_adapter *qdev)
 	int status = -ETIMEDOUT;
 	long wait_time = 1 * HZ;
 	struct mbox_params *mbcp = &qdev->idc_mbc;
+	
 	do {
 		/* Wait here for the command to complete
 		 * via the IDC process.
@@ -1096,6 +1101,7 @@ int ql_wait_fifo_empty(struct ql_adapter *qdev)
 static int ql_set_port_cfg(struct ql_adapter *qdev)
 {
 	int status;
+	
 	status = ql_mb_set_port_cfg(qdev);
 	if (status)
 		return status;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1DB11BB55
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:16:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7FD4888638;
	Wed, 11 Dec 2019 18:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JI4VdcheIpi4; Wed, 11 Dec 2019 18:15:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA408885A3;
	Wed, 11 Dec 2019 18:15:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E6091BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ECE1186D26
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QncwbOLqdEVH for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f66.google.com (mail-yw1-f66.google.com
 [209.85.161.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2B5D185F5D
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:25 +0000 (UTC)
Received: by mail-yw1-f66.google.com with SMTP id s187so9288957ywe.10
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AltD7NJ0HtBITKXh/Q98jUiSNgIROsA0NlBEZ+kMmy0=;
 b=KGKPCHz8bCGVGi8gtpGiJVmaMmvc6YAWgorKsOHn7gW03R04TaJ9cCZvarLBSHXwvP
 cQ2ToUrDjCvWOLs0QXN25mLahqf+n3UeoY6pQkYSvY+GY/SMjPpaKc68Do0zAlPGULou
 DeVigjPSLKGnvxo1WZy9ZzRo3GuEEH8T+kC8QXH54+pB33vitgf4UFN+gvQ6IbkAckMs
 6be+awe846PXtkZYFTJieQhV8rZfBNYVr8/5UedkIQZK+O7sBt5Q2TaOGRM+JmgjdSBN
 KDK2s/SN7oWotx1pFlzg2zbi5kTzLINTfboHpe9L9LSLlWG8ne9Nk1NhXIIF5+NlpTVX
 8hAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AltD7NJ0HtBITKXh/Q98jUiSNgIROsA0NlBEZ+kMmy0=;
 b=lkPldpqLFbEIeVVgsA3oBz6PRP4aoB6K9hj4OCSOnVFPkugyL+cX01Zm/hnFUUr6pT
 2y4ltzdU+SqO9HLIQOOkRpJuiWdXmbvMfPwyVHjFKjymQqz5luB+JYHvx9fAyay88l+J
 LyFJYcxyA76+4Vrjp96Vjl4EwstBjv/t9EKRFHkvkonKWiySiu6LWY5b00gz5vVd/5Aa
 tLjedfiPNDdOAFKIrDZTBrt0fmE9t4gGE8Hf+EapLaQ01J897pI5ItTGDc/rFvT7z0e2
 JSIRNnvR1p/HQD8yH//WWGCCklK2MAZn5AegvuTrtZtt5B/fO0coglLoWFgW6GpajIEx
 dPlA==
X-Gm-Message-State: APjAAAWHdDMhoC+xVfTFKa8lD30xBKEBajAzU6XmckEax4wk2wM0z9ac
 QvZCn9dDB1xJyxcRLlqDp0c=
X-Google-Smtp-Source: APXvYqx0upN00DK83okn8lbD1jrmyl6jEtD9VuYn6RnO7G5sOkOZNKEPXbMMsWvtE1gxb/3oOR/GqA==
X-Received: by 2002:a0d:ca50:: with SMTP id m77mr910883ywd.4.1576088124175;
 Wed, 11 Dec 2019 10:15:24 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id e204sm1290134ywe.92.2019.12.11.10.15.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:23 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 13/23] staging: qlge: Fix CHECK: spaces preferred around
 that (ctx:VxV)
Date: Wed, 11 Dec 2019 12:12:42 -0600
Message-Id: <a6f197d39478dc6955834412e20b4aed7c7141a2.1576086080.git.schaferjscott@gmail.com>
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

Fix CHECK: spaces preferred around that (ctx:VxV) in qlge.h and
qlge_main.c

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge.h      |  6 +++---
 drivers/staging/qlge/qlge_main.c | 18 +++++++++---------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 63642cb9e624..9ab4c7ce7714 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -59,7 +59,7 @@
 #define MAX_CQ 128
 #define DFLT_COALESCE_WAIT 100	/* 100 usec wait for coalescing */
 #define MAX_INTER_FRAME_WAIT 10	/* 10 usec max interframe-wait for coalescing */
-#define DFLT_INTER_FRAME_WAIT (MAX_INTER_FRAME_WAIT/2)
+#define DFLT_INTER_FRAME_WAIT (MAX_INTER_FRAME_WAIT / 2)
 #define UDELAY_COUNT 3
 #define UDELAY_DELAY 100
 
@@ -1366,7 +1366,7 @@ struct tx_ring_desc {
 	struct tx_ring_desc *next;
 };
 
-#define QL_TXQ_IDX(qdev, skb) (smp_processor_id()%(qdev->tx_ring_count))
+#define QL_TXQ_IDX(qdev, skb) (smp_processor_id() % (qdev->tx_ring_count))
 
 struct tx_ring {
 	/*
@@ -1790,7 +1790,7 @@ struct ql_reg_dump {
 
 	/* segment 34 */
 	struct mpi_coredump_segment_header ets_seg_hdr;
-	u32 ets[8+2];
+	u32 ets[8 + 2];
 };
 
 struct ql_mpi_coredump {
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 4dc4edbb2de5..38d217ae4002 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -706,7 +706,7 @@ static int ql_get_8000_flash_params(struct ql_adapter *qdev)
 
 	size = sizeof(struct flash_params_8000) / sizeof(u32);
 	for (i = 0; i < size; i++, p++) {
-		status = ql_read_flash_word(qdev, i+offset, p);
+		status = ql_read_flash_word(qdev, i + offset, p);
 		if (status) {
 			netif_err(qdev, ifup, qdev->ndev,
 				  "Error reading flash.\n");
@@ -769,7 +769,7 @@ static int ql_get_8012_flash_params(struct ql_adapter *qdev)
 		return -ETIMEDOUT;
 
 	for (i = 0; i < size; i++, p++) {
-		status = ql_read_flash_word(qdev, i+offset, p);
+		status = ql_read_flash_word(qdev, i + offset, p);
 		if (status) {
 			netif_err(qdev, ifup, qdev->ndev,
 				  "Error reading flash.\n");
@@ -1544,7 +1544,7 @@ static void ql_process_mac_rx_page(struct ql_adapter *qdev,
 			struct iphdr *iph =
 				(struct iphdr *)((u8 *)addr + hlen);
 			if (!(iph->frag_off &
-				htons(IP_MF|IP_OFFSET))) {
+				htons(IP_MF | IP_OFFSET))) {
 				skb->ip_summed = CHECKSUM_UNNECESSARY;
 				netif_printk(qdev, rx_status, KERN_DEBUG,
 					     qdev->ndev,
@@ -1651,7 +1651,7 @@ static void ql_process_mac_rx_skb(struct ql_adapter *qdev,
 			struct iphdr *iph = (struct iphdr *)skb->data;
 
 			if (!(iph->frag_off &
-				htons(IP_MF|IP_OFFSET))) {
+				htons(IP_MF | IP_OFFSET))) {
 				skb->ip_summed = CHECKSUM_UNNECESSARY;
 				netif_printk(qdev, rx_status, KERN_DEBUG,
 					     qdev->ndev,
@@ -1940,7 +1940,7 @@ static void ql_process_mac_split_rx_intr(struct ql_adapter *qdev,
 			struct iphdr *iph = (struct iphdr *)skb->data;
 
 			if (!(iph->frag_off &
-				htons(IP_MF|IP_OFFSET))) {
+				htons(IP_MF | IP_OFFSET))) {
 				skb->ip_summed = CHECKSUM_UNNECESSARY;
 				netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
 					     "TCP checksum done!\n");
@@ -4560,7 +4560,7 @@ static void ql_timer(struct timer_list *t)
 		return;
 	}
 
-	mod_timer(&qdev->timer, jiffies + (5*HZ));
+	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 }
 
 static int qlge_probe(struct pci_dev *pdev,
@@ -4632,7 +4632,7 @@ static int qlge_probe(struct pci_dev *pdev,
 	 * the bus goes dead
 	 */
 	timer_setup(&qdev->timer, ql_timer, TIMER_DEFERRABLE);
-	mod_timer(&qdev->timer, jiffies + (5*HZ));
+	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 	ql_link_off(qdev);
 	ql_display_dev_info(ndev);
 	atomic_set(&qdev->lb_count, 0);
@@ -4766,7 +4766,7 @@ static void qlge_io_resume(struct pci_dev *pdev)
 		netif_err(qdev, ifup, qdev->ndev,
 			  "Device was not running prior to EEH.\n");
 	}
-	mod_timer(&qdev->timer, jiffies + (5*HZ));
+	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 	netif_device_attach(ndev);
 }
 
@@ -4828,7 +4828,7 @@ static int qlge_resume(struct pci_dev *pdev)
 			return err;
 	}
 
-	mod_timer(&qdev->timer, jiffies + (5*HZ));
+	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 	netif_device_attach(ndev);
 
 	return 0;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

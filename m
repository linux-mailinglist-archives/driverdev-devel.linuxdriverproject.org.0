Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC681EA216
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jun 2020 12:45:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D4631231A1;
	Mon,  1 Jun 2020 10:45:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GFkFlis6Csmu; Mon,  1 Jun 2020 10:45:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EF87422836;
	Mon,  1 Jun 2020 10:45:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 384CA1BF401
 for <devel@linuxdriverproject.org>; Mon,  1 Jun 2020 10:45:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 34C9F87A78
 for <devel@linuxdriverproject.org>; Mon,  1 Jun 2020 10:45:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0_xQveSp5QFQ for <devel@linuxdriverproject.org>;
 Mon,  1 Jun 2020 10:45:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 290FE87A76
 for <devel@driverdev.osuosl.org>; Mon,  1 Jun 2020 10:45:31 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id l1so6051189ede.11
 for <devel@driverdev.osuosl.org>; Mon, 01 Jun 2020 03:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AQCWkDRq2fhfxdoPdO9VTDnwBK6o27h3tUHRPkDXm2M=;
 b=e6PjRJPOmtFkfuUv9375vTAtLHEE81iHXsUcTZeDIaicRpjzz3zh6/4s+CP+KJbHq0
 9yFdmTj0dMewxswB6bd/1UIAB1hJGNKyD9Uo+JRQraQ16zN4w9+2BuFzqJdVn+MLF/Gr
 skjGuUgM7/opznglu3d0lFNxD/HwQGREr7xJvuc+5V6WOFPWdcBwmopOeNjkcRMWKmeg
 rbw0PAFrTI7nGUHONO8OtPtCXWXAR9y4kJsYEQsC8LQYeWWL1l8t4q4I1m7YcUxmLG5t
 ovbqwkk6JU6biOoLcxX8MMIYEWtpei463MPawitarFfVcxyDNzNbYH0O8aVV7GRyosMi
 vWRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AQCWkDRq2fhfxdoPdO9VTDnwBK6o27h3tUHRPkDXm2M=;
 b=FBB97805I+/0cMnkUcmjKfREBeT4R2ELsvdVbV9GzjG4FQh3SmmJwvPjJ1RaEGzAht
 QZaPXF1IrAtserftDLlNo0R/Q0DwUSBXhlPD8D22kM6pcjwIYgdatGtWpv0h59fqlVqL
 z5N67dwuwpMziowyvt6p4y1ErMCCDk4ztfcebnuFR/6ZLLd1h9ISllXVlFCUQNmAB6I1
 9CX2xNhkXj3VGg/I72+WGvXVx1CC+wrww/Off8rNaUVAbCn3247KklPFid7yZZdxxDUh
 XV6nJV+gqr1GDQkydsUYFsgdEKfg6E+Yy7q9/iAtBzrFnJ+zZGB5hKG2cKvmwq2hMXS6
 xhVw==
X-Gm-Message-State: AOAM531kcBh3S/yFXM2XAwY41lUNMvmaPFFvgoebZU8Gd81leVhrNIPB
 TcueS/gQb7TkU8yU/a/0vrg=
X-Google-Smtp-Source: ABdhPJwCI8kOy/Wj8syQKlllWZd6n9UrlrKdjr1Mn56O/Q0uCz9gJxrvUKgqALFfIXue4utIqXp3xQ==
X-Received: by 2002:a50:f9cc:: with SMTP id a12mr4160580edq.227.1591008329663; 
 Mon, 01 Jun 2020 03:45:29 -0700 (PDT)
Received: from ubuntu.localdomain (host-85-26-109-233.dynamic.voo.be.
 [85.26.109.233])
 by smtp.gmail.com with ESMTPSA id sa19sm8360923ejb.15.2020.06.01.03.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 03:45:28 -0700 (PDT)
From: Jil Rouceau <jilrouceau@gmail.com>
To: manishc@marvell.com
Subject: [PATCH v2] staging: qlge: qlge_main.c: fixed spaces coding style
 issues
Date: Mon,  1 Jun 2020 12:44:16 +0200
Message-Id: <20200601104416.102566-1-jilrouceau@gmail.com>
X-Mailer: git-send-email 2.25.1
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
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Jil Rouceau <jilrouceau@gmail.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed the missing spaces before and after binary operators.

Signed-off-by: Jil Rouceau <jilrouceau@gmail.com>
---
Changes in v2:
	- Based tree changed from Linus' to linux-next.

 drivers/staging/qlge/qlge_main.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 402edaeffe12..1650de13842f 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -687,7 +687,7 @@ static int ql_get_8000_flash_params(struct ql_adapter *qdev)
 
 	size = sizeof(struct flash_params_8000) / sizeof(u32);
 	for (i = 0; i < size; i++, p++) {
-		status = ql_read_flash_word(qdev, i+offset, p);
+		status = ql_read_flash_word(qdev, i + offset, p);
 		if (status) {
 			netif_err(qdev, ifup, qdev->ndev,
 				  "Error reading flash.\n");
@@ -750,7 +750,7 @@ static int ql_get_8012_flash_params(struct ql_adapter *qdev)
 		return -ETIMEDOUT;
 
 	for (i = 0; i < size; i++, p++) {
-		status = ql_read_flash_word(qdev, i+offset, p);
+		status = ql_read_flash_word(qdev, i + offset, p);
 		if (status) {
 			netif_err(qdev, ifup, qdev->ndev,
 				  "Error reading flash.\n");
@@ -1528,7 +1528,7 @@ static void ql_process_mac_rx_page(struct ql_adapter *qdev,
 			struct iphdr *iph =
 				(struct iphdr *)((u8 *)addr + hlen);
 			if (!(iph->frag_off &
-				htons(IP_MF|IP_OFFSET))) {
+				htons(IP_MF | IP_OFFSET))) {
 				skb->ip_summed = CHECKSUM_UNNECESSARY;
 				netif_printk(qdev, rx_status, KERN_DEBUG,
 					     qdev->ndev,
@@ -1635,7 +1635,7 @@ static void ql_process_mac_rx_skb(struct ql_adapter *qdev,
 			struct iphdr *iph = (struct iphdr *)skb->data;
 
 			if (!(iph->frag_off &
-				htons(IP_MF|IP_OFFSET))) {
+				htons(IP_MF | IP_OFFSET))) {
 				skb->ip_summed = CHECKSUM_UNNECESSARY;
 				netif_printk(qdev, rx_status, KERN_DEBUG,
 					     qdev->ndev,
@@ -1924,7 +1924,7 @@ static void ql_process_mac_split_rx_intr(struct ql_adapter *qdev,
 			struct iphdr *iph = (struct iphdr *)skb->data;
 
 			if (!(iph->frag_off &
-				htons(IP_MF|IP_OFFSET))) {
+				htons(IP_MF | IP_OFFSET))) {
 				skb->ip_summed = CHECKSUM_UNNECESSARY;
 				netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
 					     "TCP checksum done!\n");
@@ -4547,7 +4547,7 @@ static void ql_timer(struct timer_list *t)
 		return;
 	}
 
-	mod_timer(&qdev->timer, jiffies + (5*HZ));
+	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 }
 
 static int qlge_probe(struct pci_dev *pdev,
@@ -4619,7 +4619,7 @@ static int qlge_probe(struct pci_dev *pdev,
 	 * the bus goes dead
 	 */
 	timer_setup(&qdev->timer, ql_timer, TIMER_DEFERRABLE);
-	mod_timer(&qdev->timer, jiffies + (5*HZ));
+	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 	ql_link_off(qdev);
 	ql_display_dev_info(ndev);
 	atomic_set(&qdev->lb_count, 0);
@@ -4753,7 +4753,7 @@ static void qlge_io_resume(struct pci_dev *pdev)
 		netif_err(qdev, ifup, qdev->ndev,
 			  "Device was not running prior to EEH.\n");
 	}
-	mod_timer(&qdev->timer, jiffies + (5*HZ));
+	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 	netif_device_attach(ndev);
 }
 
@@ -4815,7 +4815,7 @@ static int qlge_resume(struct pci_dev *pdev)
 			return err;
 	}
 
-	mod_timer(&qdev->timer, jiffies + (5*HZ));
+	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 	netif_device_attach(ndev);
 
 	return 0;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

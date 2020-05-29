Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D7F1E818F
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 17:20:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 09883893F4;
	Fri, 29 May 2020 15:20:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8o4UR4t85U2b; Fri, 29 May 2020 15:20:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 66FBE893E6;
	Fri, 29 May 2020 15:20:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 224F81BF27E
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 15:20:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1A658893E6
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 15:20:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TjRcZ06IY0I1 for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 15:20:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2F3B7893D3
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 15:20:01 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id n24so2469752ejd.0
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 08:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZVYCKAGvF2zTsy4pa1r1HjtMmqMe+cn8yc2WH9XSmb4=;
 b=Igxua0a+a1Kb4qw78JDhNic5PSP8sSE0lX7Y5trdTv+3Bmr46DjYTvce+tRri7vi+L
 H4uoIwiHTrKdH6DoKsx9HoG47++9Rkom3x1UxKJbwgp5tIKgw5kEvshz96TrBEooj3i0
 OOzcr3xhaHXtJo5/Nn0APJrR5HAUScvsuSNJQZESSm6xyYRcPrF7iobmvv5xuaGCmkI7
 BvaRbuj1X/xLl460GMkwaZ9Wl4OafsoVCpo4eh9hA45DlRk/uBU5U2C45jgxZYxvN2A9
 qpm4Zag/y3Q/S8pdtXV/x77XMFoZYhIhcdMDznymhy/85Bu+3Ea+50SEkftRCDugK7+M
 LWJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZVYCKAGvF2zTsy4pa1r1HjtMmqMe+cn8yc2WH9XSmb4=;
 b=KunIZeKWjnhQYade+8XeD7mElSFR56rQ2ANj4C0J/kCIOhkJJUtzsmxuN47BIlaU4L
 dFrpqS8Vd0bKQjhNnsUJcOjN1+ya8pOgFOOleG3wpfUdeK7Spf1uF4FcmISZm1kzzJl3
 7d0CBIEgsIwhOTNVGrvIVZUbdilcs7ip4awKuS3R9e4ciXIyjpYhs91a2TImcO8ZtnlL
 2yCaC8wwXiybKLSiFDMkCgWOVIXt/9WQDRE+Ri1Bcz7KyWMqKijiKvSyJZ4+xl5J31ZU
 412CY3801zKfO2TSGFlmR5T4DGmXPz0Ct2m9Ws14JzavCz8I+PW91uDfy8apC5xsceBa
 46sg==
X-Gm-Message-State: AOAM532m5wL3ua2nYj6A8uZ0mz3XqmQcwsuDVnL5DeQKk298UfDPaXKq
 SZPHsJUVYq/iuezLhW2iPcg=
X-Google-Smtp-Source: ABdhPJyfekTkra9AGKoaZGVf6zPmnHzv28/iLRe4WAVlzAIlhtQjm/9kzf3A3bMjSzZpanyTz3WOEA==
X-Received: by 2002:a17:906:22cc:: with SMTP id
 q12mr8433182eja.485.1590765599584; 
 Fri, 29 May 2020 08:19:59 -0700 (PDT)
Received: from ubuntu.localdomain (host-85-26-109-233.dynamic.voo.be.
 [85.26.109.233])
 by smtp.gmail.com with ESMTPSA id o18sm7419005eji.97.2020.05.29.08.19.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 08:19:58 -0700 (PDT)
From: Jil Rouceau <jilrouceau@gmail.com>
To: manishc@marvell.com
Subject: [PATCH] staging: qlge: qlge_main.c: fixed spaces coding style issues
Date: Fri, 29 May 2020 17:17:49 +0200
Message-Id: <20200529151749.34018-1-jilrouceau@gmail.com>
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
 drivers/staging/qlge/qlge_main.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index c92820f07968..36f8d2890f9a 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -702,7 +702,7 @@ static int ql_get_8000_flash_params(struct ql_adapter *qdev)
 
 	size = sizeof(struct flash_params_8000) / sizeof(u32);
 	for (i = 0; i < size; i++, p++) {
-		status = ql_read_flash_word(qdev, i+offset, p);
+		status = ql_read_flash_word(qdev, i + offset, p);
 		if (status) {
 			netif_err(qdev, ifup, qdev->ndev,
 				  "Error reading flash.\n");
@@ -765,7 +765,7 @@ static int ql_get_8012_flash_params(struct ql_adapter *qdev)
 		return -ETIMEDOUT;
 
 	for (i = 0; i < size; i++, p++) {
-		status = ql_read_flash_word(qdev, i+offset, p);
+		status = ql_read_flash_word(qdev, i + offset, p);
 		if (status) {
 			netif_err(qdev, ifup, qdev->ndev,
 				  "Error reading flash.\n");
@@ -1543,7 +1543,7 @@ static void ql_process_mac_rx_page(struct ql_adapter *qdev,
 			struct iphdr *iph =
 				(struct iphdr *)((u8 *)addr + hlen);
 			if (!(iph->frag_off &
-				htons(IP_MF|IP_OFFSET))) {
+				htons(IP_MF | IP_OFFSET))) {
 				skb->ip_summed = CHECKSUM_UNNECESSARY;
 				netif_printk(qdev, rx_status, KERN_DEBUG,
 					     qdev->ndev,
@@ -1650,7 +1650,7 @@ static void ql_process_mac_rx_skb(struct ql_adapter *qdev,
 			struct iphdr *iph = (struct iphdr *) skb->data;
 
 			if (!(iph->frag_off &
-				htons(IP_MF|IP_OFFSET))) {
+				htons(IP_MF | IP_OFFSET))) {
 				skb->ip_summed = CHECKSUM_UNNECESSARY;
 				netif_printk(qdev, rx_status, KERN_DEBUG,
 					     qdev->ndev,
@@ -1939,7 +1939,7 @@ static void ql_process_mac_split_rx_intr(struct ql_adapter *qdev,
 			struct iphdr *iph = (struct iphdr *) skb->data;
 
 			if (!(iph->frag_off &
-				htons(IP_MF|IP_OFFSET))) {
+				htons(IP_MF | IP_OFFSET))) {
 				skb->ip_summed = CHECKSUM_UNNECESSARY;
 				netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
 					     "TCP checksum done!\n");
@@ -4563,7 +4563,7 @@ static void ql_timer(struct timer_list *t)
 		return;
 	}
 
-	mod_timer(&qdev->timer, jiffies + (5*HZ));
+	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 }
 
 static int qlge_probe(struct pci_dev *pdev,
@@ -4635,7 +4635,7 @@ static int qlge_probe(struct pci_dev *pdev,
 	 * the bus goes dead
 	 */
 	timer_setup(&qdev->timer, ql_timer, TIMER_DEFERRABLE);
-	mod_timer(&qdev->timer, jiffies + (5*HZ));
+	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 	ql_link_off(qdev);
 	ql_display_dev_info(ndev);
 	atomic_set(&qdev->lb_count, 0);
@@ -4769,7 +4769,7 @@ static void qlge_io_resume(struct pci_dev *pdev)
 		netif_err(qdev, ifup, qdev->ndev,
 			  "Device was not running prior to EEH.\n");
 	}
-	mod_timer(&qdev->timer, jiffies + (5*HZ));
+	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 	netif_device_attach(ndev);
 }
 
@@ -4831,7 +4831,7 @@ static int qlge_resume(struct pci_dev *pdev)
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 286E111BB62
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:16:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DF94B20480;
	Wed, 11 Dec 2019 18:16:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id goTyeUUIWDn2; Wed, 11 Dec 2019 18:16:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BE4C7233ED;
	Wed, 11 Dec 2019 18:16:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C5411BF9AD
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6045888619
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DifJ4MMyMbLm for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f67.google.com (mail-yw1-f67.google.com
 [209.85.161.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B12F68860D
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:37 +0000 (UTC)
Received: by mail-yw1-f67.google.com with SMTP id l22so9300136ywc.8
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Mwy/S/J6wsO8PbfLfst4z2PfBZ7YuKvJG/igovMyno0=;
 b=KJHGYsG0OY2Y9l/PncY7IQlms2PwWHCni33ygsVrhF9FXN2OpdgOht71AJDKcaccdj
 MsZLTfHdSa19JawfWKP+Sog7nzSW7B20rkmdfiGtOyLpmpPOFxmQqggfP3OutKzIZceG
 5w4iyIDNgyLEA80j/82e2E7MJtKNXMnPZaVgWdt4xvuD4+tpU1oGcFXfwb86G3gnfu4j
 n5MHfnbAg5iOJBAPHudVP4F18V1oMYLp48uMQ5tVXxNYR6qSZVL3Vkc3TGVUxvDkrz8z
 TGrXNsznE8SfS/gdCNy+FN/mmQVpQO7ip8goNarhEiQtECfLMWFFQrMciFh2VHuY0PvW
 xqOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Mwy/S/J6wsO8PbfLfst4z2PfBZ7YuKvJG/igovMyno0=;
 b=f0N9TB4zvof7qcfuPeUq6qTOzVYJD46KItZYWe115X+oLiPP0csccE8ovCYk5BEujP
 PxnrhRQdhVXfo6mMkbgsShcyBM9VB5ztVJjqkuYNcPyh1qVaBhCLGuPeQJKkPxfyZZdw
 aQhHDABAxVrW3BM27SE0MZmAlXs/0WhW7gPGJMYxFSB6Xk/2OnUaf92tuUK2dLnvDqoX
 iI0fg7UgbErGReSH5s36B2JWnZ55xpuBa5prnh8K7/5WQGVPMGmMdnVd7ChrJj9ogo9H
 4EayvVpGEPlmoklE7w3ZAt0nUTvRFAC/JrrztdRECx8VQQztjCGLraFPpiN7VFXffTf2
 8ryQ==
X-Gm-Message-State: APjAAAVrDM0v32KW13WBc0bOxa2l1Jpe28jKkjKgIrJ2ZAopIirYzIYa
 ctbdXxdIyYM5Ovn8cht7Rf8=
X-Google-Smtp-Source: APXvYqwUgZ48VcZDEX6jLUogQueS6jlPgBzrZ6tj6XT+JacAtvRER7pgE5YU4zBsreOXIgTWlhcYmQ==
X-Received: by 2002:a81:680b:: with SMTP id d11mr815196ywc.457.1576088136728; 
 Wed, 11 Dec 2019 10:15:36 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id 204sm1304497ywx.21.2019.12.11.10.15.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:36 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 21/23] staging: qlge: Fix WARNING: suspect code indent for
 conditional statements
Date: Wed, 11 Dec 2019 12:12:50 -0600
Message-Id: <323c4dfd64eef1ca15404e45d69ae260ee3e87f4.1576086080.git.schaferjscott@gmail.com>
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

Fix indentation for conditionals in qlge_ethtool.c and qlge_main.c

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge_ethtool.c |  4 ++--
 drivers/staging/qlge/qlge_main.c    | 18 +++++++++---------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
index abed932c3694..0bb70b465389 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -529,8 +529,8 @@ void ql_check_lb_frame(struct ql_adapter *qdev,
 	if ((*(skb->data + 3) == 0xFF) &&
 	    (*(skb->data + frame_size / 2 + 10) == 0xBE) &&
 	    (*(skb->data + frame_size / 2 + 12) == 0xAF)) {
-			atomic_dec(&qdev->lb_count);
-			return;
+		atomic_dec(&qdev->lb_count);
+		return;
 	}
 }
 
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 9427386e4a1e..102da1fe9899 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -4121,11 +4121,11 @@ static struct net_device_stats *qlge_get_stats(struct net_device
 	/* Get RX stats. */
 	pkts = mcast = dropped = errors = bytes = 0;
 	for (i = 0; i < qdev->rss_ring_count; i++, rx_ring++) {
-			pkts += rx_ring->rx_packets;
-			bytes += rx_ring->rx_bytes;
-			dropped += rx_ring->rx_dropped;
-			errors += rx_ring->rx_errors;
-			mcast += rx_ring->rx_multicast;
+		pkts += rx_ring->rx_packets;
+		bytes += rx_ring->rx_bytes;
+		dropped += rx_ring->rx_dropped;
+		errors += rx_ring->rx_errors;
+		mcast += rx_ring->rx_multicast;
 	}
 	ndev->stats.rx_packets = pkts;
 	ndev->stats.rx_bytes = bytes;
@@ -4136,9 +4136,9 @@ static struct net_device_stats *qlge_get_stats(struct net_device
 	/* Get TX stats. */
 	pkts = errors = bytes = 0;
 	for (i = 0; i < qdev->tx_ring_count; i++, tx_ring++) {
-			pkts += tx_ring->tx_packets;
-			bytes += tx_ring->tx_bytes;
-			errors += tx_ring->tx_errors;
+		pkts += tx_ring->tx_packets;
+		bytes += tx_ring->tx_bytes;
+		errors += tx_ring->tx_errors;
 	}
 	ndev->stats.tx_packets = pkts;
 	ndev->stats.tx_bytes = bytes;
@@ -4432,7 +4432,7 @@ static int ql_init_device(struct pci_dev *pdev, struct net_device *ndev,
 	} else {
 		err = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
 		if (!err)
-		       err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
+			err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
 	}
 
 	if (err) {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

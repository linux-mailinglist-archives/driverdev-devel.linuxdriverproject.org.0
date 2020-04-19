Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A01D1AFA53
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Apr 2020 14:58:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F3E49856B7;
	Sun, 19 Apr 2020 12:58:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yV8qx4IwPAuu; Sun, 19 Apr 2020 12:58:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF92A85735;
	Sun, 19 Apr 2020 12:58:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6608D1BF405
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 12:58:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 60BCF8738B
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 12:58:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TUckrpQWp1BU for <devel@linuxdriverproject.org>;
 Sun, 19 Apr 2020 12:58:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4E7298737E
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 12:58:25 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id x18so8636877wrq.2
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 05:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rHT9Pl48uHcOEaMkHi0B8U1hGuWxpSdVrpJzMEcgxps=;
 b=MkE3jHcmISuA7dtz1w/s79H0tvgc3dV1G9XCaTyN8q8inP9AcB5ibeuLoktLPwZUuE
 IiLrGroFU5kTYVGyVA9hou65gsJ0cf19ThsnU7/JxndfXQxLen8ZzjliFD79qG8SAEZE
 nrKGZ3SYxzCRTwyGKpbWyHhUT5uIlN/C1LXcaHy4yqQ36NHioaL5H2P0O+u2cDUDNL22
 GZHqRma0GrUGxTrKz6380PSHjZof4Yc/H9nUtgdep13fdnqe3gG4NlQ8CYZiGcbOlJUG
 +Wi5Ku1cxEGXNpr3v4KXmFHZ0HzYQUxvYU2FgszS/a+6B3MiTtttrcsuzpeOAWkIKIpR
 VioQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rHT9Pl48uHcOEaMkHi0B8U1hGuWxpSdVrpJzMEcgxps=;
 b=Fk/xqMi/H4FskooNseEj2oUQjmUdI0XoumtWjpDkYRFoZfjTaVpcnU41hsrlOLt5hV
 52KeODPHjI24eLKEgo6YnUkuh5Lo2L7+nGUGSSadIX/jKTf1v2UyuuoLwNwomJijDEl7
 lHubX7xTWHXJsMOWalEVroi3qQRWlU9AGf7ONmzqc0RID7nz4Qr6NtA4AUP2A6tPTdx7
 aeEH+pCZ/LK509CpmJh+USp54KoUJG4IDrUPxRuVaidsz16eXkjNDBwRlyO7ny/YJb0p
 5fuThSMoQ9qvvxY+eGmei43S3txPP45uZYkgVldLwqcaJqWeuSD2uJxB43idE0MSrbXW
 nsRw==
X-Gm-Message-State: AGi0PuYA60j801LnckUYi7CgvIVmmFTCkDzcYNFuUr4by3cjdjQGftzZ
 K73YHXs5dKqEjNreJ+RSq3hEJ0lylasgsw==
X-Google-Smtp-Source: APiQypLEhaf54w8e1b/U0vSvCJ1C7VQIa+V43c3OvtoGt11ueRX0TRIxyh5rHFPN9EpvOfMaWCOgmQ==
X-Received: by 2002:adf:f48f:: with SMTP id l15mr7545408wro.161.1587301103671; 
 Sun, 19 Apr 2020 05:58:23 -0700 (PDT)
Received: from xps ([80.215.14.241])
 by smtp.gmail.com with ESMTPSA id 1sm15594846wmz.13.2020.04.19.05.58.22
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Sun, 19 Apr 2020 05:58:22 -0700 (PDT)
From: Mathieu Dolmen <mathieu.dolmen@gmail.com>
To: manishc@marvell.com
Subject: [PATCH] staging: qlge: cleanup indent in qlge_main.c
Date: Sun, 19 Apr 2020 14:57:12 +0200
Message-Id: <20200419125712.27506-1-mathieu.dolmen@gmail.com>
X-Mailer: git-send-email 2.25.3
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
 Mathieu Dolmen <mathieu.dolmen@gmail.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleanup indentation style in qlge_main.c.
Fix 2 warnings found by checkpatch.pl.

Signed-off-by: Mathieu Dolmen <mathieu.dolmen@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index c92820f07968..d6b78c200383 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -4125,11 +4125,11 @@ static struct net_device_stats *qlge_get_stats(struct net_device
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
@@ -4140,9 +4140,9 @@ static struct net_device_stats *qlge_get_stats(struct net_device
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
-- 
2.25.3

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

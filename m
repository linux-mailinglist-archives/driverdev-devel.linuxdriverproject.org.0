Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6F5156BD6
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Feb 2020 18:36:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1A108504B;
	Sun,  9 Feb 2020 17:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v3Fi_tnVXhJS; Sun,  9 Feb 2020 17:36:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A7B29845D9;
	Sun,  9 Feb 2020 17:36:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 915B21BF3A3
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 17:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8418A20242
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 17:36:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Rq24reycpY7 for <devel@linuxdriverproject.org>;
 Sun,  9 Feb 2020 17:36:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id D43842011B
 for <devel@driverdev.osuosl.org>; Sun,  9 Feb 2020 17:36:43 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id g6so1854309plt.2
 for <devel@driverdev.osuosl.org>; Sun, 09 Feb 2020 09:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MxZxxqdrvS4s5tnXJDq2WZ6KSwZkXVufIoxtWg0QLPQ=;
 b=XM4zEnqDl0yRWNRbaDzIVDLAWyH7AtL6zTJAK0SvNBT0meYt7yTuMUvYHDcQT5PCMM
 6SK1Rpuo0/BZxDEXOcMjyOgIBjyR7Lia57x2OWttOXzRDF+Ylm5bcRgusTSFxXmZ05la
 SkYZTiNRW9psCdOA33zkFXLbw9b2vpCSI/X1zhVm7wgY+ehjmbwp2nK7sDIX7B8iqW3b
 z9mJRebD5v7E9CU8C9xH18sl142RM9kpU3rU2rscyEl1HbHFRrKEckGZaTKKiKzezOYa
 HTGnl67DWACE6aSAEtpIlveM1aiVEM2TZTiGfacvZ1ckNz3IemWBbu1inWuL06V+jx8T
 CctQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MxZxxqdrvS4s5tnXJDq2WZ6KSwZkXVufIoxtWg0QLPQ=;
 b=AMm0r7iPhm7CaP2Jx0RPOJjNs15/MDSjuH1bE7oVrGeSAgFZLM+4pobTnaod5qbj6V
 FHG22tMwL2tOQkIZekPvJYqu63hMQcBaDyunNZLoPqCQf/r3Lhy/eP6AhAT/c6ue9J+2
 6YQoc2KnyEsx3dN3GK7I3t6QVTGQ8/jrWoINRtoXHm1oEeSGnyJOc04yjvLFWlOB3lYW
 oNIXzMsmjmXTpSvSR/FyD7PeICVZQtYrhbgu6YdjglWoRCAStcmiSgnSTyxMwJXJ7VQd
 dh2flGtKm6qVU5LZGoBAydYG80BqwtIQ13WrBfK2jMCn6bypo4tZjBr8w2D3Z8SmZJ5p
 Z90Q==
X-Gm-Message-State: APjAAAW1k+JlYC7RKQXCI+JhHSHaU7tvfKHxMHFXdFHReoFPJpCemIGA
 3pmhwV77AkRvj7z4iTTWxu1HWyQQ
X-Google-Smtp-Source: APXvYqw3WlI2XqIr2fOVvFk/hGJQBakrH3bO0O4lHxK8Kjf832Op4thHm0kx3KEwlDgvQNTtdpropQ==
X-Received: by 2002:a17:90a:a115:: with SMTP id
 s21mr15701606pjp.23.1581269803400; 
 Sun, 09 Feb 2020 09:36:43 -0800 (PST)
Received: from localhost.localdomain ([157.44.204.164])
 by smtp.googlemail.com with ESMTPSA id y18sm9352622pfe.19.2020.02.09.09.36.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Feb 2020 09:36:43 -0800 (PST)
From: Mohana Datta Yelugoti <ymdatta.work@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3] staging: qlge: remove spaces at the start of a line
Date: Sun,  9 Feb 2020 23:06:28 +0530
Message-Id: <20200209173628.21221-1-ymdatta.work@gmail.com>
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

This patch fixes "WARNING: please, no spaces at the start of a
line" by checkpatch.pl by replacing spaces with the tab.

Signed-off-by: Mohana Datta Yelugoti <ymdatta.work@gmail.com>
---
Changes from v1 -> v2:
	Improved patch description
Changes from v2 -> v3:
	Added information about changes between patch versions

 drivers/staging/qlge/qlge_main.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index ef8037d0b52e..86b9b7314a40 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -52,16 +52,16 @@ MODULE_LICENSE("GPL");
 MODULE_VERSION(DRV_VERSION);
 
 static const u32 default_msg =
-    NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK |
+	NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK |
 /* NETIF_MSG_TIMER |	*/
-    NETIF_MSG_IFDOWN |
-    NETIF_MSG_IFUP |
-    NETIF_MSG_RX_ERR |
-    NETIF_MSG_TX_ERR |
+	NETIF_MSG_IFDOWN |
+	NETIF_MSG_IFUP |
+	NETIF_MSG_RX_ERR |
+	NETIF_MSG_TX_ERR |
 /*  NETIF_MSG_TX_QUEUED | */
 /*  NETIF_MSG_INTR | NETIF_MSG_TX_DONE | NETIF_MSG_RX_STATUS | */
 /* NETIF_MSG_PKTDATA | */
-    NETIF_MSG_HW | NETIF_MSG_WOL | 0;
+	NETIF_MSG_HW | NETIF_MSG_WOL | 0;
 
 static int debug = -1;	/* defaults above */
 module_param(debug, int, 0664);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

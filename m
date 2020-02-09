Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ABF156BC1
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Feb 2020 18:14:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5ED2084E3A;
	Sun,  9 Feb 2020 17:14:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tMCgiPFLpRiU; Sun,  9 Feb 2020 17:14:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B72E8486F;
	Sun,  9 Feb 2020 17:14:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BE5741BF3A3
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 17:14:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BADE1203E0
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 17:14:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ikl1OD-yf258 for <devel@linuxdriverproject.org>;
 Sun,  9 Feb 2020 17:14:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by silver.osuosl.org (Postfix) with ESMTPS id BD4A220109
 for <devel@driverdev.osuosl.org>; Sun,  9 Feb 2020 17:14:48 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id ep11so3125517pjb.2
 for <devel@driverdev.osuosl.org>; Sun, 09 Feb 2020 09:14:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DM5IK0DECKxUrASVycyGmFhL+Y5jkj05TGZSDzLZlAw=;
 b=hFsOM/4KNJNbuM2fyLAO2zsm6P72skJDUudaxwQkYJ30UvQRtF3rdUYLcZ7FsU+Jl4
 fd2ouUWqFHSFSD+eIr+Yz0AcJepE7/x7cppSbVT/Rlg60vkZqG/oS0W6rjNMf6G/wdrl
 Pt1bFB9Zpq0VahUI+C33yPmNgtiVkt1bbA52f5JOboIMKxrfMBgMmxes4Mb0LU8XmpKl
 xWEIOieHtQtOT+gy6i7AanLlqux+bG7L6eNyuigPWDZj/C+3cQnJjqa62P3TnFmhlEFN
 5duSab27N3GIf9V5tnRVbi/skUQbS3AUMudlFaaaEbMhQs4LVoI1nJOPLwyax6o0W84k
 krvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DM5IK0DECKxUrASVycyGmFhL+Y5jkj05TGZSDzLZlAw=;
 b=CESUGsySJH+tQfmTtOkwRkgSO2ggQkV05binbPY+l75LK+IPnS08BtMrC69KXVf9VP
 6O+6GA5pIKLweSQU5+N3HMtnPLz9Dzgk26uievpzqZL23cknX82frHPzXggshVLpmEnb
 9H9kSM2S28IWeXgSRWuzPQxwNhpZHtrNV/2VTsfv+NKqNOVl8bHSafQvrc540+CeGz2b
 dXz8wkcKiD5WwIRJCcxFbkbujhTrQbBP5Tqh0uwUPg/OEQssPa7Fg+nCfmYlv4eeTSTL
 LTNSOIn2gkKuJZQwtCdqTa39YjQPLO0fcpHuzQ2Ynsf5+IMbDYyL6N8FIKSQPJDZU3LT
 ++iw==
X-Gm-Message-State: APjAAAXhSzDZd7ls0g2DudcEqgvuPelFTaxrhXUf5ysBhHUvipUSgnVB
 CjQHpvC7VRiyp0ZnJuo64gM=
X-Google-Smtp-Source: APXvYqwoMABm+6xETYfKXdtttba+JXWqTZK6qPOzFn/8bDHq1WTEHXVY7EmGdRjPDHUz+8uxnUK8zw==
X-Received: by 2002:a17:902:6bcb:: with SMTP id
 m11mr9373043plt.10.1581268488364; 
 Sun, 09 Feb 2020 09:14:48 -0800 (PST)
Received: from localhost.localdomain ([157.44.204.164])
 by smtp.googlemail.com with ESMTPSA id t66sm9587357pgb.91.2020.02.09.09.14.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Feb 2020 09:14:47 -0800 (PST)
From: Mohana Datta Yelugoti <ymdatta.work@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: qlge: remove spaces at the start of a line
Date: Sun,  9 Feb 2020 22:44:30 +0530
Message-Id: <20200209171431.19907-1-ymdatta.work@gmail.com>
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

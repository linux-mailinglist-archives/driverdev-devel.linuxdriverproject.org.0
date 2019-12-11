Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 210A811BB5D
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:16:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8EBDF87F4A;
	Wed, 11 Dec 2019 18:16:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 30xGvjXkHmZH; Wed, 11 Dec 2019 18:16:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0731D87F19;
	Wed, 11 Dec 2019 18:16:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E2F971BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CF832232D7
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BMGHZc5nTtt4 for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f196.google.com (mail-yb1-f196.google.com
 [209.85.219.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 78B4D20480
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:31 +0000 (UTC)
Received: by mail-yb1-f196.google.com with SMTP id v15so9365774ybp.13
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7I5s5+li3nljC6wHzNrZU5/96VN1MItgnWEWQ5aryAs=;
 b=BXqmIn6QWMFzu9Icv3FBMdnPbCtCO8Pr7dD8B5WVKaZrEDpRKgijDdRVLMfEGj8R/H
 N3umMOMWaXKJLjQQdlWwoKeZ1h+2uQbmmS87zBKv4SPtWdd9gPxdhkehxXWwefypiChV
 VygcHtk1fIbkdFEfDQqhKulxyXhr+BD7nTR5uYB9GcRstSe2EfsCq1rSVyYYUz8w0vFH
 ZY2hdqADYlJubFp0VqTGgvP+E9xiuUo+EKTSP8dlKBAYGVERqbDBNzpXlMUR7HE/EmkV
 eh1CWeHmf0B0pRYmiNyxAbMvE86K22mL9cbzK5VIhf70iPW/WrgS9W+jIqGzfZWp73oc
 MDnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7I5s5+li3nljC6wHzNrZU5/96VN1MItgnWEWQ5aryAs=;
 b=J2+Hsn7XIS691QFmhK3Wq/XNZdv8f5QxnH3IiYQmEUhf5JR9LAzgiglyAGBlDCwxM1
 vyWLyIXhl369O3ACyTG/ibBPtgpyX6liu7XHEuh3zk7MAkqg3qZ7l8pLjRGZWVSn6E+W
 rDVmoNhz2gotWdS6Tmcf3vYaCK4YMcehlAaViFZ4NpQwVsZSIuaJxukzUIjLxe5VaZd0
 vvp+bBZR41hwfudUZ/GTLICQHy8LkyIe0EmH7I23is2OQ0/HnNDPFUFzZAwSd/tveU8r
 oBRBH7rj1ONwuJNt5VHWQ7zb7TnPOhjnQ+hRglV8DU9UB3yha9BT3awS1TuEoevny5qt
 siKw==
X-Gm-Message-State: APjAAAUr0yMofJGS22wrXAkaEWXCCH/GHzheleNNX2PIn5eJu1vL08At
 5GHW2w9UepBuzbacSwLEJPI=
X-Google-Smtp-Source: APXvYqzBFRSNG5mzR+KkwQKgqdVGULRwVYx8jwhLm9wpLnTj0bYFm/rzRSDf70+CI8mUtOJfZYrL7Q==
X-Received: by 2002:a25:b90b:: with SMTP id x11mr932114ybj.209.1576088130443; 
 Wed, 11 Dec 2019 10:15:30 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id l39sm1361403ywk.36.2019.12.11.10.15.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:30 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 17/23] staging: qlge: Fix WARNING: else is not generally
 useful after a break or return
Date: Wed, 11 Dec 2019 12:12:46 -0600
Message-Id: <5ddcdb4a507b29a8e2824e0839cc10f77f3cb7e5.1576086080.git.schaferjscott@gmail.com>
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

Fix WARNING: else is not generally useful after a break or return in,
qlge_dbg.c, qlge_main.c, and qlge_mpi.c

Moved everything out of the else block wothout changing any logic

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c  | 23 ++++++++++-------------
 drivers/staging/qlge/qlge_main.c | 10 ++++------
 drivers/staging/qlge/qlge_mpi.c  | 13 +++++--------
 3 files changed, 19 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 3324f0650286..0f1e1b62662d 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1409,12 +1409,11 @@ static void ql_dump_cam_entries(struct ql_adapter *qdev)
 			pr_err("%s: Failed read of mac index register\n",
 			       __func__);
 			return;
-		} else {
-			if (value[0])
-				pr_err("%s: CAM index %d CAM Lookup Lower = 0x%.08x:%.08x, Output = 0x%.08x\n",
-				       qdev->ndev->name, i, value[1], value[0],
-				       value[2]);
 		}
+		if (value[0])
+			pr_err("%s: CAM index %d CAM Lookup Lower = 0x%.08x:%.08x, Output = 0x%.08x\n",
+			       qdev->ndev->name, i, value[1], value[0],
+			       value[2]);
 	}
 	for (i = 0; i < 32; i++) {
 		if (ql_get_mac_addr_reg
@@ -1422,11 +1421,10 @@ static void ql_dump_cam_entries(struct ql_adapter *qdev)
 			pr_err("%s: Failed read of mac index register\n",
 			       __func__);
 			return;
-		} else {
-			if (value[0])
-				pr_err("%s: MCAST index %d CAM Lookup Lower = 0x%.08x:%.08x\n",
-				       qdev->ndev->name, i, value[1], value[0]);
 		}
+		if (value[0])
+			pr_err("%s: MCAST index %d CAM Lookup Lower = 0x%.08x:%.08x\n",
+			       qdev->ndev->name, i, value[1], value[0]);
 	}
 	ql_sem_unlock(qdev, SEM_MAC_ADDR_MASK);
 }
@@ -1445,11 +1443,10 @@ void ql_dump_routing_entries(struct ql_adapter *qdev)
 			pr_err("%s: Failed read of routing index register\n",
 			       __func__);
 			return;
-		} else {
-			if (value)
-				pr_err("%s: Routing Mask %d = 0x%.08x\n",
-				       qdev->ndev->name, i, value);
 		}
+		if (value)
+			pr_err("%s: Routing Mask %d = 0x%.08x\n",
+			       qdev->ndev->name, i, value);
 	}
 	ql_sem_unlock(qdev, SEM_RT_IDX_MASK);
 }
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 90509fd1d95c..c6e26a757268 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3788,14 +3788,12 @@ static int ql_wol(struct ql_adapter *qdev)
 				  "Failed to set magic packet on %s.\n",
 				  qdev->ndev->name);
 			return status;
-		} else
-			netif_info(qdev, drv, qdev->ndev,
-				   "Enabled magic packet successfully on %s.\n",
-				   qdev->ndev->name);
-
+		}
+		netif_info(qdev, drv, qdev->ndev,
+			   "Enabled magic packet successfully on %s.\n",
+			   qdev->ndev->name);
 		wol |= MB_WOL_MAGIC_PKT;
 	}
-
 	if (qdev->wol) {
 		wol |= MB_WOL_MODE_ON;
 		status = ql_mb_wol_mode(qdev, wol);
diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 15c97c935618..ba8ce3506a59 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -278,9 +278,8 @@ static void ql_link_up(struct ql_adapter *qdev, struct mbox_params *mbcp)
 			netif_err(qdev, ifup, qdev->ndev,
 				  "Failed to init CAM/Routing tables.\n");
 			return;
-		} else {
-			clear_bit(QL_CAM_RT_SET, &qdev->flags);
 		}
+		clear_bit(QL_CAM_RT_SET, &qdev->flags);
 	}
 
 	/* Queue up a worker to check the frame
@@ -940,13 +939,11 @@ static int ql_idc_wait(struct ql_adapter *qdev)
 			netif_err(qdev, drv, qdev->ndev, "IDC Success.\n");
 			status = 0;
 			break;
-		} else {
-			netif_err(qdev, drv, qdev->ndev,
-				  "IDC: Invalid State 0x%.04x.\n",
-				  mbcp->mbox_out[0]);
-			status = -EIO;
-			break;
 		}
+		netif_err(qdev, drv, qdev->ndev,
+			  "IDC: Invalid State 0x%.04x.\n", mbcp->mbox_out[0]);
+		status = -EIO;
+		break;
 	} while (wait_time);
 
 	return status;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

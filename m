Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCE820C28C
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 16:59:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BA9CF214D2;
	Sat, 27 Jun 2020 14:59:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q2U+Hg-XHNeU; Sat, 27 Jun 2020 14:59:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E0D122094E;
	Sat, 27 Jun 2020 14:59:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 05A731BF20D
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 14:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 021A188798
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 14:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A0UmN56Gjgpu for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 14:59:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1AD7388726
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 14:59:17 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id g17so5377500plq.12
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 07:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=chesPouUZaMid4bYSr3ZV53BHmtt8IXHr4Z/luYFot0=;
 b=nrJykvv5dQCy9VkIa3fSoyXmFptDPtXHEVFo7qRNA2v0EaMSOE2GnZtMUP2/hvKPbm
 KMQDOH2M4s4UX74jf2MeEQFfUQ/JeS2VUU5EtdZM0glgrnp64DjWIxX958eIlnCBnncB
 luqZ4dvQaMK1fsp6GbjGmrOEGtNs02e8HGmNxnOxzX4g3Twh9ttEVn5YVxN2k3wST+XW
 2J5kVRCMv0AzuyLwZ/BksnrfPGto3hs9odnviFnHpmIJE6PEpcbXBLZPziu14ti3tmmm
 xtnwbbEw9L3F2RzLlqgUvtEj3mIA/51BJr1grE9agmkzdyBVEe/EJJX0EXDeyhgAb9u5
 Eiew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=chesPouUZaMid4bYSr3ZV53BHmtt8IXHr4Z/luYFot0=;
 b=mlWXhRKirlonOlWokAU0Oz1cYjccwNbuRLBDjjLwj8Ihz+tH5s02rUZTy6wzqvdsH1
 ILsQxpzBajG3Obt77cuWHJeFaXvLI2GTziEMR2WozF7D4iYx4EiKIfduc/pfLY0WpVlh
 9kGKL0/qJFMn2PpfvXvp61aoYxcCvhFoE/s4gNVQ5ldfJBRaa+IlTedBQIFhclysyWuG
 QKzJ/kHv/nYl+9Wp7Zz4S7963esLdLIOfP98agTMVga/xrgbXeqNc9ZMfHPOhNYjW6BN
 /O/9IxFvLhx2ZV6tkSMiRT4ZJC+AnH3Ds0y3aY0NKDXLp4Hw7SZD4zhVpw0QbrXpvRFg
 LDSQ==
X-Gm-Message-State: AOAM530Yd5/FZSe7N2pLNeR1PPXAcliog4QxEXYyOICBL36SHrPIZjQa
 a4heUOiWzzax133EaNn327So+mNm84q2V29B
X-Google-Smtp-Source: ABdhPJwR75dTLHgeGYWcFmTUSTdNqrjXkJOQFaFvHKZuNS4t0epDw8LKWj8+wSNK9lFPtzbJeWmvrg==
X-Received: by 2002:a17:902:8546:: with SMTP id
 d6mr6942743plo.220.1593269956440; 
 Sat, 27 Jun 2020 07:59:16 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id i125sm25063375pgd.21.2020.06.27.07.59.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 07:59:16 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 2/4] staging: qlge: fix else after return or break
Date: Sat, 27 Jun 2020 22:58:55 +0800
Message-Id: <20200627145857.15926-3-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200627145857.15926-1-coiby.xu@gmail.com>
References: <20200627145857.15926-1-coiby.xu@gmail.com>
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
Cc: "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 gregkh@linuxfoundation.org, open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 joe@perches.com, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary elses after return or break.

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c  | 23 ++++++++++-------------
 drivers/staging/qlge/qlge_main.c |  8 ++++----
 drivers/staging/qlge/qlge_mpi.c  |  4 ++--
 3 files changed, 16 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 058889687907..87433510a224 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1391,12 +1391,11 @@ static void ql_dump_cam_entries(struct ql_adapter *qdev)
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
@@ -1404,11 +1403,10 @@ static void ql_dump_cam_entries(struct ql_adapter *qdev)
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
@@ -1427,11 +1425,10 @@ void ql_dump_routing_entries(struct ql_adapter *qdev)
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
index aaecf2b0f9a1..0054c454506b 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3778,10 +3778,10 @@ static int ql_wol(struct ql_adapter *qdev)
 				  "Failed to set magic packet on %s.\n",
 				  qdev->ndev->name);
 			return status;
-		} else
-			netif_info(qdev, drv, qdev->ndev,
-				   "Enabled magic packet successfully on %s.\n",
-				   qdev->ndev->name);
+		}
+		netif_info(qdev, drv, qdev->ndev,
+			   "Enabled magic packet successfully on %s.\n",
+			   qdev->ndev->name);

 		wol |= MB_WOL_MAGIC_PKT;
 	}
diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 3bb08d290525..fa178fc642a6 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -276,8 +276,8 @@ static void ql_link_up(struct ql_adapter *qdev, struct mbox_params *mbcp)
 			netif_err(qdev, ifup, qdev->ndev,
 				  "Failed to init CAM/Routing tables.\n");
 			return;
-		} else
-			clear_bit(QL_CAM_RT_SET, &qdev->flags);
+		}
+		clear_bit(QL_CAM_RT_SET, &qdev->flags);
 	}

 	/* Queue up a worker to check the frame
--
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

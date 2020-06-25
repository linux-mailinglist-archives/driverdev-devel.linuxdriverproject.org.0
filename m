Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D8820A7E3
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 23:58:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B09286DF8;
	Thu, 25 Jun 2020 21:58:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rC6_Kb77pEnn; Thu, 25 Jun 2020 21:58:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E2FF585AB5;
	Thu, 25 Jun 2020 21:58:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D2D5F1BF599
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 21:58:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA8E788236
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 21:58:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3O5JkKIrNvnJ for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 21:58:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AC17F88241
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 21:58:12 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id m2so3978466pjv.2
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 14:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=chesPouUZaMid4bYSr3ZV53BHmtt8IXHr4Z/luYFot0=;
 b=LuDcozJVGWZf2PPstxMq8byipniyQ1t3gGR7PzYjpfp4u6Nxn93t9kYEH07pOzGgVR
 ibwv2hoJ9dsmTvUgzQT9T+nafHvBNwAZoUpvQnzhwJ4Xyu7FSg+BMrBVJB0EK2Km3RxW
 3SQhQYdwUXyXe3iFTohWKqu6h6iP1T5eqNhNLdChrqWV1noBDGP1dEFjBou6LLXu/WdN
 wFkhuu5krNhGGBNIb9IoBX/Bl1i8BcrovlztDsupMRHdMVDeES8WzTnFtOGJDPbZKmVu
 TKxb6q2kbkaYW8ixBRNnvUK0JwXriNv4KIIqxWJooh7QO5aPY7TgDlRqgYTTihvCSZ6k
 bnvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=chesPouUZaMid4bYSr3ZV53BHmtt8IXHr4Z/luYFot0=;
 b=eBxl+vh/5XBJT2CIbgI5aa47nR8KzBqh7LhONtaP+vnKXKV86/SATduAOmFDDi8LOz
 8jcuN4VjwRx6nfcT8WvLcZMMOdIRH7q2QHxcSspVPYSFYDDFSq4AyeM1w32H2UOCKfyS
 saP0hk7SQ5k9vue8inj3RHfdZ4IFsgl4Xc4id1FZm/XrZ3wwvgSZvO8B4pZoGPmer5fh
 AT+KK2JZfYAGZ/zpSwl6hNBTUlXWaEGoDutms+AF/qfjokVRbvhS44W6YPdOZRXGt/Zu
 qN8vckEObha4rfQ6xkOqd841PR/JqrVdQMYhRmZ8gF3e9kYn607QzXkW3ZE5avueAdsx
 nBpA==
X-Gm-Message-State: AOAM530Bkog5bpmaP9yOGJzf/VivQ80dXOUWK2GFnxEvPI+jh/qcTYeR
 RyET2T/k8ojnguot6TNf9Rb5GU49uT9TtA==
X-Google-Smtp-Source: ABdhPJysTnii06o5O6nWMHrrsXvWoqh0pl9EuBuE56Z795qID84QiM0QF0K3yjm6XNGTrPkrTSUtfA==
X-Received: by 2002:a17:90a:c797:: with SMTP id
 gn23mr29614pjb.165.1593122292080; 
 Thu, 25 Jun 2020 14:58:12 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id p8sm20896840pgs.29.2020.06.25.14.58.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 14:58:11 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH 2/2] staging: qlge: fix else after return or break
Date: Fri, 26 Jun 2020 05:57:55 +0800
Message-Id: <20200625215755.70329-3-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200625215755.70329-1-coiby.xu@gmail.com>
References: <20200625215755.70329-1-coiby.xu@gmail.com>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, open list <linux-kernel@vger.kernel.org>,
 Manish Chopra <manishc@marvell.com>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
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

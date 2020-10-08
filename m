Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C212873B1
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Oct 2020 13:58:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6337D86C1D;
	Thu,  8 Oct 2020 11:58:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zhwmNN-Mirhg; Thu,  8 Oct 2020 11:58:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCDD886427;
	Thu,  8 Oct 2020 11:58:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F06F51BF9B5
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 11:58:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E784D272DE
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 11:58:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w0CujPR1rsJE for <devel@linuxdriverproject.org>;
 Thu,  8 Oct 2020 11:58:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 7C55A20414
 for <devel@driverdev.osuosl.org>; Thu,  8 Oct 2020 11:58:37 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id b193so3198900pga.6
 for <devel@driverdev.osuosl.org>; Thu, 08 Oct 2020 04:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bEAelpRiHustXW5V3YshgfU8vMjoeMB0xcSYBIrSiOg=;
 b=BVL0iDFtsgfWa+kE5fCunUorX2j2hf1QwPHlaCuiw2u86+MkANg93O5MEEKOpngNMx
 eThiEwVHhIIv6FnGZJGX7Lvvb0k+WdkejwQEyJ49xauJ8FxF+wj8/yZm+i/HxB+bemxd
 /T7+iqgkEPZK86JmJPMLLxN8xIrz6+5V34jv8DLgzXy8v183ZCWOOftuiwiyFjK4h6LQ
 +W59U2gWBQkrHVhltLCpPojAhfyuZAOuM1XZPQ5OW3O272oVCr7JnmZTaxFmtdmvRoxO
 Ks9o4tqD50uwvSF2B23J3No9l8IlgN2vmDPX+UoDUEykH/HPjhf9FVV6EmaT+IL+K3LN
 aIqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bEAelpRiHustXW5V3YshgfU8vMjoeMB0xcSYBIrSiOg=;
 b=O8q7tEejfOuXLykCYGbn8FrqIzxZcbkZqvgzjIwP6JobVNAUL1ywypCOABtqe+qUbK
 kfGv/gCveRo0lzbJYeLU1eL0NE40dqoHL0zyjX4x0+P5Cakg87j0OkZC7JC3uGc/0X/g
 mfVPSUC57VthjPLOWdoclVWc6QzNmSuvSEHiaO9nyNFN9qn008zOoNKEs1fxBpBfi1lV
 +PMCZIdhIn8CPHI2BRBTZCC8kLzvfYjGe/yoV7t+RgLtWmuv28MyQH5L5mlegSjGvlbA
 MZocscMdLkZmM+d+mUVkXrZlTVdEB238OUQkZM95PClp9FgrZyDOjiaI+CQvDaf8F5yp
 pscw==
X-Gm-Message-State: AOAM532jGR4L0OusyZgJfuXgMmcoYYbqwQ9V68K8q0thrpp4NJ6BZnVN
 dbTze3tTiZVhgID/fB/b3hl+Z8c2kCNppA==
X-Google-Smtp-Source: ABdhPJy4Od0Fv6yQ29AYh31ZIu42PWrymIyFirG6WqS8uxAyU1pjzv/mgVkI4lZehCq2L3HjZPOYQA==
X-Received: by 2002:a17:90a:8007:: with SMTP id
 b7mr7815533pjn.84.1602158316881; 
 Thu, 08 Oct 2020 04:58:36 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id a9sm7151206pjm.40.2020.10.08.04.58.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 04:58:36 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v1 4/6] staging: qlge: remove mpi_core_to_log which sends
 coredump to the kernel ring buffer
Date: Thu,  8 Oct 2020 19:58:06 +0800
Message-Id: <20201008115808.91850-5-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201008115808.91850-1-coiby.xu@gmail.com>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
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
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 Benjamin Poirier <benjamin.poirier@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

devlink health could be used to get coredump. No need to send so much
data to the kernel ring buffer.

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/qlge/qlge.h         |  3 ---
 drivers/staging/qlge/qlge_dbg.c     | 11 -----------
 drivers/staging/qlge/qlge_ethtool.c |  1 -
 drivers/staging/qlge/qlge_main.c    |  2 --
 drivers/staging/qlge/qlge_mpi.c     |  6 ------
 5 files changed, 23 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 290e754450c5..0a39801be15a 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -2149,7 +2149,6 @@ struct ql_adapter {
 	u32 port_init;
 	u32 link_status;
 	struct ql_mpi_coredump *mpi_coredump;
-	u32 core_is_dumped;
 	u32 link_config;
 	u32 led_config;
 	u32 max_frame_size;
@@ -2162,7 +2161,6 @@ struct ql_adapter {
 	struct delayed_work mpi_work;
 	struct delayed_work mpi_port_cfg_work;
 	struct delayed_work mpi_idc_work;
-	struct delayed_work mpi_core_to_log;
 	struct completion ide_completion;
 	const struct nic_operations *nic_ops;
 	u16 device_id;
@@ -2253,7 +2251,6 @@ int ql_write_cfg(struct ql_adapter *qdev, void *ptr, int size, u32 bit,
 void ql_queue_fw_error(struct ql_adapter *qdev);
 void ql_mpi_work(struct work_struct *work);
 void ql_mpi_reset_work(struct work_struct *work);
-void ql_mpi_core_to_log(struct work_struct *work);
 int ql_wait_reg_rdy(struct ql_adapter *qdev, u32 reg, u32 bit, u32 ebit);
 void ql_queue_asic_error(struct ql_adapter *qdev);
 void ql_set_ethtool_ops(struct net_device *ndev);
diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 42fd13990f3a..989575743718 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1314,17 +1314,6 @@ void ql_get_dump(struct ql_adapter *qdev, void *buff)
 	}
 }
 
-/* Coredump to messages log file using separate worker thread */
-void ql_mpi_core_to_log(struct work_struct *work)
-{
-	struct ql_adapter *qdev =
-		container_of(work, struct ql_adapter, mpi_core_to_log.work);
-
-	print_hex_dump(KERN_DEBUG, "Core is dumping to log file!\n",
-		       DUMP_PREFIX_OFFSET, 32, 4, qdev->mpi_coredump,
-		       sizeof(*qdev->mpi_coredump), false);
-}
-
 #ifdef QL_REG_DUMP
 static void ql_dump_intr_states(struct ql_adapter *qdev)
 {
diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
index d44b2dae9213..eed116d8895e 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -616,7 +616,6 @@ static void ql_get_regs(struct net_device *ndev,
 	struct ql_adapter *qdev = netdev_priv(ndev);
 
 	ql_get_dump(qdev, p);
-	qdev->core_is_dumped = 0;
 	if (!test_bit(QL_FRC_COREDUMP, &qdev->flags))
 		regs->len = sizeof(struct ql_mpi_coredump);
 	else
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 135225530e51..aaca740d46c4 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3808,7 +3808,6 @@ static void ql_cancel_all_work_sync(struct ql_adapter *qdev)
 	cancel_delayed_work_sync(&qdev->mpi_reset_work);
 	cancel_delayed_work_sync(&qdev->mpi_work);
 	cancel_delayed_work_sync(&qdev->mpi_idc_work);
-	cancel_delayed_work_sync(&qdev->mpi_core_to_log);
 	cancel_delayed_work_sync(&qdev->mpi_port_cfg_work);
 }
 
@@ -4504,7 +4503,6 @@ static int ql_init_device(struct pci_dev *pdev, struct net_device *ndev,
 	INIT_DELAYED_WORK(&qdev->mpi_work, ql_mpi_work);
 	INIT_DELAYED_WORK(&qdev->mpi_port_cfg_work, ql_mpi_port_cfg_work);
 	INIT_DELAYED_WORK(&qdev->mpi_idc_work, ql_mpi_idc_work);
-	INIT_DELAYED_WORK(&qdev->mpi_core_to_log, ql_mpi_core_to_log);
 	init_completion(&qdev->ide_completion);
 	mutex_init(&qdev->mpi_mutex);
 
diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 143a886080c5..1cea24201b17 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -1269,11 +1269,5 @@ void ql_mpi_reset_work(struct work_struct *work)
 		return;
 	}
 
-	if (qdev->mpi_coredump && !ql_core_dump(qdev, qdev->mpi_coredump)) {
-		netif_err(qdev, drv, qdev->ndev, "Core is dumped!\n");
-		qdev->core_is_dumped = 1;
-		queue_delayed_work(qdev->workqueue,
-				   &qdev->mpi_core_to_log, 5 * HZ);
-	}
 	ql_soft_reset_mpi_risc(qdev);
 }
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

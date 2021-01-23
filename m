Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5361A3014AA
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Jan 2021 11:48:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B98E220366;
	Sat, 23 Jan 2021 10:48:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UkUWXihTf3Kc; Sat, 23 Jan 2021 10:48:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BACF821503;
	Sat, 23 Jan 2021 10:48:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 56E0B1BF3BE
 for <devel@linuxdriverproject.org>; Sat, 23 Jan 2021 10:48:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4A5FD2E130
 for <devel@linuxdriverproject.org>; Sat, 23 Jan 2021 10:48:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6MFhnd0Lrn9L for <devel@linuxdriverproject.org>;
 Sat, 23 Jan 2021 10:48:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by silver.osuosl.org (Postfix) with ESMTPS id F08762E148
 for <devel@driverdev.osuosl.org>; Sat, 23 Jan 2021 10:47:06 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id p15so5391781pjv.3
 for <devel@driverdev.osuosl.org>; Sat, 23 Jan 2021 02:47:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+AmPEXwIiB+uugj0MxQAB8yW2MVRBI9hgsxUhjQau5s=;
 b=Kll+Vbrz7tnxkbIhVLJcZynFodH+Nth+05VuBrNpayr/reDVUrPtqo6mmtPHVUl8ee
 MPjXSS9sHT8SKHTsddGyQomw0b9sMfLKXC5XWzsCJOuG8DK/WSgTU8bU05OjIwKJLYYu
 gZ53w0nFrMRDucCEPOUeEoLKrI6GNVMsb+eyu7m9ZQ+ueE8J7KkP3BQKmdcKM8kh+fZb
 K3jAWLaTZco92qplU4an+Wzerpw8Hvxs791o4yNEYwFidE0l2fzfmqIx0aDSItGsjDq5
 ByTUO+WIUNycLMyssLlpO4S0lmJt3R4+zANJS9uCRUv/NeEiOFF5LX8kTdUY+Ku6TR14
 PJkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+AmPEXwIiB+uugj0MxQAB8yW2MVRBI9hgsxUhjQau5s=;
 b=Ygp3AvAeVK6ksr2zX1mie4BKYencFDHXOE9k3WFe8slwW/gOF8OCHHiuOZQayZ3NMK
 o3RBZC6f1RH1BPEDd5D3tC23C3upKmkprdqHfzjGE/b+bQXl7wxn/Ir+bZ1x9up6ihsD
 RH67qxcT8eA1+DXWmOG/jUVxO3HN8Ws+bBArmvRqB5W8fdsq+8zu9WQzac40SkdluV+z
 XyXAPhq/UtrcwwNPB76oLqSSNy3MHQ+EuQJHxRBr0Mzy7n6ShAOIIL9AiIQ4FFr7yidY
 XN9G9bf8+J0thLaiC1ResrcKFctiDE/rNS9WYX6vGdoaWAj/SD/mJXpNa7YM00yIzUIO
 1DJw==
X-Gm-Message-State: AOAM531XjMr//m7oF1WChwzMY1obK4LL5ZEIEfoN5jG4dy0VmiWCZM+F
 eDHi01ByNmxrBOuD9aehIVZqw/qa9wkpV7xI
X-Google-Smtp-Source: ABdhPJxVcC54k3Xt0AI9TMzz5co+Z3Rr5qlomECK2pD4BAE1VvIsMiD3iBOUMpui4ZO/QjFEOiR5gA==
X-Received: by 2002:a17:90a:4a84:: with SMTP id
 f4mr10858104pjh.231.1611398826263; 
 Sat, 23 Jan 2021 02:47:06 -0800 (PST)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id b17sm10123768pfp.167.2021.01.23.02.47.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Jan 2021 02:47:05 -0800 (PST)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v4 6/8] staging: qlge: remove mpi_core_to_log which sends
 coredump to the kernel ring buffer
Date: Sat, 23 Jan 2021 18:46:11 +0800
Message-Id: <20210123104613.38359-7-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210123104613.38359-1-coiby.xu@gmail.com>
References: <20210123104613.38359-1-coiby.xu@gmail.com>
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 GR-Linux-NIC-Dev@marvell.com, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 Benjamin Poirier <benjamin.poirier@gmail.com>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

devlink health could be used to get coredump. No need to send so much
data to the kernel ring buffer.

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/qlge/TODO           |  2 --
 drivers/staging/qlge/qlge.h         |  3 ---
 drivers/staging/qlge/qlge_dbg.c     | 11 -----------
 drivers/staging/qlge/qlge_ethtool.c |  1 -
 drivers/staging/qlge/qlge_main.c    |  2 --
 drivers/staging/qlge/qlge_mpi.c     |  6 ------
 6 files changed, 25 deletions(-)

diff --git a/drivers/staging/qlge/TODO b/drivers/staging/qlge/TODO
index 5ac55664c3e2..e68c95f47754 100644
--- a/drivers/staging/qlge/TODO
+++ b/drivers/staging/qlge/TODO
@@ -18,8 +18,6 @@
   of questionable value. In particular, qlge_dbg.c has hundreds of lines of
   code bitrotting away in ifdef land (doesn't compile since commit
   18c49b91777c ("qlge: do vlan cleanup", v3.1-rc1), 8 years ago).
-* triggering an ethtool regdump will hexdump a 176k struct to dmesg depending
-  on some module parameters.
 * the flow control implementation in firmware is buggy (sends a flood of pause
   frames, resets the link, device and driver buffer queues become
   desynchronized), disable it by default
diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 41f69751d34d..aa5721862140 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -2153,7 +2153,6 @@ struct qlge_adapter {
 	u32 port_init;
 	u32 link_status;
 	struct qlge_mpi_coredump *mpi_coredump;
-	u32 core_is_dumped;
 	u32 link_config;
 	u32 led_config;
 	u32 max_frame_size;
@@ -2166,7 +2165,6 @@ struct qlge_adapter {
 	struct delayed_work mpi_work;
 	struct delayed_work mpi_port_cfg_work;
 	struct delayed_work mpi_idc_work;
-	struct delayed_work mpi_core_to_log;
 	struct completion ide_completion;
 	const struct nic_operations *nic_ops;
 	u16 device_id;
@@ -2257,7 +2255,6 @@ int qlge_write_cfg(struct qlge_adapter *qdev, void *ptr, int size, u32 bit,
 void qlge_queue_fw_error(struct qlge_adapter *qdev);
 void qlge_mpi_work(struct work_struct *work);
 void qlge_mpi_reset_work(struct work_struct *work);
-void qlge_mpi_core_to_log(struct work_struct *work);
 int qlge_wait_reg_rdy(struct qlge_adapter *qdev, u32 reg, u32 bit, u32 ebit);
 void qlge_queue_asic_error(struct qlge_adapter *qdev);
 void qlge_set_ethtool_ops(struct net_device *ndev);
diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index b0d4ea071f32..5c64d6de3b30 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1313,17 +1313,6 @@ void qlge_get_dump(struct qlge_adapter *qdev, void *buff)
 	}
 }
 
-/* Coredump to messages log file using separate worker thread */
-void qlge_mpi_core_to_log(struct work_struct *work)
-{
-	struct qlge_adapter *qdev =
-		container_of(work, struct qlge_adapter, mpi_core_to_log.work);
-
-	print_hex_dump(KERN_DEBUG, "Core is dumping to log file!\n",
-		       DUMP_PREFIX_OFFSET, 32, 4, qdev->mpi_coredump,
-		       sizeof(*qdev->mpi_coredump), false);
-}
-
 #ifdef QL_REG_DUMP
 static void qlge_dump_intr_states(struct qlge_adapter *qdev)
 {
diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
index 24b079523d5c..3e911f147dfc 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -617,7 +617,6 @@ static void qlge_get_regs(struct net_device *ndev,
 	struct qlge_adapter *qdev = netdev_to_qdev(ndev);
 
 	qlge_get_dump(qdev, p);
-	qdev->core_is_dumped = 0;
 	if (!test_bit(QL_FRC_COREDUMP, &qdev->flags))
 		regs->len = sizeof(struct qlge_mpi_coredump);
 	else
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 2ec688d3d946..747dbb54dde4 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3800,7 +3800,6 @@ static void qlge_cancel_all_work_sync(struct qlge_adapter *qdev)
 	cancel_delayed_work_sync(&qdev->mpi_reset_work);
 	cancel_delayed_work_sync(&qdev->mpi_work);
 	cancel_delayed_work_sync(&qdev->mpi_idc_work);
-	cancel_delayed_work_sync(&qdev->mpi_core_to_log);
 	cancel_delayed_work_sync(&qdev->mpi_port_cfg_work);
 }
 
@@ -4493,7 +4492,6 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 	INIT_DELAYED_WORK(&qdev->mpi_work, qlge_mpi_work);
 	INIT_DELAYED_WORK(&qdev->mpi_port_cfg_work, qlge_mpi_port_cfg_work);
 	INIT_DELAYED_WORK(&qdev->mpi_idc_work, qlge_mpi_idc_work);
-	INIT_DELAYED_WORK(&qdev->mpi_core_to_log, qlge_mpi_core_to_log);
 	init_completion(&qdev->ide_completion);
 	mutex_init(&qdev->mpi_mutex);
 
diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 2b77995ec76c..2630ebf50341 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -1269,11 +1269,5 @@ void qlge_mpi_reset_work(struct work_struct *work)
 		return;
 	}
 
-	if (qdev->mpi_coredump && !qlge_core_dump(qdev, qdev->mpi_coredump)) {
-		netif_err(qdev, drv, qdev->ndev, "Core is dumped!\n");
-		qdev->core_is_dumped = 1;
-		queue_delayed_work(qdev->workqueue,
-				   &qdev->mpi_core_to_log, 5 * HZ);
-	}
 	qlge_soft_reset_mpi_risc(qdev);
 }
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

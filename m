Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4127B28DF41
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Oct 2020 12:44:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E147E87D13;
	Wed, 14 Oct 2020 10:44:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HXbppKR8FWQy; Wed, 14 Oct 2020 10:44:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5282F87C71;
	Wed, 14 Oct 2020 10:44:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A24431BF575
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 10:44:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 89D422E275
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 10:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jEqEueNNyHJv for <devel@linuxdriverproject.org>;
 Wed, 14 Oct 2020 10:43:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by silver.osuosl.org (Postfix) with ESMTPS id CF0D02E274
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 10:43:45 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id a17so1313267pju.1
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 03:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=io8dYVV8o/9BBa1Bb2S9rfHPq1dNukfr4GmY8jQfTbU=;
 b=Nb+zcFKFoWmIMbnrw24DsxQ3jpMNoQFsjt/TSfa3QrQX8fBRHcBfdCk/WfyOxlP/cf
 2kWQipnAYVuyVBWD9NAQ2RcLh+E7qfJbJMQcwFeaIa6w60Aqtt5ArQDmt62rHt9YOGJU
 0mgoxqH1Uz7Ybk/CNfU57KoTfKCvDWz6dGrv4MvHNFidVve5XjfHF2I4jGmZNQgpuwgR
 2lwW/Q+I6LwG4pZPra89Zrs7i5iuhcrd2Wm8bI6xCTR5sMlsnhLlRzgBL3v5ZLoHAFlZ
 Rn+/q/oyXyUnWQnlPAOdkUdwq6dr/M7BVJxBQ/hxjoStxOo5GC8UfzIQ28K0UAz0Vfd+
 sLng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=io8dYVV8o/9BBa1Bb2S9rfHPq1dNukfr4GmY8jQfTbU=;
 b=KkpF7fYY4/USnLDkP+Cd2b0e8NQ38ids6YE4xmyCnXpRkr6/He8D6Ww22R61shsizV
 ufJown8msl8DM+PJKFGXRDi41BbbC8LvFNO4C9tQACXmMoIaKdBDcLxDNK8ZXwqZ0HiZ
 /jC+7IlptNcAhVG4WGamodLJF3Cb3Phc91Rf8j+uGzLeqbnrxX1I0zbbAf5Fik1ZvD8P
 3nn9MwoV+hHtmPKHSgzbciBHcNSSR+AkjPXD8d6rlQS9wu4a2qvpF+mi2PgwePu5aZvj
 sFZ4JkjwOyHI7KoqASLn5Bolrmkwmkjt7AxpzgzwnpS2Eh2Qm/lcuGP+BUCrVuPeoQWn
 Zrtg==
X-Gm-Message-State: AOAM530BlxgMH3rVQ2lbjbVoe8lseUxZh9wYKt7aO6x83TrR9qKQw79M
 nePK0n5JSBnHe/LAW7BQ/3PqrstpfeXBCWfK
X-Google-Smtp-Source: ABdhPJzv5ijukppBpWatGk71YVjrxoqa0mtgAbf9iLow3YWBWioiIhelHC158IAtMNchtKMKM9b8qw==
X-Received: by 2002:a17:90a:e391:: with SMTP id
 b17mr2904389pjz.33.1602672225090; 
 Wed, 14 Oct 2020 03:43:45 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id y22sm1738551pfr.62.2020.10.14.03.43.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Oct 2020 03:43:44 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 5/7] staging: qlge: remove mpi_core_to_log which sends
 coredump to the kernel ring buffer
Date: Wed, 14 Oct 2020 18:43:04 +0800
Message-Id: <20201014104306.63756-6-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014104306.63756-1-coiby.xu@gmail.com>
References: <20201014104306.63756-1-coiby.xu@gmail.com>
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
 "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
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
index 4a48bcc88fbd..5eb5c9a6fb84 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -2145,7 +2145,6 @@ struct qlge_adapter {
 	u32 port_init;
 	u32 link_status;
 	struct qlge_mpi_coredump *mpi_coredump;
-	u32 core_is_dumped;
 	u32 link_config;
 	u32 led_config;
 	u32 max_frame_size;
@@ -2158,7 +2157,6 @@ struct qlge_adapter {
 	struct delayed_work mpi_work;
 	struct delayed_work mpi_port_cfg_work;
 	struct delayed_work mpi_idc_work;
-	struct delayed_work mpi_core_to_log;
 	struct completion ide_completion;
 	const struct nic_operations *nic_ops;
 	u16 device_id;
@@ -2249,7 +2247,6 @@ int qlge_write_cfg(struct qlge_adapter *qdev, void *ptr, int size, u32 bit,
 void qlge_queue_fw_error(struct qlge_adapter *qdev);
 void qlge_mpi_work(struct work_struct *work);
 void qlge_mpi_reset_work(struct work_struct *work);
-void qlge_mpi_core_to_log(struct work_struct *work);
 int qlge_wait_reg_rdy(struct qlge_adapter *qdev, u32 reg, u32 bit, u32 ebit);
 void qlge_queue_asic_error(struct qlge_adapter *qdev);
 void qlge_set_ethtool_ops(struct net_device *ndev);
diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 3d904f15568d..43bc9580da9e 100644
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
index 3e577e1bc27c..c65d58fe159b 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -617,7 +617,6 @@ static void qlge_get_regs(struct net_device *ndev,
 	struct qlge_adapter *qdev = netdev_priv(ndev);
 
 	qlge_get_dump(qdev, p);
-	qdev->core_is_dumped = 0;
 	if (!test_bit(QL_FRC_COREDUMP, &qdev->flags))
 		regs->len = sizeof(struct qlge_mpi_coredump);
 	else
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 7a4bae3c12d0..128dd2fa2d41 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3808,7 +3808,6 @@ static void qlge_cancel_all_work_sync(struct qlge_adapter *qdev)
 	cancel_delayed_work_sync(&qdev->mpi_reset_work);
 	cancel_delayed_work_sync(&qdev->mpi_work);
 	cancel_delayed_work_sync(&qdev->mpi_idc_work);
-	cancel_delayed_work_sync(&qdev->mpi_core_to_log);
 	cancel_delayed_work_sync(&qdev->mpi_port_cfg_work);
 }
 
@@ -4503,7 +4502,6 @@ static int qlge_init_device(struct pci_dev *pdev, struct qlge_adapter *qdev,
 	INIT_DELAYED_WORK(&qdev->mpi_work, qlge_mpi_work);
 	INIT_DELAYED_WORK(&qdev->mpi_port_cfg_work, qlge_mpi_port_cfg_work);
 	INIT_DELAYED_WORK(&qdev->mpi_idc_work, qlge_mpi_idc_work);
-	INIT_DELAYED_WORK(&qdev->mpi_core_to_log, qlge_mpi_core_to_log);
 	init_completion(&qdev->ide_completion);
 	mutex_init(&qdev->mpi_mutex);
 
diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index e67d2f8652a3..7dd9e2de30e5 100644
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
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

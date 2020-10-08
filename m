Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D90FF2873AE
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Oct 2020 13:58:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7989886C59;
	Thu,  8 Oct 2020 11:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xZFkc24L5f-h; Thu,  8 Oct 2020 11:58:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A65DD84E66;
	Thu,  8 Oct 2020 11:58:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 59BB31BF4D5
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 11:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 554248712B
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 11:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OlQYG7zIso2K for <devel@linuxdriverproject.org>;
 Thu,  8 Oct 2020 11:58:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8133D87123
 for <devel@driverdev.osuosl.org>; Thu,  8 Oct 2020 11:58:26 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id h6so4096761pgk.4
 for <devel@driverdev.osuosl.org>; Thu, 08 Oct 2020 04:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=frpVJGSrADc0qf4QOcahuyZ6/84Fj8bNZxACxFn3RQ4=;
 b=g8jm4x6wbGy35dyRV6AKdPZZSFPnwVHTeM7mcMdx5R40sYzE/l5FKVH9PtYAM5hkaG
 2aeIKXjZScyO5YcXTYO5FJXptCEA0HAY5BbCeYaZekMQbHdT/YuIEomnpR92nTO75H/C
 slXKMXaEj5y5fg8mMXKl1soovIzdu0/AnJnhKk2C0vd3nllhzQjUnnclwQLTKq+S8dMN
 Fujdc6fyCg4uOS4cI5h4UlyDJWMGGk178J/p110UDckdWDosN/QcGHN8U0AkDvLnA//n
 RIAmCSVsilfPOdnuh800KtXKpBa8Ntiwh9xtCIs8WIn0HZo2chYCE+f4I/I1MmHPvStH
 VTOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=frpVJGSrADc0qf4QOcahuyZ6/84Fj8bNZxACxFn3RQ4=;
 b=XL4gXmm7KeFhCgMfHhhK//SlBnYmQa9Hv9bGxDnX+HmCLZWFnl2DikEP2bJqMZtdCI
 udQhitQTts8c65uxJN3+EWoTVrDSusGW7PLGuxIpu9vQ8/tYYiub+0636f9oi89IkrYt
 Qxpr0N/EmsNejW+wgbZEC5csTr1JK6wQ8sCVojdyMorchFXze3hKfmPahSvP2C8DZz2j
 zuUd16njNbrheNY4a3fSHS3p1/ZMiWKpsJwkvWvSx2fmmJitkfLiIDhUGf2Ic8HSwxVl
 QDQtcGKVF5ICL/yn9iDblqK4OUa5OP6ui6FFcYdLTv7jtIlocDSt3g+3s+S7pWkQiQ+j
 XXHQ==
X-Gm-Message-State: AOAM533AuYxHlqOYfxJTPdchO9GFNsxm8C1gOb/9kRVOMYBVMsI1e8Qo
 ZZFxagqX3Az/RvSPc2uI9VLuv5c2SYwAqQ==
X-Google-Smtp-Source: ABdhPJykc9dPin9J4WvzqMrHsbMFOV+UMGcrbcTfHEcjT7KC4+bado0v1kTE2x832NSVMvP2FwOYIw==
X-Received: by 2002:a17:90a:e453:: with SMTP id
 jp19mr8152320pjb.34.1602158305838; 
 Thu, 08 Oct 2020 04:58:25 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id k9sm6380537pfc.96.2020.10.08.04.58.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 04:58:25 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v1 1/6] staging: qlge: Initialize devlink health dump
 framework for the dlge driver
Date: Thu,  8 Oct 2020 19:58:03 +0800
Message-Id: <20201008115808.91850-2-coiby.xu@gmail.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 Benjamin Poirier <benjamin.poirier@gmail.com>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Initialize devlink health dump framework for the dlge driver so the
coredump could be done via devlink.

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/qlge/Kconfig        |  1 +
 drivers/staging/qlge/Makefile       |  2 +-
 drivers/staging/qlge/qlge.h         |  9 +++++++
 drivers/staging/qlge/qlge_devlink.c | 38 +++++++++++++++++++++++++++++
 drivers/staging/qlge/qlge_devlink.h |  8 ++++++
 drivers/staging/qlge/qlge_main.c    | 28 +++++++++++++++++++++
 6 files changed, 85 insertions(+), 1 deletion(-)
 create mode 100644 drivers/staging/qlge/qlge_devlink.c
 create mode 100644 drivers/staging/qlge/qlge_devlink.h

diff --git a/drivers/staging/qlge/Kconfig b/drivers/staging/qlge/Kconfig
index a3cb25a3ab80..6d831ed67965 100644
--- a/drivers/staging/qlge/Kconfig
+++ b/drivers/staging/qlge/Kconfig
@@ -3,6 +3,7 @@
 config QLGE
 	tristate "QLogic QLGE 10Gb Ethernet Driver Support"
 	depends on ETHERNET && PCI
+	select NET_DEVLINK
 	help
 	This driver supports QLogic ISP8XXX 10Gb Ethernet cards.
 
diff --git a/drivers/staging/qlge/Makefile b/drivers/staging/qlge/Makefile
index 1dc2568e820c..07c1898a512e 100644
--- a/drivers/staging/qlge/Makefile
+++ b/drivers/staging/qlge/Makefile
@@ -5,4 +5,4 @@
 
 obj-$(CONFIG_QLGE) += qlge.o
 
-qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o
+qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o qlge_devlink.o
diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index b295990e361b..290e754450c5 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -2060,6 +2060,14 @@ struct nic_operations {
 	int (*port_initialize)(struct ql_adapter *qdev);
 };
 
+
+
+struct qlge_devlink {
+        struct ql_adapter *qdev;
+        struct net_device *ndev;
+        struct devlink_health_reporter *reporter;
+};
+
 /*
  * The main Adapter structure definition.
  * This structure has all fields relevant to the hardware.
@@ -2077,6 +2085,7 @@ struct ql_adapter {
 	struct pci_dev *pdev;
 	struct net_device *ndev;	/* Parent NET device */
 
+	struct qlge_devlink *ql_devlink;
 	/* Hardware information */
 	u32 chip_rev_id;
 	u32 fw_rev_id;
diff --git a/drivers/staging/qlge/qlge_devlink.c b/drivers/staging/qlge/qlge_devlink.c
new file mode 100644
index 000000000000..aa45e7e368c0
--- /dev/null
+++ b/drivers/staging/qlge/qlge_devlink.c
@@ -0,0 +1,38 @@
+#include "qlge.h"
+#include "qlge_devlink.h"
+
+static int
+qlge_reporter_coredump(struct devlink_health_reporter *reporter,
+			struct devlink_fmsg *fmsg, void *priv_ctx,
+			struct netlink_ext_ack *extack)
+{
+	return 0;
+}
+
+static const struct devlink_health_reporter_ops qlge_reporter_ops = {
+		.name = "dummy",
+		.dump = qlge_reporter_coredump,
+};
+
+int qlge_health_create_reporters(struct qlge_devlink *priv)
+{
+	int err;
+
+	struct devlink_health_reporter *reporter;
+	struct devlink *devlink;
+
+	devlink = priv_to_devlink(priv);
+	reporter =
+		devlink_health_reporter_create(devlink, &qlge_reporter_ops,
+					       0,
+					       priv);
+	if (IS_ERR(reporter)) {
+		netdev_warn(priv->ndev,
+			    "Failed to create reporter, err = %ld\n",
+			    PTR_ERR(reporter));
+		return PTR_ERR(reporter);
+	}
+	priv->reporter = reporter;
+
+	return err;
+}
diff --git a/drivers/staging/qlge/qlge_devlink.h b/drivers/staging/qlge/qlge_devlink.h
new file mode 100644
index 000000000000..c91f7a29e805
--- /dev/null
+++ b/drivers/staging/qlge/qlge_devlink.h
@@ -0,0 +1,8 @@
+#ifndef QLGE_DEVLINK_H
+#define QLGE_DEVLINK_H
+
+#include <net/devlink.h>
+
+int qlge_health_create_reporters(struct qlge_devlink *priv);
+
+#endif /* QLGE_DEVLINK_H */
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 27da386f9d87..135225530e51 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -42,6 +42,7 @@
 #include <net/ip6_checksum.h>
 
 #include "qlge.h"
+#include "qlge_devlink.h"
 
 char qlge_driver_name[] = DRV_NAME;
 const char qlge_driver_version[] = DRV_VERSION;
@@ -4549,6 +4550,8 @@ static void ql_timer(struct timer_list *t)
 	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 }
 
+static const struct devlink_ops qlge_devlink_ops;
+
 static int qlge_probe(struct pci_dev *pdev,
 		      const struct pci_device_id *pci_entry)
 {
@@ -4556,6 +4559,13 @@ static int qlge_probe(struct pci_dev *pdev,
 	struct ql_adapter *qdev = NULL;
 	static int cards_found;
 	int err = 0;
+	struct devlink *devlink;
+	struct qlge_devlink *ql_devlink;
+
+	devlink = devlink_alloc(&qlge_devlink_ops, sizeof(struct qlge_devlink));
+	if (!devlink)
+		return -ENOMEM;
+	ql_devlink = devlink_priv(devlink);
 
 	ndev = alloc_etherdev_mq(sizeof(struct ql_adapter),
 				 min(MAX_CPUS,
@@ -4614,6 +4624,16 @@ static int qlge_probe(struct pci_dev *pdev,
 		free_netdev(ndev);
 		return err;
 	}
+
+	err = devlink_register(devlink, &pdev->dev);
+	if (err) {
+		goto devlink_free;
+	}
+
+	qlge_health_create_reporters(ql_devlink);
+	ql_devlink->qdev = qdev;
+	ql_devlink->ndev = ndev;
+	qdev->ql_devlink = ql_devlink;
 	/* Start up the timer to trigger EEH if
 	 * the bus goes dead
 	 */
@@ -4624,6 +4644,10 @@ static int qlge_probe(struct pci_dev *pdev,
 	atomic_set(&qdev->lb_count, 0);
 	cards_found++;
 	return 0;
+
+devlink_free:
+	devlink_free(devlink);
+	return err;
 }
 
 netdev_tx_t ql_lb_send(struct sk_buff *skb, struct net_device *ndev)
@@ -4640,12 +4664,16 @@ static void qlge_remove(struct pci_dev *pdev)
 {
 	struct net_device *ndev = pci_get_drvdata(pdev);
 	struct ql_adapter *qdev = netdev_priv(ndev);
+	struct devlink *devlink = priv_to_devlink(qdev->ql_devlink);
 
 	del_timer_sync(&qdev->timer);
 	ql_cancel_all_work_sync(qdev);
 	unregister_netdev(ndev);
 	ql_release_all(pdev);
 	pci_disable_device(pdev);
+	devlink_health_reporter_destroy(qdev->ql_devlink->reporter);
+	devlink_unregister(devlink);
+	devlink_free(devlink);
 	free_netdev(ndev);
 }
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

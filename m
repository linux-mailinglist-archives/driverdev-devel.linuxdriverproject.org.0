Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FC8244C69
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Aug 2020 18:06:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3978487664;
	Fri, 14 Aug 2020 16:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QRQPuh-Evw9Z; Fri, 14 Aug 2020 16:06:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B1A8875C1;
	Fri, 14 Aug 2020 16:06:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D31441BF396
 for <devel@linuxdriverproject.org>; Fri, 14 Aug 2020 16:06:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CFBE88762B
 for <devel@linuxdriverproject.org>; Fri, 14 Aug 2020 16:06:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8MfcNyvJrIKu for <devel@linuxdriverproject.org>;
 Fri, 14 Aug 2020 16:06:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 013EB875C1
 for <devel@driverdev.osuosl.org>; Fri, 14 Aug 2020 16:06:20 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id y10so2812938plr.11
 for <devel@driverdev.osuosl.org>; Fri, 14 Aug 2020 09:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SVVgujljZTtyJP6NnksQakHSy/XVCreM9mOqtMP8xFc=;
 b=ZZIGW/jLmpzk1d8NA4T7bUfo0j+jVcUhskU2RVTwoT5W3++oJCwv4kxx/pSVQhR2D2
 7bj0hFcWXTSgTQBNAKKv/wwS4sLjfq86l8EUsD6rVX7UopuQucjogCN1VsoXbPEM/2/N
 3gksrhGnVSSTjdJD6w5hTJua7m8ryaM1egfphkOk5RV6U5r6A1CS27UuXwYKlF4zy5ey
 bu04sjTeBTpesueoncTwVWJaBRtQF+CE488jmDuRstb2F0fPOrIYNHqWkSmY/iK5KytN
 8AAZuvEEKGnMA10TANHHXOYTay/MXnO5lf2UxZSE7XVMzGmyrcSfFNahn8DmgmQ305lV
 V70w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SVVgujljZTtyJP6NnksQakHSy/XVCreM9mOqtMP8xFc=;
 b=VFz11ge+vOsjkCHggdsCwh7uIcGi5fNdci/mwH3aDa/yErVgeQAYpB5Tjf3CqK/Vnp
 XCZttnsvAQVLWS7eeij8Z3+uLkt+2ZpefoBL9lej/6hN9Ru1y1JqYyj8lBvjwyOsneev
 GgNycYjRPmEdz+U2dMR/QNVVHkChJMV/+/wslI1zrmpSl47FBCjKYBqwbZdkFI3EHSge
 WlBPFBlKJN058AAlfQ7UIHd1rxT8rd+Aa5Tw1MVAs+aWsP89/Jk7sW7wTEeE6WGGaqhE
 M/FtQ0nEu5vyeOdjYdMDpfKT9GQAfAZY+wCb3TMKWCpTKnSxNlDSonoHfoPFYvboALvm
 XbIQ==
X-Gm-Message-State: AOAM531UgwhWjD9yzHCPeFVn2OhS+aPKXvvNuaoZFKPiWJlKSeGEKIhv
 s4CgNnhrLo4oJ7mEozaIftA=
X-Google-Smtp-Source: ABdhPJzaWHQZ9DlZxR8aScqhOBpp10HepOQyWepHBDjcHkVmyg0GkAryg0PXMwKwf4QZhhkhZUe54A==
X-Received: by 2002:a17:902:246:: with SMTP id 64mr2507754plc.70.1597421180418; 
 Fri, 14 Aug 2020 09:06:20 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id w130sm9834458pfd.104.2020.08.14.09.06.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Aug 2020 09:06:20 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: netdev@vger.kernel.org
Subject: [RFC 1/3] Initialize devlink health dump framework for the dlge driver
Date: Sat, 15 Aug 2020 00:05:59 +0800
Message-Id: <20200814160601.901682-2-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200814160601.901682-1-coiby.xu@gmail.com>
References: <20200814160601.901682-1-coiby.xu@gmail.com>
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
Cc: Michal Kubecek <mkubecek@suse.cz>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 GR-Linux-NIC-Dev@marvell.com, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Benjamin Poirier <benjamin.poirier@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Initialize devlink health dump framework for the dlge driver so the
coredump could be done via devlink.

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/qlge/Makefile      |  2 +-
 drivers/staging/qlge/qlge.h        |  9 +++++++
 drivers/staging/qlge/qlge_health.c | 43 ++++++++++++++++++++++++++++++
 drivers/staging/qlge/qlge_health.h |  2 ++
 drivers/staging/qlge/qlge_main.c   | 21 +++++++++++++++
 5 files changed, 76 insertions(+), 1 deletion(-)
 create mode 100644 drivers/staging/qlge/qlge_health.c
 create mode 100644 drivers/staging/qlge/qlge_health.h

diff --git a/drivers/staging/qlge/Makefile b/drivers/staging/qlge/Makefile
index 1dc2568e820c..0a1e4c8dd546 100644
--- a/drivers/staging/qlge/Makefile
+++ b/drivers/staging/qlge/Makefile
@@ -5,4 +5,4 @@
 
 obj-$(CONFIG_QLGE) += qlge.o
 
-qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o
+qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o qlge_health.o
diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index fc8c5ca8935d..055ded6dab60 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -2061,6 +2061,14 @@ struct nic_operations {
 	int (*port_initialize) (struct ql_adapter *);
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
@@ -2078,6 +2086,7 @@ struct ql_adapter {
 	struct pci_dev *pdev;
 	struct net_device *ndev;	/* Parent NET device */
 
+	struct qlge_devlink *devlink;
 	/* Hardware information */
 	u32 chip_rev_id;
 	u32 fw_rev_id;
diff --git a/drivers/staging/qlge/qlge_health.c b/drivers/staging/qlge/qlge_health.c
new file mode 100644
index 000000000000..292f6b1827e1
--- /dev/null
+++ b/drivers/staging/qlge/qlge_health.c
@@ -0,0 +1,43 @@
+#include "qlge.h"
+#include "qlge_health.h"
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
+	if (err)
+		return err;
+
+	return 0;
+}
+
+
diff --git a/drivers/staging/qlge/qlge_health.h b/drivers/staging/qlge/qlge_health.h
new file mode 100644
index 000000000000..07d3bafab845
--- /dev/null
+++ b/drivers/staging/qlge/qlge_health.h
@@ -0,0 +1,2 @@
+#include <net/devlink.h>
+int qlge_health_create_reporters(struct qlge_devlink *priv);
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 1650de13842f..b2be7f4b7dd6 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -42,6 +42,7 @@
 #include <net/ip6_checksum.h>
 
 #include "qlge.h"
+#include "qlge_health.h"
 
 char qlge_driver_name[] = DRV_NAME;
 const char qlge_driver_version[] = DRV_VERSION;
@@ -4550,6 +4551,8 @@ static void ql_timer(struct timer_list *t)
 	mod_timer(&qdev->timer, jiffies + (5 * HZ));
 }
 
+static const struct devlink_ops qlge_devlink_ops;
+
 static int qlge_probe(struct pci_dev *pdev,
 		      const struct pci_device_id *pci_entry)
 {
@@ -4557,6 +4560,13 @@ static int qlge_probe(struct pci_dev *pdev,
 	struct ql_adapter *qdev = NULL;
 	static int cards_found;
 	int err = 0;
+	struct devlink *devlink;
+	struct qlge_devlink *qlge_dl;
+
+	devlink = devlink_alloc(&qlge_devlink_ops, sizeof(struct qlge_devlink));
+	if (!devlink)
+		return -ENOMEM;
+	qlge_dl = devlink_priv(devlink);
 
 	ndev = alloc_etherdev_mq(sizeof(struct ql_adapter),
 				 min(MAX_CPUS,
@@ -4615,6 +4625,15 @@ static int qlge_probe(struct pci_dev *pdev,
 		free_netdev(ndev);
 		return err;
 	}
+
+	err = devlink_register(devlink, &pdev->dev);
+	if (err)
+		devlink_free(devlink);
+
+	qlge_health_create_reporters(qlge_dl);
+	qlge_dl->qdev = qdev;
+	qlge_dl->ndev = ndev;
+	qdev->devlink = qlge_dl;
 	/* Start up the timer to trigger EEH if
 	 * the bus goes dead
 	 */
@@ -4647,6 +4666,8 @@ static void qlge_remove(struct pci_dev *pdev)
 	unregister_netdev(ndev);
 	ql_release_all(pdev);
 	pci_disable_device(pdev);
+	devlink_unregister(priv_to_devlink(qdev->devlink));
+	devlink_health_reporter_destroy(qdev->devlink->reporter);
 	free_netdev(ndev);
 }
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

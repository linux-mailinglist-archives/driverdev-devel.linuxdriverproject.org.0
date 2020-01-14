Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F92A13AE24
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 16:58:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E941220513;
	Tue, 14 Jan 2020 15:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WhSLaNhZFHN2; Tue, 14 Jan 2020 15:58:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 780BA20518;
	Tue, 14 Jan 2020 15:58:08 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C40D1BF574
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 66C322050C
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pyh9ZMmbP2P4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id 5A94E20508
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:05 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: zbwuV2sV95HiKvobVluUrr8/Q9rgDK64duACDPMb9yWrk9oG1D/sIeKiTuMlr3UI54JvHfVzsy
 CF1b3P/sdYf8d7kOXEsj8WOh6W3nDzcU6hMmE7gmw2CZ/j3MGK4FwdGeQuhIXndOU2NTKyF7at
 /Kbd4V+7NCujGfg56xDFAxVpG2Q95iIh772cEW+x1abJo7HS58NzKmp09b50tSgbH6G/3i50Mz
 +8de+6fYauz1forpWvNzgB3OCdVpB3Y3dGvW+gu3omTZp7kyoTiDooszZUXPrA7nho+Tq5q6dV
 TSE=
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="60756669"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jan 2020 08:58:04 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Jan 2020 08:58:04 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 14 Jan 2020 08:58:03 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v3 2/9] staging: most: core: use dev_* function for logging
Date: Tue, 14 Jan 2020 16:57:51 +0100
Message-ID: <1579017478-3339-3-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579017478-3339-1-git-send-email-christian.gromm@microchip.com>
References: <1579017478-3339-1-git-send-email-christian.gromm@microchip.com>
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch replaces all calls to pr_* functions and uses
the dev_* functions instead.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v3:
	This patch has been added to the series.

 drivers/staging/most/core.c | 61 ++++++++++++++++++++++-----------------------
 1 file changed, 30 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 8c8a647..9839b8c 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -5,7 +5,6 @@
  * Copyright (C) 2013-2020 Microchip Technology Germany II GmbH & Co. KG
  */
 
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 #include <linux/module.h>
 #include <linux/fs.h>
 #include <linux/slab.h>
@@ -151,7 +150,7 @@ static void flush_channel_fifos(struct most_channel *c)
 	spin_unlock_irqrestore(&c->fifo_lock, hf_flags);
 
 	if (unlikely((!list_empty(&c->fifo) || !list_empty(&c->halt_fifo))))
-		pr_info("WARN: fifo | trash fifo not empty\n");
+		dev_warn(&mc.dev, "fifo | trash fifo not empty\n");
 }
 
 /**
@@ -623,7 +622,7 @@ int most_set_cfg_datatype(char *mdev, char *mdev_ch, char *buf)
 	}
 
 	if (i == ARRAY_SIZE(ch_data_type))
-		pr_info("WARN: invalid attribute settings\n");
+		dev_warn(&mc.dev, "invalid attribute settings\n");
 	return 0;
 }
 
@@ -642,7 +641,7 @@ int most_set_cfg_direction(char *mdev, char *mdev_ch, char *buf)
 	} else if (!strcmp(buf, "tx")) {
 		c->cfg.direction = MOST_CH_TX;
 	} else {
-		pr_info("Invalid direction\n");
+		dev_err(&mc.dev, "Invalid direction\n");
 		return -ENODATA;
 	}
 	return 0;
@@ -795,7 +794,7 @@ static int hdm_enqueue_thread(void *data)
 		mutex_unlock(&c->nq_mutex);
 
 		if (unlikely(ret)) {
-			pr_err("hdm enqueue failed\n");
+			dev_err(&mc.dev, "hdm enqueue failed\n");
 			nq_hdm_mbo(mbo);
 			c->hdm_enqueue_task = NULL;
 			return 0;
@@ -942,7 +941,7 @@ static void most_write_completion(struct mbo *mbo)
 
 	c = mbo->context;
 	if (mbo->status == MBO_E_INVAL)
-		pr_info("WARN: Tx MBO status: invalid\n");
+		dev_warn(&mc.dev, "Tx MBO status: invalid\n");
 	if (unlikely(c->is_poisoned || (mbo->status == MBO_E_CLOSE)))
 		trash_mbo(mbo);
 	else
@@ -1101,14 +1100,14 @@ int most_start_channel(struct most_interface *iface, int id,
 		goto out; /* already started by another component */
 
 	if (!try_module_get(iface->mod)) {
-		pr_info("failed to acquire HDM lock\n");
+		dev_err(&mc.dev, "failed to acquire HDM lock\n");
 		mutex_unlock(&c->start_mutex);
 		return -ENOLCK;
 	}
 
 	c->cfg.extra_len = 0;
 	if (c->iface->configure(c->iface, c->channel_id, &c->cfg)) {
-		pr_info("channel configuration failed. Go check settings...\n");
+		dev_err(&mc.dev, "channel configuration failed. Go check settings...\n");
 		ret = -EINVAL;
 		goto err_put_module;
 	}
@@ -1162,7 +1161,7 @@ int most_stop_channel(struct most_interface *iface, int id,
 	struct most_channel *c;
 
 	if (unlikely((!iface) || (id >= iface->num_channels) || (id < 0))) {
-		pr_err("Bad interface or index out of range\n");
+		dev_err(&mc.dev, "Bad interface or index out of range\n");
 		return -EINVAL;
 	}
 	c = iface->p->channel[id];
@@ -1182,8 +1181,8 @@ int most_stop_channel(struct most_interface *iface, int id,
 
 	c->is_poisoned = true;
 	if (c->iface->poison_channel(c->iface, c->channel_id)) {
-		pr_err("Cannot stop channel %d of mdev %s\n", c->channel_id,
-		       c->iface->description);
+		dev_err(&mc.dev, "Cannot stop channel %d of mdev %s\n", c->channel_id,
+			c->iface->description);
 		mutex_unlock(&c->start_mutex);
 		return -EAGAIN;
 	}
@@ -1192,7 +1191,7 @@ int most_stop_channel(struct most_interface *iface, int id,
 
 #ifdef CMPL_INTERRUPTIBLE
 	if (wait_for_completion_interruptible(&c->cleanup)) {
-		pr_info("Interrupted while clean up ch %d\n", c->channel_id);
+		dev_err(&mc.dev, "Interrupted while clean up ch %d\n", c->channel_id);
 		mutex_unlock(&c->start_mutex);
 		return -EINTR;
 	}
@@ -1218,11 +1217,11 @@ EXPORT_SYMBOL_GPL(most_stop_channel);
 int most_register_component(struct most_component *comp)
 {
 	if (!comp) {
-		pr_err("Bad component\n");
+		dev_err(&mc.dev, "Bad component\n");
 		return -EINVAL;
 	}
 	list_add_tail(&comp->list, &mc.comp_list);
-	pr_info("registered new core component %s\n", comp->name);
+	dev_info(&mc.dev, "registered new core component %s\n", comp->name);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(most_register_component);
@@ -1252,25 +1251,25 @@ static int disconnect_channels(struct device *dev, void *data)
 int most_deregister_component(struct most_component *comp)
 {
 	if (!comp) {
-		pr_err("Bad component\n");
+		dev_err(&mc.dev, "Bad component\n");
 		return -EINVAL;
 	}
 
 	bus_for_each_dev(&mc.bus, NULL, comp, disconnect_channels);
 	list_del(&comp->list);
-	pr_info("deregistering component %s\n", comp->name);
+	dev_info(&mc.dev, "deregistering component %s\n", comp->name);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(most_deregister_component);
 
 static void release_interface(struct device *dev)
 {
-	pr_info("releasing interface dev %s...\n", dev_name(dev));
+	dev_info(&mc.dev, "releasing interface dev %s...\n", dev_name(dev));
 }
 
 static void release_channel(struct device *dev)
 {
-	pr_info("releasing channel dev %s...\n", dev_name(dev));
+	dev_info(&mc.dev, "releasing channel dev %s...\n", dev_name(dev));
 }
 
 /**
@@ -1288,13 +1287,13 @@ int most_register_interface(struct most_interface *iface)
 
 	if (!iface || !iface->enqueue || !iface->configure ||
 	    !iface->poison_channel || (iface->num_channels > MAX_CHANNELS)) {
-		pr_err("Bad interface or channel overflow\n");
+		dev_err(&mc.dev, "Bad interface or channel overflow\n");
 		return -EINVAL;
 	}
 
 	id = ida_simple_get(&mdev_id, 0, 0, GFP_KERNEL);
 	if (id < 0) {
-		pr_info("Failed to alloc mdev ID\n");
+		dev_err(&mc.dev, "Failed to alloc mdev ID\n");
 		return id;
 	}
 
@@ -1313,7 +1312,7 @@ int most_register_interface(struct most_interface *iface)
 	iface->dev.groups = interface_attr_groups;
 	iface->dev.release = release_interface;
 	if (device_register(&iface->dev)) {
-		pr_err("registering iface->dev failed\n");
+		dev_err(&mc.dev, "registering iface->dev failed\n");
 		kfree(iface->p);
 		ida_simple_remove(&mdev_id, id);
 		return -ENOMEM;
@@ -1356,12 +1355,12 @@ int most_register_interface(struct most_interface *iface)
 		mutex_init(&c->nq_mutex);
 		list_add_tail(&c->list, &iface->p->channel_list);
 		if (device_register(&c->dev)) {
-			pr_err("registering c->dev failed\n");
+			dev_err(&mc.dev, "registering c->dev failed\n");
 			goto err_free_most_channel;
 		}
 	}
-	pr_info("registered new device mdev%d (%s)\n",
-		id, iface->description);
+	dev_info(&mc.dev, "registered new device mdev%d (%s)\n",
+		 id, iface->description);
 	most_interface_register_notify(iface->description);
 	return 0;
 
@@ -1393,8 +1392,8 @@ void most_deregister_interface(struct most_interface *iface)
 	int i;
 	struct most_channel *c;
 
-	pr_info("deregistering device %s (%s)\n", dev_name(&iface->dev),
-		iface->description);
+	dev_info(&mc.dev, "deregistering device %s (%s)\n", dev_name(&iface->dev),
+		 iface->description);
 	for (i = 0; i < iface->num_channels; i++) {
 		c = iface->p->channel[i];
 		if (c->pipe0.comp)
@@ -1464,14 +1463,14 @@ EXPORT_SYMBOL_GPL(most_resume_enqueue);
 
 static void release_most_sub(struct device *dev)
 {
-	pr_info("releasing most_subsystem\n");
+	dev_info(&mc.dev, "releasing most_subsystem\n");
 }
 
 static int __init most_init(void)
 {
 	int err;
 
-	pr_info("init()\n");
+	dev_info(&mc.dev, "init()\n");
 	INIT_LIST_HEAD(&mc.comp_list);
 	ida_init(&mdev_id);
 
@@ -1483,12 +1482,12 @@ static int __init most_init(void)
 
 	err = bus_register(&mc.bus);
 	if (err) {
-		pr_info("Cannot register most bus\n");
+		dev_err(&mc.dev, "Cannot register most bus\n");
 		return err;
 	}
 	err = driver_register(&mc.drv);
 	if (err) {
-		pr_info("Cannot register core driver\n");
+		dev_err(&mc.dev, "Cannot register core driver\n");
 		goto err_unregister_bus;
 	}
 	mc.dev.init_name = "most_bus";
@@ -1509,7 +1508,7 @@ static int __init most_init(void)
 
 static void __exit most_exit(void)
 {
-	pr_info("exit core module\n");
+	dev_info(&mc.dev, "exit core module\n");
 	device_unregister(&mc.dev);
 	driver_unregister(&mc.drv);
 	bus_unregister(&mc.bus);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

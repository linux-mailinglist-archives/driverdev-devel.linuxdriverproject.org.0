Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E98E146D10
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 16:38:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F08788377;
	Thu, 23 Jan 2020 15:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LkPmZSWOOvTa; Thu, 23 Jan 2020 15:38:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8FDD9882EB;
	Thu, 23 Jan 2020 15:38:40 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C5D121BF3B9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BB1B1882EB
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D6S06EYORPne
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D2C5C88309
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:33 +0000 (UTC)
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: AzjSUR09sVY5G+OBHEyczCixkrhzHSOqKg+C0+7PXNJLPvSL6+CyeAECrB6cFq4ZRPS6i2QUSZ
 CAFFV4jymp05F9f/0gqUdgeKL5ma1e8+Ujnm+dk3N1G8jzeJqIb/yRtoOJUe1nUG4Exd8mtC6w
 RVmrhbe3rii79tAYBVhyONaIYT8JoZTaAdEUk83S6vyiafgJBQKUayRXlEsqs8kvNwsRMHkitH
 P54xtrAmWS4Z1Rvoea1buwegdxusoUZzqzgZ63xtyJo2SvqWNUNTco8PQYl3ywPIuqVeDcaHeA
 uRY=
X-IronPort-AV: E=Sophos;i="5.70,354,1574146800"; d="scan'208";a="61987989"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jan 2020 08:38:33 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 23 Jan 2020 08:38:32 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 23 Jan 2020 08:38:32 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v4 03/10] staging: most: remove struct device core driver
Date: Thu, 23 Jan 2020 16:38:19 +0100
Message-ID: <1579793906-5054-4-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579793906-5054-1-git-send-email-christian.gromm@microchip.com>
References: <1579793906-5054-1-git-send-email-christian.gromm@microchip.com>
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

This patch removes the device from the MOST core driver and uses the
device from the adapter driver.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v4:
	This patch has been added to the series

 drivers/staging/most/core.c      | 52 ++++++++++++++--------------------------
 drivers/staging/most/dim2/dim2.c |  1 +
 2 files changed, 19 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 84d4f52..a17ea4c 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -29,7 +29,6 @@ static struct ida mdev_id;
 static int dummy_num_buffers;
 
 static struct mostcore {
-	struct device dev;
 	struct device_driver drv;
 	struct bus_type bus;
 	struct list_head comp_list;
@@ -150,7 +149,7 @@ static void flush_channel_fifos(struct most_channel *c)
 	spin_unlock_irqrestore(&c->fifo_lock, hf_flags);
 
 	if (unlikely((!list_empty(&c->fifo) || !list_empty(&c->halt_fifo))))
-		dev_warn(&mc.dev, "fifo | trash fifo not empty\n");
+		dev_warn(&c->dev, "fifo | trash fifo not empty\n");
 }
 
 /**
@@ -623,7 +622,7 @@ int most_set_cfg_datatype(char *mdev, char *mdev_ch, char *buf)
 	}
 
 	if (i == ARRAY_SIZE(ch_data_type))
-		dev_warn(&mc.dev, "invalid attribute settings\n");
+		dev_warn(&c->dev, "invalid attribute settings\n");
 	return 0;
 }
 
@@ -642,7 +641,7 @@ int most_set_cfg_direction(char *mdev, char *mdev_ch, char *buf)
 	} else if (!strcmp(buf, "tx")) {
 		c->cfg.direction = MOST_CH_TX;
 	} else {
-		dev_err(&mc.dev, "Invalid direction\n");
+		dev_err(&c->dev, "Invalid direction\n");
 		return -ENODATA;
 	}
 	return 0;
@@ -795,7 +794,7 @@ static int hdm_enqueue_thread(void *data)
 		mutex_unlock(&c->nq_mutex);
 
 		if (unlikely(ret)) {
-			dev_err(&mc.dev, "hdm enqueue failed\n");
+			dev_err(&c->dev, "hdm enqueue failed\n");
 			nq_hdm_mbo(mbo);
 			c->hdm_enqueue_task = NULL;
 			return 0;
@@ -942,7 +941,7 @@ static void most_write_completion(struct mbo *mbo)
 
 	c = mbo->context;
 	if (mbo->status == MBO_E_INVAL)
-		dev_warn(&mc.dev, "Tx MBO status: invalid\n");
+		dev_warn(&c->dev, "Tx MBO status: invalid\n");
 	if (unlikely(c->is_poisoned || (mbo->status == MBO_E_CLOSE)))
 		trash_mbo(mbo);
 	else
@@ -1101,14 +1100,14 @@ int most_start_channel(struct most_interface *iface, int id,
 		goto out; /* already started by another component */
 
 	if (!try_module_get(iface->mod)) {
-		dev_err(&mc.dev, "failed to acquire HDM lock\n");
+		dev_err(&c->dev, "failed to acquire HDM lock\n");
 		mutex_unlock(&c->start_mutex);
 		return -ENOLCK;
 	}
 
 	c->cfg.extra_len = 0;
 	if (c->iface->configure(c->iface, c->channel_id, &c->cfg)) {
-		dev_err(&mc.dev, "channel configuration failed. Go check settings...\n");
+		dev_err(&c->dev, "channel configuration failed. Go check settings...\n");
 		ret = -EINVAL;
 		goto err_put_module;
 	}
@@ -1162,7 +1161,7 @@ int most_stop_channel(struct most_interface *iface, int id,
 	struct most_channel *c;
 
 	if (unlikely((!iface) || (id >= iface->num_channels) || (id < 0))) {
-		dev_err(&mc.dev, "Bad interface or index out of range\n");
+		pr_err("Bad interface or index out of range\n");
 		return -EINVAL;
 	}
 	c = iface->p->channel[id];
@@ -1182,7 +1181,7 @@ int most_stop_channel(struct most_interface *iface, int id,
 
 	c->is_poisoned = true;
 	if (c->iface->poison_channel(c->iface, c->channel_id)) {
-		dev_err(&mc.dev, "Cannot stop channel %d of mdev %s\n", c->channel_id,
+		dev_err(&c->dev, "Cannot stop channel %d of mdev %s\n", c->channel_id,
 			c->iface->description);
 		mutex_unlock(&c->start_mutex);
 		return -EAGAIN;
@@ -1192,7 +1191,7 @@ int most_stop_channel(struct most_interface *iface, int id,
 
 #ifdef CMPL_INTERRUPTIBLE
 	if (wait_for_completion_interruptible(&c->cleanup)) {
-		dev_err(&mc.dev, "Interrupted while clean up ch %d\n", c->channel_id);
+		dev_err(&c->dev, "Interrupted while clean up ch %d\n", c->channel_id);
 		mutex_unlock(&c->start_mutex);
 		return -EINTR;
 	}
@@ -1218,7 +1217,7 @@ EXPORT_SYMBOL_GPL(most_stop_channel);
 int most_register_component(struct most_component *comp)
 {
 	if (!comp) {
-		dev_err(&mc.dev, "Bad component\n");
+		pr_err("Bad component\n");
 		return -EINVAL;
 	}
 	list_add_tail(&comp->list, &mc.comp_list);
@@ -1251,7 +1250,7 @@ static int disconnect_channels(struct device *dev, void *data)
 int most_deregister_component(struct most_component *comp)
 {
 	if (!comp) {
-		dev_err(&mc.dev, "Bad component\n");
+		pr_err("Bad component\n");
 		return -EINVAL;
 	}
 
@@ -1283,13 +1282,13 @@ int most_register_interface(struct most_interface *iface)
 
 	if (!iface || !iface->enqueue || !iface->configure ||
 	    !iface->poison_channel || (iface->num_channels > MAX_CHANNELS)) {
-		dev_err(&mc.dev, "Bad interface or channel overflow\n");
+		dev_err(iface->dev, "Bad interface or channel overflow\n");
 		return -EINVAL;
 	}
 
 	id = ida_simple_get(&mdev_id, 0, 0, GFP_KERNEL);
 	if (id < 0) {
-		dev_err(&mc.dev, "Failed to alloc mdev ID\n");
+		dev_err(iface->dev, "Failed to alloc mdev ID\n");
 		return id;
 	}
 
@@ -1303,11 +1302,10 @@ int most_register_interface(struct most_interface *iface)
 	iface->p->dev_id = id;
 	strscpy(iface->p->name, iface->description, sizeof(iface->p->name));
 	iface->dev->bus = &mc.bus;
-	iface->dev->parent = &mc.dev;
 	iface->dev->groups = interface_attr_groups;
 	dev_set_drvdata(iface->dev, iface);
 	if (device_register(iface->dev)) {
-		dev_err(&mc.dev, "registering iface->dev failed\n");
+		dev_err(iface->dev, "registering iface->dev failed\n");
 		kfree(iface->p);
 		put_device(iface->dev);
 		ida_simple_remove(&mdev_id, id);
@@ -1351,7 +1349,7 @@ int most_register_interface(struct most_interface *iface)
 		mutex_init(&c->nq_mutex);
 		list_add_tail(&c->list, &iface->p->channel_list);
 		if (device_register(&c->dev)) {
-			dev_err(&mc.dev, "registering c->dev failed\n");
+			dev_err(&c->dev, "registering c->dev failed\n");
 			goto err_free_most_channel;
 		}
 	}
@@ -1451,11 +1449,6 @@ void most_resume_enqueue(struct most_interface *iface, int id)
 }
 EXPORT_SYMBOL_GPL(most_resume_enqueue);
 
-static void release_most_sub(struct device *dev)
-{
-	dev_info(&mc.dev, "releasing most_subsystem\n");
-}
-
 static int __init most_init(void)
 {
 	int err;
@@ -1471,25 +1464,17 @@ static int __init most_init(void)
 
 	err = bus_register(&mc.bus);
 	if (err) {
-		dev_err(&mc.dev, "Cannot register most bus\n");
+		pr_err("Cannot register most bus\n");
 		return err;
 	}
 	err = driver_register(&mc.drv);
 	if (err) {
-		dev_err(&mc.dev, "Cannot register core driver\n");
+		pr_err("Cannot register core driver\n");
 		goto err_unregister_bus;
 	}
-	mc.dev.init_name = "most_bus";
-	mc.dev.release = release_most_sub;
-	if (device_register(&mc.dev)) {
-		err = -ENOMEM;
-		goto err_unregister_driver;
-	}
 	configfs_init();
 	return 0;
 
-err_unregister_driver:
-	driver_unregister(&mc.drv);
 err_unregister_bus:
 	bus_unregister(&mc.bus);
 	return err;
@@ -1497,7 +1482,6 @@ static int __init most_init(void)
 
 static void __exit most_exit(void)
 {
-	device_unregister(&mc.dev);
 	driver_unregister(&mc.drv);
 	bus_unregister(&mc.bus);
 	ida_destroy(&mdev_id);
diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
index 3be21f33..987a91d 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -856,6 +856,7 @@ static int dim2_probe(struct platform_device *pdev)
 	dev->most_iface.driver_dev = &pdev->dev;
 	dev->most_iface.dev = &dev->dev;
 	dev->dev.init_name = "dim2_state";
+	dev->dev.parent = &pdev->dev;
 
 	ret = most_register_interface(&dev->most_iface);
 	if (ret) {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

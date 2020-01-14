Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B67B413AE2F
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 16:58:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D3058610F;
	Tue, 14 Jan 2020 15:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qdtcJTNQBy6d; Tue, 14 Jan 2020 15:58:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 912C1860BE;
	Tue, 14 Jan 2020 15:58:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 173CD1BF574
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 139FF20515
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wwk9YYDoE11O
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 76A9120519
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:09 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: ZiFCVxsJ1CIE4TeO3/6kK4daAOn1sKF+gpaJcyBsoO9bnRykLdmfmlbp+7NV2FiLunf98QRRcE
 bakbwYEc8BAiyJQ25OJYctiwuwKBeBLKK7FKegdo76lo2PiBb8jHPB0/jYZ24MTbOpZlWw/T0s
 8mExquiR0D6PVca+qQBItvEgQxoAkptB9XahTvVSRUcnq+FgKkrv6bt5S+QjUFapqPdIS6rDJN
 rkQEBY4qsaISQIAYxNhNx9WbnGm9AFtNeCR81jEwsoNaXAB3HdG+ypS0kH0sxr4CQk7PhgMPIp
 6fc=
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="61883107"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jan 2020 08:58:09 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Jan 2020 08:58:08 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 14 Jan 2020 08:58:07 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v3 6/9] staging: most: change storage class of struct
 mostcore
Date: Tue, 14 Jan 2020 16:57:55 +0100
Message-ID: <1579017478-3339-7-git-send-email-christian.gromm@microchip.com>
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

This patch allocated the mostcore structure dynamically and releases
the memory in the dedicated release function.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v3:
	This patch has been added to the series.

 drivers/staging/most/core.c | 110 ++++++++++++++++++++++++--------------------
 1 file changed, 59 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 4f60c09..92303d0 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -33,9 +33,10 @@ static struct mostcore {
 	struct device_driver drv;
 	struct bus_type bus;
 	struct list_head comp_list;
-} mc;
+} *mc;
 
 #define to_driver(d) container_of(d, struct mostcore, drv)
+#define to_mostcore(d) container_of(d, struct mostcore, dev)
 
 struct pipe {
 	struct most_component *comp;
@@ -154,7 +155,7 @@ static void flush_channel_fifos(struct most_channel *c)
 	spin_unlock_irqrestore(&c->fifo_lock, hf_flags);
 
 	if (unlikely((!list_empty(&c->fifo) || !list_empty(&c->halt_fifo))))
-		dev_warn(&mc.dev, "fifo | trash fifo not empty\n");
+		dev_warn(&mc->dev, "fifo | trash fifo not empty\n");
 }
 
 /**
@@ -461,7 +462,7 @@ static struct most_component *match_component(char *name)
 {
 	struct most_component *comp;
 
-	list_for_each_entry(comp, &mc.comp_list, list) {
+	list_for_each_entry(comp, &mc->comp_list, list) {
 		if (!strcmp(comp->name, name))
 			return comp;
 	}
@@ -507,7 +508,7 @@ static ssize_t links_show(struct device_driver *drv, char *buf)
 {
 	struct show_links_data d = { .buf = buf };
 
-	bus_for_each_dev(&mc.bus, NULL, &d, print_links);
+	bus_for_each_dev(&mc->bus, NULL, &d, print_links);
 	return d.offs;
 }
 
@@ -516,7 +517,7 @@ static ssize_t components_show(struct device_driver *drv, char *buf)
 	struct most_component *comp;
 	int offs = 0;
 
-	list_for_each_entry(comp, &mc.comp_list, list) {
+	list_for_each_entry(comp, &mc->comp_list, list) {
 		offs += snprintf(buf + offs, PAGE_SIZE - offs, "%s\n",
 				 comp->name);
 	}
@@ -534,7 +535,7 @@ static struct most_channel *get_channel(char *mdev, char *mdev_ch)
 	struct most_interface *iface;
 	struct most_channel *c, *tmp;
 
-	dev = bus_find_device_by_name(&mc.bus, NULL, mdev);
+	dev = bus_find_device_by_name(&mc->bus, NULL, mdev);
 	if (!dev)
 		return NULL;
 	iface = to_iface_priv(dev)->iface;
@@ -626,7 +627,7 @@ int most_set_cfg_datatype(char *mdev, char *mdev_ch, char *buf)
 	}
 
 	if (i == ARRAY_SIZE(ch_data_type))
-		dev_warn(&mc.dev, "invalid attribute settings\n");
+		dev_warn(&mc->dev, "invalid attribute settings\n");
 	return 0;
 }
 
@@ -645,7 +646,7 @@ int most_set_cfg_direction(char *mdev, char *mdev_ch, char *buf)
 	} else if (!strcmp(buf, "tx")) {
 		c->cfg.direction = MOST_CH_TX;
 	} else {
-		dev_err(&mc.dev, "Invalid direction\n");
+		dev_err(&mc->dev, "Invalid direction\n");
 		return -ENODATA;
 	}
 	return 0;
@@ -798,7 +799,7 @@ static int hdm_enqueue_thread(void *data)
 		mutex_unlock(&c->nq_mutex);
 
 		if (unlikely(ret)) {
-			dev_err(&mc.dev, "hdm enqueue failed\n");
+			dev_err(&mc->dev, "hdm enqueue failed\n");
 			nq_hdm_mbo(mbo);
 			c->hdm_enqueue_task = NULL;
 			return 0;
@@ -945,7 +946,7 @@ static void most_write_completion(struct mbo *mbo)
 
 	c = mbo->context;
 	if (mbo->status == MBO_E_INVAL)
-		dev_warn(&mc.dev, "Tx MBO status: invalid\n");
+		dev_warn(&mc->dev, "Tx MBO status: invalid\n");
 	if (unlikely(c->is_poisoned || (mbo->status == MBO_E_CLOSE)))
 		trash_mbo(mbo);
 	else
@@ -1104,14 +1105,14 @@ int most_start_channel(struct most_interface *iface, int id,
 		goto out; /* already started by another component */
 
 	if (!try_module_get(iface->mod)) {
-		dev_err(&mc.dev, "failed to acquire HDM lock\n");
+		dev_err(&mc->dev, "failed to acquire HDM lock\n");
 		mutex_unlock(&c->start_mutex);
 		return -ENOLCK;
 	}
 
 	c->cfg.extra_len = 0;
 	if (c->iface->configure(c->iface, c->channel_id, &c->cfg)) {
-		dev_err(&mc.dev, "channel configuration failed. Go check settings...\n");
+		dev_err(&mc->dev, "channel configuration failed. Go check settings...\n");
 		ret = -EINVAL;
 		goto err_put_module;
 	}
@@ -1165,7 +1166,7 @@ int most_stop_channel(struct most_interface *iface, int id,
 	struct most_channel *c;
 
 	if (unlikely((!iface) || (id >= iface->num_channels) || (id < 0))) {
-		dev_err(&mc.dev, "Bad interface or index out of range\n");
+		dev_err(&mc->dev, "Bad interface or index out of range\n");
 		return -EINVAL;
 	}
 	c = iface->p->channel[id];
@@ -1185,7 +1186,7 @@ int most_stop_channel(struct most_interface *iface, int id,
 
 	c->is_poisoned = true;
 	if (c->iface->poison_channel(c->iface, c->channel_id)) {
-		dev_err(&mc.dev, "Cannot stop channel %d of mdev %s\n", c->channel_id,
+		dev_err(&mc->dev, "Cannot stop channel %d of mdev %s\n", c->channel_id,
 			c->iface->description);
 		mutex_unlock(&c->start_mutex);
 		return -EAGAIN;
@@ -1195,7 +1196,7 @@ int most_stop_channel(struct most_interface *iface, int id,
 
 #ifdef CMPL_INTERRUPTIBLE
 	if (wait_for_completion_interruptible(&c->cleanup)) {
-		dev_err(&mc.dev, "Interrupted while clean up ch %d\n", c->channel_id);
+		dev_err(&mc->dev, "Interrupted while clean up ch %d\n", c->channel_id);
 		mutex_unlock(&c->start_mutex);
 		return -EINTR;
 	}
@@ -1221,10 +1222,10 @@ EXPORT_SYMBOL_GPL(most_stop_channel);
 int most_register_component(struct most_component *comp)
 {
 	if (!comp) {
-		dev_err(&mc.dev, "Bad component\n");
+		dev_err(&mc->dev, "Bad component\n");
 		return -EINVAL;
 	}
-	list_add_tail(&comp->list, &mc.comp_list);
+	list_add_tail(&comp->list, &mc->comp_list);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(most_register_component);
@@ -1254,11 +1255,11 @@ static int disconnect_channels(struct device *dev, void *data)
 int most_deregister_component(struct most_component *comp)
 {
 	if (!comp) {
-		dev_err(&mc.dev, "Bad component\n");
+		dev_err(&mc->dev, "Bad component\n");
 		return -EINVAL;
 	}
 
-	bus_for_each_dev(&mc.bus, NULL, comp, disconnect_channels);
+	bus_for_each_dev(&mc->bus, NULL, comp, disconnect_channels);
 	list_del(&comp->list);
 	return 0;
 }
@@ -1268,7 +1269,6 @@ static void release_interface_priv(struct device *dev)
 {
 	struct interface_private *p = to_iface_priv(dev);
 
-	dev_info(&mc.dev, "releasing interface dev %s...\n", dev_name(dev));
 	kfree(p);
 }
 
@@ -1276,7 +1276,6 @@ static void release_channel(struct device *dev)
 {
 	struct most_channel *c = to_channel(dev);
 
-	dev_info(&mc.dev, "releasing channel dev %s...\n", dev_name(dev));
 	kfree(c);
 }
 
@@ -1308,13 +1307,13 @@ int most_register_interface(struct most_interface *iface)
 
 	if (!iface || !iface->enqueue || !iface->configure ||
 	    !iface->poison_channel || (iface->num_channels > MAX_CHANNELS)) {
-		dev_err(&mc.dev, "Bad interface or channel overflow\n");
+		dev_err(&mc->dev, "Bad interface or channel overflow\n");
 		return -EINVAL;
 	}
 
 	id = ida_simple_get(&mdev_id, 0, 0, GFP_KERNEL);
 	if (id < 0) {
-		dev_err(&mc.dev, "Failed to alloc mdev ID\n");
+		dev_err(&mc->dev, "Failed to alloc mdev ID\n");
 		return id;
 	}
 
@@ -1329,12 +1328,12 @@ int most_register_interface(struct most_interface *iface)
 	iface->p->dev_id = id;
 	strscpy(iface->p->name, iface->description, sizeof(iface->p->name));
 	iface->p->dev.init_name = iface->p->name;
-	iface->p->dev.bus = &mc.bus;
-	iface->p->dev.parent = &mc.dev;
+	iface->p->dev.bus = &mc->bus;
+	iface->p->dev.parent = &mc->dev;
 	iface->p->dev.groups = interface_attr_groups;
 	iface->p->dev.release = release_interface_priv;
 	if (device_register(&iface->p->dev)) {
-		dev_err(&mc.dev, "registering iface->p->dev failed\n");
+		dev_err(&mc->dev, "registering iface->p->dev failed\n");
 		put_device(&iface->p->dev);
 		ida_simple_remove(&mdev_id, id);
 		return -ENOMEM;
@@ -1377,7 +1376,7 @@ int most_register_interface(struct most_interface *iface)
 		mutex_init(&c->nq_mutex);
 		list_add_tail(&c->list, &iface->p->channel_list);
 		if (device_register(&c->dev)) {
-			dev_err(&mc.dev, "registering c->dev failed\n");
+			dev_err(&mc->dev, "registering c->dev failed\n");
 			goto err_free_most_channel;
 		}
 	}
@@ -1477,53 +1476,62 @@ EXPORT_SYMBOL_GPL(most_resume_enqueue);
 
 static void release_most_sub(struct device *dev)
 {
-	dev_info(&mc.dev, "releasing most_subsystem\n");
+	struct mostcore *mc = to_mostcore(dev);
+
+	kfree(mc);
 }
 
 static int __init most_init(void)
 {
 	int err;
 
-	INIT_LIST_HEAD(&mc.comp_list);
-	ida_init(&mdev_id);
+	mc = kzalloc(sizeof(*mc), GFP_KERNEL);
+	if (!mc)
+		return -ENOMEM;
 
-	mc.bus.name = "most",
-	mc.bus.match = most_match,
-	mc.drv.name = "most_core",
-	mc.drv.bus = &mc.bus,
-	mc.drv.groups = mc_attr_groups;
+	INIT_LIST_HEAD(&mc->comp_list);
+	ida_init(&mdev_id);
 
-	err = bus_register(&mc.bus);
+	mc->bus.name = "most",
+	mc->bus.match = most_match,
+	mc->drv.name = "most_core",
+	mc->drv.bus = &mc->bus,
+	mc->drv.groups = mc_attr_groups;
+	mc->dev.init_name = "most_bus";
+	mc->dev.release = release_most_sub;
+	err = device_register(&mc->dev);
 	if (err) {
-		dev_err(&mc.dev, "Cannot register most bus\n");
+		ida_destroy(&mdev_id);
+		put_device(&mc->dev);
 		return err;
 	}
-	err = driver_register(&mc.drv);
+
+	err = bus_register(&mc->bus);
 	if (err) {
-		dev_err(&mc.dev, "Cannot register core driver\n");
-		goto err_unregister_bus;
+		dev_err(&mc->dev, "Cannot register most bus\n");
+		goto err_unregister_device;
 	}
-	mc.dev.init_name = "most_bus";
-	mc.dev.release = release_most_sub;
-	if (device_register(&mc.dev)) {
-		err = -ENOMEM;
-		goto err_unregister_driver;
+	err = driver_register(&mc->drv);
+	if (err) {
+		dev_err(&mc->dev, "Cannot register core driver\n");
+		goto err_unregister_bus;
 	}
 	configfs_init();
 	return 0;
 
-err_unregister_driver:
-	driver_unregister(&mc.drv);
 err_unregister_bus:
-	bus_unregister(&mc.bus);
+	bus_unregister(&mc->bus);
+err_unregister_device:
+	device_unregister(&mc->dev);
+	ida_destroy(&mdev_id);
 	return err;
 }
 
 static void __exit most_exit(void)
 {
-	device_unregister(&mc.dev);
-	driver_unregister(&mc.drv);
-	bus_unregister(&mc.bus);
+	driver_unregister(&mc->drv);
+	bus_unregister(&mc->bus);
+	device_unregister(&mc->dev);
 	ida_destroy(&mdev_id);
 }
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

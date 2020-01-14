Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 674A813AE2C
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 16:58:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E0AC9860D5;
	Tue, 14 Jan 2020 15:58:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rZx5M-SYDrIe; Tue, 14 Jan 2020 15:58:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 52093860FF;
	Tue, 14 Jan 2020 15:58:21 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0853B1BF574
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 045C72050D
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mED1AuW6QT-o
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 3E49B20510
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:07 +0000 (UTC)
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
IronPort-SDR: 7YogENHerw+CAzZPnFHWsQHmI3/lVy+EooIUEnxqc6r/krm+n9HD2JIyGIpieolgvIrU7DntGH
 HL9y8YTRkW4f/FXa5L1FtKqhK9DNqVtXUq5BXKHvV2QnTninwBIQdVYTmPHY/5wWd6Xn4+YJYy
 Y1KkYXC+ehagGtWAVSrT8rjXhv3les72MlFb0w4fTmOutlfmNAPOgRm0xfhU3CZfboBBVNOAVy
 G77L1dkt3i8paOaA7hGdJ7uyQpqwxOOngE62LMkCvHZtnKC43WL4tTux5rjxX83B64rVLlWVOn
 wy0=
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="61883096"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jan 2020 08:58:07 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Jan 2020 08:58:06 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 14 Jan 2020 08:58:05 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v3 4/9] staging: most: move interface dev to private
 section
Date: Tue, 14 Jan 2020 16:57:53 +0100
Message-ID: <1579017478-3339-5-git-send-email-christian.gromm@microchip.com>
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

This patch moves the struct device of the interface structure to its
private section, because only the core should access it directly. For
other entities an API is provided.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v3:
	This patch has been added to the series.

 drivers/staging/most/core.c      | 68 ++++++++++++++++++++++++++--------------
 drivers/staging/most/dim2/dim2.c |  2 +-
 drivers/staging/most/most.h      |  6 ++--
 drivers/staging/most/usb/usb.c   |  5 +--
 4 files changed, 51 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 0a3ce29..4f60c09 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -74,11 +74,15 @@ struct most_channel {
 
 struct interface_private {
 	int dev_id;
+	struct device dev;
+	struct most_interface *iface;
 	char name[STRING_SIZE];
 	struct most_channel *channel[MAX_CHANNELS];
 	struct list_head channel_list;
 };
 
+#define to_iface_priv(d) container_of(d, struct interface_private, dev)
+
 static const struct {
 	int most_ch_data_type;
 	const char *name;
@@ -401,7 +405,7 @@ static ssize_t description_show(struct device *dev,
 				struct device_attribute *attr,
 				char *buf)
 {
-	struct most_interface *iface = to_most_interface(dev);
+	struct most_interface *iface = to_iface_priv(dev)->iface;
 
 	return snprintf(buf, PAGE_SIZE, "%s\n", iface->description);
 }
@@ -410,7 +414,7 @@ static ssize_t interface_show(struct device *dev,
 			      struct device_attribute *attr,
 			      char *buf)
 {
-	struct most_interface *iface = to_most_interface(dev);
+	struct most_interface *iface = to_iface_priv(dev)->iface;
 
 	switch (iface->interface) {
 	case ITYPE_LOOPBACK:
@@ -475,7 +479,7 @@ static int print_links(struct device *dev, void *data)
 	int offs = d->offs;
 	char *buf = d->buf;
 	struct most_channel *c;
-	struct most_interface *iface = to_most_interface(dev);
+	struct most_interface *iface = to_iface_priv(dev)->iface;
 
 	list_for_each_entry(c, &iface->p->channel_list, list) {
 		if (c->pipe0.comp) {
@@ -483,7 +487,7 @@ static int print_links(struct device *dev, void *data)
 					 PAGE_SIZE - offs,
 					 "%s:%s:%s\n",
 					 c->pipe0.comp->name,
-					 dev_name(&iface->dev),
+					 dev_name(&iface->p->dev),
 					 dev_name(&c->dev));
 		}
 		if (c->pipe1.comp) {
@@ -491,7 +495,7 @@ static int print_links(struct device *dev, void *data)
 					 PAGE_SIZE - offs,
 					 "%s:%s:%s\n",
 					 c->pipe1.comp->name,
-					 dev_name(&iface->dev),
+					 dev_name(&iface->p->dev),
 					 dev_name(&c->dev));
 		}
 	}
@@ -533,7 +537,7 @@ static struct most_channel *get_channel(char *mdev, char *mdev_ch)
 	dev = bus_find_device_by_name(&mc.bus, NULL, mdev);
 	if (!dev)
 		return NULL;
-	iface = to_most_interface(dev);
+	iface = to_iface_priv(dev)->iface;
 	list_for_each_entry_safe(c, tmp, &iface->p->channel_list, list) {
 		if (!strcmp(dev_name(&c->dev), mdev_ch))
 			return c;
@@ -1231,7 +1235,7 @@ static int disconnect_channels(struct device *dev, void *data)
 	struct most_channel *c, *tmp;
 	struct most_component *comp = data;
 
-	iface = to_most_interface(dev);
+	iface = to_iface_priv(dev)->iface;
 	list_for_each_entry_safe(c, tmp, &iface->p->channel_list, list) {
 		if (c->pipe0.comp == comp || c->pipe1.comp == comp)
 			comp->disconnect_channel(c->iface, c->channel_id);
@@ -1260,16 +1264,35 @@ int most_deregister_component(struct most_component *comp)
 }
 EXPORT_SYMBOL_GPL(most_deregister_component);
 
-static void release_interface(struct device *dev)
+static void release_interface_priv(struct device *dev)
 {
+	struct interface_private *p = to_iface_priv(dev);
+
 	dev_info(&mc.dev, "releasing interface dev %s...\n", dev_name(dev));
+	kfree(p);
 }
 
 static void release_channel(struct device *dev)
 {
+	struct most_channel *c = to_channel(dev);
+
 	dev_info(&mc.dev, "releasing channel dev %s...\n", dev_name(dev));
+	kfree(c);
 }
 
+struct device *most_get_iface_dev(struct most_interface *iface)
+{
+	get_device(&iface->p->dev);
+	return &iface->p->dev;
+}
+EXPORT_SYMBOL_GPL(most_get_iface_dev);
+
+void most_put_iface_dev(struct device *dev)
+{
+	put_device(dev);
+}
+EXPORT_SYMBOL_GPL(most_put_iface_dev);
+
 /**
  * most_register_interface - registers an interface with core
  * @iface: device interface
@@ -1302,16 +1325,17 @@ int most_register_interface(struct most_interface *iface)
 	}
 
 	INIT_LIST_HEAD(&iface->p->channel_list);
+	iface->p->iface = iface;
 	iface->p->dev_id = id;
 	strscpy(iface->p->name, iface->description, sizeof(iface->p->name));
-	iface->dev.init_name = iface->p->name;
-	iface->dev.bus = &mc.bus;
-	iface->dev.parent = &mc.dev;
-	iface->dev.groups = interface_attr_groups;
-	iface->dev.release = release_interface;
-	if (device_register(&iface->dev)) {
-		dev_err(&mc.dev, "registering iface->dev failed\n");
-		kfree(iface->p);
+	iface->p->dev.init_name = iface->p->name;
+	iface->p->dev.bus = &mc.bus;
+	iface->p->dev.parent = &mc.dev;
+	iface->p->dev.groups = interface_attr_groups;
+	iface->p->dev.release = release_interface_priv;
+	if (device_register(&iface->p->dev)) {
+		dev_err(&mc.dev, "registering iface->p->dev failed\n");
+		put_device(&iface->p->dev);
 		ida_simple_remove(&mdev_id, id);
 		return -ENOMEM;
 	}
@@ -1327,7 +1351,7 @@ int most_register_interface(struct most_interface *iface)
 		else
 			snprintf(c->name, STRING_SIZE, "%s", name_suffix);
 		c->dev.init_name = c->name;
-		c->dev.parent = &iface->dev;
+		c->dev.parent = &iface->p->dev;
 		c->dev.groups = channel_attr_groups;
 		c->dev.release = release_channel;
 		iface->p->channel[i] = c;
@@ -1361,16 +1385,14 @@ int most_register_interface(struct most_interface *iface)
 	return 0;
 
 err_free_most_channel:
-	kfree(c);
+	put_device(&c->dev);
 
 err_free_resources:
 	while (i > 0) {
 		c = iface->p->channel[--i];
 		device_unregister(&c->dev);
-		kfree(c);
 	}
-	kfree(iface->p);
-	device_unregister(&iface->dev);
+	device_unregister(&iface->p->dev);
 	ida_simple_remove(&mdev_id, id);
 	return -ENOMEM;
 }
@@ -1400,12 +1422,10 @@ void most_deregister_interface(struct most_interface *iface)
 		c->pipe1.comp = NULL;
 		list_del(&c->list);
 		device_unregister(&c->dev);
-		kfree(c);
 	}
 
 	ida_simple_remove(&mdev_id, iface->p->dev_id);
-	kfree(iface->p);
-	device_unregister(&iface->dev);
+	device_unregister(&iface->p->dev);
 }
 EXPORT_SYMBOL_GPL(most_deregister_interface);
 
diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
index 9eb10fc..b4d231c 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -855,7 +855,7 @@ static int dim2_probe(struct platform_device *pdev)
 	dev->most_iface.request_netinfo = request_netinfo;
 	dev->most_iface.driver_dev = &pdev->dev;
 	dev->dev.init_name = "dim2_state";
-	dev->dev.parent = &dev->most_iface.dev;
+	dev->dev.parent = most_get_iface_dev(&dev->most_iface);
 
 	ret = most_register_interface(&dev->most_iface);
 	if (ret) {
diff --git a/drivers/staging/most/most.h b/drivers/staging/most/most.h
index d93c6ce..26fdbab 100644
--- a/drivers/staging/most/most.h
+++ b/drivers/staging/most/most.h
@@ -229,7 +229,6 @@ struct mbo {
  * @priv Private field used by mostcore to store context information.
  */
 struct most_interface {
-	struct device dev;
 	struct device *driver_dev;
 	struct module *mod;
 	enum most_interface_type interface;
@@ -251,8 +250,6 @@ struct most_interface {
 	struct interface_private *p;
 };
 
-#define to_most_interface(d) container_of(d, struct most_interface, dev)
-
 /**
  * struct most_component - identifies a loadable component for the mostcore
  * @list: list_head
@@ -276,6 +273,9 @@ struct most_component {
 	int (*cfg_complete)(void);
 };
 
+struct device *most_get_iface_dev(struct most_interface *iface);
+void most_put_iface_dev(struct device *dev);
+
 /**
  * most_register_interface - Registers instance of the interface.
  * @iface: Pointer to the interface instance description.
diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 491b38e..fe3384a 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -1026,7 +1026,7 @@ static void release_dci(struct device *dev)
  * hdm_probe - probe function of USB device driver
  * @interface: Interface of the attached USB device
  * @id: Pointer to the USB ID table.
- *
+*
  * This allocates and initializes the device instance, adds the new
  * entry to the internal list, scans the USB descriptors and registers
  * the interface with the core.
@@ -1151,7 +1151,7 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 		}
 
 		mdev->dci->dev.init_name = "dci";
-		mdev->dci->dev.parent = &mdev->iface.dev;
+		mdev->dci->dev.parent = most_get_iface_dev(&mdev->iface);
 		mdev->dci->dev.groups = dci_attr_groups;
 		mdev->dci->dev.release = release_dci;
 		if (device_register(&mdev->dci->dev)) {
@@ -1205,6 +1205,7 @@ static void hdm_disconnect(struct usb_interface *interface)
 	del_timer_sync(&mdev->link_stat_timer);
 	cancel_work_sync(&mdev->poll_work_obj);
 
+	most_put_iface_dev(mdev->dci->dev.parent);
 	device_unregister(&mdev->dci->dev);
 	most_deregister_interface(&mdev->iface);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

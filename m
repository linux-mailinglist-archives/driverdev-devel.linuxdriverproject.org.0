Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24615146D0F
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 16:38:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 52EF6866A9;
	Thu, 23 Jan 2020 15:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rTjuT0w_Mx7c; Thu, 23 Jan 2020 15:38:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A9FEE86892;
	Thu, 23 Jan 2020 15:38:38 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D69B41BF3B9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CF0B8882CC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eALqM79nh2Ah
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B5F10882EB
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:31 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 7E0thXWkOhZdVQZUHZWK0Cvg6dNYWs2xEQrPgIKJpo/Wn4RYaK0xf05XCcI6U5mMCk1Si4RORs
 guPLFjctsvHDYq9Vm9H1wCXd6tRRhLJ3kOcY83+m8G8fl3bEEfyj1PwHKusyBxZwx98guUBiDS
 0sMkov81mklgaIyaKBxVnoxXhC9YB5wjD6JKgeUkYrSUr+GTKTbcHOKgLEAj+owPKecVkhTeNQ
 dNW47FV/k0hBMz1O0WgfLT80s31lb2BKPVzS4Kv7Sv8tg5Tvkb4/VUByWw9RE/cLtLDqkK0kyP
 ZwM=
X-IronPort-AV: E=Sophos;i="5.70,354,1574146800"; d="scan'208";a="63535591"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jan 2020 08:38:30 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 23 Jan 2020 08:38:30 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 23 Jan 2020 08:38:29 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v4 01/10] staging: most: remove device from interface structure
Date: Thu, 23 Jan 2020 16:38:17 +0100
Message-ID: <1579793906-5054-2-git-send-email-christian.gromm@microchip.com>
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

This patch makes the adapter drivers use their own device structures
when registering a most interface with the core module.
With this the module that actually operates the physical device is the
owner of the device.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v4:
	This patch has beed added to the series

 drivers/staging/most/core.c      | 45 ++++++++++++++++++----------------------
 drivers/staging/most/dim2/dim2.c |  2 +-
 drivers/staging/most/most.h      |  4 +---
 drivers/staging/most/usb/usb.c   | 20 ++++++++++++++----
 4 files changed, 38 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 5772f89..d907f93 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -401,7 +401,7 @@ static ssize_t description_show(struct device *dev,
 				struct device_attribute *attr,
 				char *buf)
 {
-	struct most_interface *iface = to_most_interface(dev);
+	struct most_interface *iface = dev_get_drvdata(dev);
 
 	return snprintf(buf, PAGE_SIZE, "%s\n", iface->description);
 }
@@ -410,7 +410,7 @@ static ssize_t interface_show(struct device *dev,
 			      struct device_attribute *attr,
 			      char *buf)
 {
-	struct most_interface *iface = to_most_interface(dev);
+	struct most_interface *iface = dev_get_drvdata(dev);
 
 	switch (iface->interface) {
 	case ITYPE_LOOPBACK:
@@ -475,7 +475,7 @@ static int print_links(struct device *dev, void *data)
 	int offs = d->offs;
 	char *buf = d->buf;
 	struct most_channel *c;
-	struct most_interface *iface = to_most_interface(dev);
+	struct most_interface *iface = dev_get_drvdata(dev);
 
 	list_for_each_entry(c, &iface->p->channel_list, list) {
 		if (c->pipe0.comp) {
@@ -483,7 +483,7 @@ static int print_links(struct device *dev, void *data)
 					 PAGE_SIZE - offs,
 					 "%s:%s:%s\n",
 					 c->pipe0.comp->name,
-					 dev_name(&iface->dev),
+					 dev_name(iface->dev),
 					 dev_name(&c->dev));
 		}
 		if (c->pipe1.comp) {
@@ -491,7 +491,7 @@ static int print_links(struct device *dev, void *data)
 					 PAGE_SIZE - offs,
 					 "%s:%s:%s\n",
 					 c->pipe1.comp->name,
-					 dev_name(&iface->dev),
+					 dev_name(iface->dev),
 					 dev_name(&c->dev));
 		}
 	}
@@ -533,7 +533,7 @@ static struct most_channel *get_channel(char *mdev, char *mdev_ch)
 	dev = bus_find_device_by_name(&mc.bus, NULL, mdev);
 	if (!dev)
 		return NULL;
-	iface = to_most_interface(dev);
+	iface = dev_get_drvdata(dev);
 	list_for_each_entry_safe(c, tmp, &iface->p->channel_list, list) {
 		if (!strcmp(dev_name(&c->dev), mdev_ch))
 			return c;
@@ -1231,7 +1231,7 @@ static int disconnect_channels(struct device *dev, void *data)
 	struct most_channel *c, *tmp;
 	struct most_component *comp = data;
 
-	iface = to_most_interface(dev);
+	iface = dev_get_drvdata(dev);
 	list_for_each_entry_safe(c, tmp, &iface->p->channel_list, list) {
 		if (c->pipe0.comp == comp || c->pipe1.comp == comp)
 			comp->disconnect_channel(c->iface, c->channel_id);
@@ -1260,14 +1260,11 @@ int most_deregister_component(struct most_component *comp)
 }
 EXPORT_SYMBOL_GPL(most_deregister_component);
 
-static void release_interface(struct device *dev)
-{
-	dev_info(&mc.dev, "releasing interface dev %s...\n", dev_name(dev));
-}
-
 static void release_channel(struct device *dev)
 {
-	dev_info(&mc.dev, "releasing channel dev %s...\n", dev_name(dev));
+	struct most_channel *c = to_channel(dev);
+
+	kfree(c);
 }
 
 /**
@@ -1304,14 +1301,14 @@ int most_register_interface(struct most_interface *iface)
 	INIT_LIST_HEAD(&iface->p->channel_list);
 	iface->p->dev_id = id;
 	strscpy(iface->p->name, iface->description, sizeof(iface->p->name));
-	iface->dev.init_name = iface->p->name;
-	iface->dev.bus = &mc.bus;
-	iface->dev.parent = &mc.dev;
-	iface->dev.groups = interface_attr_groups;
-	iface->dev.release = release_interface;
-	if (device_register(&iface->dev)) {
+	iface->dev->bus = &mc.bus;
+	iface->dev->parent = &mc.dev;
+	iface->dev->groups = interface_attr_groups;
+	dev_set_drvdata(iface->dev, iface);
+	if (device_register(iface->dev)) {
 		dev_err(&mc.dev, "registering iface->dev failed\n");
 		kfree(iface->p);
+		put_device(iface->dev);
 		ida_simple_remove(&mdev_id, id);
 		return -ENOMEM;
 	}
@@ -1327,7 +1324,7 @@ int most_register_interface(struct most_interface *iface)
 		else
 			snprintf(c->name, STRING_SIZE, "%s", name_suffix);
 		c->dev.init_name = c->name;
-		c->dev.parent = &iface->dev;
+		c->dev.parent = iface->dev;
 		c->dev.groups = channel_attr_groups;
 		c->dev.release = release_channel;
 		iface->p->channel[i] = c;
@@ -1361,16 +1358,15 @@ int most_register_interface(struct most_interface *iface)
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
 	kfree(iface->p);
-	device_unregister(&iface->dev);
+	device_unregister(iface->dev);
 	ida_simple_remove(&mdev_id, id);
 	return -ENOMEM;
 }
@@ -1400,12 +1396,11 @@ void most_deregister_interface(struct most_interface *iface)
 		c->pipe1.comp = NULL;
 		list_del(&c->list);
 		device_unregister(&c->dev);
-		kfree(c);
 	}
 
 	ida_simple_remove(&mdev_id, iface->p->dev_id);
 	kfree(iface->p);
-	device_unregister(&iface->dev);
+	device_unregister(iface->dev);
 }
 EXPORT_SYMBOL_GPL(most_deregister_interface);
 
diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
index 9eb10fc..3be21f33 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -854,8 +854,8 @@ static int dim2_probe(struct platform_device *pdev)
 	dev->most_iface.poison_channel = poison_channel;
 	dev->most_iface.request_netinfo = request_netinfo;
 	dev->most_iface.driver_dev = &pdev->dev;
+	dev->most_iface.dev = &dev->dev;
 	dev->dev.init_name = "dim2_state";
-	dev->dev.parent = &dev->most_iface.dev;
 
 	ret = most_register_interface(&dev->most_iface);
 	if (ret) {
diff --git a/drivers/staging/most/most.h b/drivers/staging/most/most.h
index d93c6ce..232e01b 100644
--- a/drivers/staging/most/most.h
+++ b/drivers/staging/most/most.h
@@ -229,7 +229,7 @@ struct mbo {
  * @priv Private field used by mostcore to store context information.
  */
 struct most_interface {
-	struct device dev;
+	struct device *dev;
 	struct device *driver_dev;
 	struct module *mod;
 	enum most_interface_type interface;
@@ -251,8 +251,6 @@ struct most_interface {
 	struct interface_private *p;
 };
 
-#define to_most_interface(d) container_of(d, struct most_interface, dev)
-
 /**
  * struct most_component - identifies a loadable component for the mostcore
  * @list: list_head
diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 491b38e..3c8ae17 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -101,6 +101,7 @@ struct clear_hold_work {
  * @poll_work_obj: work for polling link status
  */
 struct most_dev {
+	struct device dev;
 	struct usb_device *usb_device;
 	struct most_interface iface;
 	struct most_channel_capability *cap;
@@ -122,6 +123,7 @@ struct most_dev {
 };
 
 #define to_mdev(d) container_of(d, struct most_dev, iface)
+#define to_mdev_from_dev(d) container_of(d, struct most_dev, dev)
 #define to_mdev_from_work(w) container_of(w, struct most_dev, poll_work_obj)
 
 static void wq_clear_halt(struct work_struct *wq_obj);
@@ -1022,6 +1024,12 @@ static void release_dci(struct device *dev)
 	kfree(dci);
 }
 
+static void release_mdev(struct device *dev)
+{
+	struct most_dev *mdev = to_mdev_from_dev(dev);
+
+	kfree(mdev);
+}
 /**
  * hdm_probe - probe function of USB device driver
  * @interface: Interface of the attached USB device
@@ -1060,6 +1068,7 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 	mdev->link_stat_timer.expires = jiffies + (2 * HZ);
 
 	mdev->iface.mod = hdm_usb_fops.owner;
+	mdev->iface.dev = &mdev->dev;
 	mdev->iface.driver_dev = &interface->dev;
 	mdev->iface.interface = ITYPE_USB;
 	mdev->iface.configure = hdm_configure_channel;
@@ -1078,6 +1087,9 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 		 usb_dev->config->desc.bConfigurationValue,
 		 usb_iface_desc->desc.bInterfaceNumber);
 
+	mdev->dev.init_name = mdev->description;
+	mdev->dev.parent = &interface->dev;
+	mdev->dev.release = release_mdev;
 	mdev->conf = kcalloc(num_endpoints, sizeof(*mdev->conf), GFP_KERNEL);
 	if (!mdev->conf)
 		goto err_free_mdev;
@@ -1151,7 +1163,7 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 		}
 
 		mdev->dci->dev.init_name = "dci";
-		mdev->dci->dev.parent = &mdev->iface.dev;
+		mdev->dci->dev.parent = get_device(mdev->iface.dev);
 		mdev->dci->dev.groups = dci_attr_groups;
 		mdev->dci->dev.release = release_dci;
 		if (device_register(&mdev->dci->dev)) {
@@ -1165,7 +1177,7 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 	mutex_unlock(&mdev->io_mutex);
 	return 0;
 err_free_dci:
-	kfree(mdev->dci);
+	put_device(&mdev->dci->dev);
 err_free_busy_urbs:
 	kfree(mdev->busy_urbs);
 err_free_ep_address:
@@ -1175,7 +1187,7 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 err_free_conf:
 	kfree(mdev->conf);
 err_free_mdev:
-	kfree(mdev);
+	put_device(&mdev->dev);
 err_out_of_memory:
 	if (ret == 0 || ret == -ENOMEM) {
 		ret = -ENOMEM;
@@ -1212,7 +1224,7 @@ static void hdm_disconnect(struct usb_interface *interface)
 	kfree(mdev->cap);
 	kfree(mdev->conf);
 	kfree(mdev->ep_address);
-	kfree(mdev);
+	put_device(&mdev->dev);
 }
 
 static struct usb_driver hdm_usb = {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

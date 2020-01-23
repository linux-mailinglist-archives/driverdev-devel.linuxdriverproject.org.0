Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807E7146D11
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 16:38:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EEC6B88390;
	Thu, 23 Jan 2020 15:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 48MxSic7Rj8h; Thu, 23 Jan 2020 15:38:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 18B908833F;
	Thu, 23 Jan 2020 15:38:43 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 58D851BF3B9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 521DF882EB
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kXGEybtZxT-n
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 96AE4882CC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:34 +0000 (UTC)
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
IronPort-SDR: vTgMm1jMrLm3S43ovHhdYl2HasWwZYVdMub3CDEiqRZTc74RG01WT5J5UaRn7SRRPrhMKDhs5D
 cLPxZNJU8BTvZvIf+LUKaIQ4P/n4MyjN3l9bjjoHdP6WqETNf2aPVcDpucp4/Qo020s3+aEuY+
 wECNtncCF7KyQyGcOrbjh53gfHcRAWk+h0cK8mZYrKODkB81Hv3dx91tMC0SQFOZRPDFP9yMzL
 LQN+fTEeCO6+3BmBa76Cehv3+R7Ww+Q7GmcX25eLzDQrpVm6pn0tE/s1OAyeGgmf/AwCJ2hClv
 ZMg=
X-IronPort-AV: E=Sophos;i="5.70,354,1574146800"; d="scan'208";a="63535598"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jan 2020 08:38:34 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 23 Jan 2020 08:38:33 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 23 Jan 2020 08:38:33 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v4 04/10] staging: most: core: remove container struct
Date: Thu, 23 Jan 2020 16:38:20 +0100
Message-ID: <1579793906-5054-5-git-send-email-christian.gromm@microchip.com>
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

This patch declares and initializes the bus, bus driver and the
component list without a container struct, as it introduces an
unnecessary level of abstraction.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v4:
	This patch has been added to the series

 drivers/staging/most/core.c | 66 ++++++++++++++++++++++-----------------------
 1 file changed, 32 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index a17ea4c..a59a35c5 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -27,14 +27,7 @@
 
 static struct ida mdev_id;
 static int dummy_num_buffers;
-
-static struct mostcore {
-	struct device_driver drv;
-	struct bus_type bus;
-	struct list_head comp_list;
-} mc;
-
-#define to_driver(d) container_of(d, struct mostcore, drv)
+static struct list_head comp_list;
 
 struct pipe {
 	struct most_component *comp;
@@ -456,7 +449,7 @@ static struct most_component *match_component(char *name)
 {
 	struct most_component *comp;
 
-	list_for_each_entry(comp, &mc.comp_list, list) {
+	list_for_each_entry(comp, &comp_list, list) {
 		if (!strcmp(comp->name, name))
 			return comp;
 	}
@@ -498,11 +491,24 @@ static int print_links(struct device *dev, void *data)
 	return 0;
 }
 
+static int most_match(struct device *dev, struct device_driver *drv)
+{
+	if (!strcmp(dev_name(dev), "most"))
+		return 0;
+	else
+		return 1;
+}
+
+static struct bus_type mostbus = {
+	.name = "most",
+	.match = most_match,
+};
+
 static ssize_t links_show(struct device_driver *drv, char *buf)
 {
 	struct show_links_data d = { .buf = buf };
 
-	bus_for_each_dev(&mc.bus, NULL, &d, print_links);
+	bus_for_each_dev(&mostbus, NULL, &d, print_links);
 	return d.offs;
 }
 
@@ -511,7 +517,7 @@ static ssize_t components_show(struct device_driver *drv, char *buf)
 	struct most_component *comp;
 	int offs = 0;
 
-	list_for_each_entry(comp, &mc.comp_list, list) {
+	list_for_each_entry(comp, &comp_list, list) {
 		offs += snprintf(buf + offs, PAGE_SIZE - offs, "%s\n",
 				 comp->name);
 	}
@@ -529,7 +535,7 @@ static struct most_channel *get_channel(char *mdev, char *mdev_ch)
 	struct most_interface *iface;
 	struct most_channel *c, *tmp;
 
-	dev = bus_find_device_by_name(&mc.bus, NULL, mdev);
+	dev = bus_find_device_by_name(&mostbus, NULL, mdev);
 	if (!dev)
 		return NULL;
 	put_device(dev);
@@ -721,13 +727,11 @@ static const struct attribute_group *mc_attr_groups[] = {
 	NULL,
 };
 
-static int most_match(struct device *dev, struct device_driver *drv)
-{
-	if (!strcmp(dev_name(dev), "most"))
-		return 0;
-	else
-		return 1;
-}
+static struct device_driver mostbus_driver = {
+	.name = "most_core",
+	.bus = &mostbus,
+	.groups = mc_attr_groups,
+};
 
 static inline void trash_mbo(struct mbo *mbo)
 {
@@ -1220,7 +1224,7 @@ int most_register_component(struct most_component *comp)
 		pr_err("Bad component\n");
 		return -EINVAL;
 	}
-	list_add_tail(&comp->list, &mc.comp_list);
+	list_add_tail(&comp->list, &comp_list);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(most_register_component);
@@ -1254,7 +1258,7 @@ int most_deregister_component(struct most_component *comp)
 		return -EINVAL;
 	}
 
-	bus_for_each_dev(&mc.bus, NULL, comp, disconnect_channels);
+	bus_for_each_dev(&mostbus, NULL, comp, disconnect_channels);
 	list_del(&comp->list);
 	return 0;
 }
@@ -1301,7 +1305,7 @@ int most_register_interface(struct most_interface *iface)
 	INIT_LIST_HEAD(&iface->p->channel_list);
 	iface->p->dev_id = id;
 	strscpy(iface->p->name, iface->description, sizeof(iface->p->name));
-	iface->dev->bus = &mc.bus;
+	iface->dev->bus = &mostbus;
 	iface->dev->groups = interface_attr_groups;
 	dev_set_drvdata(iface->dev, iface);
 	if (device_register(iface->dev)) {
@@ -1453,21 +1457,15 @@ static int __init most_init(void)
 {
 	int err;
 
-	INIT_LIST_HEAD(&mc.comp_list);
+	INIT_LIST_HEAD(&comp_list);
 	ida_init(&mdev_id);
 
-	mc.bus.name = "most",
-	mc.bus.match = most_match,
-	mc.drv.name = "most_core",
-	mc.drv.bus = &mc.bus,
-	mc.drv.groups = mc_attr_groups;
-
-	err = bus_register(&mc.bus);
+	err = bus_register(&mostbus);
 	if (err) {
 		pr_err("Cannot register most bus\n");
 		return err;
 	}
-	err = driver_register(&mc.drv);
+	err = driver_register(&mostbus_driver);
 	if (err) {
 		pr_err("Cannot register core driver\n");
 		goto err_unregister_bus;
@@ -1476,14 +1474,14 @@ static int __init most_init(void)
 	return 0;
 
 err_unregister_bus:
-	bus_unregister(&mc.bus);
+	bus_unregister(&mostbus);
 	return err;
 }
 
 static void __exit most_exit(void)
 {
-	driver_unregister(&mc.drv);
-	bus_unregister(&mc.bus);
+	driver_unregister(&mostbus_driver);
+	bus_unregister(&mostbus);
 	ida_destroy(&mdev_id);
 }
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

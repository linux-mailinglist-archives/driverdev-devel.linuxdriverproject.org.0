Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6B813AE23
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 16:58:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7374B860DB;
	Tue, 14 Jan 2020 15:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K5sCvwQri0cC; Tue, 14 Jan 2020 15:58:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E2B6886091;
	Tue, 14 Jan 2020 15:58:10 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B2E2F1BF574
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AF0E385FC4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mgH-LWE9nX3p
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C16FA853E3
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:06 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: sJ+wWABMvPesUEKMGXb6ZGqYJq2nKrzzt5TN8UxQHDfI+J0gECasZ/EeEi2j93hbATvhr+YgZm
 6PkoZbFjQ/u/BU7nujRkRHuxZDqZmLLCCeqTF7D4EXSOv1AXREMY6T55cj5h+BKZz2X9xYu7nO
 hyOCC5/7faOclIekQom7mELVl/qY8OfIEvzl6N2E9J9AzDi2u9JZSrVHSbD3JTFuOWrP+vQWak
 2zhg2fL5hDDtHYv3kDhX22b/6xwL1E0CtHSAxNPFzzxty9pvb48mC96DxS34tORn1r3d4B4hTq
 NRE=
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="63208297"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jan 2020 08:58:05 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Jan 2020 08:58:05 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 14 Jan 2020 08:58:04 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v3 3/9] staging: most: core: remove noisy log messages
Date: Tue, 14 Jan 2020 16:57:52 +0100
Message-ID: <1579017478-3339-4-git-send-email-christian.gromm@microchip.com>
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

In order to not generate unnecessary noise in the kernel log,this patch
removes debug log messages.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v3:
	This patch has been added to the series.

 drivers/staging/most/core.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 9839b8c..0a3ce29 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -1221,7 +1221,6 @@ int most_register_component(struct most_component *comp)
 		return -EINVAL;
 	}
 	list_add_tail(&comp->list, &mc.comp_list);
-	dev_info(&mc.dev, "registered new core component %s\n", comp->name);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(most_register_component);
@@ -1257,7 +1256,6 @@ int most_deregister_component(struct most_component *comp)
 
 	bus_for_each_dev(&mc.bus, NULL, comp, disconnect_channels);
 	list_del(&comp->list);
-	dev_info(&mc.dev, "deregistering component %s\n", comp->name);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(most_deregister_component);
@@ -1359,8 +1357,6 @@ int most_register_interface(struct most_interface *iface)
 			goto err_free_most_channel;
 		}
 	}
-	dev_info(&mc.dev, "registered new device mdev%d (%s)\n",
-		 id, iface->description);
 	most_interface_register_notify(iface->description);
 	return 0;
 
@@ -1392,8 +1388,6 @@ void most_deregister_interface(struct most_interface *iface)
 	int i;
 	struct most_channel *c;
 
-	dev_info(&mc.dev, "deregistering device %s (%s)\n", dev_name(&iface->dev),
-		 iface->description);
 	for (i = 0; i < iface->num_channels; i++) {
 		c = iface->p->channel[i];
 		if (c->pipe0.comp)
@@ -1470,7 +1464,6 @@ static int __init most_init(void)
 {
 	int err;
 
-	dev_info(&mc.dev, "init()\n");
 	INIT_LIST_HEAD(&mc.comp_list);
 	ida_init(&mdev_id);
 
@@ -1508,7 +1501,6 @@ static int __init most_init(void)
 
 static void __exit most_exit(void)
 {
-	dev_info(&mc.dev, "exit core module\n");
 	device_unregister(&mc.dev);
 	driver_unregister(&mc.drv);
 	bus_unregister(&mc.bus);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

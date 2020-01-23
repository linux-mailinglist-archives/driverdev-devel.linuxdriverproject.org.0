Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 745BD146D12
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 16:38:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 61EC6221D9;
	Thu, 23 Jan 2020 15:38:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D9chnwe1I-Ok; Thu, 23 Jan 2020 15:38:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 470AB203F5;
	Thu, 23 Jan 2020 15:38:45 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ACB2B1BF3B9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A5A95882CC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SltD-wRDui0C
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DD91788309
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:35 +0000 (UTC)
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
IronPort-SDR: bMqZnZDEraJBxE8nIYON0pkYG69kMWsh9rQ4mO00Db7QAJXzQyBJ/ScP87JLrxQZ5t9B1RvuhQ
 Gu6NhqU9z3TLQ5KNGUr65czbprxQNlHSSDnMuLbV91LknnhY01r4BCY16nYr5TMIoy7e70wKgq
 H4L3nE3O63RionxHjRqPHPzxnnmZDF8MsEJCSyxpdX1UsNtdGQHvkBvKOMMtMf1HNPtPzJfzFU
 D+0tLZNVwDPziAo1ircyG4XYuGU2fk+JCCb3C0u3N2MBZeB4FeVenPEJFSba9l8NDFu5NgOmlp
 nGU=
X-IronPort-AV: E=Sophos;i="5.70,354,1574146800"; d="scan'208";a="61987997"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jan 2020 08:38:35 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 23 Jan 2020 08:38:34 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 23 Jan 2020 08:38:34 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v4 05/10] staging: most: core: fix logging messages
Date: Thu, 23 Jan 2020 16:38:21 +0100
Message-ID: <1579793906-5054-6-git-send-email-christian.gromm@microchip.com>
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

This patch fixes the module's logging messages.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v4:
	This patch has beed added to the series

 drivers/staging/most/core.c | 28 +++++++++++++---------------
 1 file changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index a59a35c5..13ab4eece 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -142,7 +142,7 @@ static void flush_channel_fifos(struct most_channel *c)
 	spin_unlock_irqrestore(&c->fifo_lock, hf_flags);
 
 	if (unlikely((!list_empty(&c->fifo) || !list_empty(&c->halt_fifo))))
-		dev_warn(&c->dev, "fifo | trash fifo not empty\n");
+		dev_warn(&c->dev, "Channel or trash fifo not empty\n");
 }
 
 /**
@@ -628,7 +628,7 @@ int most_set_cfg_datatype(char *mdev, char *mdev_ch, char *buf)
 	}
 
 	if (i == ARRAY_SIZE(ch_data_type))
-		dev_warn(&c->dev, "invalid attribute settings\n");
+		dev_warn(&c->dev, "Invalid attribute settings\n");
 	return 0;
 }
 
@@ -798,7 +798,7 @@ static int hdm_enqueue_thread(void *data)
 		mutex_unlock(&c->nq_mutex);
 
 		if (unlikely(ret)) {
-			dev_err(&c->dev, "hdm enqueue failed\n");
+			dev_err(&c->dev, "Buffer enqueue failed\n");
 			nq_hdm_mbo(mbo);
 			c->hdm_enqueue_task = NULL;
 			return 0;
@@ -925,7 +925,7 @@ static int arm_mbo_chain(struct most_channel *c, int dir,
 void most_submit_mbo(struct mbo *mbo)
 {
 	if (WARN_ONCE(!mbo || !mbo->context,
-		      "bad mbo or missing channel reference\n"))
+		      "Bad buffer or missing channel reference\n"))
 		return;
 
 	nq_hdm_mbo(mbo);
@@ -944,8 +944,6 @@ static void most_write_completion(struct mbo *mbo)
 	struct most_channel *c;
 
 	c = mbo->context;
-	if (mbo->status == MBO_E_INVAL)
-		dev_warn(&c->dev, "Tx MBO status: invalid\n");
 	if (unlikely(c->is_poisoned || (mbo->status == MBO_E_CLOSE)))
 		trash_mbo(mbo);
 	else
@@ -1104,14 +1102,14 @@ int most_start_channel(struct most_interface *iface, int id,
 		goto out; /* already started by another component */
 
 	if (!try_module_get(iface->mod)) {
-		dev_err(&c->dev, "failed to acquire HDM lock\n");
+		dev_err(&c->dev, "Failed to acquire HDM lock\n");
 		mutex_unlock(&c->start_mutex);
 		return -ENOLCK;
 	}
 
 	c->cfg.extra_len = 0;
 	if (c->iface->configure(c->iface, c->channel_id, &c->cfg)) {
-		dev_err(&c->dev, "channel configuration failed. Go check settings...\n");
+		dev_err(&c->dev, "Channel configuration failed. Go check settings...\n");
 		ret = -EINVAL;
 		goto err_put_module;
 	}
@@ -1185,7 +1183,7 @@ int most_stop_channel(struct most_interface *iface, int id,
 
 	c->is_poisoned = true;
 	if (c->iface->poison_channel(c->iface, c->channel_id)) {
-		dev_err(&c->dev, "Cannot stop channel %d of mdev %s\n", c->channel_id,
+		dev_err(&c->dev, "Failed to stop channel %d of interface %s\n", c->channel_id,
 			c->iface->description);
 		mutex_unlock(&c->start_mutex);
 		return -EAGAIN;
@@ -1195,7 +1193,7 @@ int most_stop_channel(struct most_interface *iface, int id,
 
 #ifdef CMPL_INTERRUPTIBLE
 	if (wait_for_completion_interruptible(&c->cleanup)) {
-		dev_err(&c->dev, "Interrupted while clean up ch %d\n", c->channel_id);
+		dev_err(&c->dev, "Interrupted while cleaning up channel %d\n", c->channel_id);
 		mutex_unlock(&c->start_mutex);
 		return -EINTR;
 	}
@@ -1292,7 +1290,7 @@ int most_register_interface(struct most_interface *iface)
 
 	id = ida_simple_get(&mdev_id, 0, 0, GFP_KERNEL);
 	if (id < 0) {
-		dev_err(iface->dev, "Failed to alloc mdev ID\n");
+		dev_err(iface->dev, "Failed to allocate device ID\n");
 		return id;
 	}
 
@@ -1309,7 +1307,7 @@ int most_register_interface(struct most_interface *iface)
 	iface->dev->groups = interface_attr_groups;
 	dev_set_drvdata(iface->dev, iface);
 	if (device_register(iface->dev)) {
-		dev_err(iface->dev, "registering iface->dev failed\n");
+		dev_err(iface->dev, "Failed to register interface device\n");
 		kfree(iface->p);
 		put_device(iface->dev);
 		ida_simple_remove(&mdev_id, id);
@@ -1353,7 +1351,7 @@ int most_register_interface(struct most_interface *iface)
 		mutex_init(&c->nq_mutex);
 		list_add_tail(&c->list, &iface->p->channel_list);
 		if (device_register(&c->dev)) {
-			dev_err(&c->dev, "registering c->dev failed\n");
+			dev_err(&c->dev, "Failed to register channel device\n");
 			goto err_free_most_channel;
 		}
 	}
@@ -1462,12 +1460,12 @@ static int __init most_init(void)
 
 	err = bus_register(&mostbus);
 	if (err) {
-		pr_err("Cannot register most bus\n");
+		pr_err("Failed to register most bus\n");
 		return err;
 	}
 	err = driver_register(&mostbus_driver);
 	if (err) {
-		pr_err("Cannot register core driver\n");
+		pr_err("Failed to register core driver\n");
 		goto err_unregister_bus;
 	}
 	configfs_init();
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

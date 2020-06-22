Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D498203264
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jun 2020 10:48:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A94F586C6D;
	Mon, 22 Jun 2020 08:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v9S24LdKi8d4; Mon, 22 Jun 2020 08:48:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C222786B84;
	Mon, 22 Jun 2020 08:48:26 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 70FA11BF488
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 67389203D1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ox+EZw2gBF0I
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by silver.osuosl.org (Postfix) with ESMTPS id 4BEE521539
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592815701; x=1624351701;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=qfH11fCS01Y2OM5VkZzk5Ff+KLKxD9Lo+LoV+z6XrUs=;
 b=hvsPzE7LOBcwD5juHkbqskGzYIHhZTOks9tPQ9K5VgjY/Fj+gWC+OAjq
 kj3PTulAlp+TtA6He/y5pPPhfx5S0/wClN3yiYKxY5al5B72mXKqrMlZo
 bw8aVMRN4GDXkJU4Fjj09FAFSfXM1LJoEJ6pDYAn32BfhZmasmnazHoep
 5lLWMD/aV2NxZVQJNExItB/0Z3uc5bbY0+zT75nNo5Sg38xcNl19IouNf
 ukrf30xkHug86k87lQx53i+eZcDr0lMfXJytlptAdvlGd7cftH1EILewK
 NqOxvOjAuxWACBceQEbNbA2Cu8ni0+1UVdQNUA2JArVSlLggp23l9OSop g==;
IronPort-SDR: 5of2TvsFp4Nu1KEtoByeT8vpvekw7GIB/U/e/rQVTPSgK+MTbbJjZez15Pzp6tWq+hMovNeJYs
 RZz2KBQUJ5EYqSIJ8oUslbpIX0stxx7DBQ4Bs5Nzpsi+lpsZwidlAE3FjAZ6Sz2EJXlFfjF+hD
 RRkR/K9B9+hfvEKqeH5lU8M0nH4nZKrVt+aWIGrghy9sZc/KCuC5AvNhouejWUJgS+r+t7dxaG
 14KyrXTKAi6837799IFXBWtpYJliGXacQXxKCDs2WuPYkickPgQ2nKjMGBbFJJQ3FZ7omUpw0G
 K7Q=
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="84541904"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Jun 2020 01:48:19 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 22 Jun 2020 01:48:19 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 22 Jun 2020 01:48:18 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 1/6] staging: most: cdev: remove noisy log messages
Date: Mon, 22 Jun 2020 10:48:10 +0200
Message-ID: <1592815695-19305-2-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592815695-19305-1-git-send-email-christian.gromm@microchip.com>
References: <1592815695-19305-1-git-send-email-christian.gromm@microchip.com>
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

This patch removes unnecessary log messages to avoid
noise in the kernel log.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/cdev/cdev.c | 26 ++++++--------------------
 1 file changed, 6 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index cc1e3de..093b44d 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -129,19 +129,16 @@ static int comp_open(struct inode *inode, struct file *filp)
 	     ((filp->f_flags & O_ACCMODE) != O_RDONLY)) ||
 	     ((c->cfg->direction == MOST_CH_TX) &&
 		((filp->f_flags & O_ACCMODE) != O_WRONLY))) {
-		pr_info("WARN: Access flags mismatch\n");
 		return -EACCES;
 	}
 
 	mutex_lock(&c->io_mutex);
 	if (!c->dev) {
-		pr_info("WARN: Device is destroyed\n");
 		mutex_unlock(&c->io_mutex);
 		return -ENODEV;
 	}
 
 	if (c->access_ref) {
-		pr_info("WARN: Device is busy\n");
 		mutex_unlock(&c->io_mutex);
 		return -EBUSY;
 	}
@@ -328,10 +325,8 @@ static int comp_disconnect_channel(struct most_interface *iface, int channel_id)
 {
 	struct comp_channel *c;
 
-	if (!iface) {
-		pr_info("Bad interface pointer\n");
+	if (!iface)
 		return -EINVAL;
-	}
 
 	c = get_channel(iface, channel_id);
 	if (!c)
@@ -397,10 +392,9 @@ static int comp_tx_completion(struct most_interface *iface, int channel_id)
 {
 	struct comp_channel *c;
 
-	if (!iface) {
-		pr_info("Bad interface pointer\n");
+	if (!iface)
 		return -EINVAL;
-	}
+
 	if ((channel_id < 0) || (channel_id >= iface->num_channels)) {
 		pr_info("Channel ID out of range\n");
 		return -EINVAL;
@@ -432,10 +426,9 @@ static int comp_probe(struct most_interface *iface, int channel_id,
 	int retval;
 	int current_minor;
 
-	if ((!iface) || (!cfg) || (!name)) {
-		pr_info("Probing component with bad arguments");
+	if ((!iface) || (!cfg) || (!name))
 		return -EINVAL;
-	}
+
 	c = get_channel(iface, channel_id);
 	if (c)
 		return -EEXIST;
@@ -474,7 +467,6 @@ static int comp_probe(struct most_interface *iface, int channel_id,
 
 	if (IS_ERR(c->dev)) {
 		retval = PTR_ERR(c->dev);
-		pr_info("failed to create new device node %s\n", name);
 		goto err_free_kfifo_and_del_list;
 	}
 	kobject_uevent(&c->dev->kobj, KOBJ_ADD);
@@ -507,13 +499,9 @@ static int __init mod_init(void)
 {
 	int err;
 
-	pr_info("init()\n");
-
 	comp.class = class_create(THIS_MODULE, "most_cdev");
-	if (IS_ERR(comp.class)) {
-		pr_info("No udev support.\n");
+	if (IS_ERR(comp.class))
 		return PTR_ERR(comp.class);
-	}
 
 	INIT_LIST_HEAD(&channel_list);
 	spin_lock_init(&ch_list_lock);
@@ -545,8 +533,6 @@ static void __exit mod_exit(void)
 {
 	struct comp_channel *c, *tmp;
 
-	pr_info("exit module\n");
-
 	most_deregister_configfs_subsys(&comp.cc);
 	most_deregister_component(&comp.cc);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

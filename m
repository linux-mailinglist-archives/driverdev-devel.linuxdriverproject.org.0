Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96358227B89
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jul 2020 11:19:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4752586AD2;
	Tue, 21 Jul 2020 09:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I0KPae4tpmbh; Tue, 21 Jul 2020 09:19:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE0C186AB2;
	Tue, 21 Jul 2020 09:19:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 21EA31BF2B7
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 09:19:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1E9842045D
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 09:19:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zf8qa3tN2JBv for <devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 09:19:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
 by silver.osuosl.org (Postfix) with ESMTPS id 9F53E25E94
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 09:19:33 +0000 (UTC)
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 939DC1A05BE;
 Tue, 21 Jul 2020 11:19:31 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 86F451A05BD;
 Tue, 21 Jul 2020 11:19:31 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net
 (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 51E3A202A9;
 Tue, 21 Jul 2020 11:19:31 +0200 (CEST)
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/6] staging: dpaa2-ethsw: verify the nofifier block
Date: Tue, 21 Jul 2020 12:19:14 +0300
Message-Id: <20200721091919.20394-2-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200721091919.20394-1-ioana.ciornei@nxp.com>
References: <20200721091919.20394-1-ioana.ciornei@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Since now we have a notifier block for each DPSW instance probed, we
have to also check that the netdev is indeed connected to the notifier
received. Without this, we end up with the same switchdev callback being
executed multiple times (because it would be received by all notifier
blocks, not just the one intended to).
Also, move the function higher in the source file because it will be
used in later patches from multiple places.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 31 ++++++++++++++++---------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index 2fb75a7c9314..557a75115da8 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -749,6 +749,20 @@ static const struct net_device_ops ethsw_port_ops = {
 	.ndo_get_phys_port_name = port_get_phys_name,
 };
 
+static bool ethsw_port_dev_check(const struct net_device *netdev,
+				 struct notifier_block *nb)
+{
+	struct ethsw_port_priv *port_priv = netdev_priv(netdev);
+
+	if (netdev->netdev_ops == &ethsw_port_ops &&
+	    (!nb || &port_priv->ethsw_data->port_nb == nb ||
+	     &port_priv->ethsw_data->port_switchdev_nb == nb ||
+	     &port_priv->ethsw_data->port_switchdevb_nb == nb))
+		return true;
+
+	return false;
+}
+
 static void ethsw_links_state_update(struct ethsw_core *ethsw)
 {
 	int i;
@@ -1199,12 +1213,7 @@ static int port_bridge_leave(struct net_device *netdev)
 	return err;
 }
 
-static bool ethsw_port_dev_check(const struct net_device *netdev)
-{
-	return netdev->netdev_ops == &ethsw_port_ops;
-}
-
-static int port_netdevice_event(struct notifier_block *unused,
+static int port_netdevice_event(struct notifier_block *nb,
 				unsigned long event, void *ptr)
 {
 	struct net_device *netdev = netdev_notifier_info_to_dev(ptr);
@@ -1212,7 +1221,7 @@ static int port_netdevice_event(struct notifier_block *unused,
 	struct net_device *upper_dev;
 	int err = 0;
 
-	if (!ethsw_port_dev_check(netdev))
+	if (!ethsw_port_dev_check(netdev, nb))
 		return NOTIFY_DONE;
 
 	/* Handle just upper dev link/unlink for the moment */
@@ -1280,7 +1289,7 @@ static void ethsw_switchdev_event_work(struct work_struct *work)
 }
 
 /* Called under rcu_read_lock() */
-static int port_switchdev_event(struct notifier_block *unused,
+static int port_switchdev_event(struct notifier_block *nb,
 				unsigned long event, void *ptr)
 {
 	struct net_device *dev = switchdev_notifier_info_to_dev(ptr);
@@ -1289,7 +1298,7 @@ static int port_switchdev_event(struct notifier_block *unused,
 	struct switchdev_notifier_fdb_info *fdb_info = ptr;
 	struct ethsw_core *ethsw = port_priv->ethsw_data;
 
-	if (!ethsw_port_dev_check(dev))
+	if (!ethsw_port_dev_check(dev, nb))
 		return NOTIFY_DONE;
 
 	if (event == SWITCHDEV_PORT_ATTR_SET)
@@ -1353,12 +1362,12 @@ ethsw_switchdev_port_obj_event(unsigned long event, struct net_device *netdev,
 	return notifier_from_errno(err);
 }
 
-static int port_switchdev_blocking_event(struct notifier_block *unused,
+static int port_switchdev_blocking_event(struct notifier_block *nb,
 					 unsigned long event, void *ptr)
 {
 	struct net_device *dev = switchdev_notifier_info_to_dev(ptr);
 
-	if (!ethsw_port_dev_check(dev))
+	if (!ethsw_port_dev_check(dev, nb))
 		return NOTIFY_DONE;
 
 	switch (event) {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

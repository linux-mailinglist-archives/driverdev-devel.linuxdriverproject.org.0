Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA293227B88
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jul 2020 11:19:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B89CB895BD;
	Tue, 21 Jul 2020 09:19:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yaj5SN8cJV1E; Tue, 21 Jul 2020 09:19:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDFCB895B4;
	Tue, 21 Jul 2020 09:19:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EEF2E1BF2B7
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 09:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 98E08895B3
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 09:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z-Lyo+sOVmsI for <devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 09:19:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8DF3B895AC
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 09:19:33 +0000 (UTC)
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D70011A058B;
 Tue, 21 Jul 2020 11:19:31 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CAD0E1A05BD;
 Tue, 21 Jul 2020 11:19:31 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net
 (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 95E3A202A9;
 Tue, 21 Jul 2020 11:19:31 +0200 (CEST)
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/6] staging: dpaa2-ethsw: don't allow interfaces from
 different DPSWs to be bridged
Date: Tue, 21 Jul 2020 12:19:15 +0300
Message-Id: <20200721091919.20394-3-ioana.ciornei@nxp.com>
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

Error out when the user tries to bridge two switch interfaces that are
from different DPSW instances. This is not supported by the hardware and
we should reflect this into what the user is aware of.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index 557a75115da8..530e4105375c 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -1182,6 +1182,9 @@ static int port_bridge_join(struct net_device *netdev,
 {
 	struct ethsw_port_priv *port_priv = netdev_priv(netdev);
 	struct ethsw_core *ethsw = port_priv->ethsw_data;
+	struct ethsw_port_priv *other_port_priv;
+	struct net_device *other_dev;
+	struct list_head *iter;
 	int i, err;
 
 	for (i = 0; i < ethsw->sw_attr.num_ifs; i++)
@@ -1192,6 +1195,18 @@ static int port_bridge_join(struct net_device *netdev,
 			return -EINVAL;
 		}
 
+	netdev_for_each_lower_dev(upper_dev, other_dev, iter) {
+		if (!ethsw_port_dev_check(other_dev, NULL))
+			continue;
+
+		other_port_priv = netdev_priv(other_dev);
+		if (other_port_priv->ethsw_data != port_priv->ethsw_data) {
+			netdev_err(netdev,
+				   "Interface from a different DPSW is in the bridge already!\n");
+			return -EINVAL;
+		}
+	}
+
 	/* Enable flooding */
 	err = ethsw_port_set_flood(port_priv, 1);
 	if (!err)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

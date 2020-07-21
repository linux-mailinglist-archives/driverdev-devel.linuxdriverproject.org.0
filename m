Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D127227B8E
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jul 2020 11:19:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A26E1895CE;
	Tue, 21 Jul 2020 09:19:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Gy-2CEV9t+4; Tue, 21 Jul 2020 09:19:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 00A3B895B0;
	Tue, 21 Jul 2020 09:19:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 92E611BF2B7
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 09:19:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 900A58809D
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 09:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FaIPB1OAWKFG for <devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 09:19:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 206268426E
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 09:19:34 +0000 (UTC)
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B6A3420044D;
 Tue, 21 Jul 2020 11:19:32 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AAF47200431;
 Tue, 21 Jul 2020 11:19:32 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net
 (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 75AB9202A9;
 Tue, 21 Jul 2020 11:19:32 +0200 (CEST)
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/6] staging: dpaa2-ethsw: read the port state from firmware
Date: Tue, 21 Jul 2020 12:19:18 +0300
Message-Id: <20200721091919.20394-6-ioana.ciornei@nxp.com>
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

Rely on the port state seen by the firmware since it will also be the
one erroring out when trying to setup anything major when the port is
up.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index 9114437645a8..c6885912c60b 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -43,6 +43,25 @@ static int ethsw_add_vlan(struct ethsw_core *ethsw, u16 vid)
 	return 0;
 }
 
+static bool ethsw_port_is_up(struct ethsw_port_priv *port_priv)
+{
+	struct net_device *netdev = port_priv->netdev;
+	struct dpsw_link_state state;
+	int err;
+
+	err = dpsw_if_get_link_state(port_priv->ethsw_data->mc_io, 0,
+				     port_priv->ethsw_data->dpsw_handle,
+				     port_priv->idx, &state);
+	if (err) {
+		netdev_err(netdev, "dpsw_if_get_link_state() err %d\n", err);
+		return true;
+	}
+
+	WARN_ONCE(state.up > 1, "Garbage read into link_state");
+
+	return state.up ? true : false;
+}
+
 static int ethsw_port_set_pvid(struct ethsw_port_priv *port_priv, u16 pvid)
 {
 	struct ethsw_core *ethsw = port_priv->ethsw_data;
@@ -61,7 +80,7 @@ static int ethsw_port_set_pvid(struct ethsw_port_priv *port_priv, u16 pvid)
 	tci_cfg.vlan_id = pvid;
 
 	/* Interface needs to be down to change PVID */
-	up = netif_running(netdev);
+	up = ethsw_port_is_up(port_priv);
 	if (up) {
 		err = dpsw_if_disable(ethsw->mc_io, 0,
 				      ethsw->dpsw_handle,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

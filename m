Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF8D21F2DC
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 15:44:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E4C1E89188;
	Tue, 14 Jul 2020 13:44:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DxBLsYUpXRgf; Tue, 14 Jul 2020 13:44:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E353C89149;
	Tue, 14 Jul 2020 13:44:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 287731BF2A5
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 13:44:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1753926FB3
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 13:44:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 76xbbLvsBGBh for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 13:44:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
 by silver.osuosl.org (Postfix) with ESMTPS id 0EE8B2EC5A
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 13:44:03 +0000 (UTC)
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 11A481A01FC;
 Tue, 14 Jul 2020 15:35:16 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 052921A01E7;
 Tue, 14 Jul 2020 15:35:16 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net
 (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id C18EA205A4;
 Tue, 14 Jul 2020 15:35:15 +0200 (CEST)
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/6] staging: dpaa2-ethsw: use netif_running when checking for
 port up
Date: Tue, 14 Jul 2020 16:34:28 +0300
Message-Id: <20200714133431.17532-4-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200714133431.17532-1-ioana.ciornei@nxp.com>
References: <20200714133431.17532-1-ioana.ciornei@nxp.com>
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

There are some cases where the switch interface needs to be disabled so
that changes in the configuration can be made. In such cases, we should
check for a running interface (bit __LINK_STATE_START of the netdev)
instead of netif_carrier_ok(). This is because on open() we enable the
switch interface even though the link up has not come out yet.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index b57bc705c2ee..a1917842536e 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -48,7 +48,7 @@ static int ethsw_port_set_pvid(struct ethsw_port_priv *port_priv, u16 pvid)
 	struct ethsw_core *ethsw = port_priv->ethsw_data;
 	struct net_device *netdev = port_priv->netdev;
 	struct dpsw_tci_cfg tci_cfg = { 0 };
-	bool is_oper;
+	bool up;
 	int err, ret;
 
 	err = dpsw_if_get_tci(ethsw->mc_io, 0, ethsw->dpsw_handle,
@@ -61,8 +61,8 @@ static int ethsw_port_set_pvid(struct ethsw_port_priv *port_priv, u16 pvid)
 	tci_cfg.vlan_id = pvid;
 
 	/* Interface needs to be down to change PVID */
-	is_oper = netif_oper_up(netdev);
-	if (is_oper) {
+	up = netif_running(netdev);
+	if (up) {
 		err = dpsw_if_disable(ethsw->mc_io, 0,
 				      ethsw->dpsw_handle,
 				      port_priv->idx);
@@ -85,7 +85,7 @@ static int ethsw_port_set_pvid(struct ethsw_port_priv *port_priv, u16 pvid)
 	port_priv->pvid = pvid;
 
 set_tci_error:
-	if (is_oper) {
+	if (up) {
 		ret = dpsw_if_enable(ethsw->mc_io, 0,
 				     ethsw->dpsw_handle,
 				     port_priv->idx);
@@ -188,7 +188,7 @@ static int ethsw_port_set_stp_state(struct ethsw_port_priv *port_priv, u8 state)
 	};
 	int err;
 
-	if (!netif_oper_up(port_priv->netdev) || state == port_priv->stp_state)
+	if (!netif_running(port_priv->netdev) || state == port_priv->stp_state)
 		return 0;	/* Nothing to do */
 
 	err = dpsw_if_set_stp(port_priv->ethsw_data->mc_io, 0,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

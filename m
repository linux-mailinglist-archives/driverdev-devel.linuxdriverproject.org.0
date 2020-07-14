Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B64321F2E3
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 15:44:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2786189190;
	Tue, 14 Jul 2020 13:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SGZiN5eW4eq6; Tue, 14 Jul 2020 13:44:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C7FF89180;
	Tue, 14 Jul 2020 13:44:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4C0AD1BF2A5
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 13:44:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3BF6626FB3
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 13:44:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rnnOFXHI3H11 for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 13:44:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
 by silver.osuosl.org (Postfix) with ESMTPS id F333B2ECB9
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 13:44:44 +0000 (UTC)
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BE765201014;
 Tue, 14 Jul 2020 15:35:15 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B298B2001B2;
 Tue, 14 Jul 2020 15:35:15 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net
 (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 747FE205A4;
 Tue, 14 Jul 2020 15:35:15 +0200 (CEST)
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/6] staging: dpaa2-ethsw: ignore state interrupts when the
 interface is not running
Date: Tue, 14 Jul 2020 16:34:27 +0300
Message-Id: <20200714133431.17532-3-ioana.ciornei@nxp.com>
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

Link state interrupts will be transmitted to the DPSW object even though
the user has not yet issued a 'ifconfig up' on a switch interface. Don't
act on those interrupts since there are of no interrest.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index 46aa37093e86..b57bc705c2ee 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -445,6 +445,12 @@ static int port_carrier_state_sync(struct net_device *netdev)
 	struct dpsw_link_state state;
 	int err;
 
+	/* Interrupts are received even though no one issued an 'ifconfig up'
+	 * on the switch interface. Ignore these link state update interrupts
+	 */
+	if (!netif_running(netdev))
+		return 0;
+
 	err = dpsw_if_get_link_state(port_priv->ethsw_data->mc_io, 0,
 				     port_priv->ethsw_data->dpsw_handle,
 				     port_priv->idx, &state);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

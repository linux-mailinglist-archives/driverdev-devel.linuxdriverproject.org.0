Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E59D3227B8A
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jul 2020 11:19:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 82CC5840C2;
	Tue, 21 Jul 2020 09:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SPuxDx1Lmuzq; Tue, 21 Jul 2020 09:19:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA5DE8426E;
	Tue, 21 Jul 2020 09:19:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 79C701BF2B7
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 09:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5DB18840A3
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 09:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2zauNtgBeDTO for <devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 09:19:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6515C842FC
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 09:19:34 +0000 (UTC)
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 05BBE200854;
 Tue, 21 Jul 2020 11:19:33 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id EDDBE200431;
 Tue, 21 Jul 2020 11:19:32 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net
 (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id B8F3B202A9;
 Tue, 21 Jul 2020 11:19:32 +0200 (CEST)
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 6/6] staging: dpaa2-ethsw: check if there is space for a new
 VLAN
Date: Tue, 21 Jul 2020 12:19:19 +0300
Message-Id: <20200721091919.20394-7-ioana.ciornei@nxp.com>
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

Avoid getting into a WARNING as below by checking, while in the prepare
state of the transactional operation, if there is space for a new VLAN.
If we reached the maximum number, return an appropriate error.

[ 6503.657564] eth3: Commit of object (id=1) failed.
[ 6503.657588] WARNING: CPU: 2 PID: 17144 at net/switchdev/switchdev.c:277 switchdev_port_obj_add_now+0xcc/0x110
...
[ 6503.657628] x1 : 70887ce26695c500 x0 : 0000000000000000
[ 6503.657630] Call trace:
[ 6503.657633]  switchdev_port_obj_add_now+0xcc/0x110
[ 6503.657635]  switchdev_port_obj_add+0x40/0xc0
[ 6503.657638]  br_switchdev_port_vlan_add+0x50/0x78
[ 6503.657640]  __vlan_add+0x2dc/0x758
[ 6503.657642]  nbp_vlan_add+0xc0/0x180
[ 6503.657644]  br_vlan_info.isra.0+0x68/0x128
[ 6503.657646]  br_process_vlan_info+0x224/0x2f8
[ 6503.657647]  br_afspec+0x158/0x188
[ 6503.657649]  br_setlink+0x1a4/0x290

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index c6885912c60b..19fc0401e261 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -979,10 +979,27 @@ static int port_vlans_add(struct net_device *netdev,
 			  struct switchdev_trans *trans)
 {
 	struct ethsw_port_priv *port_priv = netdev_priv(netdev);
-	int vid, err = 0;
+	struct ethsw_core *ethsw = port_priv->ethsw_data;
+	struct dpsw_attr *attr = &ethsw->sw_attr;
+	int vid, err = 0, new_vlans = 0;
+
+	if (switchdev_trans_ph_prepare(trans)) {
+		for (vid = vlan->vid_begin; vid <= vlan->vid_end; vid++)
+			if (!port_priv->ethsw_data->vlans[vid])
+				new_vlans++;
+
+		/* Check if there is space for a new VLAN */
+		err = dpsw_get_attributes(ethsw->mc_io, 0, ethsw->dpsw_handle,
+					  &ethsw->sw_attr);
+		if (err) {
+			netdev_err(netdev, "dpsw_get_attributes err %d\n", err);
+			return err;
+		}
+		if (attr->max_vlans - attr->num_vlans < new_vlans)
+			return -ENOSPC;
 
-	if (switchdev_trans_ph_prepare(trans))
 		return 0;
+	}
 
 	for (vid = vlan->vid_begin; vid <= vlan->vid_end; vid++) {
 		if (!port_priv->ethsw_data->vlans[vid]) {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

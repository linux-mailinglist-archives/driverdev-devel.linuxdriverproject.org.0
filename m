Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F487227B86
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jul 2020 11:19:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CEA7F87849;
	Tue, 21 Jul 2020 09:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yC3I7QyaRyTP; Tue, 21 Jul 2020 09:19:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9EE91840C2;
	Tue, 21 Jul 2020 09:19:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C213C1BF2B7
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 09:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B87F5895A8
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 09:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DwR-zuyECrJP for <devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 09:19:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A49CD895AE
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 09:19:33 +0000 (UTC)
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 25EEB1A05CC;
 Tue, 21 Jul 2020 11:19:32 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1A2001A05BD;
 Tue, 21 Jul 2020 11:19:32 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net
 (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D95C3202A9;
 Tue, 21 Jul 2020 11:19:31 +0200 (CEST)
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/6] staging: dpaa2-ethsw: setup the STP state for all
 installed VLANs
Date: Tue, 21 Jul 2020 12:19:16 +0300
Message-Id: <20200721091919.20394-4-ioana.ciornei@nxp.com>
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

Setup the STP state for all VLANs installed on the port. This is also
avoiding the error situation when the DEFAULT_VLAN_ID is not installed
on the port (thus the firmware complains that it cannot setup the
required STP state).

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index 530e4105375c..83e6bd4a803b 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -183,21 +183,26 @@ static int ethsw_port_set_flood(struct ethsw_port_priv *port_priv, bool enable)
 static int ethsw_port_set_stp_state(struct ethsw_port_priv *port_priv, u8 state)
 {
 	struct dpsw_stp_cfg stp_cfg = {
-		.vlan_id = DEFAULT_VLAN_ID,
 		.state = state,
 	};
 	int err;
+	u16 vid;
 
 	if (!netif_running(port_priv->netdev) || state == port_priv->stp_state)
 		return 0;	/* Nothing to do */
 
-	err = dpsw_if_set_stp(port_priv->ethsw_data->mc_io, 0,
-			      port_priv->ethsw_data->dpsw_handle,
-			      port_priv->idx, &stp_cfg);
-	if (err) {
-		netdev_err(port_priv->netdev,
-			   "dpsw_if_set_stp err %d\n", err);
-		return err;
+	for (vid = 0; vid <= VLAN_VID_MASK; vid++) {
+		if (port_priv->vlans[vid] & ETHSW_VLAN_MEMBER) {
+			stp_cfg.vlan_id = vid;
+			err = dpsw_if_set_stp(port_priv->ethsw_data->mc_io, 0,
+					      port_priv->ethsw_data->dpsw_handle,
+					      port_priv->idx, &stp_cfg);
+			if (err) {
+				netdev_err(port_priv->netdev,
+					   "dpsw_if_set_stp err %d\n", err);
+				return err;
+			}
+		}
 	}
 
 	port_priv->stp_state = state;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

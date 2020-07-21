Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC86E227B85
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jul 2020 11:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8242B86E14;
	Tue, 21 Jul 2020 09:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xW7lpBnmHJiA; Tue, 21 Jul 2020 09:19:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 81F2A86AF2;
	Tue, 21 Jul 2020 09:19:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CED3A1BF97E
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 09:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B233886ADF
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 09:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3FP1VjTO8HsQ for <devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 09:19:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 29D4586B09
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 09:19:34 +0000 (UTC)
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7376D200464;
 Tue, 21 Jul 2020 11:19:32 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 675CA20044D;
 Tue, 21 Jul 2020 11:19:32 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net
 (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 29294202A9;
 Tue, 21 Jul 2020 11:19:32 +0200 (CEST)
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/6] staging: dpaa2-ethsw: destroy workqueue after
 deregistering the notifiers
Date: Tue, 21 Jul 2020 12:19:17 +0300
Message-Id: <20200721091919.20394-5-ioana.ciornei@nxp.com>
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

We should destroy the switch workqueue only after deregistering the
switchdev notifiers. Without this fix, we could end up with switchdev
notifications on a draining workqueue and also with a lock up since the
netdevice reference count is increased (in port_switchdev_event) and not
decreased ever (since the workqueue did not run).

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index 83e6bd4a803b..9114437645a8 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -1628,8 +1628,6 @@ static int ethsw_remove(struct fsl_mc_device *sw_dev)
 
 	ethsw_teardown_irqs(sw_dev);
 
-	destroy_workqueue(ethsw->workqueue);
-
 	dpsw_disable(ethsw->mc_io, 0, ethsw->dpsw_handle);
 
 	for (i = 0; i < ethsw->sw_attr.num_ifs; i++) {
@@ -1640,6 +1638,9 @@ static int ethsw_remove(struct fsl_mc_device *sw_dev)
 	kfree(ethsw->ports);
 
 	ethsw_takedown(sw_dev);
+
+	destroy_workqueue(ethsw->workqueue);
+
 	fsl_mc_portal_free(ethsw->mc_io);
 
 	kfree(ethsw);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

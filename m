Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA7121F2E4
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 15:44:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A7B58A4D7;
	Tue, 14 Jul 2020 13:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oYNFo28pIOQh; Tue, 14 Jul 2020 13:44:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 905798A4BA;
	Tue, 14 Jul 2020 13:44:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A4A671BF2A5
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 13:44:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B96D58A24C
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 13:44:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ux5JTkp9F7o2 for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 13:44:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DB4918A4B6
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 13:44:44 +0000 (UTC)
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A39ED201027;
 Tue, 14 Jul 2020 15:35:16 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 97BB22015E6;
 Tue, 14 Jul 2020 15:35:16 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net
 (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 618DA205A4;
 Tue, 14 Jul 2020 15:35:16 +0200 (CEST)
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/6] staging: dpaa2-ethsw: store version information of the
 DPSW object
Date: Tue, 14 Jul 2020 16:34:30 +0300
Message-Id: <20200714133431.17532-6-ioana.ciornei@nxp.com>
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

Store the major and minor versions of the DPSW object in the ethsw
structure. This will be used in a subsequent patch to make sure some
commands are only called on the appropriate version of object.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 16 ++++++++--------
 drivers/staging/fsl-dpaa2/ethsw/ethsw.h |  1 +
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index f283ce195c1e..a8fc9bcf3b8a 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -1368,9 +1368,9 @@ static int ethsw_init(struct fsl_mc_device *sw_dev)
 {
 	struct device *dev = &sw_dev->dev;
 	struct ethsw_core *ethsw = dev_get_drvdata(dev);
-	u16 version_major, version_minor, i;
 	struct dpsw_stp_cfg stp_cfg;
 	int err;
+	u16 i;
 
 	ethsw->dev_id = sw_dev->obj_desc.id;
 
@@ -1388,20 +1388,20 @@ static int ethsw_init(struct fsl_mc_device *sw_dev)
 	}
 
 	err = dpsw_get_api_version(ethsw->mc_io, 0,
-				   &version_major,
-				   &version_minor);
+				   &ethsw->major,
+				   &ethsw->minor);
 	if (err) {
 		dev_err(dev, "dpsw_get_api_version err %d\n", err);
 		goto err_close;
 	}
 
 	/* Minimum supported DPSW version check */
-	if (version_major < DPSW_MIN_VER_MAJOR ||
-	    (version_major == DPSW_MIN_VER_MAJOR &&
-	     version_minor < DPSW_MIN_VER_MINOR)) {
+	if (ethsw->major < DPSW_MIN_VER_MAJOR ||
+	    (ethsw->major == DPSW_MIN_VER_MAJOR &&
+	     ethsw->minor < DPSW_MIN_VER_MINOR)) {
 		dev_err(dev, "DPSW version %d:%d not supported. Use %d.%d or greater.\n",
-			version_major,
-			version_minor,
+			ethsw->major,
+			ethsw->minor,
 			DPSW_MIN_VER_MAJOR, DPSW_MIN_VER_MINOR);
 		err = -ENOTSUPP;
 		goto err_close;
diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.h b/drivers/staging/fsl-dpaa2/ethsw/ethsw.h
index a0244f7d5003..0e520fd94dbc 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.h
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.h
@@ -61,6 +61,7 @@ struct ethsw_core {
 	struct fsl_mc_io		*mc_io;
 	u16				dpsw_handle;
 	struct dpsw_attr		sw_attr;
+	u16				major, minor;
 	int				dev_id;
 	struct ethsw_port_priv		**ports;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

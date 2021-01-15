Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB882F85E2
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Jan 2021 21:02:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1661F86DAB;
	Fri, 15 Jan 2021 20:02:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wmq-g6kr+bX0; Fri, 15 Jan 2021 20:02:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B6D5586D94;
	Fri, 15 Jan 2021 20:02:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E23601BF423
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 20:02:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D659E86D91
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 20:02:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mj7s2BoQeXqA for <devel@linuxdriverproject.org>;
 Fri, 15 Jan 2021 20:02:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
 [217.70.183.197])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F003E86C32
 for <devel@driverdev.osuosl.org>; Fri, 15 Jan 2021 20:02:03 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id DF73F1C0008;
 Fri, 15 Jan 2021 20:01:59 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 04/16] media: sun6i-csi: Stop using the deprecated fwnode
 endpoint parser
Date: Fri, 15 Jan 2021 21:01:29 +0100
Message-Id: <20210115200141.1397785-5-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210115200141.1397785-1-paul.kocialkowski@bootlin.com>
References: <20210115200141.1397785-1-paul.kocialkowski@bootlin.com>
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Corbet <corbet@lwn.net>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The v4l2_async_notifier_parse_fwnode_endpoints helper is getting
deprecated in favor of explicit parsing of the endpoints.

Implement it instead of using this deprecated function.

Since this was the last user of the helper, it should now be safe to
remove.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../platform/sunxi/sun6i-csi/sun6i_csi.c      | 69 ++++++++++++-------
 .../platform/sunxi/sun6i-csi/sun6i_csi.h      |  1 +
 2 files changed, 44 insertions(+), 26 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
index c3b2f27b99d2..1a11a6174a17 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
@@ -693,28 +693,6 @@ static const struct v4l2_async_notifier_operations sun6i_csi_async_ops = {
 	.complete = sun6i_subdev_notify_complete,
 };
 
-static int sun6i_csi_fwnode_parse(struct device *dev,
-				  struct v4l2_fwnode_endpoint *vep,
-				  struct v4l2_async_subdev *asd)
-{
-	struct sun6i_csi *csi = dev_get_drvdata(dev);
-
-	if (vep->base.port || vep->base.id) {
-		dev_warn(dev, "Only support a single port with one endpoint\n");
-		return -ENOTCONN;
-	}
-
-	switch (vep->bus_type) {
-	case V4L2_MBUS_PARALLEL:
-	case V4L2_MBUS_BT656:
-		csi->v4l2_ep = *vep;
-		return 0;
-	default:
-		dev_err(dev, "Unsupported media bus type\n");
-		return -ENOTCONN;
-	}
-}
-
 static void sun6i_csi_v4l2_cleanup(struct sun6i_csi *csi)
 {
 	media_device_unregister(&csi->media_dev);
@@ -726,6 +704,48 @@ static void sun6i_csi_v4l2_cleanup(struct sun6i_csi *csi)
 	media_device_cleanup(&csi->media_dev);
 }
 
+static int sun6i_csi_v4l2_fwnode_init(struct sun6i_csi *csi)
+{
+	struct v4l2_fwnode_endpoint *endpoint = NULL;
+	struct fwnode_handle *handle = NULL;
+	int ret;
+
+	/* Parallel */
+
+	endpoint = &csi->v4l2_ep;
+	handle = fwnode_graph_get_endpoint_by_id(dev_fwnode(csi->dev), 0, 0,
+						 FWNODE_GRAPH_ENDPOINT_NEXT);
+	if (!handle)
+		return 0;
+
+	ret = v4l2_fwnode_endpoint_parse(handle, endpoint);
+	if (ret)
+		goto error;
+
+	if (endpoint->bus_type != V4L2_MBUS_PARALLEL &&
+	    endpoint->bus_type != V4L2_MBUS_BT656) {
+		dev_err(csi->dev, "Unsupported parallel media bus type\n");
+		ret = -ENOTCONN;
+		goto error;
+	}
+
+	ret = v4l2_async_notifier_add_fwnode_remote_subdev(&csi->notifier,
+							   handle,
+							   &csi->subdev);
+	if (ret)
+		goto error;
+
+	fwnode_handle_put(handle);
+
+	return 0;
+
+error:
+	if (handle)
+		fwnode_handle_put(handle);
+
+	return ret;
+}
+
 static int sun6i_csi_v4l2_init(struct sun6i_csi *csi)
 {
 	int ret;
@@ -760,10 +780,7 @@ static int sun6i_csi_v4l2_init(struct sun6i_csi *csi)
 	if (ret)
 		goto unreg_v4l2;
 
-	ret = v4l2_async_notifier_parse_fwnode_endpoints(csi->dev,
-							 &csi->notifier,
-							 sizeof(struct v4l2_async_subdev),
-							 sun6i_csi_fwnode_parse);
+	ret = sun6i_csi_v4l2_fwnode_init(csi);
 	if (ret)
 		goto clean_video;
 
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
index c626821aaedb..7f3389c70794 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
@@ -38,6 +38,7 @@ struct sun6i_csi {
 	struct v4l2_device		v4l2_dev;
 	struct media_device		media_dev;
 
+	struct v4l2_async_subdev	subdev;
 	struct v4l2_async_notifier	notifier;
 
 	/* video port settings */
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

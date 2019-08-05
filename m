Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE85382808
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 01:35:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 73C58864A0;
	Mon,  5 Aug 2019 23:35:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mI1Gj10aH0Do; Mon,  5 Aug 2019 23:35:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8288786373;
	Mon,  5 Aug 2019 23:35:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F1FA11BF390
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EF4BD20441
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ORUeThcoQ9JC for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 23:35:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 1584420134
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 23:35:38 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id i189so40423123pfg.10
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 16:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SzPXhAIDJJVPxRQjm5dl35CCesjMMtT8aLvkE/D76vE=;
 b=AhxGn7uGF82d3u+PITZWpmxompnLOWgJO9HrgllV8YvuhA6O+sm+OT2Fmo4+ReXhIH
 rc6PsyRUFKuyEkruD0L9Dfhx9JKLJSxpD2f3BWRsk+8sj07mfSPzkmQTpF+3axXh7C7a
 BVsnk3jIJSGjF/uLAgHc7jF9s3RsLw87/IFLxVi9JkYVRytq+MD/WlKPogWdJ+klCPW0
 B7RfPX0/Nb9ayS9qH48WFo7uvOYw/3JW59AM4skWrMadcq1XOrkCofBD/jrZ07MlTXA3
 BKNJAL1f2Z4OPtxSfdUgIHu7I9JxQa7LLiQVI+EoXzDX24xu5dotr/IwM0RyEdZ8kCjT
 f1mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SzPXhAIDJJVPxRQjm5dl35CCesjMMtT8aLvkE/D76vE=;
 b=W53wcblZO1GPtmjTkgSfavb9YO/0IyFHKw32GZ4LBO68/tpV1ZiD7LzW/x89DqGXAZ
 Ch8XVARXfxtIVAXKb155TzngjsgAyjMeSdvunw4dSEp8DIOCn2mYaWvmZKj16abz7D9L
 qf9H8APD07LAm66euJLI+6F/YueRFQraPCJUGt3iXJcwTK7LG95MMS3KNmwgwSl4CjJ4
 Z6Eu3grwfFOPQ0onlePNy/bU6Wkxz5m+3uGjGxaMzGXulBYiEMM7eBIR3YfW4TQxC2fI
 aehHrb+cgekq7DDeao6C65aSO3OveFpHPWYDreVKnp4erau3Pb45lWmp5g3roOelplwI
 4h5w==
X-Gm-Message-State: APjAAAWurKgiT4gL/2+WO6LKwKassdHniOIv7Ugpjt31Fq0rQH/gTrEZ
 G5wna9rQmyyjUOff59kJHec=
X-Google-Smtp-Source: APXvYqzI0G6RmtOIgcu5JlAUTuDB6qP16++PmpcC16BXSP2WyOz+NuOkX6F+YZTN+IpvcZ6pmS1dyg==
X-Received: by 2002:a65:690e:: with SMTP id s14mr336282pgq.47.1565048137522;
 Mon, 05 Aug 2019 16:35:37 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:37 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 19/22] media: imx: csi: Lookup endpoint fwnode with
 media_entity_get_fwnode_pad
Date: Mon,  5 Aug 2019 16:35:02 -0700
Message-Id: <20190805233505.21167-20-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805233505.21167-1-slongerbeam@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the 1:1 port-id:pad-index assumption for the upstream subdevice
connected to a CSI via one of the subdevice's pads, by searching the
upstream subdevice's endpoints for one that maps to the pad's index,
using media_entity_get_fwnode_pad(). This is carried out by a new
reverse mapping function imx_media_get_pad_fwnode().

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c   | 22 ++++----------
 drivers/staging/media/imx/imx-media-utils.c | 33 +++++++++++++++++++++
 drivers/staging/media/imx/imx-media.h       |  1 +
 drivers/staging/media/imx/imx7-media-csi.c  | 25 +++++-----------
 4 files changed, 47 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 37b10cbf3c1a..38e70082ff2d 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -164,7 +164,7 @@ static inline bool requires_passthrough(struct v4l2_fwnode_endpoint *ep,
 static int csi_get_upstream_endpoint(struct csi_priv *priv,
 				     struct v4l2_fwnode_endpoint *ep)
 {
-	struct device_node *endpoint, *port;
+	struct fwnode_handle *endpoint;
 	struct media_entity *src;
 	struct v4l2_subdev *sd;
 	struct media_pad *pad;
@@ -203,23 +203,13 @@ static int csi_get_upstream_endpoint(struct csi_priv *priv,
 	if (!pad)
 		return -ENODEV;
 
-	sd = media_entity_to_v4l2_subdev(pad->entity);
+	endpoint = imx_media_get_pad_fwnode(pad);
+	if (IS_ERR(endpoint))
+		return PTR_ERR(endpoint);
 
-	/*
-	 * NOTE: this assumes an OF-graph port id is the same as a
-	 * media pad index.
-	 */
-	port = of_graph_get_port_by_id(sd->dev->of_node, pad->index);
-	if (!port)
-		return -ENODEV;
-
-	endpoint = of_get_next_child(port, NULL);
-	of_node_put(port);
-	if (!endpoint)
-		return -ENODEV;
+	v4l2_fwnode_endpoint_parse(endpoint, ep);
 
-	v4l2_fwnode_endpoint_parse(of_fwnode_handle(endpoint), ep);
-	of_node_put(endpoint);
+	fwnode_handle_put(endpoint);
 
 	return 0;
 }
diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
index 4cc6a7462ae2..2e4f27c214c4 100644
--- a/drivers/staging/media/imx/imx-media-utils.c
+++ b/drivers/staging/media/imx/imx-media-utils.c
@@ -908,6 +908,39 @@ imx_media_pipeline_video_device(struct media_entity *start_entity,
 }
 EXPORT_SYMBOL_GPL(imx_media_pipeline_video_device);
 
+/*
+ * Find a fwnode endpoint that maps to the given subdevice's pad.
+ * If there are multiple endpoints that map to the pad, only the
+ * first endpoint encountered is returned.
+ *
+ * On success the refcount of the returned fwnode endpoint is
+ * incremented.
+ */
+struct fwnode_handle *imx_media_get_pad_fwnode(struct media_pad *pad)
+{
+	struct fwnode_handle *endpoint;
+	struct v4l2_subdev *sd;
+
+	if (!is_media_entity_v4l2_subdev(pad->entity))
+		return ERR_PTR(-ENODEV);
+
+	sd = media_entity_to_v4l2_subdev(pad->entity);
+
+	fwnode_graph_for_each_endpoint(dev_fwnode(sd->dev), endpoint) {
+		int pad_idx = media_entity_get_fwnode_pad(&sd->entity,
+							  endpoint,
+							  pad->flags);
+		if (pad_idx < 0)
+			continue;
+
+		if (pad_idx == pad->index)
+			return endpoint;
+	}
+
+	return ERR_PTR(-ENODEV);
+}
+EXPORT_SYMBOL_GPL(imx_media_get_pad_fwnode);
+
 /*
  * Turn current pipeline streaming on/off starting from entity.
  */
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index 4d124a86b358..d75b3c80101a 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -195,6 +195,7 @@ imx_media_pipeline_subdev(struct media_entity *start_entity, u32 grp_id,
 struct video_device *
 imx_media_pipeline_video_device(struct media_entity *start_entity,
 				enum v4l2_buf_type buftype, bool upstream);
+struct fwnode_handle *imx_media_get_pad_fwnode(struct media_pad *pad);
 
 struct imx_media_dma_buf {
 	void          *virt;
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index f71ac485f780..50826e637cb5 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -438,9 +438,8 @@ static int imx7_csi_get_upstream_endpoint(struct imx7_csi *csi,
 					  struct v4l2_fwnode_endpoint *ep,
 					  bool skip_mux)
 {
-	struct device_node *endpoint, *port;
+	struct fwnode_handle *endpoint;
 	struct media_entity *src;
-	struct v4l2_subdev *sd;
 	struct media_pad *pad;
 
 	if (!csi->src_sd)
@@ -462,29 +461,19 @@ static int imx7_csi_get_upstream_endpoint(struct imx7_csi *csi,
 	if (!pad)
 		return -ENODEV;
 
-	sd = media_entity_to_v4l2_subdev(pad->entity);
-
 	/* To get bus type we may need to skip video mux */
 	if (skip_mux && src->function == MEDIA_ENT_F_VID_MUX) {
-		src = &sd->entity;
+		src = pad->entity;
 		goto skip_video_mux;
 	}
 
-	/*
-	 * NOTE: this assumes an OF-graph port id is the same as a
-	 * media pad index.
-	 */
-	port = of_graph_get_port_by_id(sd->dev->of_node, pad->index);
-	if (!port)
-		return -ENODEV;
+	endpoint = imx_media_get_pad_fwnode(pad);
+	if (IS_ERR(endpoint))
+		return PTR_ERR(endpoint);
 
-	endpoint = of_get_next_child(port, NULL);
-	of_node_put(port);
-	if (!endpoint)
-		return -ENODEV;
+	v4l2_fwnode_endpoint_parse(endpoint, ep);
 
-	v4l2_fwnode_endpoint_parse(of_fwnode_handle(endpoint), ep);
-	of_node_put(endpoint);
+	fwnode_handle_put(endpoint);
 
 	return 0;
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

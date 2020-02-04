Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2B315237A
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 00:50:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 02B9685F6D;
	Tue,  4 Feb 2020 23:50:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TqiW8lYRWprl; Tue,  4 Feb 2020 23:50:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 571FA85CD5;
	Tue,  4 Feb 2020 23:50:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2EFFC1BF36B
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2726387155
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8MSpfTPCZsf8 for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 23:49:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 700E6872E8
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 23:49:56 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id f2so1274378pjq.1
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 15:49:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rpOa6ZNketVlDD1fVg7Q22Hn4Eag+44bEMCsUONO9O8=;
 b=UxqEcdYlJVeiHHA12YO9pv3ytQQjQmKhJKQwvY3u3wtdIi5J1xEzSIKs039PNCLNTs
 HmI/0knX5WGDR8jOMi8vaWcH35JMcrHTvP0RoEzLBzXdsbyOySHAHDI0pQvGQrzH8Ajz
 kOINuEu576sx5HHFZsg6lMNj9VGm6tERhutEFTc6tz/QbwSjrekWu9vcjurAnIyy8uk2
 2t3U3ltcTFpIrYb28vpiW31WuVPdzK9QJDFPnP3sRTt/WH26imKquOydcGYZKImSipCW
 4WmlrOPCtqC5OywrC8rKvDn566cWP7JEE18ZWeg4SvA81SmlsXyfs2Y++lElrnzK56Ty
 OOaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rpOa6ZNketVlDD1fVg7Q22Hn4Eag+44bEMCsUONO9O8=;
 b=C5NUE3VaNbIKwtnt/g5ms7ywzmzPY5RLSTTrWX9VkJxw/c2b2hAKbFrWLRNMsthxbC
 VaJ1xxzAJoHfSyrrjCrNAMlVFfXV8HsFN8sRrua0Z86A5eb2tJp5rnDYPwRT8S6Of+I9
 yTo6GVssqA1+4nbUrklkZi5rMX//ImJ9VzSkwL6gnWMzFCmx21lY7foQejnpWOASIK0+
 cRzVD4yKoUXlqRCGPrncVfCK/+z7PcLxxJEJ4w8aJegm5OaF13EOcVqeolAzET46Ezhw
 WHD+v1Tz7qw4NP2YCwc5pVLDIdXc19tSoxEU05ynFNiGV5CrmkCb61a7bEJMxTUH7Sig
 zl4g==
X-Gm-Message-State: APjAAAXOf7B/csd8RPe+qrXx+nmqyRXw0C3DdQ777XY1OoX/fuvrR5JP
 wzY6g/T+dUCnHNuo2LRZUBg=
X-Google-Smtp-Source: APXvYqyKFPfgvCRH/r+BzE/EtyTVGNDz9ilLfiMxWPls1ZrZOCZfuEATKaYXPq63e90SYO8U2P+Ewg==
X-Received: by 2002:a17:902:8a88:: with SMTP id
 p8mr31573263plo.179.1580860195925; 
 Tue, 04 Feb 2020 15:49:55 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:55 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 14/17] media: imx: csi: Lookup upstream endpoint with
 imx_media_get_pad_fwnode
Date: Tue,  4 Feb 2020 15:49:15 -0800
Message-Id: <20200204234918.20425-15-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204234918.20425-1-slongerbeam@gmail.com>
References: <20200204234918.20425-1-slongerbeam@gmail.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the 1:1 port-id:pad-index assumption for the upstream subdevice, by
searching the upstream subdevice's endpoints for one that maps to the
pad's index. This is carried out by a new reverse mapping function
imx_media_get_pad_fwnode().

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c   | 22 ++++----------
 drivers/staging/media/imx/imx-media-utils.c | 33 +++++++++++++++++++++
 drivers/staging/media/imx/imx-media.h       |  1 +
 drivers/staging/media/imx/imx7-media-csi.c  | 25 +++++-----------
 4 files changed, 47 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 2a8f01375f78..7d4c1c9640dd 100644
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
index 87152bd9af22..61752c6b074d 100644
--- a/drivers/staging/media/imx/imx-media-utils.c
+++ b/drivers/staging/media/imx/imx-media-utils.c
@@ -1007,6 +1007,39 @@ imx_media_pipeline_video_device(struct media_entity *start_entity,
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
index f90a65ba4ced..5f23d852122f 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -205,6 +205,7 @@ imx_media_pipeline_subdev(struct media_entity *start_entity, u32 grp_id,
 struct video_device *
 imx_media_pipeline_video_device(struct media_entity *start_entity,
 				enum v4l2_buf_type buftype, bool upstream);
+struct fwnode_handle *imx_media_get_pad_fwnode(struct media_pad *pad);
 
 struct imx_media_dma_buf {
 	void          *virt;
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index cf9f675c53a3..f2ed13aca2b0 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -439,9 +439,8 @@ static int imx7_csi_get_upstream_endpoint(struct imx7_csi *csi,
 					  struct v4l2_fwnode_endpoint *ep,
 					  bool skip_mux)
 {
-	struct device_node *endpoint, *port;
+	struct fwnode_handle *endpoint;
 	struct media_entity *src;
-	struct v4l2_subdev *sd;
 	struct media_pad *pad;
 
 	if (!csi->src_sd)
@@ -463,29 +462,19 @@ static int imx7_csi_get_upstream_endpoint(struct imx7_csi *csi,
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

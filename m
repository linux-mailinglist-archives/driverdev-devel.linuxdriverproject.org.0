Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA32152375
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 00:50:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D3CB87371;
	Tue,  4 Feb 2020 23:50:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FsxRoieeYG+p; Tue,  4 Feb 2020 23:50:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6C26C87079;
	Tue,  4 Feb 2020 23:50:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B07791BF36B
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AD56A870C7
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kjGy0aa+uWmM for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 23:49:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E673C86EA5
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 23:49:57 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id j15so631pgm.6
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 15:49:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bHkoLoAopDh/1dv+BwgYSSiMTnq6CBi7MdRZKVUgkME=;
 b=OnhOeTnL8j+tQhl0J2QwQllf0/LcmRUjaAJhn9h31tZDYc+UHsX8PHE0pCYlcYUAfZ
 pRVCGs+Q+b0WX96fvvKW+Zoi+2UCYMiXWiwSjvWTCrTZv+1RhDnkNsmAO7YJ4MS6eUxb
 QHhLmiAeN0iiVk4aeMhlBIZsHAAlU5j5AOuhYcBHtpSIO34gm6vSdZd12yUNOZHoWeVR
 tSez0AO7uHaf2rolk5fDiS1yUJ8L77RGZHGpO0rNi3HxWB4oVG+nhnzo3vjSizNE73wj
 GUxhVc0wHkQ/Nk2JtbhS2Bt2mGLTIqb8ECgn0BvR67IfqZh5n9svPSg38UdIiyyo5z6M
 iZow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bHkoLoAopDh/1dv+BwgYSSiMTnq6CBi7MdRZKVUgkME=;
 b=QSkxJf7J5vQ4LEIVoJAI3Qqujxaqee2O6WNdQLOyTb+PPuHrZ1X6RT71j40fGI28l/
 DO36zPGgC1LFvYO+mui/DWFDQgFdydXiuXGM7R2SX88kIOcjzD5iT9nmCfoDQMIg381s
 DvzhvIuG/fuvXQCh80obD/rXR8tDF3jOowp1MOGUBjGKpfzPCvive8wZOY+Mwz4xqwVf
 eVxKG7z1j/qqOjafJrkfOOk1x5pCqJDbAtnlHE4/RxpJaC/VJUrHqnpKNVLSfOM+/1Mm
 dy7HgqtdJSwUvyVaH09Ud7rwDxcHmNE9uPArDS1On3/76vpOGpkZ1QI3balswARop25Z
 ESWQ==
X-Gm-Message-State: APjAAAWjyJ9RQiY67KwfFBevT1oKWlJAa4jq9dEp3950vL2C/PHTdWxV
 NmwO3kH0LhiBgFbdAOHMJgY=
X-Google-Smtp-Source: APXvYqzaAZC2PfzKi8U4riquIjtcm+Kd+InTwISM6YhM4lCAk8kgeaUyQEoCzW/Y1bX6/oEqDADZ8Q==
X-Received: by 2002:a63:c846:: with SMTP id l6mr10114760pgi.144.1580860197353; 
 Tue, 04 Feb 2020 15:49:57 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:56 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 15/17] media: imx: Create missing links from CSI-2 receiver
Date: Tue,  4 Feb 2020 15:49:16 -0800
Message-Id: <20200204234918.20425-16-slongerbeam@gmail.com>
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

The entities external to the i.MX6 IPU and i.MX7 now create the links
to their fwnode-endpoint connected entities in their notifier bound
callbacks. Which means imx_media_create_of_links() and
imx_media_create_csi_of_links() are no longer needed and are removed.

However there is still one case in which imx-media needs to create
fwnode-endpoint based links at probe completion. The v4l2-async framework
does not allow multiple subdevice notifiers to contain a duplicate
subdevice in their asd_list. Only the first subdev notifier that discovers
and adds that one subdevice to its asd_list will receive a bound callback
for it. Other subdevices that also have firmware endpoint connections to
this duplicate subdevice will not have it in their asd_list, and thus will
never receive a bound callback for it. In the case of imx-media, the one
duplicate subdevice in question is the i.MX6 MIPI CSI-2 receiver.

Until there is a solution to that problem, rewrite imx_media_create_links()
to add the missing links from the CSI-2 receiver to the CSIs and CSI muxes.
The function is renamed imx_media_create_csi2_links().

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
Changes in v3:
- call a local imx-media utility imx_media_create_fwnode_pad_links().
Changes in v2:
- this is a rewrite of v1 "media: imx: Use media_create_fwnode_links for
  external links", which only adds the missing CSI-2 receiver links.
---
 .../staging/media/imx/imx-media-dev-common.c  |  46 +++----
 drivers/staging/media/imx/imx-media-of.c      | 114 ------------------
 drivers/staging/media/imx/imx-media.h         |   4 -
 3 files changed, 17 insertions(+), 147 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-dev-common.c b/drivers/staging/media/imx/imx-media-dev-common.c
index 66b505f7e8df..f7ad3cbbeec2 100644
--- a/drivers/staging/media/imx/imx-media-dev-common.c
+++ b/drivers/staging/media/imx/imx-media-dev-common.c
@@ -30,41 +30,31 @@ static int imx_media_subdev_bound(struct v4l2_async_notifier *notifier,
 }
 
 /*
- * Create the media links for all subdevs that registered.
+ * Create the missing media links from the CSI-2 receiver.
  * Called after all async subdevs have bound.
  */
-static int imx_media_create_links(struct v4l2_async_notifier *notifier)
+static void imx_media_create_csi2_links(struct imx_media_dev *imxmd)
 {
-	struct imx_media_dev *imxmd = notifier2dev(notifier);
-	struct v4l2_subdev *sd;
+	struct v4l2_subdev *sd, *csi2 = NULL;
 
 	list_for_each_entry(sd, &imxmd->v4l2_dev.subdevs, list) {
-		switch (sd->grp_id) {
-		case IMX_MEDIA_GRP_ID_IPU_VDIC:
-		case IMX_MEDIA_GRP_ID_IPU_IC_PRP:
-		case IMX_MEDIA_GRP_ID_IPU_IC_PRPENC:
-		case IMX_MEDIA_GRP_ID_IPU_IC_PRPVF:
-			/*
-			 * links have already been created for the
-			 * sync-registered subdevs.
-			 */
-			break;
-		case IMX_MEDIA_GRP_ID_IPU_CSI0:
-		case IMX_MEDIA_GRP_ID_IPU_CSI1:
-		case IMX_MEDIA_GRP_ID_CSI:
-			imx_media_create_csi_of_links(imxmd, sd);
-			break;
-		default:
-			/*
-			 * if this subdev has fwnode links, create media
-			 * links for them.
-			 */
-			imx_media_create_of_links(imxmd, sd);
+		if (sd->grp_id == IMX_MEDIA_GRP_ID_CSI2) {
+			csi2 = sd;
 			break;
 		}
 	}
+	if (!csi2)
+		return;
 
-	return 0;
+	list_for_each_entry(sd, &imxmd->v4l2_dev.subdevs, list) {
+		/* skip if not a CSI or a video mux */
+		if (!(sd->grp_id & IMX_MEDIA_GRP_ID_IPU_CSI) &&
+		    !(sd->grp_id & IMX_MEDIA_GRP_ID_CSI) &&
+		    sd->entity.function != MEDIA_ENT_F_VID_MUX)
+			continue;
+
+		imx_media_create_fwnode_pad_links(csi2, sd);
+	}
 }
 
 /*
@@ -196,9 +186,7 @@ int imx_media_probe_complete(struct v4l2_async_notifier *notifier)
 
 	mutex_lock(&imxmd->mutex);
 
-	ret = imx_media_create_links(notifier);
-	if (ret)
-		goto unlock;
+	imx_media_create_csi2_links(imxmd);
 
 	ret = imx_media_create_pad_vdev_lists(imxmd);
 	if (ret)
diff --git a/drivers/staging/media/imx/imx-media-of.c b/drivers/staging/media/imx/imx-media-of.c
index 2d3efd2a6dde..82e13e972e23 100644
--- a/drivers/staging/media/imx/imx-media-of.c
+++ b/drivers/staging/media/imx/imx-media-of.c
@@ -74,117 +74,3 @@ int imx_media_add_of_subdevs(struct imx_media_dev *imxmd,
 	return ret;
 }
 EXPORT_SYMBOL_GPL(imx_media_add_of_subdevs);
-
-/*
- * Create a single media link to/from sd using a fwnode link.
- *
- * NOTE: this function assumes an OF port node is equivalent to
- * a media pad (port id equal to media pad index), and that an
- * OF endpoint node is equivalent to a media link.
- */
-static int create_of_link(struct imx_media_dev *imxmd,
-			  struct v4l2_subdev *sd,
-			  struct v4l2_fwnode_link *link)
-{
-	struct v4l2_subdev *remote, *src, *sink;
-	int src_pad, sink_pad;
-
-	if (link->local_port >= sd->entity.num_pads)
-		return -EINVAL;
-
-	remote = imx_media_find_subdev_by_fwnode(imxmd, link->remote_node);
-	if (!remote)
-		return 0;
-
-	if (sd->entity.pads[link->local_port].flags & MEDIA_PAD_FL_SINK) {
-		src = remote;
-		src_pad = link->remote_port;
-		sink = sd;
-		sink_pad = link->local_port;
-	} else {
-		src = sd;
-		src_pad = link->local_port;
-		sink = remote;
-		sink_pad = link->remote_port;
-	}
-
-	/* make sure link doesn't already exist before creating */
-	if (media_entity_find_link(&src->entity.pads[src_pad],
-				   &sink->entity.pads[sink_pad]))
-		return 0;
-
-	v4l2_info(sd->v4l2_dev, "%s:%d -> %s:%d\n",
-		  src->name, src_pad, sink->name, sink_pad);
-
-	return media_create_pad_link(&src->entity, src_pad,
-				     &sink->entity, sink_pad, 0);
-}
-
-/*
- * Create media links to/from sd using its device-tree endpoints.
- */
-int imx_media_create_of_links(struct imx_media_dev *imxmd,
-			      struct v4l2_subdev *sd)
-{
-	struct v4l2_fwnode_link link;
-	struct device_node *ep;
-	int ret;
-
-	for_each_endpoint_of_node(sd->dev->of_node, ep) {
-		ret = v4l2_fwnode_parse_link(of_fwnode_handle(ep), &link);
-		if (ret)
-			continue;
-
-		ret = create_of_link(imxmd, sd, &link);
-		v4l2_fwnode_put_link(&link);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-EXPORT_SYMBOL_GPL(imx_media_create_of_links);
-
-/*
- * Create media links to the given CSI subdevice's sink pads,
- * using its device-tree endpoints.
- */
-int imx_media_create_csi_of_links(struct imx_media_dev *imxmd,
-				  struct v4l2_subdev *csi)
-{
-	struct device_node *csi_np = csi->dev->of_node;
-	struct device_node *ep;
-
-	for_each_child_of_node(csi_np, ep) {
-		struct fwnode_handle *fwnode, *csi_ep;
-		struct v4l2_fwnode_link link;
-		int ret;
-
-		memset(&link, 0, sizeof(link));
-
-		link.local_node = of_fwnode_handle(csi_np);
-		link.local_port = CSI_SINK_PAD;
-
-		csi_ep = of_fwnode_handle(ep);
-
-		fwnode = fwnode_graph_get_remote_endpoint(csi_ep);
-		if (!fwnode)
-			continue;
-
-		fwnode = fwnode_get_parent(fwnode);
-		fwnode_property_read_u32(fwnode, "reg", &link.remote_port);
-		fwnode = fwnode_get_next_parent(fwnode);
-		if (is_of_node(fwnode) &&
-		    of_node_name_eq(to_of_node(fwnode), "ports"))
-			fwnode = fwnode_get_next_parent(fwnode);
-		link.remote_node = fwnode;
-
-		ret = create_of_link(imxmd, csi, &link);
-		fwnode_handle_put(link.remote_node);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-EXPORT_SYMBOL_GPL(imx_media_create_csi_of_links);
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index 5f23d852122f..5271b84bea9a 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -248,10 +248,6 @@ void imx_media_unregister_ipu_internal_subdevs(struct imx_media_dev *imxmd);
 /* imx-media-of.c */
 int imx_media_add_of_subdevs(struct imx_media_dev *dev,
 			     struct device_node *np);
-int imx_media_create_of_links(struct imx_media_dev *imxmd,
-			      struct v4l2_subdev *sd);
-int imx_media_create_csi_of_links(struct imx_media_dev *imxmd,
-				  struct v4l2_subdev *csi);
 int imx_media_of_add_csi(struct imx_media_dev *imxmd,
 			 struct device_node *csi_np);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

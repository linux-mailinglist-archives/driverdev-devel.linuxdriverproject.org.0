Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA6F82806
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 01:35:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9439D87B8A;
	Mon,  5 Aug 2019 23:35:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AinBx1irXFz3; Mon,  5 Aug 2019 23:35:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21B7787AAE;
	Mon,  5 Aug 2019 23:35:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E8DB1BF390
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9AF0620441
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mw0ENZ2PCD7S for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 23:35:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 9618120134
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 23:35:40 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id c2so37027764plz.13
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 16:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0S1ar2fMdERTJzIO99lo9VyZc288UAn1DrH6O+6xG3A=;
 b=Tg9MUibHxcwDQfGvRWXjw3IaHbqAI3CNSNU94W3GDMVrNbYxaWalkgmaZG9xLSdcdC
 RWB/02yluRHJjyCd9jgp/t4tUYWHrBj/Y4Tj3e/05X+9GMEoJwuKvu3ZI6BnbQzoZ6sX
 0Ha64RCnDaDxQ5Mn4igGvJn+cvDlfx9BFinUjymmVINucui/sV9MJopRFBwGsFGAdgOv
 BsSNrturNVt+kJdz96eJTgOyVs86jIDpmHeBY7IyrKP8tC7sVnmaIRI964/ktYq4hoI5
 QH196OBdiu9Lr7dD8F0HUv86fYgx7+E8zI9F472sQo7jzhoNtp1ULH5Fj1gYWEUnIbEE
 0ACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0S1ar2fMdERTJzIO99lo9VyZc288UAn1DrH6O+6xG3A=;
 b=r3zijBPgt5RVrs/rLBGogBtq22UCMFsm1DBSMQjMyGMD3nNgk9nhxybdK7c7ekmlJV
 +NOKrcmLOjtCNJSerlbpTOMbO6aycYF3k57zZTHmx103Iaoh/Q4F+WHvtAIIeNAIki4n
 Y9Y5CjnPdXRABHX+HQ4Q60JhheAy8daZAi69DVkBvx+nOnYGyOCa1bKO25bAh7tvncGO
 k0TjEhp5SF3GXq/RFH+u1eCLd8uQqANFJ8VHpzpsPIDP1MzOyycK8nRaJ3bqMImKRseY
 AewYasis2MfK01aRGucW3IMmJU1Zi03Re6qcJd3Hh0R3FTofk/EFg8pi89/37D1OhG9X
 dhqA==
X-Gm-Message-State: APjAAAVoDvySS1yVlrMvCcTlsU0BzbHqbT5YKCkSJz4YiHvPnqJtjWsi
 Kv6/VcxuHlpNKw5pMf/sr9E=
X-Google-Smtp-Source: APXvYqxarRCZVmeKkHTq+3l7c5xuS2KTn9u0u55xlL4X1ShwB8l5jm4IbrYWk7boV6jD2FtQt8b7oA==
X-Received: by 2002:a17:902:bd06:: with SMTP id
 p6mr243778pls.189.1565048140051; 
 Mon, 05 Aug 2019 16:35:40 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:39 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 21/22] media: imx: Use media_create_fwnode_links for external
 links
Date: Mon,  5 Aug 2019 16:35:04 -0700
Message-Id: <20190805233505.21167-22-slongerbeam@gmail.com>
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

The entities external to the i.MX6 IPU and i.MX7 now create the links
to their fwnode-endpoint connected entities in their notifier bound
callbacks.

This should mean that there is no longer a need for the imx-media driver
to create these external fwnode-endpoint based links. But the v4l2-async
framework does not allow multiple subdevice notifiers to contain a
duplicate subdevice in their asd_list. Only the first subdev notifier that
discovers and adds that one subdevice to its asd_list will receive a bound
callback for it. Other subdevices that also have firmware endpoint
connections to this duplicate subdevice will not have it in their asd_list,
and thus will never receive a bound callback for it.

Until there is a solution to that problem, imx_media_create_links() is
still needed to create media links for subdevices that never received a
bound callback.

But media_create_fwnode_links() can now be used to do that work, so
imx_media_create_of_links() and imx_media_create_csi_of_links() are
removed.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 .../staging/media/imx/imx-media-dev-common.c  |  49 ++++----
 drivers/staging/media/imx/imx-media-of.c      | 113 ------------------
 drivers/staging/media/imx/imx-media.h         |   4 -
 3 files changed, 27 insertions(+), 139 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-dev-common.c b/drivers/staging/media/imx/imx-media-dev-common.c
index 66b505f7e8df..4dbe983af030 100644
--- a/drivers/staging/media/imx/imx-media-dev-common.c
+++ b/drivers/staging/media/imx/imx-media-dev-common.c
@@ -36,31 +36,36 @@ static int imx_media_subdev_bound(struct v4l2_async_notifier *notifier,
 static int imx_media_create_links(struct v4l2_async_notifier *notifier)
 {
 	struct imx_media_dev *imxmd = notifier2dev(notifier);
-	struct v4l2_subdev *sd;
+	struct fwnode_handle *sda_fwnode, *sdb_fwnode;
+	struct v4l2_subdev *sda, *sdb;
+
+	list_for_each_entry(sda, &imxmd->v4l2_dev.subdevs, list) {
+		/* links have already been created for the IPU subdevs */
+		if (is_ipu_internal_subdev(sda))
+			continue;
+
+		sda_fwnode = (sda->grp_id & IMX_MEDIA_GRP_ID_IPU_CSI) ?
+			dev_fwnode(sda->dev->parent) :
+			dev_fwnode(sda->dev);
+
+		list_for_each_entry(sdb, &imxmd->v4l2_dev.subdevs, list) {
+			if (sda == sdb)
+				continue;
+			if (is_ipu_internal_subdev(sdb))
+				continue;
+
+			sdb_fwnode = (sdb->grp_id & IMX_MEDIA_GRP_ID_IPU_CSI) ?
+				dev_fwnode(sdb->dev->parent) :
+				dev_fwnode(sdb->dev);
 
-	list_for_each_entry(sd, &imxmd->v4l2_dev.subdevs, list) {
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
 			/*
-			 * if this subdev has fwnode links, create media
-			 * links for them.
+			 * if there are fwnode endpoint connections between
+			 * these subdevs, create media links for them.
 			 */
-			imx_media_create_of_links(imxmd, sd);
-			break;
+			__media_create_fwnode_links(&sda->entity,
+						    sda_fwnode,
+						    &sdb->entity,
+						    sdb_fwnode, 0);
 		}
 	}
 
diff --git a/drivers/staging/media/imx/imx-media-of.c b/drivers/staging/media/imx/imx-media-of.c
index 736c954a8ff5..82e13e972e23 100644
--- a/drivers/staging/media/imx/imx-media-of.c
+++ b/drivers/staging/media/imx/imx-media-of.c
@@ -74,116 +74,3 @@ int imx_media_add_of_subdevs(struct imx_media_dev *imxmd,
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
-			  struct fwnode_link *link)
-{
-	struct v4l2_subdev *remote, *src, *sink;
-	int src_pad, sink_pad;
-
-	if (link->local.port >= sd->entity.num_pads)
-		return -EINVAL;
-
-	remote = imx_media_find_subdev_by_fwnode(imxmd,
-						 link->remote_port_parent);
-	if (!remote)
-		return 0;
-
-	if (sd->entity.pads[link->local.port].flags & MEDIA_PAD_FL_SINK) {
-		src = remote;
-		src_pad = link->remote.port;
-		sink = sd;
-		sink_pad = link->local.port;
-	} else {
-		src = sd;
-		src_pad = link->local.port;
-		sink = remote;
-		sink_pad = link->remote.port;
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
-	struct fwnode_handle *endpoint;
-	struct fwnode_link link;
-	int ret;
-
-	fwnode_graph_for_each_endpoint(dev_fwnode(sd->dev), endpoint) {
-		ret = fwnode_graph_parse_link(endpoint, &link);
-		if (ret)
-			continue;
-
-		ret = create_of_link(imxmd, sd, &link);
-		fwnode_graph_put_link(&link);
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
-	struct fwnode_handle *csi_np = dev_fwnode(csi->dev);
-	struct fwnode_handle *csi_ep;
-
-	fwnode_for_each_child_node(csi_np, csi_ep) {
-		struct fwnode_handle *fwnode;
-		struct fwnode_link link;
-		int ret;
-
-		memset(&link, 0, sizeof(link));
-
-		link.local_port_parent = csi_np;
-		link.local.port = CSI_SINK_PAD;
-
-		fwnode = fwnode_graph_get_remote_endpoint(csi_ep);
-		if (!fwnode)
-			continue;
-
-		fwnode = fwnode_get_parent(fwnode);
-		fwnode_property_read_u32(fwnode, "reg", &link.remote.port);
-		fwnode = fwnode_get_next_parent(fwnode);
-		if (is_of_node(fwnode) &&
-		    of_node_name_eq(to_of_node(fwnode), "ports"))
-			fwnode = fwnode_get_next_parent(fwnode);
-		link.remote_port_parent = fwnode;
-
-		ret = create_of_link(imxmd, csi, &link);
-		fwnode_handle_put(link.remote_port_parent);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-EXPORT_SYMBOL_GPL(imx_media_create_csi_of_links);
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index c42a2cafb8fb..7bdeecd29248 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -238,10 +238,6 @@ void imx_media_unregister_ipu_internal_subdevs(struct imx_media_dev *imxmd);
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

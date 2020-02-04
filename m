Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6819A152368
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 00:49:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C8D8C20415;
	Tue,  4 Feb 2020 23:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ai2CpJLCEQJk; Tue,  4 Feb 2020 23:49:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0C706203EA;
	Tue,  4 Feb 2020 23:49:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 60F4A1BF36B
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 55DB78721E
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h+D84n2zJr3f for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 23:49:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 87F6086FAF
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 23:49:45 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id m13so134835pjb.2
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 15:49:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tRajCHkCPnS+6BeYHw+Smokn34AQmfROoq0aYGtX0Dg=;
 b=BsHA+vI2ZteLGjqZnJ0Of6RlS4vNhQ+w6afs9J+sodW8NikHp57fK8/UikcS20eMbV
 teyOwGAWxRsca6kTlO2nZtNar2W3teUYUU4rwoAoRIvSQcV7oALXEC1KiyHrEzKXIHPj
 y5g1Ai8NgwrGrXsaHMCJ3rvxayya7vzbLlUxKtcLcrFNuvgDWNmZ1eNtnWRy13soqLxZ
 ZLb/nqaAcW5H7hnkswovVEgoq8nmNjMbO9Cv4fvxKo3ZhQnAnU3TduxydfunduY+zJw8
 +6A2MAnCO7wSKOiPkHZtOkAo6bVOCHC6STYZkJVBZ/JFmJhxHwrMztCgfCSfBANm1UON
 VQ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tRajCHkCPnS+6BeYHw+Smokn34AQmfROoq0aYGtX0Dg=;
 b=J6U076RqbpWqspdrTH1BFASvlhkpT1M3ADvEir+lUVnZk3kIfKfJruCOXxIfMgRKGv
 Y+yjAG8UjA3lqW3Bp2IfuA2f9QTf50Mr5zwBn/DGSxewV9IB2qzV2VnAhuhs97Of2qFQ
 J3kqCmXP7MapJEXfKxUHQwKvKUYhSVHVlduu97QgsQQdIAaCB6lwV+nXm2tqLYkNxcZN
 CHOGNuu8G3FBieC8DB4YPfLSrQog5LpKpSMgdyScG46rOH9LL5EC9JRAifAfB3PEzPa9
 TfRXytDGwlfHmP7/2ljrbSKO23suzMcjwwyIkcUtrrr9b4pi0Y/Xsn4Tj9kPDw+iI4BV
 4P8A==
X-Gm-Message-State: APjAAAV5XPI3XRlK7abTpkmxsR2bOKcGDHYwl36RFTszuKwZYJwfkhJi
 eEouhvw19knaRp6+dLX5P1k=
X-Google-Smtp-Source: APXvYqzrM3QQ7DVgguy0VR8yu/rVX99Drqh5odMVERvBRVgXqYV4JU+R9EjcQv5tHly4HXPQYo0llw==
X-Received: by 2002:a17:902:5a42:: with SMTP id
 f2mr32286551plm.19.1580860184895; 
 Tue, 04 Feb 2020 15:49:44 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:44 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 06/17] media: imx: Add imx_media_create_fwnode_pad_link()
Date: Tue,  4 Feb 2020 15:49:07 -0800
Message-Id: <20200204234918.20425-7-slongerbeam@gmail.com>
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

Add functions to create media links between a source and sink subdevice
based on fwnode endpoint connections between them.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-utils.c | 91 +++++++++++++++++++++
 drivers/staging/media/imx/imx-media.h       |  4 +
 2 files changed, 95 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
index 0788a1874557..87152bd9af22 100644
--- a/drivers/staging/media/imx/imx-media-utils.c
+++ b/drivers/staging/media/imx/imx-media-utils.c
@@ -729,6 +729,97 @@ void imx_media_grp_id_to_sd_name(char *sd_name, int sz, u32 grp_id, int ipu_id)
 }
 EXPORT_SYMBOL_GPL(imx_media_grp_id_to_sd_name);
 
+/*
+ * Look for and create a single fwnode link that connects a source
+ * subdevice to a sink pad.
+ */
+int imx_media_create_fwnode_pad_link(struct v4l2_subdev *src_sd,
+				     struct media_pad *sink)
+{
+	struct fwnode_handle *endpoint;
+
+	/* loop thru the source's fwnode endpoints */
+	fwnode_graph_for_each_endpoint(dev_fwnode(src_sd->dev), endpoint) {
+		struct fwnode_handle *remote_ep;
+		int src_idx, sink_idx, ret;
+		struct media_pad *src;
+
+		remote_ep = fwnode_graph_get_remote_endpoint(endpoint);
+		if (!remote_ep)
+			continue;
+
+		/*
+		 * ask the sink entity to verify that this fwnode link
+		 * actually does connect with the entity, and if so that
+		 * it connects to its requested sink pad.
+		 */
+		sink_idx = media_entity_get_fwnode_pad(sink->entity,
+						       remote_ep,
+						       MEDIA_PAD_FL_SINK);
+		fwnode_handle_put(remote_ep);
+
+		if (sink_idx < 0 || sink_idx != sink->index)
+			continue;
+
+		src_idx = media_entity_get_fwnode_pad(&src_sd->entity,
+						      endpoint,
+						      MEDIA_PAD_FL_SOURCE);
+		if (src_idx < 0)
+			continue;
+
+		/*
+		 * found the fwnode link that works, create the media
+		 * link for it.
+		 */
+
+		fwnode_handle_put(endpoint);
+
+		src = &src_sd->entity.pads[src_idx];
+
+		/* success if it already exists */
+		if (media_entity_find_link(src, sink))
+			return 0;
+
+		dev_dbg(src_sd->dev, "%s:%d -> %s:%d\n",
+			src_sd->entity.name, src_idx,
+			sink->entity->name, sink_idx);
+
+		ret = media_create_pad_link(&src_sd->entity, src_idx,
+					    sink->entity, sink_idx, 0);
+		if (ret)
+			dev_err(src_sd->dev,
+				"%s:%d -> %s:%d failed with %d\n",
+				src_sd->entity.name, src_idx,
+				sink->entity->name, sink_idx, ret);
+
+		return ret;
+	}
+
+	return -ENXIO;
+}
+EXPORT_SYMBOL_GPL(imx_media_create_fwnode_pad_link);
+
+int imx_media_create_fwnode_pad_links(struct v4l2_subdev *src_sd,
+				      struct v4l2_subdev *sink_sd)
+{
+	int i;
+
+	for (i = 0; i < sink_sd->entity.num_pads; i++) {
+		struct media_pad *pad = &sink_sd->entity.pads[i];
+		int ret;
+
+		if (!(pad->flags & MEDIA_PAD_FL_SINK))
+			continue;
+
+		ret = imx_media_create_fwnode_pad_link(src_sd, pad);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(imx_media_create_fwnode_pad_links);
+
 struct v4l2_subdev *
 imx_media_find_subdev_by_fwnode(struct imx_media_dev *imxmd,
 				struct fwnode_handle *fwnode)
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index 11861191324a..f90a65ba4ced 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -183,6 +183,10 @@ int imx_media_ipu_image_to_mbus_fmt(struct v4l2_mbus_framefmt *mbus,
 				    struct ipu_image *image);
 void imx_media_grp_id_to_sd_name(char *sd_name, int sz,
 				 u32 grp_id, int ipu_id);
+int imx_media_create_fwnode_pad_link(struct v4l2_subdev *src_sd,
+				     struct media_pad *sink);
+int imx_media_create_fwnode_pad_links(struct v4l2_subdev *src_sd,
+				      struct v4l2_subdev *sink_sd);
 struct v4l2_subdev *
 imx_media_find_subdev_by_fwnode(struct imx_media_dev *imxmd,
 				struct fwnode_handle *fwnode);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

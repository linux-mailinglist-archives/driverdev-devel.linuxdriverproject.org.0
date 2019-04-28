Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C10B662
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Apr 2019 21:10:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E2B785135;
	Sun, 28 Apr 2019 19:10:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MWwmnWlqy2_d; Sun, 28 Apr 2019 19:10:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5009784E15;
	Sun, 28 Apr 2019 19:10:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C404A1BF2F5
 for <devel@linuxdriverproject.org>; Sun, 28 Apr 2019 19:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE13D85C92
 for <devel@linuxdriverproject.org>; Sun, 28 Apr 2019 19:10:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xYv-ZwGnvp5E for <devel@linuxdriverproject.org>;
 Sun, 28 Apr 2019 19:09:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F039785C4C
 for <devel@driverdev.osuosl.org>; Sun, 28 Apr 2019 19:09:40 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id j26so4105791pgl.5
 for <devel@driverdev.osuosl.org>; Sun, 28 Apr 2019 12:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/tMVTYKS5f19+Vm4lAbyz0i8RYRYsyQ7fmIGeWfhtUU=;
 b=X5oMBl65Gh0JL6mVOb8ik7GtY5LrDrWQHf+bIwJRwgbkrzfDWJw56XeTCRWH6424S4
 jt1OFojoMsOR3n92M6zoAv+Dp8I0A3cVGFSumw5Nmt8ZX9YvvU44YDeTkbHmQXzn2KYE
 iXwkaI9Jm6EhyRppPC2Hyu7eWCZLmcEspbwuzS61t5odxwiUvl10BGXViH08GOvVgHBr
 nr+lZJlO+r4186skd8zNIeriWB6oiKSAi/3RZxRqsQjiaPebqGG/Wv5JKPzRa4sDMomA
 P0j6NacLuglKJ5Jywgp0IQlMNLMx7sJrDDDIxP9KINF1sK9ChlnEb32iB4EUh34kVhYP
 Skwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/tMVTYKS5f19+Vm4lAbyz0i8RYRYsyQ7fmIGeWfhtUU=;
 b=niG5WQEnCsH/Gy8OMiP0ihgsXzvjkx1S+scLFcQEVhG3yLNng50GY7uBkaIroO3vvG
 Yoe24q99AZ294msirwLROmnJaU78+lMbcksYYM4P4i4FFyKoCLgsM8jglLkkknPdBvnw
 XtBusvsNEpbm9mzbeYlCwzZT6xGyBWsMfbDuX22UAONKNfBd9K/1O8m72gKDrxRI8voo
 U5hFEet9x9tTW4y6CxjFNNvzJuUXue+qq50Uje58bgcaPv8HxketkWX22nb9WcdKXgwZ
 f939BsdhuaLRP4nxyLLS51PS3ypx3gNF3lauzEvSyPQqWxJdBHPHR+ZufB6Bf375eIpT
 LPpQ==
X-Gm-Message-State: APjAAAVmB/zIi4Aqod4WGN0VZ9dj36JscAQe9+ZNBxf1iw3dBhTepf4x
 AdSWjKH2TWMLJeTMy9sCxVk=
X-Google-Smtp-Source: APXvYqxXRm+wORjX9rU22ovralGAytuPMNEfQGkK6GdKzvLac+9nvxiP4EXkz54MwUTY+V3Lg3z1Mg==
X-Received: by 2002:aa7:8383:: with SMTP id u3mr15971576pfm.245.1556478580546; 
 Sun, 28 Apr 2019 12:09:40 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id o14sm34204712pgn.4.2019.04.28.12.09.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 12:09:39 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 8/8] media: staging/imx: Don't set driver data for v4l2_dev
Date: Sun, 28 Apr 2019 12:09:16 -0700
Message-Id: <20190428190916.26567-9-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190428190916.26567-1-slongerbeam@gmail.com>
References: <20190428190916.26567-1-slongerbeam@gmail.com>
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

The media device is already available via multiple methods, there is no
need to set driver data for v4l2_dev to the media device.

In imx_media_link_notify(), get media device from link->graph_obj.mdev.

In imx_media_capture_device_register(), get media device from
v4l2_dev->mdev.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-capture.c    | 5 +++--
 drivers/staging/media/imx/imx-media-dev-common.c | 7 ++-----
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index b77a67bda47c..565d21f169d8 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -732,15 +732,16 @@ int imx_media_capture_device_register(struct imx_media_video_dev *vdev)
 {
 	struct capture_priv *priv = to_capture_priv(vdev);
 	struct v4l2_subdev *sd = priv->src_sd;
+	struct v4l2_device *v4l2_dev = sd->v4l2_dev;
 	struct video_device *vfd = vdev->vfd;
 	struct vb2_queue *vq = &priv->q;
 	struct v4l2_subdev_format fmt_src;
 	int ret;
 
 	/* get media device */
-	priv->md = dev_get_drvdata(sd->v4l2_dev->dev);
+	priv->md = container_of(v4l2_dev->mdev, struct imx_media_dev, md);
 
-	vfd->v4l2_dev = sd->v4l2_dev;
+	vfd->v4l2_dev = v4l2_dev;
 
 	ret = video_register_device(vfd, VFL_TYPE_GRABBER, -1);
 	if (ret) {
diff --git a/drivers/staging/media/imx/imx-media-dev-common.c b/drivers/staging/media/imx/imx-media-dev-common.c
index 89dc4ec8dadb..66b505f7e8df 100644
--- a/drivers/staging/media/imx/imx-media-dev-common.c
+++ b/drivers/staging/media/imx/imx-media-dev-common.c
@@ -260,10 +260,11 @@ static int imx_media_inherit_controls(struct imx_media_dev *imxmd,
 static int imx_media_link_notify(struct media_link *link, u32 flags,
 				 unsigned int notification)
 {
+	struct imx_media_dev *imxmd = container_of(link->graph_obj.mdev,
+						   struct imx_media_dev, md);
 	struct media_entity *source = link->source->entity;
 	struct imx_media_pad_vdev *pad_vdev;
 	struct list_head *pad_vdev_list;
-	struct imx_media_dev *imxmd;
 	struct video_device *vfd;
 	struct v4l2_subdev *sd;
 	int pad_idx, ret;
@@ -279,8 +280,6 @@ static int imx_media_link_notify(struct media_link *link, u32 flags,
 	sd = media_entity_to_v4l2_subdev(source);
 	pad_idx = link->source->index;
 
-	imxmd = dev_get_drvdata(sd->v4l2_dev->dev);
-
 	pad_vdev_list = to_pad_vdev_list(sd, pad_idx);
 	if (!pad_vdev_list) {
 		/* nothing to do if source sd has no pad vdev list */
@@ -384,8 +383,6 @@ struct imx_media_dev *imx_media_dev_init(struct device *dev,
 		goto cleanup;
 	}
 
-	dev_set_drvdata(imxmd->v4l2_dev.dev, imxmd);
-
 	INIT_LIST_HEAD(&imxmd->vdev_list);
 
 	v4l2_async_notifier_init(&imxmd->notifier);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

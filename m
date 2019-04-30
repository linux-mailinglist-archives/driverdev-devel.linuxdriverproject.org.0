Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B142102D5
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 May 2019 00:53:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB3B386C11;
	Tue, 30 Apr 2019 22:53:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m7hsfFcxzvH6; Tue, 30 Apr 2019 22:53:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BCF5486B3C;
	Tue, 30 Apr 2019 22:53:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B3D3B1BF295
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 22:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 06E1D84480
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 22:53:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yovFInXkPLVu for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 22:53:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CCB3385FBA
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 22:50:41 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id l18so7522543pgj.6
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 15:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/tMVTYKS5f19+Vm4lAbyz0i8RYRYsyQ7fmIGeWfhtUU=;
 b=g8UnKYciCcCeuxEBsFXx9BB0P12k+LHkSTyBE0sTAkr61T4IPd1irA6y4ARoI9o7FZ
 FfvwtujtrOWCUw9DxyxWCqWB7wtALILsGinhawVuPo2yyj4JIF7Q0kKSSUgo9dDIi1Hb
 FP2rYZud3bdZuNpOagA7DzgGc6ndwauBUfewhG3/6vMywxYsKo5j8MyxJv1aRRtLVEKN
 TLBIgIvskDGVT1gayJSt4MrkX7zPbaC9dT6jUdmG10+glVK101thai+zGaO7fZ0bK6DY
 POwCCgFsj7W5eDqiyUWszD0+g+kdbKyG2LAbagDbQSyV/XpBx2MF0O8zqKCZUlxqdAwl
 4CCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/tMVTYKS5f19+Vm4lAbyz0i8RYRYsyQ7fmIGeWfhtUU=;
 b=dCnJgsLx6ImG/vMFLOeDT+AIpDTp65Psbi9AIFBLHTcrVtnHF6oqWjnfsyxERorXgg
 fhWRP95ivT5RhSjAO0vkWtV6xMDNxdAteuKmXgVET+kSkGsetnKfrLzKAbEsIsD0Gg1r
 X+vtbe1/yxY6BkVtCm1LUIZqW70AyP4VbFRceER6ibzmi88Ks/3YpqN3i3Y8PcmUYf7l
 mXJHWWPT4iC94zc6dIVoUZsYRITys61gCKcraFE40T43yTZshJb9Lu8LlTy8jKzrqKlZ
 GNrDTdoyprJoAu5V2zEWhKUWevssih0MmKsmwnxwtDEwQookOSAkxpeF8eFfrpU9RcJx
 8Sqw==
X-Gm-Message-State: APjAAAVEPwIfXaUHXUQWlEldJGnXXOrnDcT3ZIu9Upbo92b3MggydZdf
 yqv+c+dwB7pbst6CBNMyl8g=
X-Google-Smtp-Source: APXvYqxv34ziQubJh4BxSyUCO8v71+zp7yo39zeBhh/bEpP1aYlhXbHb4YuXLJ4JczsxjUJhlDqKLw==
X-Received: by 2002:aa7:9245:: with SMTP id 5mr34274893pfp.252.1556664641403; 
 Tue, 30 Apr 2019 15:50:41 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id l23sm9804654pgj.36.2019.04.30.15.50.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 15:50:40 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 8/8] media: staging/imx: Don't set driver data for v4l2_dev
Date: Tue, 30 Apr 2019 15:50:18 -0700
Message-Id: <20190430225018.30252-9-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190430225018.30252-1-slongerbeam@gmail.com>
References: <20190430225018.30252-1-slongerbeam@gmail.com>
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BD0B660
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Apr 2019 21:09:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8313A8610A;
	Sun, 28 Apr 2019 19:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VGIarXaXYF-q; Sun, 28 Apr 2019 19:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B4C3185D02;
	Sun, 28 Apr 2019 19:09:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D12AE1BF2F5
 for <devel@linuxdriverproject.org>; Sun, 28 Apr 2019 19:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CE0AE865C6
 for <devel@linuxdriverproject.org>; Sun, 28 Apr 2019 19:09:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jxFoFWltXcpF for <devel@linuxdriverproject.org>;
 Sun, 28 Apr 2019 19:09:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CF37A865A1
 for <devel@driverdev.osuosl.org>; Sun, 28 Apr 2019 19:09:31 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id w24so4045498plp.2
 for <devel@driverdev.osuosl.org>; Sun, 28 Apr 2019 12:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AAMozjG2W0PZy93LSAs4zDJPg/GRcksOW95uh6hbVyE=;
 b=IBOJNNkZqClAiZtUfjDX4XJRF+tNusbapSFsD6ms7P2O2jpYpqR8ewRLr3gSRHEFF7
 ISzkhUIWbEdsM3arGsGeMJxrwxVV758cqf7qAzlrlJvG0rKPm7bMtfVta3r4jiOhNJle
 Y0QkkhMXMkbRObYOh4B8ZI2bfmp+hm4BYyHudJxaeB18SZOdFvVy/P8fFHrR+sEtjcow
 5ofCj+06yDaJMsw8J4cjvl5c8d54dmG+8b5UouFmccR7irfV/QCi9CX/V+fWPBF50TBd
 tJz3oEdyj3R8XPXEs301gtjNTBi4wB5pL3Zj5dZoR9aDztLZuiF8lnDED0FPrPZysDmP
 KfUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AAMozjG2W0PZy93LSAs4zDJPg/GRcksOW95uh6hbVyE=;
 b=PH9VyGTtGoxee/0Yz3dzdU7lb7F6Ok5F6xu/3/rPoa7tCjXRoij7dFcmdI+LDI9VM8
 8mL3mosSmbzsuzTYpCGHC3ENfVLYpPqJ4NjVON4CNTRj1ebfYi3tQfGX/O8L3iyqbYGf
 x5KdmGCFyZpk7TQfPZmmOmNEReVDnivKZcV1ie4QdJoyry7pryVOAAMxnMTmv05XBdcM
 s09q9UrkC44ZYNcA0nE+zv0slY/DN6tsMG4Hi0GZKjx8F2XNRHtTRVKdZYWswAGYUQ/A
 axwlZVwINZ7U54xL6NmT9Ne/6dNyHwKYhYgkcVMuQ+5vH8If6TaZN9cfwvLi0nVSHBg/
 NThw==
X-Gm-Message-State: APjAAAXxpIg+50g5zXClojagAlwC7ffVBmhKoNZ9dKrFoAXaV8rY+NTp
 oxkAMgf5RFRiGX65nLUn3gk=
X-Google-Smtp-Source: APXvYqwVNB3dgH3aK6NrEyDftcG/KmBl9vAQYkqyAHKeMNUZhfiJ3u3+ECSKmJlhPOZsxgKEEvx7Tg==
X-Received: by 2002:a17:902:8c85:: with SMTP id
 t5mr49046497plo.23.1556478571430; 
 Sun, 28 Apr 2019 12:09:31 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id o14sm34204712pgn.4.2019.04.28.12.09.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 12:09:30 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 3/8] media: staging/imx: Move add_video_device into
 capture_device_register
Date: Sun, 28 Apr 2019 12:09:11 -0700
Message-Id: <20190428190916.26567-4-slongerbeam@gmail.com>
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

Move imx_media_add_video_device() into imx_media_capture_device_register().
Also the former has no error conditions to convert to void.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-ic-prpencvf.c   |  5 -----
 drivers/staging/media/imx/imx-media-capture.c |  3 +++
 drivers/staging/media/imx/imx-media-csi.c     |  7 +------
 drivers/staging/media/imx/imx-media-utils.c   |  9 ++++-----
 drivers/staging/media/imx/imx-media.h         |  4 ++--
 drivers/staging/media/imx/imx7-media-csi.c    | 12 +-----------
 6 files changed, 11 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
index ddcd87a17c71..8242d88dfb82 100644
--- a/drivers/staging/media/imx/imx-ic-prpencvf.c
+++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
@@ -1241,7 +1241,6 @@ static int prp_s_frame_interval(struct v4l2_subdev *sd,
 static int prp_registered(struct v4l2_subdev *sd)
 {
 	struct prp_priv *priv = sd_to_priv(sd);
-	struct imx_ic_priv *ic_priv = priv->ic_priv;
 	int i, ret;
 	u32 code;
 
@@ -1271,10 +1270,6 @@ static int prp_registered(struct v4l2_subdev *sd)
 	if (ret)
 		return ret;
 
-	ret = imx_media_add_video_device(ic_priv->md, priv->vdev);
-	if (ret)
-		goto unreg;
-
 	ret = prp_init_controls(priv);
 	if (ret)
 		goto unreg;
diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index 211ec4df2066..335084a6b0cd 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -780,6 +780,9 @@ int imx_media_capture_device_register(struct imx_media_video_dev *vdev)
 
 	vfd->ctrl_handler = &priv->ctrl_hdlr;
 
+	/* add vdev to the video device list */
+	imx_media_add_video_device(priv->md, vdev);
+
 	return 0;
 unreg:
 	video_unregister_device(vfd);
diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index ea3d13103c91..c70fa6b509ae 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1820,13 +1820,8 @@ static int csi_registered(struct v4l2_subdev *sd)
 	if (ret)
 		goto free_fim;
 
-	ret = imx_media_add_video_device(priv->md, priv->vdev);
-	if (ret)
-		goto unreg;
-
 	return 0;
-unreg:
-	imx_media_capture_device_unregister(priv->vdev);
+
 free_fim:
 	if (priv->fim)
 		imx_media_fim_free(priv->fim);
diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
index c52aa59acd05..8a6e57652402 100644
--- a/drivers/staging/media/imx/imx-media-utils.c
+++ b/drivers/staging/media/imx/imx-media-utils.c
@@ -767,18 +767,17 @@ imx_media_find_subdev_by_devname(struct imx_media_dev *imxmd,
 EXPORT_SYMBOL_GPL(imx_media_find_subdev_by_devname);
 
 /*
- * Adds a video device to the master video device list. This is called by
- * an async subdev that owns a video device when it is registered.
+ * Adds a video device to the master video device list. This is called
+ * when a video device is registered.
  */
-int imx_media_add_video_device(struct imx_media_dev *imxmd,
-			       struct imx_media_video_dev *vdev)
+void imx_media_add_video_device(struct imx_media_dev *imxmd,
+				struct imx_media_video_dev *vdev)
 {
 	mutex_lock(&imxmd->mutex);
 
 	list_add_tail(&vdev->list, &imxmd->vdev_list);
 
 	mutex_unlock(&imxmd->mutex);
-	return 0;
 }
 EXPORT_SYMBOL_GPL(imx_media_add_video_device);
 
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index ba2d75bcc4c9..71e20f53ed7b 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -189,8 +189,8 @@ imx_media_find_subdev_by_fwnode(struct imx_media_dev *imxmd,
 struct v4l2_subdev *
 imx_media_find_subdev_by_devname(struct imx_media_dev *imxmd,
 				 const char *devname);
-int imx_media_add_video_device(struct imx_media_dev *imxmd,
-			       struct imx_media_video_dev *vdev);
+void imx_media_add_video_device(struct imx_media_dev *imxmd,
+				struct imx_media_video_dev *vdev);
 int imx_media_find_mipi_csi2_channel(struct imx_media_dev *imxmd,
 				     struct media_entity *start_entity);
 struct media_pad *
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index 96d01d8af874..f2037aba6e0e 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -1126,17 +1126,7 @@ static int imx7_csi_registered(struct v4l2_subdev *sd)
 	if (ret < 0)
 		return ret;
 
-	ret = imx_media_capture_device_register(csi->vdev);
-	if (ret < 0)
-		return ret;
-
-	ret = imx_media_add_video_device(csi->imxmd, csi->vdev);
-	if (ret < 0) {
-		imx_media_capture_device_unregister(csi->vdev);
-		return ret;
-	}
-
-	return 0;
+	return imx_media_capture_device_register(csi->vdev);
 }
 
 static void imx7_csi_unregistered(struct v4l2_subdev *sd)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

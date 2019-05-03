Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8850135BC
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 00:43:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 147E13104A;
	Fri,  3 May 2019 22:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lsu+CCNff6Cg; Fri,  3 May 2019 22:43:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7496C2318D;
	Fri,  3 May 2019 22:43:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 499401BF3D2
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:43:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 45E5087A51
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:43:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ZZkkUeGWgri for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 22:43:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6ECA387A20
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 22:43:40 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id v80so3580591pfa.3
 for <devel@driverdev.osuosl.org>; Fri, 03 May 2019 15:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AAMozjG2W0PZy93LSAs4zDJPg/GRcksOW95uh6hbVyE=;
 b=Fi62tX9rpW2xxFI1jMVKih2RQts9yBWQUOylw0PTNXe/mEMl8G7AnrYDL1SQsr6xG4
 jZD4BcVHT7MrBhqt7E4hKaaBgBpWdoBwQArEDEn8DxSpsYdGrKMlmHQwJYDWekei6Smf
 /WZlwkTE3TYpiu1plG01Uw7q4Bt6m8zyiEsI0XAhgmsI8eX7KLbsDR+L2nbeN1dlXNzu
 Aho9Zc6u6S90unQrDG3uQk17HwmLJyoHl2l6CBrF6QqaAhWzIC17xzD+RJwmplSnlyDD
 OqlglcNXk8v7UToAiAIVU2ESeGy82bkEEYuT1IslCvyKIkplNMz1QcL1TDuJMeXF3xnO
 /9oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AAMozjG2W0PZy93LSAs4zDJPg/GRcksOW95uh6hbVyE=;
 b=bP0K1s7g5jhygpkjoU9rPorn/W0luwMBbQp5NNMQuRTUcsZLmXbkp66JWO7aQb250E
 3qCeP8EtcDt0oCb737ALuZ9NyiHKL9xy0s5BiluLWRJft3+RQ6jhWlWL9UyeI9vLaprK
 FavQIxQglD6NDBkRcTFeds53R+BjCJZ93pMkvAKlkCeZN9Uose9n+i1ss9GdSDTYWwJU
 QHIUa3pmr1EH8FNQj6CarcsMdsFRPFiUbxtZ0u8vQ9/9NORoVSCTHmr2QhqxraSci74R
 WlMBspT5Y3M5vwACxJ3ItyPHgN8hsvEGVXypQNrDPWTjCCKKjoRbJrzqbC+Reasqkuh7
 /WUw==
X-Gm-Message-State: APjAAAUFh3uuQEOVhkVVzO3WaUYMhjZmei3/tJd89GQ5GOhDVJgwfzIX
 xmElkndQItcgKhLwVsIKu7I=
X-Google-Smtp-Source: APXvYqy1PuRNJ537V9mU26GDwfGtXQ3NljGsEJemvizZOrry6CET3KRnr4m+Ke+ukNxPknQRzH0EWg==
X-Received: by 2002:a62:69c2:: with SMTP id
 e185mr14574382pfc.119.1556923419883; 
 Fri, 03 May 2019 15:43:39 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id e62sm4793871pfa.50.2019.05.03.15.43.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 15:43:39 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 3/8] media: staging/imx: Move add_video_device into
 capture_device_register
Date: Fri,  3 May 2019 15:43:21 -0700
Message-Id: <20190503224326.21039-4-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190503224326.21039-1-slongerbeam@gmail.com>
References: <20190503224326.21039-1-slongerbeam@gmail.com>
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

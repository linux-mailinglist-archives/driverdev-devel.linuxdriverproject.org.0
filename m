Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB64102BC
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 May 2019 00:51:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4DC2186C24;
	Tue, 30 Apr 2019 22:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id feYalPB9UrAL; Tue, 30 Apr 2019 22:51:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8860286C12;
	Tue, 30 Apr 2019 22:51:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E08021BF295
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 22:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 741B987A11
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 22:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LJUSHDcNDgJw for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 22:51:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 310C087A5E
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 22:50:35 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id d9so7416388pls.8
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 15:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CyjREGYTzE7t+M0F2sY+PqenAwf3veqlsJcnGpFRNuE=;
 b=jhsnaiAbMRrP2ao1PTWYbqAEJHpcUcM1Io7c2tA6RITFTrmq/Dbb7PFy75O8XbQVE1
 IO0HFAOIgXTH0DVBvQBtL6HBEW8OMmldzoY4u7kqLTcmCBvKqIwc9iHO9QmlRbitNfuD
 B2Hzb0+TO6JaVJZ+L+Rru7I4YCzhwWsLATdaypb1fqL/VAOIBqQKmxCjaprC7OSjWVIV
 OSKd3/xeCH6nZ1tM1hwfEB4SOB2TWV68yWtCJRuJeD+xGABmqmWK+URtVXUl1vlZKnaB
 fl8YjUsJP6qQSMCQWVvh1wBjp7Akhm5cTay9cKAArKWjW2ikpQeU5Iq8cescUZycQhSa
 2AxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CyjREGYTzE7t+M0F2sY+PqenAwf3veqlsJcnGpFRNuE=;
 b=VuB9SeH2u5eEgaEr0Qxmnl4uxHHP9vEOOsTRw1ehQ7xmFOqwbaZ/kgKcmazho8AfSO
 Wf5SLOi2VQf+JWM35LjmIlQ0UdZ4w1x0bLutrI6ZzP4wqbirv6Lqg3ejaNzr5xDiKY+3
 P6RehMThNiEW5p5gEkAbiXUTCtIR17WXDhmYgfX6+5H2ixxFFm39IZZw+n+miazzjSYY
 yYQ9io/txh7mocKvMX/Wx0emHEu+WkZyEFJLNAIq3p0BRFtrQ7Dr4sKeul4swQirzjqd
 dQLifh/NyGKdMgSP3xZ2O4Oy/IRKVYa2BK8hVWDhJqz8WcFHbM5+g2oJeZjeM/WhrWda
 tDNQ==
X-Gm-Message-State: APjAAAWNRt/fFcoJS5RIdYdi4DiuEvIjp/GQzl6GZ6db0JyTLFIvMeOZ
 nss6fYdmkcd5jCM6OWLM1Oo=
X-Google-Smtp-Source: APXvYqyc2Ff3RdMku1CJbmyDQ75DlP9ET8PjkbZwf1yPhckxKEp3LFcjA+UhABzKk1Hd3AFpvioSQA==
X-Received: by 2002:a17:902:266:: with SMTP id
 93mr73332891plc.201.1556664634517; 
 Tue, 30 Apr 2019 15:50:34 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id l23sm9804654pgj.36.2019.04.30.15.50.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 15:50:33 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 4/8] Revert "media: imx: Set capture compose rectangle in
 capture_device_set_format"
Date: Tue, 30 Apr 2019 15:50:14 -0700
Message-Id: <20190430225018.30252-5-slongerbeam@gmail.com>
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

Rvert this commit, as imx_media_capture_device_set_format() will be
removed. The arguments to mx_media_mbus_fmt_to_pix_fmt() and
imx_media_capture_device_set_format() in imx7_csi_set_fmt() are also
reverted.

This reverts commit 5964cbd8692252615370b77eb96764dd70c2f837.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
Chnges in v3:
- revert to previous args in imx7_csi_set_fmt().
---
 drivers/staging/media/imx/imx-ic-prpencvf.c   |  5 ++--
 drivers/staging/media/imx/imx-media-capture.c | 24 +++++++++----------
 drivers/staging/media/imx/imx-media-csi.c     |  5 ++--
 drivers/staging/media/imx/imx-media-utils.c   | 20 ++++------------
 drivers/staging/media/imx/imx-media.h         |  6 ++---
 drivers/staging/media/imx/imx7-media-csi.c    |  5 ++--
 6 files changed, 25 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
index 8242d88dfb82..afaa3a8b15e9 100644
--- a/drivers/staging/media/imx/imx-ic-prpencvf.c
+++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
@@ -910,7 +910,6 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
 	const struct imx_media_pixfmt *cc;
 	struct v4l2_pix_format vdev_fmt;
 	struct v4l2_mbus_framefmt *fmt;
-	struct v4l2_rect vdev_compose;
 	int ret = 0;
 
 	if (sdformat->pad >= PRPENCVF_NUM_PADS)
@@ -952,11 +951,11 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
 	priv->cc[sdformat->pad] = cc;
 
 	/* propagate output pad format to capture device */
-	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt, &vdev_compose,
+	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
 				      &priv->format_mbus[PRPENCVF_SRC_PAD],
 				      priv->cc[PRPENCVF_SRC_PAD]);
 	mutex_unlock(&priv->lock);
-	imx_media_capture_device_set_format(vdev, &vdev_fmt, &vdev_compose);
+	imx_media_capture_device_set_format(vdev, &vdev_fmt);
 
 	return 0;
 out:
diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index 335084a6b0cd..555f6204660b 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -205,8 +205,7 @@ static int capture_g_fmt_vid_cap(struct file *file, void *fh,
 
 static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
 				     struct v4l2_subdev_format *fmt_src,
-				     struct v4l2_format *f,
-				     struct v4l2_rect *compose)
+				     struct v4l2_format *f)
 {
 	const struct imx_media_pixfmt *cc, *cc_src;
 
@@ -246,8 +245,7 @@ static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
 		}
 	}
 
-	imx_media_mbus_fmt_to_pix_fmt(&f->fmt.pix, compose,
-				      &fmt_src->format, cc);
+	imx_media_mbus_fmt_to_pix_fmt(&f->fmt.pix, &fmt_src->format, cc);
 
 	return 0;
 }
@@ -265,7 +263,7 @@ static int capture_try_fmt_vid_cap(struct file *file, void *fh,
 	if (ret)
 		return ret;
 
-	return __capture_try_fmt_vid_cap(priv, &fmt_src, f, NULL);
+	return __capture_try_fmt_vid_cap(priv, &fmt_src, f);
 }
 
 static int capture_s_fmt_vid_cap(struct file *file, void *fh,
@@ -273,7 +271,6 @@ static int capture_s_fmt_vid_cap(struct file *file, void *fh,
 {
 	struct capture_priv *priv = video_drvdata(file);
 	struct v4l2_subdev_format fmt_src;
-	struct v4l2_rect compose;
 	int ret;
 
 	if (vb2_is_busy(&priv->q)) {
@@ -287,14 +284,17 @@ static int capture_s_fmt_vid_cap(struct file *file, void *fh,
 	if (ret)
 		return ret;
 
-	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f, &compose);
+	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f);
 	if (ret)
 		return ret;
 
 	priv->vdev.fmt.fmt.pix = f->fmt.pix;
 	priv->vdev.cc = imx_media_find_format(f->fmt.pix.pixelformat,
 					      CS_SEL_ANY, true);
-	priv->vdev.compose = compose;
+	priv->vdev.compose.left = 0;
+	priv->vdev.compose.top = 0;
+	priv->vdev.compose.width = fmt_src.format.width;
+	priv->vdev.compose.height = fmt_src.format.height;
 
 	return 0;
 }
@@ -655,8 +655,7 @@ static struct video_device capture_videodev = {
 };
 
 void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
-					 const struct v4l2_pix_format *pix,
-					 const struct v4l2_rect *compose)
+					 struct v4l2_pix_format *pix)
 {
 	struct capture_priv *priv = to_capture_priv(vdev);
 
@@ -664,7 +663,6 @@ void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
 	priv->vdev.fmt.fmt.pix = *pix;
 	priv->vdev.cc = imx_media_find_format(pix->pixelformat, CS_SEL_ANY,
 					      true);
-	priv->vdev.compose = *compose;
 	mutex_unlock(&priv->mutex);
 }
 EXPORT_SYMBOL_GPL(imx_media_capture_device_set_format);
@@ -770,8 +768,10 @@ int imx_media_capture_device_register(struct imx_media_video_dev *vdev)
 	}
 
 	vdev->fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
-	imx_media_mbus_fmt_to_pix_fmt(&vdev->fmt.fmt.pix, &vdev->compose,
+	imx_media_mbus_fmt_to_pix_fmt(&vdev->fmt.fmt.pix,
 				      &fmt_src.format, NULL);
+	vdev->compose.width = fmt_src.format.width;
+	vdev->compose.height = fmt_src.format.height;
 	vdev->cc = imx_media_find_format(vdev->fmt.fmt.pix.pixelformat,
 					 CS_SEL_ANY, false);
 
diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index c70fa6b509ae..09b89a72eaa2 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1512,7 +1512,6 @@ static int csi_set_fmt(struct v4l2_subdev *sd,
 	struct v4l2_pix_format vdev_fmt;
 	struct v4l2_mbus_framefmt *fmt;
 	struct v4l2_rect *crop, *compose;
-	struct v4l2_rect vdev_compose;
 	int ret;
 
 	if (sdformat->pad >= CSI_NUM_PADS)
@@ -1568,11 +1567,11 @@ static int csi_set_fmt(struct v4l2_subdev *sd,
 	priv->cc[sdformat->pad] = cc;
 
 	/* propagate IDMAC output pad format to capture device */
-	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt, &vdev_compose,
+	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
 				      &priv->format_mbus[CSI_SRC_PAD_IDMAC],
 				      priv->cc[CSI_SRC_PAD_IDMAC]);
 	mutex_unlock(&priv->lock);
-	imx_media_capture_device_set_format(vdev, &vdev_fmt, &vdev_compose);
+	imx_media_capture_device_set_format(vdev, &vdev_fmt);
 
 	return 0;
 out:
diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
index 8a6e57652402..a80ef0b087ad 100644
--- a/drivers/staging/media/imx/imx-media-utils.c
+++ b/drivers/staging/media/imx/imx-media-utils.c
@@ -577,8 +577,7 @@ void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
 EXPORT_SYMBOL_GPL(imx_media_fill_default_mbus_fields);
 
 int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
-				  struct v4l2_rect *compose,
-				  const struct v4l2_mbus_framefmt *mbus,
+				  struct v4l2_mbus_framefmt *mbus,
 				  const struct imx_media_pixfmt *cc)
 {
 	u32 width;
@@ -625,17 +624,6 @@ int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
 	pix->sizeimage = cc->planar ? ((stride * pix->height * cc->bpp) >> 3) :
 			 stride * pix->height;
 
-	/*
-	 * set capture compose rectangle, which is fixed to the
-	 * source subdevice mbus format.
-	 */
-	if (compose) {
-		compose->left = 0;
-		compose->top = 0;
-		compose->width = mbus->width;
-		compose->height = mbus->height;
-	}
-
 	return 0;
 }
 EXPORT_SYMBOL_GPL(imx_media_mbus_fmt_to_pix_fmt);
@@ -647,11 +635,13 @@ int imx_media_mbus_fmt_to_ipu_image(struct ipu_image *image,
 
 	memset(image, 0, sizeof(*image));
 
-	ret = imx_media_mbus_fmt_to_pix_fmt(&image->pix, &image->rect,
-					    mbus, NULL);
+	ret = imx_media_mbus_fmt_to_pix_fmt(&image->pix, mbus, NULL);
 	if (ret)
 		return ret;
 
+	image->rect.width = mbus->width;
+	image->rect.height = mbus->height;
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(imx_media_mbus_fmt_to_ipu_image);
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index 71e20f53ed7b..ddea972b7bc4 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -174,8 +174,7 @@ void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
 					struct v4l2_mbus_framefmt *fmt,
 					bool ic_route);
 int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
-				  struct v4l2_rect *compose,
-				  const struct v4l2_mbus_framefmt *mbus,
+				  struct v4l2_mbus_framefmt *mbus,
 				  const struct imx_media_pixfmt *cc);
 int imx_media_mbus_fmt_to_ipu_image(struct ipu_image *image,
 				    struct v4l2_mbus_framefmt *mbus);
@@ -280,8 +279,7 @@ void imx_media_capture_device_unregister(struct imx_media_video_dev *vdev);
 struct imx_media_buffer *
 imx_media_capture_device_next_buf(struct imx_media_video_dev *vdev);
 void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
-					 const struct v4l2_pix_format *pix,
-					 const struct v4l2_rect *compose);
+					 struct v4l2_pix_format *pix);
 void imx_media_capture_device_error(struct imx_media_video_dev *vdev);
 
 /* subdev group ids */
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index f2037aba6e0e..e2622c05a793 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -1035,7 +1035,6 @@ static int imx7_csi_set_fmt(struct v4l2_subdev *sd,
 	const struct imx_media_pixfmt *outcc;
 	struct v4l2_mbus_framefmt *outfmt;
 	struct v4l2_pix_format vdev_fmt;
-	struct v4l2_rect vdev_compose;
 	const struct imx_media_pixfmt *cc;
 	struct v4l2_mbus_framefmt *fmt;
 	struct v4l2_subdev_format format;
@@ -1086,11 +1085,11 @@ static int imx7_csi_set_fmt(struct v4l2_subdev *sd,
 	csi->cc[sdformat->pad] = cc;
 
 	/* propagate output pad format to capture device */
-	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt, &vdev_compose,
+	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
 				      &csi->format_mbus[IMX7_CSI_PAD_SRC],
 				      csi->cc[IMX7_CSI_PAD_SRC]);
 	mutex_unlock(&csi->lock);
-	imx_media_capture_device_set_format(vdev, &vdev_fmt, &vdev_compose);
+	imx_media_capture_device_set_format(vdev, &vdev_fmt);
 
 	return 0;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

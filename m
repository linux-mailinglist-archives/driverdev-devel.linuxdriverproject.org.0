Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B54135C4
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 00:44:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7C8C423235;
	Fri,  3 May 2019 22:44:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VAry+r7YqMUb; Fri,  3 May 2019 22:43:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 54D982274B;
	Fri,  3 May 2019 22:43:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2986A1BF3D2
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:43:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2564088582
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:43:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Un+bbty2vCcp for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 22:43:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E8B99885AC
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 22:43:43 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id e24so3560709pfi.12
 for <devel@driverdev.osuosl.org>; Fri, 03 May 2019 15:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZCx7wGDZUKICCQEgjAKbF8FFcJQqVKBreZbgfUSXqMc=;
 b=qmJEvWNFJDFlNxK61ky8fk6oLZmLhysaqOZAn9h3Xr07Mb8t3DHFvbknlVfjlhtF3V
 /4MlgMv8mgtcYDDf2ztg9JtBljAQNumGICO1mOwPs7OUvgnhHuSAxZbYwWludVIDrUPW
 crF9IRHCV7E51nPBncTFjYkEiLCZ879JMTqV0sNz4PIIjaG4G2fanW6nP8HVc0j9sKxR
 PU/uH6+ep9C7NiPoLI3gUOg0WvPGB0nSjCMeVPQZvvMiL6tlfzaDqcDO/HX14rCnK7vf
 6c22k1ys0eljnU/61cAkGOI6PINkhg8dRIWQDxu/tbzO7kPNdNQdtT1YLX6S2IWAi7fp
 J86w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZCx7wGDZUKICCQEgjAKbF8FFcJQqVKBreZbgfUSXqMc=;
 b=odGOeP96tn1MxuSGRA4hmy6v67hM1jNdC5P2x5+52i3eQpMQyMVQLjBh99BPGfGgjT
 /iPHa1gmlT0dmk6TzxqTZINLX9P3Eq5Uptve+ZqXHhE4nJPqA4P4IiiilHlS8kAQ5Qjj
 AnCSC5Xfw6/Km30AGpB0QKpvfLQJ3iiv4DjSA9B+PySHVX5P2lofnY170GO/HPzuIddY
 stBN5d4q4aHnvdMCxNwDhQpWHNi00ZyxgmaQp2VZqJuLNRH9jbAYqKGh6Yo+RrOleVPV
 xdA1TaPSgm1bqZES67KZ7WiEg3Ej999sMWg/D3xbY2omZi2HXuHJivGh/Y96CpLT0JwW
 F2ng==
X-Gm-Message-State: APjAAAVt15bQURJCqNQbBCZG7hyaYjC1fjzj08SaOXtvlARquShQt51m
 pAnXs7/5TSeWzOIlUyZ+1gFJFqCP
X-Google-Smtp-Source: APXvYqxdciRjK6jtPgxS4dFGHacKBKBJe0/jd588o95hH36+xeXkZ+APiHQopumbqxxL+ybIttYg7A==
X-Received: by 2002:a62:1d0d:: with SMTP id d13mr14713211pfd.96.1556923423414; 
 Fri, 03 May 2019 15:43:43 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id e62sm4793871pfa.50.2019.05.03.15.43.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 15:43:42 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 5/8] media: staging/imx: Remove capture_device_set_format
Date: Fri,  3 May 2019 15:43:23 -0700
Message-Id: <20190503224326.21039-6-slongerbeam@gmail.com>
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

Don't propagate the source pad format to the connected capture device.
It's now the responsibility of userspace to call VIDIOC_S_FMT on the
capture device to ensure the capture format and compose rectangle
are compatible with the connected source. To check this, validate
the capture format with the source before streaming starts.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
Changes in v4:
- add **cc arg to __capture_try_fmt_vid_cap() to validate colorspace,
  instead of calling ipu_pixelformat_to_colorspace().
- add error message if capture format validation failed.
---
 drivers/staging/media/imx/imx-ic-prpencvf.c   | 16 +----
 drivers/staging/media/imx/imx-media-capture.c | 71 +++++++++++++------
 drivers/staging/media/imx/imx-media-csi.c     | 16 +----
 drivers/staging/media/imx/imx-media.h         |  2 -
 drivers/staging/media/imx/imx7-media-csi.c    | 17 +----
 5 files changed, 55 insertions(+), 67 deletions(-)

diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
index afaa3a8b15e9..63334fd61492 100644
--- a/drivers/staging/media/imx/imx-ic-prpencvf.c
+++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
@@ -906,9 +906,7 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
 		       struct v4l2_subdev_format *sdformat)
 {
 	struct prp_priv *priv = sd_to_priv(sd);
-	struct imx_media_video_dev *vdev = priv->vdev;
 	const struct imx_media_pixfmt *cc;
-	struct v4l2_pix_format vdev_fmt;
 	struct v4l2_mbus_framefmt *fmt;
 	int ret = 0;
 
@@ -945,19 +943,9 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
 			priv->cc[PRPENCVF_SRC_PAD] = outcc;
 	}
 
-	if (sdformat->which == V4L2_SUBDEV_FORMAT_TRY)
-		goto out;
-
-	priv->cc[sdformat->pad] = cc;
+	if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
+		priv->cc[sdformat->pad] = cc;
 
-	/* propagate output pad format to capture device */
-	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
-				      &priv->format_mbus[PRPENCVF_SRC_PAD],
-				      priv->cc[PRPENCVF_SRC_PAD]);
-	mutex_unlock(&priv->lock);
-	imx_media_capture_device_set_format(vdev, &vdev_fmt);
-
-	return 0;
 out:
 	mutex_unlock(&priv->lock);
 	return ret;
diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index 555f6204660b..8a908c3e5e60 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -205,7 +205,9 @@ static int capture_g_fmt_vid_cap(struct file *file, void *fh,
 
 static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
 				     struct v4l2_subdev_format *fmt_src,
-				     struct v4l2_format *f)
+				     struct v4l2_format *f,
+				     const struct imx_media_pixfmt **retcc,
+				     struct v4l2_rect *compose)
 {
 	const struct imx_media_pixfmt *cc, *cc_src;
 
@@ -247,6 +249,16 @@ static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
 
 	imx_media_mbus_fmt_to_pix_fmt(&f->fmt.pix, &fmt_src->format, cc);
 
+	if (retcc)
+		*retcc = cc;
+
+	if (compose) {
+		compose->left = 0;
+		compose->top = 0;
+		compose->width = fmt_src->format.width;
+		compose->height = fmt_src->format.height;
+	}
+
 	return 0;
 }
 
@@ -263,7 +275,7 @@ static int capture_try_fmt_vid_cap(struct file *file, void *fh,
 	if (ret)
 		return ret;
 
-	return __capture_try_fmt_vid_cap(priv, &fmt_src, f);
+	return __capture_try_fmt_vid_cap(priv, &fmt_src, f, NULL, NULL);
 }
 
 static int capture_s_fmt_vid_cap(struct file *file, void *fh,
@@ -284,17 +296,12 @@ static int capture_s_fmt_vid_cap(struct file *file, void *fh,
 	if (ret)
 		return ret;
 
-	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f);
+	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f, &priv->vdev.cc,
+					&priv->vdev.compose);
 	if (ret)
 		return ret;
 
 	priv->vdev.fmt.fmt.pix = f->fmt.pix;
-	priv->vdev.cc = imx_media_find_format(f->fmt.pix.pixelformat,
-					      CS_SEL_ANY, true);
-	priv->vdev.compose.left = 0;
-	priv->vdev.compose.top = 0;
-	priv->vdev.compose.width = fmt_src.format.width;
-	priv->vdev.compose.height = fmt_src.format.height;
 
 	return 0;
 }
@@ -524,6 +531,33 @@ static void capture_buf_queue(struct vb2_buffer *vb)
 	spin_unlock_irqrestore(&priv->q_lock, flags);
 }
 
+static int capture_validate_fmt(struct capture_priv *priv)
+{
+	struct v4l2_subdev_format fmt_src;
+	const struct imx_media_pixfmt *cc;
+	struct v4l2_rect compose;
+	struct v4l2_format f;
+	int ret;
+
+	fmt_src.pad = priv->src_sd_pad;
+	fmt_src.which = V4L2_SUBDEV_FORMAT_ACTIVE;
+	ret = v4l2_subdev_call(priv->src_sd, pad, get_fmt, NULL, &fmt_src);
+	if (ret)
+		return ret;
+
+	v4l2_fill_pix_format(&f.fmt.pix, &fmt_src.format);
+
+	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, &f, &cc, &compose);
+	if (ret)
+		return ret;
+
+	return (priv->vdev.fmt.fmt.pix.width != f.fmt.pix.width ||
+		priv->vdev.fmt.fmt.pix.height != f.fmt.pix.height ||
+		priv->vdev.cc->cs != cc->cs ||
+		priv->vdev.compose.width != compose.width ||
+		priv->vdev.compose.height != compose.height) ? -EINVAL : 0;
+}
+
 static int capture_start_streaming(struct vb2_queue *vq, unsigned int count)
 {
 	struct capture_priv *priv = vb2_get_drv_priv(vq);
@@ -531,6 +565,12 @@ static int capture_start_streaming(struct vb2_queue *vq, unsigned int count)
 	unsigned long flags;
 	int ret;
 
+	ret = capture_validate_fmt(priv);
+	if (ret) {
+		v4l2_err(priv->src_sd, "capture format not valid\n");
+		goto return_bufs;
+	}
+
 	ret = imx_media_pipeline_set_stream(priv->md, &priv->src_sd->entity,
 					    true);
 	if (ret) {
@@ -654,19 +694,6 @@ static struct video_device capture_videodev = {
 	.device_caps	= V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING,
 };
 
-void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
-					 struct v4l2_pix_format *pix)
-{
-	struct capture_priv *priv = to_capture_priv(vdev);
-
-	mutex_lock(&priv->mutex);
-	priv->vdev.fmt.fmt.pix = *pix;
-	priv->vdev.cc = imx_media_find_format(pix->pixelformat, CS_SEL_ANY,
-					      true);
-	mutex_unlock(&priv->mutex);
-}
-EXPORT_SYMBOL_GPL(imx_media_capture_device_set_format);
-
 struct imx_media_buffer *
 imx_media_capture_device_next_buf(struct imx_media_video_dev *vdev)
 {
diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 09b89a72eaa2..68c2b1a3066a 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1506,10 +1506,8 @@ static int csi_set_fmt(struct v4l2_subdev *sd,
 		       struct v4l2_subdev_format *sdformat)
 {
 	struct csi_priv *priv = v4l2_get_subdevdata(sd);
-	struct imx_media_video_dev *vdev = priv->vdev;
 	struct v4l2_fwnode_endpoint upstream_ep = { .bus_type = 0 };
 	const struct imx_media_pixfmt *cc;
-	struct v4l2_pix_format vdev_fmt;
 	struct v4l2_mbus_framefmt *fmt;
 	struct v4l2_rect *crop, *compose;
 	int ret;
@@ -1561,19 +1559,9 @@ static int csi_set_fmt(struct v4l2_subdev *sd,
 		}
 	}
 
-	if (sdformat->which == V4L2_SUBDEV_FORMAT_TRY)
-		goto out;
-
-	priv->cc[sdformat->pad] = cc;
+	if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
+		priv->cc[sdformat->pad] = cc;
 
-	/* propagate IDMAC output pad format to capture device */
-	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
-				      &priv->format_mbus[CSI_SRC_PAD_IDMAC],
-				      priv->cc[CSI_SRC_PAD_IDMAC]);
-	mutex_unlock(&priv->lock);
-	imx_media_capture_device_set_format(vdev, &vdev_fmt);
-
-	return 0;
 out:
 	mutex_unlock(&priv->lock);
 	return ret;
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index ddea972b7bc4..f928697b0491 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -278,8 +278,6 @@ int imx_media_capture_device_register(struct imx_media_video_dev *vdev);
 void imx_media_capture_device_unregister(struct imx_media_video_dev *vdev);
 struct imx_media_buffer *
 imx_media_capture_device_next_buf(struct imx_media_video_dev *vdev);
-void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
-					 struct v4l2_pix_format *pix);
 void imx_media_capture_device_error(struct imx_media_video_dev *vdev);
 
 /* subdev group ids */
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index e2622c05a793..0ec4c57259f9 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -1031,10 +1031,8 @@ static int imx7_csi_set_fmt(struct v4l2_subdev *sd,
 			    struct v4l2_subdev_format *sdformat)
 {
 	struct imx7_csi *csi = v4l2_get_subdevdata(sd);
-	struct imx_media_video_dev *vdev = csi->vdev;
 	const struct imx_media_pixfmt *outcc;
 	struct v4l2_mbus_framefmt *outfmt;
-	struct v4l2_pix_format vdev_fmt;
 	const struct imx_media_pixfmt *cc;
 	struct v4l2_mbus_framefmt *fmt;
 	struct v4l2_subdev_format format;
@@ -1079,19 +1077,8 @@ static int imx7_csi_set_fmt(struct v4l2_subdev *sd,
 			csi->cc[IMX7_CSI_PAD_SRC] = outcc;
 	}
 
-	if (sdformat->which == V4L2_SUBDEV_FORMAT_TRY)
-		goto out_unlock;
-
-	csi->cc[sdformat->pad] = cc;
-
-	/* propagate output pad format to capture device */
-	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
-				      &csi->format_mbus[IMX7_CSI_PAD_SRC],
-				      csi->cc[IMX7_CSI_PAD_SRC]);
-	mutex_unlock(&csi->lock);
-	imx_media_capture_device_set_format(vdev, &vdev_fmt);
-
-	return 0;
+	if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
+		csi->cc[sdformat->pad] = cc;
 
 out_unlock:
 	mutex_unlock(&csi->lock);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB2727913B
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:59:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 34AC286D48;
	Fri, 25 Sep 2020 18:59:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9dCz6HwoTVuU; Fri, 25 Sep 2020 18:59:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A1AD986D2A;
	Fri, 25 Sep 2020 18:59:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 58E991BF23F
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:59:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 55CF386D02
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:59:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LrjVLha22HQR for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:59:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f194.google.com (mail-vk1-f194.google.com
 [209.85.221.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1765986879
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:59:20 +0000 (UTC)
Received: by mail-vk1-f194.google.com with SMTP id n7so862vkq.5
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pSBYIzgpA+bETdbtW6AcOFn36+wDHbEbFl2j+vGmNqg=;
 b=im/o9BsSNp7MzrwQf4rIOgv8oiiHJyDkBql0IH/tjNpAnfk5r4SE+yQovvF03AOd0v
 5ctwxZ+X/8VhSAgdHU/TolQQRc8dhdATism4ncKKsP1Rxn3qRBay3hGH+hB2TLBHEmIc
 +0CymnTgMCwA0LijiyhSNWC/4VtIQIwC8xcymGomM+JFeoLg45J+mWieDS4Lgd7os5kM
 HjSw58fsEcdUWQcJN7Pz5NtmSZ1x8J0NzLKK1pecXh7pTPaH/f1dxgOijDTJbKpeZwj5
 igaAtOWbGmFG6JvnuYTqiG8PHFTkCiWMIWKXbkjmBgJH42cFOGgPselkCYSE97lfRIjC
 fN7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pSBYIzgpA+bETdbtW6AcOFn36+wDHbEbFl2j+vGmNqg=;
 b=ZUzBt/j/D7cXKouNq4U2YDnJ6uBtH9WeqRV+CxSLacONm9jLY7CRgRGwqbYuQaYMOV
 6+URq3/qZO6VZ+b1dVSKOTabW5kRfghIYe3MhpWSViD8fmiLA3U4IiorxTQuZpCiylOf
 EaaSFnmyakMgRh9qreVoNOHzrXJMZEjWrsHzZ43nXms1ATRyfq3Yu2no//P2Ix+6dMUU
 OT9Mm+3m7640US4CaEa1KExxypipqXWoUXCZbVjt6YEBEBJx61ZO0nTspHAuoJK71w38
 e59bFScRvvgSVp7YfwPhPe5b0XfGF6FxKH2nzoFckOo7vTS8MzfMDpZ4ZfoF7Beme+VE
 sz4A==
X-Gm-Message-State: AOAM532sLZ9xDCpR71UwLlcX0pEdp7RCPNHHLWNQ0F0MoKjrc92K/1uR
 Vv1YIpwxnYk+gn7jIS9keYUBpnVruQC55A==
X-Google-Smtp-Source: ABdhPJyLPDar+m/YiQ0gYJrPLFmR93GzGQO5O7x9egLhxkMGefEFfl1KYTebw9DV9GGgtew6HHgVWQ==
X-Received: by 2002:a05:6a00:1356:b029:13e:d13d:a084 with SMTP id
 k22-20020a056a001356b029013ed13da084mr513357pfu.27.1601058784244; 
 Fri, 25 Sep 2020 11:33:04 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.32.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:33:03 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 18/47] staging: media: zoran: move jpg_settings out
 of zoran_fh
Date: Fri, 25 Sep 2020 18:30:28 +0000
Message-Id: <1601058657-14042-19-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
References: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We need to get rid of zoran_fh, so move the jpg_settings directly in the
zoran structure.
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran.h        |   2 -
 drivers/staging/media/zoran/zoran_driver.c | 103 ++++++++++-----------
 2 files changed, 47 insertions(+), 58 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index a529b49888c6..7e6e03563a2a 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -216,8 +216,6 @@ struct zoran_fh {
 	enum zoran_lock_activity overlay_active;/* feature currently in use? */
 
 	struct zoran_buffer_col buffers;	/* buffers' info */
-
-	struct zoran_jpg_settings jpg_settings;	/* structure with a lot of things to play with */
 };
 
 struct card_info {
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index e60db53c0359..27dcf899b723 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -587,9 +587,7 @@ static int zoran_jpg_queue_frame(struct zoran_fh *fh, int num,
 	}
 
 	/* what is the codec mode right now? */
-	if (zr->codec_mode == BUZ_MODE_IDLE) {
-		zr->jpg_settings = fh->jpg_settings;
-	} else if (zr->codec_mode != mode) {
+	if (zr->codec_mode != BUZ_MODE_IDLE && zr->codec_mode != mode) {
 		/* wrong codec mode active - invalid */
 		pci_err(zr->pci_dev, "%s - codec in wrong mode\n", __func__);
 		return -EINVAL;
@@ -751,9 +749,6 @@ static void zoran_open_init_session(struct zoran_fh *fh)
 	fh->overlay_settings.format = zr->overlay_settings.format;
 	fh->overlay_active = ZORAN_FREE;
 
-	/* jpg settings */
-	fh->jpg_settings = zr->jpg_settings;
-
 	/* buffers */
 	memset(&fh->buffers, 0, sizeof(fh->buffers));
 	for (i = 0; i < MAX_FRAME; i++) {
@@ -1237,11 +1232,11 @@ static int zoran_v4l2_buffer_status(struct zoran_fh *fh,
 		}
 
 		/* which fields are these? */
-		if (fh->jpg_settings.TmpDcm != 1)
-			buf->field = fh->jpg_settings.odd_even ?
+		if (zr->jpg_settings.TmpDcm != 1)
+			buf->field = zr->jpg_settings.odd_even ?
 				V4L2_FIELD_TOP : V4L2_FIELD_BOTTOM;
 		else
-			buf->field = fh->jpg_settings.odd_even ?
+			buf->field = zr->jpg_settings.odd_even ?
 				V4L2_FIELD_SEQ_TB : V4L2_FIELD_SEQ_BT;
 
 		break;
@@ -1391,18 +1386,18 @@ static int zoran_enum_fmt_vid_overlay(struct file *file, void *__fh,
 static int zoran_g_fmt_vid_out(struct file *file, void *__fh,
 			       struct v4l2_format *fmt)
 {
-	struct zoran_fh *fh = __fh;
+	struct zoran *zr = video_drvdata(file);
 
-	fmt->fmt.pix.width = fh->jpg_settings.img_width / fh->jpg_settings.HorDcm;
-	fmt->fmt.pix.height = fh->jpg_settings.img_height * 2 /
-		(fh->jpg_settings.VerDcm * fh->jpg_settings.TmpDcm);
-	fmt->fmt.pix.sizeimage = zoran_v4l2_calc_bufsize(&fh->jpg_settings);
+	fmt->fmt.pix.width = zr->jpg_settings.img_width / zr->jpg_settings.HorDcm;
+	fmt->fmt.pix.height = zr->jpg_settings.img_height * 2 /
+		(zr->jpg_settings.VerDcm * zr->jpg_settings.TmpDcm);
+	fmt->fmt.pix.sizeimage = zoran_v4l2_calc_bufsize(&zr->jpg_settings);
 	fmt->fmt.pix.pixelformat = V4L2_PIX_FMT_MJPEG;
-	if (fh->jpg_settings.TmpDcm == 1)
-		fmt->fmt.pix.field = (fh->jpg_settings.odd_even ?
+	if (zr->jpg_settings.TmpDcm == 1)
+		fmt->fmt.pix.field = (zr->jpg_settings.odd_even ?
 				V4L2_FIELD_SEQ_TB : V4L2_FIELD_SEQ_BT);
 	else
-		fmt->fmt.pix.field = (fh->jpg_settings.odd_even ?
+		fmt->fmt.pix.field = (zr->jpg_settings.odd_even ?
 				V4L2_FIELD_TOP : V4L2_FIELD_BOTTOM);
 	fmt->fmt.pix.bytesperline = 0;
 	fmt->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
@@ -1471,15 +1466,14 @@ static int zoran_try_fmt_vid_overlay(struct file *file, void *__fh,
 static int zoran_try_fmt_vid_out(struct file *file, void *__fh,
 				 struct v4l2_format *fmt)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 	struct zoran_jpg_settings settings;
 	int res = 0;
 
 	if (fmt->fmt.pix.pixelformat != V4L2_PIX_FMT_MJPEG)
 		return -EINVAL;
 
-	settings = fh->jpg_settings;
+	settings = zr->jpg_settings;
 
 	/* we actually need to set 'real' parameters now */
 	if ((fmt->fmt.pix.height * 2) > BUZ_MAX_HEIGHT)
@@ -1487,13 +1481,13 @@ static int zoran_try_fmt_vid_out(struct file *file, void *__fh,
 	else
 		settings.TmpDcm = 2;
 	settings.decimation = 0;
-	if (fmt->fmt.pix.height <= fh->jpg_settings.img_height / 2)
+	if (fmt->fmt.pix.height <= zr->jpg_settings.img_height / 2)
 		settings.VerDcm = 2;
 	else
 		settings.VerDcm = 1;
-	if (fmt->fmt.pix.width <= fh->jpg_settings.img_width / 4)
+	if (fmt->fmt.pix.width <= zr->jpg_settings.img_width / 4)
 		settings.HorDcm = 4;
-	else if (fmt->fmt.pix.width <= fh->jpg_settings.img_width / 2)
+	else if (fmt->fmt.pix.width <= zr->jpg_settings.img_width / 2)
 		settings.HorDcm = 2;
 	else
 		settings.HorDcm = 1;
@@ -1520,10 +1514,10 @@ static int zoran_try_fmt_vid_out(struct file *file, void *__fh,
 	fmt->fmt.pix.height = settings.img_height * 2 /
 		(settings.TmpDcm * settings.VerDcm);
 	if (settings.TmpDcm == 1)
-		fmt->fmt.pix.field = (fh->jpg_settings.odd_even ?
+		fmt->fmt.pix.field = (zr->jpg_settings.odd_even ?
 				V4L2_FIELD_SEQ_TB : V4L2_FIELD_SEQ_BT);
 	else
-		fmt->fmt.pix.field = (fh->jpg_settings.odd_even ?
+		fmt->fmt.pix.field = (zr->jpg_settings.odd_even ?
 				V4L2_FIELD_TOP : V4L2_FIELD_BOTTOM);
 
 	fmt->fmt.pix.sizeimage = zoran_v4l2_calc_bufsize(&settings);
@@ -1598,7 +1592,7 @@ static int zoran_s_fmt_vid_out(struct file *file, void *__fh,
 		return res;
 	}
 
-	settings = fh->jpg_settings;
+	settings = zr->jpg_settings;
 
 	/* we actually need to set 'real' parameters now */
 	if (fmt->fmt.pix.height * 2 > BUZ_MAX_HEIGHT)
@@ -1606,13 +1600,13 @@ static int zoran_s_fmt_vid_out(struct file *file, void *__fh,
 	else
 		settings.TmpDcm = 2;
 	settings.decimation = 0;
-	if (fmt->fmt.pix.height <= fh->jpg_settings.img_height / 2)
+	if (fmt->fmt.pix.height <= zr->jpg_settings.img_height / 2)
 		settings.VerDcm = 2;
 	else
 		settings.VerDcm = 1;
-	if (fmt->fmt.pix.width <= fh->jpg_settings.img_width / 4)
+	if (fmt->fmt.pix.width <= zr->jpg_settings.img_width / 4)
 		settings.HorDcm = 4;
-	else if (fmt->fmt.pix.width <= fh->jpg_settings.img_width / 2)
+	else if (fmt->fmt.pix.width <= zr->jpg_settings.img_width / 2)
 		settings.HorDcm = 2;
 	else
 		settings.HorDcm = 1;
@@ -1635,20 +1629,20 @@ static int zoran_s_fmt_vid_out(struct file *file, void *__fh,
 		return res;
 
 	/* it's ok, so set them */
-	fh->jpg_settings = settings;
+	zr->jpg_settings = settings;
 
 	map_mode_jpg(fh, fmt->type == V4L2_BUF_TYPE_VIDEO_OUTPUT);
-	zr->buffer_size = zoran_v4l2_calc_bufsize(&fh->jpg_settings);
+	zr->buffer_size = zoran_v4l2_calc_bufsize(&zr->jpg_settings);
 
 	/* tell the user what we actually did */
 	fmt->fmt.pix.width = settings.img_width / settings.HorDcm;
 	fmt->fmt.pix.height = settings.img_height * 2 /
 		(settings.TmpDcm * settings.VerDcm);
 	if (settings.TmpDcm == 1)
-		fmt->fmt.pix.field = (fh->jpg_settings.odd_even ?
+		fmt->fmt.pix.field = (zr->jpg_settings.odd_even ?
 				V4L2_FIELD_SEQ_TB : V4L2_FIELD_SEQ_BT);
 	else
-		fmt->fmt.pix.field = (fh->jpg_settings.odd_even ?
+		fmt->fmt.pix.field = (zr->jpg_settings.odd_even ?
 				V4L2_FIELD_TOP : V4L2_FIELD_BOTTOM);
 	fmt->fmt.pix.bytesperline = 0;
 	fmt->fmt.pix.sizeimage = zr->buffer_size;
@@ -1805,7 +1799,7 @@ static int zoran_reqbufs(struct file *file, void *__fh, struct v4l2_requestbuffe
 		/* The next mmap will map the MJPEG buffers */
 		map_mode_jpg(fh, req->type == V4L2_BUF_TYPE_VIDEO_OUTPUT);
 		fh->buffers.num_buffers = req->count;
-		zr->buffer_size = zoran_v4l2_calc_bufsize(&fh->jpg_settings);
+		zr->buffer_size = zoran_v4l2_calc_bufsize(&zr->jpg_settings);
 
 		if (jpg_fbuffer_alloc(fh)) {
 			res = -ENOMEM;
@@ -2170,10 +2164,10 @@ static int zoran_g_selection(struct file *file, void *__fh, struct v4l2_selectio
 
 	switch (sel->target) {
 	case V4L2_SEL_TGT_CROP:
-		sel->r.top = fh->jpg_settings.img_y;
-		sel->r.left = fh->jpg_settings.img_x;
-		sel->r.width = fh->jpg_settings.img_width;
-		sel->r.height = fh->jpg_settings.img_height;
+		sel->r.top = zr->jpg_settings.img_y;
+		sel->r.left = zr->jpg_settings.img_x;
+		sel->r.width = zr->jpg_settings.img_width;
+		sel->r.height = zr->jpg_settings.img_height;
 		break;
 	case V4L2_SEL_TGT_CROP_DEFAULT:
 		sel->r.top = sel->r.left = 0;
@@ -2210,7 +2204,7 @@ static int zoran_s_selection(struct file *file, void *__fh, struct v4l2_selectio
 		return -EINVAL;
 	}
 
-	settings = fh->jpg_settings;
+	settings = zr->jpg_settings;
 
 	if (fh->buffers.allocated) {
 		pci_err(zr->pci_dev, "VIDIOC_S_SELECTION - cannot change settings while active\n");
@@ -2229,29 +2223,26 @@ static int zoran_s_selection(struct file *file, void *__fh, struct v4l2_selectio
 		return res;
 
 	/* accept */
-	fh->jpg_settings = settings;
+	zr->jpg_settings = settings;
 	return res;
 }
 
 static int zoran_g_jpegcomp(struct file *file, void *__fh,
 			    struct v4l2_jpegcompression *params)
 {
-	struct zoran_fh *fh = __fh;
+	struct zoran *zr = video_drvdata(file);
 
 	memset(params, 0, sizeof(*params));
 
-	params->quality = fh->jpg_settings.jpg_comp.quality;
-	params->APPn = fh->jpg_settings.jpg_comp.APPn;
-	memcpy(params->APP_data,
-	       fh->jpg_settings.jpg_comp.APP_data,
-	       fh->jpg_settings.jpg_comp.APP_len);
-	params->APP_len = fh->jpg_settings.jpg_comp.APP_len;
-	memcpy(params->COM_data,
-	       fh->jpg_settings.jpg_comp.COM_data,
-	       fh->jpg_settings.jpg_comp.COM_len);
-	params->COM_len = fh->jpg_settings.jpg_comp.COM_len;
-	params->jpeg_markers =
-	    fh->jpg_settings.jpg_comp.jpeg_markers;
+	params->quality = zr->jpg_settings.jpg_comp.quality;
+	params->APPn = zr->jpg_settings.jpg_comp.APPn;
+	memcpy(params->APP_data, zr->jpg_settings.jpg_comp.APP_data,
+	       zr->jpg_settings.jpg_comp.APP_len);
+	params->APP_len = zr->jpg_settings.jpg_comp.APP_len;
+	memcpy(params->COM_data, zr->jpg_settings.jpg_comp.COM_data,
+	       zr->jpg_settings.jpg_comp.COM_len);
+	params->COM_len = zr->jpg_settings.jpg_comp.COM_len;
+	params->jpeg_markers = zr->jpg_settings.jpg_comp.jpeg_markers;
 
 	return 0;
 }
@@ -2264,7 +2255,7 @@ static int zoran_s_jpegcomp(struct file *file, void *__fh,
 	int res = 0;
 	struct zoran_jpg_settings settings;
 
-	settings = fh->jpg_settings;
+	settings = zr->jpg_settings;
 
 	settings.jpg_comp = *params;
 
@@ -2278,8 +2269,8 @@ static int zoran_s_jpegcomp(struct file *file, void *__fh,
 	if (res)
 		return res;
 	if (!fh->buffers.allocated)
-		zr->buffer_size = zoran_v4l2_calc_bufsize(&fh->jpg_settings);
-	fh->jpg_settings.jpg_comp = settings.jpg_comp;
+		zr->buffer_size = zoran_v4l2_calc_bufsize(&zr->jpg_settings);
+	zr->jpg_settings.jpg_comp = settings.jpg_comp;
 	return res;
 }
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

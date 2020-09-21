Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1240272045
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:22:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 69CCE20535;
	Mon, 21 Sep 2020 10:22:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2lHs6cCTmJbG; Mon, 21 Sep 2020 10:22:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 465F52075B;
	Mon, 21 Sep 2020 10:21:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A8A41BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5714486818
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NqvCtd5YwPMd for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 569FE8683C
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:52 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id k15so12115930wrn.10
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WbLdbCFFX9H/4tk9cPHCjm3oFnAaEXbZXA9/HfChnUA=;
 b=WOAHMWOnrWAaxpW+HjgdPUb2Lek9ffD3Khhk3iCttrEAjpwMk+5b0Jtd7cYshFhFGr
 v5qXV1LqDVy3LiaC0byTnDhdXPW9u+vGSb5qqmbcb1ysPBogRJT8vNFN9EWawYHxpQy0
 eyZ/POQwaG8/CCFxE+7tDOpg0wq4yfiArWTkNmIoA/I8P7xGdSkuz92GQ1wdwkpbik4a
 xcw/uAkpipD+GJmktYAka8dPIDZ9//FfbrG7AXK2uKFsAXaYub08YnOprhlzSc7UulfM
 P/F0U6nbRapN1XaGc60W5XpG3W9IbYXulIhQUQy/5Cp+BQcJzsmSQ2+DHKweQAwkhHwj
 rHFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WbLdbCFFX9H/4tk9cPHCjm3oFnAaEXbZXA9/HfChnUA=;
 b=rd5zjBb+O/KNQ+lpdOp5N+xATlsb64yMtuwM4KUG+W3XEDQuI0/fjtVFQa3WKFL5DD
 Wf5JzNp35P7lXGrP7kWRMFd0qMn8o8U8SzjNnuoW3C1ckcY/gOQ2QJVinV/9+E33RziL
 WFA3aLNVulywh3WTYh67gxS+O5pqQqHPw9xzcaYVooMI9DaG7VI3EQwJNa7H82tutTxl
 Q5g/5wEc+nyohcJuulWHZJ/M9OtmjghFLrPh1AtzH5aM9DsjdUeCHrlXgwzy32gki3Rg
 XwwuiXPGRWX1RcEYLocMyP1I09hX4V6Nh2vb3mwsFtr1R3Y4qiM/tMiRI8h+45v6WEHc
 c0Dw==
X-Gm-Message-State: AOAM5325TIpzH1OaMuZViTviyt4+CySDgpV95hzQOxOlEBebSOTlQDtX
 EF1WIndXFP4w3sCLhTIB7lJZmQ==
X-Google-Smtp-Source: ABdhPJwU7haxnxB+0U7u65gtoF/0p6meObcC123E3lmUNE6zdJgB5swqrh/6omxrLHOcw41agcFznA==
X-Received: by 2002:adf:fd90:: with SMTP id d16mr51954940wrr.52.1600683650758; 
 Mon, 21 Sep 2020 03:20:50 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:50 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 19/49] staging: media: zoran: move jpg_settings out of
 zoran_fh
Date: Mon, 21 Sep 2020 10:19:54 +0000
Message-Id: <1600683624-5863-20-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
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
index 984f1dde99d2..f0ceda9a3d44 100644
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
@@ -1389,18 +1384,18 @@ static int zoran_enum_fmt_vid_overlay(struct file *file, void *__fh,
 
 static int zoran_g_fmt_vid_out(struct file *file, void *__fh, struct v4l2_format *fmt)
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
@@ -1468,15 +1463,14 @@ static int zoran_try_fmt_vid_overlay(struct file *file, void *__fh,
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
@@ -1484,13 +1478,13 @@ static int zoran_try_fmt_vid_out(struct file *file, void *__fh,
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
@@ -1517,10 +1511,10 @@ static int zoran_try_fmt_vid_out(struct file *file, void *__fh,
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
@@ -1594,7 +1588,7 @@ static int zoran_s_fmt_vid_out(struct file *file, void *__fh, struct v4l2_format
 		return res;
 	}
 
-	settings = fh->jpg_settings;
+	settings = zr->jpg_settings;
 
 	/* we actually need to set 'real' parameters now */
 	if (fmt->fmt.pix.height * 2 > BUZ_MAX_HEIGHT)
@@ -1602,13 +1596,13 @@ static int zoran_s_fmt_vid_out(struct file *file, void *__fh, struct v4l2_format
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
@@ -1631,19 +1625,19 @@ static int zoran_s_fmt_vid_out(struct file *file, void *__fh, struct v4l2_format
 		return res;
 
 	/* it's ok, so set them */
-	fh->jpg_settings = settings;
+	zr->jpg_settings = settings;
 
 	map_mode_jpg(fh, fmt->type == V4L2_BUF_TYPE_VIDEO_OUTPUT);
-	zr->buffer_size = zoran_v4l2_calc_bufsize(&fh->jpg_settings);
+	zr->buffer_size = zoran_v4l2_calc_bufsize(&zr->jpg_settings);
 
 	/* tell the user what we actually did */
 	fmt->fmt.pix.width = settings.img_width / settings.HorDcm;
 	fmt->fmt.pix.height = settings.img_height * 2 / (settings.TmpDcm * settings.VerDcm);
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
@@ -1798,7 +1792,7 @@ static int zoran_reqbufs(struct file *file, void *__fh, struct v4l2_requestbuffe
 		/* The next mmap will map the MJPEG buffers */
 		map_mode_jpg(fh, req->type == V4L2_BUF_TYPE_VIDEO_OUTPUT);
 		fh->buffers.num_buffers = req->count;
-		zr->buffer_size = zoran_v4l2_calc_bufsize(&fh->jpg_settings);
+		zr->buffer_size = zoran_v4l2_calc_bufsize(&zr->jpg_settings);
 
 		if (jpg_fbuffer_alloc(fh)) {
 			res = -ENOMEM;
@@ -2162,10 +2156,10 @@ static int zoran_g_selection(struct file *file, void *__fh, struct v4l2_selectio
 
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
@@ -2202,7 +2196,7 @@ static int zoran_s_selection(struct file *file, void *__fh, struct v4l2_selectio
 		return -EINVAL;
 	}
 
-	settings = fh->jpg_settings;
+	settings = zr->jpg_settings;
 
 	if (fh->buffers.allocated) {
 		pci_err(zr->pci_dev, "VIDIOC_S_SELECTION - cannot change settings while active\n");
@@ -2221,28 +2215,25 @@ static int zoran_s_selection(struct file *file, void *__fh, struct v4l2_selectio
 		return res;
 
 	/* accept */
-	fh->jpg_settings = settings;
+	zr->jpg_settings = settings;
 	return res;
 }
 
 static int zoran_g_jpegcomp(struct file *file, void *__fh, struct v4l2_jpegcompression *params)
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
@@ -2255,7 +2246,7 @@ static int zoran_s_jpegcomp(struct file *file, void *__fh,
 	int res = 0;
 	struct zoran_jpg_settings settings;
 
-	settings = fh->jpg_settings;
+	settings = zr->jpg_settings;
 
 	settings.jpg_comp = *params;
 
@@ -2269,8 +2260,8 @@ static int zoran_s_jpegcomp(struct file *file, void *__fh,
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF7B3263B0
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Feb 2021 15:06:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24C144F018;
	Fri, 26 Feb 2021 14:06:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5qOW15Qk5aHJ; Fri, 26 Feb 2021 14:06:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89A894EF10;
	Fri, 26 Feb 2021 14:06:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C3D2B1BF30A
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 14:06:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BDE5B433A0
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 14:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nliwK5f2Lb0z for <devel@linuxdriverproject.org>;
 Fri, 26 Feb 2021 14:06:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C8C334339F
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 14:06:00 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 07E1D64F03;
 Fri, 26 Feb 2021 14:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614348360;
 bh=LNaNLmAFJ/DxV1Aegfo77AX31+0MhCgD5Jv/SuZUZlI=;
 h=From:To:Cc:Subject:Date:From;
 b=SS7c8gp86GO5UPPxHxXENs8/3pY54kYMeIIk86+qPhwYCrTSLH2mdcKKwIXWBlxLl
 u4AEq8aW93seTla6kAeC+zmEBSzHQpI348A7XSzYYyYF+BDL5rLDP0TLiPM4W/3xZm
 ol1VJlunNNdFzR4DLZJvsMTTIPkXO5bMy2slU4gf8UI/X+ZaCJE5An1A1hLcpFsX/v
 yMJIOCi72i2TF/J3uNn1FWXhMz0PrYMgUxOpI97yZXi/hh5RZCJMxgy4kgMLnYDeUd
 qRIne3aRREL3X1DpxTh/MrzIhs9d0Bokc0Wx6VKFGB8XoQk/TPT25l025MvOU/9MYB
 RHPei/1V0j4jA==
From: Arnd Bergmann <arnd@kernel.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH] staging: atomisp: reduce kernel stack usage
Date: Fri, 26 Feb 2021 15:05:02 +0100
Message-Id: <20210226140524.3478346-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Arnd Bergmann <arnd@arndb.de>

The atomisp_set_fmt() function has multiple copies of the large
v4l2_format structure on its stack, resulting in a warning about
excessive stack usage in some rare randconfig builds.

drivers/staging/media/atomisp/pci/atomisp_cmd.c:5600:5: error: stack frame size of 1084 bytes in function 'atomisp_set_fmt' [-Werror,-Wframe-larger-than=]

Of this structure, only three members in the 'fmt.pix' member are
used, so simplify it by using the smaller v4l2_pix_format structure
directly. This reduces the stack usage to 612 bytes, and it could
be reduced further by only storing the three members that are used.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../staging/media/atomisp/pci/atomisp_cmd.c   | 65 +++++++++----------
 .../staging/media/atomisp/pci/atomisp_cmd.h   |  2 +-
 .../staging/media/atomisp/pci/atomisp_ioctl.c |  2 +-
 3 files changed, 33 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 592ea990d4ca..3192c0716eb9 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -4837,7 +4837,7 @@ static void __atomisp_init_stream_info(u16 stream_index,
 }
 
 /* This function looks up the closest available resolution. */
-int atomisp_try_fmt(struct video_device *vdev, struct v4l2_format *f,
+int atomisp_try_fmt(struct video_device *vdev, struct v4l2_pix_format *f,
 		    bool *res_overflow)
 {
 	struct atomisp_device *isp = video_get_drvdata(vdev);
@@ -4859,18 +4859,18 @@ int atomisp_try_fmt(struct video_device *vdev, struct v4l2_format *f,
 		return -EINVAL;
 
 	stream_index = atomisp_source_pad_to_stream_id(asd, source_pad);
-	fmt = atomisp_get_format_bridge(f->fmt.pix.pixelformat);
+	fmt = atomisp_get_format_bridge(f->pixelformat);
 	if (!fmt) {
 		dev_err(isp->dev, "unsupported pixelformat!\n");
 		fmt = atomisp_output_fmts;
 	}
 
-	if (f->fmt.pix.width <= 0 || f->fmt.pix.height <= 0)
+	if (f->width <= 0 || f->height <= 0)
 		return -EINVAL;
 
 	snr_mbus_fmt->code = fmt->mbus_code;
-	snr_mbus_fmt->width = f->fmt.pix.width;
-	snr_mbus_fmt->height = f->fmt.pix.height;
+	snr_mbus_fmt->width = f->width;
+	snr_mbus_fmt->height = f->height;
 
 	__atomisp_init_stream_info(stream_index, stream_info);
 
@@ -4892,7 +4892,7 @@ int atomisp_try_fmt(struct video_device *vdev, struct v4l2_format *f,
 		return -EINVAL;
 	}
 
-	f->fmt.pix.pixelformat = fmt->pixelformat;
+	f->pixelformat = fmt->pixelformat;
 
 	/*
 	 * If the format is jpeg or custom RAW, then the width and height will
@@ -4900,17 +4900,17 @@ int atomisp_try_fmt(struct video_device *vdev, struct v4l2_format *f,
 	 * the below conditions. So just assign to what is being returned from
 	 * the sensor driver.
 	 */
-	if (f->fmt.pix.pixelformat == V4L2_PIX_FMT_JPEG ||
-	    f->fmt.pix.pixelformat == V4L2_PIX_FMT_CUSTOM_M10MO_RAW) {
-		f->fmt.pix.width = snr_mbus_fmt->width;
-		f->fmt.pix.height = snr_mbus_fmt->height;
+	if (f->pixelformat == V4L2_PIX_FMT_JPEG ||
+	    f->pixelformat == V4L2_PIX_FMT_CUSTOM_M10MO_RAW) {
+		f->width = snr_mbus_fmt->width;
+		f->height = snr_mbus_fmt->height;
 		return 0;
 	}
 
-	if (snr_mbus_fmt->width < f->fmt.pix.width
-	    && snr_mbus_fmt->height < f->fmt.pix.height) {
-		f->fmt.pix.width = snr_mbus_fmt->width;
-		f->fmt.pix.height = snr_mbus_fmt->height;
+	if (snr_mbus_fmt->width < f->width
+	    && snr_mbus_fmt->height < f->height) {
+		f->width = snr_mbus_fmt->width;
+		f->height = snr_mbus_fmt->height;
 		/* Set the flag when resolution requested is
 		 * beyond the max value supported by sensor
 		 */
@@ -4919,12 +4919,10 @@ int atomisp_try_fmt(struct video_device *vdev, struct v4l2_format *f,
 	}
 
 	/* app vs isp */
-	f->fmt.pix.width = rounddown(
-			       clamp_t(u32, f->fmt.pix.width, ATOM_ISP_MIN_WIDTH,
-				       ATOM_ISP_MAX_WIDTH), ATOM_ISP_STEP_WIDTH);
-	f->fmt.pix.height = rounddown(
-				clamp_t(u32, f->fmt.pix.height, ATOM_ISP_MIN_HEIGHT,
-					ATOM_ISP_MAX_HEIGHT), ATOM_ISP_STEP_HEIGHT);
+	f->width = rounddown(clamp_t(u32, f->width, ATOM_ISP_MIN_WIDTH,
+				     ATOM_ISP_MAX_WIDTH), ATOM_ISP_STEP_WIDTH);
+	f->height = rounddown(clamp_t(u32, f->height, ATOM_ISP_MIN_HEIGHT,
+				      ATOM_ISP_MAX_HEIGHT), ATOM_ISP_STEP_HEIGHT);
 
 	return 0;
 }
@@ -5481,7 +5479,7 @@ static void atomisp_get_dis_envelop(struct atomisp_sub_device *asd,
 }
 
 static void atomisp_check_copy_mode(struct atomisp_sub_device *asd,
-				    int source_pad, struct v4l2_format *f)
+				    int source_pad, struct v4l2_pix_format *f)
 {
 #if defined(ISP2401_NEW_INPUT_SYSTEM)
 	struct v4l2_mbus_framefmt *sink, *src;
@@ -5492,8 +5490,8 @@ static void atomisp_check_copy_mode(struct atomisp_sub_device *asd,
 				      V4L2_SUBDEV_FORMAT_ACTIVE, source_pad);
 
 	if ((sink->code == src->code &&
-	     sink->width == f->fmt.pix.width &&
-	     sink->height == f->fmt.pix.height) ||
+	     sink->width == f->width &&
+	     sink->height == f->height) ||
 	    ((asd->isp->inputs[asd->input_curr].type == SOC_CAMERA) &&
 	     (asd->isp->inputs[asd->input_curr].camera_caps->
 	      sensor[asd->sensor_curr].stream_num > 1)))
@@ -5507,7 +5505,7 @@ static void atomisp_check_copy_mode(struct atomisp_sub_device *asd,
 }
 
 static int atomisp_set_fmt_to_snr(struct video_device *vdev,
-				  struct v4l2_format *f, unsigned int pixelformat,
+				  struct v4l2_pix_format *f, unsigned int pixelformat,
 				  unsigned int padding_w, unsigned int padding_h,
 				  unsigned int dvs_env_w, unsigned int dvs_env_h)
 {
@@ -5535,7 +5533,7 @@ static int atomisp_set_fmt_to_snr(struct video_device *vdev,
 	if (!format)
 		return -EINVAL;
 
-	v4l2_fill_mbus_format(ffmt, &f->fmt.pix, format->mbus_code);
+	v4l2_fill_mbus_format(ffmt, f, format->mbus_code);
 	ffmt->height += padding_h + dvs_env_h;
 	ffmt->width += padding_w + dvs_env_w;
 
@@ -5605,8 +5603,8 @@ int atomisp_set_fmt(struct video_device *vdev, struct v4l2_format *f)
 	const struct atomisp_format_bridge *format_bridge;
 	const struct atomisp_format_bridge *snr_format_bridge;
 	struct ia_css_frame_info output_info, raw_output_info;
-	struct v4l2_format snr_fmt = *f;
-	struct v4l2_format backup_fmt = *f, s_fmt = *f;
+	struct v4l2_pix_format snr_fmt = f->fmt.pix;
+	struct v4l2_pix_format backup_fmt = snr_fmt, s_fmt;
 	unsigned int dvs_env_w = 0, dvs_env_h = 0;
 	unsigned int padding_w = pad_w, padding_h = pad_h;
 	bool res_overflow = false, crop_needs_override = false;
@@ -5780,11 +5778,10 @@ int atomisp_set_fmt(struct video_device *vdev, struct v4l2_format *f)
 		dev_warn(isp->dev, "Try format failed with error %d\n", ret);
 		return ret;
 	}
-	f->fmt.pix.width = snr_fmt.fmt.pix.width;
-	f->fmt.pix.height = snr_fmt.fmt.pix.height;
+	f->fmt.pix.width = snr_fmt.width;
+	f->fmt.pix.height = snr_fmt.height;
 
-	snr_format_bridge =
-	    atomisp_get_format_bridge(snr_fmt.fmt.pix.pixelformat);
+	snr_format_bridge = atomisp_get_format_bridge(snr_fmt.pixelformat);
 	if (!snr_format_bridge) {
 		dev_warn(isp->dev, "Can't find bridge format\n");
 		return -EINVAL;
@@ -5865,11 +5862,11 @@ int atomisp_set_fmt(struct video_device *vdev, struct v4l2_format *f)
 		 * and height while set_mbus_fmt() so actual resolutions are
 		 * being used in while set media bus format.
 		 */
-		s_fmt = *f;
+		s_fmt = f->fmt.pix;
 		if (f->fmt.pix.pixelformat == V4L2_PIX_FMT_JPEG ||
 		    f->fmt.pix.pixelformat == V4L2_PIX_FMT_CUSTOM_M10MO_RAW) {
-			s_fmt.fmt.pix.width = backup_fmt.fmt.pix.width;
-			s_fmt.fmt.pix.height = backup_fmt.fmt.pix.height;
+			s_fmt.width = backup_fmt.width;
+			s_fmt.height = backup_fmt.height;
 		}
 		ret = atomisp_set_fmt_to_snr(vdev, &s_fmt,
 					     f->fmt.pix.pixelformat, padding_w,
diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.h b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
index 1c0d464c2ac1..412baeb91944 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
@@ -333,7 +333,7 @@ int atomisp_get_sensor_mode_data(struct atomisp_sub_device *asd,
 int atomisp_get_fmt(struct video_device *vdev, struct v4l2_format *f);
 
 /* This function looks up the closest available resolution. */
-int atomisp_try_fmt(struct video_device *vdev, struct v4l2_format *f,
+int atomisp_try_fmt(struct video_device *vdev, struct v4l2_pix_format *f,
 		    bool *res_overflow);
 
 int atomisp_set_fmt(struct video_device *vdev, struct v4l2_format *f);
diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
index 2ae50decfc8b..c6adffebe24a 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
@@ -843,7 +843,7 @@ static int atomisp_try_fmt_cap(struct file *file, void *fh,
 	int ret;
 
 	rt_mutex_lock(&isp->mutex);
-	ret = atomisp_try_fmt(vdev, f, NULL);
+	ret = atomisp_try_fmt(vdev, &f->fmt.pix, NULL);
 	rt_mutex_unlock(&isp->mutex);
 	return ret;
 }
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

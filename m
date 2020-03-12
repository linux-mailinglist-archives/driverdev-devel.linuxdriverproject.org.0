Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FA6183B92
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 22:43:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E2273879B1;
	Thu, 12 Mar 2020 21:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O5NYzXhVtFWB; Thu, 12 Mar 2020 21:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 81AA18745C;
	Thu, 12 Mar 2020 21:43:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F44D1BF3C8
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 21:43:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 71BB5874E9
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 21:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wuwy3DsWs7l7 for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 21:43:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1C1DB87221
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 21:43:47 +0000 (UTC)
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mzz6s-1jZ0QU3bYU-00x6dg; Thu, 12 Mar 2020 22:38:28 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 1/2] staging: bcm2835-camera: Drop unused ignore_errors flag
Date: Thu, 12 Mar 2020 22:37:38 +0100
Message-Id: <1584049059-6772-2-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584049059-6772-1-git-send-email-stefan.wahren@i2se.com>
References: <1584049059-6772-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:UziKNZb9NVjqxdpw3xje+SAyL4D0xDmigHYr37tt/113Re32qe8
 etEFK/cKQiqAVnqwAPKueM/QttLqhGDZPsJK6XFv6ukg/jadpXUUTWmo6BGTTmjrA3t9Qp3
 Mqde22NwB9NMHhUKM7bWJgyFPJAr3yFtdvN6MhrH7kOMVi5SNSgyDo73BVxA6VCiJXxHYib
 h+/UIejRTyrY+ZLpUqLpQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:IVbu++ZtZTw=:w6c2/uW7vXFqlYExr+q4Nq
 42KvCNGf+sdBZ/yQ1Ss2U+ioAoWeyKeuBpIJ+Z/zcSLLIhbOFtetaCl5ImHLTYwmzttX0iHc8
 GLw3E2U+YBmzz7BVcnw5epKLoheMDdq3+CVpQGb5IOekdSMdr0MTbbG62OCjlsATGeD03aHDf
 5ZXuzsLShSqnbtPUVSEt0RATO6tLN9l7eSnDhZgcH8cYOjpi4mBHhLg4Y7/xeFPwpE2JHIR5X
 qW+VMskT190BCXKSNtxpUl5/6pKv3c1LXlKY+eqDSwEKwntNN5UhKgbvw9nP4FUhOBjuMnA8B
 Mc7mRMPZwNgvcROu0SijLNYPybMGrfdWkdWvYqvmiheSlr6mTHKBJnC5BryGVqRHfbteU5/mo
 aNWP/tzUznjubqgUyH+Rjr27cKNvHU3QFurZARF52YVMm1PBDhSl83qHNxz00K9Ej0zYNIzEg
 lS1w5GgqQIQQXc+06pl71qFxB/UhpJ6cdiiLmsTPu6Ce4et51SW3rG5wIn9grZAHwn8ZfNbDS
 oST9WTMc3DpN5d6y/FNIiSGIXAuAo13/xqAQ+HgQzf2PZ5JZDt1ikJwnb/5sMBMTFCuMEjmhb
 SC8jAxf0ZzAcUhreKrjEnePJY5Z6Y73wZbnwUvmbuv8sUvxyxD9JWpaqZzL32yjsu3Mdjsqku
 iVtyhrCxtvFOI+hnqkXbjfY5pJjxn/lXc0/yOKOo2+AKvwqrFTS6RSrBRz/7uSxlQT2Dn0U6p
 3mhoL/8wIkTRfyMsVLWsskMTQI3LyAUxQ4iT0OgAFwNmHhliTX9PdyUMOzVL194fMTNWT/ks6
 GnlY5En4voXz7IzW5R24aY6zF/pF9erenZhOdMmtWKFq3ICqhKn/5YSPGZ/7QvwVK4QIEDt
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <stefan.wahren@i2se.com>,
 linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The struct bm2835_mmal_v4l2_ctrl contains an ignore_errors flag which
was always set to false. So drop the unused flag.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../vc04_services/bcm2835-camera/controls.c        | 34 +---------------------
 1 file changed, 1 insertion(+), 33 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 89786c2..50f7c8b 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -85,7 +85,6 @@ struct bm2835_mmal_v4l2_ctrl {
 	const s64 *imenu; /* integer menu array */
 	u32 mmal_id; /* mmal parameter id */
 	bm2835_mmal_v4l2_ctrl_cb *setter;
-	bool ignore_errors;
 };
 
 struct v4l2_to_mmal_effects_setting {
@@ -912,8 +911,6 @@ static int bm2835_mmal_s_ctrl(struct v4l2_ctrl *ctrl)
 	if (ret)
 		pr_warn("ctrl id:%d/MMAL param %08X- returned ret %d\n",
 			ctrl->id, mmal_ctrl->mmal_id, ret);
-	if (mmal_ctrl->ignore_errors)
-		ret = 0;
 	return ret;
 }
 
@@ -927,56 +924,48 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		-100, 100, 0, 1, NULL,
 		MMAL_PARAMETER_SATURATION,
 		ctrl_set_rational,
-		false
 	},
 	{
 		V4L2_CID_SHARPNESS, MMAL_CONTROL_TYPE_STD,
 		-100, 100, 0, 1, NULL,
 		MMAL_PARAMETER_SHARPNESS,
 		ctrl_set_rational,
-		false
 	},
 	{
 		V4L2_CID_CONTRAST, MMAL_CONTROL_TYPE_STD,
 		-100, 100, 0, 1, NULL,
 		MMAL_PARAMETER_CONTRAST,
 		ctrl_set_rational,
-		false
 	},
 	{
 		V4L2_CID_BRIGHTNESS, MMAL_CONTROL_TYPE_STD,
 		0, 100, 50, 1, NULL,
 		MMAL_PARAMETER_BRIGHTNESS,
 		ctrl_set_rational,
-		false
 	},
 	{
 		V4L2_CID_ISO_SENSITIVITY, MMAL_CONTROL_TYPE_INT_MENU,
 		0, ARRAY_SIZE(iso_qmenu) - 1, 0, 1, iso_qmenu,
 		MMAL_PARAMETER_ISO,
 		ctrl_set_iso,
-		false
 	},
 	{
 		V4L2_CID_ISO_SENSITIVITY_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
 		0, V4L2_ISO_SENSITIVITY_AUTO, V4L2_ISO_SENSITIVITY_AUTO, 1,
 		NULL, MMAL_PARAMETER_ISO,
 		ctrl_set_iso,
-		false
 	},
 	{
 		V4L2_CID_IMAGE_STABILIZATION, MMAL_CONTROL_TYPE_STD,
 		0, 1, 0, 1, NULL,
 		MMAL_PARAMETER_VIDEO_STABILISATION,
 		ctrl_set_value,
-		false
 	},
 	{
 		V4L2_CID_EXPOSURE_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
 		~0x03, V4L2_EXPOSURE_APERTURE_PRIORITY, V4L2_EXPOSURE_AUTO, 0,
 		NULL, MMAL_PARAMETER_EXPOSURE_MODE,
 		ctrl_set_exposure,
-		false
 	},
 	{
 		V4L2_CID_EXPOSURE_ABSOLUTE, MMAL_CONTROL_TYPE_STD,
@@ -984,7 +973,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		1, 1 * 1000 * 10, 100 * 10, 1, NULL,
 		MMAL_PARAMETER_SHUTTER_SPEED,
 		ctrl_set_exposure,
-		false
 	},
 	{
 		V4L2_CID_AUTO_EXPOSURE_BIAS, MMAL_CONTROL_TYPE_INT_MENU,
@@ -992,7 +980,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		(ARRAY_SIZE(ev_bias_qmenu) + 1) / 2 - 1, 0, ev_bias_qmenu,
 		MMAL_PARAMETER_EXPOSURE_COMP,
 		ctrl_set_value_ev,
-		false
 	},
 	{
 		V4L2_CID_EXPOSURE_AUTO_PRIORITY, MMAL_CONTROL_TYPE_STD,
@@ -1000,7 +987,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		0, 1, NULL,
 		0,	/* Dummy MMAL ID as it gets mapped into FPS range*/
 		ctrl_set_exposure,
-		false
 	},
 	{
 		V4L2_CID_EXPOSURE_METERING,
@@ -1009,7 +995,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		V4L2_EXPOSURE_METERING_AVERAGE, 0, NULL,
 		MMAL_PARAMETER_EXP_METERING_MODE,
 		ctrl_set_metering_mode,
-		false
 	},
 	{
 		V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE,
@@ -1018,56 +1003,48 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		NULL,
 		MMAL_PARAMETER_AWB_MODE,
 		ctrl_set_awb_mode,
-		false
 	},
 	{
 		V4L2_CID_RED_BALANCE, MMAL_CONTROL_TYPE_STD,
 		1, 7999, 1000, 1, NULL,
 		MMAL_PARAMETER_CUSTOM_AWB_GAINS,
 		ctrl_set_awb_gains,
-		false
 	},
 	{
 		V4L2_CID_BLUE_BALANCE, MMAL_CONTROL_TYPE_STD,
 		1, 7999, 1000, 1, NULL,
 		MMAL_PARAMETER_CUSTOM_AWB_GAINS,
 		ctrl_set_awb_gains,
-		false
 	},
 	{
 		V4L2_CID_COLORFX, MMAL_CONTROL_TYPE_STD_MENU,
 		0, V4L2_COLORFX_SET_CBCR, V4L2_COLORFX_NONE, 0, NULL,
 		MMAL_PARAMETER_IMAGE_EFFECT,
 		ctrl_set_image_effect,
-		false
 	},
 	{
 		V4L2_CID_COLORFX_CBCR, MMAL_CONTROL_TYPE_STD,
 		0, 0xffff, 0x8080, 1, NULL,
 		MMAL_PARAMETER_COLOUR_EFFECT,
 		ctrl_set_colfx,
-		false
 	},
 	{
 		V4L2_CID_ROTATE, MMAL_CONTROL_TYPE_STD,
 		0, 360, 0, 90, NULL,
 		MMAL_PARAMETER_ROTATION,
 		ctrl_set_rotate,
-		false
 	},
 	{
 		V4L2_CID_HFLIP, MMAL_CONTROL_TYPE_STD,
 		0, 1, 0, 1, NULL,
 		MMAL_PARAMETER_MIRROR,
 		ctrl_set_flip,
-		false
 	},
 	{
 		V4L2_CID_VFLIP, MMAL_CONTROL_TYPE_STD,
 		0, 1, 0, 1, NULL,
 		MMAL_PARAMETER_MIRROR,
 		ctrl_set_flip,
-		false
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_BITRATE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
@@ -1075,14 +1052,12 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		0, 0, NULL,
 		MMAL_PARAMETER_RATECONTROL,
 		ctrl_set_bitrate_mode,
-		false
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_BITRATE, MMAL_CONTROL_TYPE_STD,
 		25 * 1000, 25 * 1000 * 1000, 10 * 1000 * 1000, 25 * 1000, NULL,
 		MMAL_PARAMETER_VIDEO_BIT_RATE,
 		ctrl_set_bitrate,
-		false
 	},
 	{
 		V4L2_CID_JPEG_COMPRESSION_QUALITY, MMAL_CONTROL_TYPE_STD,
@@ -1090,7 +1065,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		30, 1, NULL,
 		MMAL_PARAMETER_JPEG_Q_FACTOR,
 		ctrl_set_image_encode_output,
-		false
 	},
 	{
 		V4L2_CID_POWER_LINE_FREQUENCY, MMAL_CONTROL_TYPE_STD_MENU,
@@ -1098,7 +1072,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		1, 1, NULL,
 		MMAL_PARAMETER_FLICKER_AVOID,
 		ctrl_set_flicker_avoidance,
-		false
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_REPEAT_SEQ_HEADER, MMAL_CONTROL_TYPE_STD,
@@ -1106,7 +1079,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		0, 1, NULL,
 		MMAL_PARAMETER_VIDEO_ENCODE_INLINE_HEADER,
 		ctrl_set_video_encode_param_output,
-		false
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_H264_PROFILE,
@@ -1119,7 +1091,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		V4L2_MPEG_VIDEO_H264_PROFILE_HIGH, 1, NULL,
 		MMAL_PARAMETER_PROFILE,
 		ctrl_set_video_encode_profile_level,
-		false
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_H264_LEVEL, MMAL_CONTROL_TYPE_STD_MENU,
@@ -1139,7 +1110,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		V4L2_MPEG_VIDEO_H264_LEVEL_4_0, 1, NULL,
 		MMAL_PARAMETER_PROFILE,
 		ctrl_set_video_encode_profile_level,
-		false
 	},
 	{
 		V4L2_CID_SCENE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
@@ -1148,14 +1118,12 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		V4L2_SCENE_MODE_NONE, 1, NULL,
 		MMAL_PARAMETER_PROFILE,
 		ctrl_set_scene_mode,
-		false
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_H264_I_PERIOD, MMAL_CONTROL_TYPE_STD,
 		0, 0x7FFFFFFF, 60, 1, NULL,
 		MMAL_PARAMETER_INTRAPERIOD,
 		ctrl_set_video_encode_param_output,
-		false
 	},
 };
 
@@ -1168,7 +1136,7 @@ int bm2835_mmal_set_all_camera_controls(struct bm2835_mmal_dev *dev)
 		if ((dev->ctrls[c]) && (v4l2_ctrls[c].setter)) {
 			ret = v4l2_ctrls[c].setter(dev, dev->ctrls[c],
 						   &v4l2_ctrls[c]);
-			if (!v4l2_ctrls[c].ignore_errors && ret) {
+			if (ret) {
 				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 					 "Failed when setting default values for ctrl %d\n",
 					 c);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

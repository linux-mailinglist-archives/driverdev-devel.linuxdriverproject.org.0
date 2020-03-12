Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB7B183B94
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 22:43:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C09A87653;
	Thu, 12 Mar 2020 21:43:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fKZBlO+h45UF; Thu, 12 Mar 2020 21:43:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 81DB587610;
	Thu, 12 Mar 2020 21:43:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 37DAE1BF3C8
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 21:43:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2EE0E885BB
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 21:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WXhYf8tvTMZD for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 21:43:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 096348859D
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 21:43:48 +0000 (UTC)
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MWiYi-1ioLsr0cSO-00X61a; Thu, 12 Mar 2020 22:38:29 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 2/2] staging: bcm2835-camera: Use designators to init V4L2
 controls
Date: Thu, 12 Mar 2020 22:37:39 +0100
Message-Id: <1584049059-6772-3-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584049059-6772-1-git-send-email-stefan.wahren@i2se.com>
References: <1584049059-6772-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:KyWMc589nFZ9LqjvacDPh7lYoE+p5X62LuOBM4SCa5/ddO8UbAi
 j6Z5D90tuK1pmTHU4gAZ82hdIdyQIkqC1xhOZ8U7dsL294ELyP66Kctge3YpTlJt3ReXbeF
 RnbZV0u4npRwOeqd5L6xKZh72jJc0FjYyfVFGg3AYZU7vLFcOM2gEPpxFDINZnSfZ4MACyN
 oGb5xEbReKk9PieMRV4FA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:RnHAiCiComc=:s7Mi2sBpCRnXXap/6wHzpl
 L/gojXuB3DkPO9ojHYVVFeiJh8Vjh+Ny6n34yAXsBhAvdHYLiOwZq4XVtiZ97xBb0cz4oZ18c
 p+e/ZrJI1lzapxoXZ4I2L36xaT1unJv11dWD1XtKfs5ZUQbtQvvhB82aIUjuqe7WipPaiq45Z
 zXFbX1zCqqazWctoLAxwjGQQUiqMVolrUYT26zOjzh3Synb+SUFfM3hiXvOyjXvkqc/A+qlli
 rjSyyCKRTYQGagmiHe4ZcxyhmLZ82UogE4HA/arlvUUs2WHw49Dst2HUR9/59VsS3buiENCZ1
 fRQP/arD7M1FtulJBmRriCvCUF2LifWWXnPu54zr8bupXSZ4/+ns91OGy2KXKXEOcRrJ0rXwP
 Rk08fWe5L4WFfwzzjv6BXj/L1sAz9Nuhp33L83io7sUKRxhW85N58UYcLmW9cZ59WFp8ezNsQ
 QprNhP7NB4A51DYYn0LtpUak8OVcwun5Ja3u3+u75LVVnJeJiKcSimBh05byGlz2fyFoXn4pD
 BtXYCE9/0/sQ9fRIbMcC4+31pc6Uf6lRg5wJbaaQRFOqzDHZ3mUGpryLEbP5CHl2KDCkAHKoT
 t603XsVsp0R133DsdHBjESb8GkysuK4tBxD46H066CTkM9v4FDNEOeBDSlJLFwFTNsj3/zP9g
 rfk7qp4JeYKlvFOewYKIEZxBku1+aBMW6DXXbPFYNaIdDPzl82bHrLXQJFWi3le5Wjw6C3h7O
 PP/aU59utOxmV4EGBiiAZVwYBi8lIUX3Ujaqd0zGNq/Ty4m22O5p404n35kdtg0pNoqmycAlD
 mygb2mItbmcdZhMoFUqDF9hIHyvI3szly9DwYviiyL1asG/YRvSM6gks2heyQXhoF5qiL7o
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

The initializer lists for the V4L2 controls are hard to read.
So improve this by using designators.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../vc04_services/bcm2835-camera/controls.c        | 424 ++++++++++++++-------
 1 file changed, 277 insertions(+), 147 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 50f7c8b..5137fcf 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -920,210 +920,340 @@ static const struct v4l2_ctrl_ops bm2835_mmal_ctrl_ops = {
 
 static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	{
-		V4L2_CID_SATURATION, MMAL_CONTROL_TYPE_STD,
-		-100, 100, 0, 1, NULL,
-		MMAL_PARAMETER_SATURATION,
-		ctrl_set_rational,
+		.id = V4L2_CID_SATURATION,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = -100,
+		.max = 100,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_SATURATION,
+		.setter = ctrl_set_rational,
 	},
 	{
-		V4L2_CID_SHARPNESS, MMAL_CONTROL_TYPE_STD,
-		-100, 100, 0, 1, NULL,
-		MMAL_PARAMETER_SHARPNESS,
-		ctrl_set_rational,
+		.id = V4L2_CID_SHARPNESS,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = -100,
+		.max = 100,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_SHARPNESS,
+		.setter = ctrl_set_rational,
 	},
 	{
-		V4L2_CID_CONTRAST, MMAL_CONTROL_TYPE_STD,
-		-100, 100, 0, 1, NULL,
-		MMAL_PARAMETER_CONTRAST,
-		ctrl_set_rational,
+		.id = V4L2_CID_CONTRAST,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = -100,
+		.max = 100,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_CONTRAST,
+		.setter = ctrl_set_rational,
 	},
 	{
-		V4L2_CID_BRIGHTNESS, MMAL_CONTROL_TYPE_STD,
-		0, 100, 50, 1, NULL,
-		MMAL_PARAMETER_BRIGHTNESS,
-		ctrl_set_rational,
+		.id = V4L2_CID_BRIGHTNESS,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 100,
+		.def = 50,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_BRIGHTNESS,
+		.setter = ctrl_set_rational,
 	},
 	{
-		V4L2_CID_ISO_SENSITIVITY, MMAL_CONTROL_TYPE_INT_MENU,
-		0, ARRAY_SIZE(iso_qmenu) - 1, 0, 1, iso_qmenu,
-		MMAL_PARAMETER_ISO,
-		ctrl_set_iso,
+		.id = V4L2_CID_ISO_SENSITIVITY,
+		.type = MMAL_CONTROL_TYPE_INT_MENU,
+		.min = 0,
+		.max = ARRAY_SIZE(iso_qmenu) - 1,
+		.def = 0,
+		.step = 1,
+		.imenu = iso_qmenu,
+		.mmal_id = MMAL_PARAMETER_ISO,
+		.setter = ctrl_set_iso,
 	},
 	{
-		V4L2_CID_ISO_SENSITIVITY_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
-		0, V4L2_ISO_SENSITIVITY_AUTO, V4L2_ISO_SENSITIVITY_AUTO, 1,
-		NULL, MMAL_PARAMETER_ISO,
-		ctrl_set_iso,
+		.id = V4L2_CID_ISO_SENSITIVITY_AUTO,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = 0,
+		.max = V4L2_ISO_SENSITIVITY_AUTO,
+		.def = V4L2_ISO_SENSITIVITY_AUTO,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_ISO,
+		.setter = ctrl_set_iso,
 	},
 	{
-		V4L2_CID_IMAGE_STABILIZATION, MMAL_CONTROL_TYPE_STD,
-		0, 1, 0, 1, NULL,
-		MMAL_PARAMETER_VIDEO_STABILISATION,
-		ctrl_set_value,
+		.id = V4L2_CID_IMAGE_STABILIZATION,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 1,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_VIDEO_STABILISATION,
+		.setter = ctrl_set_value,
 	},
 	{
-		V4L2_CID_EXPOSURE_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
-		~0x03, V4L2_EXPOSURE_APERTURE_PRIORITY, V4L2_EXPOSURE_AUTO, 0,
-		NULL, MMAL_PARAMETER_EXPOSURE_MODE,
-		ctrl_set_exposure,
+		.id = V4L2_CID_EXPOSURE_AUTO,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = ~0x03,
+		.max = V4L2_EXPOSURE_APERTURE_PRIORITY,
+		.def = V4L2_EXPOSURE_AUTO,
+		.step = 0,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_EXPOSURE_MODE,
+		.setter = ctrl_set_exposure,
 	},
 	{
-		V4L2_CID_EXPOSURE_ABSOLUTE, MMAL_CONTROL_TYPE_STD,
+		.id = V4L2_CID_EXPOSURE_ABSOLUTE,
+		.type = MMAL_CONTROL_TYPE_STD,
 		/* Units of 100usecs */
-		1, 1 * 1000 * 10, 100 * 10, 1, NULL,
-		MMAL_PARAMETER_SHUTTER_SPEED,
-		ctrl_set_exposure,
+		.min = 1,
+		.max = 1 * 1000 * 10,
+		.def = 100 * 10,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_SHUTTER_SPEED,
+		.setter = ctrl_set_exposure,
 	},
 	{
-		V4L2_CID_AUTO_EXPOSURE_BIAS, MMAL_CONTROL_TYPE_INT_MENU,
-		0, ARRAY_SIZE(ev_bias_qmenu) - 1,
-		(ARRAY_SIZE(ev_bias_qmenu) + 1) / 2 - 1, 0, ev_bias_qmenu,
-		MMAL_PARAMETER_EXPOSURE_COMP,
-		ctrl_set_value_ev,
+		.id = V4L2_CID_AUTO_EXPOSURE_BIAS,
+		.type = MMAL_CONTROL_TYPE_INT_MENU,
+		.min = 0,
+		.max = ARRAY_SIZE(ev_bias_qmenu) - 1,
+		.def = (ARRAY_SIZE(ev_bias_qmenu) + 1) / 2 - 1,
+		.step = 0,
+		.imenu = ev_bias_qmenu,
+		.mmal_id = MMAL_PARAMETER_EXPOSURE_COMP,
+		.setter = ctrl_set_value_ev,
 	},
 	{
-		V4L2_CID_EXPOSURE_AUTO_PRIORITY, MMAL_CONTROL_TYPE_STD,
-		0, 1,
-		0, 1, NULL,
-		0,	/* Dummy MMAL ID as it gets mapped into FPS range*/
-		ctrl_set_exposure,
+		.id = V4L2_CID_EXPOSURE_AUTO_PRIORITY,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 1,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		/* Dummy MMAL ID as it gets mapped into FPS range */
+		.mmal_id = 0,
+		.setter = ctrl_set_exposure,
 	},
 	{
-		V4L2_CID_EXPOSURE_METERING,
-		MMAL_CONTROL_TYPE_STD_MENU,
-		~0x7, V4L2_EXPOSURE_METERING_SPOT,
-		V4L2_EXPOSURE_METERING_AVERAGE, 0, NULL,
-		MMAL_PARAMETER_EXP_METERING_MODE,
-		ctrl_set_metering_mode,
+		.id = V4L2_CID_EXPOSURE_METERING,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = ~0x7,
+		.max = V4L2_EXPOSURE_METERING_SPOT,
+		.def = V4L2_EXPOSURE_METERING_AVERAGE,
+		.step = 0,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_EXP_METERING_MODE,
+		.setter = ctrl_set_metering_mode,
 	},
 	{
-		V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE,
-		MMAL_CONTROL_TYPE_STD_MENU,
-		~0x3ff, V4L2_WHITE_BALANCE_SHADE, V4L2_WHITE_BALANCE_AUTO, 0,
-		NULL,
-		MMAL_PARAMETER_AWB_MODE,
-		ctrl_set_awb_mode,
+		.id = V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = ~0x3ff,
+		.max = V4L2_WHITE_BALANCE_SHADE,
+		.def = V4L2_WHITE_BALANCE_AUTO,
+		.step = 0,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_AWB_MODE,
+		.setter = ctrl_set_awb_mode,
 	},
 	{
-		V4L2_CID_RED_BALANCE, MMAL_CONTROL_TYPE_STD,
-		1, 7999, 1000, 1, NULL,
-		MMAL_PARAMETER_CUSTOM_AWB_GAINS,
-		ctrl_set_awb_gains,
+		.id = V4L2_CID_RED_BALANCE,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 1,
+		.max = 7999,
+		.def = 1000,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_CUSTOM_AWB_GAINS,
+		.setter = ctrl_set_awb_gains,
 	},
 	{
-		V4L2_CID_BLUE_BALANCE, MMAL_CONTROL_TYPE_STD,
-		1, 7999, 1000, 1, NULL,
-		MMAL_PARAMETER_CUSTOM_AWB_GAINS,
-		ctrl_set_awb_gains,
+		.id = V4L2_CID_BLUE_BALANCE,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 1,
+		.max = 7999,
+		.def = 1000,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_CUSTOM_AWB_GAINS,
+		.setter = ctrl_set_awb_gains,
 	},
 	{
-		V4L2_CID_COLORFX, MMAL_CONTROL_TYPE_STD_MENU,
-		0, V4L2_COLORFX_SET_CBCR, V4L2_COLORFX_NONE, 0, NULL,
-		MMAL_PARAMETER_IMAGE_EFFECT,
-		ctrl_set_image_effect,
+		.id = V4L2_CID_COLORFX,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = 0,
+		.max = V4L2_COLORFX_SET_CBCR,
+		.def = V4L2_COLORFX_NONE,
+		.step = 0,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_IMAGE_EFFECT,
+		.setter = ctrl_set_image_effect,
 	},
 	{
-		V4L2_CID_COLORFX_CBCR, MMAL_CONTROL_TYPE_STD,
-		0, 0xffff, 0x8080, 1, NULL,
-		MMAL_PARAMETER_COLOUR_EFFECT,
-		ctrl_set_colfx,
+		.id = V4L2_CID_COLORFX_CBCR,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 0xffff,
+		.def = 0x8080,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_COLOUR_EFFECT,
+		.setter = ctrl_set_colfx,
 	},
 	{
-		V4L2_CID_ROTATE, MMAL_CONTROL_TYPE_STD,
-		0, 360, 0, 90, NULL,
-		MMAL_PARAMETER_ROTATION,
-		ctrl_set_rotate,
+		.id = V4L2_CID_ROTATE,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 360,
+		.def = 0,
+		.step = 90,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_ROTATION,
+		.setter = ctrl_set_rotate,
 	},
 	{
-		V4L2_CID_HFLIP, MMAL_CONTROL_TYPE_STD,
-		0, 1, 0, 1, NULL,
-		MMAL_PARAMETER_MIRROR,
-		ctrl_set_flip,
+		.id = V4L2_CID_HFLIP,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 1,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_MIRROR,
+		.setter = ctrl_set_flip,
 	},
 	{
-		V4L2_CID_VFLIP, MMAL_CONTROL_TYPE_STD,
-		0, 1, 0, 1, NULL,
-		MMAL_PARAMETER_MIRROR,
-		ctrl_set_flip,
+		.id = V4L2_CID_VFLIP,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 1,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_MIRROR,
+		.setter = ctrl_set_flip,
 	},
 	{
-		V4L2_CID_MPEG_VIDEO_BITRATE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
-		0, V4L2_MPEG_VIDEO_BITRATE_MODE_CBR,
-		0, 0, NULL,
-		MMAL_PARAMETER_RATECONTROL,
-		ctrl_set_bitrate_mode,
+		.id = V4L2_CID_MPEG_VIDEO_BITRATE_MODE,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = 0,
+		.max = V4L2_MPEG_VIDEO_BITRATE_MODE_CBR,
+		.def = 0,
+		.step = 0,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_RATECONTROL,
+		.setter = ctrl_set_bitrate_mode,
 	},
 	{
-		V4L2_CID_MPEG_VIDEO_BITRATE, MMAL_CONTROL_TYPE_STD,
-		25 * 1000, 25 * 1000 * 1000, 10 * 1000 * 1000, 25 * 1000, NULL,
-		MMAL_PARAMETER_VIDEO_BIT_RATE,
-		ctrl_set_bitrate,
+		.id = V4L2_CID_MPEG_VIDEO_BITRATE,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 25 * 1000,
+		.max = 25 * 1000 * 1000,
+		.def = 10 * 1000 * 1000,
+		.step = 25 * 1000,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_VIDEO_BIT_RATE,
+		.setter = ctrl_set_bitrate,
 	},
 	{
-		V4L2_CID_JPEG_COMPRESSION_QUALITY, MMAL_CONTROL_TYPE_STD,
-		1, 100,
-		30, 1, NULL,
-		MMAL_PARAMETER_JPEG_Q_FACTOR,
-		ctrl_set_image_encode_output,
+		.id = V4L2_CID_JPEG_COMPRESSION_QUALITY,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 1,
+		.max = 100,
+		.def = 30,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_JPEG_Q_FACTOR,
+		.setter = ctrl_set_image_encode_output,
 	},
 	{
-		V4L2_CID_POWER_LINE_FREQUENCY, MMAL_CONTROL_TYPE_STD_MENU,
-		0, V4L2_CID_POWER_LINE_FREQUENCY_AUTO,
-		1, 1, NULL,
-		MMAL_PARAMETER_FLICKER_AVOID,
-		ctrl_set_flicker_avoidance,
+		.id = V4L2_CID_POWER_LINE_FREQUENCY,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = 0,
+		.max = V4L2_CID_POWER_LINE_FREQUENCY_AUTO,
+		.def = 1,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_FLICKER_AVOID,
+		.setter = ctrl_set_flicker_avoidance,
 	},
 	{
-		V4L2_CID_MPEG_VIDEO_REPEAT_SEQ_HEADER, MMAL_CONTROL_TYPE_STD,
-		0, 1,
-		0, 1, NULL,
-		MMAL_PARAMETER_VIDEO_ENCODE_INLINE_HEADER,
-		ctrl_set_video_encode_param_output,
+		.id = V4L2_CID_MPEG_VIDEO_REPEAT_SEQ_HEADER,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 1,
+		.def = 0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_VIDEO_ENCODE_INLINE_HEADER,
+		.setter = ctrl_set_video_encode_param_output,
 	},
 	{
-		V4L2_CID_MPEG_VIDEO_H264_PROFILE,
-		MMAL_CONTROL_TYPE_STD_MENU,
-		~(BIT(V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE) |
-		  BIT(V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE) |
-		  BIT(V4L2_MPEG_VIDEO_H264_PROFILE_MAIN) |
-		  BIT(V4L2_MPEG_VIDEO_H264_PROFILE_HIGH)),
-		V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
-		V4L2_MPEG_VIDEO_H264_PROFILE_HIGH, 1, NULL,
-		MMAL_PARAMETER_PROFILE,
-		ctrl_set_video_encode_profile_level,
+		.id = V4L2_CID_MPEG_VIDEO_H264_PROFILE,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = ~(BIT(V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE) |
+			 BIT(V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE) |
+			 BIT(V4L2_MPEG_VIDEO_H264_PROFILE_MAIN) |
+			 BIT(V4L2_MPEG_VIDEO_H264_PROFILE_HIGH)),
+		.max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
+		.def = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_PROFILE,
+		.setter = ctrl_set_video_encode_profile_level,
 	},
 	{
-		V4L2_CID_MPEG_VIDEO_H264_LEVEL, MMAL_CONTROL_TYPE_STD_MENU,
-		~(BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_0) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1B) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_1) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_2) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_3) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_0) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_1) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_2) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_0) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_1) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_2) |
-		  BIT(V4L2_MPEG_VIDEO_H264_LEVEL_4_0)),
-		V4L2_MPEG_VIDEO_H264_LEVEL_4_0,
-		V4L2_MPEG_VIDEO_H264_LEVEL_4_0, 1, NULL,
-		MMAL_PARAMETER_PROFILE,
-		ctrl_set_video_encode_profile_level,
+		.id = V4L2_CID_MPEG_VIDEO_H264_LEVEL,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		.min = ~(BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_0) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1B) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_1) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_2) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_1_3) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_0) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_1) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_2_2) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_0) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_1) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_3_2) |
+			 BIT(V4L2_MPEG_VIDEO_H264_LEVEL_4_0)),
+		.max = V4L2_MPEG_VIDEO_H264_LEVEL_4_0,
+		.def = V4L2_MPEG_VIDEO_H264_LEVEL_4_0,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_PROFILE,
+		.setter = ctrl_set_video_encode_profile_level,
 	},
 	{
-		V4L2_CID_SCENE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
-		-1,	/* Min (mask) is computed at runtime */
-		V4L2_SCENE_MODE_TEXT,
-		V4L2_SCENE_MODE_NONE, 1, NULL,
-		MMAL_PARAMETER_PROFILE,
-		ctrl_set_scene_mode,
+		.id = V4L2_CID_SCENE_MODE,
+		.type = MMAL_CONTROL_TYPE_STD_MENU,
+		/* mask is computed at runtime */
+		.min = -1,
+		.max = V4L2_SCENE_MODE_TEXT,
+		.def = V4L2_SCENE_MODE_NONE,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_PROFILE,
+		.setter = ctrl_set_scene_mode,
 	},
 	{
-		V4L2_CID_MPEG_VIDEO_H264_I_PERIOD, MMAL_CONTROL_TYPE_STD,
-		0, 0x7FFFFFFF, 60, 1, NULL,
-		MMAL_PARAMETER_INTRAPERIOD,
-		ctrl_set_video_encode_param_output,
+		.id = V4L2_CID_MPEG_VIDEO_H264_I_PERIOD,
+		.type = MMAL_CONTROL_TYPE_STD,
+		.min = 0,
+		.max = 0x7FFFFFFF,
+		.def = 60,
+		.step = 1,
+		.imenu = NULL,
+		.mmal_id = MMAL_PARAMETER_INTRAPERIOD,
+		.setter = ctrl_set_video_encode_param_output,
 	},
 };
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

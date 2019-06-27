Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C76CE58AAF
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 21:07:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EDE3522270;
	Thu, 27 Jun 2019 19:07:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QLCi8uG1rTzL; Thu, 27 Jun 2019 19:07:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5A55F20434;
	Thu, 27 Jun 2019 19:07:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C3D51BF41B
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 44CD187583
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:07:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jkHmZXlMVINL for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 19:07:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A85B6874F7
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 19:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561662413;
 bh=3mqqxDb8bLQ5CzkTAa0h20P0V3BJrxb/3RrHc2khICs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Un9vUkeEDDdEmqidE6QKyOw0lvi4XIrIQk0pnoVfAzqvfhC0hUsT/3H1YlwoN+mW8
 v2Y0J32+g+PgZM4oWk8ws2/81v7qUvG0522LGwchpV3jDP32xrwtr/+q8eeeOBHMK4
 91XWdfi5phuMJP56xMUPtOzWc1WBjn8VBd4gZBm4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LgMCe-1iJEPh0riu-00njBV; Thu, 27 Jun 2019 21:06:53 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 23/31] staging: bcm2835-camera: Fix up mmal-parameters.h
Date: Thu, 27 Jun 2019 21:06:18 +0200
Message-Id: <1561662386-23045-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
References: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:UXQ+zIyZZhoUihwmsQML4qZ8j+ZTGuDbVWpOWIcNNIOSvN2BSvO
 hQoowbqbAhv4Fnw0X68Fb16Af6m5tJ3LaZXJlnaVIq1ih81Ia7vrBxUk6vhwaKRasZWOzZN
 QOYqdbcWpQKBYcbqQA6OdVLYy0gH++LJLXH+EL7Xibh4PGtkt1rUFzHFZmNwZ/REqlGuZK4
 MVLorg3GZ3Nhq032zFYFQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:tT+7U1H6yWY=:HpzEeacWS7tHS6st5pnpcN
 FP3sw+OtXAv6VkPDYv0aIeF/aLeNkBe7Oaezk1L1gR2+IdhX015Vn33wE3niR5S043Lh94zsU
 yn6shCHQInMGCJYXsUkIfmw0D6KEq6XjcdRXvrFkDQqCMwXyQqSusNm1DpH+zM7q9Rr1dPMmo
 uyalbKU+B67z44i9G2vfoK4D0enrhOLNpRMVcw3pXipdEN7s1PyOsk7O5bUxN0ddwBWtGwYse
 ey27kjSrxGZlJfWAwNPMXZs+2UbLiLIH3zuobttyZUhPfQOKdTsXFNokm2GwZXh78HMlQd+D0
 i1goFqa9uXEguH9JuiT+24qMxJ+QrTIMJTE6YV1TfxfIRVFE8ExSXbRbqNckosfOgkL+Mlzao
 ZFNVe9nz9QtoOzMyG4SjB696z3u0woZ27FzD/glKbnc97eV4mXKSZcBoFqcPkkVppoQS1M+oL
 4XWllkUfSetNj+LEdcOjo8NgW2C8mYFoE2JA6q7T+atdyZY21wJTPKH5+PT4sR9ubLyDBrkBk
 lLZXG5DLKgHh92vYtT1uA0VIVpFhUAu5Y7qBos/VlvbnQR9VpXcHRbHV5t7BS5I5Lm056rRbK
 4/CHZ+aSQ5nZ5kcQBGzHdjPGGxOSi7g4YZvghOrPiExf2KM9I9QM9UULBsbWghW6fKQYYvsx4
 eFAHMGXcDIy0CAA7A+KQ/6WRRe5hhF7tHivUgYUjBwpt+I/5J9hJgc88OqRHBp8xbDqbqJhao
 X/i6kVFOZSxWCp8V5qBpEiHOLtG2fjDJv5T9Y41i0ztZote+rVtUeklmZhToEakHv2/XQLHrQ
 75CBxDBXxg7ocEl6F5zBmfQ+Mu2JL1elAcH5cMI/j91tQf/B+G3sCXoLBGu4ZvANoxj6oe5RD
 I1xBK18G1EfQesl0gPMRK2z1H2A0GWsXPN96pcXLIuXM8fn/kV4lRntAQynP6lfqHYCHDQSeT
 mezLwt4m4FGTVlydDwrn0+v92PPmInQdWJwMTO7GVQqihMqvVktLfU+rk7RtZU4rkvBapH2iA
 Q3W9ZA0nCgzdLjqXCFjSiEtZTIY/rOYavafIlXwzCk71pxYF8Pm8qrUka+WhLGFk9dqJMJmjd
 JVrR4pVcWjQz/A=
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

Fixes up all the checkpatch error "line over 80 characters" in
mmal-parameters.h

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 .../vc04_services/bcm2835-camera/mmal-parameters.h | 261 +++++++++++++--------
 1 file changed, 159 insertions(+), 102 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
index da21ec5..80a9912 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
@@ -37,134 +37,190 @@

 /* Common parameters */
 enum mmal_parameter_common_type {
-	MMAL_PARAMETER_UNUSED  /**< Never a valid parameter ID */
-		= MMAL_PARAMETER_GROUP_COMMON,
-	MMAL_PARAMETER_SUPPORTED_ENCODINGS, /**< MMAL_PARAMETER_ENCODING_T */
-	MMAL_PARAMETER_URI, /**< MMAL_PARAMETER_URI_T */
-
-	/** MMAL_PARAMETER_CHANGE_EVENT_REQUEST_T */
+		/**< Never a valid parameter ID */
+	MMAL_PARAMETER_UNUSED = MMAL_PARAMETER_GROUP_COMMON,
+
+		/**< MMAL_PARAMETER_ENCODING_T */
+	MMAL_PARAMETER_SUPPORTED_ENCODINGS,
+		/**< MMAL_PARAMETER_URI_T */
+	MMAL_PARAMETER_URI,
+		/** MMAL_PARAMETER_CHANGE_EVENT_REQUEST_T */
 	MMAL_PARAMETER_CHANGE_EVENT_REQUEST,
-
-	/** MMAL_PARAMETER_BOOLEAN_T */
+		/** MMAL_PARAMETER_BOOLEAN_T */
 	MMAL_PARAMETER_ZERO_COPY,
-
-	/**< MMAL_PARAMETER_BUFFER_REQUIREMENTS_T */
+		/**< MMAL_PARAMETER_BUFFER_REQUIREMENTS_T */
 	MMAL_PARAMETER_BUFFER_REQUIREMENTS,
-
-	MMAL_PARAMETER_STATISTICS, /**< MMAL_PARAMETER_STATISTICS_T */
-	MMAL_PARAMETER_CORE_STATISTICS, /**< MMAL_PARAMETER_CORE_STATISTICS_T */
-	MMAL_PARAMETER_MEM_USAGE, /**< MMAL_PARAMETER_MEM_USAGE_T */
-	MMAL_PARAMETER_BUFFER_FLAG_FILTER, /**< MMAL_PARAMETER_UINT32_T */
-	MMAL_PARAMETER_SEEK, /**< MMAL_PARAMETER_SEEK_T */
-	MMAL_PARAMETER_POWERMON_ENABLE, /**< MMAL_PARAMETER_BOOLEAN_T */
-	MMAL_PARAMETER_LOGGING, /**< MMAL_PARAMETER_LOGGING_T */
-	MMAL_PARAMETER_SYSTEM_TIME, /**< MMAL_PARAMETER_UINT64_T */
-	MMAL_PARAMETER_NO_IMAGE_PADDING  /**< MMAL_PARAMETER_BOOLEAN_T */
+		/**< MMAL_PARAMETER_STATISTICS_T */
+	MMAL_PARAMETER_STATISTICS,
+		/**< MMAL_PARAMETER_CORE_STATISTICS_T */
+	MMAL_PARAMETER_CORE_STATISTICS,
+		/**< MMAL_PARAMETER_MEM_USAGE_T */
+	MMAL_PARAMETER_MEM_USAGE,
+		/**< MMAL_PARAMETER_UINT32_T */
+	MMAL_PARAMETER_BUFFER_FLAG_FILTER,
+		/**< MMAL_PARAMETER_SEEK_T */
+	MMAL_PARAMETER_SEEK,
+		/**< MMAL_PARAMETER_BOOLEAN_T */
+	MMAL_PARAMETER_POWERMON_ENABLE,
+		/**< MMAL_PARAMETER_LOGGING_T */
+	MMAL_PARAMETER_LOGGING,
+		/**< MMAL_PARAMETER_UINT64_T */
+	MMAL_PARAMETER_SYSTEM_TIME,
+		/**< MMAL_PARAMETER_BOOLEAN_T */
+	MMAL_PARAMETER_NO_IMAGE_PADDING,
 };

 /* camera parameters */

 enum mmal_parameter_camera_type {
 	/* 0 */
-	/** @ref MMAL_PARAMETER_THUMBNAIL_CONFIG_T */
-	MMAL_PARAMETER_THUMBNAIL_CONFIGURATION
-		= MMAL_PARAMETER_GROUP_CAMERA,
-	MMAL_PARAMETER_CAPTURE_QUALITY, /**< Unused? */
-	MMAL_PARAMETER_ROTATION, /**< @ref MMAL_PARAMETER_INT32_T */
-	MMAL_PARAMETER_EXIF_DISABLE, /**< @ref MMAL_PARAMETER_BOOLEAN_T */
-	MMAL_PARAMETER_EXIF, /**< @ref MMAL_PARAMETER_EXIF_T */
-	MMAL_PARAMETER_AWB_MODE, /**< @ref MMAL_PARAM_AWBMODE_T */
-	MMAL_PARAMETER_IMAGE_EFFECT, /**< @ref MMAL_PARAMETER_IMAGEFX_T */
-	MMAL_PARAMETER_COLOUR_EFFECT, /**< @ref MMAL_PARAMETER_COLOURFX_T */
-	MMAL_PARAMETER_FLICKER_AVOID, /**< @ref MMAL_PARAMETER_FLICKERAVOID_T */
-	MMAL_PARAMETER_FLASH, /**< @ref MMAL_PARAMETER_FLASH_T */
-	MMAL_PARAMETER_REDEYE, /**< @ref MMAL_PARAMETER_REDEYE_T */
-	MMAL_PARAMETER_FOCUS, /**< @ref MMAL_PARAMETER_FOCUS_T */
-	MMAL_PARAMETER_FOCAL_LENGTHS, /**< Unused? */
-	MMAL_PARAMETER_EXPOSURE_COMP, /**< @ref MMAL_PARAMETER_INT32_T */
-	MMAL_PARAMETER_ZOOM, /**< @ref MMAL_PARAMETER_SCALEFACTOR_T */
-	MMAL_PARAMETER_MIRROR, /**< @ref MMAL_PARAMETER_MIRROR_T */
+		/** @ref MMAL_PARAMETER_THUMBNAIL_CONFIG_T */
+	MMAL_PARAMETER_THUMBNAIL_CONFIGURATION =
+		MMAL_PARAMETER_GROUP_CAMERA,
+		/**< Unused? */
+	MMAL_PARAMETER_CAPTURE_QUALITY,
+		/**< @ref MMAL_PARAMETER_INT32_T */
+	MMAL_PARAMETER_ROTATION,
+		/**< @ref MMAL_PARAMETER_BOOLEAN_T */
+	MMAL_PARAMETER_EXIF_DISABLE,
+		/**< @ref MMAL_PARAMETER_EXIF_T */
+	MMAL_PARAMETER_EXIF,
+		/**< @ref MMAL_PARAM_AWBMODE_T */
+	MMAL_PARAMETER_AWB_MODE,
+		/**< @ref MMAL_PARAMETER_IMAGEFX_T */
+	MMAL_PARAMETER_IMAGE_EFFECT,
+		/**< @ref MMAL_PARAMETER_COLOURFX_T */
+	MMAL_PARAMETER_COLOUR_EFFECT,
+		/**< @ref MMAL_PARAMETER_FLICKERAVOID_T */
+	MMAL_PARAMETER_FLICKER_AVOID,
+		/**< @ref MMAL_PARAMETER_FLASH_T */
+	MMAL_PARAMETER_FLASH,
+		/**< @ref MMAL_PARAMETER_REDEYE_T */
+	MMAL_PARAMETER_REDEYE,
+		/**< @ref MMAL_PARAMETER_FOCUS_T */
+	MMAL_PARAMETER_FOCUS,
+		/**< Unused? */
+	MMAL_PARAMETER_FOCAL_LENGTHS,
+		/**< @ref MMAL_PARAMETER_INT32_T */
+	MMAL_PARAMETER_EXPOSURE_COMP,
+		/**< @ref MMAL_PARAMETER_SCALEFACTOR_T */
+	MMAL_PARAMETER_ZOOM,
+		/**< @ref MMAL_PARAMETER_MIRROR_T */
+	MMAL_PARAMETER_MIRROR,

 	/* 0x10 */
-	MMAL_PARAMETER_CAMERA_NUM, /**< @ref MMAL_PARAMETER_UINT32_T */
-	MMAL_PARAMETER_CAPTURE, /**< @ref MMAL_PARAMETER_BOOLEAN_T */
-	MMAL_PARAMETER_EXPOSURE_MODE, /**< @ref MMAL_PARAMETER_EXPOSUREMODE_T */
-	MMAL_PARAMETER_EXP_METERING_MODE, /**< @ref MMAL_PARAMETER_EXPOSUREMETERINGMODE_T */
-	MMAL_PARAMETER_FOCUS_STATUS, /**< @ref MMAL_PARAMETER_FOCUS_STATUS_T */
-	MMAL_PARAMETER_CAMERA_CONFIG, /**< @ref MMAL_PARAMETER_CAMERA_CONFIG_T */
-	MMAL_PARAMETER_CAPTURE_STATUS, /**< @ref MMAL_PARAMETER_CAPTURE_STATUS_T */
-	MMAL_PARAMETER_FACE_TRACK, /**< @ref MMAL_PARAMETER_FACE_TRACK_T */
-	MMAL_PARAMETER_DRAW_BOX_FACES_AND_FOCUS, /**< @ref MMAL_PARAMETER_BOOLEAN_T */
-	MMAL_PARAMETER_JPEG_Q_FACTOR, /**< @ref MMAL_PARAMETER_UINT32_T */
-	MMAL_PARAMETER_FRAME_RATE, /**< @ref MMAL_PARAMETER_FRAME_RATE_T */
-	MMAL_PARAMETER_USE_STC, /**< @ref MMAL_PARAMETER_CAMERA_STC_MODE_T */
-	MMAL_PARAMETER_CAMERA_INFO, /**< @ref MMAL_PARAMETER_CAMERA_INFO_T */
-	MMAL_PARAMETER_VIDEO_STABILISATION, /**< @ref MMAL_PARAMETER_BOOLEAN_T */
-	MMAL_PARAMETER_FACE_TRACK_RESULTS, /**< @ref MMAL_PARAMETER_FACE_TRACK_RESULTS_T */
-	MMAL_PARAMETER_ENABLE_RAW_CAPTURE, /**< @ref MMAL_PARAMETER_BOOLEAN_T */
+		/**< @ref MMAL_PARAMETER_UINT32_T */
+	MMAL_PARAMETER_CAMERA_NUM,
+		/**< @ref MMAL_PARAMETER_BOOLEAN_T */
+	MMAL_PARAMETER_CAPTURE,
+		/**< @ref MMAL_PARAMETER_EXPOSUREMODE_T */
+	MMAL_PARAMETER_EXPOSURE_MODE,
+		/**< @ref MMAL_PARAMETER_EXPOSUREMETERINGMODE_T */
+	MMAL_PARAMETER_EXP_METERING_MODE,
+		/**< @ref MMAL_PARAMETER_FOCUS_STATUS_T */
+	MMAL_PARAMETER_FOCUS_STATUS,
+		/**< @ref MMAL_PARAMETER_CAMERA_CONFIG_T */
+	MMAL_PARAMETER_CAMERA_CONFIG,
+		/**< @ref MMAL_PARAMETER_CAPTURE_STATUS_T */
+	MMAL_PARAMETER_CAPTURE_STATUS,
+		/**< @ref MMAL_PARAMETER_FACE_TRACK_T */
+	MMAL_PARAMETER_FACE_TRACK,
+		/**< @ref MMAL_PARAMETER_BOOLEAN_T */
+	MMAL_PARAMETER_DRAW_BOX_FACES_AND_FOCUS,
+		/**< @ref MMAL_PARAMETER_UINT32_T */
+	MMAL_PARAMETER_JPEG_Q_FACTOR,
+		/**< @ref MMAL_PARAMETER_FRAME_RATE_T */
+	MMAL_PARAMETER_FRAME_RATE,
+		/**< @ref MMAL_PARAMETER_CAMERA_STC_MODE_T */
+	MMAL_PARAMETER_USE_STC,
+		/**< @ref MMAL_PARAMETER_CAMERA_INFO_T */
+	MMAL_PARAMETER_CAMERA_INFO,
+		/**< @ref MMAL_PARAMETER_BOOLEAN_T */
+	MMAL_PARAMETER_VIDEO_STABILISATION,
+		/**< @ref MMAL_PARAMETER_FACE_TRACK_RESULTS_T */
+	MMAL_PARAMETER_FACE_TRACK_RESULTS,
+		/**< @ref MMAL_PARAMETER_BOOLEAN_T */
+	MMAL_PARAMETER_ENABLE_RAW_CAPTURE,

 	/* 0x20 */
-	MMAL_PARAMETER_DPF_FILE, /**< @ref MMAL_PARAMETER_URI_T */
-	MMAL_PARAMETER_ENABLE_DPF_FILE, /**< @ref MMAL_PARAMETER_BOOLEAN_T */
-	MMAL_PARAMETER_DPF_FAIL_IS_FATAL, /**< @ref MMAL_PARAMETER_BOOLEAN_T */
-	MMAL_PARAMETER_CAPTURE_MODE, /**< @ref MMAL_PARAMETER_CAPTUREMODE_T */
-	MMAL_PARAMETER_FOCUS_REGIONS, /**< @ref MMAL_PARAMETER_FOCUS_REGIONS_T */
-	MMAL_PARAMETER_INPUT_CROP, /**< @ref MMAL_PARAMETER_INPUT_CROP_T */
-	MMAL_PARAMETER_SENSOR_INFORMATION, /**< @ref MMAL_PARAMETER_SENSOR_INFORMATION_T */
-	MMAL_PARAMETER_FLASH_SELECT, /**< @ref MMAL_PARAMETER_FLASH_SELECT_T */
-	MMAL_PARAMETER_FIELD_OF_VIEW, /**< @ref MMAL_PARAMETER_FIELD_OF_VIEW_T */
-	MMAL_PARAMETER_HIGH_DYNAMIC_RANGE, /**< @ref MMAL_PARAMETER_BOOLEAN_T */
-	MMAL_PARAMETER_DYNAMIC_RANGE_COMPRESSION, /**< @ref MMAL_PARAMETER_DRC_T */
-	MMAL_PARAMETER_ALGORITHM_CONTROL, /**< @ref MMAL_PARAMETER_ALGORITHM_CONTROL_T */
-	MMAL_PARAMETER_SHARPNESS, /**< @ref MMAL_PARAMETER_RATIONAL_T */
-	MMAL_PARAMETER_CONTRAST, /**< @ref MMAL_PARAMETER_RATIONAL_T */
-	MMAL_PARAMETER_BRIGHTNESS, /**< @ref MMAL_PARAMETER_RATIONAL_T */
-	MMAL_PARAMETER_SATURATION, /**< @ref MMAL_PARAMETER_RATIONAL_T */
+		/**< @ref MMAL_PARAMETER_URI_T */
+	MMAL_PARAMETER_DPF_FILE,
+		/**< @ref MMAL_PARAMETER_BOOLEAN_T */
+	MMAL_PARAMETER_ENABLE_DPF_FILE,
+		/**< @ref MMAL_PARAMETER_BOOLEAN_T */
+	MMAL_PARAMETER_DPF_FAIL_IS_FATAL,
+		/**< @ref MMAL_PARAMETER_CAPTUREMODE_T */
+	MMAL_PARAMETER_CAPTURE_MODE,
+		/**< @ref MMAL_PARAMETER_FOCUS_REGIONS_T */
+	MMAL_PARAMETER_FOCUS_REGIONS,
+		/**< @ref MMAL_PARAMETER_INPUT_CROP_T */
+	MMAL_PARAMETER_INPUT_CROP,
+		/**< @ref MMAL_PARAMETER_SENSOR_INFORMATION_T */
+	MMAL_PARAMETER_SENSOR_INFORMATION,
+		/**< @ref MMAL_PARAMETER_FLASH_SELECT_T */
+	MMAL_PARAMETER_FLASH_SELECT,
+		/**< @ref MMAL_PARAMETER_FIELD_OF_VIEW_T */
+	MMAL_PARAMETER_FIELD_OF_VIEW,
+		/**< @ref MMAL_PARAMETER_BOOLEAN_T */
+	MMAL_PARAMETER_HIGH_DYNAMIC_RANGE,
+		/**< @ref MMAL_PARAMETER_DRC_T */
+	MMAL_PARAMETER_DYNAMIC_RANGE_COMPRESSION,
+		/**< @ref MMAL_PARAMETER_ALGORITHM_CONTROL_T */
+	MMAL_PARAMETER_ALGORITHM_CONTROL,
+		/**< @ref MMAL_PARAMETER_RATIONAL_T */
+	MMAL_PARAMETER_SHARPNESS,
+		/**< @ref MMAL_PARAMETER_RATIONAL_T */
+	MMAL_PARAMETER_CONTRAST,
+		/**< @ref MMAL_PARAMETER_RATIONAL_T */
+	MMAL_PARAMETER_BRIGHTNESS,
+		/**< @ref MMAL_PARAMETER_RATIONAL_T */
+	MMAL_PARAMETER_SATURATION,

 	/* 0x30 */
-	MMAL_PARAMETER_ISO, /**< @ref MMAL_PARAMETER_UINT32_T */
-	MMAL_PARAMETER_ANTISHAKE, /**< @ref MMAL_PARAMETER_BOOLEAN_T */
-
-	/** @ref MMAL_PARAMETER_IMAGEFX_PARAMETERS_T */
+		/**< @ref MMAL_PARAMETER_UINT32_T */
+	MMAL_PARAMETER_ISO,
+		/**< @ref MMAL_PARAMETER_BOOLEAN_T */
+	MMAL_PARAMETER_ANTISHAKE,
+		/** @ref MMAL_PARAMETER_IMAGEFX_PARAMETERS_T */
 	MMAL_PARAMETER_IMAGE_EFFECT_PARAMETERS,
-
-	/** @ref MMAL_PARAMETER_BOOLEAN_T */
+		/** @ref MMAL_PARAMETER_BOOLEAN_T */
 	MMAL_PARAMETER_CAMERA_BURST_CAPTURE,
-
-	/** @ref MMAL_PARAMETER_UINT32_T */
+		/** @ref MMAL_PARAMETER_UINT32_T */
 	MMAL_PARAMETER_CAMERA_MIN_ISO,
-
-	/** @ref MMAL_PARAMETER_CAMERA_USE_CASE_T */
+		/** @ref MMAL_PARAMETER_CAMERA_USE_CASE_T */
 	MMAL_PARAMETER_CAMERA_USE_CASE,
-
-	/**< @ref MMAL_PARAMETER_BOOLEAN_T */
+		/**< @ref MMAL_PARAMETER_BOOLEAN_T */
 	MMAL_PARAMETER_CAPTURE_STATS_PASS,
-
-	/** @ref MMAL_PARAMETER_UINT32_T */
+		/** @ref MMAL_PARAMETER_UINT32_T */
 	MMAL_PARAMETER_CAMERA_CUSTOM_SENSOR_CONFIG,
-
-	/** @ref MMAL_PARAMETER_BOOLEAN_T */
+		/** @ref MMAL_PARAMETER_BOOLEAN_T */
 	MMAL_PARAMETER_ENABLE_REGISTER_FILE,
-
-	/** @ref MMAL_PARAMETER_BOOLEAN_T */
+		/** @ref MMAL_PARAMETER_BOOLEAN_T */
 	MMAL_PARAMETER_REGISTER_FAIL_IS_FATAL,
-
-	/** @ref MMAL_PARAMETER_CONFIGFILE_T */
+		/** @ref MMAL_PARAMETER_CONFIGFILE_T */
 	MMAL_PARAMETER_CONFIGFILE_REGISTERS,
-
-	/** @ref MMAL_PARAMETER_CONFIGFILE_CHUNK_T */
+		/** @ref MMAL_PARAMETER_CONFIGFILE_CHUNK_T */
 	MMAL_PARAMETER_CONFIGFILE_CHUNK_REGISTERS,
-	MMAL_PARAMETER_JPEG_ATTACH_LOG, /**< @ref MMAL_PARAMETER_BOOLEAN_T */
-	MMAL_PARAMETER_ZERO_SHUTTER_LAG, /**< @ref MMAL_PARAMETER_ZEROSHUTTERLAG_T */
-	MMAL_PARAMETER_FPS_RANGE, /**< @ref MMAL_PARAMETER_FPS_RANGE_T */
-	MMAL_PARAMETER_CAPTURE_EXPOSURE_COMP, /**< @ref MMAL_PARAMETER_INT32_T */
+		/**< @ref MMAL_PARAMETER_BOOLEAN_T */
+	MMAL_PARAMETER_JPEG_ATTACH_LOG,
+		/**< @ref MMAL_PARAMETER_ZEROSHUTTERLAG_T */
+	MMAL_PARAMETER_ZERO_SHUTTER_LAG,
+		/**< @ref MMAL_PARAMETER_FPS_RANGE_T */
+	MMAL_PARAMETER_FPS_RANGE,
+		/**< @ref MMAL_PARAMETER_INT32_T */
+	MMAL_PARAMETER_CAPTURE_EXPOSURE_COMP,

 	/* 0x40 */
-	MMAL_PARAMETER_SW_SHARPEN_DISABLE, /**< @ref MMAL_PARAMETER_BOOLEAN_T */
-	MMAL_PARAMETER_FLASH_REQUIRED, /**< @ref MMAL_PARAMETER_BOOLEAN_T */
-	MMAL_PARAMETER_SW_SATURATION_DISABLE, /**< @ref MMAL_PARAMETER_BOOLEAN_T */
-	MMAL_PARAMETER_SHUTTER_SPEED,             /**< Takes a @ref MMAL_PARAMETER_UINT32_T */
-	MMAL_PARAMETER_CUSTOM_AWB_GAINS,          /**< Takes a @ref MMAL_PARAMETER_AWB_GAINS_T */
+		/**< @ref MMAL_PARAMETER_BOOLEAN_T */
+	MMAL_PARAMETER_SW_SHARPEN_DISABLE,
+		/**< @ref MMAL_PARAMETER_BOOLEAN_T */
+	MMAL_PARAMETER_FLASH_REQUIRED,
+		/**< @ref MMAL_PARAMETER_BOOLEAN_T */
+	MMAL_PARAMETER_SW_SATURATION_DISABLE,
+		/**< Takes a @ref MMAL_PARAMETER_UINT32_T */
+	MMAL_PARAMETER_SHUTTER_SPEED,
+		/**< Takes a @ref MMAL_PARAMETER_AWB_GAINS_T */
+	MMAL_PARAMETER_CUSTOM_AWB_GAINS,
 };

 struct mmal_parameter_rational {
@@ -411,7 +467,8 @@ enum mmal_parameter_video_type {
 	MMAL_PARAMETER_MINIMISE_FRAGMENTATION,

 	/** @ref MMAL_PARAMETER_UINT32_T.
-	 * Setting the value to zero resets to the default (one slice per frame).
+	 * Setting the value to zero resets to the default (one slice per
+	 * frame).
 	 */
 	MMAL_PARAMETER_MB_ROWS_PER_SLICE,

--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DA35AB13
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 14:49:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 300E087EAD;
	Sat, 29 Jun 2019 12:49:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TIEKqB+DygSP; Sat, 29 Jun 2019 12:49:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 28EF287E49;
	Sat, 29 Jun 2019 12:49:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D18FF1BF28D
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:49:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA125204A3
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P+NhJjyA8L+D for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 12:49:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by silver.osuosl.org (Postfix) with ESMTPS id DD256203E7
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561812540;
 bh=zIDxrGudFPMMsthCnbnUJqePqq4wZR0Ef4CLxj7NdbQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=eCIN+5R9BwgC2bqfiT1d0WhMwXSdEFtN3G1310OOCWmB9pZnGYVsRyCHhgXxqLx1I
 sQ5usl/xjiiqHEP8CBSrdj+8oL55qxt6eB7Ag36N6FbvdcXRkJ3nL9Kl/W/Svnfece
 nZCNkf/BywZhqPiiooxjt8KLgpuqgu3n+dSvfzZE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MWigq-1i5LMa10hM-00X5FK; Sat, 29 Jun 2019 14:49:00 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 21/29] staging: bcm2835-camera: Fix up mmal-parameters.h
Date: Sat, 29 Jun 2019 14:48:28 +0200
Message-Id: <1561812516-9087-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
References: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:N7cWgk3xIU5ET+vZPb4lBamTe87E8lrkWHkd5ecDssIBjig1HV2
 /BIg1H04eqOL257YA7vY7zBTWjgznQMutG6d3iWXKyVyO25tGksjeYp1HzXZh4tFIcntFrJ
 /GygNO/eJ52VffymWGSpcKauWb7D1no7wFjqFaLi5kd2DEOw+aMmfX5XSvqOdRxdNLe2L8M
 unofru4J20+qeLqLByY7A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:NIgd8vPi8xo=:EP7qb6oUS9ht1RK/hvndXY
 wezw5ZgpL2QdqcLMSfuk7oVYJbC/kzQon6yR6mhFAmbeHIitMGKbrA/s7H39vlJK4ejIcRQPO
 tycmjkgunuhjIlx8MZQ+DJt3HBFglSMJHRFED8mkDnV3P6s8x42LgynHvsLX1xHYWpkl6kTdF
 ZunXiCkiON6uXtlFfV/h4V08JM06fqRu0lPPyZzoBz5fK5VtH1OzT6VSkLOnQUX/CqMPsey0j
 16jm2X0FApWnrf/W/AkYFxD38qae2fpKneZvX0HYjOkuCO1Nkw1MXvItzldPS/xkYSkVlSQDc
 RHShpznn1pWlQ8gelNc61P/0mSCOmJ2DVcMAiQ/WStzh0rMADExneULQJ2ec8Ii4duyg07LM5
 wtai5R3lNTo+CMULMTC49nfwTLJogb/vfAoM/6QcjLsLqa89LzCkfR1JprV1Da5BVALTNXx0I
 bEgujXLvmXB9jY4pRA6OIs7HGXNrr9tBsl9awgTIJOREQ7tPSHzFAjIhvkmesQLlzU4U3vcC0
 Alcuwi0SPnJMqD00ZoIuCZWA1CJ8FU3j2oO+EM4QnZjMRmOGahEZFFDDPlugDs+b5cJTniz6R
 gAtf7taXM4WE1u3D0+OyujbXJ9EGIq1B0tGoqgta+NxGUi1Ov6aggioGffjWkOmtVWoxFirnP
 TLk/KO/HBUFLv2wzinWIgOGMeTvvbCgt3tbzOksG/yXMx1T0n0ZLZLVF7R+MetTa4CbeYaivI
 PuTl9WY/3nlyoJVb9oBQwpANJiVSdAPyy3MBaGPnZ0oQ0/P/sdcS4nGvBroKOuPmWI6FgKsHD
 lYvcekwThpDjC3dR6+cTGefmSwfiXHQmy5BZtkX16SPYQcjaz1r6zfvOCfIEEdWaVa831xWAL
 liOX+Ka+EVNi8P/E7vbVHo5aCiMWef5X0JqQG9qQ08Pn2oldqZlijVLNdbqU12jlWDPlIhdCL
 MpwY8eLlmDY70HCRM19AuFSKNm+NQ5yC1/hwbBdlkxXHVFRekZDA7/oLSVE9L6SylDIzKgiBe
 RkPwdys+k2CX20zKde6VQd2T6nFJzDxyrgwWnZEf+jP03FacJulTAEaIY45Rv+f/M3VvE4JZw
 V6z5i31ox3Rqsc=
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

Fixes up all the checkpatch error "line over 80 characters" in
mmal-parameters.h

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
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

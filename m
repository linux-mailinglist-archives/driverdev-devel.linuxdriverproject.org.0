Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E3B20CF63
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 17:10:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AA9487647;
	Mon, 29 Jun 2020 15:10:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HZf9My40WlFW; Mon, 29 Jun 2020 15:10:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B21D187626;
	Mon, 29 Jun 2020 15:10:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A72DA1BF958
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:09:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A4481875E2
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:09:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uwbDyO9g_bau for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 15:09:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 48F20875E0
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 15:09:57 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id CAC9BAF5B;
 Mon, 29 Jun 2020 15:09:55 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 07/47] staging: mmal-vchiq: Fix formatting errors in
 mmal_parameters.h
Date: Mon, 29 Jun 2020 17:09:05 +0200
Message-Id: <20200629150945.10720-8-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200629150945.10720-1-nsaenzjulienne@suse.de>
References: <20200629150945.10720-1-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, Jacopo Mondi <jacopo@jmondi.org>,
 kernel-list@raspberrypi.com, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Naushir Patuck <naush@raspberrypi.com>, laurent.pinchart@ideasonboard.com,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Naushir Patuck <naush@raspberrypi.com>

No functional changes in this commit.

- Remove erroneous whitespace.
- Remove _t postfix label on structs and enums.

Signed-off-by: Naushir Patuck <naush@raspberrypi.com>
Signed-off-by: Jacopo Mondi <jacopo@jmondi.org>
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-camera/bcm2835-camera.c           |  2 +-
 .../vchiq-mmal/mmal-parameters.h              | 32 +++++++++----------
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 73b2354a6bb7..df90c1f9d148 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1497,7 +1497,7 @@ static int get_num_cameras(struct vchiq_mmal_instance *instance,
 {
 	int ret;
 	struct vchiq_mmal_component  *cam_info_component;
-	struct mmal_parameter_camera_info_t cam_info = {0};
+	struct mmal_parameter_camera_info cam_info = {0};
 	u32 param_size = sizeof(cam_info);
 	int i;
 
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-parameters.h b/drivers/staging/vc04_services/vchiq-mmal/mmal-parameters.h
index f4ac5a6149ea..a1e39b1b1701 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-parameters.h
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-parameters.h
@@ -23,21 +23,21 @@
 #define MMAL_PARAMETERS_H
 
 /** Common parameter ID group, used with many types of component. */
-#define MMAL_PARAMETER_GROUP_COMMON            (0 << 16)
+#define MMAL_PARAMETER_GROUP_COMMON		(0 << 16)
 /** Camera-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_CAMERA            (1 << 16)
+#define MMAL_PARAMETER_GROUP_CAMERA		(1 << 16)
 /** Video-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_VIDEO             (2 << 16)
+#define MMAL_PARAMETER_GROUP_VIDEO		(2 << 16)
 /** Audio-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_AUDIO             (3 << 16)
+#define MMAL_PARAMETER_GROUP_AUDIO		(3 << 16)
 /** Clock-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_CLOCK             (4 << 16)
+#define MMAL_PARAMETER_GROUP_CLOCK		(4 << 16)
 /** Miracast-specific parameter ID group. */
-#define MMAL_PARAMETER_GROUP_MIRACAST       (5 << 16)
+#define MMAL_PARAMETER_GROUP_MIRACAST		(5 << 16)
 
 /* Common parameters */
 enum mmal_parameter_common_type {
-		/**< Never a valid parameter ID */
+	/**< Never a valid parameter ID */
 	MMAL_PARAMETER_UNUSED = MMAL_PARAMETER_GROUP_COMMON,
 
 		/**< MMAL_PARAMETER_ENCODING_T */
@@ -341,7 +341,7 @@ enum mmal_parameter_imagefx {
 	MMAL_PARAM_IMAGEFX_CARTOON,
 };
 
-enum MMAL_PARAM_FLICKERAVOID_T {
+enum MMAL_PARAM_FLICKERAVOID {
 	MMAL_PARAM_FLICKERAVOID_OFF,
 	MMAL_PARAM_FLICKERAVOID_AUTO,
 	MMAL_PARAM_FLICKERAVOID_50HZ,
@@ -723,7 +723,7 @@ struct mmal_parameter_imagefx_parameters {
 #define MMAL_PARAMETER_CAMERA_INFO_MAX_FLASHES 2
 #define MMAL_PARAMETER_CAMERA_INFO_MAX_STR_LEN 16
 
-struct mmal_parameter_camera_info_camera_t {
+struct mmal_parameter_camera_info_camera {
 	u32 port_id;
 	u32 max_width;
 	u32 max_height;
@@ -731,7 +731,7 @@ struct mmal_parameter_camera_info_camera_t {
 	u8 camera_name[MMAL_PARAMETER_CAMERA_INFO_MAX_STR_LEN];
 };
 
-enum mmal_parameter_camera_info_flash_type_t {
+enum mmal_parameter_camera_info_flash_type {
 	/* Make values explicit to ensure they match values in config ini */
 	MMAL_PARAMETER_CAMERA_INFO_FLASH_TYPE_XENON = 0,
 	MMAL_PARAMETER_CAMERA_INFO_FLASH_TYPE_LED   = 1,
@@ -739,16 +739,16 @@ enum mmal_parameter_camera_info_flash_type_t {
 	MMAL_PARAMETER_CAMERA_INFO_FLASH_TYPE_MAX = 0x7FFFFFFF
 };
 
-struct mmal_parameter_camera_info_flash_t {
-	enum mmal_parameter_camera_info_flash_type_t flash_type;
+struct mmal_parameter_camera_info_flash {
+	enum mmal_parameter_camera_info_flash_type flash_type;
 };
 
-struct mmal_parameter_camera_info_t {
+struct mmal_parameter_camera_info {
 	u32 num_cameras;
 	u32 num_flashes;
-	struct mmal_parameter_camera_info_camera_t
-				cameras[MMAL_PARAMETER_CAMERA_INFO_MAX_CAMERAS];
-	struct mmal_parameter_camera_info_flash_t
+	struct mmal_parameter_camera_info_camera
+		cameras[MMAL_PARAMETER_CAMERA_INFO_MAX_CAMERAS];
+	struct mmal_parameter_camera_info_flash
 				flashes[MMAL_PARAMETER_CAMERA_INFO_MAX_FLASHES];
 };
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

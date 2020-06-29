Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7ABC20CF84
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 17:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D5C888798;
	Mon, 29 Jun 2020 15:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2nhfXRQxZD0M; Mon, 29 Jun 2020 15:11:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45AC088959;
	Mon, 29 Jun 2020 15:10:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A92C1BF35F
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:10:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4A6F620774
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 19tCF+fCUELr for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 15:10:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 9F034228EB
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 15:10:08 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id D7F48B02B;
 Mon, 29 Jun 2020 15:10:06 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 34/47] staging: vchiq: Unify fourcc definition mechanisms
Date: Mon, 29 Jun 2020 17:09:32 +0200
Message-Id: <20200629150945.10720-35-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, kernel-list@raspberrypi.com,
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 laurent.pinchart@ideasonboard.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There is already enough duplication with regard to fourcc generation in
the kernel. Let's at least use the same macro all over the vchiq
ecosystem.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c  | 2 +-
 .../vc04_services/bcm2835-audio/vc_vchi_audioserv_defs.h     | 5 ++---
 drivers/staging/vc04_services/interface/vchi/vchi.h          | 3 ---
 drivers/staging/vc04_services/vchiq-mmal/mmal-msg.h          | 1 -
 drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c        | 2 +-
 5 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 18309578e9a2..55f1e684eef1 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -125,7 +125,7 @@ vc_vchi_audio_init(struct vchiq_instance *vchiq_instance,
 	struct vchiq_service_params params = {
 		.version		= VC_AUDIOSERV_VER,
 		.version_min		= VC_AUDIOSERV_MIN_VER,
-		.fourcc			= VC_AUDIO_SERVER_NAME,
+		.fourcc			= VCHIQ_MAKE_FOURCC('A', 'U', 'D', 'S'),
 		.callback		= audio_vchi_callback,
 		.userdata		= instance,
 	};
diff --git a/drivers/staging/vc04_services/bcm2835-audio/vc_vchi_audioserv_defs.h b/drivers/staging/vc04_services/bcm2835-audio/vc_vchi_audioserv_defs.h
index d6401e914ac9..b4fa239c5ebe 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/vc_vchi_audioserv_defs.h
+++ b/drivers/staging/vc04_services/bcm2835-audio/vc_vchi_audioserv_defs.h
@@ -8,9 +8,8 @@
 #define VC_AUDIOSERV_VER 2
 
 /* FourCC codes used for VCHI communication */
-#define VC_AUDIO_SERVER_NAME  MAKE_FOURCC("AUDS")
-#define VC_AUDIO_WRITE_COOKIE1 MAKE_FOURCC("BCMA")
-#define VC_AUDIO_WRITE_COOKIE2 MAKE_FOURCC("DATA")
+#define VC_AUDIO_WRITE_COOKIE1 VCHIQ_MAKE_FOURCC('B', 'C', 'M', 'A')
+#define VC_AUDIO_WRITE_COOKIE2 VCHIQ_MAKE_FOURCC('D', 'A', 'T', 'A')
 
 /*
  *  List of screens that are currently supported
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 59559d4cd5f1..7108c254a38a 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -8,9 +8,6 @@
  * Global defs
  *****************************************************************************/
 
-// Macros to manipulate 'FOURCC' values
-#define MAKE_FOURCC(x) ((int32_t)((x[0] << 24) | (x[1] << 16) | (x[2] << 8) | x[3]))
-
 // Opaque handle for a VCHIQ instance
 struct vchiq_instance;
 
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-msg.h b/drivers/staging/vc04_services/vchiq-mmal/mmal-msg.h
index 91f9b400d8dc..b636e889c8a1 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-msg.h
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-msg.h
@@ -28,7 +28,6 @@
 
 #define VC_MMAL_VER 15
 #define VC_MMAL_MIN_VER 10
-#define VC_MMAL_SERVER_NAME  MAKE_FOURCC("mmal")
 
 /* max total message size is 512 bytes */
 #define MMAL_MSG_MAX_SIZE 512
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index c960fb7ec890..2c5027c1f0bb 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -1863,7 +1863,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	struct vchiq_service_params params = {
 		.version		= VC_MMAL_VER,
 		.version_min		= VC_MMAL_MIN_VER,
-		.fourcc			= VC_MMAL_SERVER_NAME,
+		.fourcc			= VCHIQ_MAKE_FOURCC('m', 'm', 'a', 'l'),
 		.callback		= service_callback,
 		.userdata		= NULL,
 	};
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

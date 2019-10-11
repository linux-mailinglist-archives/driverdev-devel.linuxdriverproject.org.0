Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D83D49DC
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 23:28:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4215925C57;
	Fri, 11 Oct 2019 21:28:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XQmcKXn13tGZ; Fri, 11 Oct 2019 21:28:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E7BD925BF2;
	Fri, 11 Oct 2019 21:28:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B629A1BF376
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 21:28:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9882388A5B
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 21:28:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iFGmLdoRTKsF for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 21:28:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1451288A59
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 21:28:00 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id o18so13318553wrv.13
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 14:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bfKWmljBhhbz3pJBgekKZhzWDuOhbB2Ddk+2ciq5ka8=;
 b=ohL+8VJP0l1i/xy0IfSmPtrL86ip7fjeuW1/iu+Sq+coC15EESOFdIzzuM2SkrzcDp
 fWkdD/TWp29+ZqHi+8G/Hjx96kwjYoTWtIElaX1yqFaUQ+JKGvg4ABxezy94lJmB3Puk
 Rb+GgD4njHOCran2sa2lSWA2kW/vsf2H4/MazSua3/X7YQ3/1fjtmNLGm3+7JPjXU5ZO
 QT9qt6tFlpEXYYXhGQUhDhsx1Bg86f3vF3Oe15bCyn6QFVC7OQc/EkiIUdZBWADPinC1
 u4Zdg0h9GKwNGgVYSFooVhOPaJ+TOihFOA6BB4LBgOk7u4/Owc2aa0VOhy8povBPYnVV
 NbSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bfKWmljBhhbz3pJBgekKZhzWDuOhbB2Ddk+2ciq5ka8=;
 b=pIbQCgRd9eegAY749PS6sUC6u+qyGkMEZ9mGZ2/aDuNQfD9eQG8V088CbWKiSl6GfC
 f5u2WCrbeG4KaOSpinet+zUYuglzNhCoRGpM9nlVg6QfgHQCML/dvmB9mKcTY6U7/5VB
 /04Ywd8pv/Dljm525S7Kphs2pA9hTpUwOQLCFFMiL73P6JMspl+WprOokJ90bI2TiXGp
 7SNFzCE6J12uG8A7n38aysOmTfmSwRica6ue2q+YMaoeJp4DzgdwgXhxqJwzZmGGFD/P
 7y7frtojAzmy5Ami/RpQQloQdfXEtPL5R9VR4WhywAJ5RjldLSh7xeUUudOgqyCzkc7b
 FeFg==
X-Gm-Message-State: APjAAAX7/7FpJ9738+2H9iBKbcozhLnEHqUbHplzOGxyt1H8ojJQ+Von
 TBXSW4kZR/KcnSY6zlhk3g==
X-Google-Smtp-Source: APXvYqwmF1lNodIYp/c2WCNVIrwj7JDssewLAiUGEg6UdvMuE+ulWfi4WV5klajsEZVsvTcfVRTJZQ==
X-Received: by 2002:a5d:5542:: with SMTP id g2mr15196152wrw.115.1570829278309; 
 Fri, 11 Oct 2019 14:27:58 -0700 (PDT)
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.googlemail.com with ESMTPSA id a13sm22797955wrf.73.2019.10.11.14.27.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 14:27:57 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vc04_services: fix warning of Logical continuations
 should be on the previous line
Date: Fri, 11 Oct 2019 22:27:45 +0100
Message-Id: <20191011212745.20262-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 f.fainelli@gmail.com, sbranden@broadcom.com, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 daniela.mormocea@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, dave.stevenson@raspberrypi.org, rjui@broadcom.com,
 hverkuil-cisco@xs4all.nl, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix warning of logical continuations should be on the previous line.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 .../bcm2835-camera/bcm2835-camera.c           | 41 ++++++++-----------
 1 file changed, 17 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index d4d1e44b16b2..365bcd97e19d 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -337,9 +337,8 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 			if (is_capturing(dev)) {
 				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 					 "Grab another frame");
-				vchiq_mmal_port_parameter_set(
-					instance,
-					dev->capture.camera_port,
+			vchiq_mmal_port_parameter_set(instance,
+						      dev->capture.camera_port,
 					MMAL_PARAMETER_CAPTURE,
 					&dev->capture.frame_count,
 					sizeof(dev->capture.frame_count));
@@ -392,9 +391,8 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 	    is_capturing(dev)) {
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "Grab another frame as buffer has EOS");
-		vchiq_mmal_port_parameter_set(
-			instance,
-			dev->capture.camera_port,
+		vchiq_mmal_port_parameter_set(instance,
+					      dev->capture.camera_port,
 			MMAL_PARAMETER_CAPTURE,
 			&dev->capture.frame_count,
 			sizeof(dev->capture.frame_count));
@@ -1090,8 +1088,7 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 
 	ret = vchiq_mmal_port_set_format(dev->instance, camera_port);
 
-	if (!ret
-	    && camera_port ==
+	if (!ret && camera_port ==
 	    &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO]) {
 		bool overlay_enabled =
 		    !!dev->component[COMP_PREVIEW]->enabled;
@@ -1124,9 +1121,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 					  dev->capture.timeperframe.numerator;
 		ret = vchiq_mmal_port_set_format(dev->instance, preview_port);
 		if (overlay_enabled) {
-			ret = vchiq_mmal_port_connect_tunnel(
-				dev->instance,
-				preview_port,
+			ret = vchiq_mmal_port_connect_tunnel(dev->instance,
+							     preview_port,
 				&dev->component[COMP_PREVIEW]->input[0]);
 			if (!ret)
 				ret = vchiq_mmal_port_enable(dev->instance,
@@ -1154,9 +1150,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 			    camera_port->recommended_buffer.num;
 
 			ret =
-			    vchiq_mmal_port_connect_tunnel(
-					dev->instance,
-					camera_port,
+			    vchiq_mmal_port_connect_tunnel(dev->instance,
+							   camera_port,
 					&encode_component->input[0]);
 			if (ret) {
 				v4l2_dbg(1, bcm2835_v4l2_debug,
@@ -1655,8 +1650,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	dev->capture.enc_level = V4L2_MPEG_VIDEO_H264_LEVEL_4_0;
 
 	/* get the preview component ready */
-	ret = vchiq_mmal_component_init(
-			dev->instance, "ril.video_render",
+	ret = vchiq_mmal_component_init(dev->instance,
+					"ril.video_render",
 			&dev->component[COMP_PREVIEW]);
 	if (ret < 0)
 		goto unreg_camera;
@@ -1669,8 +1664,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	}
 
 	/* get the image encoder component ready */
-	ret = vchiq_mmal_component_init(
-		dev->instance, "ril.image_encode",
+	ret = vchiq_mmal_component_init(dev->instance,
+					"ril.image_encode",
 		&dev->component[COMP_IMAGE_ENCODE]);
 	if (ret < 0)
 		goto unreg_preview;
@@ -1731,15 +1726,13 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 
 unreg_vid_encoder:
 	pr_err("Cleanup: Destroy video encoder\n");
-	vchiq_mmal_component_finalise(
-		dev->instance,
-		dev->component[COMP_VIDEO_ENCODE]);
+	vchiq_mmal_component_finalise(dev->instance,
+				      dev->component[COMP_VIDEO_ENCODE]);
 
 unreg_image_encoder:
 	pr_err("Cleanup: Destroy image encoder\n");
-	vchiq_mmal_component_finalise(
-		dev->instance,
-		dev->component[COMP_IMAGE_ENCODE]);
+	vchiq_mmal_component_finalise(dev->instance,
+				      dev->component[COMP_IMAGE_ENCODE]);
 
 unreg_preview:
 	pr_err("Cleanup: Destroy video render\n");
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

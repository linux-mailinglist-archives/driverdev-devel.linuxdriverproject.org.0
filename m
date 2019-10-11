Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D5DD49C0
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 23:17:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F48888206;
	Fri, 11 Oct 2019 21:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l20-+hQAmlo5; Fri, 11 Oct 2019 21:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 90C59881E0;
	Fri, 11 Oct 2019 21:17:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 23E3A1BF376
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 21:17:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1C26386FF0
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 21:17:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YApTKdm5op4B for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 21:17:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3D51386FCF
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 21:17:10 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 7so11722428wme.1
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 14:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LG3n9bP9kGhQ7SFk9OxCo0gPqdU2gHnkRjsbnMNvlpY=;
 b=dBJnWFOoIb19dqOC0j3JvCCdRfPc4OHL3xsyrufrdm7gBPTGnMnrAJ7Th95lKJlV+3
 wrMoLQWul2U+Cq1vwvMLQ202arVVEaOUx7L6I9ehm3vPeCkqa9MDuiaciVxs7PVAbT6R
 tOfegMjBnURzNKAMtrYiLB4ybuPKUXIq9PPnf56Isisv9H8gh6Mhmc1BG1Cnj5onhjgO
 MFDxSNzk2+sJpHb4zfDFjl+fszrvHf6aVQJubTaMYRCjeBEjf7gtB++7ZWK6n7ql0IEJ
 /VtPYb5cTW6aHS1MMuuxNNBmGqqhR30g3wQFGRz92BHUeTRqiCIFIy2eZUDbaThcs9/9
 MHSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LG3n9bP9kGhQ7SFk9OxCo0gPqdU2gHnkRjsbnMNvlpY=;
 b=VxyQzkVXILReQwysly8lVXBc7Kd9RJ6G8UlIDuqXDv4tyFt/7KbkUVBVj6ASgATDwA
 rKDKMVI7q0d5XTsziKyaAMCUc5x/vSlamuk3HPs4BnRdzlkllKEFxmBH0SHZHKfZA+I9
 fuaV8lPAPO4nr+ZsURfxD6DDyFKpTZWyQw9mnQzNlWHk72a98scoYVoT9+1so4RmJ76L
 RjEvs7y9ovFHxSBHBNjQnhHtgErDGAYmQ6zmWOmwbaySeDUAYAHRi5eIvQT3RAZaBVTy
 A7OFb17T4q1ghjy/IJbl6/6T0DbyA3/0hsdvCPE5NynGYGH8evavgnEy7ayxDQj/SfK8
 yPRg==
X-Gm-Message-State: APjAAAUJTgeIG95l103xBjG/x4CLfhjG24Y2OJGe2dZX8d518Wu6pcph
 z/8BaTGHIlbdhERB6m8GAw==
X-Google-Smtp-Source: APXvYqzBEVoefm0CTUlolawtZvE6I4DhOB8xVnHB4RcOwNng51oNe+T3twGd+mg4euQzW/lVWuwUFA==
X-Received: by 2002:a7b:c387:: with SMTP id s7mr4391784wmj.110.1570828628423; 
 Fri, 11 Oct 2019 14:17:08 -0700 (PDT)
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.googlemail.com with ESMTPSA id u2sm3265117wml.44.2019.10.11.14.17.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 14:17:07 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vc04_services: fix warnings of lines should not end
 with open parenthesis
Date: Fri, 11 Oct 2019 22:16:37 +0100
Message-Id: <20191011211637.19311-1-jbi.octave@gmail.com>
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

Fix warning of lines should not end with open parenthesis.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 .../bcm2835-camera/bcm2835-camera.c           | 38 ++++++++-----------
 1 file changed, 16 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index d4d1e44b16b2..c7bb6e3f529c 100644
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
@@ -1124,9 +1122,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
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
@@ -1154,9 +1151,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
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
@@ -1655,8 +1651,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	dev->capture.enc_level = V4L2_MPEG_VIDEO_H264_LEVEL_4_0;
 
 	/* get the preview component ready */
-	ret = vchiq_mmal_component_init(
-			dev->instance, "ril.video_render",
+	ret = vchiq_mmal_component_init(dev->instance,
+					"ril.video_render",
 			&dev->component[COMP_PREVIEW]);
 	if (ret < 0)
 		goto unreg_camera;
@@ -1669,8 +1665,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	}
 
 	/* get the image encoder component ready */
-	ret = vchiq_mmal_component_init(
-		dev->instance, "ril.image_encode",
+	ret = vchiq_mmal_component_init(dev->instance,
+					"ril.image_encode",
 		&dev->component[COMP_IMAGE_ENCODE]);
 	if (ret < 0)
 		goto unreg_preview;
@@ -1731,15 +1727,13 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF49196D7B
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 14:46:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1768E8768C;
	Sun, 29 Mar 2020 12:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y47cl6VZtLkE; Sun, 29 Mar 2020 12:45:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 853188759C;
	Sun, 29 Mar 2020 12:45:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A157B1BF4D6
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9CD49875A9
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Q0won6a9oJl for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 12:45:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E33D6875A1
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 12:45:47 +0000 (UTC)
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MCKSA-1jRvEk0HK6-009LmP; Sun, 29 Mar 2020 14:45:32 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 8/9] staging: bcm2835-camera: reduce multiline statements
Date: Sun, 29 Mar 2020 14:45:00 +0200
Message-Id: <1585485901-10172-9-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:l6whX8QTXfBXl89rHgbkU34/88HDpwwHEXvad/lCrHwMx7VseJZ
 +oX6EzEP+Ii4+0Hqvpygb5nvovxK7nst+05MhYwYq63r0QPQFWlSk/Ot1dnrB0H9Epa4far
 aHXchfDywQKX1+xalsQ9DQprVsgLveqlj1lKv9Cerao03SxPFupBZcDiRMfKOgGw99YKBnT
 A5exJA1NKbs9DKs1czz4Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:nPMHPRSBrcM=:I68VAdqqfV8DKJ6E1ay1C8
 p72Up5o6uKW8S4NzlUI+PxAsvDmjWhgFbu7ZEFGqfmbYbc7gdW/vt5wiZqNXORv8pSRlyTpQT
 jWqQ2hAMyyG+n/78qVl+pDkAgDmj7pzNCz00P873A2IiEdfnBgv4uq+lhaw56JeAHML8WIMZ+
 NrENRKCOp3Xel4B/IY5CL+z8OjOe73Gn8eSVFr0cmTjvtAEoYWJ8NTLLWK8GWoRl3LIh4iWbN
 vL8PoVU1HzAMWbxrX+68kJfeXsyatq8n+pFw1oNp9oTKwMqUDJsDjiQk2PlbN97UBrsPw1DUE
 273NOBzc/39ebvNrSXdCop6DLzv9pakCaiY3k7d8GchaTLtsJXkCan0mxBtVbiK+GqqUbkVlj
 hA4AeKsVO8jjFYajfaGDuLYU1Lpj5Tkkh0dN8N29M7OP7LdAyY2rGSmCIDRLZQdoF6la3EurZ
 JjtJEsJ0nmn9GTstqgzp2srzffLeI09epuh4MOixyuh5nl4EN9hM37QYiWhBBQbsx2buK+65d
 KmPTmItva5Tav7e+YdrIPpB3yvmF7m74CWa9F3xmidJJceUkwYypboINOSF/mVDgnfcNa22Td
 qpQthM699r6ISj3XBSMMnge9FCmmRymLxPg6BASxsLyqpBa4VmjE/LOCViEWiULojeAR4bxfo
 98vQfHgJdhhMTIamuqBKgVBmZ5VCxYwtN9Pn4Y4huQvBr4rXHCcxOl64Mt8Yu1N9fN/fjKPUk
 i+cD4ACqAeZ8ivKhXzsDIS6i/XrgNaM4BbwDYRp4EAqgZ+bTwegAlkji9QG6sa4uO2xexTAon
 AdWfmB6BuMkY7VAHtqdzzrTm5qijJK+arKtEFZTuq6GkN3BIjt40VJK9UdJJz290Vf1TwA+
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

There are a lot of multiline statements which can be reduced.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 57 +++++++++-------------
 .../vc04_services/bcm2835-camera/controls.c        |  3 +-
 2 files changed, 23 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 91f767f..6d554d4 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -369,8 +369,7 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 
 	if (dev->capture.vc_start_timestamp != -1 && pts) {
 		ktime_t timestamp;
-		s64 runtime_us = pts -
-		    dev->capture.vc_start_timestamp;
+		s64 runtime_us = pts - dev->capture.vc_start_timestamp;
 		timestamp = ktime_add_us(dev->capture.kernel_start_ts,
 					 runtime_us);
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
@@ -420,9 +419,8 @@ static int enable_camera(struct bm2835_mmal_dev *dev)
 			return -EINVAL;
 		}
 
-		ret = vchiq_mmal_component_enable(
-				dev->instance,
-				dev->component[COMP_CAMERA]);
+		ret = vchiq_mmal_component_enable(dev->instance,
+						  dev->component[COMP_CAMERA]);
 		if (ret < 0) {
 			v4l2_err(&dev->v4l2_dev,
 				 "Failed enabling camera, ret %d\n", ret);
@@ -451,10 +449,8 @@ static int disable_camera(struct bm2835_mmal_dev *dev)
 
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "Disabling camera\n");
-		ret =
-		    vchiq_mmal_component_disable(
-				dev->instance,
-				dev->component[COMP_CAMERA]);
+		ret = vchiq_mmal_component_disable(dev->instance,
+						   dev->component[COMP_CAMERA]);
 		if (ret < 0) {
 			v4l2_err(&dev->v4l2_dev,
 				 "Failed disabling camera, ret %d\n", ret);
@@ -555,8 +551,8 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)
 
 	/* enable the camera port */
 	dev->capture.port->cb_ctx = dev;
-	ret =
-	    vchiq_mmal_port_enable(dev->instance, dev->capture.port, buffer_cb);
+	ret = vchiq_mmal_port_enable(dev->instance, dev->capture.port,
+				     buffer_cb);
 	if (ret) {
 		v4l2_err(&dev->v4l2_dev,
 			 "Failed to enable capture port - error %d. Disabling camera port again\n",
@@ -767,16 +763,14 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)
 	    (!on && !dev->component[COMP_PREVIEW]->enabled))
 		return 0;	/* already in requested state */
 
-	src =
-	    &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW];
+	src = &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW];
 
 	if (!on) {
 		/* disconnect preview ports and disable component */
 		ret = vchiq_mmal_port_disable(dev->instance, src);
 		if (!ret)
-			ret =
-			    vchiq_mmal_port_connect_tunnel(dev->instance, src,
-							   NULL);
+			ret = vchiq_mmal_port_connect_tunnel(dev->instance, src,
+							     NULL);
 		if (ret >= 0)
 			ret = vchiq_mmal_component_disable(
 					dev->instance,
@@ -800,9 +794,8 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)
 	if (enable_camera(dev) < 0)
 		return -EINVAL;
 
-	ret = vchiq_mmal_component_enable(
-			dev->instance,
-			dev->component[COMP_PREVIEW]);
+	ret = vchiq_mmal_component_enable(dev->instance,
+					  dev->component[COMP_PREVIEW]);
 	if (ret < 0)
 		return ret;
 
@@ -1210,8 +1203,7 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 	}
 
 	remove_padding = mfmt->remove_padding;
-	vchiq_mmal_port_parameter_set(dev->instance,
-				      camera_port,
+	vchiq_mmal_port_parameter_set(dev->instance, camera_port,
 				      MMAL_PARAMETER_NO_IMAGE_PADDING,
 				      &remove_padding, sizeof(remove_padding));
 
@@ -1665,9 +1657,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	dev->capture.enc_level = V4L2_MPEG_VIDEO_H264_LEVEL_4_0;
 
 	/* get the preview component ready */
-	ret = vchiq_mmal_component_init(
-			dev->instance, "ril.video_render",
-			&dev->component[COMP_PREVIEW]);
+	ret = vchiq_mmal_component_init(dev->instance, "ril.video_render",
+					&dev->component[COMP_PREVIEW]);
 	if (ret < 0)
 		goto unreg_camera;
 
@@ -1679,9 +1670,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	}
 
 	/* get the image encoder component ready */
-	ret = vchiq_mmal_component_init(
-		dev->instance, "ril.image_encode",
-		&dev->component[COMP_IMAGE_ENCODE]);
+	ret = vchiq_mmal_component_init(dev->instance, "ril.image_encode",
+					&dev->component[COMP_IMAGE_ENCODE]);
 	if (ret < 0)
 		goto unreg_preview;
 
@@ -1741,15 +1731,13 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 
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
@@ -1782,8 +1770,7 @@ static int bm2835_mmal_init_device(struct bm2835_mmal_dev *dev,
 	/* video device needs to be able to access instance data */
 	video_set_drvdata(vfd, dev);
 
-	ret = video_register_device(vfd,
-				    VFL_TYPE_VIDEO,
+	ret = video_register_device(vfd, VFL_TYPE_VIDEO,
 				    video_nr[dev->camera_num]);
 	if (ret < 0)
 		return ret;
diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index e46f150..8e10a66 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -839,8 +839,7 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
 		enum mmal_parameter_exposuremeteringmode metering_mode;
 
 		for (i = 0; i < ARRAY_SIZE(scene_configs); i++) {
-			if (scene_configs[i].v4l2_scene ==
-				ctrl->val) {
+			if (scene_configs[i].v4l2_scene == ctrl->val) {
 				scene = &scene_configs[i];
 				break;
 			}
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

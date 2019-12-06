Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB658114DC7
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Dec 2019 09:55:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8132A88B4E;
	Fri,  6 Dec 2019 08:55:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 37P9-z3PK42W; Fri,  6 Dec 2019 08:55:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC53688A83;
	Fri,  6 Dec 2019 08:55:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15F571BF309
 for <devel@linuxdriverproject.org>; Fri,  6 Dec 2019 08:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 12894869FE
 for <devel@linuxdriverproject.org>; Fri,  6 Dec 2019 08:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iUtPDnEKfXID for <devel@linuxdriverproject.org>;
 Fri,  6 Dec 2019 08:55:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8CC5B847DE
 for <devel@driverdev.osuosl.org>; Fri,  6 Dec 2019 08:55:24 +0000 (UTC)
Received: from faui04l.informatik.uni-erlangen.de
 (faui04l.informatik.uni-erlangen.de [IPv6:2001:638:a000:4130:131:188:30:142])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 9B6AE241797;
 Fri,  6 Dec 2019 09:54:57 +0100 (CET)
Received: by faui04l.informatik.uni-erlangen.de (Postfix, from userid 66757)
 id 7997E620AD0; Fri,  6 Dec 2019 09:54:57 +0100 (CET)
From: Michael Kupfer <michael.kupfer@fau.de>
To: eric@anholt.net, wahrenst@gmx.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 mchehab+samsung@kernel.org, hverkuil-cisco@xs4all.nl,
 linux-media@vger.kernel.org
Subject: [PATCH] staging/vc04_services/bcm2835-camera: distinct numeration and
 names for devices
Date: Fri,  6 Dec 2019 09:54:32 +0100
Message-Id: <20191206085432.19962-1-michael.kupfer@fau.de>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com,
 Michael Kupfer <michael.kupfer@fau.de>, sbranden@broadcom.com,
 linux-kernel@i4.cs.fau.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, daniela.mormocea@gmail.com,
 dave.stevenson@raspberrypi.org, rjui@broadcom.com,
 Kay Friedrich <kay.friedrich@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Create a static atomic counter for numerating cameras.
Use the Media Subsystem Kernel Internal API to create distinct
device-names, so that the camera-number (given by the counter)
matches the camera-name.

Co-developed-by: Kay Friedrich <kay.friedrich@fau.de>
Signed-off-by: Kay Friedrich <kay.friedrich@fau.de>
Signed-off-by: Michael Kupfer <michael.kupfer@fau.de>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c        | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index beb6a0063bb8..be5f90a8b49d 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -60,6 +60,9 @@ MODULE_PARM_DESC(max_video_width, "Threshold for video mode");
 module_param(max_video_height, int, 0644);
 MODULE_PARM_DESC(max_video_height, "Threshold for video mode");
 
+/* camera instance counter */
+static atomic_t camera_instance = ATOMIC_INIT(0);
+
 /* global device data array */
 static struct bm2835_mmal_dev *gdev[MAX_BCM2835_CAMERAS];
 
@@ -1870,7 +1873,6 @@ static int bcm2835_mmal_probe(struct platform_device *pdev)
 
 		/* v4l2 core mutex used to protect all fops and v4l2 ioctls. */
 		mutex_init(&dev->mutex);
-		dev->camera_num = camera;
 		dev->max_width = resolutions[camera][0];
 		dev->max_height = resolutions[camera][1];
 
@@ -1886,8 +1888,9 @@ static int bcm2835_mmal_probe(struct platform_device *pdev)
 		dev->capture.fmt = &formats[3]; /* JPEG */
 
 		/* v4l device registration */
-		snprintf(dev->v4l2_dev.name, sizeof(dev->v4l2_dev.name),
-			 "%s", BM2835_MMAL_MODULE_NAME);
+		dev->camera_num = v4l2_device_set_name(&dev->v4l2_dev,
+						       BM2835_MMAL_MODULE_NAME,
+						       &camera_instance);
 		ret = v4l2_device_register(NULL, &dev->v4l2_dev);
 		if (ret) {
 			dev_err(&pdev->dev, "%s: could not register V4L2 device: %d\n",
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

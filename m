Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F6E1C26E8
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 May 2020 18:21:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3FBF78706A;
	Sat,  2 May 2020 16:21:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8GjGL6izedZB; Sat,  2 May 2020 16:21:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 576A686F38;
	Sat,  2 May 2020 16:20:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE06A1BF44C
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 16:20:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AADAF86F72
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 16:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lojT2JhD882W for <devel@linuxdriverproject.org>;
 Sat,  2 May 2020 16:20:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 80A5186F38
 for <devel@driverdev.osuosl.org>; Sat,  2 May 2020 16:20:56 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DA4421974;
 Sat,  2 May 2020 16:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588436456;
 bh=oRwvf0IrqRvS/hWbJSv7rJu0n9ZmmdgTFl43VnC7Sgo=;
 h=From:To:Cc:Subject:Date:From;
 b=YIflRYM1/YnNAvrcbQoLg7kYB019phpzG2KS1kTzW0+e8UyNS956r3M27n7KPRNzX
 KpqU425ilxSq8fDcb2u4P8x6A34BaSSbC3INxo7MMcFBvgGyly4FlktxKsiN0nUome
 O8oLiMnKV6COZDOQsDrxkX6uul5gLW/DptI9V06I=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jUusn-00G4kl-Ij; Sat, 02 May 2020 18:20:53 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH] media: atomisp: fix querycap initialization logic
Date: Sat,  2 May 2020 18:20:52 +0200
Message-Id: <a7bead1e537b8cb598f7b9f040ac9cbccf5203be.1588436423.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.4
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Patrik Gfeller <patrik.gfeller@gmail.com>, Alan Cox <alan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some recent changes at V4L2 core changed the way querycap is handled.

Due to that, this warning is generated:

	WARNING: CPU: 1 PID: 503 at drivers/media/v4l2-core/v4l2-dev.c:885 __video_register_device+0x93e/0x1120 [videodev]

as introduced by this commit:

	commit 3c1350501c21db8e3b1a38d9e97db29694305c3b
	Author: Hans Verkuil <hverkuil-cisco@xs4all.nl>
	Date:   Tue Jul 23 04:21:25 2019 -0400

	    media: v4l2-dev/ioctl: require non-zero device_caps, verify sane querycap results

	    Now that all V4L2 drivers set device_caps in struct video_device, we can add
	    a check for this to ensure all future drivers fill this in.

The fix is simple: we just need to initialize dev_caps before
registering the V4L2 dev.

While here, solve other problems at VIDIOC_QUERYCAP ioctl.

Reported-by: Patrik Gfeller <patrik.gfeller@gmail.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/media/atomisp/pci/atomisp_ioctl.c | 21 ++++++-------------
 .../staging/media/atomisp/pci/atomisp_v4l2.c  |  4 ++++
 2 files changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
index 3417cd547ae7..a5e71e5b714e 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
@@ -41,10 +41,8 @@
 
 #include "hrt/hive_isp_css_mm_hrt.h"
 
-/* for v4l2_capability */
 static const char *DRIVER = "atomisp";	/* max size 15 */
 static const char *CARD = "ATOM ISP";	/* max size 31 */
-static const char *BUS_INFO = "PCI-3";	/* max size 31 */
 
 /*
  * FIXME: ISP should not know beforehand all CIDs supported by sensor.
@@ -543,25 +541,18 @@ const struct atomisp_format_bridge *atomisp_get_format_bridge_from_mbus(
 /*
  * v4l2 ioctls
  * return ISP capabilities
- *
- * FIXME: capabilities should be different for video0/video2/video3
  */
 static int atomisp_querycap(struct file *file, void *fh,
 			    struct v4l2_capability *cap)
 {
-	memset(cap, 0, sizeof(struct v4l2_capability));
+	struct video_device *vdev = video_devdata(file);
+	struct atomisp_device *isp = video_get_drvdata(vdev);
 
-	WARN_ON(sizeof(DRIVER) > sizeof(cap->driver) ||
-		sizeof(CARD) > sizeof(cap->card) ||
-		sizeof(BUS_INFO) > sizeof(cap->bus_info));
+	strscpy(cap->driver, DRIVER, sizeof(cap->driver) - 1);
+	strscpy(cap->card, CARD, sizeof(cap->card) - 1);
+	snprintf(cap->bus_info, sizeof(cap->bus_info), "PCI:%s",
+		 pci_name(isp->pdev));
 
-	strncpy(cap->driver, DRIVER, sizeof(cap->driver) - 1);
-	strncpy(cap->card, CARD, sizeof(cap->card) - 1);
-	strncpy(cap->bus_info, BUS_INFO, sizeof(cap->card) - 1);
-
-	cap->device_caps = V4L2_CAP_VIDEO_CAPTURE |
-			   V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_OUTPUT;
-	cap->capabilities = cap->device_caps | V4L2_CAP_DEVICE_CAPS;
 	return 0;
 }
 
diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index f1bae9712720..ce16e7824d33 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -548,6 +548,10 @@ int atomisp_video_register(struct atomisp_video_pipe *video,
 
 	video->vdev.v4l2_dev = vdev;
 
+	video->vdev.device_caps = V4L2_CAP_VIDEO_CAPTURE |
+				  V4L2_CAP_STREAMING |
+				  V4L2_CAP_VIDEO_OUTPUT;
+
 	ret = video_register_device(&video->vdev, VFL_TYPE_VIDEO, -1);
 	if (ret < 0)
 		dev_err(vdev->dev, "%s: could not register video device (%d)\n",
-- 
2.25.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

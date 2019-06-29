Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F00BD5AABB
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 14:14:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 257D286099;
	Sat, 29 Jun 2019 12:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GlOAex8DINvt; Sat, 29 Jun 2019 12:14:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F279C85F3D;
	Sat, 29 Jun 2019 12:14:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 40C271BF28D
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3E10D85DE1
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hY1RnZZrM_I2 for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 12:14:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2025D85E6F
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810450;
 bh=+MNg9Ng71wZ+upNb9jMR88EfmSYMRi5mPcFt4Zwi63A=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=LE8tkjEcaptJ8W4ccljYqlcsvyIIoI2UsKbIe9UeqRmcwLq3BG7qVQWDOeSCcFwcC
 Hbbbt3KkBI0beq5+0ePSw1xUgiQoqCtbM9yVnTsDeGPf0Sui8msUgEO3nvXCwBI1TL
 HYJH/jXVvKwcm0ZSjem3ABi9jiTjroghPsh/sVRQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MOwY7-1haqiT0bEV-006Kt3; Sat, 29 Jun 2019 14:14:10 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 13/29] staging: bcm2835-camera: Fix open parenthesis
 alignment
Date: Sat, 29 Jun 2019 14:13:28 +0200
Message-Id: <1561810410-8829-14-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:qnVbBMjKF9tsH/xeRV2gaNlIm6MhdhWQQPBaOhwQZWzfj7J7KDb
 A5PQICqF1gSkKG2lrCFARwgxCBhxgZmbTh04U+HklFrWzwXIZRSHgDn7gqoivAeajHr34rv
 Bg8YIoO92N5brREftQmfvRoEBSwFbRSpLHrtQCHsBSloGG2W27nWAa0uG+JweCNqRSsfw26
 1Vt6W2kg2pimi90SWFgeA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:GH6PcsME5uw=:YSpif96mUcCw/0tifg9tJ4
 XX00hZegr2q4OQubQBsQMO1gg7tGNJcFaVw1PL0RC9p6eXTxHoyfq5BcJHA/7V5G0xxjog+2c
 QSsLO+T2gQzYOuUythYdneZKLh+8rNzBzzRaifUcVDwmC0HXoHVWwSCg/6SBOzmfOor5+Q1Fw
 Iba013Z909/rE25Uzs+FQFkJ8saXKM7rlhy9ozRd07gAfKUlEaRxQSrFwjbOcAjx6SEsjBSOq
 o8B94O8nOGywrTmkjohaxh9s2G6vzBKJlHYm+OYKFJ4ONLKS3LlvDoZDwFCg/PJcrFCrqC8MO
 AdXbj6vCo2Ed6zb77pFRyjHNyPVpVzHKMBKiBzVP2yYwrKH75ko9NWVZkOC/Uic2X6cZVpLZ0
 PmLLfbp/RdwwOs+gp//BrnI9sTv+dzWXe78wSKMLbCCnQU1viRd0AUqCpk2N61OIq1S4KN0b/
 On51KLuL+0q7UztL+IyTPWTj+DfWtVJnMQDfGUX//sOQsrxzbbNtMovOSTBJzjfZSUWn5JsDs
 A7w7IlSQYYkt2RYPoI/XlS/1quT0oq7UZssCWLQvGIoZBaQmkIgqfJwpbtsPzTjF6qMB0lCHm
 EXCaFihuZI0/2191+3uOQ03w3L2YDFx7uED9NJFXkOeOgPl3h7rHcg7WyjrGh9XsdnelBqWld
 3Tq9YQQrQ6O9T35NQj789sqtne1kuR9ycDhmDdun4HujlpgbBe1Gjot+ScWAPvHwm8pFYMKE5
 qJlS+IDS9XlJIoVA0XVMLPcdYdgwg6vxs3dnQkptjnLudoUvQVW9EqUlJum5lNxZi/lPuWX5g
 ekNCVMevwx2hf9LBD1GC+M86WkBa/KNLDF5RIs6u07YmvKDFu9RBkDsezF0qHgYEHKafULUkn
 hQUHjHB0nRUyXRenwQbeTdgQeO8ng2U6Aw6txfGrlsoagQRdCIfl+RFUznYPAcJcISr8lFjKa
 hxSWzULlL3pL+m5FpRNuIg4FtBXmhetl/8Kr1qJu68X4jR1nrI7e6xv/ny8yHInuTYwdI2k8d
 Y2jl6ADsAVaEBKMztJ2QFFcJsAjB7I9aa8eLAKVzksuOucbQWrLH0yt8U8zsylTUtKuzDhMry
 6Z8jl3uCiT75sk=
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

Fix checkpatch "Alignment should match open parenthesis"
errors.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  |  9 ++++----
 .../vc04_services/bcm2835-camera/controls.c        | 25 ++++++++++++++--------
 .../vc04_services/bcm2835-camera/mmal-vchiq.c      |  2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.h      |  6 +++---
 4 files changed, 24 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 8813ffc..5ca644c 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -557,8 +557,8 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)
 	    vchiq_mmal_port_enable(dev->instance, dev->capture.port, buffer_cb);
 	if (ret) {
 		v4l2_err(&dev->v4l2_dev,
-			"Failed to enable capture port - error %d. Disabling camera port again\n",
-			ret);
+			 "Failed to enable capture port - error %d. Disabling camera port again\n",
+			 ret);

 		vchiq_mmal_port_disable(dev->instance,
 					dev->capture.camera_port);
@@ -948,8 +948,7 @@ static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
 		f->fmt.pix.bytesperline =
 			(f->fmt.pix.bytesperline + align_mask) & ~align_mask;
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
-			 "Not removing padding, so bytes/line = %d, "
-			 "(align_mask %d)\n",
+			 "Not removing padding, so bytes/line = %d, (align_mask %d)\n",
 			 f->fmt.pix.bytesperline, align_mask);
 	}

@@ -1295,7 +1294,7 @@ static int vidioc_s_fmt_vid_cap(struct file *file, void *priv,
 }

 static int vidioc_enum_framesizes(struct file *file, void *fh,
-			   struct v4l2_frmsizeenum *fsize)
+				  struct v4l2_frmsizeenum *fsize)
 {
 	struct bm2835_mmal_dev *dev = video_drvdata(file);
 	static const struct v4l2_frmsize_stepwise sizes = {
diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 1a7588d..bc2f3f4 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -1260,9 +1260,12 @@ int bm2835_mmal_init_controls(struct bm2835_mmal_dev *dev,

 		switch (ctrl->type) {
 		case MMAL_CONTROL_TYPE_STD:
-			dev->ctrls[c] = v4l2_ctrl_new_std(hdl,
-				&bm2835_mmal_ctrl_ops, ctrl->id,
-				ctrl->min, ctrl->max, ctrl->step, ctrl->def);
+			dev->ctrls[c] =
+				v4l2_ctrl_new_std(hdl,
+						  &bm2835_mmal_ctrl_ops,
+						  ctrl->id, ctrl->min,
+						  ctrl->max, ctrl->step,
+						  ctrl->def);
 			break;

 		case MMAL_CONTROL_TYPE_STD_MENU:
@@ -1286,16 +1289,20 @@ int bm2835_mmal_init_controls(struct bm2835_mmal_dev *dev,
 				mask = ~mask;
 			}

-			dev->ctrls[c] = v4l2_ctrl_new_std_menu(hdl,
-			&bm2835_mmal_ctrl_ops, ctrl->id,
-			ctrl->max, mask, ctrl->def);
+			dev->ctrls[c] =
+				v4l2_ctrl_new_std_menu(hdl,
+						       &bm2835_mmal_ctrl_ops,
+						       ctrl->id, ctrl->max,
+						       mask, ctrl->def);
 			break;
 		}

 		case MMAL_CONTROL_TYPE_INT_MENU:
-			dev->ctrls[c] = v4l2_ctrl_new_int_menu(hdl,
-				&bm2835_mmal_ctrl_ops, ctrl->id,
-				ctrl->max, ctrl->def, ctrl->imenu);
+			dev->ctrls[c] =
+				v4l2_ctrl_new_int_menu(hdl,
+						       &bm2835_mmal_ctrl_ops,
+						       ctrl->id, ctrl->max,
+						       ctrl->def, ctrl->imenu);
 			break;

 		case MMAL_CONTROL_TYPE_CLUSTER:
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 73cb295..0b95723 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -645,7 +645,7 @@ static int send_synchronous_mmal_msg(struct vchiq_mmal_instance *instance,
 	if (payload_len >
 	    (MMAL_MSG_MAX_SIZE - sizeof(struct mmal_msg_header))) {
 		pr_err("payload length %d exceeds max:%d\n", payload_len,
-		      (int)(MMAL_MSG_MAX_SIZE -
+		       (int)(MMAL_MSG_MAX_SIZE -
 			    sizeof(struct mmal_msg_header)));
 		return -EINVAL;
 	}
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
index 0e5a81b..3498555 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
@@ -128,7 +128,7 @@ int vchiq_mmal_port_enable(
  * disable a port will dequeue any pending buffers
  */
 int vchiq_mmal_port_disable(struct vchiq_mmal_instance *instance,
-			   struct vchiq_mmal_port *port);
+			    struct vchiq_mmal_port *port);

 int vchiq_mmal_port_parameter_set(struct vchiq_mmal_instance *instance,
 				  struct vchiq_mmal_port *port,
@@ -146,8 +146,8 @@ int vchiq_mmal_port_set_format(struct vchiq_mmal_instance *instance,
 			       struct vchiq_mmal_port *port);

 int vchiq_mmal_port_connect_tunnel(struct vchiq_mmal_instance *instance,
-			    struct vchiq_mmal_port *src,
-			    struct vchiq_mmal_port *dst);
+				   struct vchiq_mmal_port *src,
+				   struct vchiq_mmal_port *dst);

 int vchiq_mmal_version(struct vchiq_mmal_instance *instance,
 		       u32 *major_out,
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

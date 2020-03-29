Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB3A196D74
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 14:45:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F0B5F88347;
	Sun, 29 Mar 2020 12:45:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t3t4KswF9mO9; Sun, 29 Mar 2020 12:45:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6EB86882DD;
	Sun, 29 Mar 2020 12:45:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A50C41BF4D6
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A1BA4882FC
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F3F30grxgibQ for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 12:45:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 20DB78823A
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 12:45:46 +0000 (UTC)
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MjjSt-1iv3SK1ajz-00lARI; Sun, 29 Mar 2020 14:45:31 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 6/9] staging: bcm2835-camera: Move video component setup in
 its own function
Date: Sun, 29 Mar 2020 14:44:58 +0200
Message-Id: <1585485901-10172-7-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:YzhSUifo50CR1hBK/+wUQhJWgExviyaIT5RNl1tetz71hDkYwq8
 +ylCG90HZ1NJj+LzT/zoaIbD1RrRBIT5GQRuCUJhTjy8Z7C7fptFYTIrRQOVfjx7/cQe2el
 a+WahJAITBIYjNNpiTILMwVz1JlUlh4mD4gX/cojX5cwn7N3MCI+/MunYvQLQwLnoLrJ7jT
 jBVAvhRd45Knlm10T8EVw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:7MgRRIrwdBM=:v5BCaDmqtDFPGVdR5zfjE4
 vZuDdHMzv5kTZP9+o5r0U/unyHPQ81hgjBVap5bn/zzN9TNyqs7pVppGz6mM0IvrGij9ueTjy
 YFz5ik7mmv+orU4bMDDzRX6hqrysLsR7O6bVLgHTYnsQcPjZC8vgXzsVRUbit4mfj46ok3mhX
 KGq/Tu3CaDYy0xnN1EL+T4KYRgx86ziab3aq+ovjTb9DV+FXHEaaICle3MNMTtPfAqDx4rqeF
 hQEY+fpLvnHZ25QtNB8y0J4frf3qOTSv6pKPA0qJIRYbtP2GTvBTqLbIrbjp43awC68XKSwUs
 quvxVqLb+uZV9vuAtQuJVfymncCJ6NSZgZ0L40N/Bam7YxzjoKOYEJ0GYjg146dLbdnto4khU
 vAxQdHEvx56CjlWypJwdHcaY0uSBNsuNCffYXLHb2yl6em9a+payml7GVy2KN+dEOMHrWyKP6
 do4mAyj3h/Mc6+ethT6dL/XUlz3yXX+3pyGkgAmtqMo1nmiLuGwFfUnmj79h4HYdHs8iwa+gf
 H79Ry/90N74cyAyUpxfSk49PDfcbVlgH6mjtgKX6RBWCyyymzzJh5PRSKvyUOPuVYQAgbOcc1
 MWUF2NKEP0gZCo9YF3DBHPDKMu9/l43snZtAaF6uRNn/HS4v0nuW5jsfGYRTJNBYIwpTjY+4G
 +GUepsbWJohgoR5SIMRSBJwR40MYYBp5LlThUdd1D+nlUY3O/a0ik/RU12vWKWLJIPi5WBNeE
 ycEzhMmZzIHeg8hjoQKjXoWuC/VrYJymokAXZN2tQXVGTK1TkfiNyjiRA3CemptAFavwSaJpu
 ner53QzEtbeuhhiOIR7rAnLgfFFXGLOexOELxyaMjE5GxhkjkAmQDdvX/SIgrINkgLA8rvX
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

The function mmal_setup_components has to many indention levels. So move
the setup code for video component in its own function.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 88 ++++++++++++----------
 1 file changed, 48 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index f101918..f11f186 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1001,6 +1001,53 @@ static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
 	return 0;
 }
 
+
+static int mmal_setup_video_component(struct bm2835_mmal_dev *dev,
+				      struct v4l2_format *f)
+{
+	bool overlay_enabled = !!dev->component[COMP_PREVIEW]->enabled;
+	struct vchiq_mmal_port *preview_port;
+	int ret;
+
+	preview_port = &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW];
+
+	/* Preview and encode ports need to match on resolution */
+	if (overlay_enabled) {
+		/* Need to disable the overlay before we can update
+		 * the resolution
+		 */
+		ret = vchiq_mmal_port_disable(dev->instance, preview_port);
+		if (!ret) {
+			ret = vchiq_mmal_port_connect_tunnel(dev->instance,
+							     preview_port,
+							     NULL);
+		}
+	}
+	preview_port->es.video.width = f->fmt.pix.width;
+	preview_port->es.video.height = f->fmt.pix.height;
+	preview_port->es.video.crop.x = 0;
+	preview_port->es.video.crop.y = 0;
+	preview_port->es.video.crop.width = f->fmt.pix.width;
+	preview_port->es.video.crop.height = f->fmt.pix.height;
+	preview_port->es.video.frame_rate.num =
+				  dev->capture.timeperframe.denominator;
+	preview_port->es.video.frame_rate.den =
+				  dev->capture.timeperframe.numerator;
+	ret = vchiq_mmal_port_set_format(dev->instance, preview_port);
+
+	if (overlay_enabled) {
+		ret = vchiq_mmal_port_connect_tunnel(dev->instance,
+				preview_port,
+				&dev->component[COMP_PREVIEW]->input[0]);
+		if (ret)
+			return ret;
+
+		ret = vchiq_mmal_port_enable(dev->instance, preview_port, NULL);
+	}
+
+	return ret;
+}
+
 static int mmal_setup_encode_component(struct bm2835_mmal_dev *dev,
 				       struct v4l2_format *f,
 				       struct vchiq_mmal_port *port,
@@ -1184,46 +1231,7 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 	if (!ret &&
 	    camera_port ==
 	    &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO]) {
-		bool overlay_enabled =
-		    !!dev->component[COMP_PREVIEW]->enabled;
-		struct vchiq_mmal_port *preview_port =
-		    &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW];
-		/* Preview and encode ports need to match on resolution */
-		if (overlay_enabled) {
-			/* Need to disable the overlay before we can update
-			 * the resolution
-			 */
-			ret =
-			    vchiq_mmal_port_disable(dev->instance,
-						    preview_port);
-			if (!ret)
-				ret =
-				    vchiq_mmal_port_connect_tunnel(
-						dev->instance,
-						preview_port,
-						NULL);
-		}
-		preview_port->es.video.width = f->fmt.pix.width;
-		preview_port->es.video.height = f->fmt.pix.height;
-		preview_port->es.video.crop.x = 0;
-		preview_port->es.video.crop.y = 0;
-		preview_port->es.video.crop.width = f->fmt.pix.width;
-		preview_port->es.video.crop.height = f->fmt.pix.height;
-		preview_port->es.video.frame_rate.num =
-					  dev->capture.timeperframe.denominator;
-		preview_port->es.video.frame_rate.den =
-					  dev->capture.timeperframe.numerator;
-		ret = vchiq_mmal_port_set_format(dev->instance, preview_port);
-		if (overlay_enabled) {
-			ret = vchiq_mmal_port_connect_tunnel(
-				dev->instance,
-				preview_port,
-				&dev->component[COMP_PREVIEW]->input[0]);
-			if (!ret)
-				ret = vchiq_mmal_port_enable(dev->instance,
-							     preview_port,
-							     NULL);
-		}
+		ret = mmal_setup_video_component(dev, f);
 	}
 
 	if (ret) {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF195AAC2
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 14:14:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F1482882DD;
	Sat, 29 Jun 2019 12:14:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iL4wPK4wQk5E; Sat, 29 Jun 2019 12:14:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E4ED881E2;
	Sat, 29 Jun 2019 12:14:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 522A71BF28D
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 49DCA2286C
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FfM9+Kj2lVAK for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 12:14:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by silver.osuosl.org (Postfix) with ESMTPS id B3BE8204AC
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810446;
 bh=XsCSZFtMGn8TEqXeoQWK7pBSlK9ZoMDMSNSPhL3eAqg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=dQe1gCjQZec8NuvQ8p5TxSq4dqcQ1a24W0+kR/ax6Qu3CAAUm4sCLlpWylvVpZeKf
 5pCOzYH355TMyvFLCIY6WlnDoqF67sIqZLmO6/2L+dNkaROQue2kL3GmI37XMlTbX0
 hnjXoUWscgtVy1yMz/ma79lNhaINqA13QPa3Pq7I=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LyEUz-1ib6MN2SAf-015cXP; Sat, 29 Jun 2019 14:14:06 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 05/29] staging: bcm2835-camera: Return early on errors
Date: Sat, 29 Jun 2019 14:13:20 +0200
Message-Id: <1561810410-8829-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:uHemwYg13/jic9QLGpqUQIie5rCHxJoQET8DxwVg2MpLubY1wp2
 8ohoUL3hv8zWd5L+p9BBdA0+nGuEbRwGZaY7wtFTyV4VgxNhMeVkZRhCnnH730vEpZ1V3lF
 1tnOyMcVgY7rgMLtcyfoU2XAfNhsgSCGWVWXt5KKcnHmMRMx9oYNiNaDgVU3FBo6ILieaD7
 /xYqe/WOI+HFH6jhaj49A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:HaRXCETBJO0=:MGe1Qp12avPevQPeXCtJUy
 tOqT2yE/R0QzP6Q6JQPU9aICM2esTj8rJsLG4kF1/r9cJnJQgKc4iA0F1hptBMYwdARIAsGzt
 seNbb2N6yD+eAg/lh0oFj0jXX3vyWO4wb6HZywmrr+tGGaXe2tzyk2C/pYgmrbvBPWbiZ+4Jj
 s016J4cy5ynY2q52JFBrelXfwpkWtDKs6lQwA7QlNsOlMXS6X/UayvDI9kUzO95Y969qWdvBM
 pI6WKcTv9tzqslZa4kueI/H5KBi1lPDFsMS8fgtzxm0bNDauosPXOXmy+R1wL+Y9JsUJI/4M9
 E0Uz8XB01MuD+5rq9I/ZMJk2JmyCDpaHVfVRydS1dRpclrfMv1FHCHZ0oPJfVowL22QE1js/c
 bqFkbinepocFKex7E7JAjgOKw4enytfXR+LCz50gS/fVfUFOLxevpCNEVDycHvtfFGJWoZ/ZY
 ELhjc5ss5Pm47pxYCfQRAv7xoM5/hoS9FF6BUw3J7z9jMisUDA91T83kLj24XgGq3z9+77kFG
 uu+83a82hqBSva+nPYzGsvjHmhRfkpvzgoogbWN9VcnTUyaCKQi5Nnz1v9AF8MCIC5AkjLX63
 3Qz8cfWg+ptREsgJTsZipf8ZJfsWAMk7kpShe3BjVu0vuQ6krhuD3KgPPDPyVQ4/FgiW0N0c6
 lMfbwkT8NOx6Bt4lOpjuVVmNqbc0omEqCjC4BQEtWXzNjTSfb0yhwR5tdLzEt1RA9n+/cC90o
 1qplWmbmG2Vlkro14R6JE2FxE4wKNkq0dPHMSnd5rokPoBX/NUuXW56p3RnJmV/JZTP+Hj/83
 YQ19PshzwvY3LCuTX8jVWa/aQtlXkMxOFx8Blv8qHP0HaIaIv4+SRqZA3/ZqZvTEmJ4qHh9oF
 1sy7LVqWg5iZUpQqFEFREdWMyyJ/8HHPUmil0akZc+w0B9jKXDx4jDk+U01Yo5vHgufJnTRh+
 FLanyR9Q9z9lJdTl0DN1qMZYPjFA+vsqV9TlmONus0Z9MXMf4aWHktloxhwx/cRaDgBpORCwE
 f+DrEZkokpkdpksbKsNGyOrEdpB30pJii83FC/neYfFgDvhBeK2eXCZY6kyRS5zG9P3pd0GpI
 SCgDF+m2/ukeR4=
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

Fix several instances where it is easier to return
early on error conditions than handle it as an else
clause. As requested by Mauro.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 94 +++++++++++-----------
 1 file changed, 49 insertions(+), 45 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index e81d4df..1e2b51b 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -334,7 +334,9 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 		}
 		return;
-	} else if (length == 0) {
+	}
+
+	if (length == 0) {
 		/* stream ended */
 		if (buf) {
 			/* this should only ever happen if the port is
@@ -357,46 +359,48 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 			/* signal frame completion */
 			complete(&dev->capture.frame_cmplt);
 		}
+		return;
+	}
+
+	if (!dev->capture.frame_count) {
+		/* signal frame completion */
+		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
+		complete(&dev->capture.frame_cmplt);
+		return;
+	}
+
+	if (dev->capture.vc_start_timestamp != -1 && pts) {
+		ktime_t timestamp;
+		s64 runtime_us = pts -
+		    dev->capture.vc_start_timestamp;
+		timestamp = ktime_add_us(dev->capture.kernel_start_ts,
+					 runtime_us);
+		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+			 "Convert start time %llu and %llu with offset %llu to %llu\n",
+			 ktime_to_ns(dev->capture.kernel_start_ts),
+			 dev->capture.vc_start_timestamp, pts,
+			 ktime_to_ns(timestamp));
+		buf->vb.vb2_buf.timestamp = ktime_to_ns(timestamp);
 	} else {
-		if (dev->capture.frame_count) {
-			if (dev->capture.vc_start_timestamp != -1 && pts) {
-				ktime_t timestamp;
-				s64 runtime_us = pts -
-				    dev->capture.vc_start_timestamp;
-				timestamp = ktime_add_us(dev->capture.kernel_start_ts,
-							 runtime_us);
-				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
-					 "Convert start time %llu and %llu with offset %llu to %llu\n",
-					 ktime_to_ns(dev->capture.kernel_start_ts),
-					 dev->capture.vc_start_timestamp, pts,
-					 ktime_to_ns(timestamp));
-				buf->vb.vb2_buf.timestamp = ktime_to_ns(timestamp);
-			} else {
-				buf->vb.vb2_buf.timestamp = ktime_get_ns();
-			}
+		buf->vb.vb2_buf.timestamp = ktime_get_ns();
+	}

-			vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
-			if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
-				buf->vb.flags |= V4L2_BUF_FLAG_KEYFRAME;
+	vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
+	if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
+		buf->vb.flags |= V4L2_BUF_FLAG_KEYFRAME;

-			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
+	vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);

-			if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_EOS &&
-			    is_capturing(dev)) {
-				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
-					 "Grab another frame as buffer has EOS");
-				vchiq_mmal_port_parameter_set(
-					instance,
-					dev->capture.camera_port,
-					MMAL_PARAMETER_CAPTURE,
-					&dev->capture.frame_count,
-					sizeof(dev->capture.frame_count));
-			}
-		} else {
-			/* signal frame completion */
-			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
-			complete(&dev->capture.frame_cmplt);
-		}
+	if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_EOS &&
+	    is_capturing(dev)) {
+		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+			 "Grab another frame as buffer has EOS");
+		vchiq_mmal_port_parameter_set(
+			instance,
+			dev->capture.camera_port,
+			MMAL_PARAMETER_CAPTURE,
+			&dev->capture.frame_count,
+			sizeof(dev->capture.frame_count));
 	}
 }

@@ -775,28 +779,28 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)

 	ret = vchiq_mmal_port_set_format(dev->instance, src);
 	if (ret < 0)
-		goto error;
+		return ret;

 	ret = set_overlay_params(dev, dst);
 	if (ret < 0)
-		goto error;
+		return ret;

 	if (enable_camera(dev) < 0)
-		goto error;
+		return -EINVAL;

 	ret = vchiq_mmal_component_enable(
 			dev->instance,
 			dev->component[MMAL_COMPONENT_PREVIEW]);
 	if (ret < 0)
-		goto error;
+		return ret;

 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev, "connecting %p to %p\n",
 		 src, dst);
 	ret = vchiq_mmal_port_connect_tunnel(dev->instance, src, dst);
-	if (!ret)
-		ret = vchiq_mmal_port_enable(dev->instance, src, NULL);
-error:
-	return ret;
+	if (ret)
+		return ret;
+
+	return vchiq_mmal_port_enable(dev->instance, src, NULL);
 }

 static int vidioc_g_fbuf(struct file *file, void *fh,
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

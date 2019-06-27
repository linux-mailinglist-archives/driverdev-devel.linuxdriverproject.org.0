Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 607F658A63
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 20:57:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E5A088084;
	Thu, 27 Jun 2019 18:57:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VXIb+XeTDrC6; Thu, 27 Jun 2019 18:57:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91EC888002;
	Thu, 27 Jun 2019 18:57:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E6551BF9B7
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8BBD787FBF
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XtATJmGxIMbi for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 18:57:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5994B8803E
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 18:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661815;
 bh=xwevpd3UAGKeJbtFyF2EvwHUvugWto7ZUSOWbHEHbAQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=NABCt/6lAnSpd6iJn0ZVtz5xgpg1DEss5JEA5sRnjmvUFvMY4hXMLfnn5D87Dd6Ur
 z1xR/Likh8ZIrYbYxUkdg84vPf4yp86+qIkkIyVXn6y/GavT4jhHKqe0yvHu8smDut
 zHXwOPVn7d3b4EiTyBdWYUHmLYUhXZzPp8aEKmX4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0LptId-1iAfj61ApT-00ffZM; Thu, 27 Jun 2019 20:56:55 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 17/31] staging: bcm2835-camera: Handle empty EOS buffers
 whilst streaming
Date: Thu, 27 Jun 2019 20:56:14 +0200
Message-Id: <1561661788-22744-18-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:ad5ZMW8ssO/JOMcoPglsVFDcUUPcE+j5mOD1h+5+S9QIq6KEEez
 +F/fWmiSF+kapuxSEKTXwOWP5Se38WYc1OtY1VYgSI/FFD40vMUGeLCNa1azj7bAomoZj9i
 ZdL3oFS1FFj/SLqKJ6BrZGxkaIWpSWrKgy3HzHc1yAAybwsdbBx/Bv2SxIJNTzm69yC855G
 vw2YzvmY+GvrpiH2v8K1A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:EzprZ/Xai+o=:JLVbiZUaBS2wNJFY7emiS3
 wa4Qw/7oJzJPaQIfxATEnsvicsrWhLst2rFDsI+Qt2HmAe4DoXqipaldNRzgkTiIgw+gLDcQG
 p/EmD0/gCAG9isV/wW2LtKuizm370kYQzXLIViLiwLNzHSpLA0/J/JdRT8DUAz0uIlY3Adz4k
 1f2RnIo9Vn+DSO0PrFHa9EPlL1Xj4gXHxgxLc1Sv2rmlkdaogyVCB2D+iScFeNzyKtSezjZaj
 lkljxY+gqtDipKML/kfU1mC9zcASE/Qo6oJe204B6DqTVh1x6IErP7uKSq3zK80SVLl+RfaVj
 GFPNU5oeZ1LRummQPXI2kqN9Z6vxrKfANDomTXX8WxErVAsDoiyyYRHbdB9H6wZXJXwmhYD9s
 d5eEEllnydaa6fa4MsJVOkoEKldON1qUpR3uRLDxme39F7D5/M4rlMn1yo9RMxUEtbdBeZkLK
 XAZWprC0bc6iqk/cAfVBZRiBL7Ki7uXbxgJ/Tqn5/fscjFEMap1ppV0+FtaTBMTY93OSZdN0T
 /t62yRzSC+BhrWVUW5VzUHsTQ+IlOCjCX/AzhSlrjxyayxpEKlqB5R0HYwm7/OhE5ONOn4fxR
 4/bnbXGhScCzxheEJU62NRybJeBfcpcVL7QO9RmGX8mej87sl2FVwatHf+MxuN0gnmxbQOQnx
 RBfbJ0ShmyorMVLmQwpH/NDt3TzsM8vUo33VARhpCEahvhGO2zLTXOGrg+Q8oyIjLycNABpWc
 ZEFdIJG7Lr1eBxfLIceE2zcJKbZ7VAZzNWlierSTs4AoMNItTv4IUvTFmJIq3IvMiMvxlwEpd
 VY/PYFZj+9taP8/F23iEP6PUAcdpwNopjPOIQxuZvmZz+tlmXqBz+JoCJltTOd82nhyltZw7I
 iN3qenf/lk2rsqo6IPiLWWq7t5DHKILKpJMZPhg8u7fkjbrNL5Zpv6Of3wUxi//pvNfVJCLpd
 /+EPDi47fs4Sa77OAVUlwJOPEKXIfKTtK1vLM1/dPwJpxjm/K4UrsBdqpsAiv9ZTY8SL03QY1
 PI/qP+g9iqMPNeOZtOpimOlPfdfSAYw3dTQuZVbLGKMBHWj6zzDbRY/OGziYNHZiltmHAuRzj
 u+wYfJZyBYPA9E=
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

The change to mapping V4L2 to MMAL buffers 1:1 didn't handle
the condition we get with raw pixel buffers (eg YUV and RGB)
direct from the camera's stills port. That sends the pixel buffer
and then an empty buffer with the EOS flag set. The EOS buffer
wasn't handled and returned an error up the stack.

Handle the condition correctly by returning it to the component
if streaming, or returning with an error if stopping streaming.

Fixes: 938416707071 ("staging: bcm2835-camera: Remove V4L2/MMAL buffer remapping")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c   | 21 ++++++++++++---------
 .../vc04_services/bcm2835-camera/mmal-vchiq.c       |  5 +++--
 2 files changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 36eb4d6..f2e951c 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -339,16 +339,13 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,

 	if (length == 0) {
 		/* stream ended */
-		if (buf) {
-			/* this should only ever happen if the port is
-			 * disabled and there are buffers still queued
+		if (dev->capture.frame_count) {
+			/* empty buffer whilst capturing - expected to be an
+			 * EOS, so grab another frame
 			 */
-			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
-			pr_debug("Empty buffer");
-		} else if (dev->capture.frame_count) {
-			/* grab another frame */
 			if (is_capturing(dev)) {
-				pr_debug("Grab another frame");
+				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+					 "Grab another frame");
 				vchiq_mmal_port_parameter_set(
 					instance,
 					dev->capture.camera_port,
@@ -356,8 +353,14 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 					&dev->capture.frame_count,
 					sizeof(dev->capture.frame_count));
 			}
+			if (vchiq_mmal_submit_buffer(instance, port, buf))
+				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+					 "Failed to return EOS buffer");
 		} else {
-			/* signal frame completion */
+			/* stopping streaming.
+			 * return buffer, and signal frame completion
+			 */
+			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 			complete(&dev->capture.frame_cmplt);
 		}
 		return;
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 59eb812..d0f7b67 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -332,8 +332,6 @@ static int bulk_receive(struct vchiq_mmal_instance *instance,

 	/* store length */
 	msg_context->u.bulk.buffer_used = rd_len;
-	msg_context->u.bulk.mmal_flags =
-	    msg->u.buffer_from_host.buffer_header.flags;
 	msg_context->u.bulk.dts = msg->u.buffer_from_host.buffer_header.dts;
 	msg_context->u.bulk.pts = msg->u.buffer_from_host.buffer_header.pts;

@@ -461,6 +459,9 @@ static void buffer_to_host_cb(struct vchiq_mmal_instance *instance,
 		return;
 	}

+	msg_context->u.bulk.mmal_flags =
+				msg->u.buffer_from_host.buffer_header.flags;
+
 	if (msg->h.status != MMAL_MSG_STATUS_SUCCESS) {
 		/* message reception had an error */
 		pr_warn("error %d in reply\n", msg->h.status);
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

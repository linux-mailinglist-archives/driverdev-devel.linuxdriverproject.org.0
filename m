Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 133255AB16
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 14:49:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 57179204B1;
	Sat, 29 Jun 2019 12:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eGjG+njzxtV3; Sat, 29 Jun 2019 12:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 658D3204AC;
	Sat, 29 Jun 2019 12:49:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D962F1BF28D
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D66D185625
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:49:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zM5jreRUGHV5 for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 12:49:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D36BB85608
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561812538;
 bh=3x9fK8+WqdxIrAe71mFcwmVde8zp+yFOeUm23taVNv8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=ZLg9bw7CysS7PP7s5vQ4fSfGM/ScglHIELtpiIGidglmdNyE4HSoAqb3r5icFFMST
 9xnMTHZbtJxEcgRsfM1ijGI5sM/mw/nGAfq6FWzh12nqXTrHW26EcHwt45THtHbP6w
 vV1t18RObDq8ST1UkiQyBG1RrXkFGm3vZQK7T12k=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1Mi2Jt-1iBqln0dOb-00e4QF; Sat, 29 Jun 2019 14:48:58 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 16/29] staging: bcm2835-camera: Handle empty EOS buffers
 whilst streaming
Date: Sat, 29 Jun 2019 14:48:23 +0200
Message-Id: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:/cvNt30+YDthGsZtjLDMUA0vzzYtzqySl0JtpspYABVgnNvyT5A
 zE2DJOqV1xkwuThgyTqD9z8anSY+QuKz+oH8bQljeaaqL2iYWlRY1xCP1FY9aBGE1KYEhSm
 wqG7F4+nmpM/hxm+VXjBM8WGbpzid7sgsEGFVKpnAvTYhiV3Cn7MUxyBWnlD6esrpAaLAgN
 wWALLTPenrX0WFrFAJHCw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:L0Z3RZh+wyw=:vEMdpum6xqsFntXlnuPLFZ
 kslF8C1dPuapdvsNpVBVGwzoGKdRXf0DoLivMH6wf5sMhxXkFmbxXeFQBFH30UK/Zi2LUsq2G
 sJeStWnOkQgON3eedGGxNzZ2sPDsjW9vmxHmRbuxI+0rc7ugl0Y747oYyj6GyUSjRHWcAprfw
 wLHY2XvKiuWoYL42XWGyJvjbYgIwkJv0IuBYa1RJyQ3yj6BsstEYrNVNxwim2QHkRyNItQSAP
 XujLVStm1wK8q7M45sZCfC32q/9ZMQSwSypqIhjOxzGQbzzm5yBPP7pma2RN+/V+6WFwYtwUb
 G+KZ6kOf9nneJZ3GL0wYuK6Z6inh2IqV1TQ9wCebqSukfez7tybaEsKCPvI9SpkD+I49V8vkp
 htbPVQxtDGbXZQhEtXNQnAxg0Jxr/0R0aqZNHPhlOM3AKZU24vYeGk+ykz/RaEzJKCpeVutRW
 ZfuHf/AA9IVb7+xRBvYFTJBr+zIb5BbGDuyB11t86kW1F6a/ultvh0f7X32VPzn7PzASW54UJ
 c5PS/6l26zebIkW/r8AXxXnovy+pcMjblthY33yNZJbJaZBbBpbzR24xb99/lrMCScbOvlgha
 XQgXhd+dxtNxZ9kUPnBFhj7RbcKaUxSoE1JTAdwoXojcj1cfRSZCj/Y4dre0VMO+wK7wCmM4r
 0kGs93i8KgdDLkH0344adXA7pV64ALxefZpRwLOsBriNQi6cKhF/ofr8Hi7x7oRmtczftkKOb
 DEFtDLqLlIhEDYvfrFTwczd0niy34b+hWuqFVznVOmWdDZTc5ja/bVVSrrLYOiDInHimFmZ1j
 yUOQiSRRJtNZDYQa0Gu1zB5Vct6nrRI5/xp91pmV3CUgcvauln2OrJaWLdQh3v7prI7qs2a2B
 FcR+3k6qzA8dpKXXVvfpwIn+GnBfsmlKySyZKvhiiVFj9xfunaVdncwICTDFV5Al3GOtzn892
 rsAlvYcDLO5MdnOUAF8vNnQfxiNoaSo/b9hg3QtZRmz6ZHZT9g1wGT5xOGd7SjGy+cHhTXc8m
 Au1xnrCx/IC9nS5127N43uRbC6TlBP7YVt3eT63IBXg/YXsjxmV4Ofdz4xXnTZgRTOMr5eKTA
 KjSUBi3vA7pWM4=
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

The change to mapping V4L2 to MMAL buffers 1:1 didn't handle
the condition we get with raw pixel buffers (eg YUV and RGB)
direct from the camera's stills port. That sends the pixel buffer
and then an empty buffer with the EOS flag set. The EOS buffer
wasn't handled and returned an error up the stack.

Handle the condition correctly by returning it to the component
if streaming, or returning with an error if stopping streaming.

Fixes: 938416707071 ("staging: bcm2835-camera: Remove V4L2/MMAL buffer remapping")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c   | 21 ++++++++++++---------
 .../vc04_services/bcm2835-camera/mmal-vchiq.c       |  5 +++--
 2 files changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 296f4f0..5a51e4d 100644
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 178605AAC4
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 14:14:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E001C2286C;
	Sat, 29 Jun 2019 12:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q6ax94M82QIo; Sat, 29 Jun 2019 12:14:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 38DFC204B4;
	Sat, 29 Jun 2019 12:14:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B282C1BF28D
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ADC1A86E69
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5OeIYU6yPNln for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 12:14:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AA83786E00
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810450;
 bh=PsXPKTFlFy3F5v1GrxunrIbc0Yz6bQq+zN7/aiCfhr8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=GGL2Cui21skezh03MLIAqtwX733RXjVzL25OHafdZFiP/lnXUEexKeljJZ/frWJGw
 X/U2oguQkQyTskiVWF22rRPqGC2mjA6rPePYzjnb7oU+tQVeTKEDk8xUetq4LZ9NqD
 jL97VwTqXUf3fUWgudrDCMa5iSXtS8FkU/YFIxyc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LymjL-1iaY7h2Y23-016Alh; Sat, 29 Jun 2019 14:14:10 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 14/29] staging: bcm2835-camera: Ensure all buffers are
 returned on disable
Date: Sat, 29 Jun 2019 14:13:29 +0200
Message-Id: <1561810410-8829-15-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:wyjbWJY8Q2242ZTH+m/0IHN6J/mB8YMeACQ9qibx2sJtIw+WokY
 7mCx/PHEVXIKhMLT7IlMRXaxgYIXpwGDMVjEPG6FfGQHfuIf/v/BUFKJE+o5kWBLZgN/VtU
 oxY2Av5a0RtGwZ7eJ9d814JeFG+UitWBJoaBB1F0dY/jFXQMz8lNe3j9JZDZ1jIy14sq9rg
 k6RAx/moRh5AoRPzuP6qw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:LT2QB84/kq4=:8vlHi/aT3jOjYqLyYGym3L
 LHJpVf59moRvH11N7E1MxS+r6L1EwAd0rQRwPzUv6KLx6b7tZE7ZUCfqWENr/skXle6emQaP6
 pTizpwXDjLYHbIWz4fOjEhqJqEzfStD93aqIWX95DNObnwwgvQaF9kWj64pGSiS3DafSQ7Hhk
 hy5lyKeisOrfsiXm35JKOI5RA3lobbSWBqiTT8pPd26LJX71hDjga2O/Z0rlRavxMMnwRPWhX
 lWdOq2Y+5v5a4OlvMFKlk5ig9lpmc6nkcfnfbpUism0s9qBP9IgnXCjWwIyhTplQrbPIh7ldL
 LSycy1RSb6PJInodBNMrV4d86kJkHMZPVzRUsr5voClqlytgjGj/YLOS2aPPG4XjyRxHMb5dz
 VwJc6XcJH1D1P+xY9C3PdQRb8kifoWx/MAg/jIEFiIFyg74872VpdT7Ur8XSyKyq+0yx0lQT3
 yNdDVzVyuRyWtKV5A4uYpFqy4lH2RoTwWnwRqu60rGiZ+MNRbepzkkBinkkzoFhY6XRz+l+2u
 N0JZag31x7Wk+cLQN8CAStwSGIoUbUE9OI30v6cACXyJ3Use1+UthaZIp+SiQEBR+NskjGtaB
 p1ZbuUHYPaclPemNqWuDRCaWh8/5NVgpwpMvacmqACC+WzGbk4cpxIh6Qk2404gOwEcZy395M
 6aV/zi8FPfFDC03e8k2Tg8uZLZaWOP2pm6ZJmwyYOl84TBWo86yVEDo0BIkLmaYbaTBGze8OF
 jZz2lfdRIsLIoHMTMtJTGdvTku3RDDchWacU6vR+OrmM4ZVhqZXCA5NTbrc250yXkuS/9P+kv
 TOLmpuMySlTSgxrTnoc52j2YO+fOS4/JxenTP1JneqT8XEKiNWEX66Kzgl2edC6KYNstERRUl
 DASFXzngY3bWWLPybrvx+Cda57ASWp6m3eM/n3gR/3II+uInhF+uky364lm9tG9hvBLbHBTn1
 /bopLBqahnpJMNK2mOkDezHCp3lvczZjk+/N+fx/cUvxYBWG3I71VJ1N1u4tpOviSQQDPpbUf
 b/9fFIF+/mrL+CuLIjpcLLMgxtunk1pjLmSeLBctYpwmeaTp5m9CTjfXV2r15D4PCJfw69GIf
 Tm0U00qxR8gOgg=
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

With the recent change to match MMAL and V4L2 buffers there
is a need to wait for all MMAL buffers to be returned during
stop_streaming.

Fixes: 938416707071 ("staging: bcm2835-camera: Remove V4L2/MMAL buffer remapping")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 22 ++++++++++++++++------
 .../vc04_services/bcm2835-camera/mmal-vchiq.c      |  4 ++++
 .../vc04_services/bcm2835-camera/mmal-vchiq.h      |  3 +++
 3 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 5ca644c..296f4f0 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -584,6 +584,7 @@ static void stop_streaming(struct vb2_queue *vq)
 	int ret;
 	unsigned long timeout;
 	struct bm2835_mmal_dev *dev = vb2_get_drv_priv(vq);
+	struct vchiq_mmal_port *port = dev->capture.port;

 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev, "%s: dev:%p\n",
 		 __func__, dev);
@@ -607,12 +608,6 @@ static void stop_streaming(struct vb2_queue *vq)
 				      &dev->capture.frame_count,
 				      sizeof(dev->capture.frame_count));

-	/* wait for last frame to complete */
-	timeout = wait_for_completion_timeout(&dev->capture.frame_cmplt, HZ);
-	if (timeout == 0)
-		v4l2_err(&dev->v4l2_dev,
-			 "timed out waiting for frame completion\n");
-
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 		 "disabling connection\n");

@@ -627,6 +622,21 @@ static void stop_streaming(struct vb2_queue *vq)
 			 ret);
 	}

+	/* wait for all buffers to be returned */
+	while (atomic_read(&port->buffers_with_vpu)) {
+		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+			 "%s: Waiting for buffers to be returned - %d outstanding\n",
+			 __func__, atomic_read(&port->buffers_with_vpu));
+		timeout = wait_for_completion_timeout(&dev->capture.frame_cmplt,
+						      HZ);
+		if (timeout == 0) {
+			v4l2_err(&dev->v4l2_dev, "%s: Timeout waiting for buffers to be returned - %d outstanding\n",
+				 __func__,
+				 atomic_read(&port->buffers_with_vpu));
+			break;
+		}
+	}
+
 	if (disable_camera(dev) < 0)
 		v4l2_err(&dev->v4l2_dev, "Failed to disable camera\n");
 }
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 0b95723..4d63176 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -246,6 +246,8 @@ static void buffer_work_cb(struct work_struct *work)
 	struct mmal_msg_context *msg_context =
 		container_of(work, struct mmal_msg_context, u.bulk.work);

+	atomic_dec(&msg_context->u.bulk.port->buffers_with_vpu);
+
 	msg_context->u.bulk.port->buffer_cb(msg_context->u.bulk.instance,
 					    msg_context->u.bulk.port,
 					    msg_context->u.bulk.status,
@@ -389,6 +391,8 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 	INIT_WORK(&msg_context->u.bulk.buffer_to_host_work,
 		  buffer_to_host_work_cb);

+	atomic_inc(&port->buffers_with_vpu);
+
 	/* prep the buffer from host message */
 	memset(&m, 0xbc, sizeof(m));	/* just to make debug clearer */

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
index 3498555..1750ff0 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
@@ -72,6 +72,9 @@ struct vchiq_mmal_port {
 	struct list_head buffers;
 	/* lock to serialise adding and removing buffers from list */
 	spinlock_t slock;
+
+	/* Count of buffers the VPU has yet to return */
+	atomic_t buffers_with_vpu;
 	/* callback on buffer completion */
 	vchiq_mmal_buffer_cb buffer_cb;
 	/* callback context */
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7E958A61
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 20:57:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B2FC87587;
	Thu, 27 Jun 2019 18:57:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8En6Aa-cyQoG; Thu, 27 Jun 2019 18:57:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE8E2874E9;
	Thu, 27 Jun 2019 18:57:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 369F61BF9B7
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3106C86364
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nDuAdju26qRO for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 18:57:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D571C86356
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 18:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661813;
 bh=y9U91GGxjVzyJQpb1plbYIEJEQmZ+InsHm6KQ2qTC64=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=OfiHhM+ZsYHf1e67o0JonceiUwMajz6I1biGNnKCIzTUWlhpKtvFAbS0jL7jMIeEC
 kdMGRk2dXpquInZbyq6Op51eFzFPpy37nIaUcUQoCDSVNKFyyBIYeQcS3/EPAFxGBT
 o98cKSygwS9c4BHXO3TEOOF/cjRurA0wz/Qf1Cy8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0M1msU-1iaKvX1H6Q-00tm2j; Thu, 27 Jun 2019 20:56:53 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 12/31] staging: bcm2835-camera: Fix brace style issues.
Date: Thu, 27 Jun 2019 20:56:09 +0200
Message-Id: <1561661788-22744-13-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:qVIKql/T/zw8kAu25TQYjRoKyLK87blKkEMQxwagdJRaqd3HSNg
 nnBxoYrPsVk+jLPDEdhmy+rNpT9ASf7hytS4IN8naiT4ma0wSIOLg0851yvLvoGvkEdJtlW
 oNAI6pBO2Jn10Hh0YCRGjyKwmLgX5Ncb4Zsm5ob3Tg4d+jo8kWpq/xfgZcXATzcm1K+p3EO
 L0TthjF9lznuR17YGuEYA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:YI/u3WTu1tU=:KE6ESASlgMx3wbH0VlbqbU
 pI4QSiGkGMmyL4rGdwxG9C9nl03vnI60JEeXXaFFvUiot6U4cl6yzgegf25+05osESNv0qZDj
 PJtIbOu9GykDcvDyzIy5vTy1mHbrazirRPRndDdLaKxws9GM1S9svKDQ8gtynd+Lt4/itEf4F
 9iQmf85+j9NyVi6pCHGCxnlLe3TPRjRCvWh5AyCfYUj+1O4nTXaZwbm0g40Niz9ASStGSzljc
 dlaFPYG63IHNSJ7Qn3iLE7YvnoFVWWOJ3TDYA0RbZUNYKOYNri2i5xGYp9EoRfKi2lg0OS9q7
 P09fH+XSiqpu/H6GDJzQUwA9qS8Dj0m0eedW72TvAsmeU0YiCjWhSmshY0lGhax+pkhtngin+
 be2MVOMMda4obbkRuNeuoyfcFB6qbuQWDDceuJ9PHtpMfFCmkRIEiSEYg5JRAS0xOj4npA00V
 iRp3YpmMqien3Hk9PECAeBazpYNvhLGNMrzJBx/YhDWfwt/aKUj7L4d7k0vy7Hq87aGusUSfX
 rXGNsC7xOukSFPwyML/kvPForYajCkEIXLz6CkUYm1RKBfKy0dUDLp1gq14DpnKTtUDV8Wqtg
 mUVOBmrN5t5fSPVaV9S44rBENi/lJ103GWwNb4sMTDWbGgDdOUsBYCE1KoGxrXfxWwpmacYmT
 SuuXLg27Hw9zMne/WVYo5GtYoZiE96De0dXZyKQGzWP1qhCsIQYAUGjrSZOAYBcWzqzCRIguF
 23XvTPcI3087KAJQRqud4J24HhUF6kPSRfqj0uSwRVhmNhJUWBtX/1Ua1ZyxKTL4Saul85D/A
 BnPV4eWx00K+sOGoeXPbYfDnIuSEguM5eoD160GKoxDc2sB4bWVe5DxWeKrt5++IQ2Vfbtj/J
 zi1dKZzFhXn9lCQYJnwonJtVsIUhV8sP5xf6c8RS32G0TNEC95rDLJkkIM4Tfx2BV4mAUMfWK
 gQPLjH4ReDT+/cJQ+2T/BYg91IemiTyBUZkdLOmvsRsQLdYYID6IxayR41UrjaJI9TgqsQBU8
 2OBVhAid9BQapWdOUAE3WXbO/P1DNLki/5Kl7cUOX0iWffsAkYVBiTgpCTnu8wiydNoTIoaLW
 5ZfB964EfOUYrQ=
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

Fix mismatched or missing brace issues flagged by checkpatch.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 3 ++-
 drivers/staging/vc04_services/bcm2835-camera/controls.c       | 3 ++-
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c     | 3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index bde3548..c1f6141 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -553,10 +553,11 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)

 		/* Flag to indicate just to rely on kernel timestamps */
 		dev->capture.vc_start_timestamp = -1;
-	} else
+	} else {
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "Start time %lld size %d\n",
 			 dev->capture.vc_start_timestamp, parameter_size);
+	}

 	dev->capture.kernel_start_ts = ktime_get();
 	dev->capture.last_timestamp = 0;
diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index b3d7029..1a7588d 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -407,8 +407,9 @@ static int ctrl_set_metering_mode(struct bm2835_mmal_dev *dev,
 		return vchiq_mmal_port_parameter_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
 					     &u32_value, sizeof(u32_value));
-	} else
+	} else {
 		return 0;
+	}
 }

 static int ctrl_set_flicker_avoidance(struct bm2835_mmal_dev *dev,
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 5175e2c..73cb295 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -1262,9 +1262,10 @@ static int port_parameter_get(struct vchiq_mmal_instance *instance,
 		memcpy(value, &rmsg->u.port_parameter_get_reply.value,
 		       *value_size);
 		*value_size = rmsg->u.port_parameter_get_reply.size;
-	} else
+	} else {
 		memcpy(value, &rmsg->u.port_parameter_get_reply.value,
 		       rmsg->u.port_parameter_get_reply.size);
+	}

 	pr_debug("%s:result:%d component:0x%x port:%d parameter:%d\n", __func__,
 		 ret, port->component->handle, port->handle, parameter_id);
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

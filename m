Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B849B5AAB4
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 14:14:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67E8688251;
	Sat, 29 Jun 2019 12:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PN1hJsUGnBf2; Sat, 29 Jun 2019 12:14:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB22F881BF;
	Sat, 29 Jun 2019 12:14:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 319901BF28D
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2DDAE20499
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:14:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YYYVHwLEhgul for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 12:14:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 22E8D2049B
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810449;
 bh=2vMmB60hqr3zxMDs/2xUlpIve2eQnaNGGEk/RnKtgqI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=hryCDATcdajfsa2L0v+1NRa6wMbUF95A2u4SMfsqcHQhewuM6Alof/qDnrPRaHKqW
 Qpm7fh9GBVsD18jSm0621o7vTkMBfXBI+yAeiS2xl/oWmW9khOE7X6QQ9n/thpr/4Z
 dtYR2QatwXEOE+1AvzKo65MWj7PkO3rkppPd+Lic=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LhwAY-1iKOgN1HQg-00n8LY; Sat, 29 Jun 2019 14:14:09 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 11/29] staging: bcm2835-camera: Fix brace style issues.
Date: Sat, 29 Jun 2019 14:13:26 +0200
Message-Id: <1561810410-8829-12-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:xg82IR/YrwzDKkqe0xrUSHWdnUCYSrOu/C4kVV5IZoQAEU+xv4w
 Cb9T95Vs//MaV27yrM58adcxfOUBiDeECBh8N6AzgP3k/vomS7kGutCoyqYIkKTQMnxSty3
 AWnxw8xECdE5LymmoScdh8/tIqJfHbZBKjQFuWiP6boqtMbDwy3pmT1Ehv2D7l4/97iWsJf
 ht7cz52+UZW7PgtVbSIoA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:zD7mBSQaAx0=:jGmpEMPg9ZYJO67MKaSmFL
 8kjek2SG/fuUHrN0UkD0cYwhvIbH0L3rCW0OCk+jG1/Ric3+E9jaCDh+STIhPYxYNiqoCvn4P
 aqDIMdlD3dGY6nd614v46QPIrEeC/TJAQq+jTHf4PNpWAIR3B94VzDQMKFtJxUFlkLuFy+6mE
 yA8sphZ1lm73n3v73wF7kyqe35+lgw0rCG5PQ7ebnThakwbpJ6GIUYF/ZyvmEFg3oiY88PjI7
 eF8YYmY9n3dP2mXKezA/tUyY1xeLv2Y0J/Qjw6SklkgVn3vl1qNBj8JBOTLoQWQ5FCfW0lLAT
 cMH0GeQiV2493m1rZuMF+4E/NC0a9XUmNd5oNpghPiwVj5cBVlO+RqSiXglt/iMDMyR7QxmLi
 s8irWsZQ47A4Gp8wYWiK+zBBwam/udByYVIu5QNgJLJGI0QpSt6ks1q6MUeLBrO7qQvobzibC
 tD51bylGKFHwdd/iPBnHZgx6VVhVBthsv6ar6QVVWMC1Lt3rfZaDkVywYqlZTovPjzg+6/Quw
 QMX9LXsASPiXz0NWJgy3xgtZ8XVE+JQywWdAgf3W5wvNlIPm1tHBlaJHQ5emgthn/JI/AAafz
 VJbHIaUuFs0PkhLgpRWFXIeqSlj3AesIw/luiEKyAk515sbkl3shR8TuVoUW5uhZfxe+IeY6Y
 9HgBg2Zuk8NgAvbpdZAQHx/4Wnn6ERCT6GecQZNM4tSnmYRWyvaqtnq5cxE/gKWs//gSgZJYg
 Zdjt+6sedlRd9Zy4ODtIG/DhIQZadUyOVJJw5kfIB0Yp+9sM8PNYzG+fi20OD/6e9YKeYb9xD
 +543KVos5qrSoKxPpA+tCQhp/r7v1QdYDHgZeQpaBJa+SIn3J/o20UN3ulk4/jAKUY2p9yQb/
 C5pRpa8AavYiKI2nXPxo/NhaIPSnN6Hc0uGywv1cFKNeETuiF3r6KmTsXykIIu4/0DHlpXoN5
 jMY/3NHyvEnIsof9aMtbwOvXU9Ce8eDIhSkis7BXMU48RejDPlh+cAmARHnrmkRg7T9aem4Ry
 KhwwoOkxfzW4XYX9q0nUS/U7JRA27bGtYZZ8nrKncz98FW8xbrgyqFy5VjshXTIU2mcKkdfxM
 k9F4iYn8BsLu1o=
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

Fix mismatched or missing brace issues flagged by checkpatch.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 3 ++-
 drivers/staging/vc04_services/bcm2835-camera/controls.c       | 3 ++-
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c     | 3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 753c3cb..8813ffc 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -543,10 +543,11 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)

 		/* Flag to indicate just to rely on kernel timestamps */
 		dev->capture.vc_start_timestamp = -1;
-	} else
+	} else {
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "Start time %lld size %d\n",
 			 dev->capture.vc_start_timestamp, parameter_size);
+	}

 	dev->capture.kernel_start_ts = ktime_get();

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

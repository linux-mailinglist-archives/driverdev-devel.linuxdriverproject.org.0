Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E17B95AB0F
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 14:49:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D8CE872E9;
	Sat, 29 Jun 2019 12:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yp65Ro7EWmDU; Sat, 29 Jun 2019 12:49:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BDCF384580;
	Sat, 29 Jun 2019 12:49:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 962AA1BF28D
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:49:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9305284580
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 12:49:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jA1SDjazMyev for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 12:49:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 31F99868F4
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561812538;
 bh=5Lgyn/hZ3QxnIC0S6D39JFYVbTuvdGMraIyFt4x4lGs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=PA7Zq5bp2EmyybgeQvEN3rvPpYfmxkaH3RFaWq+qCJR1lX4TZTbp12pBNT0Iwl0h3
 MeABed/uzh3gHtY0KkqoPlLmcv5yfX9YQ8gNPYqrOEC6swZbOjwKff8qkSLFg4Tbwc
 kp8HY7Gj/duYjPp8U4ANJYi0sNBmZfkO6x0e6060=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1N3bSt-1ig4xl2MRH-010ddx; Sat, 29 Jun 2019 14:48:58 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 17/29] staging: bcm2835-camera: Set sequence number
 correctly
Date: Sat, 29 Jun 2019 14:48:24 +0200
Message-Id: <1561812516-9087-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
References: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:0IIAyh4ZU2BUuBfQtj+eM5IUn4ePO2T5pJ6qtNdfEbIRp1TKMCW
 JdLPsT4wmEP+wlWHK+LZn4hFhkcWGlnfM1pxHZRwZrhdvSCRyH+e2vl1BEjMAt7dqsTa2WX
 ax6YdI+XOww9m4y2I0PO8Gk33KqPLWtMmEwdcwoHq+jCqxrGUPBagI+MBpib/zbYS/YA3I0
 h3VB3DNfMZC9JxPSIcgBw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:HGBbzrCvBqk=:p+XzXPYOLequL4frhkS0E9
 jl6vtAuVY1WQnCCjUpu+uiWSAENgSMK1hk0fkURgVw9o6hSHt5GW2lxhOqaNM4Ba9izEnEKde
 UCOymYY9/BYsa4wwm3qA5fRrcEtu1jXqz4rnbDRUCtcf6yr3dB7nxOicVzzdiQvjVH3uRI0pA
 xaUlUUOEGJxli4oh1QCmHtfgA7OdmSLbrGPhPFMInqIShangdIucQ82Sh48OXctPhFO9xafWs
 no1mjFwDwY879B5j5y6+RCZae4uUzzB3Rv2gpEXz/WXOZeKmPadUHLWQV9J+H7vmCktJWRi5A
 nnOAVaxvRFg1QRODa8PuvWbBNeF72e63EQZUcRfKI2vhjllP3Nojou3veN9D12lvRZGrLZMBB
 ItZf7CdqBhlNiiIjyCyRmP6V42NpQ4j5jeORWDftxMGGzKbmnuKuP2qvhU08jTLrz7or2W+nx
 cZrSs8ycLN2cxw9IB6EgUHb3Mq/Tnk2Dzf0Tnezjgb0xMtROoBz+H9lSb+rncCcSI+gHOIqkq
 ijCiZj3Zd5HNQEn4pFa7/Aq7MpfZuwu3k5l+OSczP8J3btTDlkrwcxB17rKOBLmEaLdTnQTmm
 1cVCmKK/zE+k6JUumxl8eNE7w+iQJt+4j6AMlYy0ygIJOlfNm4RoVmfslzrph1yN5ldMdeQlf
 W1l8fuxx2zzLHYGZqkFx4IJFK+37PM6bEr8uthZzxBH9G6vkudIsGyMrxOBtoap8El7od1xFV
 bGy3MOZaE+AITWEy2YXiXrKUTobxjFp03ixOu/uyqwIEj8yiKFHcssftqtV6LLaXBa6z7VxpR
 xquRVyIgbefqYxKDlljw7JiA1tqVZMYB3acjKJkpQNUxJ88J9Sr6haMqjLwkh2RfuOd45dN53
 9HFwAh/sdBF/DcQZ8wCCim16zrhHlJsWs7y/YauLwHQoJsfbfOKV++ZkOH055Iy7DUbMQm4N8
 t5r98zLwiFiWHVz6X//jhulVKUReMtrX57SLKHWiOXY8Rr6soqmp0FxddLBsdAIpwhj6kgX+x
 6lIjcl/RlGLpY66OB5SVJ1rluzCvFYzLfGe0zXR2ly88uDq70DKcdJZRUlxa1CjQ19SlU8Kw7
 zSYRJ5RGZQKoPE=
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

Set the sequence number in vb2_v4l2_buffer mainly so the
latest v4l2-ctl reports the frame rate correctly.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 4 ++++
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 5a51e4d..167c218 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -388,6 +388,7 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 	} else {
 		buf->vb.vb2_buf.timestamp = ktime_get_ns();
 	}
+	buf->vb.sequence = dev->capture.sequence++;

 	vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
 	if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
@@ -515,6 +516,9 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)
 	/* enable frame capture */
 	dev->capture.frame_count = 1;

+	/* reset sequence number */
+	dev->capture.sequence = 0;
+
 	/* if the preview is not already running, wait for a few frames for AGC
 	 * to settle down.
 	 */
diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
index d9f0411..b5fce38 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
@@ -91,6 +91,8 @@ struct bm2835_mmal_dev {
 		s64         vc_start_timestamp;
 		/* Kernel start timestamp for streaming */
 		ktime_t kernel_start_ts;
+		/* Sequence number of last buffer */
+		u32		sequence;

 		struct vchiq_mmal_port  *port; /* port being used for capture */
 		/* camera port being used for capture */
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

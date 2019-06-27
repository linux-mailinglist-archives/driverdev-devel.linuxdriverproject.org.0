Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A62A58A62
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 20:57:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E851287FD2;
	Thu, 27 Jun 2019 18:57:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zTIRXZsMjFs9; Thu, 27 Jun 2019 18:57:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8DEB88045;
	Thu, 27 Jun 2019 18:57:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DB881BF2F8
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 989BE20434
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 18:57:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 31lK-d8mYZ7x for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 18:57:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by silver.osuosl.org (Postfix) with ESMTPS id 9479A20106
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 18:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661816;
 bh=To7r9Iz4rUasrDMcLbYaTnJm0paSV59R928kdzaH15c=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Eqey5sHrRLAzyiJ01OE6yL3ppSt1FcYXzB6RfFx64URL3NX45K6EDOGBlUPqCazGC
 lrDbf5mI6nwFA9aOU/pLY7E1T5nzdAx9KFMXyvrhEtwpOw3nO2CM1+T0Rw+kUK7MUz
 2sPXa7CXpKVBcwATLXsmgfMQrGJXToKCwrQKQyCQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0MGBdv-1hkAbH0NOB-00FARI; Thu, 27 Jun 2019 20:56:56 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 19/31] staging: bcm2835-camera: Ensure timestamps never go
 backwards.
Date: Thu, 27 Jun 2019 20:56:16 +0200
Message-Id: <1561661788-22744-20-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:DiwyDx4wevMKzeWB2UlF1MZfZbyv3QEeiXD796J0bJwPbdVH/ek
 ctM557d2Y+BqPzZKjGQs3xAh3ukDjRC2XsDxVYg6UsmGZZxjCuxapiT7oeAz9bZqhboCLWA
 Se58s3lK3hZw2wgngI1oA3Nx/mz6FyblzsM/QlufHWoz94zBu8/r0+z+X/AfOX7ZRDgH/NK
 /qX+oDB1ar8lFYcJT2kGw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:tW9pxrt97h8=:iJMdFfIppg66aRF8YX96Sp
 552WG4My6NvYayu2ZdNWSfhmmkyBPOlq2SL0wyBeeegYc4AZ085PuFswuJzXW2ZDmRaEC7eiy
 iMfctYAvKtMHvXISeWo/MfOt3jK3G98W/6MoAeRyhwzCvOqt6vMV0Z4OtPX60r6Wr6UM2816e
 4Qtlo6NvtGC4dD5VwSUHE2T29xXLgCjgqPEsORV/O+Jx4vDAwXZKLOKeuiyTbJR+vV8EcFLsr
 JuwtqI3Tlu9JQYhcUXCLqFhYBQTVxwY9rCPKbFjTOopi/E6zRsjNqLa6/DSZQwvukQZsNKLu9
 QwhEjOtympUEugjm783ZGEYB3oRBlrhZjM2EeOIqnHs8bxON2YIqLsdwaPTSkP3jmsPUKIsUU
 cFGbMTS1lU2n93GcAFNhjfGRF0fFEypDXmGCCdRg3o5VPPnvTTCw55Oguzc4YNAR4VDN7gOmm
 YmvDpbho7CBLZp3m0+ExsAeVuVRC3TDC6uy4dqNOeckGerSkDBQdLY1VaAMggsQoE6OKjOQxd
 GWIfbDwhvbxWzDe1lEo7KhJ0D4vxnvI9LQ0JVAfjOM08SPE8PcJhXA/A2ho4neSfV0Kx9C2mx
 rP2C3DjHFOVUvnryORLydeLpXJGKVc7ULOrx7bdS2S/3ceAFXCwdyJhVgX10qevc+RVjpCGkJ
 eYIjUjHqsI0MI/EZ+YHoeqU6SchFAbMmkBeEC68BHgGURSwTIzt77edgU5qwBixB5YUzlz9hx
 t364yVHpXFgCsdyYDAEgTYP9W/TY1dbgXJQ5d1dDX/ou+iiNfaQJ+5S5nm6amB1OK35t811t8
 U9fgO4XCWlnGONw5VbUHwKMFtrObfW1j4mmGyoufcLegpPq/lsCoPlSh7DuabN0sQaibwpcRX
 AxdAW7tJXlPLmZqiButAMf5nXIjQ5m5R4BQFB/849U/QokBty8RE8P6aD7tvFdTUG60Czt4DC
 wWIu7pojgO9lb29x3qKVmu/F5H6FUt2543JBuCqiQ2pGTSl85/YbTkn0bN0J64HryQlP3ls2/
 uQV56jR1WH8053A5uJtALprvOeHnHc8UxZbQGSB8SMPJs5vAXqln9jt6Hh3NQ4xligNLRm0p5
 w43b9HdKbTdL6A=
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

There is an awkward situation with H264 header bytes. Currently
they are returned with a PTS of 0 because they aren't associated
with a timestamped frame to encode. These are handled by either
returning the timestamp of the last buffer to have been received,
or in the case of the first buffer the timestamp taken at
start_streaming.
This results in a race where the current frame may have started
before we take the start time, which results in the first encoded
frame having an earlier timestamp than the header bytes.

Ensure that we never return a negative delta to the user by checking
against the previous timestamp.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 9967df9..6205793 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -387,6 +387,11 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 			 ktime_to_ns(dev->capture.kernel_start_ts),
 			 dev->capture.vc_start_timestamp, pts,
 			 ktime_to_ns(timestamp));
+		if (timestamp < dev->capture.last_timestamp) {
+			v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+				 "Negative delta - using last time\n");
+			timestamp = dev->capture.last_timestamp;
+		}
 		buf->vb.vb2_buf.timestamp = ktime_to_ns(timestamp);
 	} else {
 		if (dev->capture.last_timestamp) {
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

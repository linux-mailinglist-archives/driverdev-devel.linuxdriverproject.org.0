Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C4456E07
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 17:49:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CDECB21FA8;
	Wed, 26 Jun 2019 15:49:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w+aa04I12epV; Wed, 26 Jun 2019 15:49:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 50BC121574;
	Wed, 26 Jun 2019 15:49:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 243881BF2F0
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 15:48:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 19C618608D
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 15:48:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ei9pTdXCe_9B for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 15:48:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B990386088
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 15:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561564113;
 bh=mWLTbdtxGfwZ13vnfxlQDfv6DzwTGycBEng3zNk/XaE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=KYHDR8XZmzxft+7qC8J8cyQ71BSi6JkTsAhWvd+vK2f+YjWqjT42uTfrjNGCcQfdV
 Z9gkAVPhUJWqXcu/GipMjVfx/QmxN65eJI1oHCOZ/vhkhzCqY9CuiJjHWnxF6jmydK
 5QSqYnKAOWM3NXmd6pWkd6wlKwIFV9zX8+x8R0gE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx102 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LyS5K-1ibrK32soI-015u60; Wed, 26 Jun 2019 17:48:33 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH V2] staging: bcm2835-camera: Restore return behavior of
 ctrl_set_bitrate()
Date: Wed, 26 Jun 2019 17:48:11 +0200
Message-Id: <1561564091-14248-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:oGZaaF0VyX9aU1B2KlshIgSdbA6j0aZLN7PhhBatNb+3vHD/bim
 IAE1eOdpYqQunHD6Pg0lTq7WJELowblFluMBHzPg8LdD02e6QUAOnsxpP9+ZsegmN4310bJ
 qbWyOk73ZUf0L+ErExAilg9x9ygGjCdTujEDRrk0vloZc12lmdHMEA8VQs/4HDu6WGeOoac
 M59q+7daHAsSTIgJrRUuA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:+5QZJxEbxD4=:fxpwesVoxYf61efHxmcTKK
 BddiAtw8+v4csO9cTNV4qSFAebPmgWlPv8KyLXPbOQdcjOl72FUcevKvhsznxi/uv5leFw9uX
 Sr99W78EPj3EmJmQT1KZ8GMPWcB/hQa1h/t4bhjHByFu4VQ2xaIdpsJfZlFcR2poK1E6dEFT6
 jHlzWYjt2kP7anvsjMJvdSVILf9+ei6ysWz1aaMCKFLhxNUNmXH9onDdO8WOanGVr15zb+cVv
 N4ecxzj0SonMoADsz1UJqgwb8Pi5/me809KQd8pQ/GhKDeLPNwQPXJMMhRbyPgmg5bJVCRUgp
 MaMwDNiIn3qPl6t4jPx9uiSL5n47PAyt6vVlyufqp1lOr4EqgQFWp+2hknWJYJ8hzkBLgXrdZ
 gfNGAtlqG9MdHsJds/KNtpjNvF3iCuOWcIyBEGAYKZL78LQggOcIFSlHn+KZ9JU2t9jGJHKF7
 0E7pkZuWJIQjaWnt7WTAiO/Pv3tNhKukGVQXG7OTxkwS3+BsXI+vBB+xtOP+syI1QFkP3h+5c
 9HVQLB7CA73bkyul1AwmrHNV+OqITaTatTPFXsDojt54X59pz2G3SkQI5z8JZ2aq40Z3vwI6u
 lyMT+gPPFDx2aNm460FX8Gm+2BisA5xrkpjxb4KIDZvTRDCexntK3cadXRyX7GZQWc6poIcVf
 atWNWiKYv6KN6vA+lc2Ffl5FM8p7BFtkX4GA0GZ/XhMTvCqDtgxBdQ4sevKJ4riNMAvRuswrM
 BUrlhaRg3ElFPF3x+S73QaRmNmtv34L7puWW57WxrkKKSJS7Td0oZd1ktx6eAW1CA+I8RmOn3
 A+rcm/ZfBf00TXqxsq3/t9h4mL3cP4KhBAxtyYg4z4yjuWt8AmXR6GfvTwCxk+qioygsV6KyY
 6yh532oUizARrL8gUwZBauRwgH5rk7e2BWINY86y8vr3nSBzocuIFAekTK42reIsJ+qq9OSD5
 IcQroenV1LixMtStvb6CiyHMHMqpxb+Buu+0bdl5qjKcUB4JxBA6KWMPC6Orj+Yf/GKaQlk+k
 VsgZBuZAUHsZFuULBdIsUg//MyQJ0q/13WL31BSqJX9SAMgHFgsGeDo4yAg4YSF2Mbh1EgZu7
 a3+bklRX7SG3Ts=
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
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The commit 52c4dfcead49 ("Staging: vc04_services: Cleanup in
ctrl_set_bitrate()") changed the return behavior of ctrl_set_bitrate().
We cannot do this because of a bug in the firmware, which breaks probing
of bcm2835-camera:

    bcm2835-v4l2: mmal_init: failed to set all camera controls: -3
    Cleanup: Destroy video encoder
    Cleanup: Destroy image encoder
    Cleanup: Destroy video render
    Cleanup: Destroy camera
    bcm2835-v4l2: bcm2835_mmal_probe: mmal init failed: -3
    bcm2835-camera: probe of bcm2835-camera failed with error -3

So restore the old behavior, add an explaining comment and a debug message
to verify that the bug has been fixed in firmware.

Fixes: 52c4dfcead49 ("Staging: vc04_services: Cleanup in ctrl_set_bitrate()")
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 .../staging/vc04_services/bcm2835-camera/controls.c   | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

Changes in V2:
- add an explaining comment as suggest by Dan and Dave
- add a debug message to verify the firmware behavior

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index d60e378..c251164 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -604,15 +604,28 @@ static int ctrl_set_bitrate(struct bm2835_mmal_dev *dev,
 			    struct v4l2_ctrl *ctrl,
 			    const struct bm2835_mmal_v4l2_ctrl *mmal_ctrl)
 {
+	int ret;
 	struct vchiq_mmal_port *encoder_out;

 	dev->capture.encode_bitrate = ctrl->val;

 	encoder_out = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];

-	return vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
-					     mmal_ctrl->mmal_id, &ctrl->val,
-					     sizeof(ctrl->val));
+	ret = vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
+					    mmal_ctrl->mmal_id, &ctrl->val,
+					    sizeof(ctrl->val));
+
+	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+		 "%s: After: mmal_ctrl:%p ctrl id:0x%x ctrl val:%d ret %d(%d)\n",
+		 __func__, mmal_ctrl, ctrl->id, ctrl->val, ret,
+		 (ret == 0 ? 0 : -EINVAL));
+
+	/*
+	 * Older firmware versions (pre July 2019) have a bug in handling
+	 * MMAL_PARAMETER_VIDEO_BIT_RATE that result in the call
+	 * returning -MMAL_MSG_STATUS_EINVAL. So ignore errors from this call.
+	 */
+	return 0;
 }

 static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A45F051E03
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 00:13:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E0BC86354;
	Mon, 24 Jun 2019 22:13:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j3pJStgdEokV; Mon, 24 Jun 2019 22:13:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB415861AB;
	Mon, 24 Jun 2019 22:13:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30CBD1BF3A6
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 22:13:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2A8CB87463
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 22:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y9IMP3ifWUvG for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 22:13:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0F784870D7
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 22:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561414401;
 bh=GysLsYTuZsd/CXGs4HdO1VCTJil5RrdvuS6/TiPl2bY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=CGIuimCpdUTiOV1K8ZCWxHAskUnqvpQWsKczJlN6C56j8+2Tw/86X9PaEgXUxpz21
 vLqMlARZOx3MoiCCaa+lfusw/5TdZ612o5z5uzTYyhlE4V4aQ9e1yZppkHNSRvMFoA
 sYwkmHT4+fAdBEEK9b0UYjw6vVkz9VpUGU9kwLeE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MKYpv-1hguWc2RVf-001wNW; Tue, 25 Jun 2019 00:13:21 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] staging: bcm2835-camera: Restore return behavior of
 ctrl_set_bitrate()
Date: Tue, 25 Jun 2019 00:13:15 +0200
Message-Id: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:LGa8UAO+GzmbgvlLItsNffmxnvrhpUjzzhEbaoSn7FwAXOkBTQT
 CXW3GFoFMF7ihP2FNuGybonNAe4XC1IG1wlefi99zYppeICDE1DXNEfp72vJtW+hdWbIWTv
 rQGf9V1DQzVE6avn/XMprdK5kasTgjwFYL1ePyQdxClEBcHaYQFYCkmYu3B0wvQkayY3VwX
 I5OkkpT21gvRetaja00uw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:NjJkG8Xb29w=:CFuXM4/BeBw1RHflSUg+wT
 DLCtoqPccHOy98ClrHyjRkvcvSalof5xIx+mzBrGpL3mMXOhQHWlhWhW/Nc97+cE/o/zbc46e
 Xzu63C68+DescTtQQqA6uGw86cxtiH/orBi92mgVYQu1jRQhgsfy3wLgpZtmP7DL2+HDxX+5O
 jchC3c47rzKhzvmAlIOKqaTIJsGCW7A9Cd52eELlSZkT80cB5DIF2XHqB/j7vBlLzp3HapQZK
 RdhI4PxJ5IUDWi1Sf9I2POV/BfejX89eSBNrQN9DE4uxHkINg7jkAs4bm88qIDUw8Ud2paeof
 6GTXwqSKt788XBkWivmWL7ePrvKJgvvYnrbRSiWNqDoY0sQsSTUlxpGW5QYZRSJ+c909qSYKE
 ka9tOuWtp/Ps3/YgmLIPnpr2MU4ZKL71djgA7HTBC5FqKJfAe52NGuJd4KDIOFh6YogawSG+5
 cSUQodcaGNfqRBI8pKmx9plGVLgvLPMkfRx7h4Am3xQ40NkmvxGP9akWpDF4xx9MoFrRG5G1e
 keHPdyWZbJRSDjW4fHTpIYivXC7kkidVd4V6XH0lLleoXlAuVoq+E35/Lr0ee4K/8KiuX/yYh
 ELD6gLdVEZ5/yB74NMonP4WL5E973IJ35D1YmdPx+hwT9BQBa1F6jSB0A64s5iMapT3t2qNYW
 1hnxusRTf9/ADzValJX0zIG49nCaNoWliIaExu7OKmYPPxhtAYoD9md5Pp1lf40Hnxw1BdN3j
 uy1SVj5R3yJ+4JiUQAx7cHK3qFU/zVmMvBwBBnapQJas5jxas48BZLfxDlZ6DoD9b9mUsZGta
 FLmePmnwcyWcRaQkKyOndZVORG/qhYLNR9ywLYHKxJcGVpKOKfeLJBA1TCtJqCS/ogtmu4QL1
 x9VvrbSBjAcePZmdfDR55iQx07QMqxIQq102+rxcwI5TuyrgENtG5IbmcJ6qhVTIJVh1Wo8uX
 1WbDLWUW1dYV6m2nGVNZ0EcD2pYXVQWY=
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
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The commit 52c4dfcead49 ("Staging: vc04_services: Cleanup in
ctrl_set_bitrate()") changed the return behavior of ctrl_set_bitrate().
This breaks probing of bcm2835-camera:

    bcm2835-v4l2: mmal_init: failed to set all camera controls: -3
    Cleanup: Destroy video encoder
    Cleanup: Destroy image encoder
    Cleanup: Destroy video render
    Cleanup: Destroy camera
    bcm2835-v4l2: bcm2835_mmal_probe: mmal init failed: -3
    bcm2835-camera: probe of bcm2835-camera failed with error -3

So restore the old behavior and fix this issue.

Fixes: 52c4dfcead49 ("Staging: vc04_services: Cleanup in ctrl_set_bitrate()")
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index d60e378..1c4c9e8 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -610,9 +610,11 @@ static int ctrl_set_bitrate(struct bm2835_mmal_dev *dev,

 	encoder_out = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];

-	return vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
-					     mmal_ctrl->mmal_id, &ctrl->val,
-					     sizeof(ctrl->val));
+	vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
+				      mmal_ctrl->mmal_id, &ctrl->val,
+				      sizeof(ctrl->val));
+
+	return 0;
 }

 static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

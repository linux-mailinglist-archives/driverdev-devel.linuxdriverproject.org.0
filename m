Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE5458AA9
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 21:07:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7805F87589;
	Thu, 27 Jun 2019 19:07:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MQTra5ir24dB; Thu, 27 Jun 2019 19:07:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8CA738758C;
	Thu, 27 Jun 2019 19:07:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F5711BF41B
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:07:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7C56B87FD2
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:07:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fkOXtyQUCvRj for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 19:07:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 724AD87FCF
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 19:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561662414;
 bh=LRyz6YBXxxPj6I4Vwjk1xVVm3VP1fgqB6kgOc9SZZ2c=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=GirP0fljl41TxQXSm1O9gJJhCN7MtAvA2NBIiwQ1KIGrkVfPAHj5Sw6fDcvYKJtfu
 E2osrqmE8u2cTkC3cE840XaN8IrmJZu7A/fIroOc7WbAh3bGnOCjBGDXaha1CpbSbd
 zZoHQI4w7AkPHYC0kt1W6a9CXQRsjQtCaDZHzNsg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MLB89-1hgIcJ1gDx-000Nai; Thu, 27 Jun 2019 21:06:54 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 26/31] staging: bcm2835-camera: Remove/amend some obsolete
 comments
Date: Thu, 27 Jun 2019 21:06:21 +0200
Message-Id: <1561662386-23045-7-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
References: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:4xomtyWSvBDrQz0zJqh5x0hXvsx0k3JhFaFYg3KGa6+d+DFRHEf
 bxv7FTElzUlvQ4k51+EbPC6FX/4pGQbQ4EKK5gQOxEoefI9XJMHsohhv7Sr87ki0H6aV+by
 GX7eVNC2peAsNFNkVgXvYJxN6YStYZi3vtpUzeoQ309nbnK0uWHnU354e36D8hBOUJpsfkw
 SkIiLpwSJsfSQRg98to6A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZnwXJ6Xicg4=:lytjMVXwZM643hxn+PT0hD
 L/OZl/YY16Ftz3EXRg2qGYJRcT1eXFvSBo2v/CCL3DMphM4+c4ugw6rlorf0e0+DfR4nwTpel
 zCFReDmiZ+b+JLnkQ5TmfsxUm5EZaoTJI/S8goBbuLxCzctOId5FBoUgX6epxXKv6kty99lqV
 7hqXn7dtmDoPYVer7R6PvvnKWM7FhFVDvJsloC4IFzxhnHaRlrvNynisitWfs/vwSyyJNRXfs
 QLwSSmw+9zud3MyS20SOItxYjn5rmajUTg+xHDiJTkXn60+0VTFnWfrT03pKeECt/dV3Y7HNG
 zSWv6Zt9hZCAONTZlcqtIkgwn5b8wYYtNfWY24kthmz9/TWaIr8rWFSZUpvdndfjhoc+iyP2x
 zaPAXJZ+MynjnMLvRKShmK/xlUNT/KocM4RtJCG8a/7QJV5WVcjUR6AmR2rndubwnLAhmeHqP
 um4Q0KQw1S0uIr9NG6220M51MjM4HTCrdEFvLYxj3jwPEP0m9XC+j4AeJgzRglYb2YYMYr7qY
 47rASphbqix3KtXZEoLNpRFIqoYDJcvOlA27Cf2hNnSQAeHxWRbHlWsdZ119Gd3rDmZIRObOH
 29xyIin8zMCtqu84GaN+Cfe7SEGwPSakbOW0gJRpHrQ+RL1QRkugRhI7wIQfcdQZFfwckckMi
 x6Qvz9GzW1lyEmFLol6azUFLu3fbW/yh+W7uZpmj0nFlKi049NuUMXTM8Bh1sAI6PHAM4xcL6
 oQOcPmVX0clJAsuLbmoXsFUxaOsufsfmlUwd86blc6UaA1fYPsttn3eFkFcaFvm74pPMD76fK
 xyGXm0k9xjsIcqnKW4tXuJPZ1KctvzX0jSgRhhfGvK1UpcfIpX6fxQK2iv0UjrHMctfbckThR
 dc8i7Y7uCR0Yp3h5gzWj+RA15KbX4G4zJQYw0aFqx8eh0tE6Y1o4Yc4fNLaqwhPoLi0Ic5VGw
 NsLoaXsQnnvdwJ/G5HMqBBVPNtXB4dpW9wXx9QS2KD7F0zYkxPdKeJ+tGSJMYrvKBQ5rST8e+
 ini5oieKZ7DFA/JEvcgIAyUAyYyThr82ux+g0Md5sHPtP7QyAhfaiMzHgIXlNGcXFyr7hxb21
 pAaWxZ7mpklkYY=
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

Remove a todo which has been done.
Remove a template line that was redundant.
Make a comment clearer as to the non-obvious meaning of a field.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index b8aaedd..848b14a 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -971,10 +971,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		ctrl_set_value,
 		false
 	},
-/*	{
- *		0, MMAL_CONTROL_TYPE_CLUSTER, 3, 1, 0, NULL, 0, NULL
- *	},
- */
 	{
 		V4L2_CID_EXPOSURE_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
 		~0x03, V4L2_EXPOSURE_APERTURE_PRIORITY, V4L2_EXPOSURE_AUTO, 0,
@@ -982,11 +978,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		ctrl_set_exposure,
 		false
 	},
-/* todo this needs mixing in with set exposure
- *	{
- *		V4L2_CID_SCENE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
- *	},
- */
 	{
 		V4L2_CID_EXPOSURE_ABSOLUTE, MMAL_CONTROL_TYPE_STD,
 		/* Units of 100usecs */
@@ -1152,7 +1143,7 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_SCENE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
-		-1,	/* Min is computed at runtime */
+		-1,	/* Min (mask) is computed at runtime */
 		V4L2_SCENE_MODE_TEXT,
 		V4L2_SCENE_MODE_NONE, 1, NULL,
 		MMAL_PARAMETER_PROFILE,
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3E758AAA
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 21:07:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9CE08508E;
	Thu, 27 Jun 2019 19:07:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PBW_LY2wC1Cb; Thu, 27 Jun 2019 19:07:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B7B88086D;
	Thu, 27 Jun 2019 19:07:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A38AF1BF41B
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:07:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A0AF9874F7
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:07:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kpLGHfUfjNP2 for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 19:07:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6DD71874E9
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 19:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561662414;
 bh=wbvRD4gZayXs5feDvbdQH+nNcCfD44PAYVIgXWdJUDQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=BRHB2R0X4TNtTvYYrmJsJwLW7FTRr7NXJTMG/Yv/h8BRe9WD8NgB6fLF43GiqcHFZ
 4PjX78ZO6mk+nPogbzYkFF2btZHAWh1Fjb0BeUJCBo5kEbw3K+6ZLs6xy3BtyaGX3F
 VelCFtWo+dLMo/xuWGHYtBV6zEs7Zibz7ubkB44Q=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LiHc7-1iKbC103Ax-00nRfW; Thu, 27 Jun 2019 21:06:54 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 25/31] staging: bcm2835-camera: Correct V4L2_CID_COLORFX_CBCR
 behaviour
Date: Thu, 27 Jun 2019 21:06:20 +0200
Message-Id: <1561662386-23045-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
References: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:Omp5apnrgEsmpUXsU1fQRehbMLMejLw0me0mFJp1WOPmGsEK/LL
 +xbXWkNp8DZT/yNnks9b0rc+oKnyhcKwjw60Py1c9KST+It9Tu1YDPhLhy3d7znO/3e1pJP
 pcsbk/YjU1k/qr5F7Pmb1IuQ52C4gaDbSUFx3FmTvtuAf1liY9o4XkAs8VyLm7KMg9rtIoQ
 +u6owyMRobELSw4qVylcg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:bBDowvqWoGc=:Os/FdnRnkN8zTlHOaR8Qd4
 DrKNstGGKMed/h4EZuRNihqiM1o/YxCo6kpTeTaTcre1FPFbYkwPzFGraNR3GB7V23VV/6aJX
 GtaIh9CBRSZxhKwDjO/qt68Kru+KNz/YWBKM4Zaq5PhQzc2AYLeijjQFWaWu+psqf4m9d7bmK
 K/k8ebU8Be/3NVatbrQqb0PBxzawZN1ytj2h3NlKIy3s4D3e9LrzaCPVSm1j4ovX79r78AzDd
 NpHSQCtX7MfJv2HaU7A7+PWia+SuyseXjt4ncadNAU5Ia4YTKt9lyJsyvwrI96apG9Uk0MK0+
 a42803Lt/8W5k0iM44ko6GBeUUCKFAlOi30EvGrqxrOPVXYxmalOJk0cdmwfgdbjELOyzqfpJ
 8DRmIqkb2g4fSJe2XOmvL9hYTE4dldxtu+pvGhuJDhRsux0B0GDVB1JTzZYKquw1l35wrOcQf
 vhZbs2y8IZk/BJ1uMKcq2/dl5PmxUQbaZocrrTFolu3d2lNf/6F6tG8ammdX87iDqsCGw9Wc1
 TdDRRedXN0unghSWrLV9tue4fdBud4dt8gtrkWwns39cIUxUQk0ie8neR/VI5wG0Otmz57gyY
 /xq6/x/xlqj9+OrgwWzdf1TuHez0bZEra16aLzrrFtG6w9we59McEWItrvA3HDYOFtLTNn61H
 M/pBYq2Qna8dxn8F/2+siPvtkcL9njyvoICZ79PQl8ZqfMzcfT37MCJs9CaBlyGcOyJFOrErf
 YnYhVfYWGXMiKfsZpaT0GDl7gBqlcx8xOH+JIKD6vbzsC19WXz5hax+dy5dqeh2M4ASrYSBfT
 zkCCwqT3khQh2+H/CbQjbcmFmKWKFptPK0vwKa4ow0hFOBCmjHHi0ek/X3CMwAz041G9eA9kj
 ZWKizhooihJpE/Kvofh2S4g8ZnPy1Ork9B3r3HPppYrjhP5zY1Wghrq8SHXRGlTs355wVp2SH
 uAFFqwhazxYeTogIdyr+Us1piEMtUFx1jdEF2QZTvIGJ7KFGh/bZoRwbYPkfzKqo1laUFnYDe
 Va/v/r3HbJX/Xhqo59HXHo2WmdEykVdhNLNRRMTXjjK3TsLoQcqHKSPtHXprKIwq6FE1e8JwO
 uLiYBhGfB1LwmE=
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

With V4L2_CID_COLORFX_CBCR calling ctrl_set_colfx it was incorrectly
assigning the colour values to the enable field of dev->colourfx
instead of the u and v fields.

Correct the assignments.

Reported as a Coverity issue
Detected by CoverityScan CID#1419711 ("Unused value")

Reported-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 038b9b9..b8aaedd 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -574,8 +574,8 @@ static int ctrl_set_colfx(struct bm2835_mmal_dev *dev,

 	control = &dev->component[COMP_CAMERA]->control;

-	dev->colourfx.enable = (ctrl->val & 0xff00) >> 8;
-	dev->colourfx.enable = ctrl->val & 0xff;
+	dev->colourfx.u = (ctrl->val & 0xff00) >> 8;
+	dev->colourfx.v = ctrl->val & 0xff;

 	ret = vchiq_mmal_port_parameter_set(dev->instance, control,
 					    MMAL_PARAMETER_COLOUR_EFFECT,
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

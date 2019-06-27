Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E388A58C80
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 23:10:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB2F787D0E;
	Thu, 27 Jun 2019 21:10:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wbbWhtDiuTzI; Thu, 27 Jun 2019 21:10:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5CA7B85945;
	Thu, 27 Jun 2019 21:10:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8249F1BF399
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 21:10:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7FAA285DD1
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 21:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KpCnlJuRpp47 for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 21:10:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 88A3E84EC1
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 21:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561669792;
 bh=ttpEs1jpLEZYuVPaNhB5NUXKeu5GWnJTmxgKtFVsZ/E=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=gMEVQ0kdpgS4z/iWG9q+I1R0jN91fex3/I9NMhsIyLNA4DvAPg18uQHUmWA6lGMOU
 s1MuiUBiTtUHUm0epHAeNhyjQYbIoexjIsPugFdUieD3eF3YEO4RASFj191wx24Emx
 yH9hcc2lChBPMTOASr1FlgTOwrrczltPTsc9S+IA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MzyuS-1iSeG93GZq-00x4FN; Thu, 27 Jun 2019 23:09:51 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 31/31] staging: bcm2835-camera: Correct ctrl min/max/step/def
 to 64bit
Date: Thu, 27 Jun 2019 23:09:29 +0200
Message-Id: <1561669769-2498-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561669769-2498-1-git-send-email-wahrenst@gmx.net>
References: <1561669769-2498-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:r8Us6r3bVX5kevDTW9x6AqdZPb7soLP6SbFXLB/ALq4FGi16Z0q
 BLCqJ4aT6jj1Sc8pIg5fyywuHv53mbTvxkAV2npWu3TUECFUaIV9TKLny43YDpefXb7be9f
 X1wG6PmPL6UmMQWGqyOYwEiiphuxZQY1eIkEmvrgoS7pTp2x/aEZ/yZRKY6EsLz+5swW4Z9
 aq5gQcacPy3aT1BuWwRzg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:thW8iTalx6U=:uzQ9Jy4TB1gBUkNwErgS5W
 cwJdOoSd4G5duDcnifUJPU2BNYupQQCBlw/PuXukgk+aJBjFtW+4JwbrfX4w24d+NeHt2XcAq
 at/9WbfLsnsPrI1eIy3unyLpGZYCW1qBzO6fC+rj4HchNYCz5V/IzCdV6m50D01KctS/sLOrU
 DLWlmFUKgT7b42kQpv8xhWqUsjIJZgALT3p8an15C1fLUmmxCwTDH8sYzgMWULCCTfxDHyxIb
 7BhT5sNquvvFFIPNP1tKPTfBsC/0NwmOSl9v/Ng+B3pUxJqY8EzTjBQfEO4D8CqpzGDjUDQcP
 z2oodm5POxmwSt7zrw0DlFT2KXe/1aUAD9Tw/xktmbroPwYy892Vj1zITsggBFh1YZUJAejTX
 5yOcXSTVJ30iNiqYsIqzgEsBp6FUSg/Us5SGbafzAcE2LAnXVN6/ZDQBd/QR0qNtwlhd6+RmS
 k9mbHjpWlHFlR5NRiL61JY/7Z1Tuh1mYjOkW/RTasYXeB23e/kMIcgu8A/aicjPnYES40R0sa
 PJzie+8QyS3Gk9CVXxKCjDa7AFFhWHEAIM8hdYTPK+9bX9gUQd3B6oLhGsrVDPL/O+kw1XUUA
 Y1aMEGSr4uup9z0WQFG9CF9pvdjE0D+4xqv7zbAIfiFNm84UGk97e2q1P29u7Tbc8yD4zOER9
 ZJWyyF1VwyJxQkzdsFXJ0xuy2vaxPRExlEzIUXZzV8yCSvoYszPzYRgLWOJ0Dm6WGJt0Hky+R
 UmCrKLZhlOhGviqoAQ7yopCmfe3IgXNiQQ84Mi55uwq7YfLr3+XLv78XbgvnL8OMbQbFa5jcG
 btDad1pIjyE9RA13JKAzWkrmrfTUvaZTmEQR7SbZFn0DeiYC514ij7qNXsMnmmkjqc3BR6KUw
 SqyQSvHOf5sxmOe45pXJu5Q3Yo6MUD6NbNN/h6fO2QBVly++S/97pgazpwwQi6w6k8GyvFnwn
 B3KwSrEiWCbaUiGxPS//Aeh6wpTdB44N+3MEddgpGCXuJQGTcTa+/S5/bAi40Y6IaELDIfxJu
 LxqgQkWrZBlNqd9QX+eCJauRUV+VUEPrwlicjZe+wNOSqoIog+qSTrNZM61yn2LZ9vFQwCt9Q
 Oi2ZGXaFIKxYwc=
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

The V4L2 control API was expanded to take 64 bit values in commit
0ba2aeb6dab (Apr 16 2014), but as this driver wasn't in the mainline
kernel at that point this was overlooked.

Update to use 64 bit values. This also fixes a couple of warnings
in 64 bit builds.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 848b14a..89786c2 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -78,10 +78,10 @@ struct bm2835_mmal_v4l2_ctrl {
 	/* control minimum value or
 	 * mask for MMAL_CONTROL_TYPE_STD_MENU
 	 */
-	s32 min;
-	s32 max; /* maximum value of control */
-	s32 def;  /* default value of control */
-	s32 step; /* step size of the control */
+	s64 min;
+	s64 max; /* maximum value of control */
+	s64 def;  /* default value of control */
+	u64 step; /* step size of the control */
 	const s64 *imenu; /* integer menu array */
 	u32 mmal_id; /* mmal parameter id */
 	bm2835_mmal_v4l2_ctrl_cb *setter;
@@ -1250,7 +1250,7 @@ int bm2835_mmal_init_controls(struct bm2835_mmal_dev *dev,

 		case MMAL_CONTROL_TYPE_STD_MENU:
 		{
-			int mask = ctrl->min;
+			u64 mask = ctrl->min;

 			if (ctrl->id == V4L2_CID_SCENE_MODE) {
 				/* Special handling to work out the mask
@@ -1260,11 +1260,11 @@ int bm2835_mmal_init_controls(struct bm2835_mmal_dev *dev,
 				 */
 				int i;

-				mask = 1 << V4L2_SCENE_MODE_NONE;
+				mask = BIT(V4L2_SCENE_MODE_NONE);
 				for (i = 0;
 				     i < ARRAY_SIZE(scene_configs);
 				     i++) {
-					mask |= 1 << scene_configs[i].v4l2_scene;
+					mask |= BIT(scene_configs[i].v4l2_scene);
 				}
 				mask = ~mask;
 			}
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
